; ModuleID = 'coreutils-8.27/src/yes.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [STRING]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Repeatedly output a line with all specified STRING(s), or 'y'.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), align 8, !dbg !0
@.str.14 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.17 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.30, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.31, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.30 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.31 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.36 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.37 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.38 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.48, i32 0, i32 0), i8* null], align 16, !dbg !53
@.str.39 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.40 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.41 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.42 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.43 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.44 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.45 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.46 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.47 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.48 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.49 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.50 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.51 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.52 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.53 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
@.str.58 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.59 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.60 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.61 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.62 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.63 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.64 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.65 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.66 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.67 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.68 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.69 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.70 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.71 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.74 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.75 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.76 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.77 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.88 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.99 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.102 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.103 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.104 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.105 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.106 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.107 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.108 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !598 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !602, metadata !603), !dbg !604
  %2 = icmp eq i32 %0, 0, !dbg !605
  br i1 %2, label %8, label %3, !dbg !607

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !608, !tbaa !610
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !608
  %6 = load i8*, i8** @program_name, align 8, !dbg !608, !tbaa !610
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !608
  br label %36, !dbg !608

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !614
  %10 = load i8*, i8** @program_name, align 8, !dbg !614, !tbaa !610
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #11, !dbg !614
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !616
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !610
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !616
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !617
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !617, !tbaa !610
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !617
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !618
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !610
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !618
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !510, metadata !603) #11, !dbg !619
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !510, metadata !603) #11, !dbg !619
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !621
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #11, !dbg !621
  %23 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !622
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !518, metadata !603) #11, !dbg !623
  %24 = icmp eq i8* %23, null, !dbg !624
  br i1 %24, label %31, label %25, !dbg !626

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !627
  %27 = icmp eq i32 %26, 0, !dbg !627
  br i1 %27, label %31, label %28, !dbg !628

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !629
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !629
  br label %31, !dbg !631

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !632
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !632
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !633
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #11, !dbg !633
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #15, !dbg !634
  unreachable, !dbg !634
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !635 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !640, metadata !603), !dbg !661
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !641, metadata !603), !dbg !662
  %3 = load i8*, i8** %1, align 8, !dbg !663, !tbaa !610
  tail call void @set_program_name(i8* %3) #11, !dbg !664
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !665
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !666
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !667
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !668
  %8 = load i8*, i8** @Version, align 8, !dbg !669, !tbaa !610
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* null) #11, !dbg !670
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.option* null, i32* null) #11, !dbg !671
  %10 = icmp eq i32 %9, -1, !dbg !673
  br i1 %10, label %12, label %11, !dbg !674

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !675
  unreachable, !dbg !675

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !676, !tbaa !677
  %14 = sext i32 %13 to i64, !dbg !679
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !679
  tail call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !642, metadata !603), !dbg !680
  %16 = sext i32 %0 to i64, !dbg !681
  %17 = getelementptr inbounds i8*, i8** %1, i64 %16, !dbg !681
  tail call void @llvm.dbg.value(metadata i8** %17, i64 0, metadata !643, metadata !603), !dbg !682
  %18 = icmp eq i32 %13, %0, !dbg !683
  br i1 %18, label %19, label %21, !dbg !685

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !686
  tail call void @llvm.dbg.value(metadata i8** %20, i64 0, metadata !643, metadata !603), !dbg !682
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %17, align 8, !dbg !687, !tbaa !610
  br label %21, !dbg !688

; <label>:21:                                     ; preds = %19, %12
  %22 = phi i8** [ %20, %19 ], [ %17, %12 ]
  tail call void @llvm.dbg.value(metadata i8** %22, i64 0, metadata !643, metadata !603), !dbg !682
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !644, metadata !603), !dbg !689
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !645, metadata !603), !dbg !690
  tail call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !646, metadata !603), !dbg !691
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !644, metadata !603), !dbg !689
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !645, metadata !603), !dbg !690
  tail call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !646, metadata !603), !dbg !691
  %23 = icmp ult i8** %15, %22, !dbg !692
  br i1 %23, label %24, label %59, !dbg !693

; <label>:24:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !646, metadata !603), !dbg !691
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !645, metadata !603), !dbg !690
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !644, metadata !603), !dbg !689
  %25 = load i8*, i8** %15, align 8, !dbg !694, !tbaa !610
  %26 = tail call i64 @strlen(i8* %25) #14, !dbg !695
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !648, metadata !603), !dbg !696
  %27 = add i64 %26, 1, !dbg !697
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !644, metadata !603), !dbg !689
  %28 = getelementptr inbounds i8*, i8** %15, i64 1, !dbg !698
  %29 = icmp ult i8** %28, %22, !dbg !700
  br i1 %29, label %30, label %34, !dbg !701

; <label>:30:                                     ; preds = %24
  br label %41, !dbg !702

; <label>:31:                                     ; preds = %41
  %32 = and i8 %51, 1, !dbg !701
  %33 = icmp ne i8 %32, 0, !dbg !701
  br label %34, !dbg !701

; <label>:34:                                     ; preds = %31, %24
  %35 = phi i1 [ %33, %31 ], [ true, %24 ]
  %36 = phi i64 [ %54, %31 ], [ %27, %24 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !645, metadata !603), !dbg !690
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !646, metadata !603), !dbg !691
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !644, metadata !603), !dbg !689
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !645, metadata !603), !dbg !690
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !646, metadata !603), !dbg !691
  %37 = icmp ult i64 %36, 4097, !dbg !703
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !644, metadata !603), !dbg !689
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !645, metadata !603), !dbg !690
  %38 = select i1 %37, i64 8192, i64 %36, !dbg !705
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !644, metadata !603), !dbg !689
  %39 = xor i1 %37, true, !dbg !706
  %40 = and i1 %35, %39, !dbg !706
  br i1 %40, label %57, label %59, !dbg !706

; <label>:41:                                     ; preds = %30, %41
  %42 = phi i8** [ %55, %41 ], [ %28, %30 ]
  %43 = phi i64 [ %54, %41 ], [ %27, %30 ]
  %44 = phi i64 [ %52, %41 ], [ %26, %30 ]
  %45 = phi i8* [ %49, %41 ], [ %25, %30 ]
  %46 = phi i8 [ %51, %41 ], [ 1, %30 ]
  tail call void @llvm.dbg.value(metadata i8 %46, i64 0, metadata !645, metadata !603), !dbg !690
  %47 = getelementptr inbounds i8, i8* %45, i64 %44, !dbg !702
  %48 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !707
  %49 = load i8*, i8** %42, align 8, !dbg !708, !tbaa !610
  %50 = icmp eq i8* %48, %49, !dbg !709
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !645, metadata !603), !dbg !690
  %51 = select i1 %50, i8 %46, i8 0, !dbg !710
  tail call void @llvm.dbg.value(metadata i8 %46, i64 0, metadata !645, metadata !603), !dbg !690
  tail call void @llvm.dbg.value(metadata i8** %42, i64 0, metadata !646, metadata !603), !dbg !691
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !644, metadata !603), !dbg !689
  tail call void @llvm.dbg.value(metadata i8 %46, i64 0, metadata !645, metadata !603), !dbg !690
  tail call void @llvm.dbg.value(metadata i8** %42, i64 0, metadata !646, metadata !603), !dbg !691
  tail call void @llvm.dbg.value(metadata i8** %42, i64 0, metadata !646, metadata !603), !dbg !691
  tail call void @llvm.dbg.value(metadata i8 %51, i64 0, metadata !645, metadata !603), !dbg !690
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !644, metadata !603), !dbg !689
  %52 = tail call i64 @strlen(i8* %49) #14, !dbg !695
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !648, metadata !603), !dbg !696
  %53 = add i64 %43, 1, !dbg !711
  %54 = add i64 %53, %52, !dbg !697
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !644, metadata !603), !dbg !689
  %55 = getelementptr inbounds i8*, i8** %42, i64 1, !dbg !698
  %56 = icmp ult i8** %55, %22, !dbg !700
  br i1 %56, label %41, label %31, !dbg !701

; <label>:57:                                     ; preds = %34
  %58 = load i8*, i8** %15, align 8, !dbg !712, !tbaa !610
  br label %62, !dbg !706

; <label>:59:                                     ; preds = %21, %34
  %60 = phi i64 [ %38, %34 ], [ 8192, %21 ]
  %61 = tail call noalias i8* @xmalloc(i64 %60) #11, !dbg !713
  br label %62, !dbg !706

; <label>:62:                                     ; preds = %59, %57
  %63 = phi i1 [ true, %57 ], [ false, %59 ]
  %64 = phi i64 [ %38, %57 ], [ %60, %59 ]
  %65 = phi i8* [ %58, %57 ], [ %61, %59 ], !dbg !706
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !651, metadata !603), !dbg !714
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !653, metadata !603), !dbg !716
  tail call void @llvm.dbg.value(metadata i8** %15, i64 0, metadata !653, metadata !603), !dbg !716
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !652, metadata !603), !dbg !715
  br i1 %23, label %66, label %67, !dbg !717

; <label>:66:                                     ; preds = %62
  br label %94, !dbg !718

; <label>:67:                                     ; preds = %101, %62
  %68 = phi i64 [ 0, %62 ], [ %103, %101 ]
  %69 = add i64 %68, -1, !dbg !719
  %70 = getelementptr inbounds i8, i8* %65, i64 %69, !dbg !720
  store i8 10, i8* %70, align 1, !dbg !721, !tbaa !722
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !658, metadata !603), !dbg !723
  %71 = udiv i64 %64, %68, !dbg !724
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !659, metadata !603), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !659, metadata !603), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !652, metadata !603), !dbg !715
  %72 = add i64 %71, -1, !dbg !726
  tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !659, metadata !603), !dbg !725
  %73 = icmp eq i64 %72, 0, !dbg !728
  br i1 %73, label %107, label %74, !dbg !728

; <label>:74:                                     ; preds = %67
  %75 = add i64 %71, -2, !dbg !729
  %76 = and i64 %72, 7, !dbg !729
  %77 = icmp eq i64 %76, 0, !dbg !729
  br i1 %77, label %88, label %78, !dbg !729

; <label>:78:                                     ; preds = %74
  br label %79, !dbg !729

; <label>:79:                                     ; preds = %79, %78
  %80 = phi i64 [ %85, %79 ], [ %72, %78 ]
  %81 = phi i64 [ %84, %79 ], [ %68, %78 ]
  %82 = phi i64 [ %86, %79 ], [ %76, %78 ]
  tail call void @llvm.dbg.value(metadata i64 %81, i64 0, metadata !652, metadata !603), !dbg !715
  %83 = getelementptr inbounds i8, i8* %65, i64 %81, !dbg !729
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %65, i64 %68, i32 1, i1 false), !dbg !731
  %84 = add i64 %81, %68, !dbg !732
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %80, i64 0, metadata !659, metadata !603), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !652, metadata !603), !dbg !715
  %85 = add i64 %80, -1, !dbg !726
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !659, metadata !603), !dbg !725
  %86 = add i64 %82, -1, !dbg !728
  %87 = icmp eq i64 %86, 0, !dbg !728
  br i1 %87, label %88, label %79, !dbg !728, !llvm.loop !733

; <label>:88:                                     ; preds = %79, %74
  %89 = phi i64 [ undef, %74 ], [ %84, %79 ]
  %90 = phi i64 [ %72, %74 ], [ %85, %79 ]
  %91 = phi i64 [ %68, %74 ], [ %84, %79 ]
  %92 = icmp ult i64 %75, 7, !dbg !729
  br i1 %92, label %107, label %93, !dbg !729

; <label>:93:                                     ; preds = %88
  br label %109, !dbg !729

; <label>:94:                                     ; preds = %66, %101
  %95 = phi i8** [ %105, %101 ], [ %15, %66 ]
  %96 = phi i64 [ %103, %101 ], [ 0, %66 ]
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i8** %95, i64 0, metadata !653, metadata !603), !dbg !716
  %97 = load i8*, i8** %95, align 8, !dbg !718, !tbaa !610
  %98 = tail call i64 @strlen(i8* %97) #14, !dbg !735
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !655, metadata !603), !dbg !736
  br i1 %63, label %101, label %99, !dbg !737

; <label>:99:                                     ; preds = %94
  %100 = getelementptr inbounds i8, i8* %65, i64 %96, !dbg !738
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %97, i64 %98, i32 1, i1 false), !dbg !740
  br label %101, !dbg !740

; <label>:101:                                    ; preds = %99, %94
  %102 = add i64 %98, %96, !dbg !741
  tail call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !652, metadata !603), !dbg !715
  %103 = add i64 %102, 1, !dbg !742
  tail call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !652, metadata !603), !dbg !715
  %104 = getelementptr inbounds i8, i8* %65, i64 %102, !dbg !743
  store i8 32, i8* %104, align 1, !dbg !744, !tbaa !722
  %105 = getelementptr inbounds i8*, i8** %95, i64 1, !dbg !745
  tail call void @llvm.dbg.value(metadata i8** %105, i64 0, metadata !653, metadata !603), !dbg !716
  tail call void @llvm.dbg.value(metadata i8** %105, i64 0, metadata !653, metadata !603), !dbg !716
  tail call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !652, metadata !603), !dbg !715
  %106 = icmp ult i8** %105, %22, !dbg !746
  br i1 %106, label %94, label %67, !dbg !717, !llvm.loop !747

; <label>:107:                                    ; preds = %88, %109, %67
  %108 = phi i64 [ %68, %67 ], [ %89, %88 ], [ %127, %109 ]
  br label %130, !dbg !749

; <label>:109:                                    ; preds = %109, %93
  %110 = phi i64 [ %90, %93 ], [ %128, %109 ]
  %111 = phi i64 [ %91, %93 ], [ %127, %109 ]
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !652, metadata !603), !dbg !715
  %112 = getelementptr inbounds i8, i8* %65, i64 %111, !dbg !729
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %65, i64 %68, i32 1, i1 false), !dbg !731
  %113 = add i64 %111, %68, !dbg !732
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !659, metadata !603), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !652, metadata !603), !dbg !715
  %114 = getelementptr inbounds i8, i8* %65, i64 %113, !dbg !729
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %65, i64 %68, i32 1, i1 false), !dbg !731
  %115 = add i64 %113, %68, !dbg !732
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !659, metadata !603), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !652, metadata !603), !dbg !715
  %116 = getelementptr inbounds i8, i8* %65, i64 %115, !dbg !729
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %65, i64 %68, i32 1, i1 false), !dbg !731
  %117 = add i64 %115, %68, !dbg !732
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !659, metadata !603), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !652, metadata !603), !dbg !715
  %118 = getelementptr inbounds i8, i8* %65, i64 %117, !dbg !729
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %65, i64 %68, i32 1, i1 false), !dbg !731
  %119 = add i64 %117, %68, !dbg !732
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !659, metadata !603), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !652, metadata !603), !dbg !715
  %120 = getelementptr inbounds i8, i8* %65, i64 %119, !dbg !729
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* %65, i64 %68, i32 1, i1 false), !dbg !731
  %121 = add i64 %119, %68, !dbg !732
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !659, metadata !603), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !652, metadata !603), !dbg !715
  %122 = getelementptr inbounds i8, i8* %65, i64 %121, !dbg !729
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %122, i8* %65, i64 %68, i32 1, i1 false), !dbg !731
  %123 = add i64 %121, %68, !dbg !732
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !659, metadata !603), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !652, metadata !603), !dbg !715
  %124 = getelementptr inbounds i8, i8* %65, i64 %123, !dbg !729
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %65, i64 %68, i32 1, i1 false), !dbg !731
  %125 = add i64 %123, %68, !dbg !732
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !659, metadata !603), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !652, metadata !603), !dbg !715
  %126 = getelementptr inbounds i8, i8* %65, i64 %125, !dbg !729
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %65, i64 %68, i32 1, i1 false), !dbg !731
  %127 = add i64 %125, %68, !dbg !732
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !659, metadata !603), !dbg !725
  tail call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !652, metadata !603), !dbg !715
  %128 = add i64 %110, -8, !dbg !726
  %129 = icmp eq i64 %128, 0, !dbg !728
  br i1 %129, label %107, label %109, !dbg !728, !llvm.loop !750

; <label>:130:                                    ; preds = %130, %107
  %131 = tail call i64 @full_write(i32 1, i8* %65, i64 %108) #11, !dbg !752
  %132 = icmp eq i64 %131, %108, !dbg !753
  br i1 %132, label %130, label %133, !dbg !749, !llvm.loop !754

; <label>:133:                                    ; preds = %130
  %134 = tail call i32* @__errno_location() #17, !dbg !756
  %135 = load i32, i32* %134, align 4, !dbg !756, !tbaa !677
  %136 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 5) #11, !dbg !757
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %135, i8* %136) #11, !dbg !758
  ret i32 1, !dbg !759
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !760 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !762, metadata !603), !dbg !763
  store i8* %0, i8** @file_name, align 8, !dbg !764, !tbaa !610
  ret void, !dbg !765
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !766 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !770, metadata !603), !dbg !771
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !772, !tbaa !773
  ret void, !dbg !775
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !776 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !783, !tbaa !610
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !784
  %3 = icmp eq i32 %2, 0, !dbg !785
  br i1 %3, label %21, label %4, !dbg !786

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !787, !tbaa !773, !range !788
  %6 = icmp eq i8 %5, 0, !dbg !787
  %7 = tail call i32* @__errno_location() #17, !dbg !789
  br i1 %6, label %11, label %8, !dbg !791

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !792, !tbaa !677
  %10 = icmp eq i32 %9, 32, !dbg !793
  br i1 %10, label %21, label %11, !dbg !794

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !795
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !780, metadata !603), !dbg !796
  %13 = load i8*, i8** @file_name, align 8, !dbg !797, !tbaa !610
  %14 = icmp eq i8* %13, null, !dbg !797
  %15 = load i32, i32* %7, align 4, !tbaa !677
  br i1 %14, label %18, label %16, !dbg !798

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !799
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.18, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !800
  br label %19, !dbg !800

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.19, i64 0, i64 0), i8* %12) #11, !dbg !801
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !802, !tbaa !677
  tail call void @_exit(i32 %20) #15, !dbg !803
  unreachable, !dbg !803

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !804, !tbaa !610
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !806
  %24 = icmp eq i32 %23, 0, !dbg !807
  br i1 %24, label %27, label %25, !dbg !808

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !809, !tbaa !677
  tail call void @_exit(i32 %26) #15, !dbg !810
  unreachable, !dbg !810

; <label>:27:                                     ; preds = %21
  ret void, !dbg !811
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define i64 @full_write(i32, i8*, i64) local_unnamed_addr #6 !dbg !812 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !815, metadata !603), !dbg !822
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !816, metadata !603), !dbg !823
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !817, metadata !603), !dbg !824
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !818, metadata !603), !dbg !825
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !819, metadata !603), !dbg !826
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !817, metadata !603), !dbg !824
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !819, metadata !603), !dbg !826
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !818, metadata !603), !dbg !825
  %4 = icmp eq i64 %2, 0, !dbg !827
  br i1 %4, label %18, label %5, !dbg !828

; <label>:5:                                      ; preds = %3
  br label %6, !dbg !829

; <label>:6:                                      ; preds = %5, %13
  %7 = phi i64 [ %16, %13 ], [ %2, %5 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %5 ]
  %9 = phi i64 [ %14, %13 ], [ 0, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !818, metadata !603), !dbg !825
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !819, metadata !603), !dbg !826
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !817, metadata !603), !dbg !824
  %10 = tail call i64 @safe_write(i32 %0, i8* %8, i64 %7) #11, !dbg !829
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !820, metadata !603), !dbg !830
  switch i64 %10, label %13 [
    i64 -1, label %18
    i64 0, label %11
  ], !dbg !831

; <label>:11:                                     ; preds = %6
  %12 = tail call i32* @__errno_location() #17, !dbg !832
  store i32 28, i32* %12, align 4, !dbg !835, !tbaa !677
  br label %18, !dbg !836

; <label>:13:                                     ; preds = %6
  %14 = add i64 %10, %9, !dbg !837
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !818, metadata !603), !dbg !825
  %15 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !838
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !819, metadata !603), !dbg !826
  %16 = sub i64 %7, %10, !dbg !839
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !817, metadata !603), !dbg !824
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !817, metadata !603), !dbg !824
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !819, metadata !603), !dbg !826
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !818, metadata !603), !dbg !825
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !817, metadata !603), !dbg !824
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !819, metadata !603), !dbg !826
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !818, metadata !603), !dbg !825
  %17 = icmp eq i64 %16, 0, !dbg !827
  br i1 %17, label %18, label %6, !dbg !828, !llvm.loop !840

; <label>:18:                                     ; preds = %13, %6, %3, %11
  %19 = phi i64 [ %9, %11 ], [ 0, %3 ], [ %14, %13 ], [ %9, %6 ]
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !818, metadata !603), !dbg !825
  ret i64 %19, !dbg !842
}

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !843 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !848, metadata !603), !dbg !875
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !849, metadata !603), !dbg !876
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !850, metadata !603), !dbg !877
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !851, metadata !603), !dbg !878
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !852, metadata !603), !dbg !879
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !853, metadata !603), !dbg !880
  %8 = load i32, i32* @opterr, align 4, !dbg !881, !tbaa !677
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !855, metadata !603), !dbg !882
  store i32 0, i32* @opterr, align 4, !dbg !883, !tbaa !677
  %9 = icmp eq i32 %0, 2, !dbg !884
  br i1 %9, label %10, label %17, !dbg !885

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !886
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !854, metadata !603), !dbg !887
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !888

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !889
  br label %17, !dbg !890

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !891
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !891
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !856, metadata !603), !dbg !892
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !893
  call void @llvm.va_start(i8* nonnull %14), !dbg !893
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !894, !tbaa !610
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !895
  call void @exit(i32 0) #15, !dbg !896
  unreachable, !dbg !896

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !897, !tbaa !677
  store i32 0, i32* @optind, align 4, !dbg !898, !tbaa !677
  ret void, !dbg !899
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !900 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !902, metadata !603), !dbg !905
  %2 = icmp eq i8* %0, null, !dbg !906
  br i1 %2, label %3, label %6, !dbg !908

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !909, !tbaa !610
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !911
  tail call void @abort() #15, !dbg !912
  unreachable, !dbg !912

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !913
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !903, metadata !603), !dbg !914
  %8 = icmp eq i8* %7, null, !dbg !915
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !916
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !917
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !904, metadata !603), !dbg !918
  %11 = ptrtoint i8* %10 to i64, !dbg !919
  %12 = ptrtoint i8* %0 to i64, !dbg !919
  %13 = sub i64 %11, %12, !dbg !919
  %14 = icmp sgt i64 %13, 6, !dbg !921
  br i1 %14, label %15, label %24, !dbg !922

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !923
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.37, i64 0, i64 0), i64 7) #14, !dbg !924
  %18 = icmp eq i32 %17, 0, !dbg !925
  br i1 %18, label %19, label %24, !dbg !926

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !902, metadata !603), !dbg !905
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.38, i64 0, i64 0), i64 3) #14, !dbg !927
  %21 = icmp eq i32 %20, 0, !dbg !930
  br i1 %21, label %22, label %24, !dbg !931

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !932
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !902, metadata !603), !dbg !905
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !934, !tbaa !610
  br label %24, !dbg !935

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !902, metadata !603), !dbg !905
  store i8* %25, i8** @program_name, align 8, !dbg !936, !tbaa !610
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !937, !tbaa !610
  ret void, !dbg !938
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !939 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !944, metadata !603), !dbg !947
  %2 = tail call i32* @__errno_location() #17, !dbg !948
  %3 = load i32, i32* %2, align 4, !dbg !948, !tbaa !677
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !945, metadata !603), !dbg !949
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !950
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !950
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !950
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !951
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !951
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !946, metadata !603), !dbg !952
  store i32 %3, i32* %2, align 4, !dbg !953, !tbaa !677
  ret %struct.quoting_options* %8, !dbg !954
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !955 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !961, metadata !603), !dbg !962
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !963
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !963
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !964
  %5 = load i32, i32* %4, align 8, !dbg !964, !tbaa !965
  ret i32 %5, !dbg !967
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !968 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !972, metadata !603), !dbg !974
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !973, metadata !603), !dbg !975
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !976
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !976
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !977
  store i32 %1, i32* %5, align 8, !dbg !978, !tbaa !965
  ret void, !dbg !979
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !980 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !984, metadata !603), !dbg !992
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !985, metadata !603), !dbg !993
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !986, metadata !603), !dbg !994
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !987, metadata !603), !dbg !995
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !996
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !996
  %6 = lshr i8 %1, 5, !dbg !997
  %7 = zext i8 %6 to i64, !dbg !997
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !998
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !988, metadata !603), !dbg !999
  %9 = and i8 %1, 31, !dbg !1000
  %10 = zext i8 %9 to i32, !dbg !1001
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !990, metadata !603), !dbg !1002
  %11 = load i32, i32* %8, align 4, !dbg !1003, !tbaa !677
  %12 = lshr i32 %11, %10, !dbg !1004
  %13 = and i32 %12, 1, !dbg !1005
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !991, metadata !603), !dbg !1006
  %14 = and i32 %2, 1, !dbg !1007
  %15 = xor i32 %13, %14, !dbg !1008
  %16 = shl i32 %15, %10, !dbg !1009
  %17 = xor i32 %16, %11, !dbg !1010
  store i32 %17, i32* %8, align 4, !dbg !1010, !tbaa !677
  ret i32 %13, !dbg !1011
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1012 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1016, metadata !603), !dbg !1019
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1017, metadata !603), !dbg !1020
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1021
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1016, metadata !603), !dbg !1019
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1023
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1016, metadata !603), !dbg !1019
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1024
  %6 = load i32, i32* %5, align 4, !dbg !1024, !tbaa !1025
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1018, metadata !603), !dbg !1026
  store i32 %1, i32* %5, align 4, !dbg !1027, !tbaa !1025
  ret i32 %6, !dbg !1028
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1029 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1033, metadata !603), !dbg !1036
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1034, metadata !603), !dbg !1037
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1035, metadata !603), !dbg !1038
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1039
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1033, metadata !603), !dbg !1036
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1041
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1033, metadata !603), !dbg !1036
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1042
  store i32 10, i32* %6, align 8, !dbg !1043, !tbaa !965
  %7 = icmp ne i8* %1, null, !dbg !1044
  %8 = icmp ne i8* %2, null, !dbg !1046
  %9 = and i1 %7, %8, !dbg !1047
  br i1 %9, label %11, label %10, !dbg !1047

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1048
  unreachable, !dbg !1048

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1049
  store i8* %1, i8** %12, align 8, !dbg !1050, !tbaa !1051
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1052
  store i8* %2, i8** %13, align 8, !dbg !1053, !tbaa !1054
  ret void, !dbg !1055
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1056 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1060, metadata !603), !dbg !1068
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1061, metadata !603), !dbg !1069
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1062, metadata !603), !dbg !1070
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1063, metadata !603), !dbg !1071
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1064, metadata !603), !dbg !1072
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1073
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1073
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1065, metadata !603), !dbg !1074
  %8 = tail call i32* @__errno_location() #17, !dbg !1075
  %9 = load i32, i32* %8, align 4, !dbg !1075, !tbaa !677
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1066, metadata !603), !dbg !1076
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1077
  %11 = load i32, i32* %10, align 8, !dbg !1077, !tbaa !965
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1078
  %13 = load i32, i32* %12, align 4, !dbg !1078, !tbaa !1025
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1079
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1080
  %16 = load i8*, i8** %15, align 8, !dbg !1080, !tbaa !1051
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1081
  %18 = load i8*, i8** %17, align 8, !dbg !1081, !tbaa !1054
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1082
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1067, metadata !603), !dbg !1083
  store i32 %9, i32* %8, align 4, !dbg !1084, !tbaa !677
  ret i64 %19, !dbg !1085
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1086 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1092, metadata !603), !dbg !1156
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1093, metadata !603), !dbg !1157
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1094, metadata !603), !dbg !1158
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1095, metadata !603), !dbg !1159
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1096, metadata !603), !dbg !1160
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1097, metadata !603), !dbg !1161
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1098, metadata !603), !dbg !1162
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1099, metadata !603), !dbg !1163
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1100, metadata !603), !dbg !1164
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1102, metadata !603), !dbg !1165
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1103, metadata !603), !dbg !1166
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1104, metadata !603), !dbg !1167
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1105, metadata !603), !dbg !1168
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1106, metadata !603), !dbg !1169
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1170
  %14 = icmp eq i64 %13, 1, !dbg !1171
  %15 = lshr i32 %5, 1, !dbg !1172
  %16 = trunc i32 %15 to i8, !dbg !1172
  %17 = and i8 %16, 1, !dbg !1172
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1108, metadata !603), !dbg !1172
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1109, metadata !603), !dbg !1173
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1110, metadata !603), !dbg !1174
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1111, metadata !603), !dbg !1175
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1176

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1093, metadata !603), !dbg !1157
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1111, metadata !603), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1110, metadata !603), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1108, metadata !603), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1095, metadata !603), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1106, metadata !603), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1105, metadata !603), !dbg !1168
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1104, metadata !603), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1103, metadata !603), !dbg !1166
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1100, metadata !603), !dbg !1164
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1099, metadata !603), !dbg !1163
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1096, metadata !603), !dbg !1160
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
  ], !dbg !1177

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1096, metadata !603), !dbg !1160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1108, metadata !603), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1108, metadata !603), !dbg !1172
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1096, metadata !603), !dbg !1160
  br label %94, !dbg !1178

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1108, metadata !603), !dbg !1172
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1096, metadata !603), !dbg !1160
  %43 = and i8 %36, 1, !dbg !1180
  %44 = icmp eq i8 %43, 0, !dbg !1180
  br i1 %44, label %45, label %94, !dbg !1178

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1182
  br i1 %46, label %94, label %47, !dbg !1185

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1182, !tbaa !722
  br label %94, !dbg !1182

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.49, i64 0, i64 0), i32 %28), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1099, metadata !603), !dbg !1163
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), i32 %28), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1100, metadata !603), !dbg !1164
  br label %51, !dbg !1191

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1100, metadata !603), !dbg !1164
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1099, metadata !603), !dbg !1163
  %54 = and i8 %36, 1, !dbg !1192
  %55 = icmp eq i8 %54, 0, !dbg !1192
  br i1 %55, label %56, label %72, !dbg !1194

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1104, metadata !603), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1104, metadata !603), !dbg !1167
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1102, metadata !603), !dbg !1165
  %57 = load i8, i8* %52, align 1, !dbg !1195, !tbaa !722
  %58 = icmp eq i8 %57, 0, !dbg !1198
  br i1 %58, label %72, label %59, !dbg !1198

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1199

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1104, metadata !603), !dbg !1167
  %64 = icmp ult i64 %63, %40, !dbg !1199
  br i1 %64, label %65, label %67, !dbg !1202

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1199
  store i8 %61, i8* %66, align 1, !dbg !1199, !tbaa !722
  br label %67, !dbg !1199

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1102, metadata !603), !dbg !1165
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1203
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1104, metadata !603), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1104, metadata !603), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1102, metadata !603), !dbg !1165
  %70 = load i8, i8* %69, align 1, !dbg !1195, !tbaa !722
  %71 = icmp eq i8 %70, 0, !dbg !1198
  br i1 %71, label %72, label %60, !dbg !1198, !llvm.loop !1204

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1106, metadata !603), !dbg !1169
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1104, metadata !603), !dbg !1167
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1105, metadata !603), !dbg !1168
  br label %94, !dbg !1207

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1106, metadata !603), !dbg !1169
  br label %76, !dbg !1208

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1106, metadata !603), !dbg !1169
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1108, metadata !603), !dbg !1172
  br label %78, !dbg !1209

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1108, metadata !603), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1106, metadata !603), !dbg !1169
  %81 = and i8 %80, 1, !dbg !1210
  %82 = icmp eq i8 %81, 0, !dbg !1210
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1106, metadata !603), !dbg !1169
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1212
  br label %84, !dbg !1212

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1108, metadata !603), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1106, metadata !603), !dbg !1169
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1096, metadata !603), !dbg !1160
  %87 = and i8 %86, 1, !dbg !1213
  %88 = icmp eq i8 %87, 0, !dbg !1213
  br i1 %88, label %89, label %94, !dbg !1215

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1216
  br i1 %90, label %94, label %91, !dbg !1219

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1216, !tbaa !722
  br label %94, !dbg !1216

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1108, metadata !603), !dbg !1172
  br label %94, !dbg !1220

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1221
  unreachable, !dbg !1221

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1108, metadata !603), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1106, metadata !603), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1105, metadata !603), !dbg !1168
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1104, metadata !603), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1100, metadata !603), !dbg !1164
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1099, metadata !603), !dbg !1163
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1096, metadata !603), !dbg !1160
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1101, metadata !603), !dbg !1222
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
  br label %122, !dbg !1223

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1093, metadata !603), !dbg !1157
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1111, metadata !603), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1110, metadata !603), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1095, metadata !603), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1103, metadata !603), !dbg !1166
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1101, metadata !603), !dbg !1222
  %131 = icmp eq i64 %126, -1, !dbg !1224
  br i1 %131, label %134, label %132, !dbg !1225

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1226
  br i1 %133, label %590, label %138, !dbg !1227

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1228
  %136 = load i8, i8* %135, align 1, !dbg !1228, !tbaa !722
  %137 = icmp eq i8 %136, 0, !dbg !1229
  br i1 %137, label %590, label %138, !dbg !1227

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1117, metadata !603), !dbg !1230
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1118, metadata !603), !dbg !1231
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1119, metadata !603), !dbg !1232
  br i1 %108, label %139, label %154, !dbg !1233

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1235
  %141 = and i1 %109, %131, !dbg !1236
  br i1 %141, label %142, label %144, !dbg !1236

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1095, metadata !603), !dbg !1159
  br label %144, !dbg !1238

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1095, metadata !603), !dbg !1159
  %146 = icmp ugt i64 %140, %145, !dbg !1239
  br i1 %146, label %154, label %147, !dbg !1240

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1241
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1242
  %150 = icmp ne i32 %149, 0, !dbg !1243
  %151 = or i1 %150, %111, !dbg !1244
  %152 = xor i1 %150, true, !dbg !1244
  %153 = zext i1 %152 to i8, !dbg !1244
  br i1 %151, label %154, label %635, !dbg !1244

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1117, metadata !603), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1095, metadata !603), !dbg !1159
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1245
  %158 = load i8, i8* %157, align 1, !dbg !1245, !tbaa !722
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1112, metadata !603), !dbg !1246
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
  ], !dbg !1247

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1248

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1249

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1118, metadata !603), !dbg !1231
  %162 = and i8 %127, 1, !dbg !1253
  %163 = icmp eq i8 %162, 0, !dbg !1253
  %164 = and i1 %113, %163, !dbg !1253
  br i1 %164, label %165, label %181, !dbg !1253

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1255
  br i1 %166, label %167, label %169, !dbg !1259

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1255
  store i8 39, i8* %168, align 1, !dbg !1255, !tbaa !722
  br label %169, !dbg !1255

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1102, metadata !603), !dbg !1165
  %171 = icmp ult i64 %170, %130, !dbg !1260
  br i1 %171, label %172, label %174, !dbg !1263

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1260
  store i8 36, i8* %173, align 1, !dbg !1260, !tbaa !722
  br label %174, !dbg !1260

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1102, metadata !603), !dbg !1165
  %176 = icmp ult i64 %175, %130, !dbg !1264
  br i1 %176, label %177, label %179, !dbg !1267

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1264
  store i8 39, i8* %178, align 1, !dbg !1264, !tbaa !722
  br label %179, !dbg !1264

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1109, metadata !603), !dbg !1173
  br label %181, !dbg !1268

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1102, metadata !603), !dbg !1165
  %184 = icmp ult i64 %182, %130, !dbg !1269
  br i1 %184, label %185, label %187, !dbg !1272

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1269
  store i8 92, i8* %186, align 1, !dbg !1269, !tbaa !722
  br label %187, !dbg !1269

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1102, metadata !603), !dbg !1165
  br i1 %105, label %189, label %470, !dbg !1273

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1275
  %191 = icmp ult i64 %190, %155, !dbg !1276
  br i1 %191, label %192, label %470, !dbg !1277

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1278
  %194 = load i8, i8* %193, align 1, !dbg !1278, !tbaa !722
  %195 = add i8 %194, -48, !dbg !1279
  %196 = icmp ult i8 %195, 10, !dbg !1279
  br i1 %196, label %197, label %470, !dbg !1279

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1280
  br i1 %198, label %199, label %201, !dbg !1284

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1280
  store i8 48, i8* %200, align 1, !dbg !1280, !tbaa !722
  br label %201, !dbg !1280

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1284
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1102, metadata !603), !dbg !1165
  %203 = icmp ult i64 %202, %130, !dbg !1285
  br i1 %203, label %204, label %206, !dbg !1288

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1285
  store i8 48, i8* %205, align 1, !dbg !1285, !tbaa !722
  br label %206, !dbg !1285

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1102, metadata !603), !dbg !1165
  br label %470, !dbg !1289

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1290

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1291

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1292

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1294

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1296
  %214 = icmp ult i64 %213, %155, !dbg !1297
  br i1 %214, label %215, label %470, !dbg !1298

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1299
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1300
  %218 = load i8, i8* %217, align 1, !dbg !1300, !tbaa !722
  %219 = icmp eq i8 %218, 63, !dbg !1301
  br i1 %219, label %220, label %470, !dbg !1302

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1303
  %222 = load i8, i8* %221, align 1, !dbg !1303, !tbaa !722
  %223 = sext i8 %222 to i32, !dbg !1303
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
  ], !dbg !1304

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1305

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1112, metadata !603), !dbg !1246
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1101, metadata !603), !dbg !1222
  %226 = icmp ult i64 %124, %130, !dbg !1307
  br i1 %226, label %227, label %229, !dbg !1310

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1307
  store i8 63, i8* %228, align 1, !dbg !1307, !tbaa !722
  br label %229, !dbg !1307

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1102, metadata !603), !dbg !1165
  %231 = icmp ult i64 %230, %130, !dbg !1311
  br i1 %231, label %232, label %234, !dbg !1314

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1311
  store i8 34, i8* %233, align 1, !dbg !1311, !tbaa !722
  br label %234, !dbg !1311

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1102, metadata !603), !dbg !1165
  %236 = icmp ult i64 %235, %130, !dbg !1315
  br i1 %236, label %237, label %239, !dbg !1318

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1315
  store i8 34, i8* %238, align 1, !dbg !1315, !tbaa !722
  br label %239, !dbg !1315

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1102, metadata !603), !dbg !1165
  %241 = icmp ult i64 %240, %130, !dbg !1319
  br i1 %241, label %242, label %244, !dbg !1322

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1319
  store i8 63, i8* %243, align 1, !dbg !1319, !tbaa !722
  br label %244, !dbg !1319

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1102, metadata !603), !dbg !1165
  br label %470, !dbg !1323

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1116, metadata !603), !dbg !1324
  br label %256, !dbg !1325

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1116, metadata !603), !dbg !1324
  br label %256, !dbg !1326

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1116, metadata !603), !dbg !1324
  br label %254, !dbg !1327

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1116, metadata !603), !dbg !1324
  br label %254, !dbg !1328

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1116, metadata !603), !dbg !1324
  br label %256, !dbg !1329

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1116, metadata !603), !dbg !1324
  br i1 %113, label %252, label %253, !dbg !1330

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1331

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1334

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1116, metadata !603), !dbg !1324
  br i1 %117, label %256, label %635, !dbg !1336

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1116, metadata !603), !dbg !1324
  br i1 %104, label %497, label %470, !dbg !1338

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1339
  br i1 %259, label %260, label %265, !dbg !1341

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1342, !tbaa !722
  %262 = icmp ne i8 %261, 0, !dbg !1343
  %263 = icmp ne i64 %123, 0, !dbg !1344
  %264 = or i1 %263, %262, !dbg !1346
  br i1 %264, label %470, label %271, !dbg !1346

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1347
  %267 = icmp ne i64 %123, 0, !dbg !1344
  %268 = or i1 %267, %266, !dbg !1341
  br i1 %268, label %470, label %271, !dbg !1341

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1344
  br i1 %270, label %271, label %470, !dbg !1348

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1119, metadata !603), !dbg !1232
  br label %272, !dbg !1349

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1119, metadata !603), !dbg !1232
  br i1 %117, label %470, label %635, !dbg !1350

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1110, metadata !603), !dbg !1174
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1119, metadata !603), !dbg !1232
  br i1 %113, label %275, label %470, !dbg !1352

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1353

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1356
  %278 = icmp ne i64 %125, 0, !dbg !1358
  %279 = or i1 %278, %277, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1103, metadata !603), !dbg !1166
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1093, metadata !603), !dbg !1157
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1359
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1093, metadata !603), !dbg !1157
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1103, metadata !603), !dbg !1166
  %282 = icmp ult i64 %124, %281, !dbg !1360
  br i1 %282, label %283, label %285, !dbg !1363

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1360
  store i8 39, i8* %284, align 1, !dbg !1360, !tbaa !722
  br label %285, !dbg !1360

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1102, metadata !603), !dbg !1165
  %287 = icmp ult i64 %286, %281, !dbg !1364
  br i1 %287, label %288, label %290, !dbg !1367

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1364
  store i8 92, i8* %289, align 1, !dbg !1364, !tbaa !722
  br label %290, !dbg !1364

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1102, metadata !603), !dbg !1165
  %292 = icmp ult i64 %291, %281, !dbg !1368
  br i1 %292, label %293, label %295, !dbg !1371

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1368
  store i8 39, i8* %294, align 1, !dbg !1368, !tbaa !722
  br label %295, !dbg !1368

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1109, metadata !603), !dbg !1173
  br label %470, !dbg !1372

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1373

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1120, metadata !603), !dbg !1374
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1375
  %300 = load i16*, i16** %299, align 8, !dbg !1375, !tbaa !610
  %301 = zext i8 %158 to i64, !dbg !1375
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1375
  %303 = load i16, i16* %302, align 2, !dbg !1375, !tbaa !1377
  %304 = lshr i16 %303, 14, !dbg !1379
  %305 = trunc i16 %304 to i8, !dbg !1379
  %306 = and i8 %305, 1, !dbg !1379
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1123, metadata !603), !dbg !1380
  br label %362, !dbg !1381

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1382
  store i64 0, i64* %10, align 8, !dbg !1383
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1120, metadata !603), !dbg !1374
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1123, metadata !603), !dbg !1380
  %308 = icmp eq i64 %155, -1, !dbg !1384
  br i1 %308, label %309, label %311, !dbg !1386

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1387
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1095, metadata !603), !dbg !1159
  br label %311, !dbg !1388

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1095, metadata !603), !dbg !1159
  br label %313, !dbg !1389, !llvm.loop !1390

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1123, metadata !603), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1120, metadata !603), !dbg !1374
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1392
  %316 = add i64 %314, %123, !dbg !1393
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1394
  %318 = sub i64 %312, %316, !dbg !1395
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1124, metadata !603), !dbg !1396
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1142, metadata !603), !dbg !1397
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1145, metadata !603), !dbg !1399
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1400

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1123, metadata !603), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1120, metadata !603), !dbg !1374
  %321 = icmp ugt i64 %312, %316, !dbg !1401
  br i1 %321, label %322, label %347, !dbg !1403

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1404

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1120, metadata !603), !dbg !1374
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1404
  %327 = load i8, i8* %326, align 1, !dbg !1404, !tbaa !722
  %328 = icmp eq i8 %327, 0, !dbg !1403
  br i1 %328, label %347, label %329, !dbg !1405

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1120, metadata !603), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1120, metadata !603), !dbg !1374
  %331 = add i64 %330, %123, !dbg !1407
  %332 = icmp ult i64 %331, %312, !dbg !1401
  br i1 %332, label %323, label %347, !dbg !1403, !llvm.loop !1408

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1409
  %335 = and i1 %115, %334, !dbg !1412
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1146, metadata !603), !dbg !1413
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1146, metadata !603), !dbg !1413
  br i1 %335, label %336, label %350, !dbg !1412

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1414

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1146, metadata !603), !dbg !1413
  %339 = add i64 %338, %316, !dbg !1414
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1415
  %341 = load i8, i8* %340, align 1, !dbg !1415, !tbaa !722
  %342 = sext i8 %341 to i32, !dbg !1415
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1416

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1146, metadata !603), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1146, metadata !603), !dbg !1413
  %345 = icmp ult i64 %344, %319, !dbg !1409
  br i1 %345, label %337, label %350, !dbg !1418, !llvm.loop !1419

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1421

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1123, metadata !603), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1120, metadata !603), !dbg !1374
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1421
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1422, !tbaa !677
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1142, metadata !603), !dbg !1397
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !1424
  %353 = icmp eq i32 %352, 0, !dbg !1424
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1123, metadata !603), !dbg !1380
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1425
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1123, metadata !603), !dbg !1380
  %355 = add i64 %319, %314, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1120, metadata !603), !dbg !1374
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1123, metadata !603), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1120, metadata !603), !dbg !1374
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1421
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1124, metadata !603), !dbg !1396
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1427
  %357 = icmp eq i32 %356, 0, !dbg !1428
  br i1 %357, label %313, label %358, !dbg !1429, !llvm.loop !1390

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1430
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1123, metadata !603), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1120, metadata !603), !dbg !1374
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1421
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1430
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1123, metadata !603), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1120, metadata !603), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1095, metadata !603), !dbg !1159
  %366 = and i8 %365, 1, !dbg !1431
  %367 = icmp ne i8 %366, 0, !dbg !1431
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1119, metadata !603), !dbg !1232
  %368 = icmp ult i64 %364, 2, !dbg !1432
  %369 = or i1 %367, %112, !dbg !1433
  %370 = and i1 %368, %369, !dbg !1434
  br i1 %370, label %470, label %371, !dbg !1434

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1153, metadata !603), !dbg !1436
  br label %373, !dbg !1437

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1118, metadata !603), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1117, metadata !603), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1112, metadata !603), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1101, metadata !603), !dbg !1222
  br i1 %369, label %426, label %380, !dbg !1438

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1443

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1118, metadata !603), !dbg !1231
  %382 = and i8 %376, 1, !dbg !1446
  %383 = icmp eq i8 %382, 0, !dbg !1446
  %384 = and i1 %113, %383, !dbg !1446
  br i1 %384, label %385, label %401, !dbg !1446

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1448
  br i1 %386, label %387, label %389, !dbg !1452

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1448
  store i8 39, i8* %388, align 1, !dbg !1448, !tbaa !722
  br label %389, !dbg !1448

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1102, metadata !603), !dbg !1165
  %391 = icmp ult i64 %390, %130, !dbg !1453
  br i1 %391, label %392, label %394, !dbg !1456

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1453
  store i8 36, i8* %393, align 1, !dbg !1453, !tbaa !722
  br label %394, !dbg !1453

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1102, metadata !603), !dbg !1165
  %396 = icmp ult i64 %395, %130, !dbg !1457
  br i1 %396, label %397, label %399, !dbg !1460

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1457
  store i8 39, i8* %398, align 1, !dbg !1457, !tbaa !722
  br label %399, !dbg !1457

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1109, metadata !603), !dbg !1173
  br label %401, !dbg !1461

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1102, metadata !603), !dbg !1165
  %404 = icmp ult i64 %402, %130, !dbg !1462
  br i1 %404, label %405, label %407, !dbg !1465

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1462
  store i8 92, i8* %406, align 1, !dbg !1462, !tbaa !722
  br label %407, !dbg !1462

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1102, metadata !603), !dbg !1165
  %409 = icmp ult i64 %408, %130, !dbg !1466
  br i1 %409, label %410, label %414, !dbg !1469

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1466
  %412 = or i8 %411, 48, !dbg !1466
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1466
  store i8 %412, i8* %413, align 1, !dbg !1466, !tbaa !722
  br label %414, !dbg !1466

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1102, metadata !603), !dbg !1165
  %416 = icmp ult i64 %415, %130, !dbg !1470
  br i1 %416, label %417, label %422, !dbg !1473

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1470
  %419 = and i8 %418, 7, !dbg !1470
  %420 = or i8 %419, 48, !dbg !1470
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1470
  store i8 %420, i8* %421, align 1, !dbg !1470, !tbaa !722
  br label %422, !dbg !1470

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1102, metadata !603), !dbg !1165
  %424 = and i8 %377, 7, !dbg !1474
  %425 = or i8 %424, 48, !dbg !1475
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1112, metadata !603), !dbg !1246
  br label %435, !dbg !1476

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1477
  %428 = icmp eq i8 %427, 0, !dbg !1477
  br i1 %428, label %435, label %429, !dbg !1479

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1480
  br i1 %430, label %431, label %433, !dbg !1484

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1480
  store i8 92, i8* %432, align 1, !dbg !1480, !tbaa !722
  br label %433, !dbg !1480

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1117, metadata !603), !dbg !1230
  br label %435, !dbg !1485

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1118, metadata !603), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1117, metadata !603), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1112, metadata !603), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1102, metadata !603), !dbg !1165
  %441 = add i64 %374, 1, !dbg !1486
  %442 = icmp ugt i64 %372, %441, !dbg !1488
  br i1 %442, label %443, label %535, !dbg !1489

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1490
  %445 = icmp ne i8 %444, 0, !dbg !1490
  %446 = and i8 %440, 1, !dbg !1490
  %447 = icmp eq i8 %446, 0, !dbg !1490
  %448 = and i1 %445, %447, !dbg !1490
  br i1 %448, label %449, label %460, !dbg !1490

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1493
  br i1 %450, label %451, label %453, !dbg !1497

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1493
  store i8 39, i8* %452, align 1, !dbg !1493, !tbaa !722
  br label %453, !dbg !1493

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1102, metadata !603), !dbg !1165
  %455 = icmp ult i64 %454, %130, !dbg !1498
  br i1 %455, label %456, label %458, !dbg !1501

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1498
  store i8 39, i8* %457, align 1, !dbg !1498, !tbaa !722
  br label %458, !dbg !1498

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1109, metadata !603), !dbg !1173
  br label %460, !dbg !1502

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1102, metadata !603), !dbg !1165
  %463 = icmp ult i64 %461, %130, !dbg !1503
  br i1 %463, label %464, label %466, !dbg !1506

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1503
  store i8 %438, i8* %465, align 1, !dbg !1503, !tbaa !722
  br label %466, !dbg !1503

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1101, metadata !603), !dbg !1222
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1507
  %469 = load i8, i8* %468, align 1, !dbg !1507, !tbaa !722
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1112, metadata !603), !dbg !1246
  br label %373, !dbg !1508, !llvm.loop !1509

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1093, metadata !603), !dbg !1157
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1119, metadata !603), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1118, metadata !603), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1117, metadata !603), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1112, metadata !603), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1110, metadata !603), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1095, metadata !603), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1103, metadata !603), !dbg !1166
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1101, metadata !603), !dbg !1222
  br i1 %106, label %482, label %481, !dbg !1512

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1514

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1515

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1516
  %485 = zext i8 %484 to i64, !dbg !1516
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1517
  %487 = load i32, i32* %486, align 4, !dbg !1517, !tbaa !677
  %488 = and i8 %477, 31, !dbg !1518
  %489 = zext i8 %488 to i32, !dbg !1519
  %490 = shl i32 1, %489, !dbg !1520
  %491 = and i32 %487, %490, !dbg !1520
  %492 = icmp eq i32 %491, 0, !dbg !1520
  %493 = icmp eq i8 %156, 0, !dbg !1521
  %494 = and i1 %493, %492, !dbg !1522
  br i1 %494, label %535, label %497, !dbg !1522

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1521
  br i1 %496, label %535, label %497, !dbg !1523

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1093, metadata !603), !dbg !1157
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1119, metadata !603), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1112, metadata !603), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1110, metadata !603), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1095, metadata !603), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1103, metadata !603), !dbg !1166
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1101, metadata !603), !dbg !1222
  br i1 %111, label %507, label %635, !dbg !1524

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1118, metadata !603), !dbg !1231
  %508 = and i8 %502, 1, !dbg !1526
  %509 = icmp eq i8 %508, 0, !dbg !1526
  %510 = and i1 %113, %509, !dbg !1526
  br i1 %510, label %511, label %527, !dbg !1526

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1528
  br i1 %512, label %513, label %515, !dbg !1532

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1528
  store i8 39, i8* %514, align 1, !dbg !1528, !tbaa !722
  br label %515, !dbg !1528

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1102, metadata !603), !dbg !1165
  %517 = icmp ult i64 %516, %506, !dbg !1533
  br i1 %517, label %518, label %520, !dbg !1536

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1533
  store i8 36, i8* %519, align 1, !dbg !1533, !tbaa !722
  br label %520, !dbg !1533

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1102, metadata !603), !dbg !1165
  %522 = icmp ult i64 %521, %506, !dbg !1537
  br i1 %522, label %523, label %525, !dbg !1540

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1537
  store i8 39, i8* %524, align 1, !dbg !1537, !tbaa !722
  br label %525, !dbg !1537

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1109, metadata !603), !dbg !1173
  br label %527, !dbg !1541

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1102, metadata !603), !dbg !1165
  %530 = icmp ult i64 %528, %506, !dbg !1542
  br i1 %530, label %531, label %533, !dbg !1545

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1542
  store i8 92, i8* %532, align 1, !dbg !1542, !tbaa !722
  br label %533, !dbg !1542

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1093, metadata !603), !dbg !1157
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1119, metadata !603), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1118, metadata !603), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1112, metadata !603), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1110, metadata !603), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1095, metadata !603), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1103, metadata !603), !dbg !1166
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1101, metadata !603), !dbg !1222
  br label %562, !dbg !1546

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1093, metadata !603), !dbg !1157
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1119, metadata !603), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1118, metadata !603), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1112, metadata !603), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1110, metadata !603), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1095, metadata !603), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1103, metadata !603), !dbg !1166
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1101, metadata !603), !dbg !1222
  %546 = and i8 %540, 1, !dbg !1546
  %547 = icmp ne i8 %546, 0, !dbg !1546
  %548 = and i8 %543, 1, !dbg !1546
  %549 = icmp eq i8 %548, 0, !dbg !1546
  %550 = and i1 %547, %549, !dbg !1546
  br i1 %550, label %551, label %562, !dbg !1546

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1549
  br i1 %552, label %553, label %555, !dbg !1553

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1549
  store i8 39, i8* %554, align 1, !dbg !1549, !tbaa !722
  br label %555, !dbg !1549

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1102, metadata !603), !dbg !1165
  %557 = icmp ult i64 %556, %545, !dbg !1554
  br i1 %557, label %558, label %560, !dbg !1557

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1554
  store i8 39, i8* %559, align 1, !dbg !1554, !tbaa !722
  br label %560, !dbg !1554

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1109, metadata !603), !dbg !1173
  br label %562, !dbg !1558

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1102, metadata !603), !dbg !1165
  %572 = icmp ult i64 %570, %563, !dbg !1559
  br i1 %572, label %573, label %575, !dbg !1562

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1559
  store i8 %565, i8* %574, align 1, !dbg !1559, !tbaa !722
  br label %575, !dbg !1559

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1102, metadata !603), !dbg !1165
  %577 = and i8 %564, 1, !dbg !1563
  %578 = icmp eq i8 %577, 0, !dbg !1563
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1111, metadata !603), !dbg !1175
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1565
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1111, metadata !603), !dbg !1175
  br label %580, !dbg !1566

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1093, metadata !603), !dbg !1157
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1111, metadata !603), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1110, metadata !603), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1109, metadata !603), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1095, metadata !603), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1103, metadata !603), !dbg !1166
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1101, metadata !603), !dbg !1222
  %589 = add i64 %581, 1, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1101, metadata !603), !dbg !1222
  br label %122, !dbg !1568, !llvm.loop !1569

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1571
  %593 = and i1 %113, %592, !dbg !1573
  %594 = xor i1 %593, true, !dbg !1573
  %595 = or i1 %111, %594, !dbg !1573
  br i1 %595, label %596, label %635, !dbg !1573

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1574
  %598 = xor i1 %597, true, !dbg !1574
  %599 = and i8 %128, 1, !dbg !1576
  %600 = icmp eq i8 %599, 0, !dbg !1576
  %601 = or i1 %600, %598, !dbg !1574
  br i1 %601, label %611, label %602, !dbg !1574

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1577
  %604 = icmp eq i8 %603, 0, !dbg !1577
  br i1 %604, label %607, label %605, !dbg !1580

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1581
  br label %645, !dbg !1582

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1583
  %609 = icmp ne i64 %125, 0, !dbg !1585
  %610 = and i1 %609, %608, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1093, metadata !603), !dbg !1157
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1102, metadata !603), !dbg !1165
  br i1 %610, label %27, label %611, !dbg !1586

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1587
  %613 = and i1 %612, %111, !dbg !1589
  br i1 %613, label %614, label %630, !dbg !1589

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1104, metadata !603), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1102, metadata !603), !dbg !1165
  %615 = load i8, i8* %99, align 1, !dbg !1590, !tbaa !722
  %616 = icmp eq i8 %615, 0, !dbg !1593
  br i1 %616, label %630, label %617, !dbg !1593

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1594

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1102, metadata !603), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1104, metadata !603), !dbg !1167
  %622 = icmp ult i64 %621, %130, !dbg !1594
  br i1 %622, label %623, label %625, !dbg !1597

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1594
  store i8 %619, i8* %624, align 1, !dbg !1594, !tbaa !722
  br label %625, !dbg !1594

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1102, metadata !603), !dbg !1165
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1598
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1104, metadata !603), !dbg !1167
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1104, metadata !603), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1102, metadata !603), !dbg !1165
  %628 = load i8, i8* %627, align 1, !dbg !1590, !tbaa !722
  %629 = icmp eq i8 %628, 0, !dbg !1593
  br i1 %629, label %630, label %618, !dbg !1593, !llvm.loop !1599

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1102, metadata !603), !dbg !1165
  %632 = icmp ult i64 %631, %130, !dbg !1601
  br i1 %632, label %633, label %645, !dbg !1603

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1604
  store i8 0, i8* %634, align 1, !dbg !1605, !tbaa !722
  br label %645, !dbg !1604

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1093, metadata !603), !dbg !1157
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1095, metadata !603), !dbg !1159
  %639 = icmp ne i32 %636, 2, !dbg !1606
  %640 = icmp eq i8 %103, 0, !dbg !1608
  %641 = or i1 %639, %640, !dbg !1609
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1096, metadata !603), !dbg !1160
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1096, metadata !603), !dbg !1160
  %643 = and i32 %5, -3, !dbg !1610
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1611
  br label %645, !dbg !1612

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1613
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1614 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1618, metadata !603), !dbg !1622
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1619, metadata !603), !dbg !1623
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1624
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1620, metadata !603), !dbg !1625
  %4 = icmp eq i8* %3, %0, !dbg !1626
  br i1 %4, label %5, label %75, !dbg !1628

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1629
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1621, metadata !603), !dbg !1630
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1631, metadata !603), !dbg !1647
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1645, metadata !603), !dbg !1650
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1646, metadata !603), !dbg !1651
  %7 = load i8, i8* %6, align 1, !dbg !1652, !tbaa !722
  %8 = sext i8 %7 to i32, !dbg !1652
  %9 = and i32 %8, -33, !dbg !1652
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1652

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1654, metadata !603), !dbg !1668
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1666, metadata !603), !dbg !1672
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1667, metadata !603), !dbg !1673
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1674
  %12 = load i8, i8* %11, align 1, !dbg !1674, !tbaa !722
  %13 = sext i8 %12 to i32, !dbg !1674
  %14 = and i32 %13, -33, !dbg !1674
  %15 = icmp eq i32 %14, 84, !dbg !1674
  br i1 %15, label %16, label %72, !dbg !1674

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1676, metadata !603), !dbg !1689
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1687, metadata !603), !dbg !1693
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1688, metadata !603), !dbg !1694
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1695
  %18 = load i8, i8* %17, align 1, !dbg !1695, !tbaa !722
  %19 = sext i8 %18 to i32, !dbg !1695
  %20 = and i32 %19, -33, !dbg !1695
  %21 = icmp eq i32 %20, 70, !dbg !1695
  br i1 %21, label %22, label %72, !dbg !1695

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1697, metadata !603), !dbg !1709
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1707, metadata !603), !dbg !1713
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1708, metadata !603), !dbg !1714
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1715
  %24 = load i8, i8* %23, align 1, !dbg !1715, !tbaa !722
  %25 = icmp eq i8 %24, 45, !dbg !1715
  br i1 %25, label %26, label %72, !dbg !1717

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1718, metadata !603), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1727, metadata !603), !dbg !1733
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1728, metadata !603), !dbg !1734
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1735
  %28 = load i8, i8* %27, align 1, !dbg !1735, !tbaa !722
  %29 = icmp eq i8 %28, 56, !dbg !1735
  br i1 %29, label %30, label %72, !dbg !1737

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1738, metadata !603), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1746, metadata !603), !dbg !1752
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1747, metadata !603), !dbg !1753
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1754
  %32 = load i8, i8* %31, align 1, !dbg !1754, !tbaa !722
  %33 = icmp eq i8 %32, 0, !dbg !1754
  br i1 %33, label %34, label %72, !dbg !1756

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1757, !tbaa !722
  %36 = icmp eq i8 %35, 96, !dbg !1758
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1757
  br label %75, !dbg !1759

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1654, metadata !603), !dbg !1760
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1666, metadata !603), !dbg !1764
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1667, metadata !603), !dbg !1765
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1766
  %40 = load i8, i8* %39, align 1, !dbg !1766, !tbaa !722
  %41 = sext i8 %40 to i32, !dbg !1766
  %42 = and i32 %41, -33, !dbg !1766
  %43 = icmp eq i32 %42, 66, !dbg !1766
  br i1 %43, label %44, label %72, !dbg !1766

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1676, metadata !603), !dbg !1767
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1687, metadata !603), !dbg !1769
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1688, metadata !603), !dbg !1770
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1771
  %46 = load i8, i8* %45, align 1, !dbg !1771, !tbaa !722
  %47 = icmp eq i8 %46, 49, !dbg !1771
  br i1 %47, label %48, label %72, !dbg !1772

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1697, metadata !603), !dbg !1773
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1707, metadata !603), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1708, metadata !603), !dbg !1776
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1777
  %50 = load i8, i8* %49, align 1, !dbg !1777, !tbaa !722
  %51 = icmp eq i8 %50, 56, !dbg !1777
  br i1 %51, label %52, label %72, !dbg !1778

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1718, metadata !603), !dbg !1779
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1727, metadata !603), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1728, metadata !603), !dbg !1782
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1783
  %54 = load i8, i8* %53, align 1, !dbg !1783, !tbaa !722
  %55 = icmp eq i8 %54, 48, !dbg !1783
  br i1 %55, label %56, label %72, !dbg !1784

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1738, metadata !603), !dbg !1785
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1746, metadata !603), !dbg !1787
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1747, metadata !603), !dbg !1788
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1789
  %58 = load i8, i8* %57, align 1, !dbg !1789, !tbaa !722
  %59 = icmp eq i8 %58, 51, !dbg !1789
  br i1 %59, label %60, label %72, !dbg !1790

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1791, metadata !603), !dbg !1800
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1798, metadata !603), !dbg !1804
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1799, metadata !603), !dbg !1805
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1806
  %62 = load i8, i8* %61, align 1, !dbg !1806, !tbaa !722
  %63 = icmp eq i8 %62, 48, !dbg !1806
  br i1 %63, label %64, label %72, !dbg !1808

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1809, metadata !603), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1815, metadata !603), !dbg !1821
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1816, metadata !603), !dbg !1822
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1823
  %66 = load i8, i8* %65, align 1, !dbg !1823, !tbaa !722
  %67 = icmp eq i8 %66, 0, !dbg !1823
  br i1 %67, label %68, label %72, !dbg !1825

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1826, !tbaa !722
  %70 = icmp eq i8 %69, 96, !dbg !1827
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.53, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1826
  br label %75, !dbg !1828

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1829
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), !dbg !1830
  br label %75, !dbg !1831

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1832
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1833 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1837, metadata !603), !dbg !1840
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1838, metadata !603), !dbg !1841
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1839, metadata !603), !dbg !1842
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1843, metadata !603) #11, !dbg !1856
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1848, metadata !603) #11, !dbg !1858
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1849, metadata !603) #11, !dbg !1859
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1850, metadata !603) #11, !dbg !1860
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1861
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1861
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1851, metadata !603) #11, !dbg !1862
  %6 = tail call i32* @__errno_location() #17, !dbg !1863
  %7 = load i32, i32* %6, align 4, !dbg !1863, !tbaa !677
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1852, metadata !603) #11, !dbg !1864
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1865
  %9 = load i32, i32* %8, align 4, !dbg !1865, !tbaa !1025
  %10 = or i32 %9, 1, !dbg !1866
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1853, metadata !603) #11, !dbg !1867
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1868
  %12 = load i32, i32* %11, align 8, !dbg !1868, !tbaa !965
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1869
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1870
  %15 = load i8*, i8** %14, align 8, !dbg !1870, !tbaa !1051
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1871
  %17 = load i8*, i8** %16, align 8, !dbg !1871, !tbaa !1054
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !1872
  %19 = add i64 %18, 1, !dbg !1873
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1854, metadata !603) #11, !dbg !1874
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1875, metadata !603) #11, !dbg !1880
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !1882
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1855, metadata !603) #11, !dbg !1883
  %21 = load i32, i32* %11, align 8, !dbg !1884, !tbaa !965
  %22 = load i8*, i8** %14, align 8, !dbg !1885, !tbaa !1051
  %23 = load i8*, i8** %16, align 8, !dbg !1886, !tbaa !1054
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !1887
  store i32 %7, i32* %6, align 4, !dbg !1888, !tbaa !677
  ret i8* %20, !dbg !1889
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1844 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1843, metadata !603), !dbg !1890
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1848, metadata !603), !dbg !1891
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1849, metadata !603), !dbg !1892
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1850, metadata !603), !dbg !1893
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1894
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1894
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1851, metadata !603), !dbg !1895
  %7 = tail call i32* @__errno_location() #17, !dbg !1896
  %8 = load i32, i32* %7, align 4, !dbg !1896, !tbaa !677
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1852, metadata !603), !dbg !1897
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1898
  %10 = load i32, i32* %9, align 4, !dbg !1898, !tbaa !1025
  %11 = icmp ne i64* %2, null, !dbg !1899
  %12 = xor i1 %11, true, !dbg !1899
  %13 = zext i1 %12 to i32, !dbg !1899
  %14 = or i32 %10, %13, !dbg !1900
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1853, metadata !603), !dbg !1901
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1902
  %16 = load i32, i32* %15, align 8, !dbg !1902, !tbaa !965
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1903
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1904
  %19 = load i8*, i8** %18, align 8, !dbg !1904, !tbaa !1051
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1905
  %21 = load i8*, i8** %20, align 8, !dbg !1905, !tbaa !1054
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1906
  %23 = add i64 %22, 1, !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1854, metadata !603), !dbg !1908
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1875, metadata !603) #11, !dbg !1909
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !1911
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1855, metadata !603), !dbg !1912
  %25 = load i32, i32* %15, align 8, !dbg !1913, !tbaa !965
  %26 = load i8*, i8** %18, align 8, !dbg !1914, !tbaa !1051
  %27 = load i8*, i8** %20, align 8, !dbg !1915, !tbaa !1054
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1916
  store i32 %8, i32* %7, align 4, !dbg !1917, !tbaa !677
  br i1 %11, label %29, label %30, !dbg !1918

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1919, !tbaa !1921
  br label %30, !dbg !1923

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1924
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1925 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1929, !tbaa !610
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1927, metadata !603), !dbg !1930
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1928, metadata !603), !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1928, metadata !603), !dbg !1931
  %2 = load i32, i32* @nslots, align 4, !dbg !1932, !tbaa !677
  %3 = icmp sgt i32 %2, 1, !dbg !1935
  br i1 %3, label %4, label %13, !dbg !1936

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1937

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1928, metadata !603), !dbg !1931
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1937
  %8 = load i8*, i8** %7, align 8, !dbg !1937, !tbaa !1938
  tail call void @free(i8* %8) #11, !dbg !1940
  %9 = add nuw i64 %6, 1, !dbg !1941
  %10 = load i32, i32* @nslots, align 4, !dbg !1932, !tbaa !677
  %11 = sext i32 %10 to i64, !dbg !1935
  %12 = icmp slt i64 %9, %11, !dbg !1935
  br i1 %12, label %5, label %13, !dbg !1936, !llvm.loop !1942

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1944
  %15 = load i8*, i8** %14, align 8, !dbg !1944, !tbaa !1938
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1946
  br i1 %16, label %18, label %17, !dbg !1947

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !1948
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1950, !tbaa !1951
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1952, !tbaa !1938
  br label %18, !dbg !1953

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1954
  br i1 %19, label %22, label %20, !dbg !1956

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1957
  tail call void @free(i8* %21) #11, !dbg !1959
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1960, !tbaa !610
  br label %22, !dbg !1961

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1962, !tbaa !677
  ret void, !dbg !1963
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1964 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1968, metadata !603), !dbg !1970
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1969, metadata !603), !dbg !1971
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1972
  ret i8* %3, !dbg !1973
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1974 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1978, metadata !603), !dbg !1992
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1979, metadata !603), !dbg !1993
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1980, metadata !603), !dbg !1994
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1981, metadata !603), !dbg !1995
  %5 = tail call i32* @__errno_location() #17, !dbg !1996
  %6 = load i32, i32* %5, align 4, !dbg !1996, !tbaa !677
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1982, metadata !603), !dbg !1997
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1998, !tbaa !610
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1983, metadata !603), !dbg !1999
  %8 = icmp slt i32 %0, 0, !dbg !2000
  br i1 %8, label %9, label %10, !dbg !2002

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2003
  unreachable, !dbg !2003

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2004, !tbaa !677
  %12 = icmp sgt i32 %11, %0, !dbg !2005
  br i1 %12, label %34, label %13, !dbg !2006

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2007
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2008
  br i1 %15, label %16, label %17, !dbg !2010

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2011
  unreachable, !dbg !2011

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2012
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2012
  %20 = add nsw i32 %0, 1, !dbg !2013
  %21 = sext i32 %20 to i64, !dbg !2014
  %22 = shl nsw i64 %21, 4, !dbg !2015
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2016
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2016
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1983, metadata !603), !dbg !1999
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2017, !tbaa !610
  br i1 %14, label %25, label %26, !dbg !2018

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2019, !tbaa.struct !2021
  br label %26, !dbg !2022

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2023, !tbaa !677
  %28 = sext i32 %27 to i64, !dbg !2024
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2024
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2025
  %31 = sub nsw i32 %20, %27, !dbg !2026
  %32 = sext i32 %31 to i64, !dbg !2027
  %33 = shl nsw i64 %32, 4, !dbg !2028
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2025
  store i32 %20, i32* @nslots, align 4, !dbg !2029, !tbaa !677
  br label %34, !dbg !2030

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1983, metadata !603), !dbg !1999
  %36 = sext i32 %0 to i64, !dbg !2031
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2032
  %38 = load i64, i64* %37, align 8, !dbg !2032, !tbaa !1951
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1987, metadata !603), !dbg !2033
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2034
  %40 = load i8*, i8** %39, align 8, !dbg !2034, !tbaa !1938
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1989, metadata !603), !dbg !2035
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2036
  %42 = load i32, i32* %41, align 4, !dbg !2036, !tbaa !1025
  %43 = or i32 %42, 1, !dbg !2037
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1990, metadata !603), !dbg !2038
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2039
  %45 = load i32, i32* %44, align 8, !dbg !2039, !tbaa !965
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2040
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2041
  %48 = load i8*, i8** %47, align 8, !dbg !2041, !tbaa !1051
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2042
  %50 = load i8*, i8** %49, align 8, !dbg !2042, !tbaa !1054
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2043
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1991, metadata !603), !dbg !2044
  %52 = icmp ugt i64 %38, %51, !dbg !2045
  br i1 %52, label %63, label %53, !dbg !2047

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2048
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1987, metadata !603), !dbg !2033
  store i64 %54, i64* %37, align 8, !dbg !2050, !tbaa !1951
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2051
  br i1 %55, label %57, label %56, !dbg !2053

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2054
  br label %57, !dbg !2054

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1875, metadata !603) #11, !dbg !2055
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2057
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1989, metadata !603), !dbg !2035
  store i8* %58, i8** %39, align 8, !dbg !2058, !tbaa !1938
  %59 = load i32, i32* %44, align 8, !dbg !2059, !tbaa !965
  %60 = load i8*, i8** %47, align 8, !dbg !2060, !tbaa !1051
  %61 = load i8*, i8** %49, align 8, !dbg !2061, !tbaa !1054
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2062
  br label %63, !dbg !2063

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1989, metadata !603), !dbg !2035
  store i32 %6, i32* %5, align 4, !dbg !2064, !tbaa !677
  ret i8* %64, !dbg !2065
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2066 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2070, metadata !603), !dbg !2073
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2071, metadata !603), !dbg !2074
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2072, metadata !603), !dbg !2075
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2076
  ret i8* %4, !dbg !2077
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2078 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2082, metadata !603), !dbg !2083
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1968, metadata !603) #11, !dbg !2084
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1969, metadata !603) #11, !dbg !2086
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2087
  ret i8* %2, !dbg !2088
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2089 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2093, metadata !603), !dbg !2095
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2094, metadata !603), !dbg !2096
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2070, metadata !603) #11, !dbg !2097
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2071, metadata !603) #11, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2072, metadata !603) #11, !dbg !2100
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2101
  ret i8* %3, !dbg !2102
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2103 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2111, metadata !2117), !dbg !2118
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2107, metadata !603), !dbg !2120
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2108, metadata !603), !dbg !2121
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2109, metadata !603), !dbg !2122
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2123
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2110, metadata !603), !dbg !2124
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2116, metadata !603) #11, !dbg !2125
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2126
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2126
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2111, metadata !603) #11, !dbg !2118
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2111, metadata !2127) #11, !dbg !2118
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2118
  %8 = icmp eq i32 %1, 10, !dbg !2128
  br i1 %8, label %9, label %10, !dbg !2130

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2131, !noalias !2132
  unreachable, !dbg !2131

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2111, metadata !2127) #11, !dbg !2118
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2135
  store i32 %1, i32* %11, align 8, !dbg !2135, !alias.scope !2132
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2135
  %13 = bitcast i32* %12 to i8*, !dbg !2135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2135
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2136
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2110, metadata !603), !dbg !2124
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2137
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2138
  ret i8* %14, !dbg !2139
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2140 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2111, metadata !2117), !dbg !2149
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2144, metadata !603), !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2145, metadata !603), !dbg !2152
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2146, metadata !603), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2147, metadata !603), !dbg !2154
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2155
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2155
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2148, metadata !603), !dbg !2156
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2116, metadata !603) #11, !dbg !2157
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2158
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2158
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2111, metadata !603) #11, !dbg !2149
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2111, metadata !2127) #11, !dbg !2149
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2149
  %9 = icmp eq i32 %1, 10, !dbg !2159
  br i1 %9, label %10, label %11, !dbg !2160

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2161, !noalias !2162
  unreachable, !dbg !2161

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2111, metadata !2127) #11, !dbg !2149
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2165
  store i32 %1, i32* %12, align 8, !dbg !2165, !alias.scope !2162
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2165
  %14 = bitcast i32* %13 to i8*, !dbg !2165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2165
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2148, metadata !603), !dbg !2156
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2167
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2168
  ret i8* %15, !dbg !2169
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2170 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2111, metadata !2117), !dbg !2176
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2174, metadata !603), !dbg !2179
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2175, metadata !603), !dbg !2180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2107, metadata !603) #11, !dbg !2181
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2108, metadata !603) #11, !dbg !2182
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2109, metadata !603) #11, !dbg !2183
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2184
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2184
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2110, metadata !603) #11, !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2116, metadata !603) #11, !dbg !2186
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2187
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2187
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2111, metadata !603) #11, !dbg !2176
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2111, metadata !2127) #11, !dbg !2176
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2176
  %7 = icmp eq i32 %0, 10, !dbg !2188
  br i1 %7, label %8, label %9, !dbg !2189

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2190, !noalias !2191
  unreachable, !dbg !2190

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2111, metadata !2127) #11, !dbg !2176
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2194
  store i32 %0, i32* %10, align 8, !dbg !2194, !alias.scope !2191
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2194
  %12 = bitcast i32* %11 to i8*, !dbg !2194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2194
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2195
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2110, metadata !603) #11, !dbg !2185
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2196
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2197
  ret i8* %13, !dbg !2198
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2199 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2111, metadata !2117), !dbg !2206
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2203, metadata !603), !dbg !2209
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2204, metadata !603), !dbg !2210
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2205, metadata !603), !dbg !2211
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2144, metadata !603) #11, !dbg !2212
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2145, metadata !603) #11, !dbg !2213
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2146, metadata !603) #11, !dbg !2214
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2147, metadata !603) #11, !dbg !2215
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2216
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2216
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2148, metadata !603) #11, !dbg !2217
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2116, metadata !603) #11, !dbg !2218
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2219
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2219
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2111, metadata !603) #11, !dbg !2206
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2111, metadata !2127) #11, !dbg !2206
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2206
  %8 = icmp eq i32 %0, 10, !dbg !2220
  br i1 %8, label %9, label %10, !dbg !2221

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2222, !noalias !2223
  unreachable, !dbg !2222

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2111, metadata !2127) #11, !dbg !2206
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2226
  store i32 %0, i32* %11, align 8, !dbg !2226, !alias.scope !2223
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2226
  %13 = bitcast i32* %12 to i8*, !dbg !2226
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2226
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2227
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2148, metadata !603) #11, !dbg !2217
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2228
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2229
  ret i8* %14, !dbg !2230
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2231 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2235, metadata !603), !dbg !2239
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2236, metadata !603), !dbg !2240
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2237, metadata !603), !dbg !2241
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2242
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2243, !tbaa.struct !2244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2238, metadata !603), !dbg !2245
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !984, metadata !603), !dbg !2246
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !985, metadata !603), !dbg !2248
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !986, metadata !603), !dbg !2249
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !987, metadata !603), !dbg !2250
  %6 = lshr i8 %2, 5, !dbg !2251
  %7 = zext i8 %6 to i64, !dbg !2251
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2252
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !988, metadata !603), !dbg !2253
  %9 = and i8 %2, 31, !dbg !2254
  %10 = zext i8 %9 to i32, !dbg !2255
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !990, metadata !603), !dbg !2256
  %11 = load i32, i32* %8, align 4, !dbg !2257, !tbaa !677
  %12 = lshr i32 %11, %10, !dbg !2258
  %13 = and i32 %12, 1, !dbg !2259
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !991, metadata !603), !dbg !2260
  %14 = xor i32 %13, 1, !dbg !2261
  %15 = shl i32 %14, %10, !dbg !2262
  %16 = xor i32 %15, %11, !dbg !2263
  store i32 %16, i32* %8, align 4, !dbg !2263, !tbaa !677
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2238, metadata !603), !dbg !2245
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2264
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2265
  ret i8* %17, !dbg !2266
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2267 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2271, metadata !603), !dbg !2273
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2272, metadata !603), !dbg !2274
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2235, metadata !603) #11, !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2236, metadata !603) #11, !dbg !2277
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2237, metadata !603) #11, !dbg !2278
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2279
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2279
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2280, !tbaa.struct !2244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2238, metadata !603) #11, !dbg !2281
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !984, metadata !603) #11, !dbg !2282
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !985, metadata !603) #11, !dbg !2284
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !986, metadata !603) #11, !dbg !2285
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !987, metadata !603) #11, !dbg !2286
  %5 = lshr i8 %1, 5, !dbg !2287
  %6 = zext i8 %5 to i64, !dbg !2287
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2288
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !988, metadata !603) #11, !dbg !2289
  %8 = and i8 %1, 31, !dbg !2290
  %9 = zext i8 %8 to i32, !dbg !2291
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !990, metadata !603) #11, !dbg !2292
  %10 = load i32, i32* %7, align 4, !dbg !2293, !tbaa !677
  %11 = lshr i32 %10, %9, !dbg !2294
  %12 = and i32 %11, 1, !dbg !2295
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !991, metadata !603) #11, !dbg !2296
  %13 = xor i32 %12, 1, !dbg !2297
  %14 = shl i32 %13, %9, !dbg !2298
  %15 = xor i32 %14, %10, !dbg !2299
  store i32 %15, i32* %7, align 4, !dbg !2299, !tbaa !677
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2238, metadata !603) #11, !dbg !2281
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2300
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2301
  ret i8* %16, !dbg !2302
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2303 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2305, metadata !603), !dbg !2306
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2271, metadata !603) #11, !dbg !2307
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2272, metadata !603) #11, !dbg !2309
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2235, metadata !603) #11, !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2236, metadata !603) #11, !dbg !2312
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2237, metadata !603) #11, !dbg !2313
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2314
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2315, !tbaa.struct !2244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2238, metadata !603) #11, !dbg !2316
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !984, metadata !603) #11, !dbg !2317
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !985, metadata !603) #11, !dbg !2319
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !986, metadata !603) #11, !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !987, metadata !603) #11, !dbg !2321
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2322
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !988, metadata !603) #11, !dbg !2323
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !990, metadata !603) #11, !dbg !2324
  %5 = load i32, i32* %4, align 4, !dbg !2325, !tbaa !677
  %6 = or i32 %5, 67108864, !dbg !2326
  store i32 %6, i32* %4, align 4, !dbg !2326, !tbaa !677
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2238, metadata !603) #11, !dbg !2316
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2327
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2328
  ret i8* %7, !dbg !2329
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2330 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2332, metadata !603), !dbg !2334
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2333, metadata !603), !dbg !2335
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2235, metadata !603) #11, !dbg !2336
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2236, metadata !603) #11, !dbg !2338
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2237, metadata !603) #11, !dbg !2339
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2340
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2340
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2341, !tbaa.struct !2244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2238, metadata !603) #11, !dbg !2342
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !984, metadata !603) #11, !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !985, metadata !603) #11, !dbg !2345
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !986, metadata !603) #11, !dbg !2346
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !987, metadata !603) #11, !dbg !2347
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2348
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !988, metadata !603) #11, !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !990, metadata !603) #11, !dbg !2350
  %6 = load i32, i32* %5, align 4, !dbg !2351, !tbaa !677
  %7 = or i32 %6, 67108864, !dbg !2352
  store i32 %7, i32* %5, align 4, !dbg !2352, !tbaa !677
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2238, metadata !603) #11, !dbg !2342
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2353
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2354
  ret i8* %8, !dbg !2355
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2356 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2111, metadata !2117), !dbg !2362
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2358, metadata !603), !dbg !2364
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2359, metadata !603), !dbg !2365
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2360, metadata !603), !dbg !2366
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2367
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2367
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2116, metadata !603) #11, !dbg !2368
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2369
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2369
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2111, metadata !603) #11, !dbg !2362
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2111, metadata !2127) #11, !dbg !2362
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2362
  %9 = icmp eq i32 %1, 10, !dbg !2370
  br i1 %9, label %10, label %11, !dbg !2371

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2372, !noalias !2373
  unreachable, !dbg !2372

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2111, metadata !2127) #11, !dbg !2362
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2376
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2377
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2378
  store i32 %1, i32* %13, align 8, !dbg !2378
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2378
  %15 = bitcast i32* %14 to i8*, !dbg !2378
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2378
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2361, metadata !603), !dbg !2379
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !984, metadata !603), !dbg !2380
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !985, metadata !603), !dbg !2382
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !986, metadata !603), !dbg !2383
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !987, metadata !603), !dbg !2384
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2385
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !988, metadata !603), !dbg !2386
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !990, metadata !603), !dbg !2387
  %17 = load i32, i32* %16, align 4, !dbg !2388, !tbaa !677
  %18 = or i32 %17, 67108864, !dbg !2389
  store i32 %18, i32* %16, align 4, !dbg !2389, !tbaa !677
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2361, metadata !603), !dbg !2379
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2390
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2391
  ret i8* %19, !dbg !2392
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2393 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2397, metadata !603), !dbg !2401
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2398, metadata !603), !dbg !2402
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2399, metadata !603), !dbg !2403
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2400, metadata !603), !dbg !2404
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2405, metadata !603) #11, !dbg !2415
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2410, metadata !603) #11, !dbg !2417
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2411, metadata !603) #11, !dbg !2418
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2412, metadata !603) #11, !dbg !2419
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2413, metadata !603) #11, !dbg !2420
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2421
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2421
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2422, !tbaa.struct !2244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2414, metadata !603) #11, !dbg !2423
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1033, metadata !603) #11, !dbg !2424
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1034, metadata !603) #11, !dbg !2426
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1035, metadata !603) #11, !dbg !2427
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1033, metadata !603) #11, !dbg !2424
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1033, metadata !603) #11, !dbg !2424
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2428
  store i32 10, i32* %7, align 8, !dbg !2429, !tbaa !965
  %8 = icmp ne i8* %1, null, !dbg !2430
  %9 = icmp ne i8* %2, null, !dbg !2431
  %10 = and i1 %8, %9, !dbg !2432
  br i1 %10, label %12, label %11, !dbg !2432

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2433
  unreachable, !dbg !2433

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2434
  store i8* %1, i8** %13, align 8, !dbg !2435, !tbaa !1051
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2436
  store i8* %2, i8** %14, align 8, !dbg !2437, !tbaa !1054
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2414, metadata !603) #11, !dbg !2423
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2438
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2439
  ret i8* %15, !dbg !2440
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2406 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2405, metadata !603), !dbg !2441
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2410, metadata !603), !dbg !2442
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2411, metadata !603), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2412, metadata !603), !dbg !2444
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2413, metadata !603), !dbg !2445
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2446
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2447, !tbaa.struct !2244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2414, metadata !603), !dbg !2448
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1033, metadata !603) #11, !dbg !2449
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1034, metadata !603) #11, !dbg !2451
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1035, metadata !603) #11, !dbg !2452
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1033, metadata !603) #11, !dbg !2449
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1033, metadata !603) #11, !dbg !2449
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2453
  store i32 10, i32* %8, align 8, !dbg !2454, !tbaa !965
  %9 = icmp ne i8* %1, null, !dbg !2455
  %10 = icmp ne i8* %2, null, !dbg !2456
  %11 = and i1 %9, %10, !dbg !2457
  br i1 %11, label %13, label %12, !dbg !2457

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2458
  unreachable, !dbg !2458

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2459
  store i8* %1, i8** %14, align 8, !dbg !2460, !tbaa !1051
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2461
  store i8* %2, i8** %15, align 8, !dbg !2462, !tbaa !1054
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2414, metadata !603), !dbg !2448
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2464
  ret i8* %16, !dbg !2465
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2466 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2470, metadata !603), !dbg !2473
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2471, metadata !603), !dbg !2474
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2472, metadata !603), !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2397, metadata !603) #11, !dbg !2476
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2398, metadata !603) #11, !dbg !2478
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2399, metadata !603) #11, !dbg !2479
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2400, metadata !603) #11, !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2405, metadata !603) #11, !dbg !2481
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2410, metadata !603) #11, !dbg !2483
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2411, metadata !603) #11, !dbg !2484
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2412, metadata !603) #11, !dbg !2485
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2413, metadata !603) #11, !dbg !2486
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2487
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2488, !tbaa.struct !2244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2414, metadata !603) #11, !dbg !2489
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1033, metadata !603) #11, !dbg !2490
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1034, metadata !603) #11, !dbg !2492
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1035, metadata !603) #11, !dbg !2493
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1033, metadata !603) #11, !dbg !2490
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1033, metadata !603) #11, !dbg !2490
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2494
  store i32 10, i32* %6, align 8, !dbg !2495, !tbaa !965
  %7 = icmp ne i8* %0, null, !dbg !2496
  %8 = icmp ne i8* %1, null, !dbg !2497
  %9 = and i1 %7, %8, !dbg !2498
  br i1 %9, label %11, label %10, !dbg !2498

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2499
  unreachable, !dbg !2499

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2500
  store i8* %0, i8** %12, align 8, !dbg !2501, !tbaa !1051
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2502
  store i8* %1, i8** %13, align 8, !dbg !2503, !tbaa !1054
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2414, metadata !603) #11, !dbg !2489
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2504
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2505
  ret i8* %14, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2507 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2511, metadata !603), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2512, metadata !603), !dbg !2516
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2513, metadata !603), !dbg !2517
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2514, metadata !603), !dbg !2518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2405, metadata !603) #11, !dbg !2519
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2410, metadata !603) #11, !dbg !2521
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2411, metadata !603) #11, !dbg !2522
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2412, metadata !603) #11, !dbg !2523
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2413, metadata !603) #11, !dbg !2524
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2525
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2526, !tbaa.struct !2244
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2414, metadata !603) #11, !dbg !2527
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1033, metadata !603) #11, !dbg !2528
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1034, metadata !603) #11, !dbg !2530
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1035, metadata !603) #11, !dbg !2531
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1033, metadata !603) #11, !dbg !2528
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1033, metadata !603) #11, !dbg !2528
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2532
  store i32 10, i32* %7, align 8, !dbg !2533, !tbaa !965
  %8 = icmp ne i8* %0, null, !dbg !2534
  %9 = icmp ne i8* %1, null, !dbg !2535
  %10 = and i1 %8, %9, !dbg !2536
  br i1 %10, label %12, label %11, !dbg !2536

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2537
  unreachable, !dbg !2537

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2538
  store i8* %0, i8** %13, align 8, !dbg !2539, !tbaa !1051
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2540
  store i8* %1, i8** %14, align 8, !dbg !2541, !tbaa !1054
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2414, metadata !603) #11, !dbg !2527
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2542
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2543
  ret i8* %15, !dbg !2544
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2545 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2549, metadata !603), !dbg !2552
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2550, metadata !603), !dbg !2553
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2551, metadata !603), !dbg !2554
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2555
  ret i8* %4, !dbg !2556
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2557 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2561, metadata !603), !dbg !2563
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2562, metadata !603), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2549, metadata !603) #11, !dbg !2565
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2550, metadata !603) #11, !dbg !2567
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2551, metadata !603) #11, !dbg !2568
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2569
  ret i8* %3, !dbg !2570
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2571 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2575, metadata !603), !dbg !2577
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2576, metadata !603), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2549, metadata !603) #11, !dbg !2579
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2550, metadata !603) #11, !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2551, metadata !603) #11, !dbg !2582
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2583
  ret i8* %3, !dbg !2584
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2585 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2589, metadata !603), !dbg !2590
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2575, metadata !603) #11, !dbg !2591
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2576, metadata !603) #11, !dbg !2593
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2549, metadata !603) #11, !dbg !2594
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2550, metadata !603) #11, !dbg !2596
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2551, metadata !603) #11, !dbg !2597
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2598
  ret i8* %2, !dbg !2599
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_write(i32, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !530 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !536, metadata !603), !dbg !2600
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !537, metadata !603), !dbg !2601
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !538, metadata !603), !dbg !2602
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !538, metadata !603), !dbg !2602
  %4 = tail call i64 @write(i32 %0, i8* %1, i64 %2) #11, !dbg !2603
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !539, metadata !603), !dbg !2604
  %5 = icmp sgt i64 %4, -1, !dbg !2605
  br i1 %5, label %25, label %6, !dbg !2607

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #17, !dbg !2608
  br label %11, !dbg !2607

; <label>:8:                                      ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !538, metadata !603), !dbg !2602
  %9 = tail call i64 @write(i32 %0, i8* %1, i64 2147475456) #11, !dbg !2603
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !539, metadata !603), !dbg !2604
  %10 = icmp sgt i64 %9, -1, !dbg !2605
  br i1 %10, label %25, label %11, !dbg !2607, !llvm.loop !2610

; <label>:11:                                     ; preds = %6, %8
  %12 = phi i64 [ %4, %6 ], [ %9, %8 ]
  %13 = phi i64 [ %2, %6 ], [ 2147475456, %8 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !538, metadata !603), !dbg !2602
  br label %17, !dbg !2607

; <label>:14:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !538, metadata !603), !dbg !2602
  %15 = tail call i64 @write(i32 %0, i8* %1, i64 %13) #11, !dbg !2603
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !539, metadata !603), !dbg !2604
  %16 = icmp sgt i64 %15, -1, !dbg !2605
  br i1 %16, label %25, label %17, !dbg !2607

; <label>:17:                                     ; preds = %11, %14
  %18 = phi i64 [ %12, %11 ], [ %15, %14 ]
  %19 = load i32, i32* %7, align 4, !dbg !2608, !tbaa !677
  %20 = icmp eq i32 %19, 4, !dbg !2608
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !538, metadata !603), !dbg !2602
  br i1 %20, label %14, label %21, !dbg !2613, !llvm.loop !2610

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i32 %19, 22, !dbg !2614
  %23 = icmp ugt i64 %13, 2147475456, !dbg !2616
  %24 = and i1 %23, %22, !dbg !2617
  tail call void @llvm.dbg.value(metadata i64 2147475456, i64 0, metadata !538, metadata !603), !dbg !2602
  br i1 %24, label %8, label %25

; <label>:25:                                     ; preds = %21, %8, %14, %3
  %26 = phi i64 [ %4, %3 ], [ %15, %14 ], [ %9, %8 ], [ %18, %21 ]
  ret i64 %26, !dbg !2618
}

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2619 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2675, metadata !603), !dbg !2681
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2676, metadata !603), !dbg !2682
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2677, metadata !603), !dbg !2683
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2678, metadata !603), !dbg !2684
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2679, metadata !603), !dbg !2685
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2680, metadata !603), !dbg !2686
  %7 = icmp eq i8* %1, null, !dbg !2687
  br i1 %7, label %10, label %8, !dbg !2689

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !2690
  br label %12, !dbg !2690

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !2691
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i32 5) #11, !dbg !2692
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !2692
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.61, i64 0, i64 0), i32 5) #11, !dbg !2693
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !2693
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
  ], !dbg !2694

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2695
  unreachable, !dbg !2695

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.62, i64 0, i64 0), i32 5) #11, !dbg !2697
  %20 = load i8*, i8** %4, align 8, !dbg !2697, !tbaa !610
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !2697
  br label %146, !dbg !2698

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.63, i64 0, i64 0), i32 5) #11, !dbg !2699
  %24 = load i8*, i8** %4, align 8, !dbg !2699, !tbaa !610
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2699
  %26 = load i8*, i8** %25, align 8, !dbg !2699, !tbaa !610
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !2699
  br label %146, !dbg !2700

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.64, i64 0, i64 0), i32 5) #11, !dbg !2701
  %30 = load i8*, i8** %4, align 8, !dbg !2701, !tbaa !610
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2701
  %32 = load i8*, i8** %31, align 8, !dbg !2701, !tbaa !610
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2701
  %34 = load i8*, i8** %33, align 8, !dbg !2701, !tbaa !610
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !2701
  br label %146, !dbg !2702

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.65, i64 0, i64 0), i32 5) #11, !dbg !2703
  %38 = load i8*, i8** %4, align 8, !dbg !2703, !tbaa !610
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2703
  %40 = load i8*, i8** %39, align 8, !dbg !2703, !tbaa !610
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2703
  %42 = load i8*, i8** %41, align 8, !dbg !2703, !tbaa !610
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2703
  %44 = load i8*, i8** %43, align 8, !dbg !2703, !tbaa !610
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !2703
  br label %146, !dbg !2704

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.66, i64 0, i64 0), i32 5) #11, !dbg !2705
  %48 = load i8*, i8** %4, align 8, !dbg !2705, !tbaa !610
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2705
  %50 = load i8*, i8** %49, align 8, !dbg !2705, !tbaa !610
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2705
  %52 = load i8*, i8** %51, align 8, !dbg !2705, !tbaa !610
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2705
  %54 = load i8*, i8** %53, align 8, !dbg !2705, !tbaa !610
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2705
  %56 = load i8*, i8** %55, align 8, !dbg !2705, !tbaa !610
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !2705
  br label %146, !dbg !2706

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.67, i64 0, i64 0), i32 5) #11, !dbg !2707
  %60 = load i8*, i8** %4, align 8, !dbg !2707, !tbaa !610
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2707
  %62 = load i8*, i8** %61, align 8, !dbg !2707, !tbaa !610
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2707
  %64 = load i8*, i8** %63, align 8, !dbg !2707, !tbaa !610
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2707
  %66 = load i8*, i8** %65, align 8, !dbg !2707, !tbaa !610
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2707
  %68 = load i8*, i8** %67, align 8, !dbg !2707, !tbaa !610
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2707
  %70 = load i8*, i8** %69, align 8, !dbg !2707, !tbaa !610
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !2707
  br label %146, !dbg !2708

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.68, i64 0, i64 0), i32 5) #11, !dbg !2709
  %74 = load i8*, i8** %4, align 8, !dbg !2709, !tbaa !610
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2709
  %76 = load i8*, i8** %75, align 8, !dbg !2709, !tbaa !610
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2709
  %78 = load i8*, i8** %77, align 8, !dbg !2709, !tbaa !610
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2709
  %80 = load i8*, i8** %79, align 8, !dbg !2709, !tbaa !610
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2709
  %82 = load i8*, i8** %81, align 8, !dbg !2709, !tbaa !610
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2709
  %84 = load i8*, i8** %83, align 8, !dbg !2709, !tbaa !610
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2709
  %86 = load i8*, i8** %85, align 8, !dbg !2709, !tbaa !610
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !2709
  br label %146, !dbg !2710

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.69, i64 0, i64 0), i32 5) #11, !dbg !2711
  %90 = load i8*, i8** %4, align 8, !dbg !2711, !tbaa !610
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2711
  %92 = load i8*, i8** %91, align 8, !dbg !2711, !tbaa !610
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2711
  %94 = load i8*, i8** %93, align 8, !dbg !2711, !tbaa !610
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2711
  %96 = load i8*, i8** %95, align 8, !dbg !2711, !tbaa !610
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2711
  %98 = load i8*, i8** %97, align 8, !dbg !2711, !tbaa !610
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2711
  %100 = load i8*, i8** %99, align 8, !dbg !2711, !tbaa !610
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2711
  %102 = load i8*, i8** %101, align 8, !dbg !2711, !tbaa !610
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2711
  %104 = load i8*, i8** %103, align 8, !dbg !2711, !tbaa !610
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !2711
  br label %146, !dbg !2712

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.70, i64 0, i64 0), i32 5) #11, !dbg !2713
  %108 = load i8*, i8** %4, align 8, !dbg !2713, !tbaa !610
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2713
  %110 = load i8*, i8** %109, align 8, !dbg !2713, !tbaa !610
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2713
  %112 = load i8*, i8** %111, align 8, !dbg !2713, !tbaa !610
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2713
  %114 = load i8*, i8** %113, align 8, !dbg !2713, !tbaa !610
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2713
  %116 = load i8*, i8** %115, align 8, !dbg !2713, !tbaa !610
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2713
  %118 = load i8*, i8** %117, align 8, !dbg !2713, !tbaa !610
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2713
  %120 = load i8*, i8** %119, align 8, !dbg !2713, !tbaa !610
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2713
  %122 = load i8*, i8** %121, align 8, !dbg !2713, !tbaa !610
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2713
  %124 = load i8*, i8** %123, align 8, !dbg !2713, !tbaa !610
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !2713
  br label %146, !dbg !2714

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.71, i64 0, i64 0), i32 5) #11, !dbg !2715
  %128 = load i8*, i8** %4, align 8, !dbg !2715, !tbaa !610
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2715
  %130 = load i8*, i8** %129, align 8, !dbg !2715, !tbaa !610
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2715
  %132 = load i8*, i8** %131, align 8, !dbg !2715, !tbaa !610
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2715
  %134 = load i8*, i8** %133, align 8, !dbg !2715, !tbaa !610
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2715
  %136 = load i8*, i8** %135, align 8, !dbg !2715, !tbaa !610
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2715
  %138 = load i8*, i8** %137, align 8, !dbg !2715, !tbaa !610
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2715
  %140 = load i8*, i8** %139, align 8, !dbg !2715, !tbaa !610
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2715
  %142 = load i8*, i8** %141, align 8, !dbg !2715, !tbaa !610
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2715
  %144 = load i8*, i8** %143, align 8, !dbg !2715, !tbaa !610
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !2715
  br label %146, !dbg !2716

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2717
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2718 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2722, metadata !603), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2723, metadata !603), !dbg !2729
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2724, metadata !603), !dbg !2730
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2725, metadata !603), !dbg !2731
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2726, metadata !603), !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2727, metadata !603), !dbg !2733
  br label %6, !dbg !2734

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2727, metadata !603), !dbg !2733
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2736
  %9 = load i8*, i8** %8, align 8, !dbg !2736, !tbaa !610
  %10 = icmp eq i8* %9, null, !dbg !2738
  %11 = add i64 %7, 1, !dbg !2739
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2727, metadata !603), !dbg !2733
  br i1 %10, label %12, label %6, !dbg !2738, !llvm.loop !2740

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2742
  ret void, !dbg !2743
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2744 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2755, metadata !603), !dbg !2763
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2756, metadata !603), !dbg !2764
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2757, metadata !603), !dbg !2765
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2758, metadata !603), !dbg !2766
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2759, metadata !603), !dbg !2767
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2768
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2768
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2761, metadata !603), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  %11 = load i32, i32* %8, align 8, !dbg !2771
  %12 = icmp ult i32 %11, 41, !dbg !2771
  br i1 %12, label %13, label %18, !dbg !2771

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2771
  %15 = sext i32 %11 to i64, !dbg !2771
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2771
  %17 = add i32 %11, 8, !dbg !2771
  store i32 %17, i32* %8, align 8, !dbg !2771
  br label %21, !dbg !2771

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2771
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2771
  store i8* %20, i8** %10, align 8, !dbg !2771
  br label %21, !dbg !2771

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2771
  %25 = load i8*, i8** %24, align 8, !dbg !2771
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2774
  store i8* %25, i8** %26, align 16, !dbg !2775, !tbaa !610
  %27 = icmp eq i8* %25, null, !dbg !2776
  br i1 %27, label %30, label %28, !dbg !2777

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  %29 = icmp ult i32 %22, 41, !dbg !2771
  br i1 %29, label %35, label %32, !dbg !2771

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2778
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2779
  ret void, !dbg !2779

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2771
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2771
  store i8* %34, i8** %10, align 8, !dbg !2771
  br label %40, !dbg !2771

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2771
  %37 = sext i32 %22 to i64, !dbg !2771
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2771
  %39 = add i32 %22, 8, !dbg !2771
  store i32 %39, i32* %8, align 8, !dbg !2771
  br label %40, !dbg !2771

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2771
  %44 = load i8*, i8** %43, align 8, !dbg !2771
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2774
  store i8* %44, i8** %45, align 8, !dbg !2775, !tbaa !610
  %46 = icmp eq i8* %44, null, !dbg !2776
  br i1 %46, label %30, label %47, !dbg !2777

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  %48 = icmp ult i32 %41, 41, !dbg !2771
  br i1 %48, label %52, label %49, !dbg !2771

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2771
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2771
  store i8* %51, i8** %10, align 8, !dbg !2771
  br label %57, !dbg !2771

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2771
  %54 = sext i32 %41 to i64, !dbg !2771
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2771
  %56 = add i32 %41, 8, !dbg !2771
  store i32 %56, i32* %8, align 8, !dbg !2771
  br label %57, !dbg !2771

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2771
  %61 = load i8*, i8** %60, align 8, !dbg !2771
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2774
  store i8* %61, i8** %62, align 16, !dbg !2775, !tbaa !610
  %63 = icmp eq i8* %61, null, !dbg !2776
  br i1 %63, label %30, label %64, !dbg !2777

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  %65 = icmp ult i32 %58, 41, !dbg !2771
  br i1 %65, label %69, label %66, !dbg !2771

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2771
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2771
  store i8* %68, i8** %10, align 8, !dbg !2771
  br label %74, !dbg !2771

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2771
  %71 = sext i32 %58 to i64, !dbg !2771
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2771
  %73 = add i32 %58, 8, !dbg !2771
  store i32 %73, i32* %8, align 8, !dbg !2771
  br label %74, !dbg !2771

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2771
  %78 = load i8*, i8** %77, align 8, !dbg !2771
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2774
  store i8* %78, i8** %79, align 8, !dbg !2775, !tbaa !610
  %80 = icmp eq i8* %78, null, !dbg !2776
  br i1 %80, label %30, label %81, !dbg !2777

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  %82 = icmp ult i32 %75, 41, !dbg !2771
  br i1 %82, label %86, label %83, !dbg !2771

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2771
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2771
  store i8* %85, i8** %10, align 8, !dbg !2771
  br label %91, !dbg !2771

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2771
  %88 = sext i32 %75 to i64, !dbg !2771
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2771
  %90 = add i32 %75, 8, !dbg !2771
  store i32 %90, i32* %8, align 8, !dbg !2771
  br label %91, !dbg !2771

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2771
  %95 = load i8*, i8** %94, align 8, !dbg !2771
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2774
  store i8* %95, i8** %96, align 16, !dbg !2775, !tbaa !610
  %97 = icmp eq i8* %95, null, !dbg !2776
  br i1 %97, label %30, label %98, !dbg !2777

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  %99 = icmp ult i32 %92, 41, !dbg !2771
  br i1 %99, label %103, label %100, !dbg !2771

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2771
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2771
  store i8* %102, i8** %10, align 8, !dbg !2771
  br label %108, !dbg !2771

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2771
  %105 = sext i32 %92 to i64, !dbg !2771
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2771
  %107 = add i32 %92, 8, !dbg !2771
  store i32 %107, i32* %8, align 8, !dbg !2771
  br label %108, !dbg !2771

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2771
  %111 = load i8*, i8** %110, align 8, !dbg !2771
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2774
  store i8* %111, i8** %112, align 8, !dbg !2775, !tbaa !610
  %113 = icmp eq i8* %111, null, !dbg !2776
  br i1 %113, label %30, label %114, !dbg !2777

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  %115 = load i8*, i8** %10, align 8, !dbg !2771
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2771
  store i8* %116, i8** %10, align 8, !dbg !2771
  %117 = bitcast i8* %115 to i8**, !dbg !2771
  %118 = load i8*, i8** %117, align 8, !dbg !2771
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2774
  store i8* %118, i8** %119, align 16, !dbg !2775, !tbaa !610
  %120 = icmp eq i8* %118, null, !dbg !2776
  br i1 %120, label %30, label %121, !dbg !2777

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  %122 = load i8*, i8** %10, align 8, !dbg !2771
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2771
  store i8* %123, i8** %10, align 8, !dbg !2771
  %124 = bitcast i8* %122 to i8**, !dbg !2771
  %125 = load i8*, i8** %124, align 8, !dbg !2771
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2774
  store i8* %125, i8** %126, align 8, !dbg !2775, !tbaa !610
  %127 = icmp eq i8* %125, null, !dbg !2776
  br i1 %127, label %30, label %128, !dbg !2777

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  %129 = load i8*, i8** %10, align 8, !dbg !2771
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2771
  store i8* %130, i8** %10, align 8, !dbg !2771
  %131 = bitcast i8* %129 to i8**, !dbg !2771
  %132 = load i8*, i8** %131, align 8, !dbg !2771
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2774
  store i8* %132, i8** %133, align 16, !dbg !2775, !tbaa !610
  %134 = icmp eq i8* %132, null, !dbg !2776
  br i1 %134, label %30, label %135, !dbg !2777

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2760, metadata !603), !dbg !2770
  %136 = load i8*, i8** %10, align 8, !dbg !2771
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2771
  store i8* %137, i8** %10, align 8, !dbg !2771
  %138 = bitcast i8* %136 to i8**, !dbg !2771
  %139 = load i8*, i8** %138, align 8, !dbg !2771
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2774
  store i8* %139, i8** %140, align 8, !dbg !2775, !tbaa !610
  %141 = icmp eq i8* %139, null, !dbg !2776
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2760, metadata !603), !dbg !2770
  %142 = select i1 %141, i64 9, i64 10, !dbg !2777
  br label %30, !dbg !2777
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2780 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2784, metadata !603), !dbg !2793
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2785, metadata !603), !dbg !2794
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2786, metadata !603), !dbg !2795
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2787, metadata !603), !dbg !2796
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2797
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2797
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2788, metadata !603), !dbg !2798
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2799
  call void @llvm.va_start(i8* nonnull %6), !dbg !2799
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2800
  call void @llvm.va_end(i8* nonnull %6), !dbg !2801
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2802
  ret void, !dbg !2802
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2803 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.74, i64 0, i64 0), i32 5) #11, !dbg !2804
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.75, i64 0, i64 0)) #11, !dbg !2804
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !2805
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.76, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.77, i64 0, i64 0)) #11, !dbg !2805
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !2806
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2806, !tbaa !610
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !2806
  ret void, !dbg !2807
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2808 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2812, metadata !603), !dbg !2814
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2813, metadata !603), !dbg !2815
  %3 = udiv i64 9223372036854775807, %1, !dbg !2816
  %4 = icmp ult i64 %3, %0, !dbg !2816
  br i1 %4, label %5, label %6, !dbg !2818

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2819
  unreachable, !dbg !2819

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2820
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2821, metadata !603) #11, !dbg !2828
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !2830
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2827, metadata !603) #11, !dbg !2831
  %9 = icmp eq i8* %8, null, !dbg !2832
  %10 = icmp ne i64 %7, 0, !dbg !2834
  %11 = and i1 %10, %9, !dbg !2835
  br i1 %11, label %12, label %13, !dbg !2835

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2836
  unreachable, !dbg !2836

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2837
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2822 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2821, metadata !603), !dbg !2838
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2839
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2827, metadata !603), !dbg !2840
  %3 = icmp eq i8* %2, null, !dbg !2841
  %4 = icmp ne i64 %0, 0, !dbg !2842
  %5 = and i1 %4, %3, !dbg !2843
  br i1 %5, label %6, label %7, !dbg !2843

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2844
  unreachable, !dbg !2844

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2845
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2846 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2850, metadata !603), !dbg !2853
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2851, metadata !603), !dbg !2854
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2852, metadata !603), !dbg !2855
  %4 = udiv i64 9223372036854775807, %2, !dbg !2856
  %5 = icmp ult i64 %4, %1, !dbg !2856
  br i1 %5, label %6, label %7, !dbg !2858

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2859
  unreachable, !dbg !2859

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2860
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2861, metadata !603) #11, !dbg !2867
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2866, metadata !603) #11, !dbg !2869
  %9 = icmp eq i64 %8, 0, !dbg !2870
  %10 = icmp ne i8* %0, null, !dbg !2872
  %11 = and i1 %10, %9, !dbg !2873
  br i1 %11, label %12, label %13, !dbg !2873

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !2874
  br label %19, !dbg !2876

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !2877
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2861, metadata !603) #11, !dbg !2867
  %15 = icmp eq i8* %14, null, !dbg !2878
  %16 = icmp ne i64 %8, 0, !dbg !2880
  %17 = and i1 %16, %15, !dbg !2881
  br i1 %17, label %18, label %19, !dbg !2881

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2882
  unreachable, !dbg !2882

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2883
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2862 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2861, metadata !603), !dbg !2884
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2866, metadata !603), !dbg !2885
  %3 = icmp eq i64 %1, 0, !dbg !2886
  %4 = icmp ne i8* %0, null, !dbg !2887
  %5 = and i1 %4, %3, !dbg !2888
  br i1 %5, label %6, label %7, !dbg !2888

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !2889
  br label %13, !dbg !2890

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !2891
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2861, metadata !603), !dbg !2884
  %9 = icmp eq i8* %8, null, !dbg !2892
  %10 = icmp ne i64 %1, 0, !dbg !2893
  %11 = and i1 %10, %9, !dbg !2894
  br i1 %11, label %12, label %13, !dbg !2894

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2895
  unreachable, !dbg !2895

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2896
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !563 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !568, metadata !603), !dbg !2897
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !569, metadata !603), !dbg !2898
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !570, metadata !603), !dbg !2899
  %4 = load i64, i64* %1, align 8, !dbg !2900, !tbaa !1921
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !571, metadata !603), !dbg !2901
  %5 = icmp eq i8* %0, null, !dbg !2902
  br i1 %5, label %6, label %13, !dbg !2904

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2905
  br i1 %7, label %8, label %17, !dbg !2908

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2909
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !571, metadata !603), !dbg !2901
  %10 = icmp ugt i64 %2, 128, !dbg !2911
  %11 = zext i1 %10 to i64, !dbg !2911
  %12 = add nuw nsw i64 %9, %11, !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !571, metadata !603), !dbg !2901
  br label %17, !dbg !2913

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2914
  %15 = icmp ugt i64 %14, %4, !dbg !2917
  br i1 %15, label %20, label %16, !dbg !2918

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2919
  unreachable, !dbg !2919

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !571, metadata !603), !dbg !2901
  store i64 %18, i64* %1, align 8, !dbg !2920, !tbaa !1921
  %19 = mul i64 %18, %2, !dbg !2921
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2861, metadata !603) #11, !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2866, metadata !603) #11, !dbg !2924
  br label %27, !dbg !2925

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2926
  %22 = add i64 %4, 1, !dbg !2927
  %23 = add i64 %22, %21, !dbg !2928
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !571, metadata !603), !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !571, metadata !603), !dbg !2901
  store i64 %23, i64* %1, align 8, !dbg !2920, !tbaa !1921
  %24 = mul i64 %23, %2, !dbg !2921
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2861, metadata !603) #11, !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2866, metadata !603) #11, !dbg !2924
  %25 = icmp eq i64 %24, 0, !dbg !2929
  br i1 %25, label %26, label %27, !dbg !2925

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !2930
  br label %34, !dbg !2931

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !2932
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2861, metadata !603) #11, !dbg !2922
  %30 = icmp eq i8* %29, null, !dbg !2933
  %31 = icmp ne i64 %28, 0, !dbg !2934
  %32 = and i1 %31, %30, !dbg !2935
  br i1 %32, label %33, label %34, !dbg !2935

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2936
  unreachable, !dbg !2936

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2937
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2938 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2940, metadata !603), !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2821, metadata !603) #11, !dbg !2942
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2944
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2827, metadata !603) #11, !dbg !2945
  %3 = icmp eq i8* %2, null, !dbg !2946
  %4 = icmp ne i64 %0, 0, !dbg !2947
  %5 = and i1 %4, %3, !dbg !2948
  br i1 %5, label %6, label %7, !dbg !2948

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2949
  unreachable, !dbg !2949

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2950
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2951 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2955, metadata !603), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2956, metadata !603), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !568, metadata !603) #11, !dbg !2959
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !569, metadata !603) #11, !dbg !2961
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !570, metadata !603) #11, !dbg !2962
  %3 = load i64, i64* %1, align 8, !dbg !2963, !tbaa !1921
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !571, metadata !603) #11, !dbg !2964
  %4 = icmp eq i8* %0, null, !dbg !2965
  br i1 %4, label %5, label %8, !dbg !2966

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !571, metadata !603) #11, !dbg !2964
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !571, metadata !603) #11, !dbg !2964
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !571, metadata !603) #11, !dbg !2964
  store i64 %7, i64* %1, align 8, !dbg !2969, !tbaa !1921
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2861, metadata !603) #11, !dbg !2970
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2866, metadata !603) #11, !dbg !2972
  br label %17, !dbg !2973

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2974
  br i1 %9, label %11, label %10, !dbg !2975

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2976
  unreachable, !dbg !2976

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2977
  %13 = add i64 %3, 1, !dbg !2978
  %14 = add i64 %13, %12, !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !571, metadata !603) #11, !dbg !2964
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !571, metadata !603) #11, !dbg !2964
  store i64 %14, i64* %1, align 8, !dbg !2969, !tbaa !1921
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2861, metadata !603) #11, !dbg !2970
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2866, metadata !603) #11, !dbg !2972
  %15 = icmp eq i64 %14, 0, !dbg !2980
  br i1 %15, label %16, label %17, !dbg !2973

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !2981
  br label %24, !dbg !2982

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !2983
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2861, metadata !603) #11, !dbg !2970
  %20 = icmp eq i8* %19, null, !dbg !2984
  %21 = icmp ne i64 %18, 0, !dbg !2985
  %22 = and i1 %21, %20, !dbg !2986
  br i1 %22, label %23, label %24, !dbg !2986

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2987
  unreachable, !dbg !2987

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2988
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2989 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2991, metadata !603), !dbg !2992
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2821, metadata !603) #11, !dbg !2993
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2995
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2827, metadata !603) #11, !dbg !2996
  %3 = icmp eq i8* %2, null, !dbg !2997
  %4 = icmp ne i64 %0, 0, !dbg !2998
  %5 = and i1 %4, %3, !dbg !2999
  br i1 %5, label %6, label %7, !dbg !2999

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3000
  unreachable, !dbg !3000

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3001
  ret i8* %2, !dbg !3002
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3003 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3005, metadata !603), !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3006, metadata !603), !dbg !3009
  %3 = udiv i64 9223372036854775807, %1, !dbg !3010
  %4 = icmp ult i64 %3, %0, !dbg !3010
  br i1 %4, label %8, label %5, !dbg !3012

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3013
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3007, metadata !603), !dbg !3014
  %7 = icmp eq i8* %6, null, !dbg !3015
  br i1 %7, label %8, label %9, !dbg !3016

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3017
  unreachable, !dbg !3017

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3019 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3023, metadata !603), !dbg !3025
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3024, metadata !603), !dbg !3026
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2821, metadata !603) #11, !dbg !3027
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3029
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2827, metadata !603) #11, !dbg !3030
  %4 = icmp eq i8* %3, null, !dbg !3031
  %5 = icmp ne i64 %1, 0, !dbg !3032
  %6 = and i1 %5, %4, !dbg !3033
  br i1 %6, label %7, label %8, !dbg !3033

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3034
  unreachable, !dbg !3034

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3035
  ret i8* %3, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3037 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3039, metadata !603), !dbg !3040
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3041
  %3 = add i64 %2, 1, !dbg !3042
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3023, metadata !603) #11, !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3024, metadata !603) #11, !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2821, metadata !603) #11, !dbg !3046
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3048
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2827, metadata !603) #11, !dbg !3049
  %5 = icmp eq i8* %4, null, !dbg !3050
  %6 = icmp ne i64 %3, 0, !dbg !3051
  %7 = and i1 %6, %5, !dbg !3052
  br i1 %7, label %8, label %9, !dbg !3052

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3053
  unreachable, !dbg !3053

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3054
  ret i8* %4, !dbg !3055
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3056 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3058, !tbaa !677
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.88, i64 0, i64 0), i32 5) #11, !dbg !3059
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i8* %2) #11, !dbg !3060
  tail call void @abort() #15, !dbg !3061
  unreachable, !dbg !3061
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3062 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3065, metadata !603), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3066, metadata !603), !dbg !3072
  %3 = icmp eq i64 %0, 0, !dbg !3073
  %4 = icmp eq i64 %1, 0, !dbg !3074
  %5 = or i1 %3, %4, !dbg !3075
  br i1 %5, label %12, label %6, !dbg !3075

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3068, metadata !603), !dbg !3077
  %8 = udiv i64 %7, %1, !dbg !3078
  %9 = icmp eq i64 %8, %0, !dbg !3080
  br i1 %9, label %12, label %10, !dbg !3081

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3082
  store i32 12, i32* %11, align 4, !dbg !3084, !tbaa !677
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3065, metadata !603), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3066, metadata !603), !dbg !3072
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3085
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3067, metadata !603), !dbg !3086
  br label %16, !dbg !3087

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3088
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3089 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3106, metadata !603), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3107, metadata !603), !dbg !3116
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3108, metadata !603), !dbg !3117
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3109, metadata !603), !dbg !3118
  %6 = bitcast i32* %5 to i8*, !dbg !3119
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3119
  %7 = icmp eq i32* %0, null, !dbg !3120
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3106, metadata !603), !dbg !3115
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3122
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3106, metadata !603), !dbg !3115
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3110, metadata !603), !dbg !3124
  %10 = icmp ugt i64 %9, -3, !dbg !3125
  %11 = icmp ne i64 %2, 0, !dbg !3126
  %12 = and i1 %11, %10, !dbg !3127
  br i1 %12, label %13, label %18, !dbg !3127

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3128
  br i1 %14, label %18, label %15, !dbg !3129

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3130, !tbaa !722
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3112, metadata !603), !dbg !3131
  %17 = zext i8 %16 to i32, !dbg !3132
  store i32 %17, i32* %8, align 4, !dbg !3133, !tbaa !677
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3134
  ret i64 %19, !dbg !3134
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3135 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3180, metadata !603), !dbg !3185
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3186
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3187, metadata !603), !dbg !3191
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3193
  %4 = load i32, i32* %3, align 8, !dbg !3193, !tbaa !3194
  %5 = and i32 %4, 32, !dbg !3193
  %6 = icmp eq i32 %5, 0, !dbg !3196
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3197
  %8 = icmp ne i32 %7, 0, !dbg !3198
  br i1 %6, label %9, label %19, !dbg !3199

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3201
  %11 = xor i1 %8, true, !dbg !3202
  %12 = or i1 %10, %11, !dbg !3202
  %13 = sext i1 %8 to i32, !dbg !3202
  br i1 %12, label %22, label %14, !dbg !3202

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3203
  %16 = load i32, i32* %15, align 4, !dbg !3203, !tbaa !677
  %17 = icmp ne i32 %16, 9, !dbg !3204
  %18 = sext i1 %17 to i32, !dbg !3205
  br label %22, !dbg !3205

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3206

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3208
  store i32 0, i32* %21, align 4, !dbg !3210, !tbaa !677
  br label %22, !dbg !3208

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3211
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3212 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3217, metadata !603), !dbg !3220
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3218, metadata !603), !dbg !3221
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3222
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3219, metadata !603), !dbg !3223
  %3 = icmp eq i8* %2, null, !dbg !3224
  br i1 %3, label %11, label %4, !dbg !3226

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0)) #14, !dbg !3227
  %6 = icmp eq i32 %5, 0, !dbg !3232
  br i1 %6, label %10, label %7, !dbg !3233

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.99, i64 0, i64 0)) #14, !dbg !3234
  %9 = icmp eq i32 %8, 0, !dbg !3235
  br i1 %9, label %10, label %11, !dbg !3236

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3218, metadata !603), !dbg !3221
  br label %11, !dbg !3237

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3238
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3239 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3245, metadata !603), !dbg !3319
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3312, metadata !603), !dbg !3322
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3323
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3243, metadata !603), !dbg !3324
  %4 = icmp eq i8* %3, null, !dbg !3325
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.102, i64 0, i64 0), i8* %3, !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3243, metadata !603), !dbg !3324
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3328, !tbaa !610
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3259, metadata !603) #11, !dbg !3329
  %7 = icmp eq i8* %6, null, !dbg !3330
  br i1 %7, label %8, label %123, !dbg !3331

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.103, i64 0, i64 0)) #11, !dbg !3332
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3260, metadata !603) #11, !dbg !3333
  %10 = icmp eq i8* %9, null, !dbg !3334
  br i1 %10, label %14, label %11, !dbg !3336

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3337, !tbaa !722
  %13 = icmp eq i8 %12, 0, !dbg !3338
  br i1 %13, label %14, label %15, !dbg !3339

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3340

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.104, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3260, metadata !603) #11, !dbg !3333
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3341
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3263, metadata !603) #11, !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3265, metadata !603) #11, !dbg !3343
  %18 = icmp eq i64 %17, 0, !dbg !3344
  br i1 %18, label %24, label %19, !dbg !3345

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3346
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3346
  %22 = load i8, i8* %21, align 1, !dbg !3346, !tbaa !722
  %23 = icmp ne i8 %22, 47, !dbg !3346
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3347
  %27 = add i64 %17, 14, !dbg !3348
  %28 = add i64 %27, %26, !dbg !3349
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !3350
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3262, metadata !603) #11, !dbg !3351
  %30 = icmp eq i8* %29, null, !dbg !3352
  br i1 %30, label %121, label %31, !dbg !3352

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !3353
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3356

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3357, !tbaa !722
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3359
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.105, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3360
  br label %37, !dbg !3361

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3359
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.105, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3360
  br label %37, !dbg !3361

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !3362
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3267, metadata !603) #11, !dbg !3363
  %39 = icmp slt i32 %38, 0, !dbg !3364
  br i1 %39, label %119, label %40, !dbg !3365

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.106, i64 0, i64 0)) #11, !dbg !3366
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3268, metadata !603) #11, !dbg !3367
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3368
  br i1 %42, label %43, label %45, !dbg !3369

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !3370
  br label %119, !dbg !3372

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3309, metadata !603) #11, !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3310, metadata !603) #11, !dbg !3374
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3375

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3376

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3309, metadata !603) #11, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3310, metadata !603) #11, !dbg !3374
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3376
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3377
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3378, metadata !603) #11, !dbg !3383
  %54 = load i8*, i8** %48, align 8, !dbg !3385, !tbaa !3386
  %55 = load i8*, i8** %49, align 8, !dbg !3385, !tbaa !3387
  %56 = icmp ult i8* %54, %55, !dbg !3385
  br i1 %56, label %59, label %57, !dbg !3385, !prof !3388

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3385
  br label %63, !dbg !3385

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3385
  store i8* %60, i8** %48, align 8, !dbg !3385, !tbaa !3386
  %61 = load i8, i8* %54, align 1, !dbg !3385, !tbaa !722
  %62 = zext i8 %61 to i32, !dbg !3385
  br label %63, !dbg !3385

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3385
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3311, metadata !603) #11, !dbg !3389
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3390, !llvm.loop !3391

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3396

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3378, metadata !603) #11, !dbg !3398
  %67 = load i8*, i8** %48, align 8, !dbg !3396, !tbaa !3386
  %68 = load i8*, i8** %49, align 8, !dbg !3396, !tbaa !3387
  %69 = icmp ult i8* %67, %68, !dbg !3396
  br i1 %69, label %72, label %70, !dbg !3396, !prof !3388

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3396
  br label %76, !dbg !3396

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3396
  store i8* %73, i8** %48, align 8, !dbg !3396, !tbaa !3386
  %74 = load i8, i8* %67, align 1, !dbg !3396, !tbaa !722
  %75 = zext i8 %74 to i32, !dbg !3396
  br label %76, !dbg !3396

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3396
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3311, metadata !603) #11, !dbg !3389
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3399, !llvm.loop !3400

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !3403
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.107, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !3404
  %81 = icmp slt i32 %80, 2, !dbg !3406
  br i1 %81, label %112, label %82, !dbg !3407

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3316, metadata !603) #11, !dbg !3409
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3410
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3317, metadata !603) #11, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3318, metadata !603) #11, !dbg !3412
  %85 = icmp eq i64 %51, 0, !dbg !3413
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3415

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3310, metadata !603) #11, !dbg !3374
  %90 = add i64 %87, 2, !dbg !3416
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !3418
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3309, metadata !603) #11, !dbg !3373
  br label %96, !dbg !3419

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3310, metadata !603) #11, !dbg !3374
  %94 = add i64 %93, 1, !dbg !3422
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !3423
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3309, metadata !603) #11, !dbg !3373
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3309, metadata !603) #11, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3310, metadata !603) #11, !dbg !3374
  %99 = icmp eq i8* %98, null, !dbg !3424
  br i1 %99, label %100, label %102, !dbg !3426

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3310, metadata !603) #11, !dbg !3374
  call void @free(i8* %52) #11, !dbg !3427
  br label %112, !dbg !3429

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3430
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3431
  %104 = xor i64 %84, -1, !dbg !3432
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3432
  %106 = xor i64 %83, -1, !dbg !3433
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3434, metadata !603) #11, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3442, metadata !603) #11, !dbg !3443
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !3445
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !3446
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3434, metadata !603) #11, !dbg !3447
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3442, metadata !603) #11, !dbg !3447
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !3449
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !3450
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3309, metadata !603) #11, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3310, metadata !603) #11, !dbg !3374
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3430
  br label %50, !dbg !3451, !llvm.loop !3400

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3430
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !3452
  %116 = icmp eq i64 %113, 0, !dbg !3453
  br i1 %116, label %119, label %117, !dbg !3455

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3456
  store i8 0, i8* %118, align 1, !dbg !3458, !tbaa !722
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.102, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.102, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.102, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3259, metadata !603) #11, !dbg !3329
  call void @free(i8* %29) #11, !dbg !3459
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.102, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3259, metadata !603) #11, !dbg !3329
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3460, !tbaa !610
  br label %123, !dbg !3461

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3259, metadata !603) #11, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3244, metadata !603), !dbg !3462
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3244, metadata !603), !dbg !3462
  %125 = load i8, i8* %124, align 1, !dbg !3463, !tbaa !722
  %126 = icmp eq i8 %125, 0, !dbg !3465
  br i1 %126, label %152, label %127, !dbg !3466

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3467

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3244, metadata !603), !dbg !3462
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3467
  %132 = icmp eq i32 %131, 0, !dbg !3469
  br i1 %132, label %139, label %133, !dbg !3470

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3471
  br i1 %134, label %135, label %143, !dbg !3472

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3473
  %137 = load i8, i8* %136, align 1, !dbg !3473, !tbaa !722
  %138 = icmp eq i8 %137, 0, !dbg !3474
  br i1 %138, label %139, label %143, !dbg !3475

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3476
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3478
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3479
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3243, metadata !603), !dbg !3324
  br label %152, !dbg !3480

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3481
  %145 = add i64 %144, 1, !dbg !3482
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3244, metadata !603), !dbg !3462
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3484
  %148 = add i64 %147, 1, !dbg !3485
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3244, metadata !603), !dbg !3462
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3244, metadata !603), !dbg !3462
  %150 = load i8, i8* %149, align 1, !dbg !3463, !tbaa !722
  %151 = icmp eq i8 %150, 0, !dbg !3465
  br i1 %151, label %152, label %128, !dbg !3466, !llvm.loop !3487

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3243, metadata !603), !dbg !3324
  %154 = load i8, i8* %153, align 1, !dbg !3489, !tbaa !722
  %155 = icmp eq i8 %154, 0, !dbg !3491
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i64 0, i64 0), i8* %153, !dbg !3492
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3243, metadata !603), !dbg !3324
  ret i8* %156, !dbg !3493
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3494 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3539, metadata !603), !dbg !3543
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3540, metadata !603), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3542, metadata !603), !dbg !3545
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3546
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3541, metadata !603), !dbg !3547
  %3 = icmp slt i32 %2, 0, !dbg !3548
  br i1 %3, label %4, label %6, !dbg !3550

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3551
  br label %24, !dbg !3552

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3553
  %8 = icmp eq i32 %7, 0, !dbg !3553
  br i1 %8, label %13, label %9, !dbg !3555

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3556
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3557
  %12 = icmp eq i64 %11, -1, !dbg !3558
  br i1 %12, label %16, label %13, !dbg !3559

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3560
  %15 = icmp eq i32 %14, 0, !dbg !3560
  br i1 %15, label %16, label %18, !dbg !3561

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3540, metadata !603), !dbg !3544
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3562
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3542, metadata !603), !dbg !3545
  br label %24, !dbg !3563

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3564
  %20 = load i32, i32* %19, align 4, !dbg !3564, !tbaa !677
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3540, metadata !603), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3540, metadata !603), !dbg !3544
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3562
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3542, metadata !603), !dbg !3545
  %22 = icmp eq i32 %20, 0, !dbg !3565
  br i1 %22, label %24, label %23, !dbg !3563

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3567, !tbaa !677
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3542, metadata !603), !dbg !3545
  br label %24, !dbg !3569

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3570
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3571 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3616, metadata !603), !dbg !3617
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3618
  br i1 %2, label %6, label %3, !dbg !3620

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3621
  %5 = icmp eq i32 %4, 0, !dbg !3621
  br i1 %5, label %6, label %8, !dbg !3622

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3623
  br label %17, !dbg !3624

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3625, metadata !603) #11, !dbg !3630
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3632
  %10 = load i32, i32* %9, align 8, !dbg !3632, !tbaa !3194
  %11 = and i32 %10, 256, !dbg !3634
  %12 = icmp eq i32 %11, 0, !dbg !3634
  br i1 %12, label %15, label %13, !dbg !3635

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !3636
  br label %15, !dbg !3636

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3637
  br label %17, !dbg !3638

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3639
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3640 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3686, metadata !603), !dbg !3692
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3687, metadata !603), !dbg !3693
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3688, metadata !603), !dbg !3694
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3695
  %5 = load i8*, i8** %4, align 8, !dbg !3695, !tbaa !3387
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3696
  %7 = load i8*, i8** %6, align 8, !dbg !3696, !tbaa !3386
  %8 = icmp eq i8* %5, %7, !dbg !3697
  br i1 %8, label %9, label %28, !dbg !3698

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3699
  %11 = load i8*, i8** %10, align 8, !dbg !3699, !tbaa !3700
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3701
  %13 = load i8*, i8** %12, align 8, !dbg !3701, !tbaa !3702
  %14 = icmp eq i8* %11, %13, !dbg !3703
  br i1 %14, label %15, label %28, !dbg !3704

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3705
  %17 = load i8*, i8** %16, align 8, !dbg !3705, !tbaa !3706
  %18 = icmp eq i8* %17, null, !dbg !3707
  br i1 %18, label %19, label %28, !dbg !3708

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3709
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3689, metadata !603), !dbg !3711
  %22 = icmp eq i64 %21, -1, !dbg !3712
  br i1 %22, label %30, label %23, !dbg !3714

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3715
  %25 = load i32, i32* %24, align 8, !dbg !3716, !tbaa !3194
  %26 = and i32 %25, -17, !dbg !3716
  store i32 %26, i32* %24, align 8, !dbg !3716, !tbaa !3194
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3717
  store i64 %21, i64* %27, align 8, !dbg !3718, !tbaa !3719
  br label %30, !dbg !3720

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3721
  br label %30, !dbg !3722

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3723
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
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!498, !2, !11, !20, !522, !28, !46, !55, !525, !550, !142, !558, !575, !577, !579, !582, !584, !151, !586, !588, !590}
!llvm.ident = !{!592, !592, !592, !592, !592, !592, !592, !592, !592, !592, !592, !592, !592, !592, !592, !592, !592, !592, !592, !592, !592}
!llvm.module.flags = !{!593, !594, !595, !596, !597}

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
!27 = distinct !DIGlobalVariable(name: "long_options", scope: !28, file: !31, line: 33, type: !32, isLocal: true, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !30)
!29 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!26}
!31 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 768, elements: !42)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !35, line: 50, size: 256, elements: !36)
!35 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !{!37, !38, !39, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !35, line: 52, baseType: !6, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !34, file: !35, line: 55, baseType: !25, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !34, file: !35, line: 56, baseType: !40, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !34, file: !35, line: 57, baseType: !25, size: 32, offset: 192)
!42 = !{!43}
!43 = !DISubrange(count: 3)
!44 = !DIGlobalVariableExpression(var: !45)
!45 = distinct !DIGlobalVariable(name: "program_name", scope: !46, file: !52, line: 33, type: !6, isLocal: false, isDefinition: true)
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !48, globals: !51)
!47 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!51 = !{!44}
!52 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!53 = !DIGlobalVariableExpression(var: !54)
!54 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !55, file: !100, line: 77, type: !136, isLocal: false, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, retainedTypes: !92, globals: !97)
!56 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!57 = !{!58, !72, !77}
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !59, line: 32, size: 32, elements: !60)
!59 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!61 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!62 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!63 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!64 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!65 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!66 = !DIEnumerator(name: "c_quoting_style", value: 5)
!67 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!68 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!69 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!70 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!71 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !59, line: 242, size: 32, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!75 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!76 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 46, size: 32, elements: !79)
!78 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!80 = !DIEnumerator(name: "_ISupper", value: 256)
!81 = !DIEnumerator(name: "_ISlower", value: 512)
!82 = !DIEnumerator(name: "_ISalpha", value: 1024)
!83 = !DIEnumerator(name: "_ISdigit", value: 2048)
!84 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!85 = !DIEnumerator(name: "_ISspace", value: 8192)
!86 = !DIEnumerator(name: "_ISprint", value: 16384)
!87 = !DIEnumerator(name: "_ISgraph", value: 32768)
!88 = !DIEnumerator(name: "_ISblank", value: 1)
!89 = !DIEnumerator(name: "_IScntrl", value: 2)
!90 = !DIEnumerator(name: "_ISpunct", value: 4)
!91 = !DIEnumerator(name: "_ISalnum", value: 8)
!92 = !{!25, !93, !94, !50}
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !{!53, !98, !105, !118, !120, !125, !132, !134}
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !55, file: !100, line: 93, type: !101, isLocal: false, isDefinition: true)
!100 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 320, elements: !103)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!103 = !{!104}
!104 = !DISubrange(count: 10)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !55, file: !100, line: 1043, type: !107, isLocal: false, isDefinition: true)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !100, line: 57, size: 448, elements: !108)
!108 = !{!109, !110, !111, !116, !117}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !107, file: !100, line: 60, baseType: !58, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !100, line: 63, baseType: !25, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !107, file: !100, line: 67, baseType: !112, size: 256, offset: 64)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !114)
!113 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!114 = !{!115}
!115 = !DISubrange(count: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !107, file: !100, line: 70, baseType: !6, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !107, file: !100, line: 73, baseType: !6, size: 64, offset: 384)
!118 = !DIGlobalVariableExpression(var: !119)
!119 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !55, file: !100, line: 108, type: !107, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121)
!121 = distinct !DIGlobalVariable(name: "slot0", scope: !55, file: !100, line: 834, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 256)
!125 = !DIGlobalVariableExpression(var: !126)
!126 = distinct !DIGlobalVariable(name: "slotvec", scope: !55, file: !100, line: 837, type: !127, isLocal: true, isDefinition: true)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !100, line: 826, size: 128, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !128, file: !100, line: 828, baseType: !94, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !128, file: !100, line: 829, baseType: !50, size: 64, offset: 64)
!132 = !DIGlobalVariableExpression(var: !133)
!133 = distinct !DIGlobalVariable(name: "nslots", scope: !55, file: !100, line: 835, type: !25, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135)
!135 = distinct !DIGlobalVariable(name: "slotvec0", scope: !55, file: !100, line: 836, type: !128, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 704, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!138 = !{!139}
!139 = !DISubrange(count: 11)
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !142, file: !145, line: 26, type: !146, isLocal: false, isDefinition: true)
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !144)
!143 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!144 = !{!140}
!145 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 47)
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !151, file: !496, line: 120, type: !497, isLocal: true, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !153, retainedTypes: !492, globals: !495)
!152 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!153 = !{!154}
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 41, size: 32, elements: !156)
!155 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!157 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!158 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!159 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!160 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!161 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!162 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!163 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!164 = !DIEnumerator(name: "DAY_1", value: 131079)
!165 = !DIEnumerator(name: "DAY_2", value: 131080)
!166 = !DIEnumerator(name: "DAY_3", value: 131081)
!167 = !DIEnumerator(name: "DAY_4", value: 131082)
!168 = !DIEnumerator(name: "DAY_5", value: 131083)
!169 = !DIEnumerator(name: "DAY_6", value: 131084)
!170 = !DIEnumerator(name: "DAY_7", value: 131085)
!171 = !DIEnumerator(name: "ABMON_1", value: 131086)
!172 = !DIEnumerator(name: "ABMON_2", value: 131087)
!173 = !DIEnumerator(name: "ABMON_3", value: 131088)
!174 = !DIEnumerator(name: "ABMON_4", value: 131089)
!175 = !DIEnumerator(name: "ABMON_5", value: 131090)
!176 = !DIEnumerator(name: "ABMON_6", value: 131091)
!177 = !DIEnumerator(name: "ABMON_7", value: 131092)
!178 = !DIEnumerator(name: "ABMON_8", value: 131093)
!179 = !DIEnumerator(name: "ABMON_9", value: 131094)
!180 = !DIEnumerator(name: "ABMON_10", value: 131095)
!181 = !DIEnumerator(name: "ABMON_11", value: 131096)
!182 = !DIEnumerator(name: "ABMON_12", value: 131097)
!183 = !DIEnumerator(name: "MON_1", value: 131098)
!184 = !DIEnumerator(name: "MON_2", value: 131099)
!185 = !DIEnumerator(name: "MON_3", value: 131100)
!186 = !DIEnumerator(name: "MON_4", value: 131101)
!187 = !DIEnumerator(name: "MON_5", value: 131102)
!188 = !DIEnumerator(name: "MON_6", value: 131103)
!189 = !DIEnumerator(name: "MON_7", value: 131104)
!190 = !DIEnumerator(name: "MON_8", value: 131105)
!191 = !DIEnumerator(name: "MON_9", value: 131106)
!192 = !DIEnumerator(name: "MON_10", value: 131107)
!193 = !DIEnumerator(name: "MON_11", value: 131108)
!194 = !DIEnumerator(name: "MON_12", value: 131109)
!195 = !DIEnumerator(name: "AM_STR", value: 131110)
!196 = !DIEnumerator(name: "PM_STR", value: 131111)
!197 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!198 = !DIEnumerator(name: "D_FMT", value: 131113)
!199 = !DIEnumerator(name: "T_FMT", value: 131114)
!200 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!201 = !DIEnumerator(name: "ERA", value: 131116)
!202 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!203 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!204 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!205 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!206 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!207 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!208 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!209 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!210 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!211 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!212 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!213 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!214 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!215 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!216 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!217 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!218 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!219 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!220 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!221 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!222 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!223 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!224 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!225 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!226 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!227 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!228 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!229 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!230 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!231 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!232 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!233 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!234 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!235 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!236 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!237 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!238 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!239 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!240 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!241 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!242 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!243 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!244 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!245 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!246 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!247 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!248 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!249 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!250 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!251 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!252 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!253 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!254 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!255 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!256 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!257 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!258 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!259 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!260 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!261 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!262 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!263 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!264 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!265 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!266 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!267 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!268 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!269 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!270 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!271 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!272 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!273 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!274 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!275 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!276 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!277 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!278 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!279 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!280 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!281 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!282 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!283 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!284 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!285 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!286 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!287 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!288 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!289 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!290 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!291 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!292 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!293 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!294 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!295 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!296 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!297 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!298 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!299 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!300 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!301 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!302 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!303 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!304 = !DIEnumerator(name: "CODESET", value: 14)
!305 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!306 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!307 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!308 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!309 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!310 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!311 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!312 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!313 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!314 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!315 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!316 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!317 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!318 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!319 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!320 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!321 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!322 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!323 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!324 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!325 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!326 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!327 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!328 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!329 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!330 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!331 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!332 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!333 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!334 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!335 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!336 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!337 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!338 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!339 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!340 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!341 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!342 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!343 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!344 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!345 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!346 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!347 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!348 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!349 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!350 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!351 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!352 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!353 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!354 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!355 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!356 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!357 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!358 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!359 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!360 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!361 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!362 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!363 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!364 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!365 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!366 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!367 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!368 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!369 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!370 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!371 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!372 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!373 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!374 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!375 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!376 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!377 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!378 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!379 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!380 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!381 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!382 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!383 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!384 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!385 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!386 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!387 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!388 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!389 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!390 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!391 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!392 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!393 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!394 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!395 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!396 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!397 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!398 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!399 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!400 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!401 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!402 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!403 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!404 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!405 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!406 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!407 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!408 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!409 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!410 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!411 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!412 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!413 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!414 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!415 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!416 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!417 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!418 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!419 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!420 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!421 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!422 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!423 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!424 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!425 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!426 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!427 = !DIEnumerator(name: "THOUSEP", value: 65537)
!428 = !DIEnumerator(name: "__GROUPING", value: 65538)
!429 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!430 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!431 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!432 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!433 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!434 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!435 = !DIEnumerator(name: "__YESSTR", value: 327682)
!436 = !DIEnumerator(name: "__NOSTR", value: 327683)
!437 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!438 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!439 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!440 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!441 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!442 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!443 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!444 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!445 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!446 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!447 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!448 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!449 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!450 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!451 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!452 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!453 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!454 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!455 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!456 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!457 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!458 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!459 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!460 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!461 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!462 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!463 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!464 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!465 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!466 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!467 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!468 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!469 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!470 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!471 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!472 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!473 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!474 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!475 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!476 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!477 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!478 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!479 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!480 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!481 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!482 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!483 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!484 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!485 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!486 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!487 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!488 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!489 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!490 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!491 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!492 = !{!49, !50, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!495 = !{!149}
!496 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!497 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !500, globals: !501)
!499 = !DIFile(filename: "src/yes.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!500 = !{!6, !49, !50}
!501 = !{!502}
!502 = !DIGlobalVariableExpression(var: !503)
!503 = distinct !DIGlobalVariable(name: "infomap", scope: !504, file: !505, line: 632, type: !519, isLocal: true, isDefinition: true)
!504 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !505, file: !505, line: 630, type: !506, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !508)
!505 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!506 = !DISubroutineType(types: !507)
!507 = !{null, !6}
!508 = !{!509, !510, !511, !518}
!509 = !DILocalVariable(name: "program", arg: 1, scope: !504, file: !505, line: 630, type: !6)
!510 = !DILocalVariable(name: "node", scope: !504, file: !505, line: 642, type: !6)
!511 = !DILocalVariable(name: "map_prog", scope: !504, file: !505, line: 643, type: !512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !504, file: !505, line: 632, size: 128, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !514, file: !505, line: 632, baseType: !6, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !514, file: !505, line: 632, baseType: !6, size: 64, offset: 64)
!518 = !DILocalVariable(name: "lc_messages", scope: !504, file: !505, line: 655, type: !6)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 896, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 7)
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !524)
!523 = !DIFile(filename: "./lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!524 = !{!6, !94}
!525 = distinct !DICompileUnit(language: DW_LANG_C99, file: !526, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !527)
!526 = !DIFile(filename: "./lib/safe-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!527 = !{!528}
!528 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !530, file: !529, line: 62, size: 32, elements: !548)
!529 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!530 = distinct !DISubprogram(name: "safe_write", scope: !529, file: !529, line: 56, type: !531, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !535)
!531 = !DISubroutineType(types: !532)
!532 = !{!94, !25, !533, !94}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!535 = !{!536, !537, !538, !539}
!536 = !DILocalVariable(name: "fd", arg: 1, scope: !530, file: !529, line: 56, type: !25)
!537 = !DILocalVariable(name: "buf", arg: 2, scope: !530, file: !529, line: 56, type: !533)
!538 = !DILocalVariable(name: "count", arg: 3, scope: !530, file: !529, line: 56, type: !94)
!539 = !DILocalVariable(name: "result", scope: !540, file: !529, line: 66, type: !543)
!540 = distinct !DILexicalBlock(scope: !541, file: !529, line: 65, column: 5)
!541 = distinct !DILexicalBlock(scope: !542, file: !529, line: 64, column: 3)
!542 = distinct !DILexicalBlock(scope: !530, file: !529, line: 64, column: 3)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !544, line: 109, baseType: !545)
!544 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !546, line: 181, baseType: !547)
!546 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!548 = !{!549}
!549 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !552, retainedTypes: !557)
!551 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = !{!553}
!553 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !554, line: 41, size: 32, elements: !555)
!554 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!555 = !{!556}
!556 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!557 = !{!49}
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !560, retainedTypes: !574)
!559 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = !{!561}
!561 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !563, file: !562, line: 192, size: 32, elements: !572)
!562 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = distinct !DISubprogram(name: "x2nrealloc", scope: !562, file: !562, line: 180, type: !564, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !567)
!564 = !DISubroutineType(types: !565)
!565 = !{!49, !49, !566, !94}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!567 = !{!568, !569, !570, !571}
!568 = !DILocalVariable(name: "p", arg: 1, scope: !563, file: !562, line: 180, type: !49)
!569 = !DILocalVariable(name: "pn", arg: 2, scope: !563, file: !562, line: 180, type: !566)
!570 = !DILocalVariable(name: "s", arg: 3, scope: !563, file: !562, line: 180, type: !94)
!571 = !DILocalVariable(name: "n", scope: !563, file: !562, line: 182, type: !94)
!572 = !{!573}
!573 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!574 = !{!94, !50, !49}
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!576 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !557)
!578 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !581)
!580 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = !{!94}
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!583 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!585 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!587 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !557)
!589 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !557)
!591 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!593 = !{i32 2, !"Dwarf Version", i32 4}
!594 = !{i32 2, !"Debug Info Version", i32 3}
!595 = !{i32 1, !"wchar_size", i32 4}
!596 = !{i32 7, !"PIC Level", i32 2}
!597 = !{i32 7, !"PIE Level", i32 2}
!598 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 36, type: !599, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !25}
!601 = !{!602}
!602 = !DILocalVariable(name: "status", arg: 1, scope: !598, file: !499, line: 36, type: !25)
!603 = !DIExpression()
!604 = !DILocation(line: 36, column: 12, scope: !598)
!605 = !DILocation(line: 38, column: 14, scope: !606)
!606 = distinct !DILexicalBlock(scope: !598, file: !499, line: 38, column: 7)
!607 = !DILocation(line: 38, column: 7, scope: !598)
!608 = !DILocation(line: 39, column: 5, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !499, line: 39, column: 5)
!610 = !{!611, !611, i64 0}
!611 = !{!"any pointer", !612, i64 0}
!612 = !{!"omnipotent char", !613, i64 0}
!613 = !{!"Simple C/C++ TBAA"}
!614 = !DILocation(line: 42, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !606, file: !499, line: 41, column: 5)
!616 = !DILocation(line: 48, column: 7, scope: !615)
!617 = !DILocation(line: 52, column: 7, scope: !615)
!618 = !DILocation(line: 53, column: 7, scope: !615)
!619 = !DILocation(line: 642, column: 15, scope: !504, inlinedAt: !620)
!620 = distinct !DILocation(line: 54, column: 7, scope: !615)
!621 = !DILocation(line: 651, column: 3, scope: !504, inlinedAt: !620)
!622 = !DILocation(line: 655, column: 29, scope: !504, inlinedAt: !620)
!623 = !DILocation(line: 655, column: 15, scope: !504, inlinedAt: !620)
!624 = !DILocation(line: 656, column: 7, scope: !625, inlinedAt: !620)
!625 = distinct !DILexicalBlock(scope: !504, file: !505, line: 656, column: 7)
!626 = !DILocation(line: 656, column: 19, scope: !625, inlinedAt: !620)
!627 = !DILocation(line: 656, column: 22, scope: !625, inlinedAt: !620)
!628 = !DILocation(line: 656, column: 7, scope: !504, inlinedAt: !620)
!629 = !DILocation(line: 662, column: 7, scope: !630, inlinedAt: !620)
!630 = distinct !DILexicalBlock(scope: !625, file: !505, line: 657, column: 5)
!631 = !DILocation(line: 664, column: 5, scope: !630, inlinedAt: !620)
!632 = !DILocation(line: 665, column: 3, scope: !504, inlinedAt: !620)
!633 = !DILocation(line: 667, column: 3, scope: !504, inlinedAt: !620)
!634 = !DILocation(line: 56, column: 3, scope: !598)
!635 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 60, type: !636, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !639)
!636 = !DISubroutineType(types: !637)
!637 = !{!25, !25, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !648, !651, !652, !653, !655, !658, !659}
!640 = !DILocalVariable(name: "argc", arg: 1, scope: !635, file: !499, line: 60, type: !25)
!641 = !DILocalVariable(name: "argv", arg: 2, scope: !635, file: !499, line: 60, type: !638)
!642 = !DILocalVariable(name: "operands", scope: !635, file: !499, line: 75, type: !638)
!643 = !DILocalVariable(name: "operand_lim", scope: !635, file: !499, line: 76, type: !638)
!644 = !DILocalVariable(name: "bufalloc", scope: !635, file: !499, line: 82, type: !94)
!645 = !DILocalVariable(name: "reuse_operand_strings", scope: !635, file: !499, line: 83, type: !17)
!646 = !DILocalVariable(name: "operandp", scope: !647, file: !499, line: 84, type: !638)
!647 = distinct !DILexicalBlock(scope: !635, file: !499, line: 84, column: 3)
!648 = !DILocalVariable(name: "operand_len", scope: !649, file: !499, line: 86, type: !94)
!649 = distinct !DILexicalBlock(scope: !650, file: !499, line: 85, column: 5)
!650 = distinct !DILexicalBlock(scope: !647, file: !499, line: 84, column: 3)
!651 = !DILocalVariable(name: "buf", scope: !635, file: !499, line: 102, type: !50)
!652 = !DILocalVariable(name: "bufused", scope: !635, file: !499, line: 103, type: !94)
!653 = !DILocalVariable(name: "operandp", scope: !654, file: !499, line: 104, type: !638)
!654 = distinct !DILexicalBlock(scope: !635, file: !499, line: 104, column: 3)
!655 = !DILocalVariable(name: "operand_len", scope: !656, file: !499, line: 106, type: !94)
!656 = distinct !DILexicalBlock(scope: !657, file: !499, line: 105, column: 5)
!657 = distinct !DILexicalBlock(scope: !654, file: !499, line: 104, column: 3)
!658 = !DILocalVariable(name: "copysize", scope: !635, file: !499, line: 116, type: !94)
!659 = !DILocalVariable(name: "copies", scope: !660, file: !499, line: 117, type: !94)
!660 = distinct !DILexicalBlock(scope: !635, file: !499, line: 117, column: 3)
!661 = !DILocation(line: 60, column: 11, scope: !635)
!662 = !DILocation(line: 60, column: 24, scope: !635)
!663 = !DILocation(line: 63, column: 21, scope: !635)
!664 = !DILocation(line: 63, column: 3, scope: !635)
!665 = !DILocation(line: 64, column: 3, scope: !635)
!666 = !DILocation(line: 65, column: 3, scope: !635)
!667 = !DILocation(line: 66, column: 3, scope: !635)
!668 = !DILocation(line: 68, column: 3, scope: !635)
!669 = !DILocation(line: 70, column: 63, scope: !635)
!670 = !DILocation(line: 70, column: 3, scope: !635)
!671 = !DILocation(line: 72, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !635, file: !499, line: 72, column: 7)
!673 = !DILocation(line: 72, column: 49, scope: !672)
!674 = !DILocation(line: 72, column: 7, scope: !635)
!675 = !DILocation(line: 73, column: 5, scope: !672)
!676 = !DILocation(line: 75, column: 28, scope: !635)
!677 = !{!678, !678, i64 0}
!678 = !{!"int", !612, i64 0}
!679 = !DILocation(line: 75, column: 26, scope: !635)
!680 = !DILocation(line: 75, column: 10, scope: !635)
!681 = !DILocation(line: 76, column: 29, scope: !635)
!682 = !DILocation(line: 76, column: 10, scope: !635)
!683 = !DILocation(line: 77, column: 14, scope: !684)
!684 = distinct !DILexicalBlock(scope: !635, file: !499, line: 77, column: 7)
!685 = !DILocation(line: 77, column: 7, scope: !635)
!686 = !DILocation(line: 78, column: 17, scope: !684)
!687 = !DILocation(line: 78, column: 20, scope: !684)
!688 = !DILocation(line: 78, column: 5, scope: !684)
!689 = !DILocation(line: 82, column: 10, scope: !635)
!690 = !DILocation(line: 83, column: 8, scope: !635)
!691 = !DILocation(line: 84, column: 15, scope: !647)
!692 = !DILocation(line: 84, column: 45, scope: !650)
!693 = !DILocation(line: 84, column: 3, scope: !647)
!694 = !DILocation(line: 86, column: 36, scope: !649)
!695 = !DILocation(line: 86, column: 28, scope: !649)
!696 = !DILocation(line: 86, column: 14, scope: !649)
!697 = !DILocation(line: 87, column: 16, scope: !649)
!698 = !DILocation(line: 88, column: 20, scope: !699)
!699 = distinct !DILexicalBlock(scope: !649, file: !499, line: 88, column: 11)
!700 = !DILocation(line: 88, column: 24, scope: !699)
!701 = !DILocation(line: 89, column: 11, scope: !699)
!702 = !DILocation(line: 89, column: 24, scope: !699)
!703 = !DILocation(line: 94, column: 16, scope: !704)
!704 = distinct !DILexicalBlock(scope: !635, file: !499, line: 94, column: 7)
!705 = !DILocation(line: 94, column: 7, scope: !635)
!706 = !DILocation(line: 102, column: 15, scope: !635)
!707 = !DILocation(line: 89, column: 38, scope: !699)
!708 = !DILocation(line: 89, column: 45, scope: !699)
!709 = !DILocation(line: 89, column: 42, scope: !699)
!710 = !DILocation(line: 88, column: 11, scope: !649)
!711 = !DILocation(line: 87, column: 31, scope: !649)
!712 = !DILocation(line: 102, column: 39, scope: !635)
!713 = !DILocation(line: 102, column: 51, scope: !635)
!714 = !DILocation(line: 102, column: 9, scope: !635)
!715 = !DILocation(line: 103, column: 10, scope: !635)
!716 = !DILocation(line: 104, column: 15, scope: !654)
!717 = !DILocation(line: 104, column: 3, scope: !654)
!718 = !DILocation(line: 106, column: 36, scope: !656)
!719 = !DILocation(line: 112, column: 15, scope: !635)
!720 = !DILocation(line: 112, column: 3, scope: !635)
!721 = !DILocation(line: 112, column: 20, scope: !635)
!722 = !{!612, !612, i64 0}
!723 = !DILocation(line: 116, column: 10, scope: !635)
!724 = !DILocation(line: 117, column: 33, scope: !660)
!725 = !DILocation(line: 117, column: 15, scope: !660)
!726 = !DILocation(line: 117, column: 45, scope: !727)
!727 = distinct !DILexicalBlock(scope: !660, file: !499, line: 117, column: 3)
!728 = !DILocation(line: 117, column: 3, scope: !660)
!729 = !DILocation(line: 119, column: 19, scope: !730)
!730 = distinct !DILexicalBlock(scope: !727, file: !499, line: 118, column: 5)
!731 = !DILocation(line: 119, column: 7, scope: !730)
!732 = !DILocation(line: 120, column: 15, scope: !730)
!733 = distinct !{!733, !734}
!734 = !{!"llvm.loop.unroll.disable"}
!735 = !DILocation(line: 106, column: 28, scope: !656)
!736 = !DILocation(line: 106, column: 14, scope: !656)
!737 = !DILocation(line: 107, column: 11, scope: !656)
!738 = !DILocation(line: 108, column: 21, scope: !739)
!739 = distinct !DILexicalBlock(scope: !656, file: !499, line: 107, column: 11)
!740 = !DILocation(line: 108, column: 9, scope: !739)
!741 = !DILocation(line: 109, column: 15, scope: !656)
!742 = !DILocation(line: 110, column: 18, scope: !656)
!743 = !DILocation(line: 110, column: 7, scope: !656)
!744 = !DILocation(line: 110, column: 22, scope: !656)
!745 = !DILocation(line: 104, column: 68, scope: !657)
!746 = !DILocation(line: 104, column: 45, scope: !657)
!747 = distinct !{!747, !717, !748}
!748 = !DILocation(line: 111, column: 5, scope: !654)
!749 = !DILocation(line: 124, column: 3, scope: !635)
!750 = distinct !{!750, !728, !751}
!751 = !DILocation(line: 121, column: 5, scope: !660)
!752 = !DILocation(line: 124, column: 10, scope: !635)
!753 = !DILocation(line: 124, column: 51, scope: !635)
!754 = distinct !{!754, !749, !755}
!755 = !DILocation(line: 125, column: 5, scope: !635)
!756 = !DILocation(line: 126, column: 13, scope: !635)
!757 = !DILocation(line: 126, column: 20, scope: !635)
!758 = !DILocation(line: 126, column: 3, scope: !635)
!759 = !DILocation(line: 128, column: 1, scope: !635)
!760 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !506, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !761)
!761 = !{!762}
!762 = !DILocalVariable(name: "file", arg: 1, scope: !760, file: !16, line: 41, type: !6)
!763 = !DILocation(line: 41, column: 41, scope: !760)
!764 = !DILocation(line: 43, column: 13, scope: !760)
!765 = !DILocation(line: 44, column: 1, scope: !760)
!766 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !767, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !17}
!769 = !{!770}
!770 = !DILocalVariable(name: "ignore", arg: 1, scope: !766, file: !16, line: 78, type: !17)
!771 = !DILocation(line: 78, column: 37, scope: !766)
!772 = !DILocation(line: 80, column: 16, scope: !766)
!773 = !{!774, !774, i64 0}
!774 = !{!"_Bool", !612, i64 0}
!775 = !DILocation(line: 81, column: 1, scope: !766)
!776 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !777, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{null}
!779 = !{!780}
!780 = !DILocalVariable(name: "write_error", scope: !781, file: !16, line: 112, type: !6)
!781 = distinct !DILexicalBlock(scope: !782, file: !16, line: 111, column: 5)
!782 = distinct !DILexicalBlock(scope: !776, file: !16, line: 109, column: 7)
!783 = !DILocation(line: 109, column: 21, scope: !782)
!784 = !DILocation(line: 109, column: 7, scope: !782)
!785 = !DILocation(line: 109, column: 29, scope: !782)
!786 = !DILocation(line: 110, column: 7, scope: !782)
!787 = !DILocation(line: 110, column: 12, scope: !782)
!788 = !{i8 0, i8 2}
!789 = !DILocation(line: 114, column: 19, scope: !790)
!790 = distinct !DILexicalBlock(scope: !781, file: !16, line: 113, column: 11)
!791 = !DILocation(line: 110, column: 25, scope: !782)
!792 = !DILocation(line: 110, column: 28, scope: !782)
!793 = !DILocation(line: 110, column: 34, scope: !782)
!794 = !DILocation(line: 109, column: 7, scope: !776)
!795 = !DILocation(line: 112, column: 33, scope: !781)
!796 = !DILocation(line: 112, column: 19, scope: !781)
!797 = !DILocation(line: 113, column: 11, scope: !790)
!798 = !DILocation(line: 113, column: 11, scope: !781)
!799 = !DILocation(line: 114, column: 36, scope: !790)
!800 = !DILocation(line: 114, column: 9, scope: !790)
!801 = !DILocation(line: 117, column: 9, scope: !790)
!802 = !DILocation(line: 119, column: 14, scope: !781)
!803 = !DILocation(line: 119, column: 7, scope: !781)
!804 = !DILocation(line: 122, column: 22, scope: !805)
!805 = distinct !DILexicalBlock(scope: !776, file: !16, line: 122, column: 8)
!806 = !DILocation(line: 122, column: 8, scope: !805)
!807 = !DILocation(line: 122, column: 30, scope: !805)
!808 = !DILocation(line: 122, column: 8, scope: !776)
!809 = !DILocation(line: 123, column: 13, scope: !805)
!810 = !DILocation(line: 123, column: 6, scope: !805)
!811 = !DILocation(line: 124, column: 1, scope: !776)
!812 = distinct !DISubprogram(name: "full_write", scope: !813, file: !813, line: 58, type: !531, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !814)
!813 = !DIFile(filename: "lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!814 = !{!815, !816, !817, !818, !819, !820}
!815 = !DILocalVariable(name: "fd", arg: 1, scope: !812, file: !813, line: 58, type: !25)
!816 = !DILocalVariable(name: "buf", arg: 2, scope: !812, file: !813, line: 58, type: !533)
!817 = !DILocalVariable(name: "count", arg: 3, scope: !812, file: !813, line: 58, type: !94)
!818 = !DILocalVariable(name: "total", scope: !812, file: !813, line: 60, type: !94)
!819 = !DILocalVariable(name: "ptr", scope: !812, file: !813, line: 61, type: !6)
!820 = !DILocalVariable(name: "n_rw", scope: !821, file: !813, line: 65, type: !94)
!821 = distinct !DILexicalBlock(scope: !812, file: !813, line: 64, column: 5)
!822 = !DILocation(line: 58, column: 14, scope: !812)
!823 = !DILocation(line: 58, column: 30, scope: !812)
!824 = !DILocation(line: 58, column: 42, scope: !812)
!825 = !DILocation(line: 60, column: 10, scope: !812)
!826 = !DILocation(line: 61, column: 15, scope: !812)
!827 = !DILocation(line: 63, column: 16, scope: !812)
!828 = !DILocation(line: 63, column: 3, scope: !812)
!829 = !DILocation(line: 65, column: 21, scope: !821)
!830 = !DILocation(line: 65, column: 14, scope: !821)
!831 = !DILocation(line: 66, column: 11, scope: !821)
!832 = !DILocation(line: 70, column: 11, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !813, line: 69, column: 9)
!834 = distinct !DILexicalBlock(scope: !821, file: !813, line: 68, column: 11)
!835 = !DILocation(line: 70, column: 17, scope: !833)
!836 = !DILocation(line: 71, column: 11, scope: !833)
!837 = !DILocation(line: 73, column: 13, scope: !821)
!838 = !DILocation(line: 74, column: 11, scope: !821)
!839 = !DILocation(line: 75, column: 13, scope: !821)
!840 = distinct !{!840, !828, !841}
!841 = !DILocation(line: 76, column: 5, scope: !812)
!842 = !DILocation(line: 78, column: 3, scope: !812)
!843 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !844, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !847)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !25, !638, !6, !6, !6, !846, null}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!847 = !{!848, !849, !850, !851, !852, !853, !854, !855, !856}
!848 = !DILocalVariable(name: "argc", arg: 1, scope: !843, file: !31, line: 44, type: !25)
!849 = !DILocalVariable(name: "argv", arg: 2, scope: !843, file: !31, line: 45, type: !638)
!850 = !DILocalVariable(name: "command_name", arg: 3, scope: !843, file: !31, line: 46, type: !6)
!851 = !DILocalVariable(name: "package", arg: 4, scope: !843, file: !31, line: 47, type: !6)
!852 = !DILocalVariable(name: "version", arg: 5, scope: !843, file: !31, line: 48, type: !6)
!853 = !DILocalVariable(name: "usage_func", arg: 6, scope: !843, file: !31, line: 49, type: !846)
!854 = !DILocalVariable(name: "c", scope: !843, file: !31, line: 52, type: !25)
!855 = !DILocalVariable(name: "saved_opterr", scope: !843, file: !31, line: 53, type: !25)
!856 = !DILocalVariable(name: "authors", scope: !857, file: !31, line: 71, type: !861)
!857 = distinct !DILexicalBlock(scope: !858, file: !31, line: 70, column: 11)
!858 = distinct !DILexicalBlock(scope: !859, file: !31, line: 64, column: 9)
!859 = distinct !DILexicalBlock(scope: !860, file: !31, line: 62, column: 5)
!860 = distinct !DILexicalBlock(scope: !843, file: !31, line: 60, column: 7)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !862, line: 46, baseType: !863)
!862 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !864, line: 48, baseType: !865)
!864 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !866)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !867, size: 192, elements: !873)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !868)
!868 = !{!869, !870, !871, !872}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !867, file: !29, line: 71, baseType: !113, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !867, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !867, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !867, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!873 = !{!874}
!874 = !DISubrange(count: 1)
!875 = !DILocation(line: 44, column: 25, scope: !843)
!876 = !DILocation(line: 45, column: 28, scope: !843)
!877 = !DILocation(line: 46, column: 33, scope: !843)
!878 = !DILocation(line: 47, column: 33, scope: !843)
!879 = !DILocation(line: 48, column: 33, scope: !843)
!880 = !DILocation(line: 49, column: 28, scope: !843)
!881 = !DILocation(line: 55, column: 18, scope: !843)
!882 = !DILocation(line: 53, column: 7, scope: !843)
!883 = !DILocation(line: 58, column: 10, scope: !843)
!884 = !DILocation(line: 60, column: 12, scope: !860)
!885 = !DILocation(line: 61, column: 7, scope: !860)
!886 = !DILocation(line: 61, column: 15, scope: !860)
!887 = !DILocation(line: 52, column: 7, scope: !843)
!888 = !DILocation(line: 60, column: 7, scope: !843)
!889 = !DILocation(line: 66, column: 11, scope: !858)
!890 = !DILocation(line: 67, column: 11, scope: !858)
!891 = !DILocation(line: 71, column: 13, scope: !857)
!892 = !DILocation(line: 71, column: 21, scope: !857)
!893 = !DILocation(line: 72, column: 13, scope: !857)
!894 = !DILocation(line: 73, column: 29, scope: !857)
!895 = !DILocation(line: 73, column: 13, scope: !857)
!896 = !DILocation(line: 74, column: 13, scope: !857)
!897 = !DILocation(line: 84, column: 10, scope: !843)
!898 = !DILocation(line: 88, column: 10, scope: !843)
!899 = !DILocation(line: 89, column: 1, scope: !843)
!900 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !506, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !901)
!901 = !{!902, !903, !904}
!902 = !DILocalVariable(name: "argv0", arg: 1, scope: !900, file: !52, line: 39, type: !6)
!903 = !DILocalVariable(name: "slash", scope: !900, file: !52, line: 46, type: !6)
!904 = !DILocalVariable(name: "base", scope: !900, file: !52, line: 47, type: !6)
!905 = !DILocation(line: 39, column: 31, scope: !900)
!906 = !DILocation(line: 51, column: 13, scope: !907)
!907 = distinct !DILexicalBlock(scope: !900, file: !52, line: 51, column: 7)
!908 = !DILocation(line: 51, column: 7, scope: !900)
!909 = !DILocation(line: 55, column: 14, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !52, line: 52, column: 5)
!911 = !DILocation(line: 54, column: 7, scope: !910)
!912 = !DILocation(line: 56, column: 7, scope: !910)
!913 = !DILocation(line: 59, column: 11, scope: !900)
!914 = !DILocation(line: 46, column: 15, scope: !900)
!915 = !DILocation(line: 60, column: 17, scope: !900)
!916 = !DILocation(line: 60, column: 33, scope: !900)
!917 = !DILocation(line: 60, column: 11, scope: !900)
!918 = !DILocation(line: 47, column: 15, scope: !900)
!919 = !DILocation(line: 61, column: 12, scope: !920)
!920 = distinct !DILexicalBlock(scope: !900, file: !52, line: 61, column: 7)
!921 = !DILocation(line: 61, column: 20, scope: !920)
!922 = !DILocation(line: 61, column: 25, scope: !920)
!923 = !DILocation(line: 61, column: 42, scope: !920)
!924 = !DILocation(line: 61, column: 28, scope: !920)
!925 = !DILocation(line: 61, column: 61, scope: !920)
!926 = !DILocation(line: 61, column: 7, scope: !900)
!927 = !DILocation(line: 64, column: 11, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !52, line: 64, column: 11)
!929 = distinct !DILexicalBlock(scope: !920, file: !52, line: 62, column: 5)
!930 = !DILocation(line: 64, column: 36, scope: !928)
!931 = !DILocation(line: 64, column: 11, scope: !929)
!932 = !DILocation(line: 66, column: 24, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !52, line: 65, column: 9)
!934 = !DILocation(line: 70, column: 41, scope: !933)
!935 = !DILocation(line: 72, column: 9, scope: !933)
!936 = !DILocation(line: 84, column: 16, scope: !900)
!937 = !DILocation(line: 90, column: 27, scope: !900)
!938 = !DILocation(line: 92, column: 1, scope: !900)
!939 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !940, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !943)
!940 = !DISubroutineType(types: !941)
!941 = !{!942, !942}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!943 = !{!944, !945, !946}
!944 = !DILocalVariable(name: "o", arg: 1, scope: !939, file: !100, line: 114, type: !942)
!945 = !DILocalVariable(name: "e", scope: !939, file: !100, line: 116, type: !25)
!946 = !DILocalVariable(name: "p", scope: !939, file: !100, line: 117, type: !942)
!947 = !DILocation(line: 114, column: 48, scope: !939)
!948 = !DILocation(line: 116, column: 11, scope: !939)
!949 = !DILocation(line: 116, column: 7, scope: !939)
!950 = !DILocation(line: 117, column: 40, scope: !939)
!951 = !DILocation(line: 117, column: 31, scope: !939)
!952 = !DILocation(line: 117, column: 27, scope: !939)
!953 = !DILocation(line: 119, column: 9, scope: !939)
!954 = !DILocation(line: 120, column: 3, scope: !939)
!955 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !956, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !960)
!956 = !DISubroutineType(types: !957)
!957 = !{!58, !958}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!960 = !{!961}
!961 = !DILocalVariable(name: "o", arg: 1, scope: !955, file: !100, line: 125, type: !958)
!962 = !DILocation(line: 125, column: 50, scope: !955)
!963 = !DILocation(line: 127, column: 11, scope: !955)
!964 = !DILocation(line: 127, column: 46, scope: !955)
!965 = !{!966, !612, i64 0}
!966 = !{!"quoting_options", !612, i64 0, !678, i64 4, !612, i64 8, !611, i64 40, !611, i64 48}
!967 = !DILocation(line: 127, column: 3, scope: !955)
!968 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !969, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !971)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !942, !58}
!971 = !{!972, !973}
!972 = !DILocalVariable(name: "o", arg: 1, scope: !968, file: !100, line: 133, type: !942)
!973 = !DILocalVariable(name: "s", arg: 2, scope: !968, file: !100, line: 133, type: !58)
!974 = !DILocation(line: 133, column: 44, scope: !968)
!975 = !DILocation(line: 133, column: 66, scope: !968)
!976 = !DILocation(line: 135, column: 4, scope: !968)
!977 = !DILocation(line: 135, column: 39, scope: !968)
!978 = !DILocation(line: 135, column: 45, scope: !968)
!979 = !DILocation(line: 136, column: 1, scope: !968)
!980 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !981, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{!25, !942, !8, !25}
!983 = !{!984, !985, !986, !987, !988, !990, !991}
!984 = !DILocalVariable(name: "o", arg: 1, scope: !980, file: !100, line: 144, type: !942)
!985 = !DILocalVariable(name: "c", arg: 2, scope: !980, file: !100, line: 144, type: !8)
!986 = !DILocalVariable(name: "i", arg: 3, scope: !980, file: !100, line: 144, type: !25)
!987 = !DILocalVariable(name: "uc", scope: !980, file: !100, line: 146, type: !494)
!988 = !DILocalVariable(name: "p", scope: !980, file: !100, line: 147, type: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!990 = !DILocalVariable(name: "shift", scope: !980, file: !100, line: 149, type: !25)
!991 = !DILocalVariable(name: "r", scope: !980, file: !100, line: 150, type: !25)
!992 = !DILocation(line: 144, column: 43, scope: !980)
!993 = !DILocation(line: 144, column: 51, scope: !980)
!994 = !DILocation(line: 144, column: 58, scope: !980)
!995 = !DILocation(line: 146, column: 17, scope: !980)
!996 = !DILocation(line: 148, column: 6, scope: !980)
!997 = !DILocation(line: 148, column: 62, scope: !980)
!998 = !DILocation(line: 148, column: 57, scope: !980)
!999 = !DILocation(line: 147, column: 17, scope: !980)
!1000 = !DILocation(line: 149, column: 18, scope: !980)
!1001 = !DILocation(line: 149, column: 15, scope: !980)
!1002 = !DILocation(line: 149, column: 7, scope: !980)
!1003 = !DILocation(line: 150, column: 12, scope: !980)
!1004 = !DILocation(line: 150, column: 15, scope: !980)
!1005 = !DILocation(line: 150, column: 25, scope: !980)
!1006 = !DILocation(line: 150, column: 7, scope: !980)
!1007 = !DILocation(line: 151, column: 13, scope: !980)
!1008 = !DILocation(line: 151, column: 18, scope: !980)
!1009 = !DILocation(line: 151, column: 23, scope: !980)
!1010 = !DILocation(line: 151, column: 6, scope: !980)
!1011 = !DILocation(line: 152, column: 3, scope: !980)
!1012 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !1013, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!25, !942, !25}
!1015 = !{!1016, !1017, !1018}
!1016 = !DILocalVariable(name: "o", arg: 1, scope: !1012, file: !100, line: 160, type: !942)
!1017 = !DILocalVariable(name: "i", arg: 2, scope: !1012, file: !100, line: 160, type: !25)
!1018 = !DILocalVariable(name: "r", scope: !1012, file: !100, line: 162, type: !25)
!1019 = !DILocation(line: 160, column: 44, scope: !1012)
!1020 = !DILocation(line: 160, column: 51, scope: !1012)
!1021 = !DILocation(line: 163, column: 8, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 163, column: 7)
!1023 = !DILocation(line: 163, column: 7, scope: !1012)
!1024 = !DILocation(line: 165, column: 10, scope: !1012)
!1025 = !{!966, !678, i64 4}
!1026 = !DILocation(line: 162, column: 7, scope: !1012)
!1027 = !DILocation(line: 166, column: 12, scope: !1012)
!1028 = !DILocation(line: 167, column: 3, scope: !1012)
!1029 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !1030, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !942, !6, !6}
!1032 = !{!1033, !1034, !1035}
!1033 = !DILocalVariable(name: "o", arg: 1, scope: !1029, file: !100, line: 171, type: !942)
!1034 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1029, file: !100, line: 172, type: !6)
!1035 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1029, file: !100, line: 172, type: !6)
!1036 = !DILocation(line: 171, column: 45, scope: !1029)
!1037 = !DILocation(line: 172, column: 33, scope: !1029)
!1038 = !DILocation(line: 172, column: 57, scope: !1029)
!1039 = !DILocation(line: 174, column: 8, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1029, file: !100, line: 174, column: 7)
!1041 = !DILocation(line: 174, column: 7, scope: !1029)
!1042 = !DILocation(line: 176, column: 6, scope: !1029)
!1043 = !DILocation(line: 176, column: 12, scope: !1029)
!1044 = !DILocation(line: 177, column: 8, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1029, file: !100, line: 177, column: 7)
!1046 = !DILocation(line: 177, column: 23, scope: !1045)
!1047 = !DILocation(line: 177, column: 19, scope: !1045)
!1048 = !DILocation(line: 178, column: 5, scope: !1045)
!1049 = !DILocation(line: 179, column: 6, scope: !1029)
!1050 = !DILocation(line: 179, column: 17, scope: !1029)
!1051 = !{!966, !611, i64 40}
!1052 = !DILocation(line: 180, column: 6, scope: !1029)
!1053 = !DILocation(line: 180, column: 18, scope: !1029)
!1054 = !{!966, !611, i64 48}
!1055 = !DILocation(line: 181, column: 1, scope: !1029)
!1056 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !1057, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!94, !50, !94, !6, !94, !958}
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067}
!1060 = !DILocalVariable(name: "buffer", arg: 1, scope: !1056, file: !100, line: 776, type: !50)
!1061 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1056, file: !100, line: 776, type: !94)
!1062 = !DILocalVariable(name: "arg", arg: 3, scope: !1056, file: !100, line: 777, type: !6)
!1063 = !DILocalVariable(name: "argsize", arg: 4, scope: !1056, file: !100, line: 777, type: !94)
!1064 = !DILocalVariable(name: "o", arg: 5, scope: !1056, file: !100, line: 778, type: !958)
!1065 = !DILocalVariable(name: "p", scope: !1056, file: !100, line: 780, type: !958)
!1066 = !DILocalVariable(name: "e", scope: !1056, file: !100, line: 781, type: !25)
!1067 = !DILocalVariable(name: "r", scope: !1056, file: !100, line: 782, type: !94)
!1068 = !DILocation(line: 776, column: 24, scope: !1056)
!1069 = !DILocation(line: 776, column: 39, scope: !1056)
!1070 = !DILocation(line: 777, column: 30, scope: !1056)
!1071 = !DILocation(line: 777, column: 42, scope: !1056)
!1072 = !DILocation(line: 778, column: 48, scope: !1056)
!1073 = !DILocation(line: 780, column: 37, scope: !1056)
!1074 = !DILocation(line: 780, column: 33, scope: !1056)
!1075 = !DILocation(line: 781, column: 11, scope: !1056)
!1076 = !DILocation(line: 781, column: 7, scope: !1056)
!1077 = !DILocation(line: 783, column: 43, scope: !1056)
!1078 = !DILocation(line: 783, column: 53, scope: !1056)
!1079 = !DILocation(line: 783, column: 60, scope: !1056)
!1080 = !DILocation(line: 784, column: 43, scope: !1056)
!1081 = !DILocation(line: 784, column: 58, scope: !1056)
!1082 = !DILocation(line: 782, column: 14, scope: !1056)
!1083 = !DILocation(line: 782, column: 10, scope: !1056)
!1084 = !DILocation(line: 785, column: 9, scope: !1056)
!1085 = !DILocation(line: 786, column: 3, scope: !1056)
!1086 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !1087, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1091)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!94, !50, !94, !6, !94, !58, !25, !1089, !6, !6}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1116, !1117, !1118, !1119, !1120, !1123, !1124, !1142, !1145, !1146, !1153}
!1092 = !DILocalVariable(name: "buffer", arg: 1, scope: !1086, file: !100, line: 248, type: !50)
!1093 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1086, file: !100, line: 248, type: !94)
!1094 = !DILocalVariable(name: "arg", arg: 3, scope: !1086, file: !100, line: 249, type: !6)
!1095 = !DILocalVariable(name: "argsize", arg: 4, scope: !1086, file: !100, line: 249, type: !94)
!1096 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1086, file: !100, line: 250, type: !58)
!1097 = !DILocalVariable(name: "flags", arg: 6, scope: !1086, file: !100, line: 250, type: !25)
!1098 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1086, file: !100, line: 251, type: !1089)
!1099 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1086, file: !100, line: 252, type: !6)
!1100 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1086, file: !100, line: 253, type: !6)
!1101 = !DILocalVariable(name: "i", scope: !1086, file: !100, line: 255, type: !94)
!1102 = !DILocalVariable(name: "len", scope: !1086, file: !100, line: 256, type: !94)
!1103 = !DILocalVariable(name: "orig_buffersize", scope: !1086, file: !100, line: 257, type: !94)
!1104 = !DILocalVariable(name: "quote_string", scope: !1086, file: !100, line: 258, type: !6)
!1105 = !DILocalVariable(name: "quote_string_len", scope: !1086, file: !100, line: 259, type: !94)
!1106 = !DILocalVariable(name: "backslash_escapes", scope: !1086, file: !100, line: 260, type: !17)
!1107 = !DILocalVariable(name: "unibyte_locale", scope: !1086, file: !100, line: 261, type: !17)
!1108 = !DILocalVariable(name: "elide_outer_quotes", scope: !1086, file: !100, line: 262, type: !17)
!1109 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1086, file: !100, line: 263, type: !17)
!1110 = !DILocalVariable(name: "encountered_single_quote", scope: !1086, file: !100, line: 264, type: !17)
!1111 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1086, file: !100, line: 265, type: !17)
!1112 = !DILocalVariable(name: "c", scope: !1113, file: !100, line: 394, type: !494)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !100, line: 393, column: 5)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !100, line: 392, column: 3)
!1115 = distinct !DILexicalBlock(scope: !1086, file: !100, line: 392, column: 3)
!1116 = !DILocalVariable(name: "esc", scope: !1113, file: !100, line: 395, type: !494)
!1117 = !DILocalVariable(name: "is_right_quote", scope: !1113, file: !100, line: 396, type: !17)
!1118 = !DILocalVariable(name: "escaping", scope: !1113, file: !100, line: 397, type: !17)
!1119 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1113, file: !100, line: 398, type: !17)
!1120 = !DILocalVariable(name: "m", scope: !1121, file: !100, line: 602, type: !94)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 600, column: 11)
!1122 = distinct !DILexicalBlock(scope: !1113, file: !100, line: 418, column: 9)
!1123 = !DILocalVariable(name: "printable", scope: !1121, file: !100, line: 604, type: !17)
!1124 = !DILocalVariable(name: "mbstate", scope: !1125, file: !100, line: 613, type: !1127)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !100, line: 612, column: 15)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !100, line: 606, column: 17)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1128, line: 6, baseType: !1129)
!1128 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1130, line: 21, baseType: !1131)
!1130 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1130, line: 13, size: 64, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1131, file: !1130, line: 15, baseType: !25, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1131, file: !1130, line: 20, baseType: !1135, size: 32, offset: 32)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1131, file: !1130, line: 16, size: 32, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1135, file: !1130, line: 18, baseType: !113, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1135, file: !1130, line: 19, baseType: !1139, size: 32)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1140)
!1140 = !{!1141}
!1141 = !DISubrange(count: 4)
!1142 = !DILocalVariable(name: "w", scope: !1143, file: !100, line: 623, type: !1144)
!1143 = distinct !DILexicalBlock(scope: !1125, file: !100, line: 622, column: 19)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1145 = !DILocalVariable(name: "bytes", scope: !1143, file: !100, line: 624, type: !94)
!1146 = !DILocalVariable(name: "j", scope: !1147, file: !100, line: 649, type: !94)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !100, line: 648, column: 27)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !100, line: 646, column: 29)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !100, line: 641, column: 23)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !100, line: 633, column: 30)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !100, line: 628, column: 30)
!1152 = distinct !DILexicalBlock(scope: !1143, file: !100, line: 626, column: 25)
!1153 = !DILocalVariable(name: "ilim", scope: !1154, file: !100, line: 676, type: !94)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !100, line: 673, column: 15)
!1155 = distinct !DILexicalBlock(scope: !1121, file: !100, line: 672, column: 17)
!1156 = !DILocation(line: 248, column: 33, scope: !1086)
!1157 = !DILocation(line: 248, column: 48, scope: !1086)
!1158 = !DILocation(line: 249, column: 39, scope: !1086)
!1159 = !DILocation(line: 249, column: 51, scope: !1086)
!1160 = !DILocation(line: 250, column: 46, scope: !1086)
!1161 = !DILocation(line: 250, column: 65, scope: !1086)
!1162 = !DILocation(line: 251, column: 47, scope: !1086)
!1163 = !DILocation(line: 252, column: 39, scope: !1086)
!1164 = !DILocation(line: 253, column: 39, scope: !1086)
!1165 = !DILocation(line: 256, column: 10, scope: !1086)
!1166 = !DILocation(line: 257, column: 10, scope: !1086)
!1167 = !DILocation(line: 258, column: 15, scope: !1086)
!1168 = !DILocation(line: 259, column: 10, scope: !1086)
!1169 = !DILocation(line: 260, column: 8, scope: !1086)
!1170 = !DILocation(line: 261, column: 25, scope: !1086)
!1171 = !DILocation(line: 261, column: 36, scope: !1086)
!1172 = !DILocation(line: 262, column: 8, scope: !1086)
!1173 = !DILocation(line: 263, column: 8, scope: !1086)
!1174 = !DILocation(line: 264, column: 8, scope: !1086)
!1175 = !DILocation(line: 265, column: 8, scope: !1086)
!1176 = !DILocation(line: 265, column: 3, scope: !1086)
!1177 = !DILocation(line: 308, column: 3, scope: !1086)
!1178 = !DILocation(line: 315, column: 11, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1086, file: !100, line: 309, column: 5)
!1180 = !DILocation(line: 315, column: 12, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1179, file: !100, line: 315, column: 11)
!1182 = !DILocation(line: 316, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !100, line: 316, column: 9)
!1184 = distinct !DILexicalBlock(scope: !1181, file: !100, line: 316, column: 9)
!1185 = !DILocation(line: 316, column: 9, scope: !1184)
!1186 = !DILocation(line: 354, column: 26, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !100, line: 332, column: 11)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !100, line: 331, column: 13)
!1189 = distinct !DILexicalBlock(scope: !1179, file: !100, line: 330, column: 7)
!1190 = !DILocation(line: 355, column: 27, scope: !1187)
!1191 = !DILocation(line: 356, column: 11, scope: !1187)
!1192 = !DILocation(line: 357, column: 14, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !100, line: 357, column: 13)
!1194 = !DILocation(line: 357, column: 13, scope: !1189)
!1195 = !DILocation(line: 358, column: 43, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !100, line: 358, column: 11)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !100, line: 358, column: 11)
!1198 = !DILocation(line: 358, column: 11, scope: !1197)
!1199 = !DILocation(line: 359, column: 13, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !100, line: 359, column: 13)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !100, line: 359, column: 13)
!1202 = !DILocation(line: 359, column: 13, scope: !1201)
!1203 = !DILocation(line: 358, column: 70, scope: !1196)
!1204 = distinct !{!1204, !1198, !1205}
!1205 = !DILocation(line: 359, column: 13, scope: !1197)
!1206 = !DILocation(line: 362, column: 28, scope: !1189)
!1207 = !DILocation(line: 364, column: 7, scope: !1179)
!1208 = !DILocation(line: 367, column: 7, scope: !1179)
!1209 = !DILocation(line: 370, column: 7, scope: !1179)
!1210 = !DILocation(line: 373, column: 12, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1179, file: !100, line: 373, column: 11)
!1212 = !DILocation(line: 373, column: 11, scope: !1179)
!1213 = !DILocation(line: 378, column: 12, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1179, file: !100, line: 378, column: 11)
!1215 = !DILocation(line: 378, column: 11, scope: !1179)
!1216 = !DILocation(line: 379, column: 9, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !100, line: 379, column: 9)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !100, line: 379, column: 9)
!1219 = !DILocation(line: 379, column: 9, scope: !1218)
!1220 = !DILocation(line: 386, column: 7, scope: !1179)
!1221 = !DILocation(line: 389, column: 7, scope: !1179)
!1222 = !DILocation(line: 255, column: 10, scope: !1086)
!1223 = !DILocation(line: 392, column: 8, scope: !1115)
!1224 = !DILocation(line: 392, column: 27, scope: !1114)
!1225 = !DILocation(line: 392, column: 19, scope: !1114)
!1226 = !DILocation(line: 392, column: 60, scope: !1114)
!1227 = !DILocation(line: 392, column: 3, scope: !1115)
!1228 = !DILocation(line: 392, column: 41, scope: !1114)
!1229 = !DILocation(line: 392, column: 48, scope: !1114)
!1230 = !DILocation(line: 396, column: 12, scope: !1113)
!1231 = !DILocation(line: 397, column: 12, scope: !1113)
!1232 = !DILocation(line: 398, column: 12, scope: !1113)
!1233 = !DILocation(line: 401, column: 11, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1113, file: !100, line: 400, column: 11)
!1235 = !DILocation(line: 403, column: 17, scope: !1234)
!1236 = !DILocation(line: 404, column: 39, scope: !1234)
!1237 = !DILocation(line: 408, column: 32, scope: !1234)
!1238 = !DILocation(line: 404, column: 19, scope: !1234)
!1239 = !DILocation(line: 404, column: 15, scope: !1234)
!1240 = !DILocation(line: 409, column: 11, scope: !1234)
!1241 = !DILocation(line: 409, column: 26, scope: !1234)
!1242 = !DILocation(line: 409, column: 14, scope: !1234)
!1243 = !DILocation(line: 409, column: 63, scope: !1234)
!1244 = !DILocation(line: 400, column: 11, scope: !1113)
!1245 = !DILocation(line: 416, column: 11, scope: !1113)
!1246 = !DILocation(line: 394, column: 21, scope: !1113)
!1247 = !DILocation(line: 417, column: 7, scope: !1113)
!1248 = !DILocation(line: 420, column: 15, scope: !1122)
!1249 = !DILocation(line: 422, column: 15, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !100, line: 422, column: 15)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !100, line: 421, column: 13)
!1252 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 420, column: 15)
!1253 = !DILocation(line: 422, column: 15, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !100, line: 422, column: 15)
!1255 = !DILocation(line: 422, column: 15, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !100, line: 422, column: 15)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !100, line: 422, column: 15)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !100, line: 422, column: 15)
!1259 = !DILocation(line: 422, column: 15, scope: !1257)
!1260 = !DILocation(line: 422, column: 15, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !100, line: 422, column: 15)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !100, line: 422, column: 15)
!1263 = !DILocation(line: 422, column: 15, scope: !1262)
!1264 = !DILocation(line: 422, column: 15, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !100, line: 422, column: 15)
!1266 = distinct !DILexicalBlock(scope: !1258, file: !100, line: 422, column: 15)
!1267 = !DILocation(line: 422, column: 15, scope: !1266)
!1268 = !DILocation(line: 422, column: 15, scope: !1258)
!1269 = !DILocation(line: 422, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !100, line: 422, column: 15)
!1271 = distinct !DILexicalBlock(scope: !1250, file: !100, line: 422, column: 15)
!1272 = !DILocation(line: 422, column: 15, scope: !1271)
!1273 = !DILocation(line: 430, column: 19, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1251, file: !100, line: 429, column: 19)
!1275 = !DILocation(line: 430, column: 24, scope: !1274)
!1276 = !DILocation(line: 430, column: 28, scope: !1274)
!1277 = !DILocation(line: 430, column: 38, scope: !1274)
!1278 = !DILocation(line: 430, column: 48, scope: !1274)
!1279 = !DILocation(line: 430, column: 59, scope: !1274)
!1280 = !DILocation(line: 432, column: 19, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !100, line: 432, column: 19)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !100, line: 432, column: 19)
!1283 = distinct !DILexicalBlock(scope: !1274, file: !100, line: 431, column: 17)
!1284 = !DILocation(line: 432, column: 19, scope: !1282)
!1285 = !DILocation(line: 433, column: 19, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !100, line: 433, column: 19)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !100, line: 433, column: 19)
!1288 = !DILocation(line: 433, column: 19, scope: !1287)
!1289 = !DILocation(line: 434, column: 17, scope: !1283)
!1290 = !DILocation(line: 441, column: 20, scope: !1252)
!1291 = !DILocation(line: 446, column: 11, scope: !1122)
!1292 = !DILocation(line: 449, column: 19, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 447, column: 13)
!1294 = !DILocation(line: 455, column: 19, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1293, file: !100, line: 454, column: 19)
!1296 = !DILocation(line: 455, column: 24, scope: !1295)
!1297 = !DILocation(line: 455, column: 28, scope: !1295)
!1298 = !DILocation(line: 455, column: 38, scope: !1295)
!1299 = !DILocation(line: 455, column: 47, scope: !1295)
!1300 = !DILocation(line: 455, column: 41, scope: !1295)
!1301 = !DILocation(line: 455, column: 52, scope: !1295)
!1302 = !DILocation(line: 454, column: 19, scope: !1293)
!1303 = !DILocation(line: 456, column: 25, scope: !1295)
!1304 = !DILocation(line: 456, column: 17, scope: !1295)
!1305 = !DILocation(line: 463, column: 25, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1295, file: !100, line: 457, column: 19)
!1307 = !DILocation(line: 467, column: 21, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !100, line: 467, column: 21)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !100, line: 467, column: 21)
!1310 = !DILocation(line: 467, column: 21, scope: !1309)
!1311 = !DILocation(line: 468, column: 21, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !100, line: 468, column: 21)
!1313 = distinct !DILexicalBlock(scope: !1306, file: !100, line: 468, column: 21)
!1314 = !DILocation(line: 468, column: 21, scope: !1313)
!1315 = !DILocation(line: 469, column: 21, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !100, line: 469, column: 21)
!1317 = distinct !DILexicalBlock(scope: !1306, file: !100, line: 469, column: 21)
!1318 = !DILocation(line: 469, column: 21, scope: !1317)
!1319 = !DILocation(line: 470, column: 21, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !100, line: 470, column: 21)
!1321 = distinct !DILexicalBlock(scope: !1306, file: !100, line: 470, column: 21)
!1322 = !DILocation(line: 470, column: 21, scope: !1321)
!1323 = !DILocation(line: 471, column: 21, scope: !1306)
!1324 = !DILocation(line: 395, column: 21, scope: !1113)
!1325 = !DILocation(line: 484, column: 31, scope: !1122)
!1326 = !DILocation(line: 485, column: 31, scope: !1122)
!1327 = !DILocation(line: 487, column: 31, scope: !1122)
!1328 = !DILocation(line: 488, column: 31, scope: !1122)
!1329 = !DILocation(line: 489, column: 31, scope: !1122)
!1330 = !DILocation(line: 492, column: 15, scope: !1122)
!1331 = !DILocation(line: 494, column: 19, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !100, line: 493, column: 13)
!1333 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 492, column: 15)
!1334 = !DILocation(line: 501, column: 33, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 501, column: 15)
!1336 = !DILocation(line: 506, column: 15, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 505, column: 15)
!1338 = !DILocation(line: 510, column: 15, scope: !1122)
!1339 = !DILocation(line: 518, column: 26, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 518, column: 15)
!1341 = !DILocation(line: 518, column: 15, scope: !1122)
!1342 = !DILocation(line: 518, column: 40, scope: !1340)
!1343 = !DILocation(line: 518, column: 47, scope: !1340)
!1344 = !DILocation(line: 522, column: 17, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 522, column: 15)
!1346 = !DILocation(line: 518, column: 18, scope: !1340)
!1347 = !DILocation(line: 518, column: 65, scope: !1340)
!1348 = !DILocation(line: 522, column: 15, scope: !1122)
!1349 = !DILocation(line: 526, column: 11, scope: !1122)
!1350 = !DILocation(line: 541, column: 15, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 540, column: 15)
!1352 = !DILocation(line: 548, column: 15, scope: !1122)
!1353 = !DILocation(line: 550, column: 19, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !100, line: 549, column: 13)
!1355 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 548, column: 15)
!1356 = !DILocation(line: 553, column: 19, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !100, line: 553, column: 19)
!1358 = !DILocation(line: 553, column: 35, scope: !1357)
!1359 = !DILocation(line: 553, column: 30, scope: !1357)
!1360 = !DILocation(line: 562, column: 15, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !100, line: 562, column: 15)
!1362 = distinct !DILexicalBlock(scope: !1354, file: !100, line: 562, column: 15)
!1363 = !DILocation(line: 562, column: 15, scope: !1362)
!1364 = !DILocation(line: 563, column: 15, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !100, line: 563, column: 15)
!1366 = distinct !DILexicalBlock(scope: !1354, file: !100, line: 563, column: 15)
!1367 = !DILocation(line: 563, column: 15, scope: !1366)
!1368 = !DILocation(line: 564, column: 15, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !100, line: 564, column: 15)
!1370 = distinct !DILexicalBlock(scope: !1354, file: !100, line: 564, column: 15)
!1371 = !DILocation(line: 564, column: 15, scope: !1370)
!1372 = !DILocation(line: 566, column: 13, scope: !1354)
!1373 = !DILocation(line: 606, column: 17, scope: !1121)
!1374 = !DILocation(line: 602, column: 20, scope: !1121)
!1375 = !DILocation(line: 609, column: 29, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1126, file: !100, line: 607, column: 15)
!1377 = !{!1378, !1378, i64 0}
!1378 = !{!"short", !612, i64 0}
!1379 = !DILocation(line: 609, column: 27, scope: !1376)
!1380 = !DILocation(line: 604, column: 18, scope: !1121)
!1381 = !DILocation(line: 610, column: 15, scope: !1376)
!1382 = !DILocation(line: 613, column: 17, scope: !1125)
!1383 = !DILocation(line: 614, column: 17, scope: !1125)
!1384 = !DILocation(line: 618, column: 29, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1125, file: !100, line: 618, column: 21)
!1386 = !DILocation(line: 618, column: 21, scope: !1125)
!1387 = !DILocation(line: 619, column: 29, scope: !1385)
!1388 = !DILocation(line: 619, column: 19, scope: !1385)
!1389 = !DILocation(line: 621, column: 17, scope: !1125)
!1390 = distinct !{!1390, !1389, !1391}
!1391 = !DILocation(line: 667, column: 44, scope: !1125)
!1392 = !DILocation(line: 623, column: 21, scope: !1143)
!1393 = !DILocation(line: 624, column: 56, scope: !1143)
!1394 = !DILocation(line: 624, column: 50, scope: !1143)
!1395 = !DILocation(line: 625, column: 53, scope: !1143)
!1396 = !DILocation(line: 613, column: 27, scope: !1125)
!1397 = !DILocation(line: 623, column: 29, scope: !1143)
!1398 = !DILocation(line: 624, column: 36, scope: !1143)
!1399 = !DILocation(line: 624, column: 28, scope: !1143)
!1400 = !DILocation(line: 626, column: 25, scope: !1143)
!1401 = !DILocation(line: 636, column: 38, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1150, file: !100, line: 634, column: 23)
!1403 = !DILocation(line: 636, column: 48, scope: !1402)
!1404 = !DILocation(line: 636, column: 51, scope: !1402)
!1405 = !DILocation(line: 636, column: 25, scope: !1402)
!1406 = !DILocation(line: 637, column: 28, scope: !1402)
!1407 = !DILocation(line: 636, column: 34, scope: !1402)
!1408 = distinct !{!1408, !1405, !1406}
!1409 = !DILocation(line: 650, column: 43, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !100, line: 650, column: 29)
!1411 = distinct !DILexicalBlock(scope: !1147, file: !100, line: 650, column: 29)
!1412 = !DILocation(line: 647, column: 29, scope: !1148)
!1413 = !DILocation(line: 649, column: 36, scope: !1147)
!1414 = !DILocation(line: 651, column: 49, scope: !1410)
!1415 = !DILocation(line: 651, column: 39, scope: !1410)
!1416 = !DILocation(line: 651, column: 31, scope: !1410)
!1417 = !DILocation(line: 650, column: 53, scope: !1410)
!1418 = !DILocation(line: 650, column: 29, scope: !1411)
!1419 = distinct !{!1419, !1418, !1420}
!1420 = !DILocation(line: 659, column: 33, scope: !1411)
!1421 = !DILocation(line: 666, column: 19, scope: !1125)
!1422 = !DILocation(line: 662, column: 41, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1149, file: !100, line: 662, column: 29)
!1424 = !DILocation(line: 662, column: 31, scope: !1423)
!1425 = !DILocation(line: 662, column: 29, scope: !1149)
!1426 = !DILocation(line: 664, column: 27, scope: !1149)
!1427 = !DILocation(line: 667, column: 26, scope: !1125)
!1428 = !DILocation(line: 667, column: 24, scope: !1125)
!1429 = !DILocation(line: 666, column: 19, scope: !1143)
!1430 = !DILocation(line: 668, column: 15, scope: !1126)
!1431 = !DILocation(line: 670, column: 40, scope: !1121)
!1432 = !DILocation(line: 672, column: 19, scope: !1155)
!1433 = !DILocation(line: 672, column: 45, scope: !1155)
!1434 = !DILocation(line: 672, column: 23, scope: !1155)
!1435 = !DILocation(line: 676, column: 33, scope: !1154)
!1436 = !DILocation(line: 676, column: 24, scope: !1154)
!1437 = !DILocation(line: 678, column: 17, scope: !1154)
!1438 = !DILocation(line: 680, column: 43, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !100, line: 680, column: 25)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !100, line: 679, column: 19)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !100, line: 678, column: 17)
!1442 = distinct !DILexicalBlock(scope: !1154, file: !100, line: 678, column: 17)
!1443 = !DILocation(line: 682, column: 25, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !100, line: 682, column: 25)
!1445 = distinct !DILexicalBlock(scope: !1439, file: !100, line: 681, column: 23)
!1446 = !DILocation(line: 682, column: 25, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !100, line: 682, column: 25)
!1448 = !DILocation(line: 682, column: 25, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !100, line: 682, column: 25)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !100, line: 682, column: 25)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !100, line: 682, column: 25)
!1452 = !DILocation(line: 682, column: 25, scope: !1450)
!1453 = !DILocation(line: 682, column: 25, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !100, line: 682, column: 25)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !100, line: 682, column: 25)
!1456 = !DILocation(line: 682, column: 25, scope: !1455)
!1457 = !DILocation(line: 682, column: 25, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !100, line: 682, column: 25)
!1459 = distinct !DILexicalBlock(scope: !1451, file: !100, line: 682, column: 25)
!1460 = !DILocation(line: 682, column: 25, scope: !1459)
!1461 = !DILocation(line: 682, column: 25, scope: !1451)
!1462 = !DILocation(line: 682, column: 25, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !100, line: 682, column: 25)
!1464 = distinct !DILexicalBlock(scope: !1444, file: !100, line: 682, column: 25)
!1465 = !DILocation(line: 682, column: 25, scope: !1464)
!1466 = !DILocation(line: 683, column: 25, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !100, line: 683, column: 25)
!1468 = distinct !DILexicalBlock(scope: !1445, file: !100, line: 683, column: 25)
!1469 = !DILocation(line: 683, column: 25, scope: !1468)
!1470 = !DILocation(line: 684, column: 25, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !100, line: 684, column: 25)
!1472 = distinct !DILexicalBlock(scope: !1445, file: !100, line: 684, column: 25)
!1473 = !DILocation(line: 684, column: 25, scope: !1472)
!1474 = !DILocation(line: 685, column: 38, scope: !1445)
!1475 = !DILocation(line: 685, column: 33, scope: !1445)
!1476 = !DILocation(line: 686, column: 23, scope: !1445)
!1477 = !DILocation(line: 687, column: 30, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1439, file: !100, line: 687, column: 30)
!1479 = !DILocation(line: 687, column: 30, scope: !1439)
!1480 = !DILocation(line: 689, column: 25, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !100, line: 689, column: 25)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !100, line: 689, column: 25)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !100, line: 688, column: 23)
!1484 = !DILocation(line: 689, column: 25, scope: !1482)
!1485 = !DILocation(line: 691, column: 23, scope: !1483)
!1486 = !DILocation(line: 692, column: 35, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1440, file: !100, line: 692, column: 25)
!1488 = !DILocation(line: 692, column: 30, scope: !1487)
!1489 = !DILocation(line: 692, column: 25, scope: !1440)
!1490 = !DILocation(line: 694, column: 21, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !100, line: 694, column: 21)
!1492 = distinct !DILexicalBlock(scope: !1440, file: !100, line: 694, column: 21)
!1493 = !DILocation(line: 694, column: 21, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !100, line: 694, column: 21)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !100, line: 694, column: 21)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !100, line: 694, column: 21)
!1497 = !DILocation(line: 694, column: 21, scope: !1495)
!1498 = !DILocation(line: 694, column: 21, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !100, line: 694, column: 21)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !100, line: 694, column: 21)
!1501 = !DILocation(line: 694, column: 21, scope: !1500)
!1502 = !DILocation(line: 694, column: 21, scope: !1496)
!1503 = !DILocation(line: 695, column: 21, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !100, line: 695, column: 21)
!1505 = distinct !DILexicalBlock(scope: !1440, file: !100, line: 695, column: 21)
!1506 = !DILocation(line: 695, column: 21, scope: !1505)
!1507 = !DILocation(line: 696, column: 25, scope: !1440)
!1508 = !DILocation(line: 678, column: 17, scope: !1441)
!1509 = distinct !{!1509, !1510, !1511}
!1510 = !DILocation(line: 678, column: 17, scope: !1442)
!1511 = !DILocation(line: 697, column: 19, scope: !1442)
!1512 = !DILocation(line: 704, column: 34, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1113, file: !100, line: 704, column: 11)
!1514 = !DILocation(line: 706, column: 14, scope: !1513)
!1515 = !DILocation(line: 707, column: 14, scope: !1513)
!1516 = !DILocation(line: 707, column: 35, scope: !1513)
!1517 = !DILocation(line: 707, column: 17, scope: !1513)
!1518 = !DILocation(line: 707, column: 53, scope: !1513)
!1519 = !DILocation(line: 707, column: 47, scope: !1513)
!1520 = !DILocation(line: 707, column: 65, scope: !1513)
!1521 = !DILocation(line: 708, column: 15, scope: !1513)
!1522 = !DILocation(line: 708, column: 11, scope: !1513)
!1523 = !DILocation(line: 704, column: 11, scope: !1113)
!1524 = !DILocation(line: 712, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1113, file: !100, line: 712, column: 7)
!1526 = !DILocation(line: 712, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1525, file: !100, line: 712, column: 7)
!1528 = !DILocation(line: 712, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !100, line: 712, column: 7)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !100, line: 712, column: 7)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !100, line: 712, column: 7)
!1532 = !DILocation(line: 712, column: 7, scope: !1530)
!1533 = !DILocation(line: 712, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !100, line: 712, column: 7)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !100, line: 712, column: 7)
!1536 = !DILocation(line: 712, column: 7, scope: !1535)
!1537 = !DILocation(line: 712, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !100, line: 712, column: 7)
!1539 = distinct !DILexicalBlock(scope: !1531, file: !100, line: 712, column: 7)
!1540 = !DILocation(line: 712, column: 7, scope: !1539)
!1541 = !DILocation(line: 712, column: 7, scope: !1531)
!1542 = !DILocation(line: 712, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !100, line: 712, column: 7)
!1544 = distinct !DILexicalBlock(scope: !1525, file: !100, line: 712, column: 7)
!1545 = !DILocation(line: 712, column: 7, scope: !1544)
!1546 = !DILocation(line: 715, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !100, line: 715, column: 7)
!1548 = distinct !DILexicalBlock(scope: !1113, file: !100, line: 715, column: 7)
!1549 = !DILocation(line: 715, column: 7, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !100, line: 715, column: 7)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !100, line: 715, column: 7)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !100, line: 715, column: 7)
!1553 = !DILocation(line: 715, column: 7, scope: !1551)
!1554 = !DILocation(line: 715, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !100, line: 715, column: 7)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !100, line: 715, column: 7)
!1557 = !DILocation(line: 715, column: 7, scope: !1556)
!1558 = !DILocation(line: 715, column: 7, scope: !1552)
!1559 = !DILocation(line: 716, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !100, line: 716, column: 7)
!1561 = distinct !DILexicalBlock(scope: !1113, file: !100, line: 716, column: 7)
!1562 = !DILocation(line: 716, column: 7, scope: !1561)
!1563 = !DILocation(line: 718, column: 13, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1113, file: !100, line: 718, column: 11)
!1565 = !DILocation(line: 718, column: 11, scope: !1113)
!1566 = !DILocation(line: 720, column: 5, scope: !1114)
!1567 = !DILocation(line: 392, column: 75, scope: !1114)
!1568 = !DILocation(line: 392, column: 3, scope: !1114)
!1569 = distinct !{!1569, !1227, !1570}
!1570 = !DILocation(line: 720, column: 5, scope: !1115)
!1571 = !DILocation(line: 722, column: 11, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1086, file: !100, line: 722, column: 7)
!1573 = !DILocation(line: 722, column: 16, scope: !1572)
!1574 = !DILocation(line: 730, column: 51, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1086, file: !100, line: 730, column: 7)
!1576 = !DILocation(line: 731, column: 10, scope: !1575)
!1577 = !DILocation(line: 733, column: 11, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !100, line: 733, column: 11)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !100, line: 732, column: 5)
!1580 = !DILocation(line: 733, column: 11, scope: !1579)
!1581 = !DILocation(line: 734, column: 16, scope: !1578)
!1582 = !DILocation(line: 734, column: 9, scope: !1578)
!1583 = !DILocation(line: 738, column: 18, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1578, file: !100, line: 738, column: 16)
!1585 = !DILocation(line: 738, column: 32, scope: !1584)
!1586 = !DILocation(line: 738, column: 29, scope: !1584)
!1587 = !DILocation(line: 747, column: 7, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1086, file: !100, line: 747, column: 7)
!1589 = !DILocation(line: 747, column: 20, scope: !1588)
!1590 = !DILocation(line: 748, column: 12, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !100, line: 748, column: 5)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !100, line: 748, column: 5)
!1593 = !DILocation(line: 748, column: 5, scope: !1592)
!1594 = !DILocation(line: 749, column: 7, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !100, line: 749, column: 7)
!1596 = distinct !DILexicalBlock(scope: !1591, file: !100, line: 749, column: 7)
!1597 = !DILocation(line: 749, column: 7, scope: !1596)
!1598 = !DILocation(line: 748, column: 39, scope: !1591)
!1599 = distinct !{!1599, !1593, !1600}
!1600 = !DILocation(line: 749, column: 7, scope: !1592)
!1601 = !DILocation(line: 751, column: 11, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1086, file: !100, line: 751, column: 7)
!1603 = !DILocation(line: 751, column: 7, scope: !1086)
!1604 = !DILocation(line: 752, column: 5, scope: !1602)
!1605 = !DILocation(line: 752, column: 17, scope: !1602)
!1606 = !DILocation(line: 758, column: 21, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1086, file: !100, line: 758, column: 7)
!1608 = !DILocation(line: 758, column: 54, scope: !1607)
!1609 = !DILocation(line: 758, column: 51, scope: !1607)
!1610 = !DILocation(line: 762, column: 42, scope: !1086)
!1611 = !DILocation(line: 760, column: 10, scope: !1086)
!1612 = !DILocation(line: 760, column: 3, scope: !1086)
!1613 = !DILocation(line: 764, column: 1, scope: !1086)
!1614 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1615, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!6, !6, !58}
!1617 = !{!1618, !1619, !1620, !1621}
!1618 = !DILocalVariable(name: "msgid", arg: 1, scope: !1614, file: !100, line: 199, type: !6)
!1619 = !DILocalVariable(name: "s", arg: 2, scope: !1614, file: !100, line: 199, type: !58)
!1620 = !DILocalVariable(name: "translation", scope: !1614, file: !100, line: 201, type: !6)
!1621 = !DILocalVariable(name: "locale_code", scope: !1614, file: !100, line: 202, type: !6)
!1622 = !DILocation(line: 199, column: 28, scope: !1614)
!1623 = !DILocation(line: 199, column: 54, scope: !1614)
!1624 = !DILocation(line: 201, column: 29, scope: !1614)
!1625 = !DILocation(line: 201, column: 15, scope: !1614)
!1626 = !DILocation(line: 204, column: 19, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1614, file: !100, line: 204, column: 7)
!1628 = !DILocation(line: 204, column: 7, scope: !1614)
!1629 = !DILocation(line: 225, column: 17, scope: !1614)
!1630 = !DILocation(line: 202, column: 15, scope: !1614)
!1631 = !DILocalVariable(name: "s2", arg: 2, scope: !1632, file: !1633, line: 160, type: !6)
!1632 = distinct !DISubprogram(name: "strcaseeq0", scope: !1633, file: !1633, line: 160, type: !1634, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1636)
!1633 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1636 = !{!1637, !1631, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646}
!1637 = !DILocalVariable(name: "s1", arg: 1, scope: !1632, file: !1633, line: 160, type: !6)
!1638 = !DILocalVariable(name: "s20", arg: 3, scope: !1632, file: !1633, line: 160, type: !8)
!1639 = !DILocalVariable(name: "s21", arg: 4, scope: !1632, file: !1633, line: 160, type: !8)
!1640 = !DILocalVariable(name: "s22", arg: 5, scope: !1632, file: !1633, line: 160, type: !8)
!1641 = !DILocalVariable(name: "s23", arg: 6, scope: !1632, file: !1633, line: 160, type: !8)
!1642 = !DILocalVariable(name: "s24", arg: 7, scope: !1632, file: !1633, line: 160, type: !8)
!1643 = !DILocalVariable(name: "s25", arg: 8, scope: !1632, file: !1633, line: 160, type: !8)
!1644 = !DILocalVariable(name: "s26", arg: 9, scope: !1632, file: !1633, line: 160, type: !8)
!1645 = !DILocalVariable(name: "s27", arg: 10, scope: !1632, file: !1633, line: 160, type: !8)
!1646 = !DILocalVariable(name: "s28", arg: 11, scope: !1632, file: !1633, line: 160, type: !8)
!1647 = !DILocation(line: 160, column: 41, scope: !1632, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 226, column: 7, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1614, file: !100, line: 226, column: 7)
!1650 = !DILocation(line: 160, column: 120, scope: !1632, inlinedAt: !1648)
!1651 = !DILocation(line: 160, column: 130, scope: !1632, inlinedAt: !1648)
!1652 = !DILocation(line: 162, column: 7, scope: !1653, inlinedAt: !1648)
!1653 = distinct !DILexicalBlock(scope: !1632, file: !1633, line: 162, column: 7)
!1654 = !DILocalVariable(name: "s2", arg: 2, scope: !1655, file: !1633, line: 146, type: !6)
!1655 = distinct !DISubprogram(name: "strcaseeq1", scope: !1633, file: !1633, line: 146, type: !1656, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1658)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1658 = !{!1659, !1654, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1659 = !DILocalVariable(name: "s1", arg: 1, scope: !1655, file: !1633, line: 146, type: !6)
!1660 = !DILocalVariable(name: "s21", arg: 3, scope: !1655, file: !1633, line: 146, type: !8)
!1661 = !DILocalVariable(name: "s22", arg: 4, scope: !1655, file: !1633, line: 146, type: !8)
!1662 = !DILocalVariable(name: "s23", arg: 5, scope: !1655, file: !1633, line: 146, type: !8)
!1663 = !DILocalVariable(name: "s24", arg: 6, scope: !1655, file: !1633, line: 146, type: !8)
!1664 = !DILocalVariable(name: "s25", arg: 7, scope: !1655, file: !1633, line: 146, type: !8)
!1665 = !DILocalVariable(name: "s26", arg: 8, scope: !1655, file: !1633, line: 146, type: !8)
!1666 = !DILocalVariable(name: "s27", arg: 9, scope: !1655, file: !1633, line: 146, type: !8)
!1667 = !DILocalVariable(name: "s28", arg: 10, scope: !1655, file: !1633, line: 146, type: !8)
!1668 = !DILocation(line: 146, column: 41, scope: !1655, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 167, column: 16, scope: !1670, inlinedAt: !1648)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !1633, line: 164, column: 11)
!1671 = distinct !DILexicalBlock(scope: !1653, file: !1633, line: 163, column: 5)
!1672 = !DILocation(line: 146, column: 110, scope: !1655, inlinedAt: !1669)
!1673 = !DILocation(line: 146, column: 120, scope: !1655, inlinedAt: !1669)
!1674 = !DILocation(line: 148, column: 7, scope: !1675, inlinedAt: !1669)
!1675 = distinct !DILexicalBlock(scope: !1655, file: !1633, line: 148, column: 7)
!1676 = !DILocalVariable(name: "s2", arg: 2, scope: !1677, file: !1633, line: 132, type: !6)
!1677 = distinct !DISubprogram(name: "strcaseeq2", scope: !1633, file: !1633, line: 132, type: !1678, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1680)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1680 = !{!1681, !1676, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1681 = !DILocalVariable(name: "s1", arg: 1, scope: !1677, file: !1633, line: 132, type: !6)
!1682 = !DILocalVariable(name: "s22", arg: 3, scope: !1677, file: !1633, line: 132, type: !8)
!1683 = !DILocalVariable(name: "s23", arg: 4, scope: !1677, file: !1633, line: 132, type: !8)
!1684 = !DILocalVariable(name: "s24", arg: 5, scope: !1677, file: !1633, line: 132, type: !8)
!1685 = !DILocalVariable(name: "s25", arg: 6, scope: !1677, file: !1633, line: 132, type: !8)
!1686 = !DILocalVariable(name: "s26", arg: 7, scope: !1677, file: !1633, line: 132, type: !8)
!1687 = !DILocalVariable(name: "s27", arg: 8, scope: !1677, file: !1633, line: 132, type: !8)
!1688 = !DILocalVariable(name: "s28", arg: 9, scope: !1677, file: !1633, line: 132, type: !8)
!1689 = !DILocation(line: 132, column: 41, scope: !1677, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 153, column: 16, scope: !1691, inlinedAt: !1669)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !1633, line: 150, column: 11)
!1692 = distinct !DILexicalBlock(scope: !1675, file: !1633, line: 149, column: 5)
!1693 = !DILocation(line: 132, column: 100, scope: !1677, inlinedAt: !1690)
!1694 = !DILocation(line: 132, column: 110, scope: !1677, inlinedAt: !1690)
!1695 = !DILocation(line: 134, column: 7, scope: !1696, inlinedAt: !1690)
!1696 = distinct !DILexicalBlock(scope: !1677, file: !1633, line: 134, column: 7)
!1697 = !DILocalVariable(name: "s2", arg: 2, scope: !1698, file: !1633, line: 118, type: !6)
!1698 = distinct !DISubprogram(name: "strcaseeq3", scope: !1633, file: !1633, line: 118, type: !1699, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1701 = !{!1702, !1697, !1703, !1704, !1705, !1706, !1707, !1708}
!1702 = !DILocalVariable(name: "s1", arg: 1, scope: !1698, file: !1633, line: 118, type: !6)
!1703 = !DILocalVariable(name: "s23", arg: 3, scope: !1698, file: !1633, line: 118, type: !8)
!1704 = !DILocalVariable(name: "s24", arg: 4, scope: !1698, file: !1633, line: 118, type: !8)
!1705 = !DILocalVariable(name: "s25", arg: 5, scope: !1698, file: !1633, line: 118, type: !8)
!1706 = !DILocalVariable(name: "s26", arg: 6, scope: !1698, file: !1633, line: 118, type: !8)
!1707 = !DILocalVariable(name: "s27", arg: 7, scope: !1698, file: !1633, line: 118, type: !8)
!1708 = !DILocalVariable(name: "s28", arg: 8, scope: !1698, file: !1633, line: 118, type: !8)
!1709 = !DILocation(line: 118, column: 41, scope: !1698, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 139, column: 16, scope: !1711, inlinedAt: !1690)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !1633, line: 136, column: 11)
!1712 = distinct !DILexicalBlock(scope: !1696, file: !1633, line: 135, column: 5)
!1713 = !DILocation(line: 118, column: 90, scope: !1698, inlinedAt: !1710)
!1714 = !DILocation(line: 118, column: 100, scope: !1698, inlinedAt: !1710)
!1715 = !DILocation(line: 120, column: 7, scope: !1716, inlinedAt: !1710)
!1716 = distinct !DILexicalBlock(scope: !1698, file: !1633, line: 120, column: 7)
!1717 = !DILocation(line: 120, column: 7, scope: !1698, inlinedAt: !1710)
!1718 = !DILocalVariable(name: "s2", arg: 2, scope: !1719, file: !1633, line: 104, type: !6)
!1719 = distinct !DISubprogram(name: "strcaseeq4", scope: !1633, file: !1633, line: 104, type: !1720, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1722 = !{!1723, !1718, !1724, !1725, !1726, !1727, !1728}
!1723 = !DILocalVariable(name: "s1", arg: 1, scope: !1719, file: !1633, line: 104, type: !6)
!1724 = !DILocalVariable(name: "s24", arg: 3, scope: !1719, file: !1633, line: 104, type: !8)
!1725 = !DILocalVariable(name: "s25", arg: 4, scope: !1719, file: !1633, line: 104, type: !8)
!1726 = !DILocalVariable(name: "s26", arg: 5, scope: !1719, file: !1633, line: 104, type: !8)
!1727 = !DILocalVariable(name: "s27", arg: 6, scope: !1719, file: !1633, line: 104, type: !8)
!1728 = !DILocalVariable(name: "s28", arg: 7, scope: !1719, file: !1633, line: 104, type: !8)
!1729 = !DILocation(line: 104, column: 41, scope: !1719, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 125, column: 16, scope: !1731, inlinedAt: !1710)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !1633, line: 122, column: 11)
!1732 = distinct !DILexicalBlock(scope: !1716, file: !1633, line: 121, column: 5)
!1733 = !DILocation(line: 104, column: 80, scope: !1719, inlinedAt: !1730)
!1734 = !DILocation(line: 104, column: 90, scope: !1719, inlinedAt: !1730)
!1735 = !DILocation(line: 106, column: 7, scope: !1736, inlinedAt: !1730)
!1736 = distinct !DILexicalBlock(scope: !1719, file: !1633, line: 106, column: 7)
!1737 = !DILocation(line: 106, column: 7, scope: !1719, inlinedAt: !1730)
!1738 = !DILocalVariable(name: "s2", arg: 2, scope: !1739, file: !1633, line: 90, type: !6)
!1739 = distinct !DISubprogram(name: "strcaseeq5", scope: !1633, file: !1633, line: 90, type: !1740, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!25, !6, !6, !8, !8, !8, !8}
!1742 = !{!1743, !1738, !1744, !1745, !1746, !1747}
!1743 = !DILocalVariable(name: "s1", arg: 1, scope: !1739, file: !1633, line: 90, type: !6)
!1744 = !DILocalVariable(name: "s25", arg: 3, scope: !1739, file: !1633, line: 90, type: !8)
!1745 = !DILocalVariable(name: "s26", arg: 4, scope: !1739, file: !1633, line: 90, type: !8)
!1746 = !DILocalVariable(name: "s27", arg: 5, scope: !1739, file: !1633, line: 90, type: !8)
!1747 = !DILocalVariable(name: "s28", arg: 6, scope: !1739, file: !1633, line: 90, type: !8)
!1748 = !DILocation(line: 90, column: 41, scope: !1739, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 111, column: 16, scope: !1750, inlinedAt: !1730)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !1633, line: 108, column: 11)
!1751 = distinct !DILexicalBlock(scope: !1736, file: !1633, line: 107, column: 5)
!1752 = !DILocation(line: 90, column: 70, scope: !1739, inlinedAt: !1749)
!1753 = !DILocation(line: 90, column: 80, scope: !1739, inlinedAt: !1749)
!1754 = !DILocation(line: 92, column: 7, scope: !1755, inlinedAt: !1749)
!1755 = distinct !DILexicalBlock(scope: !1739, file: !1633, line: 92, column: 7)
!1756 = !DILocation(line: 92, column: 7, scope: !1739, inlinedAt: !1749)
!1757 = !DILocation(line: 227, column: 12, scope: !1649)
!1758 = !DILocation(line: 227, column: 21, scope: !1649)
!1759 = !DILocation(line: 227, column: 5, scope: !1649)
!1760 = !DILocation(line: 146, column: 41, scope: !1655, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 167, column: 16, scope: !1670, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 228, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1614, file: !100, line: 228, column: 7)
!1764 = !DILocation(line: 146, column: 110, scope: !1655, inlinedAt: !1761)
!1765 = !DILocation(line: 146, column: 120, scope: !1655, inlinedAt: !1761)
!1766 = !DILocation(line: 148, column: 7, scope: !1675, inlinedAt: !1761)
!1767 = !DILocation(line: 132, column: 41, scope: !1677, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 153, column: 16, scope: !1691, inlinedAt: !1761)
!1769 = !DILocation(line: 132, column: 100, scope: !1677, inlinedAt: !1768)
!1770 = !DILocation(line: 132, column: 110, scope: !1677, inlinedAt: !1768)
!1771 = !DILocation(line: 134, column: 7, scope: !1696, inlinedAt: !1768)
!1772 = !DILocation(line: 134, column: 7, scope: !1677, inlinedAt: !1768)
!1773 = !DILocation(line: 118, column: 41, scope: !1698, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 139, column: 16, scope: !1711, inlinedAt: !1768)
!1775 = !DILocation(line: 118, column: 90, scope: !1698, inlinedAt: !1774)
!1776 = !DILocation(line: 118, column: 100, scope: !1698, inlinedAt: !1774)
!1777 = !DILocation(line: 120, column: 7, scope: !1716, inlinedAt: !1774)
!1778 = !DILocation(line: 120, column: 7, scope: !1698, inlinedAt: !1774)
!1779 = !DILocation(line: 104, column: 41, scope: !1719, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 125, column: 16, scope: !1731, inlinedAt: !1774)
!1781 = !DILocation(line: 104, column: 80, scope: !1719, inlinedAt: !1780)
!1782 = !DILocation(line: 104, column: 90, scope: !1719, inlinedAt: !1780)
!1783 = !DILocation(line: 106, column: 7, scope: !1736, inlinedAt: !1780)
!1784 = !DILocation(line: 106, column: 7, scope: !1719, inlinedAt: !1780)
!1785 = !DILocation(line: 90, column: 41, scope: !1739, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 111, column: 16, scope: !1750, inlinedAt: !1780)
!1787 = !DILocation(line: 90, column: 70, scope: !1739, inlinedAt: !1786)
!1788 = !DILocation(line: 90, column: 80, scope: !1739, inlinedAt: !1786)
!1789 = !DILocation(line: 92, column: 7, scope: !1755, inlinedAt: !1786)
!1790 = !DILocation(line: 92, column: 7, scope: !1739, inlinedAt: !1786)
!1791 = !DILocalVariable(name: "s2", arg: 2, scope: !1792, file: !1633, line: 76, type: !6)
!1792 = distinct !DISubprogram(name: "strcaseeq6", scope: !1633, file: !1633, line: 76, type: !1793, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1795)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!25, !6, !6, !8, !8, !8}
!1795 = !{!1796, !1791, !1797, !1798, !1799}
!1796 = !DILocalVariable(name: "s1", arg: 1, scope: !1792, file: !1633, line: 76, type: !6)
!1797 = !DILocalVariable(name: "s26", arg: 3, scope: !1792, file: !1633, line: 76, type: !8)
!1798 = !DILocalVariable(name: "s27", arg: 4, scope: !1792, file: !1633, line: 76, type: !8)
!1799 = !DILocalVariable(name: "s28", arg: 5, scope: !1792, file: !1633, line: 76, type: !8)
!1800 = !DILocation(line: 76, column: 41, scope: !1792, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 97, column: 16, scope: !1802, inlinedAt: !1786)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !1633, line: 94, column: 11)
!1803 = distinct !DILexicalBlock(scope: !1755, file: !1633, line: 93, column: 5)
!1804 = !DILocation(line: 76, column: 60, scope: !1792, inlinedAt: !1801)
!1805 = !DILocation(line: 76, column: 70, scope: !1792, inlinedAt: !1801)
!1806 = !DILocation(line: 78, column: 7, scope: !1807, inlinedAt: !1801)
!1807 = distinct !DILexicalBlock(scope: !1792, file: !1633, line: 78, column: 7)
!1808 = !DILocation(line: 78, column: 7, scope: !1792, inlinedAt: !1801)
!1809 = !DILocalVariable(name: "s2", arg: 2, scope: !1810, file: !1633, line: 62, type: !6)
!1810 = distinct !DISubprogram(name: "strcaseeq7", scope: !1633, file: !1633, line: 62, type: !1811, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!25, !6, !6, !8, !8}
!1813 = !{!1814, !1809, !1815, !1816}
!1814 = !DILocalVariable(name: "s1", arg: 1, scope: !1810, file: !1633, line: 62, type: !6)
!1815 = !DILocalVariable(name: "s27", arg: 3, scope: !1810, file: !1633, line: 62, type: !8)
!1816 = !DILocalVariable(name: "s28", arg: 4, scope: !1810, file: !1633, line: 62, type: !8)
!1817 = !DILocation(line: 62, column: 41, scope: !1810, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 83, column: 16, scope: !1819, inlinedAt: !1801)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !1633, line: 80, column: 11)
!1820 = distinct !DILexicalBlock(scope: !1807, file: !1633, line: 79, column: 5)
!1821 = !DILocation(line: 62, column: 50, scope: !1810, inlinedAt: !1818)
!1822 = !DILocation(line: 62, column: 60, scope: !1810, inlinedAt: !1818)
!1823 = !DILocation(line: 64, column: 7, scope: !1824, inlinedAt: !1818)
!1824 = distinct !DILexicalBlock(scope: !1810, file: !1633, line: 64, column: 7)
!1825 = !DILocation(line: 228, column: 7, scope: !1614)
!1826 = !DILocation(line: 229, column: 12, scope: !1763)
!1827 = !DILocation(line: 229, column: 21, scope: !1763)
!1828 = !DILocation(line: 229, column: 5, scope: !1763)
!1829 = !DILocation(line: 231, column: 13, scope: !1614)
!1830 = !DILocation(line: 231, column: 11, scope: !1614)
!1831 = !DILocation(line: 231, column: 3, scope: !1614)
!1832 = !DILocation(line: 232, column: 1, scope: !1614)
!1833 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !1834, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!50, !6, !94, !958}
!1836 = !{!1837, !1838, !1839}
!1837 = !DILocalVariable(name: "arg", arg: 1, scope: !1833, file: !100, line: 791, type: !6)
!1838 = !DILocalVariable(name: "argsize", arg: 2, scope: !1833, file: !100, line: 791, type: !94)
!1839 = !DILocalVariable(name: "o", arg: 3, scope: !1833, file: !100, line: 792, type: !958)
!1840 = !DILocation(line: 791, column: 29, scope: !1833)
!1841 = !DILocation(line: 791, column: 41, scope: !1833)
!1842 = !DILocation(line: 792, column: 47, scope: !1833)
!1843 = !DILocalVariable(name: "arg", arg: 1, scope: !1844, file: !100, line: 804, type: !6)
!1844 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !1845, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!50, !6, !94, !566, !958}
!1847 = !{!1843, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855}
!1848 = !DILocalVariable(name: "argsize", arg: 2, scope: !1844, file: !100, line: 804, type: !94)
!1849 = !DILocalVariable(name: "size", arg: 3, scope: !1844, file: !100, line: 804, type: !566)
!1850 = !DILocalVariable(name: "o", arg: 4, scope: !1844, file: !100, line: 805, type: !958)
!1851 = !DILocalVariable(name: "p", scope: !1844, file: !100, line: 807, type: !958)
!1852 = !DILocalVariable(name: "e", scope: !1844, file: !100, line: 808, type: !25)
!1853 = !DILocalVariable(name: "flags", scope: !1844, file: !100, line: 810, type: !25)
!1854 = !DILocalVariable(name: "bufsize", scope: !1844, file: !100, line: 811, type: !94)
!1855 = !DILocalVariable(name: "buf", scope: !1844, file: !100, line: 815, type: !50)
!1856 = !DILocation(line: 804, column: 33, scope: !1844, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 794, column: 10, scope: !1833)
!1858 = !DILocation(line: 804, column: 45, scope: !1844, inlinedAt: !1857)
!1859 = !DILocation(line: 804, column: 62, scope: !1844, inlinedAt: !1857)
!1860 = !DILocation(line: 805, column: 51, scope: !1844, inlinedAt: !1857)
!1861 = !DILocation(line: 807, column: 37, scope: !1844, inlinedAt: !1857)
!1862 = !DILocation(line: 807, column: 33, scope: !1844, inlinedAt: !1857)
!1863 = !DILocation(line: 808, column: 11, scope: !1844, inlinedAt: !1857)
!1864 = !DILocation(line: 808, column: 7, scope: !1844, inlinedAt: !1857)
!1865 = !DILocation(line: 810, column: 18, scope: !1844, inlinedAt: !1857)
!1866 = !DILocation(line: 810, column: 24, scope: !1844, inlinedAt: !1857)
!1867 = !DILocation(line: 810, column: 7, scope: !1844, inlinedAt: !1857)
!1868 = !DILocation(line: 811, column: 69, scope: !1844, inlinedAt: !1857)
!1869 = !DILocation(line: 812, column: 53, scope: !1844, inlinedAt: !1857)
!1870 = !DILocation(line: 813, column: 49, scope: !1844, inlinedAt: !1857)
!1871 = !DILocation(line: 814, column: 49, scope: !1844, inlinedAt: !1857)
!1872 = !DILocation(line: 811, column: 20, scope: !1844, inlinedAt: !1857)
!1873 = !DILocation(line: 814, column: 62, scope: !1844, inlinedAt: !1857)
!1874 = !DILocation(line: 811, column: 10, scope: !1844, inlinedAt: !1857)
!1875 = !DILocalVariable(name: "n", arg: 1, scope: !1876, file: !562, line: 220, type: !94)
!1876 = distinct !DISubprogram(name: "xcharalloc", scope: !562, file: !562, line: 220, type: !1877, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!50, !94}
!1879 = !{!1875}
!1880 = !DILocation(line: 220, column: 20, scope: !1876, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 815, column: 15, scope: !1844, inlinedAt: !1857)
!1882 = !DILocation(line: 222, column: 10, scope: !1876, inlinedAt: !1881)
!1883 = !DILocation(line: 815, column: 9, scope: !1844, inlinedAt: !1857)
!1884 = !DILocation(line: 816, column: 60, scope: !1844, inlinedAt: !1857)
!1885 = !DILocation(line: 818, column: 32, scope: !1844, inlinedAt: !1857)
!1886 = !DILocation(line: 818, column: 47, scope: !1844, inlinedAt: !1857)
!1887 = !DILocation(line: 816, column: 3, scope: !1844, inlinedAt: !1857)
!1888 = !DILocation(line: 819, column: 9, scope: !1844, inlinedAt: !1857)
!1889 = !DILocation(line: 794, column: 3, scope: !1833)
!1890 = !DILocation(line: 804, column: 33, scope: !1844)
!1891 = !DILocation(line: 804, column: 45, scope: !1844)
!1892 = !DILocation(line: 804, column: 62, scope: !1844)
!1893 = !DILocation(line: 805, column: 51, scope: !1844)
!1894 = !DILocation(line: 807, column: 37, scope: !1844)
!1895 = !DILocation(line: 807, column: 33, scope: !1844)
!1896 = !DILocation(line: 808, column: 11, scope: !1844)
!1897 = !DILocation(line: 808, column: 7, scope: !1844)
!1898 = !DILocation(line: 810, column: 18, scope: !1844)
!1899 = !DILocation(line: 810, column: 27, scope: !1844)
!1900 = !DILocation(line: 810, column: 24, scope: !1844)
!1901 = !DILocation(line: 810, column: 7, scope: !1844)
!1902 = !DILocation(line: 811, column: 69, scope: !1844)
!1903 = !DILocation(line: 812, column: 53, scope: !1844)
!1904 = !DILocation(line: 813, column: 49, scope: !1844)
!1905 = !DILocation(line: 814, column: 49, scope: !1844)
!1906 = !DILocation(line: 811, column: 20, scope: !1844)
!1907 = !DILocation(line: 814, column: 62, scope: !1844)
!1908 = !DILocation(line: 811, column: 10, scope: !1844)
!1909 = !DILocation(line: 220, column: 20, scope: !1876, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 815, column: 15, scope: !1844)
!1911 = !DILocation(line: 222, column: 10, scope: !1876, inlinedAt: !1910)
!1912 = !DILocation(line: 815, column: 9, scope: !1844)
!1913 = !DILocation(line: 816, column: 60, scope: !1844)
!1914 = !DILocation(line: 818, column: 32, scope: !1844)
!1915 = !DILocation(line: 818, column: 47, scope: !1844)
!1916 = !DILocation(line: 816, column: 3, scope: !1844)
!1917 = !DILocation(line: 819, column: 9, scope: !1844)
!1918 = !DILocation(line: 820, column: 7, scope: !1844)
!1919 = !DILocation(line: 821, column: 11, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1844, file: !100, line: 820, column: 7)
!1921 = !{!1922, !1922, i64 0}
!1922 = !{!"long", !612, i64 0}
!1923 = !DILocation(line: 821, column: 5, scope: !1920)
!1924 = !DILocation(line: 822, column: 3, scope: !1844)
!1925 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !777, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1926)
!1926 = !{!1927, !1928}
!1927 = !DILocalVariable(name: "sv", scope: !1925, file: !100, line: 842, type: !127)
!1928 = !DILocalVariable(name: "i", scope: !1925, file: !100, line: 843, type: !25)
!1929 = !DILocation(line: 842, column: 24, scope: !1925)
!1930 = !DILocation(line: 842, column: 19, scope: !1925)
!1931 = !DILocation(line: 843, column: 7, scope: !1925)
!1932 = !DILocation(line: 844, column: 19, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !100, line: 844, column: 3)
!1934 = distinct !DILexicalBlock(scope: !1925, file: !100, line: 844, column: 3)
!1935 = !DILocation(line: 844, column: 17, scope: !1933)
!1936 = !DILocation(line: 844, column: 3, scope: !1934)
!1937 = !DILocation(line: 845, column: 17, scope: !1933)
!1938 = !{!1939, !611, i64 8}
!1939 = !{!"slotvec", !1922, i64 0, !611, i64 8}
!1940 = !DILocation(line: 845, column: 5, scope: !1933)
!1941 = !DILocation(line: 844, column: 28, scope: !1933)
!1942 = distinct !{!1942, !1936, !1943}
!1943 = !DILocation(line: 845, column: 20, scope: !1934)
!1944 = !DILocation(line: 846, column: 13, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1925, file: !100, line: 846, column: 7)
!1946 = !DILocation(line: 846, column: 17, scope: !1945)
!1947 = !DILocation(line: 846, column: 7, scope: !1925)
!1948 = !DILocation(line: 848, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1945, file: !100, line: 847, column: 5)
!1950 = !DILocation(line: 849, column: 21, scope: !1949)
!1951 = !{!1939, !1922, i64 0}
!1952 = !DILocation(line: 850, column: 20, scope: !1949)
!1953 = !DILocation(line: 851, column: 5, scope: !1949)
!1954 = !DILocation(line: 852, column: 10, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1925, file: !100, line: 852, column: 7)
!1956 = !DILocation(line: 852, column: 7, scope: !1925)
!1957 = !DILocation(line: 854, column: 13, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !100, line: 853, column: 5)
!1959 = !DILocation(line: 854, column: 7, scope: !1958)
!1960 = !DILocation(line: 855, column: 15, scope: !1958)
!1961 = !DILocation(line: 856, column: 5, scope: !1958)
!1962 = !DILocation(line: 857, column: 10, scope: !1925)
!1963 = !DILocation(line: 858, column: 1, scope: !1925)
!1964 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !1965, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!50, !25, !6}
!1967 = !{!1968, !1969}
!1968 = !DILocalVariable(name: "n", arg: 1, scope: !1964, file: !100, line: 922, type: !25)
!1969 = !DILocalVariable(name: "arg", arg: 2, scope: !1964, file: !100, line: 922, type: !6)
!1970 = !DILocation(line: 922, column: 17, scope: !1964)
!1971 = !DILocation(line: 922, column: 32, scope: !1964)
!1972 = !DILocation(line: 924, column: 10, scope: !1964)
!1973 = !DILocation(line: 924, column: 3, scope: !1964)
!1974 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !1975, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!50, !25, !6, !94, !958}
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983, !1984, !1987, !1989, !1990, !1991}
!1978 = !DILocalVariable(name: "n", arg: 1, scope: !1974, file: !100, line: 869, type: !25)
!1979 = !DILocalVariable(name: "arg", arg: 2, scope: !1974, file: !100, line: 869, type: !6)
!1980 = !DILocalVariable(name: "argsize", arg: 3, scope: !1974, file: !100, line: 869, type: !94)
!1981 = !DILocalVariable(name: "options", arg: 4, scope: !1974, file: !100, line: 870, type: !958)
!1982 = !DILocalVariable(name: "e", scope: !1974, file: !100, line: 872, type: !25)
!1983 = !DILocalVariable(name: "sv", scope: !1974, file: !100, line: 874, type: !127)
!1984 = !DILocalVariable(name: "preallocated", scope: !1985, file: !100, line: 881, type: !17)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !100, line: 880, column: 5)
!1986 = distinct !DILexicalBlock(scope: !1974, file: !100, line: 879, column: 7)
!1987 = !DILocalVariable(name: "size", scope: !1988, file: !100, line: 894, type: !94)
!1988 = distinct !DILexicalBlock(scope: !1974, file: !100, line: 893, column: 3)
!1989 = !DILocalVariable(name: "val", scope: !1988, file: !100, line: 895, type: !50)
!1990 = !DILocalVariable(name: "flags", scope: !1988, file: !100, line: 897, type: !25)
!1991 = !DILocalVariable(name: "qsize", scope: !1988, file: !100, line: 898, type: !94)
!1992 = !DILocation(line: 869, column: 25, scope: !1974)
!1993 = !DILocation(line: 869, column: 40, scope: !1974)
!1994 = !DILocation(line: 869, column: 52, scope: !1974)
!1995 = !DILocation(line: 870, column: 51, scope: !1974)
!1996 = !DILocation(line: 872, column: 11, scope: !1974)
!1997 = !DILocation(line: 872, column: 7, scope: !1974)
!1998 = !DILocation(line: 874, column: 24, scope: !1974)
!1999 = !DILocation(line: 874, column: 19, scope: !1974)
!2000 = !DILocation(line: 876, column: 9, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1974, file: !100, line: 876, column: 7)
!2002 = !DILocation(line: 876, column: 7, scope: !1974)
!2003 = !DILocation(line: 877, column: 5, scope: !2001)
!2004 = !DILocation(line: 879, column: 7, scope: !1986)
!2005 = !DILocation(line: 879, column: 14, scope: !1986)
!2006 = !DILocation(line: 879, column: 7, scope: !1974)
!2007 = !DILocation(line: 881, column: 31, scope: !1985)
!2008 = !DILocation(line: 883, column: 67, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1985, file: !100, line: 883, column: 11)
!2010 = !DILocation(line: 883, column: 11, scope: !1985)
!2011 = !DILocation(line: 884, column: 9, scope: !2009)
!2012 = !DILocation(line: 886, column: 32, scope: !1985)
!2013 = !DILocation(line: 886, column: 61, scope: !1985)
!2014 = !DILocation(line: 886, column: 58, scope: !1985)
!2015 = !DILocation(line: 886, column: 66, scope: !1985)
!2016 = !DILocation(line: 886, column: 22, scope: !1985)
!2017 = !DILocation(line: 886, column: 15, scope: !1985)
!2018 = !DILocation(line: 887, column: 11, scope: !1985)
!2019 = !DILocation(line: 888, column: 15, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1985, file: !100, line: 887, column: 11)
!2021 = !{i64 0, i64 8, !1921, i64 8, i64 8, !610}
!2022 = !DILocation(line: 888, column: 9, scope: !2020)
!2023 = !DILocation(line: 889, column: 20, scope: !1985)
!2024 = !DILocation(line: 889, column: 18, scope: !1985)
!2025 = !DILocation(line: 889, column: 7, scope: !1985)
!2026 = !DILocation(line: 889, column: 38, scope: !1985)
!2027 = !DILocation(line: 889, column: 31, scope: !1985)
!2028 = !DILocation(line: 889, column: 48, scope: !1985)
!2029 = !DILocation(line: 890, column: 14, scope: !1985)
!2030 = !DILocation(line: 891, column: 5, scope: !1985)
!2031 = !DILocation(line: 894, column: 19, scope: !1988)
!2032 = !DILocation(line: 894, column: 25, scope: !1988)
!2033 = !DILocation(line: 894, column: 12, scope: !1988)
!2034 = !DILocation(line: 895, column: 23, scope: !1988)
!2035 = !DILocation(line: 895, column: 11, scope: !1988)
!2036 = !DILocation(line: 897, column: 26, scope: !1988)
!2037 = !DILocation(line: 897, column: 32, scope: !1988)
!2038 = !DILocation(line: 897, column: 9, scope: !1988)
!2039 = !DILocation(line: 899, column: 55, scope: !1988)
!2040 = !DILocation(line: 900, column: 46, scope: !1988)
!2041 = !DILocation(line: 901, column: 55, scope: !1988)
!2042 = !DILocation(line: 902, column: 55, scope: !1988)
!2043 = !DILocation(line: 898, column: 20, scope: !1988)
!2044 = !DILocation(line: 898, column: 12, scope: !1988)
!2045 = !DILocation(line: 904, column: 14, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1988, file: !100, line: 904, column: 9)
!2047 = !DILocation(line: 904, column: 9, scope: !1988)
!2048 = !DILocation(line: 906, column: 35, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !100, line: 905, column: 7)
!2050 = !DILocation(line: 906, column: 20, scope: !2049)
!2051 = !DILocation(line: 907, column: 17, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2049, file: !100, line: 907, column: 13)
!2053 = !DILocation(line: 907, column: 13, scope: !2049)
!2054 = !DILocation(line: 908, column: 11, scope: !2052)
!2055 = !DILocation(line: 220, column: 20, scope: !1876, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 909, column: 27, scope: !2049)
!2057 = !DILocation(line: 222, column: 10, scope: !1876, inlinedAt: !2056)
!2058 = !DILocation(line: 909, column: 19, scope: !2049)
!2059 = !DILocation(line: 910, column: 69, scope: !2049)
!2060 = !DILocation(line: 912, column: 44, scope: !2049)
!2061 = !DILocation(line: 913, column: 44, scope: !2049)
!2062 = !DILocation(line: 910, column: 9, scope: !2049)
!2063 = !DILocation(line: 914, column: 7, scope: !2049)
!2064 = !DILocation(line: 916, column: 11, scope: !1988)
!2065 = !DILocation(line: 917, column: 5, scope: !1988)
!2066 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !2067, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!50, !25, !6, !94}
!2069 = !{!2070, !2071, !2072}
!2070 = !DILocalVariable(name: "n", arg: 1, scope: !2066, file: !100, line: 928, type: !25)
!2071 = !DILocalVariable(name: "arg", arg: 2, scope: !2066, file: !100, line: 928, type: !6)
!2072 = !DILocalVariable(name: "argsize", arg: 3, scope: !2066, file: !100, line: 928, type: !94)
!2073 = !DILocation(line: 928, column: 21, scope: !2066)
!2074 = !DILocation(line: 928, column: 36, scope: !2066)
!2075 = !DILocation(line: 928, column: 48, scope: !2066)
!2076 = !DILocation(line: 930, column: 10, scope: !2066)
!2077 = !DILocation(line: 930, column: 3, scope: !2066)
!2078 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !2079, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2081)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!50, !6}
!2081 = !{!2082}
!2082 = !DILocalVariable(name: "arg", arg: 1, scope: !2078, file: !100, line: 934, type: !6)
!2083 = !DILocation(line: 934, column: 23, scope: !2078)
!2084 = !DILocation(line: 922, column: 17, scope: !1964, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 936, column: 10, scope: !2078)
!2086 = !DILocation(line: 922, column: 32, scope: !1964, inlinedAt: !2085)
!2087 = !DILocation(line: 924, column: 10, scope: !1964, inlinedAt: !2085)
!2088 = !DILocation(line: 936, column: 3, scope: !2078)
!2089 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !2090, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!50, !6, !94}
!2092 = !{!2093, !2094}
!2093 = !DILocalVariable(name: "arg", arg: 1, scope: !2089, file: !100, line: 940, type: !6)
!2094 = !DILocalVariable(name: "argsize", arg: 2, scope: !2089, file: !100, line: 940, type: !94)
!2095 = !DILocation(line: 940, column: 27, scope: !2089)
!2096 = !DILocation(line: 940, column: 39, scope: !2089)
!2097 = !DILocation(line: 928, column: 21, scope: !2066, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 942, column: 10, scope: !2089)
!2099 = !DILocation(line: 928, column: 36, scope: !2066, inlinedAt: !2098)
!2100 = !DILocation(line: 928, column: 48, scope: !2066, inlinedAt: !2098)
!2101 = !DILocation(line: 930, column: 10, scope: !2066, inlinedAt: !2098)
!2102 = !DILocation(line: 942, column: 3, scope: !2089)
!2103 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !2104, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2106)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!50, !25, !58, !6}
!2106 = !{!2107, !2108, !2109, !2110}
!2107 = !DILocalVariable(name: "n", arg: 1, scope: !2103, file: !100, line: 946, type: !25)
!2108 = !DILocalVariable(name: "s", arg: 2, scope: !2103, file: !100, line: 946, type: !58)
!2109 = !DILocalVariable(name: "arg", arg: 3, scope: !2103, file: !100, line: 946, type: !6)
!2110 = !DILocalVariable(name: "o", scope: !2103, file: !100, line: 948, type: !959)
!2111 = !DILocalVariable(name: "o", scope: !2112, file: !100, line: 187, type: !107)
!2112 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2113, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!107, !58}
!2115 = !{!2116, !2111}
!2116 = !DILocalVariable(name: "style", arg: 1, scope: !2112, file: !100, line: 185, type: !58)
!2117 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2118 = !DILocation(line: 187, column: 26, scope: !2112, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 948, column: 36, scope: !2103)
!2120 = !DILocation(line: 946, column: 23, scope: !2103)
!2121 = !DILocation(line: 946, column: 45, scope: !2103)
!2122 = !DILocation(line: 946, column: 60, scope: !2103)
!2123 = !DILocation(line: 948, column: 3, scope: !2103)
!2124 = !DILocation(line: 948, column: 32, scope: !2103)
!2125 = !DILocation(line: 185, column: 48, scope: !2112, inlinedAt: !2119)
!2126 = !DILocation(line: 187, column: 3, scope: !2112, inlinedAt: !2119)
!2127 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2128 = !DILocation(line: 188, column: 13, scope: !2129, inlinedAt: !2119)
!2129 = distinct !DILexicalBlock(scope: !2112, file: !100, line: 188, column: 7)
!2130 = !DILocation(line: 188, column: 7, scope: !2112, inlinedAt: !2119)
!2131 = !DILocation(line: 189, column: 5, scope: !2129, inlinedAt: !2119)
!2132 = !{!2133}
!2133 = distinct !{!2133, !2134, !"quoting_options_from_style: argument 0"}
!2134 = distinct !{!2134, !"quoting_options_from_style"}
!2135 = !DILocation(line: 191, column: 10, scope: !2112, inlinedAt: !2119)
!2136 = !DILocation(line: 192, column: 1, scope: !2112, inlinedAt: !2119)
!2137 = !DILocation(line: 949, column: 10, scope: !2103)
!2138 = !DILocation(line: 950, column: 1, scope: !2103)
!2139 = !DILocation(line: 949, column: 3, scope: !2103)
!2140 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2141, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!50, !25, !58, !6, !94}
!2143 = !{!2144, !2145, !2146, !2147, !2148}
!2144 = !DILocalVariable(name: "n", arg: 1, scope: !2140, file: !100, line: 953, type: !25)
!2145 = !DILocalVariable(name: "s", arg: 2, scope: !2140, file: !100, line: 953, type: !58)
!2146 = !DILocalVariable(name: "arg", arg: 3, scope: !2140, file: !100, line: 954, type: !6)
!2147 = !DILocalVariable(name: "argsize", arg: 4, scope: !2140, file: !100, line: 954, type: !94)
!2148 = !DILocalVariable(name: "o", scope: !2140, file: !100, line: 956, type: !959)
!2149 = !DILocation(line: 187, column: 26, scope: !2112, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 956, column: 36, scope: !2140)
!2151 = !DILocation(line: 953, column: 27, scope: !2140)
!2152 = !DILocation(line: 953, column: 49, scope: !2140)
!2153 = !DILocation(line: 954, column: 35, scope: !2140)
!2154 = !DILocation(line: 954, column: 47, scope: !2140)
!2155 = !DILocation(line: 956, column: 3, scope: !2140)
!2156 = !DILocation(line: 956, column: 32, scope: !2140)
!2157 = !DILocation(line: 185, column: 48, scope: !2112, inlinedAt: !2150)
!2158 = !DILocation(line: 187, column: 3, scope: !2112, inlinedAt: !2150)
!2159 = !DILocation(line: 188, column: 13, scope: !2129, inlinedAt: !2150)
!2160 = !DILocation(line: 188, column: 7, scope: !2112, inlinedAt: !2150)
!2161 = !DILocation(line: 189, column: 5, scope: !2129, inlinedAt: !2150)
!2162 = !{!2163}
!2163 = distinct !{!2163, !2164, !"quoting_options_from_style: argument 0"}
!2164 = distinct !{!2164, !"quoting_options_from_style"}
!2165 = !DILocation(line: 191, column: 10, scope: !2112, inlinedAt: !2150)
!2166 = !DILocation(line: 192, column: 1, scope: !2112, inlinedAt: !2150)
!2167 = !DILocation(line: 957, column: 10, scope: !2140)
!2168 = !DILocation(line: 958, column: 1, scope: !2140)
!2169 = !DILocation(line: 957, column: 3, scope: !2140)
!2170 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2171, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!50, !58, !6}
!2173 = !{!2174, !2175}
!2174 = !DILocalVariable(name: "s", arg: 1, scope: !2170, file: !100, line: 961, type: !58)
!2175 = !DILocalVariable(name: "arg", arg: 2, scope: !2170, file: !100, line: 961, type: !6)
!2176 = !DILocation(line: 187, column: 26, scope: !2112, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 948, column: 36, scope: !2103, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 963, column: 10, scope: !2170)
!2179 = !DILocation(line: 961, column: 36, scope: !2170)
!2180 = !DILocation(line: 961, column: 51, scope: !2170)
!2181 = !DILocation(line: 946, column: 23, scope: !2103, inlinedAt: !2178)
!2182 = !DILocation(line: 946, column: 45, scope: !2103, inlinedAt: !2178)
!2183 = !DILocation(line: 946, column: 60, scope: !2103, inlinedAt: !2178)
!2184 = !DILocation(line: 948, column: 3, scope: !2103, inlinedAt: !2178)
!2185 = !DILocation(line: 948, column: 32, scope: !2103, inlinedAt: !2178)
!2186 = !DILocation(line: 185, column: 48, scope: !2112, inlinedAt: !2177)
!2187 = !DILocation(line: 187, column: 3, scope: !2112, inlinedAt: !2177)
!2188 = !DILocation(line: 188, column: 13, scope: !2129, inlinedAt: !2177)
!2189 = !DILocation(line: 188, column: 7, scope: !2112, inlinedAt: !2177)
!2190 = !DILocation(line: 189, column: 5, scope: !2129, inlinedAt: !2177)
!2191 = !{!2192}
!2192 = distinct !{!2192, !2193, !"quoting_options_from_style: argument 0"}
!2193 = distinct !{!2193, !"quoting_options_from_style"}
!2194 = !DILocation(line: 191, column: 10, scope: !2112, inlinedAt: !2177)
!2195 = !DILocation(line: 192, column: 1, scope: !2112, inlinedAt: !2177)
!2196 = !DILocation(line: 949, column: 10, scope: !2103, inlinedAt: !2178)
!2197 = !DILocation(line: 950, column: 1, scope: !2103, inlinedAt: !2178)
!2198 = !DILocation(line: 963, column: 3, scope: !2170)
!2199 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2200, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!50, !58, !6, !94}
!2202 = !{!2203, !2204, !2205}
!2203 = !DILocalVariable(name: "s", arg: 1, scope: !2199, file: !100, line: 967, type: !58)
!2204 = !DILocalVariable(name: "arg", arg: 2, scope: !2199, file: !100, line: 967, type: !6)
!2205 = !DILocalVariable(name: "argsize", arg: 3, scope: !2199, file: !100, line: 967, type: !94)
!2206 = !DILocation(line: 187, column: 26, scope: !2112, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 956, column: 36, scope: !2140, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 969, column: 10, scope: !2199)
!2209 = !DILocation(line: 967, column: 40, scope: !2199)
!2210 = !DILocation(line: 967, column: 55, scope: !2199)
!2211 = !DILocation(line: 967, column: 67, scope: !2199)
!2212 = !DILocation(line: 953, column: 27, scope: !2140, inlinedAt: !2208)
!2213 = !DILocation(line: 953, column: 49, scope: !2140, inlinedAt: !2208)
!2214 = !DILocation(line: 954, column: 35, scope: !2140, inlinedAt: !2208)
!2215 = !DILocation(line: 954, column: 47, scope: !2140, inlinedAt: !2208)
!2216 = !DILocation(line: 956, column: 3, scope: !2140, inlinedAt: !2208)
!2217 = !DILocation(line: 956, column: 32, scope: !2140, inlinedAt: !2208)
!2218 = !DILocation(line: 185, column: 48, scope: !2112, inlinedAt: !2207)
!2219 = !DILocation(line: 187, column: 3, scope: !2112, inlinedAt: !2207)
!2220 = !DILocation(line: 188, column: 13, scope: !2129, inlinedAt: !2207)
!2221 = !DILocation(line: 188, column: 7, scope: !2112, inlinedAt: !2207)
!2222 = !DILocation(line: 189, column: 5, scope: !2129, inlinedAt: !2207)
!2223 = !{!2224}
!2224 = distinct !{!2224, !2225, !"quoting_options_from_style: argument 0"}
!2225 = distinct !{!2225, !"quoting_options_from_style"}
!2226 = !DILocation(line: 191, column: 10, scope: !2112, inlinedAt: !2207)
!2227 = !DILocation(line: 192, column: 1, scope: !2112, inlinedAt: !2207)
!2228 = !DILocation(line: 957, column: 10, scope: !2140, inlinedAt: !2208)
!2229 = !DILocation(line: 958, column: 1, scope: !2140, inlinedAt: !2208)
!2230 = !DILocation(line: 969, column: 3, scope: !2199)
!2231 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2232, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!50, !6, !94, !8}
!2234 = !{!2235, !2236, !2237, !2238}
!2235 = !DILocalVariable(name: "arg", arg: 1, scope: !2231, file: !100, line: 973, type: !6)
!2236 = !DILocalVariable(name: "argsize", arg: 2, scope: !2231, file: !100, line: 973, type: !94)
!2237 = !DILocalVariable(name: "ch", arg: 3, scope: !2231, file: !100, line: 973, type: !8)
!2238 = !DILocalVariable(name: "options", scope: !2231, file: !100, line: 975, type: !107)
!2239 = !DILocation(line: 973, column: 32, scope: !2231)
!2240 = !DILocation(line: 973, column: 44, scope: !2231)
!2241 = !DILocation(line: 973, column: 58, scope: !2231)
!2242 = !DILocation(line: 975, column: 3, scope: !2231)
!2243 = !DILocation(line: 976, column: 13, scope: !2231)
!2244 = !{i64 0, i64 4, !722, i64 4, i64 4, !677, i64 8, i64 32, !722, i64 40, i64 8, !610, i64 48, i64 8, !610}
!2245 = !DILocation(line: 975, column: 26, scope: !2231)
!2246 = !DILocation(line: 144, column: 43, scope: !980, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 977, column: 3, scope: !2231)
!2248 = !DILocation(line: 144, column: 51, scope: !980, inlinedAt: !2247)
!2249 = !DILocation(line: 144, column: 58, scope: !980, inlinedAt: !2247)
!2250 = !DILocation(line: 146, column: 17, scope: !980, inlinedAt: !2247)
!2251 = !DILocation(line: 148, column: 62, scope: !980, inlinedAt: !2247)
!2252 = !DILocation(line: 148, column: 57, scope: !980, inlinedAt: !2247)
!2253 = !DILocation(line: 147, column: 17, scope: !980, inlinedAt: !2247)
!2254 = !DILocation(line: 149, column: 18, scope: !980, inlinedAt: !2247)
!2255 = !DILocation(line: 149, column: 15, scope: !980, inlinedAt: !2247)
!2256 = !DILocation(line: 149, column: 7, scope: !980, inlinedAt: !2247)
!2257 = !DILocation(line: 150, column: 12, scope: !980, inlinedAt: !2247)
!2258 = !DILocation(line: 150, column: 15, scope: !980, inlinedAt: !2247)
!2259 = !DILocation(line: 150, column: 25, scope: !980, inlinedAt: !2247)
!2260 = !DILocation(line: 150, column: 7, scope: !980, inlinedAt: !2247)
!2261 = !DILocation(line: 151, column: 18, scope: !980, inlinedAt: !2247)
!2262 = !DILocation(line: 151, column: 23, scope: !980, inlinedAt: !2247)
!2263 = !DILocation(line: 151, column: 6, scope: !980, inlinedAt: !2247)
!2264 = !DILocation(line: 978, column: 10, scope: !2231)
!2265 = !DILocation(line: 979, column: 1, scope: !2231)
!2266 = !DILocation(line: 978, column: 3, scope: !2231)
!2267 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2268, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!50, !6, !8}
!2270 = !{!2271, !2272}
!2271 = !DILocalVariable(name: "arg", arg: 1, scope: !2267, file: !100, line: 982, type: !6)
!2272 = !DILocalVariable(name: "ch", arg: 2, scope: !2267, file: !100, line: 982, type: !8)
!2273 = !DILocation(line: 982, column: 28, scope: !2267)
!2274 = !DILocation(line: 982, column: 38, scope: !2267)
!2275 = !DILocation(line: 973, column: 32, scope: !2231, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 984, column: 10, scope: !2267)
!2277 = !DILocation(line: 973, column: 44, scope: !2231, inlinedAt: !2276)
!2278 = !DILocation(line: 973, column: 58, scope: !2231, inlinedAt: !2276)
!2279 = !DILocation(line: 975, column: 3, scope: !2231, inlinedAt: !2276)
!2280 = !DILocation(line: 976, column: 13, scope: !2231, inlinedAt: !2276)
!2281 = !DILocation(line: 975, column: 26, scope: !2231, inlinedAt: !2276)
!2282 = !DILocation(line: 144, column: 43, scope: !980, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 977, column: 3, scope: !2231, inlinedAt: !2276)
!2284 = !DILocation(line: 144, column: 51, scope: !980, inlinedAt: !2283)
!2285 = !DILocation(line: 144, column: 58, scope: !980, inlinedAt: !2283)
!2286 = !DILocation(line: 146, column: 17, scope: !980, inlinedAt: !2283)
!2287 = !DILocation(line: 148, column: 62, scope: !980, inlinedAt: !2283)
!2288 = !DILocation(line: 148, column: 57, scope: !980, inlinedAt: !2283)
!2289 = !DILocation(line: 147, column: 17, scope: !980, inlinedAt: !2283)
!2290 = !DILocation(line: 149, column: 18, scope: !980, inlinedAt: !2283)
!2291 = !DILocation(line: 149, column: 15, scope: !980, inlinedAt: !2283)
!2292 = !DILocation(line: 149, column: 7, scope: !980, inlinedAt: !2283)
!2293 = !DILocation(line: 150, column: 12, scope: !980, inlinedAt: !2283)
!2294 = !DILocation(line: 150, column: 15, scope: !980, inlinedAt: !2283)
!2295 = !DILocation(line: 150, column: 25, scope: !980, inlinedAt: !2283)
!2296 = !DILocation(line: 150, column: 7, scope: !980, inlinedAt: !2283)
!2297 = !DILocation(line: 151, column: 18, scope: !980, inlinedAt: !2283)
!2298 = !DILocation(line: 151, column: 23, scope: !980, inlinedAt: !2283)
!2299 = !DILocation(line: 151, column: 6, scope: !980, inlinedAt: !2283)
!2300 = !DILocation(line: 978, column: 10, scope: !2231, inlinedAt: !2276)
!2301 = !DILocation(line: 979, column: 1, scope: !2231, inlinedAt: !2276)
!2302 = !DILocation(line: 984, column: 3, scope: !2267)
!2303 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !2079, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2304)
!2304 = !{!2305}
!2305 = !DILocalVariable(name: "arg", arg: 1, scope: !2303, file: !100, line: 988, type: !6)
!2306 = !DILocation(line: 988, column: 29, scope: !2303)
!2307 = !DILocation(line: 982, column: 28, scope: !2267, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 990, column: 10, scope: !2303)
!2309 = !DILocation(line: 982, column: 38, scope: !2267, inlinedAt: !2308)
!2310 = !DILocation(line: 973, column: 32, scope: !2231, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 984, column: 10, scope: !2267, inlinedAt: !2308)
!2312 = !DILocation(line: 973, column: 44, scope: !2231, inlinedAt: !2311)
!2313 = !DILocation(line: 973, column: 58, scope: !2231, inlinedAt: !2311)
!2314 = !DILocation(line: 975, column: 3, scope: !2231, inlinedAt: !2311)
!2315 = !DILocation(line: 976, column: 13, scope: !2231, inlinedAt: !2311)
!2316 = !DILocation(line: 975, column: 26, scope: !2231, inlinedAt: !2311)
!2317 = !DILocation(line: 144, column: 43, scope: !980, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 977, column: 3, scope: !2231, inlinedAt: !2311)
!2319 = !DILocation(line: 144, column: 51, scope: !980, inlinedAt: !2318)
!2320 = !DILocation(line: 144, column: 58, scope: !980, inlinedAt: !2318)
!2321 = !DILocation(line: 146, column: 17, scope: !980, inlinedAt: !2318)
!2322 = !DILocation(line: 148, column: 57, scope: !980, inlinedAt: !2318)
!2323 = !DILocation(line: 147, column: 17, scope: !980, inlinedAt: !2318)
!2324 = !DILocation(line: 149, column: 7, scope: !980, inlinedAt: !2318)
!2325 = !DILocation(line: 150, column: 12, scope: !980, inlinedAt: !2318)
!2326 = !DILocation(line: 151, column: 6, scope: !980, inlinedAt: !2318)
!2327 = !DILocation(line: 978, column: 10, scope: !2231, inlinedAt: !2311)
!2328 = !DILocation(line: 979, column: 1, scope: !2231, inlinedAt: !2311)
!2329 = !DILocation(line: 990, column: 3, scope: !2303)
!2330 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !2090, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2331)
!2331 = !{!2332, !2333}
!2332 = !DILocalVariable(name: "arg", arg: 1, scope: !2330, file: !100, line: 994, type: !6)
!2333 = !DILocalVariable(name: "argsize", arg: 2, scope: !2330, file: !100, line: 994, type: !94)
!2334 = !DILocation(line: 994, column: 33, scope: !2330)
!2335 = !DILocation(line: 994, column: 45, scope: !2330)
!2336 = !DILocation(line: 973, column: 32, scope: !2231, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 996, column: 10, scope: !2330)
!2338 = !DILocation(line: 973, column: 44, scope: !2231, inlinedAt: !2337)
!2339 = !DILocation(line: 973, column: 58, scope: !2231, inlinedAt: !2337)
!2340 = !DILocation(line: 975, column: 3, scope: !2231, inlinedAt: !2337)
!2341 = !DILocation(line: 976, column: 13, scope: !2231, inlinedAt: !2337)
!2342 = !DILocation(line: 975, column: 26, scope: !2231, inlinedAt: !2337)
!2343 = !DILocation(line: 144, column: 43, scope: !980, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 977, column: 3, scope: !2231, inlinedAt: !2337)
!2345 = !DILocation(line: 144, column: 51, scope: !980, inlinedAt: !2344)
!2346 = !DILocation(line: 144, column: 58, scope: !980, inlinedAt: !2344)
!2347 = !DILocation(line: 146, column: 17, scope: !980, inlinedAt: !2344)
!2348 = !DILocation(line: 148, column: 57, scope: !980, inlinedAt: !2344)
!2349 = !DILocation(line: 147, column: 17, scope: !980, inlinedAt: !2344)
!2350 = !DILocation(line: 149, column: 7, scope: !980, inlinedAt: !2344)
!2351 = !DILocation(line: 150, column: 12, scope: !980, inlinedAt: !2344)
!2352 = !DILocation(line: 151, column: 6, scope: !980, inlinedAt: !2344)
!2353 = !DILocation(line: 978, column: 10, scope: !2231, inlinedAt: !2337)
!2354 = !DILocation(line: 979, column: 1, scope: !2231, inlinedAt: !2337)
!2355 = !DILocation(line: 996, column: 3, scope: !2330)
!2356 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !2104, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2357)
!2357 = !{!2358, !2359, !2360, !2361}
!2358 = !DILocalVariable(name: "n", arg: 1, scope: !2356, file: !100, line: 1000, type: !25)
!2359 = !DILocalVariable(name: "s", arg: 2, scope: !2356, file: !100, line: 1000, type: !58)
!2360 = !DILocalVariable(name: "arg", arg: 3, scope: !2356, file: !100, line: 1000, type: !6)
!2361 = !DILocalVariable(name: "options", scope: !2356, file: !100, line: 1002, type: !107)
!2362 = !DILocation(line: 187, column: 26, scope: !2112, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 1003, column: 13, scope: !2356)
!2364 = !DILocation(line: 1000, column: 29, scope: !2356)
!2365 = !DILocation(line: 1000, column: 51, scope: !2356)
!2366 = !DILocation(line: 1000, column: 66, scope: !2356)
!2367 = !DILocation(line: 1002, column: 3, scope: !2356)
!2368 = !DILocation(line: 185, column: 48, scope: !2112, inlinedAt: !2363)
!2369 = !DILocation(line: 187, column: 3, scope: !2112, inlinedAt: !2363)
!2370 = !DILocation(line: 188, column: 13, scope: !2129, inlinedAt: !2363)
!2371 = !DILocation(line: 188, column: 7, scope: !2112, inlinedAt: !2363)
!2372 = !DILocation(line: 189, column: 5, scope: !2129, inlinedAt: !2363)
!2373 = !{!2374}
!2374 = distinct !{!2374, !2375, !"quoting_options_from_style: argument 0"}
!2375 = distinct !{!2375, !"quoting_options_from_style"}
!2376 = !DILocation(line: 191, column: 10, scope: !2112, inlinedAt: !2363)
!2377 = !DILocation(line: 192, column: 1, scope: !2112, inlinedAt: !2363)
!2378 = !DILocation(line: 1003, column: 13, scope: !2356)
!2379 = !DILocation(line: 1002, column: 26, scope: !2356)
!2380 = !DILocation(line: 144, column: 43, scope: !980, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 1004, column: 3, scope: !2356)
!2382 = !DILocation(line: 144, column: 51, scope: !980, inlinedAt: !2381)
!2383 = !DILocation(line: 144, column: 58, scope: !980, inlinedAt: !2381)
!2384 = !DILocation(line: 146, column: 17, scope: !980, inlinedAt: !2381)
!2385 = !DILocation(line: 148, column: 57, scope: !980, inlinedAt: !2381)
!2386 = !DILocation(line: 147, column: 17, scope: !980, inlinedAt: !2381)
!2387 = !DILocation(line: 149, column: 7, scope: !980, inlinedAt: !2381)
!2388 = !DILocation(line: 150, column: 12, scope: !980, inlinedAt: !2381)
!2389 = !DILocation(line: 151, column: 6, scope: !980, inlinedAt: !2381)
!2390 = !DILocation(line: 1005, column: 10, scope: !2356)
!2391 = !DILocation(line: 1006, column: 1, scope: !2356)
!2392 = !DILocation(line: 1005, column: 3, scope: !2356)
!2393 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2394, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!50, !25, !6, !6, !6}
!2396 = !{!2397, !2398, !2399, !2400}
!2397 = !DILocalVariable(name: "n", arg: 1, scope: !2393, file: !100, line: 1009, type: !25)
!2398 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2393, file: !100, line: 1009, type: !6)
!2399 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2393, file: !100, line: 1010, type: !6)
!2400 = !DILocalVariable(name: "arg", arg: 4, scope: !2393, file: !100, line: 1010, type: !6)
!2401 = !DILocation(line: 1009, column: 24, scope: !2393)
!2402 = !DILocation(line: 1009, column: 39, scope: !2393)
!2403 = !DILocation(line: 1010, column: 32, scope: !2393)
!2404 = !DILocation(line: 1010, column: 57, scope: !2393)
!2405 = !DILocalVariable(name: "n", arg: 1, scope: !2406, file: !100, line: 1017, type: !25)
!2406 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2407, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!50, !25, !6, !6, !6, !94}
!2409 = !{!2405, !2410, !2411, !2412, !2413, !2414}
!2410 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2406, file: !100, line: 1017, type: !6)
!2411 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2406, file: !100, line: 1018, type: !6)
!2412 = !DILocalVariable(name: "arg", arg: 4, scope: !2406, file: !100, line: 1019, type: !6)
!2413 = !DILocalVariable(name: "argsize", arg: 5, scope: !2406, file: !100, line: 1019, type: !94)
!2414 = !DILocalVariable(name: "o", scope: !2406, file: !100, line: 1021, type: !107)
!2415 = !DILocation(line: 1017, column: 28, scope: !2406, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 1012, column: 10, scope: !2393)
!2417 = !DILocation(line: 1017, column: 43, scope: !2406, inlinedAt: !2416)
!2418 = !DILocation(line: 1018, column: 36, scope: !2406, inlinedAt: !2416)
!2419 = !DILocation(line: 1019, column: 36, scope: !2406, inlinedAt: !2416)
!2420 = !DILocation(line: 1019, column: 48, scope: !2406, inlinedAt: !2416)
!2421 = !DILocation(line: 1021, column: 3, scope: !2406, inlinedAt: !2416)
!2422 = !DILocation(line: 1021, column: 30, scope: !2406, inlinedAt: !2416)
!2423 = !DILocation(line: 1021, column: 26, scope: !2406, inlinedAt: !2416)
!2424 = !DILocation(line: 171, column: 45, scope: !1029, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 1022, column: 3, scope: !2406, inlinedAt: !2416)
!2426 = !DILocation(line: 172, column: 33, scope: !1029, inlinedAt: !2425)
!2427 = !DILocation(line: 172, column: 57, scope: !1029, inlinedAt: !2425)
!2428 = !DILocation(line: 176, column: 6, scope: !1029, inlinedAt: !2425)
!2429 = !DILocation(line: 176, column: 12, scope: !1029, inlinedAt: !2425)
!2430 = !DILocation(line: 177, column: 8, scope: !1045, inlinedAt: !2425)
!2431 = !DILocation(line: 177, column: 23, scope: !1045, inlinedAt: !2425)
!2432 = !DILocation(line: 177, column: 19, scope: !1045, inlinedAt: !2425)
!2433 = !DILocation(line: 178, column: 5, scope: !1045, inlinedAt: !2425)
!2434 = !DILocation(line: 179, column: 6, scope: !1029, inlinedAt: !2425)
!2435 = !DILocation(line: 179, column: 17, scope: !1029, inlinedAt: !2425)
!2436 = !DILocation(line: 180, column: 6, scope: !1029, inlinedAt: !2425)
!2437 = !DILocation(line: 180, column: 18, scope: !1029, inlinedAt: !2425)
!2438 = !DILocation(line: 1023, column: 10, scope: !2406, inlinedAt: !2416)
!2439 = !DILocation(line: 1024, column: 1, scope: !2406, inlinedAt: !2416)
!2440 = !DILocation(line: 1012, column: 3, scope: !2393)
!2441 = !DILocation(line: 1017, column: 28, scope: !2406)
!2442 = !DILocation(line: 1017, column: 43, scope: !2406)
!2443 = !DILocation(line: 1018, column: 36, scope: !2406)
!2444 = !DILocation(line: 1019, column: 36, scope: !2406)
!2445 = !DILocation(line: 1019, column: 48, scope: !2406)
!2446 = !DILocation(line: 1021, column: 3, scope: !2406)
!2447 = !DILocation(line: 1021, column: 30, scope: !2406)
!2448 = !DILocation(line: 1021, column: 26, scope: !2406)
!2449 = !DILocation(line: 171, column: 45, scope: !1029, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 1022, column: 3, scope: !2406)
!2451 = !DILocation(line: 172, column: 33, scope: !1029, inlinedAt: !2450)
!2452 = !DILocation(line: 172, column: 57, scope: !1029, inlinedAt: !2450)
!2453 = !DILocation(line: 176, column: 6, scope: !1029, inlinedAt: !2450)
!2454 = !DILocation(line: 176, column: 12, scope: !1029, inlinedAt: !2450)
!2455 = !DILocation(line: 177, column: 8, scope: !1045, inlinedAt: !2450)
!2456 = !DILocation(line: 177, column: 23, scope: !1045, inlinedAt: !2450)
!2457 = !DILocation(line: 177, column: 19, scope: !1045, inlinedAt: !2450)
!2458 = !DILocation(line: 178, column: 5, scope: !1045, inlinedAt: !2450)
!2459 = !DILocation(line: 179, column: 6, scope: !1029, inlinedAt: !2450)
!2460 = !DILocation(line: 179, column: 17, scope: !1029, inlinedAt: !2450)
!2461 = !DILocation(line: 180, column: 6, scope: !1029, inlinedAt: !2450)
!2462 = !DILocation(line: 180, column: 18, scope: !1029, inlinedAt: !2450)
!2463 = !DILocation(line: 1023, column: 10, scope: !2406)
!2464 = !DILocation(line: 1024, column: 1, scope: !2406)
!2465 = !DILocation(line: 1023, column: 3, scope: !2406)
!2466 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2467, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!50, !6, !6, !6}
!2469 = !{!2470, !2471, !2472}
!2470 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2466, file: !100, line: 1027, type: !6)
!2471 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2466, file: !100, line: 1027, type: !6)
!2472 = !DILocalVariable(name: "arg", arg: 3, scope: !2466, file: !100, line: 1028, type: !6)
!2473 = !DILocation(line: 1027, column: 30, scope: !2466)
!2474 = !DILocation(line: 1027, column: 54, scope: !2466)
!2475 = !DILocation(line: 1028, column: 30, scope: !2466)
!2476 = !DILocation(line: 1009, column: 24, scope: !2393, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 1030, column: 10, scope: !2466)
!2478 = !DILocation(line: 1009, column: 39, scope: !2393, inlinedAt: !2477)
!2479 = !DILocation(line: 1010, column: 32, scope: !2393, inlinedAt: !2477)
!2480 = !DILocation(line: 1010, column: 57, scope: !2393, inlinedAt: !2477)
!2481 = !DILocation(line: 1017, column: 28, scope: !2406, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 1012, column: 10, scope: !2393, inlinedAt: !2477)
!2483 = !DILocation(line: 1017, column: 43, scope: !2406, inlinedAt: !2482)
!2484 = !DILocation(line: 1018, column: 36, scope: !2406, inlinedAt: !2482)
!2485 = !DILocation(line: 1019, column: 36, scope: !2406, inlinedAt: !2482)
!2486 = !DILocation(line: 1019, column: 48, scope: !2406, inlinedAt: !2482)
!2487 = !DILocation(line: 1021, column: 3, scope: !2406, inlinedAt: !2482)
!2488 = !DILocation(line: 1021, column: 30, scope: !2406, inlinedAt: !2482)
!2489 = !DILocation(line: 1021, column: 26, scope: !2406, inlinedAt: !2482)
!2490 = !DILocation(line: 171, column: 45, scope: !1029, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 1022, column: 3, scope: !2406, inlinedAt: !2482)
!2492 = !DILocation(line: 172, column: 33, scope: !1029, inlinedAt: !2491)
!2493 = !DILocation(line: 172, column: 57, scope: !1029, inlinedAt: !2491)
!2494 = !DILocation(line: 176, column: 6, scope: !1029, inlinedAt: !2491)
!2495 = !DILocation(line: 176, column: 12, scope: !1029, inlinedAt: !2491)
!2496 = !DILocation(line: 177, column: 8, scope: !1045, inlinedAt: !2491)
!2497 = !DILocation(line: 177, column: 23, scope: !1045, inlinedAt: !2491)
!2498 = !DILocation(line: 177, column: 19, scope: !1045, inlinedAt: !2491)
!2499 = !DILocation(line: 178, column: 5, scope: !1045, inlinedAt: !2491)
!2500 = !DILocation(line: 179, column: 6, scope: !1029, inlinedAt: !2491)
!2501 = !DILocation(line: 179, column: 17, scope: !1029, inlinedAt: !2491)
!2502 = !DILocation(line: 180, column: 6, scope: !1029, inlinedAt: !2491)
!2503 = !DILocation(line: 180, column: 18, scope: !1029, inlinedAt: !2491)
!2504 = !DILocation(line: 1023, column: 10, scope: !2406, inlinedAt: !2482)
!2505 = !DILocation(line: 1024, column: 1, scope: !2406, inlinedAt: !2482)
!2506 = !DILocation(line: 1030, column: 3, scope: !2466)
!2507 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2508, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!50, !6, !6, !6, !94}
!2510 = !{!2511, !2512, !2513, !2514}
!2511 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2507, file: !100, line: 1034, type: !6)
!2512 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2507, file: !100, line: 1034, type: !6)
!2513 = !DILocalVariable(name: "arg", arg: 3, scope: !2507, file: !100, line: 1035, type: !6)
!2514 = !DILocalVariable(name: "argsize", arg: 4, scope: !2507, file: !100, line: 1035, type: !94)
!2515 = !DILocation(line: 1034, column: 34, scope: !2507)
!2516 = !DILocation(line: 1034, column: 58, scope: !2507)
!2517 = !DILocation(line: 1035, column: 34, scope: !2507)
!2518 = !DILocation(line: 1035, column: 46, scope: !2507)
!2519 = !DILocation(line: 1017, column: 28, scope: !2406, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 1037, column: 10, scope: !2507)
!2521 = !DILocation(line: 1017, column: 43, scope: !2406, inlinedAt: !2520)
!2522 = !DILocation(line: 1018, column: 36, scope: !2406, inlinedAt: !2520)
!2523 = !DILocation(line: 1019, column: 36, scope: !2406, inlinedAt: !2520)
!2524 = !DILocation(line: 1019, column: 48, scope: !2406, inlinedAt: !2520)
!2525 = !DILocation(line: 1021, column: 3, scope: !2406, inlinedAt: !2520)
!2526 = !DILocation(line: 1021, column: 30, scope: !2406, inlinedAt: !2520)
!2527 = !DILocation(line: 1021, column: 26, scope: !2406, inlinedAt: !2520)
!2528 = !DILocation(line: 171, column: 45, scope: !1029, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 1022, column: 3, scope: !2406, inlinedAt: !2520)
!2530 = !DILocation(line: 172, column: 33, scope: !1029, inlinedAt: !2529)
!2531 = !DILocation(line: 172, column: 57, scope: !1029, inlinedAt: !2529)
!2532 = !DILocation(line: 176, column: 6, scope: !1029, inlinedAt: !2529)
!2533 = !DILocation(line: 176, column: 12, scope: !1029, inlinedAt: !2529)
!2534 = !DILocation(line: 177, column: 8, scope: !1045, inlinedAt: !2529)
!2535 = !DILocation(line: 177, column: 23, scope: !1045, inlinedAt: !2529)
!2536 = !DILocation(line: 177, column: 19, scope: !1045, inlinedAt: !2529)
!2537 = !DILocation(line: 178, column: 5, scope: !1045, inlinedAt: !2529)
!2538 = !DILocation(line: 179, column: 6, scope: !1029, inlinedAt: !2529)
!2539 = !DILocation(line: 179, column: 17, scope: !1029, inlinedAt: !2529)
!2540 = !DILocation(line: 180, column: 6, scope: !1029, inlinedAt: !2529)
!2541 = !DILocation(line: 180, column: 18, scope: !1029, inlinedAt: !2529)
!2542 = !DILocation(line: 1023, column: 10, scope: !2406, inlinedAt: !2520)
!2543 = !DILocation(line: 1024, column: 1, scope: !2406, inlinedAt: !2520)
!2544 = !DILocation(line: 1037, column: 3, scope: !2507)
!2545 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2546, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!6, !25, !6, !94}
!2548 = !{!2549, !2550, !2551}
!2549 = !DILocalVariable(name: "n", arg: 1, scope: !2545, file: !100, line: 1052, type: !25)
!2550 = !DILocalVariable(name: "arg", arg: 2, scope: !2545, file: !100, line: 1052, type: !6)
!2551 = !DILocalVariable(name: "argsize", arg: 3, scope: !2545, file: !100, line: 1052, type: !94)
!2552 = !DILocation(line: 1052, column: 18, scope: !2545)
!2553 = !DILocation(line: 1052, column: 33, scope: !2545)
!2554 = !DILocation(line: 1052, column: 45, scope: !2545)
!2555 = !DILocation(line: 1054, column: 10, scope: !2545)
!2556 = !DILocation(line: 1054, column: 3, scope: !2545)
!2557 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2558, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!6, !6, !94}
!2560 = !{!2561, !2562}
!2561 = !DILocalVariable(name: "arg", arg: 1, scope: !2557, file: !100, line: 1058, type: !6)
!2562 = !DILocalVariable(name: "argsize", arg: 2, scope: !2557, file: !100, line: 1058, type: !94)
!2563 = !DILocation(line: 1058, column: 24, scope: !2557)
!2564 = !DILocation(line: 1058, column: 36, scope: !2557)
!2565 = !DILocation(line: 1052, column: 18, scope: !2545, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1060, column: 10, scope: !2557)
!2567 = !DILocation(line: 1052, column: 33, scope: !2545, inlinedAt: !2566)
!2568 = !DILocation(line: 1052, column: 45, scope: !2545, inlinedAt: !2566)
!2569 = !DILocation(line: 1054, column: 10, scope: !2545, inlinedAt: !2566)
!2570 = !DILocation(line: 1060, column: 3, scope: !2557)
!2571 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2572, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!6, !25, !6}
!2574 = !{!2575, !2576}
!2575 = !DILocalVariable(name: "n", arg: 1, scope: !2571, file: !100, line: 1064, type: !25)
!2576 = !DILocalVariable(name: "arg", arg: 2, scope: !2571, file: !100, line: 1064, type: !6)
!2577 = !DILocation(line: 1064, column: 14, scope: !2571)
!2578 = !DILocation(line: 1064, column: 29, scope: !2571)
!2579 = !DILocation(line: 1052, column: 18, scope: !2545, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 1066, column: 10, scope: !2571)
!2581 = !DILocation(line: 1052, column: 33, scope: !2545, inlinedAt: !2580)
!2582 = !DILocation(line: 1052, column: 45, scope: !2545, inlinedAt: !2580)
!2583 = !DILocation(line: 1054, column: 10, scope: !2545, inlinedAt: !2580)
!2584 = !DILocation(line: 1066, column: 3, scope: !2571)
!2585 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2586, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!6, !6}
!2588 = !{!2589}
!2589 = !DILocalVariable(name: "arg", arg: 1, scope: !2585, file: !100, line: 1070, type: !6)
!2590 = !DILocation(line: 1070, column: 20, scope: !2585)
!2591 = !DILocation(line: 1064, column: 14, scope: !2571, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 1072, column: 10, scope: !2585)
!2593 = !DILocation(line: 1064, column: 29, scope: !2571, inlinedAt: !2592)
!2594 = !DILocation(line: 1052, column: 18, scope: !2545, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 1066, column: 10, scope: !2571, inlinedAt: !2592)
!2596 = !DILocation(line: 1052, column: 33, scope: !2545, inlinedAt: !2595)
!2597 = !DILocation(line: 1052, column: 45, scope: !2545, inlinedAt: !2595)
!2598 = !DILocation(line: 1054, column: 10, scope: !2545, inlinedAt: !2595)
!2599 = !DILocation(line: 1072, column: 3, scope: !2585)
!2600 = !DILocation(line: 56, column: 14, scope: !530)
!2601 = !DILocation(line: 56, column: 30, scope: !530)
!2602 = !DILocation(line: 56, column: 42, scope: !530)
!2603 = !DILocation(line: 66, column: 24, scope: !540)
!2604 = !DILocation(line: 66, column: 15, scope: !540)
!2605 = !DILocation(line: 68, column: 13, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !540, file: !529, line: 68, column: 11)
!2607 = !DILocation(line: 68, column: 11, scope: !540)
!2608 = !DILocation(line: 70, column: 16, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !529, line: 70, column: 16)
!2610 = distinct !{!2610, !2611, !2612}
!2611 = !DILocation(line: 64, column: 3, scope: !542)
!2612 = !DILocation(line: 76, column: 5, scope: !542)
!2613 = !DILocation(line: 70, column: 16, scope: !2606)
!2614 = !DILocation(line: 72, column: 22, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2609, file: !529, line: 72, column: 16)
!2616 = !DILocation(line: 72, column: 54, scope: !2615)
!2617 = !DILocation(line: 72, column: 32, scope: !2615)
!2618 = !DILocation(line: 77, column: 1, scope: !530)
!2619 = distinct !DISubprogram(name: "version_etc_arn", scope: !554, file: !554, line: 62, type: !2620, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !2674)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{null, !2622, !6, !6, !6, !2673, !94}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2624, line: 7, baseType: !2625)
!2624 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2626, line: 241, size: 1728, elements: !2627)
!2626 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2648, !2649, !2650, !2651, !2653, !2654, !2656, !2658, !2661, !2663, !2664, !2665, !2666, !2667, !2668, !2669}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2625, file: !2626, line: 242, baseType: !25, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2625, file: !2626, line: 247, baseType: !50, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2625, file: !2626, line: 248, baseType: !50, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2625, file: !2626, line: 249, baseType: !50, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2625, file: !2626, line: 250, baseType: !50, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2625, file: !2626, line: 251, baseType: !50, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2625, file: !2626, line: 252, baseType: !50, size: 64, offset: 384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2625, file: !2626, line: 253, baseType: !50, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2625, file: !2626, line: 254, baseType: !50, size: 64, offset: 512)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2625, file: !2626, line: 256, baseType: !50, size: 64, offset: 576)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2625, file: !2626, line: 257, baseType: !50, size: 64, offset: 640)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2625, file: !2626, line: 258, baseType: !50, size: 64, offset: 704)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2625, file: !2626, line: 260, baseType: !2641, size: 64, offset: 768)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2626, line: 156, size: 192, elements: !2643)
!2643 = !{!2644, !2645, !2647}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2642, file: !2626, line: 157, baseType: !2641, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2642, file: !2626, line: 158, baseType: !2646, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2642, file: !2626, line: 162, baseType: !25, size: 32, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2625, file: !2626, line: 262, baseType: !2646, size: 64, offset: 832)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2625, file: !2626, line: 264, baseType: !25, size: 32, offset: 896)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2625, file: !2626, line: 268, baseType: !25, size: 32, offset: 928)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2625, file: !2626, line: 270, baseType: !2652, size: 64, offset: 960)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !546, line: 140, baseType: !547)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2625, file: !2626, line: 274, baseType: !93, size: 16, offset: 1024)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2625, file: !2626, line: 275, baseType: !2655, size: 8, offset: 1040)
!2655 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2625, file: !2626, line: 276, baseType: !2657, size: 8, offset: 1048)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !873)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2625, file: !2626, line: 280, baseType: !2659, size: 64, offset: 1088)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2626, line: 150, baseType: null)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2625, file: !2626, line: 289, baseType: !2662, size: 64, offset: 1152)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !546, line: 141, baseType: !547)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2625, file: !2626, line: 297, baseType: !49, size: 64, offset: 1216)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2625, file: !2626, line: 298, baseType: !49, size: 64, offset: 1280)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2625, file: !2626, line: 299, baseType: !49, size: 64, offset: 1344)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2625, file: !2626, line: 300, baseType: !49, size: 64, offset: 1408)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2625, file: !2626, line: 302, baseType: !94, size: 64, offset: 1472)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2625, file: !2626, line: 303, baseType: !25, size: 32, offset: 1536)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2625, file: !2626, line: 305, baseType: !2670, size: 160, offset: 1568)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2671)
!2671 = !{!2672}
!2672 = !DISubrange(count: 20)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2680}
!2675 = !DILocalVariable(name: "stream", arg: 1, scope: !2619, file: !554, line: 62, type: !2622)
!2676 = !DILocalVariable(name: "command_name", arg: 2, scope: !2619, file: !554, line: 63, type: !6)
!2677 = !DILocalVariable(name: "package", arg: 3, scope: !2619, file: !554, line: 63, type: !6)
!2678 = !DILocalVariable(name: "version", arg: 4, scope: !2619, file: !554, line: 64, type: !6)
!2679 = !DILocalVariable(name: "authors", arg: 5, scope: !2619, file: !554, line: 65, type: !2673)
!2680 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2619, file: !554, line: 65, type: !94)
!2681 = !DILocation(line: 62, column: 24, scope: !2619)
!2682 = !DILocation(line: 63, column: 30, scope: !2619)
!2683 = !DILocation(line: 63, column: 56, scope: !2619)
!2684 = !DILocation(line: 64, column: 30, scope: !2619)
!2685 = !DILocation(line: 65, column: 39, scope: !2619)
!2686 = !DILocation(line: 65, column: 55, scope: !2619)
!2687 = !DILocation(line: 67, column: 7, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2619, file: !554, line: 67, column: 7)
!2689 = !DILocation(line: 67, column: 7, scope: !2619)
!2690 = !DILocation(line: 68, column: 5, scope: !2688)
!2691 = !DILocation(line: 70, column: 5, scope: !2688)
!2692 = !DILocation(line: 84, column: 3, scope: !2619)
!2693 = !DILocation(line: 86, column: 3, scope: !2619)
!2694 = !DILocation(line: 95, column: 3, scope: !2619)
!2695 = !DILocation(line: 99, column: 7, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2619, file: !554, line: 96, column: 5)
!2697 = !DILocation(line: 102, column: 7, scope: !2696)
!2698 = !DILocation(line: 103, column: 7, scope: !2696)
!2699 = !DILocation(line: 106, column: 7, scope: !2696)
!2700 = !DILocation(line: 107, column: 7, scope: !2696)
!2701 = !DILocation(line: 110, column: 7, scope: !2696)
!2702 = !DILocation(line: 112, column: 7, scope: !2696)
!2703 = !DILocation(line: 117, column: 7, scope: !2696)
!2704 = !DILocation(line: 119, column: 7, scope: !2696)
!2705 = !DILocation(line: 124, column: 7, scope: !2696)
!2706 = !DILocation(line: 126, column: 7, scope: !2696)
!2707 = !DILocation(line: 131, column: 7, scope: !2696)
!2708 = !DILocation(line: 134, column: 7, scope: !2696)
!2709 = !DILocation(line: 139, column: 7, scope: !2696)
!2710 = !DILocation(line: 142, column: 7, scope: !2696)
!2711 = !DILocation(line: 147, column: 7, scope: !2696)
!2712 = !DILocation(line: 151, column: 7, scope: !2696)
!2713 = !DILocation(line: 156, column: 7, scope: !2696)
!2714 = !DILocation(line: 160, column: 7, scope: !2696)
!2715 = !DILocation(line: 167, column: 7, scope: !2696)
!2716 = !DILocation(line: 171, column: 7, scope: !2696)
!2717 = !DILocation(line: 173, column: 1, scope: !2619)
!2718 = distinct !DISubprogram(name: "version_etc_ar", scope: !554, file: !554, line: 180, type: !2719, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !2622, !6, !6, !6, !2673}
!2721 = !{!2722, !2723, !2724, !2725, !2726, !2727}
!2722 = !DILocalVariable(name: "stream", arg: 1, scope: !2718, file: !554, line: 180, type: !2622)
!2723 = !DILocalVariable(name: "command_name", arg: 2, scope: !2718, file: !554, line: 181, type: !6)
!2724 = !DILocalVariable(name: "package", arg: 3, scope: !2718, file: !554, line: 181, type: !6)
!2725 = !DILocalVariable(name: "version", arg: 4, scope: !2718, file: !554, line: 182, type: !6)
!2726 = !DILocalVariable(name: "authors", arg: 5, scope: !2718, file: !554, line: 182, type: !2673)
!2727 = !DILocalVariable(name: "n_authors", scope: !2718, file: !554, line: 184, type: !94)
!2728 = !DILocation(line: 180, column: 23, scope: !2718)
!2729 = !DILocation(line: 181, column: 29, scope: !2718)
!2730 = !DILocation(line: 181, column: 55, scope: !2718)
!2731 = !DILocation(line: 182, column: 29, scope: !2718)
!2732 = !DILocation(line: 182, column: 59, scope: !2718)
!2733 = !DILocation(line: 184, column: 10, scope: !2718)
!2734 = !DILocation(line: 186, column: 8, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2718, file: !554, line: 186, column: 3)
!2736 = !DILocation(line: 186, column: 23, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2735, file: !554, line: 186, column: 3)
!2738 = !DILocation(line: 186, column: 3, scope: !2735)
!2739 = !DILocation(line: 186, column: 52, scope: !2737)
!2740 = distinct !{!2740, !2738, !2741}
!2741 = !DILocation(line: 187, column: 5, scope: !2735)
!2742 = !DILocation(line: 188, column: 3, scope: !2718)
!2743 = !DILocation(line: 189, column: 1, scope: !2718)
!2744 = distinct !DISubprogram(name: "version_etc_va", scope: !554, file: !554, line: 196, type: !2745, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !2754)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !2622, !6, !6, !6, !2747}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !551, line: 189, size: 192, elements: !2749)
!2749 = !{!2750, !2751, !2752, !2753}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2748, file: !551, line: 189, baseType: !113, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2748, file: !551, line: 189, baseType: !113, size: 32, offset: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2748, file: !551, line: 189, baseType: !49, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2748, file: !551, line: 189, baseType: !49, size: 64, offset: 128)
!2754 = !{!2755, !2756, !2757, !2758, !2759, !2760, !2761}
!2755 = !DILocalVariable(name: "stream", arg: 1, scope: !2744, file: !554, line: 196, type: !2622)
!2756 = !DILocalVariable(name: "command_name", arg: 2, scope: !2744, file: !554, line: 197, type: !6)
!2757 = !DILocalVariable(name: "package", arg: 3, scope: !2744, file: !554, line: 197, type: !6)
!2758 = !DILocalVariable(name: "version", arg: 4, scope: !2744, file: !554, line: 198, type: !6)
!2759 = !DILocalVariable(name: "authors", arg: 5, scope: !2744, file: !554, line: 198, type: !2747)
!2760 = !DILocalVariable(name: "n_authors", scope: !2744, file: !554, line: 200, type: !94)
!2761 = !DILocalVariable(name: "authtab", scope: !2744, file: !554, line: 201, type: !2762)
!2762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2763 = !DILocation(line: 196, column: 23, scope: !2744)
!2764 = !DILocation(line: 197, column: 29, scope: !2744)
!2765 = !DILocation(line: 197, column: 55, scope: !2744)
!2766 = !DILocation(line: 198, column: 29, scope: !2744)
!2767 = !DILocation(line: 198, column: 46, scope: !2744)
!2768 = !DILocation(line: 201, column: 3, scope: !2744)
!2769 = !DILocation(line: 201, column: 15, scope: !2744)
!2770 = !DILocation(line: 200, column: 10, scope: !2744)
!2771 = !DILocation(line: 205, column: 35, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !554, line: 203, column: 3)
!2773 = distinct !DILexicalBlock(scope: !2744, file: !554, line: 203, column: 3)
!2774 = !DILocation(line: 205, column: 14, scope: !2772)
!2775 = !DILocation(line: 205, column: 33, scope: !2772)
!2776 = !DILocation(line: 205, column: 67, scope: !2772)
!2777 = !DILocation(line: 203, column: 3, scope: !2773)
!2778 = !DILocation(line: 208, column: 3, scope: !2744)
!2779 = !DILocation(line: 210, column: 1, scope: !2744)
!2780 = distinct !DISubprogram(name: "version_etc", scope: !554, file: !554, line: 227, type: !2781, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !2622, !6, !6, !6, null}
!2783 = !{!2784, !2785, !2786, !2787, !2788}
!2784 = !DILocalVariable(name: "stream", arg: 1, scope: !2780, file: !554, line: 227, type: !2622)
!2785 = !DILocalVariable(name: "command_name", arg: 2, scope: !2780, file: !554, line: 228, type: !6)
!2786 = !DILocalVariable(name: "package", arg: 3, scope: !2780, file: !554, line: 228, type: !6)
!2787 = !DILocalVariable(name: "version", arg: 4, scope: !2780, file: !554, line: 229, type: !6)
!2788 = !DILocalVariable(name: "authors", scope: !2780, file: !554, line: 231, type: !2789)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !862, line: 46, baseType: !2790)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !864, line: 48, baseType: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !551, line: 231, baseType: !2792)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2748, size: 192, elements: !873)
!2793 = !DILocation(line: 227, column: 20, scope: !2780)
!2794 = !DILocation(line: 228, column: 26, scope: !2780)
!2795 = !DILocation(line: 228, column: 52, scope: !2780)
!2796 = !DILocation(line: 229, column: 26, scope: !2780)
!2797 = !DILocation(line: 231, column: 3, scope: !2780)
!2798 = !DILocation(line: 231, column: 11, scope: !2780)
!2799 = !DILocation(line: 233, column: 3, scope: !2780)
!2800 = !DILocation(line: 234, column: 3, scope: !2780)
!2801 = !DILocation(line: 235, column: 3, scope: !2780)
!2802 = !DILocation(line: 236, column: 1, scope: !2780)
!2803 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !554, file: !554, line: 239, type: !777, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !4)
!2804 = !DILocation(line: 245, column: 3, scope: !2803)
!2805 = !DILocation(line: 251, column: 3, scope: !2803)
!2806 = !DILocation(line: 256, column: 3, scope: !2803)
!2807 = !DILocation(line: 258, column: 1, scope: !2803)
!2808 = distinct !DISubprogram(name: "xnmalloc", scope: !562, file: !562, line: 105, type: !2809, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!49, !94, !94}
!2811 = !{!2812, !2813}
!2812 = !DILocalVariable(name: "n", arg: 1, scope: !2808, file: !562, line: 105, type: !94)
!2813 = !DILocalVariable(name: "s", arg: 2, scope: !2808, file: !562, line: 105, type: !94)
!2814 = !DILocation(line: 105, column: 18, scope: !2808)
!2815 = !DILocation(line: 105, column: 28, scope: !2808)
!2816 = !DILocation(line: 107, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2808, file: !562, line: 107, column: 7)
!2818 = !DILocation(line: 107, column: 7, scope: !2808)
!2819 = !DILocation(line: 108, column: 5, scope: !2817)
!2820 = !DILocation(line: 109, column: 21, scope: !2808)
!2821 = !DILocalVariable(name: "n", arg: 1, scope: !2822, file: !2823, line: 39, type: !94)
!2822 = distinct !DISubprogram(name: "xmalloc", scope: !2823, file: !2823, line: 39, type: !2824, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !2826)
!2823 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!49, !94}
!2826 = !{!2821, !2827}
!2827 = !DILocalVariable(name: "p", scope: !2822, file: !2823, line: 41, type: !49)
!2828 = !DILocation(line: 39, column: 17, scope: !2822, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 109, column: 10, scope: !2808)
!2830 = !DILocation(line: 41, column: 13, scope: !2822, inlinedAt: !2829)
!2831 = !DILocation(line: 41, column: 9, scope: !2822, inlinedAt: !2829)
!2832 = !DILocation(line: 42, column: 8, scope: !2833, inlinedAt: !2829)
!2833 = distinct !DILexicalBlock(scope: !2822, file: !2823, line: 42, column: 7)
!2834 = !DILocation(line: 42, column: 15, scope: !2833, inlinedAt: !2829)
!2835 = !DILocation(line: 42, column: 10, scope: !2833, inlinedAt: !2829)
!2836 = !DILocation(line: 43, column: 5, scope: !2833, inlinedAt: !2829)
!2837 = !DILocation(line: 109, column: 3, scope: !2808)
!2838 = !DILocation(line: 39, column: 17, scope: !2822)
!2839 = !DILocation(line: 41, column: 13, scope: !2822)
!2840 = !DILocation(line: 41, column: 9, scope: !2822)
!2841 = !DILocation(line: 42, column: 8, scope: !2833)
!2842 = !DILocation(line: 42, column: 15, scope: !2833)
!2843 = !DILocation(line: 42, column: 10, scope: !2833)
!2844 = !DILocation(line: 43, column: 5, scope: !2833)
!2845 = !DILocation(line: 44, column: 3, scope: !2822)
!2846 = distinct !DISubprogram(name: "xnrealloc", scope: !562, file: !562, line: 118, type: !2847, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!49, !49, !94, !94}
!2849 = !{!2850, !2851, !2852}
!2850 = !DILocalVariable(name: "p", arg: 1, scope: !2846, file: !562, line: 118, type: !49)
!2851 = !DILocalVariable(name: "n", arg: 2, scope: !2846, file: !562, line: 118, type: !94)
!2852 = !DILocalVariable(name: "s", arg: 3, scope: !2846, file: !562, line: 118, type: !94)
!2853 = !DILocation(line: 118, column: 18, scope: !2846)
!2854 = !DILocation(line: 118, column: 28, scope: !2846)
!2855 = !DILocation(line: 118, column: 38, scope: !2846)
!2856 = !DILocation(line: 120, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2846, file: !562, line: 120, column: 7)
!2858 = !DILocation(line: 120, column: 7, scope: !2846)
!2859 = !DILocation(line: 121, column: 5, scope: !2857)
!2860 = !DILocation(line: 122, column: 25, scope: !2846)
!2861 = !DILocalVariable(name: "p", arg: 1, scope: !2862, file: !2823, line: 51, type: !49)
!2862 = distinct !DISubprogram(name: "xrealloc", scope: !2823, file: !2823, line: 51, type: !2863, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!49, !49, !94}
!2865 = !{!2861, !2866}
!2866 = !DILocalVariable(name: "n", arg: 2, scope: !2862, file: !2823, line: 51, type: !94)
!2867 = !DILocation(line: 51, column: 17, scope: !2862, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 122, column: 10, scope: !2846)
!2869 = !DILocation(line: 51, column: 27, scope: !2862, inlinedAt: !2868)
!2870 = !DILocation(line: 53, column: 8, scope: !2871, inlinedAt: !2868)
!2871 = distinct !DILexicalBlock(scope: !2862, file: !2823, line: 53, column: 7)
!2872 = !DILocation(line: 53, column: 13, scope: !2871, inlinedAt: !2868)
!2873 = !DILocation(line: 53, column: 10, scope: !2871, inlinedAt: !2868)
!2874 = !DILocation(line: 57, column: 7, scope: !2875, inlinedAt: !2868)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !2823, line: 54, column: 5)
!2876 = !DILocation(line: 58, column: 7, scope: !2875, inlinedAt: !2868)
!2877 = !DILocation(line: 61, column: 7, scope: !2862, inlinedAt: !2868)
!2878 = !DILocation(line: 62, column: 8, scope: !2879, inlinedAt: !2868)
!2879 = distinct !DILexicalBlock(scope: !2862, file: !2823, line: 62, column: 7)
!2880 = !DILocation(line: 62, column: 13, scope: !2879, inlinedAt: !2868)
!2881 = !DILocation(line: 62, column: 10, scope: !2879, inlinedAt: !2868)
!2882 = !DILocation(line: 63, column: 5, scope: !2879, inlinedAt: !2868)
!2883 = !DILocation(line: 122, column: 3, scope: !2846)
!2884 = !DILocation(line: 51, column: 17, scope: !2862)
!2885 = !DILocation(line: 51, column: 27, scope: !2862)
!2886 = !DILocation(line: 53, column: 8, scope: !2871)
!2887 = !DILocation(line: 53, column: 13, scope: !2871)
!2888 = !DILocation(line: 53, column: 10, scope: !2871)
!2889 = !DILocation(line: 57, column: 7, scope: !2875)
!2890 = !DILocation(line: 58, column: 7, scope: !2875)
!2891 = !DILocation(line: 61, column: 7, scope: !2862)
!2892 = !DILocation(line: 62, column: 8, scope: !2879)
!2893 = !DILocation(line: 62, column: 13, scope: !2879)
!2894 = !DILocation(line: 62, column: 10, scope: !2879)
!2895 = !DILocation(line: 63, column: 5, scope: !2879)
!2896 = !DILocation(line: 65, column: 1, scope: !2862)
!2897 = !DILocation(line: 180, column: 19, scope: !563)
!2898 = !DILocation(line: 180, column: 30, scope: !563)
!2899 = !DILocation(line: 180, column: 41, scope: !563)
!2900 = !DILocation(line: 182, column: 14, scope: !563)
!2901 = !DILocation(line: 182, column: 10, scope: !563)
!2902 = !DILocation(line: 184, column: 9, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !563, file: !562, line: 184, column: 7)
!2904 = !DILocation(line: 184, column: 7, scope: !563)
!2905 = !DILocation(line: 186, column: 13, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !562, line: 186, column: 11)
!2907 = distinct !DILexicalBlock(scope: !2903, file: !562, line: 185, column: 5)
!2908 = !DILocation(line: 186, column: 11, scope: !2907)
!2909 = !DILocation(line: 194, column: 30, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2906, file: !562, line: 187, column: 9)
!2911 = !DILocation(line: 195, column: 16, scope: !2910)
!2912 = !DILocation(line: 195, column: 13, scope: !2910)
!2913 = !DILocation(line: 196, column: 9, scope: !2910)
!2914 = !DILocation(line: 204, column: 69, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !562, line: 204, column: 11)
!2916 = distinct !DILexicalBlock(scope: !2903, file: !562, line: 199, column: 5)
!2917 = !DILocation(line: 205, column: 11, scope: !2915)
!2918 = !DILocation(line: 204, column: 11, scope: !2916)
!2919 = !DILocation(line: 206, column: 9, scope: !2915)
!2920 = !DILocation(line: 210, column: 7, scope: !563)
!2921 = !DILocation(line: 211, column: 25, scope: !563)
!2922 = !DILocation(line: 51, column: 17, scope: !2862, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 211, column: 10, scope: !563)
!2924 = !DILocation(line: 51, column: 27, scope: !2862, inlinedAt: !2923)
!2925 = !DILocation(line: 53, column: 10, scope: !2871, inlinedAt: !2923)
!2926 = !DILocation(line: 207, column: 14, scope: !2916)
!2927 = !DILocation(line: 207, column: 18, scope: !2916)
!2928 = !DILocation(line: 207, column: 9, scope: !2916)
!2929 = !DILocation(line: 53, column: 8, scope: !2871, inlinedAt: !2923)
!2930 = !DILocation(line: 57, column: 7, scope: !2875, inlinedAt: !2923)
!2931 = !DILocation(line: 58, column: 7, scope: !2875, inlinedAt: !2923)
!2932 = !DILocation(line: 61, column: 7, scope: !2862, inlinedAt: !2923)
!2933 = !DILocation(line: 62, column: 8, scope: !2879, inlinedAt: !2923)
!2934 = !DILocation(line: 62, column: 13, scope: !2879, inlinedAt: !2923)
!2935 = !DILocation(line: 62, column: 10, scope: !2879, inlinedAt: !2923)
!2936 = !DILocation(line: 63, column: 5, scope: !2879, inlinedAt: !2923)
!2937 = !DILocation(line: 211, column: 3, scope: !563)
!2938 = distinct !DISubprogram(name: "xcharalloc", scope: !562, file: !562, line: 220, type: !1877, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !2939)
!2939 = !{!2940}
!2940 = !DILocalVariable(name: "n", arg: 1, scope: !2938, file: !562, line: 220, type: !94)
!2941 = !DILocation(line: 220, column: 20, scope: !2938)
!2942 = !DILocation(line: 39, column: 17, scope: !2822, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 222, column: 10, scope: !2938)
!2944 = !DILocation(line: 41, column: 13, scope: !2822, inlinedAt: !2943)
!2945 = !DILocation(line: 41, column: 9, scope: !2822, inlinedAt: !2943)
!2946 = !DILocation(line: 42, column: 8, scope: !2833, inlinedAt: !2943)
!2947 = !DILocation(line: 42, column: 15, scope: !2833, inlinedAt: !2943)
!2948 = !DILocation(line: 42, column: 10, scope: !2833, inlinedAt: !2943)
!2949 = !DILocation(line: 43, column: 5, scope: !2833, inlinedAt: !2943)
!2950 = !DILocation(line: 222, column: 3, scope: !2938)
!2951 = distinct !DISubprogram(name: "x2realloc", scope: !2823, file: !2823, line: 74, type: !2952, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!49, !49, !566}
!2954 = !{!2955, !2956}
!2955 = !DILocalVariable(name: "p", arg: 1, scope: !2951, file: !2823, line: 74, type: !49)
!2956 = !DILocalVariable(name: "pn", arg: 2, scope: !2951, file: !2823, line: 74, type: !566)
!2957 = !DILocation(line: 74, column: 18, scope: !2951)
!2958 = !DILocation(line: 74, column: 29, scope: !2951)
!2959 = !DILocation(line: 180, column: 19, scope: !563, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 76, column: 10, scope: !2951)
!2961 = !DILocation(line: 180, column: 30, scope: !563, inlinedAt: !2960)
!2962 = !DILocation(line: 180, column: 41, scope: !563, inlinedAt: !2960)
!2963 = !DILocation(line: 182, column: 14, scope: !563, inlinedAt: !2960)
!2964 = !DILocation(line: 182, column: 10, scope: !563, inlinedAt: !2960)
!2965 = !DILocation(line: 184, column: 9, scope: !2903, inlinedAt: !2960)
!2966 = !DILocation(line: 184, column: 7, scope: !563, inlinedAt: !2960)
!2967 = !DILocation(line: 186, column: 13, scope: !2906, inlinedAt: !2960)
!2968 = !DILocation(line: 186, column: 11, scope: !2907, inlinedAt: !2960)
!2969 = !DILocation(line: 210, column: 7, scope: !563, inlinedAt: !2960)
!2970 = !DILocation(line: 51, column: 17, scope: !2862, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 211, column: 10, scope: !563, inlinedAt: !2960)
!2972 = !DILocation(line: 51, column: 27, scope: !2862, inlinedAt: !2971)
!2973 = !DILocation(line: 53, column: 10, scope: !2871, inlinedAt: !2971)
!2974 = !DILocation(line: 205, column: 11, scope: !2915, inlinedAt: !2960)
!2975 = !DILocation(line: 204, column: 11, scope: !2916, inlinedAt: !2960)
!2976 = !DILocation(line: 206, column: 9, scope: !2915, inlinedAt: !2960)
!2977 = !DILocation(line: 207, column: 14, scope: !2916, inlinedAt: !2960)
!2978 = !DILocation(line: 207, column: 18, scope: !2916, inlinedAt: !2960)
!2979 = !DILocation(line: 207, column: 9, scope: !2916, inlinedAt: !2960)
!2980 = !DILocation(line: 53, column: 8, scope: !2871, inlinedAt: !2971)
!2981 = !DILocation(line: 57, column: 7, scope: !2875, inlinedAt: !2971)
!2982 = !DILocation(line: 58, column: 7, scope: !2875, inlinedAt: !2971)
!2983 = !DILocation(line: 61, column: 7, scope: !2862, inlinedAt: !2971)
!2984 = !DILocation(line: 62, column: 8, scope: !2879, inlinedAt: !2971)
!2985 = !DILocation(line: 62, column: 13, scope: !2879, inlinedAt: !2971)
!2986 = !DILocation(line: 62, column: 10, scope: !2879, inlinedAt: !2971)
!2987 = !DILocation(line: 63, column: 5, scope: !2879, inlinedAt: !2971)
!2988 = !DILocation(line: 76, column: 3, scope: !2951)
!2989 = distinct !DISubprogram(name: "xzalloc", scope: !2823, file: !2823, line: 84, type: !2824, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !2990)
!2990 = !{!2991}
!2991 = !DILocalVariable(name: "s", arg: 1, scope: !2989, file: !2823, line: 84, type: !94)
!2992 = !DILocation(line: 84, column: 17, scope: !2989)
!2993 = !DILocation(line: 39, column: 17, scope: !2822, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 86, column: 18, scope: !2989)
!2995 = !DILocation(line: 41, column: 13, scope: !2822, inlinedAt: !2994)
!2996 = !DILocation(line: 41, column: 9, scope: !2822, inlinedAt: !2994)
!2997 = !DILocation(line: 42, column: 8, scope: !2833, inlinedAt: !2994)
!2998 = !DILocation(line: 42, column: 15, scope: !2833, inlinedAt: !2994)
!2999 = !DILocation(line: 42, column: 10, scope: !2833, inlinedAt: !2994)
!3000 = !DILocation(line: 43, column: 5, scope: !2833, inlinedAt: !2994)
!3001 = !DILocation(line: 86, column: 10, scope: !2989)
!3002 = !DILocation(line: 86, column: 3, scope: !2989)
!3003 = distinct !DISubprogram(name: "xcalloc", scope: !2823, file: !2823, line: 93, type: !2809, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3004)
!3004 = !{!3005, !3006, !3007}
!3005 = !DILocalVariable(name: "n", arg: 1, scope: !3003, file: !2823, line: 93, type: !94)
!3006 = !DILocalVariable(name: "s", arg: 2, scope: !3003, file: !2823, line: 93, type: !94)
!3007 = !DILocalVariable(name: "p", scope: !3003, file: !2823, line: 95, type: !49)
!3008 = !DILocation(line: 93, column: 17, scope: !3003)
!3009 = !DILocation(line: 93, column: 27, scope: !3003)
!3010 = !DILocation(line: 100, column: 7, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3003, file: !2823, line: 100, column: 7)
!3012 = !DILocation(line: 101, column: 7, scope: !3011)
!3013 = !DILocation(line: 101, column: 18, scope: !3011)
!3014 = !DILocation(line: 95, column: 9, scope: !3003)
!3015 = !DILocation(line: 101, column: 16, scope: !3011)
!3016 = !DILocation(line: 100, column: 7, scope: !3003)
!3017 = !DILocation(line: 102, column: 5, scope: !3011)
!3018 = !DILocation(line: 103, column: 3, scope: !3003)
!3019 = distinct !DISubprogram(name: "xmemdup", scope: !2823, file: !2823, line: 111, type: !3020, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!49, !533, !94}
!3022 = !{!3023, !3024}
!3023 = !DILocalVariable(name: "p", arg: 1, scope: !3019, file: !2823, line: 111, type: !533)
!3024 = !DILocalVariable(name: "s", arg: 2, scope: !3019, file: !2823, line: 111, type: !94)
!3025 = !DILocation(line: 111, column: 22, scope: !3019)
!3026 = !DILocation(line: 111, column: 32, scope: !3019)
!3027 = !DILocation(line: 39, column: 17, scope: !2822, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 113, column: 18, scope: !3019)
!3029 = !DILocation(line: 41, column: 13, scope: !2822, inlinedAt: !3028)
!3030 = !DILocation(line: 41, column: 9, scope: !2822, inlinedAt: !3028)
!3031 = !DILocation(line: 42, column: 8, scope: !2833, inlinedAt: !3028)
!3032 = !DILocation(line: 42, column: 15, scope: !2833, inlinedAt: !3028)
!3033 = !DILocation(line: 42, column: 10, scope: !2833, inlinedAt: !3028)
!3034 = !DILocation(line: 43, column: 5, scope: !2833, inlinedAt: !3028)
!3035 = !DILocation(line: 113, column: 10, scope: !3019)
!3036 = !DILocation(line: 113, column: 3, scope: !3019)
!3037 = distinct !DISubprogram(name: "xstrdup", scope: !2823, file: !2823, line: 119, type: !2079, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3038)
!3038 = !{!3039}
!3039 = !DILocalVariable(name: "string", arg: 1, scope: !3037, file: !2823, line: 119, type: !6)
!3040 = !DILocation(line: 119, column: 22, scope: !3037)
!3041 = !DILocation(line: 121, column: 27, scope: !3037)
!3042 = !DILocation(line: 121, column: 43, scope: !3037)
!3043 = !DILocation(line: 111, column: 22, scope: !3019, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 121, column: 10, scope: !3037)
!3045 = !DILocation(line: 111, column: 32, scope: !3019, inlinedAt: !3044)
!3046 = !DILocation(line: 39, column: 17, scope: !2822, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 113, column: 18, scope: !3019, inlinedAt: !3044)
!3048 = !DILocation(line: 41, column: 13, scope: !2822, inlinedAt: !3047)
!3049 = !DILocation(line: 41, column: 9, scope: !2822, inlinedAt: !3047)
!3050 = !DILocation(line: 42, column: 8, scope: !2833, inlinedAt: !3047)
!3051 = !DILocation(line: 42, column: 15, scope: !2833, inlinedAt: !3047)
!3052 = !DILocation(line: 42, column: 10, scope: !2833, inlinedAt: !3047)
!3053 = !DILocation(line: 43, column: 5, scope: !2833, inlinedAt: !3047)
!3054 = !DILocation(line: 113, column: 10, scope: !3019, inlinedAt: !3044)
!3055 = !DILocation(line: 121, column: 3, scope: !3037)
!3056 = distinct !DISubprogram(name: "xalloc_die", scope: !3057, file: !3057, line: 32, type: !777, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !575, variables: !4)
!3057 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3058 = !DILocation(line: 34, column: 10, scope: !3056)
!3059 = !DILocation(line: 34, column: 33, scope: !3056)
!3060 = !DILocation(line: 34, column: 3, scope: !3056)
!3061 = !DILocation(line: 40, column: 3, scope: !3056)
!3062 = distinct !DISubprogram(name: "rpl_calloc", scope: !3063, file: !3063, line: 42, type: !2809, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !3064)
!3063 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3064 = !{!3065, !3066, !3067, !3068}
!3065 = !DILocalVariable(name: "n", arg: 1, scope: !3062, file: !3063, line: 42, type: !94)
!3066 = !DILocalVariable(name: "s", arg: 2, scope: !3062, file: !3063, line: 42, type: !94)
!3067 = !DILocalVariable(name: "result", scope: !3062, file: !3063, line: 44, type: !49)
!3068 = !DILocalVariable(name: "bytes", scope: !3069, file: !3063, line: 56, type: !94)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !3063, line: 53, column: 5)
!3070 = distinct !DILexicalBlock(scope: !3062, file: !3063, line: 47, column: 7)
!3071 = !DILocation(line: 42, column: 20, scope: !3062)
!3072 = !DILocation(line: 42, column: 30, scope: !3062)
!3073 = !DILocation(line: 47, column: 9, scope: !3070)
!3074 = !DILocation(line: 47, column: 19, scope: !3070)
!3075 = !DILocation(line: 47, column: 14, scope: !3070)
!3076 = !DILocation(line: 56, column: 24, scope: !3069)
!3077 = !DILocation(line: 56, column: 14, scope: !3069)
!3078 = !DILocation(line: 57, column: 17, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3069, file: !3063, line: 57, column: 11)
!3080 = !DILocation(line: 57, column: 21, scope: !3079)
!3081 = !DILocation(line: 57, column: 11, scope: !3069)
!3082 = !DILocation(line: 59, column: 11, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !3063, line: 58, column: 9)
!3084 = !DILocation(line: 59, column: 17, scope: !3083)
!3085 = !DILocation(line: 65, column: 12, scope: !3062)
!3086 = !DILocation(line: 44, column: 9, scope: !3062)
!3087 = !DILocation(line: 72, column: 3, scope: !3062)
!3088 = !DILocation(line: 73, column: 1, scope: !3062)
!3089 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3090, file: !3090, line: 334, type: !3091, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3105)
!3090 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!94, !3093, !6, !94, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1128, line: 6, baseType: !3096)
!3096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1130, line: 21, baseType: !3097)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1130, line: 13, size: 64, elements: !3098)
!3098 = !{!3099, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3097, file: !1130, line: 15, baseType: !25, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3097, file: !1130, line: 20, baseType: !3101, size: 32, offset: 32)
!3101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3097, file: !1130, line: 16, size: 32, elements: !3102)
!3102 = !{!3103, !3104}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3101, file: !1130, line: 18, baseType: !113, size: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3101, file: !1130, line: 19, baseType: !1139, size: 32)
!3105 = !{!3106, !3107, !3108, !3109, !3110, !3111, !3112}
!3106 = !DILocalVariable(name: "pwc", arg: 1, scope: !3089, file: !3090, line: 334, type: !3093)
!3107 = !DILocalVariable(name: "s", arg: 2, scope: !3089, file: !3090, line: 334, type: !6)
!3108 = !DILocalVariable(name: "n", arg: 3, scope: !3089, file: !3090, line: 334, type: !94)
!3109 = !DILocalVariable(name: "ps", arg: 4, scope: !3089, file: !3090, line: 334, type: !3094)
!3110 = !DILocalVariable(name: "ret", scope: !3089, file: !3090, line: 336, type: !94)
!3111 = !DILocalVariable(name: "wc", scope: !3089, file: !3090, line: 337, type: !1144)
!3112 = !DILocalVariable(name: "uc", scope: !3113, file: !3090, line: 398, type: !494)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !3090, line: 397, column: 5)
!3114 = distinct !DILexicalBlock(scope: !3089, file: !3090, line: 396, column: 7)
!3115 = !DILocation(line: 334, column: 23, scope: !3089)
!3116 = !DILocation(line: 334, column: 40, scope: !3089)
!3117 = !DILocation(line: 334, column: 50, scope: !3089)
!3118 = !DILocation(line: 334, column: 64, scope: !3089)
!3119 = !DILocation(line: 337, column: 3, scope: !3089)
!3120 = !DILocation(line: 353, column: 9, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3089, file: !3090, line: 353, column: 7)
!3122 = !DILocation(line: 353, column: 7, scope: !3089)
!3123 = !DILocation(line: 388, column: 9, scope: !3089)
!3124 = !DILocation(line: 336, column: 10, scope: !3089)
!3125 = !DILocation(line: 396, column: 19, scope: !3114)
!3126 = !DILocation(line: 396, column: 31, scope: !3114)
!3127 = !DILocation(line: 396, column: 26, scope: !3114)
!3128 = !DILocation(line: 396, column: 41, scope: !3114)
!3129 = !DILocation(line: 396, column: 7, scope: !3089)
!3130 = !DILocation(line: 398, column: 26, scope: !3113)
!3131 = !DILocation(line: 398, column: 21, scope: !3113)
!3132 = !DILocation(line: 399, column: 14, scope: !3113)
!3133 = !DILocation(line: 399, column: 12, scope: !3113)
!3134 = !DILocation(line: 405, column: 1, scope: !3089)
!3135 = distinct !DISubprogram(name: "close_stream", scope: !3136, file: !3136, line: 56, type: !3137, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !3179)
!3136 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!25, !3139}
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2624, line: 7, baseType: !3141)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2626, line: 241, size: 1728, elements: !3142)
!3142 = !{!3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3141, file: !2626, line: 242, baseType: !25, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3141, file: !2626, line: 247, baseType: !50, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3141, file: !2626, line: 248, baseType: !50, size: 64, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3141, file: !2626, line: 249, baseType: !50, size: 64, offset: 192)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3141, file: !2626, line: 250, baseType: !50, size: 64, offset: 256)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3141, file: !2626, line: 251, baseType: !50, size: 64, offset: 320)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3141, file: !2626, line: 252, baseType: !50, size: 64, offset: 384)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3141, file: !2626, line: 253, baseType: !50, size: 64, offset: 448)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3141, file: !2626, line: 254, baseType: !50, size: 64, offset: 512)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3141, file: !2626, line: 256, baseType: !50, size: 64, offset: 576)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3141, file: !2626, line: 257, baseType: !50, size: 64, offset: 640)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3141, file: !2626, line: 258, baseType: !50, size: 64, offset: 704)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3141, file: !2626, line: 260, baseType: !3156, size: 64, offset: 768)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2626, line: 156, size: 192, elements: !3158)
!3158 = !{!3159, !3160, !3162}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3157, file: !2626, line: 157, baseType: !3156, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3157, file: !2626, line: 158, baseType: !3161, size: 64, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3157, file: !2626, line: 162, baseType: !25, size: 32, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3141, file: !2626, line: 262, baseType: !3161, size: 64, offset: 832)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3141, file: !2626, line: 264, baseType: !25, size: 32, offset: 896)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3141, file: !2626, line: 268, baseType: !25, size: 32, offset: 928)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3141, file: !2626, line: 270, baseType: !2652, size: 64, offset: 960)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3141, file: !2626, line: 274, baseType: !93, size: 16, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3141, file: !2626, line: 275, baseType: !2655, size: 8, offset: 1040)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3141, file: !2626, line: 276, baseType: !2657, size: 8, offset: 1048)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3141, file: !2626, line: 280, baseType: !2659, size: 64, offset: 1088)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3141, file: !2626, line: 289, baseType: !2662, size: 64, offset: 1152)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3141, file: !2626, line: 297, baseType: !49, size: 64, offset: 1216)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3141, file: !2626, line: 298, baseType: !49, size: 64, offset: 1280)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3141, file: !2626, line: 299, baseType: !49, size: 64, offset: 1344)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3141, file: !2626, line: 300, baseType: !49, size: 64, offset: 1408)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3141, file: !2626, line: 302, baseType: !94, size: 64, offset: 1472)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3141, file: !2626, line: 303, baseType: !25, size: 32, offset: 1536)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3141, file: !2626, line: 305, baseType: !2670, size: 160, offset: 1568)
!3179 = !{!3180, !3181, !3183, !3184}
!3180 = !DILocalVariable(name: "stream", arg: 1, scope: !3135, file: !3136, line: 56, type: !3139)
!3181 = !DILocalVariable(name: "some_pending", scope: !3135, file: !3136, line: 58, type: !3182)
!3182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3183 = !DILocalVariable(name: "prev_fail", scope: !3135, file: !3136, line: 59, type: !3182)
!3184 = !DILocalVariable(name: "fclose_fail", scope: !3135, file: !3136, line: 60, type: !3182)
!3185 = !DILocation(line: 56, column: 21, scope: !3135)
!3186 = !DILocation(line: 58, column: 30, scope: !3135)
!3187 = !DILocalVariable(name: "__stream", arg: 1, scope: !3188, file: !3189, line: 132, type: !3139)
!3188 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3189, file: !3189, line: 132, type: !3137, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !3190)
!3189 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3190 = !{!3187}
!3191 = !DILocation(line: 132, column: 1, scope: !3188, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 59, column: 27, scope: !3135)
!3193 = !DILocation(line: 134, column: 10, scope: !3188, inlinedAt: !3192)
!3194 = !{!3195, !678, i64 0}
!3195 = !{!"_IO_FILE", !678, i64 0, !611, i64 8, !611, i64 16, !611, i64 24, !611, i64 32, !611, i64 40, !611, i64 48, !611, i64 56, !611, i64 64, !611, i64 72, !611, i64 80, !611, i64 88, !611, i64 96, !611, i64 104, !678, i64 112, !678, i64 116, !1922, i64 120, !1378, i64 128, !612, i64 130, !612, i64 131, !611, i64 136, !1922, i64 144, !611, i64 152, !611, i64 160, !611, i64 168, !611, i64 176, !1922, i64 184, !678, i64 192, !612, i64 196}
!3196 = !DILocation(line: 59, column: 43, scope: !3135)
!3197 = !DILocation(line: 60, column: 29, scope: !3135)
!3198 = !DILocation(line: 60, column: 45, scope: !3135)
!3199 = !DILocation(line: 70, column: 17, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3135, file: !3136, line: 70, column: 7)
!3201 = !DILocation(line: 58, column: 50, scope: !3135)
!3202 = !DILocation(line: 70, column: 33, scope: !3200)
!3203 = !DILocation(line: 70, column: 53, scope: !3200)
!3204 = !DILocation(line: 70, column: 59, scope: !3200)
!3205 = !DILocation(line: 70, column: 7, scope: !3135)
!3206 = !DILocation(line: 72, column: 11, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3200, file: !3136, line: 71, column: 5)
!3208 = !DILocation(line: 73, column: 9, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3207, file: !3136, line: 72, column: 11)
!3210 = !DILocation(line: 73, column: 15, scope: !3209)
!3211 = !DILocation(line: 78, column: 1, scope: !3135)
!3212 = distinct !DISubprogram(name: "hard_locale", scope: !3213, file: !3213, line: 38, type: !3214, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !584, variables: !3216)
!3213 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!17, !25}
!3216 = !{!3217, !3218, !3219}
!3217 = !DILocalVariable(name: "category", arg: 1, scope: !3212, file: !3213, line: 38, type: !25)
!3218 = !DILocalVariable(name: "hard", scope: !3212, file: !3213, line: 40, type: !17)
!3219 = !DILocalVariable(name: "p", scope: !3212, file: !3213, line: 41, type: !6)
!3220 = !DILocation(line: 38, column: 18, scope: !3212)
!3221 = !DILocation(line: 40, column: 8, scope: !3212)
!3222 = !DILocation(line: 41, column: 19, scope: !3212)
!3223 = !DILocation(line: 41, column: 15, scope: !3212)
!3224 = !DILocation(line: 43, column: 7, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3212, file: !3213, line: 43, column: 7)
!3226 = !DILocation(line: 43, column: 7, scope: !3212)
!3227 = !DILocation(line: 47, column: 15, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3213, line: 47, column: 15)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !3213, line: 46, column: 9)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !3213, line: 45, column: 11)
!3231 = distinct !DILexicalBlock(scope: !3225, file: !3213, line: 44, column: 5)
!3232 = !DILocation(line: 47, column: 31, scope: !3228)
!3233 = !DILocation(line: 47, column: 36, scope: !3228)
!3234 = !DILocation(line: 47, column: 39, scope: !3228)
!3235 = !DILocation(line: 47, column: 59, scope: !3228)
!3236 = !DILocation(line: 47, column: 15, scope: !3229)
!3237 = !DILocation(line: 48, column: 13, scope: !3228)
!3238 = !DILocation(line: 71, column: 3, scope: !3212)
!3239 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3240, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!6}
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "codeset", scope: !3239, file: !496, line: 395, type: !6)
!3244 = !DILocalVariable(name: "aliases", scope: !3239, file: !496, line: 396, type: !6)
!3245 = !DILocalVariable(name: "buf1", scope: !3246, file: !496, line: 196, type: !3313)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !496, line: 194, column: 21)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !496, line: 193, column: 19)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !496, line: 193, column: 19)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !496, line: 188, column: 17)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !496, line: 181, column: 19)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !496, line: 177, column: 13)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !496, line: 173, column: 15)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !496, line: 161, column: 9)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !496, line: 157, column: 11)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !496, line: 130, column: 5)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !496, line: 129, column: 7)
!3257 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3240, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3258)
!3258 = !{!3259, !3260, !3261, !3262, !3263, !3265, !3266, !3267, !3268, !3309, !3310, !3311, !3245, !3312, !3316, !3317, !3318}
!3259 = !DILocalVariable(name: "cp", scope: !3257, file: !496, line: 126, type: !6)
!3260 = !DILocalVariable(name: "dir", scope: !3255, file: !496, line: 132, type: !6)
!3261 = !DILocalVariable(name: "base", scope: !3255, file: !496, line: 133, type: !6)
!3262 = !DILocalVariable(name: "file_name", scope: !3255, file: !496, line: 134, type: !50)
!3263 = !DILocalVariable(name: "dir_len", scope: !3264, file: !496, line: 144, type: !94)
!3264 = distinct !DILexicalBlock(scope: !3255, file: !496, line: 143, column: 7)
!3265 = !DILocalVariable(name: "base_len", scope: !3264, file: !496, line: 145, type: !94)
!3266 = !DILocalVariable(name: "add_slash", scope: !3264, file: !496, line: 146, type: !25)
!3267 = !DILocalVariable(name: "fd", scope: !3253, file: !496, line: 162, type: !25)
!3268 = !DILocalVariable(name: "fp", scope: !3251, file: !496, line: 178, type: !3269)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2624, line: 7, baseType: !3271)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2626, line: 241, size: 1728, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3271, file: !2626, line: 242, baseType: !25, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3271, file: !2626, line: 247, baseType: !50, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3271, file: !2626, line: 248, baseType: !50, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3271, file: !2626, line: 249, baseType: !50, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3271, file: !2626, line: 250, baseType: !50, size: 64, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3271, file: !2626, line: 251, baseType: !50, size: 64, offset: 320)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3271, file: !2626, line: 252, baseType: !50, size: 64, offset: 384)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3271, file: !2626, line: 253, baseType: !50, size: 64, offset: 448)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3271, file: !2626, line: 254, baseType: !50, size: 64, offset: 512)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3271, file: !2626, line: 256, baseType: !50, size: 64, offset: 576)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3271, file: !2626, line: 257, baseType: !50, size: 64, offset: 640)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3271, file: !2626, line: 258, baseType: !50, size: 64, offset: 704)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3271, file: !2626, line: 260, baseType: !3286, size: 64, offset: 768)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2626, line: 156, size: 192, elements: !3288)
!3288 = !{!3289, !3290, !3292}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3287, file: !2626, line: 157, baseType: !3286, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3287, file: !2626, line: 158, baseType: !3291, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3287, file: !2626, line: 162, baseType: !25, size: 32, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3271, file: !2626, line: 262, baseType: !3291, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3271, file: !2626, line: 264, baseType: !25, size: 32, offset: 896)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3271, file: !2626, line: 268, baseType: !25, size: 32, offset: 928)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3271, file: !2626, line: 270, baseType: !2652, size: 64, offset: 960)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3271, file: !2626, line: 274, baseType: !93, size: 16, offset: 1024)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3271, file: !2626, line: 275, baseType: !2655, size: 8, offset: 1040)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3271, file: !2626, line: 276, baseType: !2657, size: 8, offset: 1048)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3271, file: !2626, line: 280, baseType: !2659, size: 64, offset: 1088)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3271, file: !2626, line: 289, baseType: !2662, size: 64, offset: 1152)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3271, file: !2626, line: 297, baseType: !49, size: 64, offset: 1216)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3271, file: !2626, line: 298, baseType: !49, size: 64, offset: 1280)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3271, file: !2626, line: 299, baseType: !49, size: 64, offset: 1344)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3271, file: !2626, line: 300, baseType: !49, size: 64, offset: 1408)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3271, file: !2626, line: 302, baseType: !94, size: 64, offset: 1472)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3271, file: !2626, line: 303, baseType: !25, size: 32, offset: 1536)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3271, file: !2626, line: 305, baseType: !2670, size: 160, offset: 1568)
!3309 = !DILocalVariable(name: "res_ptr", scope: !3249, file: !496, line: 190, type: !50)
!3310 = !DILocalVariable(name: "res_size", scope: !3249, file: !496, line: 191, type: !94)
!3311 = !DILocalVariable(name: "c", scope: !3246, file: !496, line: 195, type: !25)
!3312 = !DILocalVariable(name: "buf2", scope: !3246, file: !496, line: 197, type: !3313)
!3313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3314)
!3314 = !{!3315}
!3315 = !DISubrange(count: 51)
!3316 = !DILocalVariable(name: "l1", scope: !3246, file: !496, line: 198, type: !94)
!3317 = !DILocalVariable(name: "l2", scope: !3246, file: !496, line: 198, type: !94)
!3318 = !DILocalVariable(name: "old_res_ptr", scope: !3246, file: !496, line: 199, type: !50)
!3319 = !DILocation(line: 196, column: 28, scope: !3246, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 589, column: 18, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3239, file: !496, line: 589, column: 3)
!3322 = !DILocation(line: 197, column: 28, scope: !3246, inlinedAt: !3320)
!3323 = !DILocation(line: 403, column: 13, scope: !3239)
!3324 = !DILocation(line: 395, column: 15, scope: !3239)
!3325 = !DILocation(line: 584, column: 15, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3239, file: !496, line: 584, column: 7)
!3327 = !DILocation(line: 584, column: 7, scope: !3239)
!3328 = !DILocation(line: 128, column: 8, scope: !3257, inlinedAt: !3320)
!3329 = !DILocation(line: 126, column: 15, scope: !3257, inlinedAt: !3320)
!3330 = !DILocation(line: 129, column: 10, scope: !3256, inlinedAt: !3320)
!3331 = !DILocation(line: 129, column: 7, scope: !3257, inlinedAt: !3320)
!3332 = !DILocation(line: 138, column: 13, scope: !3255, inlinedAt: !3320)
!3333 = !DILocation(line: 132, column: 19, scope: !3255, inlinedAt: !3320)
!3334 = !DILocation(line: 139, column: 15, scope: !3335, inlinedAt: !3320)
!3335 = distinct !DILexicalBlock(scope: !3255, file: !496, line: 139, column: 11)
!3336 = !DILocation(line: 139, column: 23, scope: !3335, inlinedAt: !3320)
!3337 = !DILocation(line: 139, column: 26, scope: !3335, inlinedAt: !3320)
!3338 = !DILocation(line: 139, column: 33, scope: !3335, inlinedAt: !3320)
!3339 = !DILocation(line: 139, column: 11, scope: !3255, inlinedAt: !3320)
!3340 = !DILocation(line: 140, column: 9, scope: !3335, inlinedAt: !3320)
!3341 = !DILocation(line: 144, column: 26, scope: !3264, inlinedAt: !3320)
!3342 = !DILocation(line: 144, column: 16, scope: !3264, inlinedAt: !3320)
!3343 = !DILocation(line: 145, column: 16, scope: !3264, inlinedAt: !3320)
!3344 = !DILocation(line: 146, column: 34, scope: !3264, inlinedAt: !3320)
!3345 = !DILocation(line: 146, column: 38, scope: !3264, inlinedAt: !3320)
!3346 = !DILocation(line: 146, column: 42, scope: !3264, inlinedAt: !3320)
!3347 = !DILocation(line: 147, column: 48, scope: !3264, inlinedAt: !3320)
!3348 = !DILocation(line: 147, column: 46, scope: !3264, inlinedAt: !3320)
!3349 = !DILocation(line: 147, column: 69, scope: !3264, inlinedAt: !3320)
!3350 = !DILocation(line: 147, column: 30, scope: !3264, inlinedAt: !3320)
!3351 = !DILocation(line: 134, column: 13, scope: !3255, inlinedAt: !3320)
!3352 = !DILocation(line: 148, column: 13, scope: !3264, inlinedAt: !3320)
!3353 = !DILocation(line: 150, column: 13, scope: !3354, inlinedAt: !3320)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !496, line: 149, column: 11)
!3355 = distinct !DILexicalBlock(scope: !3264, file: !496, line: 148, column: 13)
!3356 = !DILocation(line: 151, column: 17, scope: !3354, inlinedAt: !3320)
!3357 = !DILocation(line: 152, column: 34, scope: !3358, inlinedAt: !3320)
!3358 = distinct !DILexicalBlock(scope: !3354, file: !496, line: 151, column: 17)
!3359 = !DILocation(line: 153, column: 41, scope: !3354, inlinedAt: !3320)
!3360 = !DILocation(line: 153, column: 13, scope: !3354, inlinedAt: !3320)
!3361 = !DILocation(line: 157, column: 11, scope: !3255, inlinedAt: !3320)
!3362 = !DILocation(line: 171, column: 16, scope: !3253, inlinedAt: !3320)
!3363 = !DILocation(line: 162, column: 15, scope: !3253, inlinedAt: !3320)
!3364 = !DILocation(line: 173, column: 18, scope: !3252, inlinedAt: !3320)
!3365 = !DILocation(line: 173, column: 15, scope: !3253, inlinedAt: !3320)
!3366 = !DILocation(line: 180, column: 20, scope: !3251, inlinedAt: !3320)
!3367 = !DILocation(line: 178, column: 21, scope: !3251, inlinedAt: !3320)
!3368 = !DILocation(line: 181, column: 22, scope: !3250, inlinedAt: !3320)
!3369 = !DILocation(line: 181, column: 19, scope: !3251, inlinedAt: !3320)
!3370 = !DILocation(line: 184, column: 19, scope: !3371, inlinedAt: !3320)
!3371 = distinct !DILexicalBlock(scope: !3250, file: !496, line: 182, column: 17)
!3372 = !DILocation(line: 186, column: 17, scope: !3371, inlinedAt: !3320)
!3373 = !DILocation(line: 190, column: 25, scope: !3249, inlinedAt: !3320)
!3374 = !DILocation(line: 191, column: 26, scope: !3249, inlinedAt: !3320)
!3375 = !DILocation(line: 193, column: 19, scope: !3249, inlinedAt: !3320)
!3376 = !DILocation(line: 196, column: 23, scope: !3246, inlinedAt: !3320)
!3377 = !DILocation(line: 197, column: 23, scope: !3246, inlinedAt: !3320)
!3378 = !DILocalVariable(name: "__fp", arg: 1, scope: !3379, file: !3189, line: 63, type: !3269)
!3379 = distinct !DISubprogram(name: "getc_unlocked", scope: !3189, file: !3189, line: 63, type: !3380, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!25, !3269}
!3382 = !{!3378}
!3383 = !DILocation(line: 63, column: 22, scope: !3379, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 201, column: 27, scope: !3246, inlinedAt: !3320)
!3385 = !DILocation(line: 65, column: 10, scope: !3379, inlinedAt: !3384)
!3386 = !{!3195, !611, i64 8}
!3387 = !{!3195, !611, i64 16}
!3388 = !{!"branch_weights", i32 2000, i32 1}
!3389 = !DILocation(line: 195, column: 27, scope: !3246, inlinedAt: !3320)
!3390 = !DILocation(line: 202, column: 27, scope: !3246, inlinedAt: !3320)
!3391 = distinct !{!3391, !3392, !3395}
!3392 = !DILocation(line: 209, column: 27, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !496, line: 207, column: 25)
!3394 = distinct !DILexicalBlock(scope: !3246, file: !496, line: 206, column: 27)
!3395 = !DILocation(line: 211, column: 58, scope: !3393)
!3396 = !DILocation(line: 65, column: 10, scope: !3379, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 210, column: 33, scope: !3393, inlinedAt: !3320)
!3398 = !DILocation(line: 63, column: 22, scope: !3379, inlinedAt: !3397)
!3399 = !DILocation(line: 210, column: 29, scope: !3393, inlinedAt: !3320)
!3400 = distinct !{!3400, !3401, !3402}
!3401 = !DILocation(line: 193, column: 19, scope: !3248)
!3402 = !DILocation(line: 241, column: 21, scope: !3248)
!3403 = !DILocation(line: 216, column: 23, scope: !3246, inlinedAt: !3320)
!3404 = !DILocation(line: 217, column: 27, scope: !3405, inlinedAt: !3320)
!3405 = distinct !DILexicalBlock(scope: !3246, file: !496, line: 217, column: 27)
!3406 = !DILocation(line: 217, column: 64, scope: !3405, inlinedAt: !3320)
!3407 = !DILocation(line: 217, column: 27, scope: !3246, inlinedAt: !3320)
!3408 = !DILocation(line: 219, column: 28, scope: !3246, inlinedAt: !3320)
!3409 = !DILocation(line: 198, column: 30, scope: !3246, inlinedAt: !3320)
!3410 = !DILocation(line: 220, column: 28, scope: !3246, inlinedAt: !3320)
!3411 = !DILocation(line: 198, column: 34, scope: !3246, inlinedAt: !3320)
!3412 = !DILocation(line: 199, column: 29, scope: !3246, inlinedAt: !3320)
!3413 = !DILocation(line: 222, column: 36, scope: !3414, inlinedAt: !3320)
!3414 = distinct !DILexicalBlock(scope: !3246, file: !496, line: 222, column: 27)
!3415 = !DILocation(line: 222, column: 27, scope: !3246, inlinedAt: !3320)
!3416 = !DILocation(line: 225, column: 63, scope: !3417, inlinedAt: !3320)
!3417 = distinct !DILexicalBlock(scope: !3414, file: !496, line: 223, column: 25)
!3418 = !DILocation(line: 225, column: 46, scope: !3417, inlinedAt: !3320)
!3419 = !DILocation(line: 226, column: 25, scope: !3417, inlinedAt: !3320)
!3420 = !DILocation(line: 229, column: 36, scope: !3421, inlinedAt: !3320)
!3421 = distinct !DILexicalBlock(scope: !3414, file: !496, line: 228, column: 25)
!3422 = !DILocation(line: 230, column: 73, scope: !3421, inlinedAt: !3320)
!3423 = !DILocation(line: 230, column: 46, scope: !3421, inlinedAt: !3320)
!3424 = !DILocation(line: 232, column: 35, scope: !3425, inlinedAt: !3320)
!3425 = distinct !DILexicalBlock(scope: !3246, file: !496, line: 232, column: 27)
!3426 = !DILocation(line: 232, column: 27, scope: !3246, inlinedAt: !3320)
!3427 = !DILocation(line: 236, column: 27, scope: !3428, inlinedAt: !3320)
!3428 = distinct !DILexicalBlock(scope: !3425, file: !496, line: 233, column: 25)
!3429 = !DILocation(line: 237, column: 27, scope: !3428, inlinedAt: !3320)
!3430 = !DILocation(line: 241, column: 21, scope: !3247, inlinedAt: !3320)
!3431 = !DILocation(line: 239, column: 39, scope: !3246, inlinedAt: !3320)
!3432 = !DILocation(line: 239, column: 50, scope: !3246, inlinedAt: !3320)
!3433 = !DILocation(line: 239, column: 61, scope: !3246, inlinedAt: !3320)
!3434 = !DILocalVariable(name: "__dest", arg: 1, scope: !3435, file: !3436, line: 88, type: !3439)
!3435 = distinct !DISubprogram(name: "strcpy", scope: !3436, file: !3436, line: 88, type: !3437, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3441)
!3436 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!50, !3439, !3440}
!3439 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3440 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3441 = !{!3434, !3442}
!3442 = !DILocalVariable(name: "__src", arg: 2, scope: !3435, file: !3436, line: 88, type: !3440)
!3443 = !DILocation(line: 88, column: 1, scope: !3435, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 239, column: 23, scope: !3246, inlinedAt: !3320)
!3445 = !DILocation(line: 90, column: 49, scope: !3435, inlinedAt: !3444)
!3446 = !DILocation(line: 90, column: 10, scope: !3435, inlinedAt: !3444)
!3447 = !DILocation(line: 88, column: 1, scope: !3435, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 240, column: 23, scope: !3246, inlinedAt: !3320)
!3449 = !DILocation(line: 90, column: 49, scope: !3435, inlinedAt: !3448)
!3450 = !DILocation(line: 90, column: 10, scope: !3435, inlinedAt: !3448)
!3451 = !DILocation(line: 193, column: 19, scope: !3247, inlinedAt: !3320)
!3452 = !DILocation(line: 242, column: 19, scope: !3249, inlinedAt: !3320)
!3453 = !DILocation(line: 243, column: 32, scope: !3454, inlinedAt: !3320)
!3454 = distinct !DILexicalBlock(scope: !3249, file: !496, line: 243, column: 23)
!3455 = !DILocation(line: 243, column: 23, scope: !3249, inlinedAt: !3320)
!3456 = !DILocation(line: 247, column: 33, scope: !3457, inlinedAt: !3320)
!3457 = distinct !DILexicalBlock(scope: !3454, file: !496, line: 246, column: 21)
!3458 = !DILocation(line: 247, column: 45, scope: !3457, inlinedAt: !3320)
!3459 = !DILocation(line: 253, column: 11, scope: !3253, inlinedAt: !3320)
!3460 = !DILocation(line: 377, column: 23, scope: !3255, inlinedAt: !3320)
!3461 = !DILocation(line: 378, column: 5, scope: !3255, inlinedAt: !3320)
!3462 = !DILocation(line: 396, column: 15, scope: !3239)
!3463 = !DILocation(line: 590, column: 8, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3321, file: !496, line: 589, column: 3)
!3465 = !DILocation(line: 590, column: 17, scope: !3464)
!3466 = !DILocation(line: 589, column: 3, scope: !3321)
!3467 = !DILocation(line: 592, column: 9, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3464, file: !496, line: 592, column: 9)
!3469 = !DILocation(line: 592, column: 35, scope: !3468)
!3470 = !DILocation(line: 593, column: 9, scope: !3468)
!3471 = !DILocation(line: 593, column: 24, scope: !3468)
!3472 = !DILocation(line: 593, column: 31, scope: !3468)
!3473 = !DILocation(line: 593, column: 34, scope: !3468)
!3474 = !DILocation(line: 593, column: 45, scope: !3468)
!3475 = !DILocation(line: 592, column: 9, scope: !3464)
!3476 = !DILocation(line: 595, column: 29, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3468, file: !496, line: 594, column: 7)
!3478 = !DILocation(line: 595, column: 27, scope: !3477)
!3479 = !DILocation(line: 595, column: 46, scope: !3477)
!3480 = !DILocation(line: 596, column: 9, scope: !3477)
!3481 = !DILocation(line: 591, column: 19, scope: !3464)
!3482 = !DILocation(line: 591, column: 36, scope: !3464)
!3483 = !DILocation(line: 591, column: 16, scope: !3464)
!3484 = !DILocation(line: 591, column: 52, scope: !3464)
!3485 = !DILocation(line: 591, column: 69, scope: !3464)
!3486 = !DILocation(line: 591, column: 49, scope: !3464)
!3487 = distinct !{!3487, !3466, !3488}
!3488 = !DILocation(line: 597, column: 7, scope: !3321)
!3489 = !DILocation(line: 602, column: 7, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3239, file: !496, line: 602, column: 7)
!3491 = !DILocation(line: 602, column: 18, scope: !3490)
!3492 = !DILocation(line: 602, column: 7, scope: !3239)
!3493 = !DILocation(line: 612, column: 3, scope: !3239)
!3494 = distinct !DISubprogram(name: "rpl_fclose", scope: !3495, file: !3495, line: 56, type: !3496, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !586, variables: !3538)
!3495 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!25, !3498}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2624, line: 7, baseType: !3500)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2626, line: 241, size: 1728, elements: !3501)
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3500, file: !2626, line: 242, baseType: !25, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3500, file: !2626, line: 247, baseType: !50, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3500, file: !2626, line: 248, baseType: !50, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3500, file: !2626, line: 249, baseType: !50, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3500, file: !2626, line: 250, baseType: !50, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3500, file: !2626, line: 251, baseType: !50, size: 64, offset: 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3500, file: !2626, line: 252, baseType: !50, size: 64, offset: 384)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3500, file: !2626, line: 253, baseType: !50, size: 64, offset: 448)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3500, file: !2626, line: 254, baseType: !50, size: 64, offset: 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3500, file: !2626, line: 256, baseType: !50, size: 64, offset: 576)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3500, file: !2626, line: 257, baseType: !50, size: 64, offset: 640)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3500, file: !2626, line: 258, baseType: !50, size: 64, offset: 704)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3500, file: !2626, line: 260, baseType: !3515, size: 64, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2626, line: 156, size: 192, elements: !3517)
!3517 = !{!3518, !3519, !3521}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3516, file: !2626, line: 157, baseType: !3515, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3516, file: !2626, line: 158, baseType: !3520, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3516, file: !2626, line: 162, baseType: !25, size: 32, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3500, file: !2626, line: 262, baseType: !3520, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3500, file: !2626, line: 264, baseType: !25, size: 32, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3500, file: !2626, line: 268, baseType: !25, size: 32, offset: 928)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3500, file: !2626, line: 270, baseType: !2652, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3500, file: !2626, line: 274, baseType: !93, size: 16, offset: 1024)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3500, file: !2626, line: 275, baseType: !2655, size: 8, offset: 1040)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3500, file: !2626, line: 276, baseType: !2657, size: 8, offset: 1048)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3500, file: !2626, line: 280, baseType: !2659, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3500, file: !2626, line: 289, baseType: !2662, size: 64, offset: 1152)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3500, file: !2626, line: 297, baseType: !49, size: 64, offset: 1216)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3500, file: !2626, line: 298, baseType: !49, size: 64, offset: 1280)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3500, file: !2626, line: 299, baseType: !49, size: 64, offset: 1344)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3500, file: !2626, line: 300, baseType: !49, size: 64, offset: 1408)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3500, file: !2626, line: 302, baseType: !94, size: 64, offset: 1472)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3500, file: !2626, line: 303, baseType: !25, size: 32, offset: 1536)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3500, file: !2626, line: 305, baseType: !2670, size: 160, offset: 1568)
!3538 = !{!3539, !3540, !3541, !3542}
!3539 = !DILocalVariable(name: "fp", arg: 1, scope: !3494, file: !3495, line: 56, type: !3498)
!3540 = !DILocalVariable(name: "saved_errno", scope: !3494, file: !3495, line: 58, type: !25)
!3541 = !DILocalVariable(name: "fd", scope: !3494, file: !3495, line: 59, type: !25)
!3542 = !DILocalVariable(name: "result", scope: !3494, file: !3495, line: 60, type: !25)
!3543 = !DILocation(line: 56, column: 19, scope: !3494)
!3544 = !DILocation(line: 58, column: 7, scope: !3494)
!3545 = !DILocation(line: 60, column: 7, scope: !3494)
!3546 = !DILocation(line: 63, column: 8, scope: !3494)
!3547 = !DILocation(line: 59, column: 7, scope: !3494)
!3548 = !DILocation(line: 64, column: 10, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3494, file: !3495, line: 64, column: 7)
!3550 = !DILocation(line: 64, column: 7, scope: !3494)
!3551 = !DILocation(line: 65, column: 12, scope: !3549)
!3552 = !DILocation(line: 65, column: 5, scope: !3549)
!3553 = !DILocation(line: 70, column: 9, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3494, file: !3495, line: 70, column: 7)
!3555 = !DILocation(line: 70, column: 23, scope: !3554)
!3556 = !DILocation(line: 70, column: 33, scope: !3554)
!3557 = !DILocation(line: 70, column: 26, scope: !3554)
!3558 = !DILocation(line: 70, column: 59, scope: !3554)
!3559 = !DILocation(line: 71, column: 7, scope: !3554)
!3560 = !DILocation(line: 71, column: 10, scope: !3554)
!3561 = !DILocation(line: 70, column: 7, scope: !3494)
!3562 = !DILocation(line: 98, column: 12, scope: !3494)
!3563 = !DILocation(line: 103, column: 7, scope: !3494)
!3564 = !DILocation(line: 72, column: 19, scope: !3554)
!3565 = !DILocation(line: 103, column: 19, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3494, file: !3495, line: 103, column: 7)
!3567 = !DILocation(line: 105, column: 13, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3566, file: !3495, line: 104, column: 5)
!3569 = !DILocation(line: 107, column: 5, scope: !3568)
!3570 = !DILocation(line: 110, column: 1, scope: !3494)
!3571 = distinct !DISubprogram(name: "rpl_fflush", scope: !3572, file: !3572, line: 127, type: !3573, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3615)
!3572 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!25, !3575}
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2624, line: 7, baseType: !3577)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2626, line: 241, size: 1728, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3577, file: !2626, line: 242, baseType: !25, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3577, file: !2626, line: 247, baseType: !50, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3577, file: !2626, line: 248, baseType: !50, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3577, file: !2626, line: 249, baseType: !50, size: 64, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3577, file: !2626, line: 250, baseType: !50, size: 64, offset: 256)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3577, file: !2626, line: 251, baseType: !50, size: 64, offset: 320)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3577, file: !2626, line: 252, baseType: !50, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3577, file: !2626, line: 253, baseType: !50, size: 64, offset: 448)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3577, file: !2626, line: 254, baseType: !50, size: 64, offset: 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3577, file: !2626, line: 256, baseType: !50, size: 64, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3577, file: !2626, line: 257, baseType: !50, size: 64, offset: 640)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3577, file: !2626, line: 258, baseType: !50, size: 64, offset: 704)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3577, file: !2626, line: 260, baseType: !3592, size: 64, offset: 768)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2626, line: 156, size: 192, elements: !3594)
!3594 = !{!3595, !3596, !3598}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3593, file: !2626, line: 157, baseType: !3592, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3593, file: !2626, line: 158, baseType: !3597, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3593, file: !2626, line: 162, baseType: !25, size: 32, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3577, file: !2626, line: 262, baseType: !3597, size: 64, offset: 832)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3577, file: !2626, line: 264, baseType: !25, size: 32, offset: 896)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3577, file: !2626, line: 268, baseType: !25, size: 32, offset: 928)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3577, file: !2626, line: 270, baseType: !2652, size: 64, offset: 960)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3577, file: !2626, line: 274, baseType: !93, size: 16, offset: 1024)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3577, file: !2626, line: 275, baseType: !2655, size: 8, offset: 1040)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3577, file: !2626, line: 276, baseType: !2657, size: 8, offset: 1048)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3577, file: !2626, line: 280, baseType: !2659, size: 64, offset: 1088)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3577, file: !2626, line: 289, baseType: !2662, size: 64, offset: 1152)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3577, file: !2626, line: 297, baseType: !49, size: 64, offset: 1216)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3577, file: !2626, line: 298, baseType: !49, size: 64, offset: 1280)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3577, file: !2626, line: 299, baseType: !49, size: 64, offset: 1344)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3577, file: !2626, line: 300, baseType: !49, size: 64, offset: 1408)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3577, file: !2626, line: 302, baseType: !94, size: 64, offset: 1472)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3577, file: !2626, line: 303, baseType: !25, size: 32, offset: 1536)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3577, file: !2626, line: 305, baseType: !2670, size: 160, offset: 1568)
!3615 = !{!3616}
!3616 = !DILocalVariable(name: "stream", arg: 1, scope: !3571, file: !3572, line: 127, type: !3575)
!3617 = !DILocation(line: 127, column: 19, scope: !3571)
!3618 = !DILocation(line: 148, column: 14, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3571, file: !3572, line: 148, column: 7)
!3620 = !DILocation(line: 148, column: 22, scope: !3619)
!3621 = !DILocation(line: 148, column: 27, scope: !3619)
!3622 = !DILocation(line: 148, column: 7, scope: !3571)
!3623 = !DILocation(line: 149, column: 12, scope: !3619)
!3624 = !DILocation(line: 149, column: 5, scope: !3619)
!3625 = !DILocalVariable(name: "fp", arg: 1, scope: !3626, file: !3572, line: 40, type: !3575)
!3626 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3572, file: !3572, line: 40, type: !3627, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3629)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{null, !3575}
!3629 = !{!3625}
!3630 = !DILocation(line: 40, column: 48, scope: !3626, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 153, column: 3, scope: !3571)
!3632 = !DILocation(line: 42, column: 11, scope: !3633, inlinedAt: !3631)
!3633 = distinct !DILexicalBlock(scope: !3626, file: !3572, line: 42, column: 7)
!3634 = !DILocation(line: 42, column: 18, scope: !3633, inlinedAt: !3631)
!3635 = !DILocation(line: 42, column: 7, scope: !3626, inlinedAt: !3631)
!3636 = !DILocation(line: 44, column: 5, scope: !3633, inlinedAt: !3631)
!3637 = !DILocation(line: 155, column: 10, scope: !3571)
!3638 = !DILocation(line: 155, column: 3, scope: !3571)
!3639 = !DILocation(line: 229, column: 1, scope: !3571)
!3640 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3641, file: !3641, line: 28, type: !3642, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !3685)
!3641 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!25, !3644, !3684, !25}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2624, line: 7, baseType: !3646)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2626, line: 241, size: 1728, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3646, file: !2626, line: 242, baseType: !25, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3646, file: !2626, line: 247, baseType: !50, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3646, file: !2626, line: 248, baseType: !50, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3646, file: !2626, line: 249, baseType: !50, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3646, file: !2626, line: 250, baseType: !50, size: 64, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3646, file: !2626, line: 251, baseType: !50, size: 64, offset: 320)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3646, file: !2626, line: 252, baseType: !50, size: 64, offset: 384)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3646, file: !2626, line: 253, baseType: !50, size: 64, offset: 448)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3646, file: !2626, line: 254, baseType: !50, size: 64, offset: 512)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3646, file: !2626, line: 256, baseType: !50, size: 64, offset: 576)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3646, file: !2626, line: 257, baseType: !50, size: 64, offset: 640)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3646, file: !2626, line: 258, baseType: !50, size: 64, offset: 704)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3646, file: !2626, line: 260, baseType: !3661, size: 64, offset: 768)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2626, line: 156, size: 192, elements: !3663)
!3663 = !{!3664, !3665, !3667}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3662, file: !2626, line: 157, baseType: !3661, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3662, file: !2626, line: 158, baseType: !3666, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3662, file: !2626, line: 162, baseType: !25, size: 32, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3646, file: !2626, line: 262, baseType: !3666, size: 64, offset: 832)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3646, file: !2626, line: 264, baseType: !25, size: 32, offset: 896)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3646, file: !2626, line: 268, baseType: !25, size: 32, offset: 928)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3646, file: !2626, line: 270, baseType: !2652, size: 64, offset: 960)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3646, file: !2626, line: 274, baseType: !93, size: 16, offset: 1024)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3646, file: !2626, line: 275, baseType: !2655, size: 8, offset: 1040)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3646, file: !2626, line: 276, baseType: !2657, size: 8, offset: 1048)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3646, file: !2626, line: 280, baseType: !2659, size: 64, offset: 1088)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3646, file: !2626, line: 289, baseType: !2662, size: 64, offset: 1152)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3646, file: !2626, line: 297, baseType: !49, size: 64, offset: 1216)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3646, file: !2626, line: 298, baseType: !49, size: 64, offset: 1280)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3646, file: !2626, line: 299, baseType: !49, size: 64, offset: 1344)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3646, file: !2626, line: 300, baseType: !49, size: 64, offset: 1408)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3646, file: !2626, line: 302, baseType: !94, size: 64, offset: 1472)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3646, file: !2626, line: 303, baseType: !25, size: 32, offset: 1536)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3646, file: !2626, line: 305, baseType: !2670, size: 160, offset: 1568)
!3684 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !862, line: 57, baseType: !2652)
!3685 = !{!3686, !3687, !3688, !3689}
!3686 = !DILocalVariable(name: "fp", arg: 1, scope: !3640, file: !3641, line: 28, type: !3644)
!3687 = !DILocalVariable(name: "offset", arg: 2, scope: !3640, file: !3641, line: 28, type: !3684)
!3688 = !DILocalVariable(name: "whence", arg: 3, scope: !3640, file: !3641, line: 28, type: !25)
!3689 = !DILocalVariable(name: "pos", scope: !3690, file: !3641, line: 116, type: !3684)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !3641, line: 112, column: 5)
!3691 = distinct !DILexicalBlock(scope: !3640, file: !3641, line: 51, column: 7)
!3692 = !DILocation(line: 28, column: 15, scope: !3640)
!3693 = !DILocation(line: 28, column: 25, scope: !3640)
!3694 = !DILocation(line: 28, column: 37, scope: !3640)
!3695 = !DILocation(line: 51, column: 11, scope: !3691)
!3696 = !DILocation(line: 51, column: 31, scope: !3691)
!3697 = !DILocation(line: 51, column: 24, scope: !3691)
!3698 = !DILocation(line: 52, column: 7, scope: !3691)
!3699 = !DILocation(line: 52, column: 14, scope: !3691)
!3700 = !{!3195, !611, i64 40}
!3701 = !DILocation(line: 52, column: 35, scope: !3691)
!3702 = !{!3195, !611, i64 32}
!3703 = !DILocation(line: 52, column: 28, scope: !3691)
!3704 = !DILocation(line: 53, column: 7, scope: !3691)
!3705 = !DILocation(line: 53, column: 14, scope: !3691)
!3706 = !{!3195, !611, i64 72}
!3707 = !DILocation(line: 53, column: 28, scope: !3691)
!3708 = !DILocation(line: 51, column: 7, scope: !3640)
!3709 = !DILocation(line: 116, column: 26, scope: !3690)
!3710 = !DILocation(line: 116, column: 19, scope: !3690)
!3711 = !DILocation(line: 116, column: 13, scope: !3690)
!3712 = !DILocation(line: 117, column: 15, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3690, file: !3641, line: 117, column: 11)
!3714 = !DILocation(line: 117, column: 11, scope: !3690)
!3715 = !DILocation(line: 127, column: 11, scope: !3690)
!3716 = !DILocation(line: 127, column: 18, scope: !3690)
!3717 = !DILocation(line: 128, column: 11, scope: !3690)
!3718 = !DILocation(line: 128, column: 19, scope: !3690)
!3719 = !{!3195, !1922, i64 144}
!3720 = !DILocation(line: 159, column: 7, scope: !3690)
!3721 = !DILocation(line: 161, column: 10, scope: !3640)
!3722 = !DILocation(line: 161, column: 3, scope: !3640)
!3723 = !DILocation(line: 162, column: 1, scope: !3640)
