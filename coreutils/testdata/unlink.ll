; ModuleID = 'coreutils-8.27/src/unlink.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s FILE\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Call the unlink function to remove the specified FILE.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
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
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"cannot unlink %s\00", align 1
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
@.str.60 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.63 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.64 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.65 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.66 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.67 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.68 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.69 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.70 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.71 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.72 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.73 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.76 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.77 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.78 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.79 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.90 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.101 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.104 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.105 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.106 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.107 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.108 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.109 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.110 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !571 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !575, metadata !576), !dbg !577
  %2 = icmp eq i32 %0, 0, !dbg !578
  br i1 %2, label %8, label %3, !dbg !580

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !581, !tbaa !583
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !581
  %6 = load i8*, i8** @program_name, align 8, !dbg !581, !tbaa !583
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !581
  br label %36, !dbg !581

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !587
  %10 = load i8*, i8** @program_name, align 8, !dbg !587, !tbaa !583
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !587
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !589
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !583
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !589
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !590
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590, !tbaa !583
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !590
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !591
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !591, !tbaa !583
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !591
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !511, metadata !576) #10, !dbg !592
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !511, metadata !576) #10, !dbg !592
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !594
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !594
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !595
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !519, metadata !576) #10, !dbg !596
  %24 = icmp eq i8* %23, null, !dbg !597
  br i1 %24, label %31, label %25, !dbg !599

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !600
  %27 = icmp eq i32 %26, 0, !dbg !600
  br i1 %27, label %31, label %28, !dbg !601

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !602
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !602
  br label %31, !dbg !604

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !605
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !605
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !606
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !606
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #15, !dbg !607
  unreachable, !dbg !607
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !608 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !613, metadata !576), !dbg !615
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !614, metadata !576), !dbg !616
  %3 = load i8*, i8** %1, align 8, !dbg !617, !tbaa !583
  tail call void @set_program_name(i8* %3) #10, !dbg !618
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !619
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !620
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !621
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !622
  %8 = load i8*, i8** @Version, align 8, !dbg !623, !tbaa !583
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !624
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !625
  %10 = icmp eq i32 %9, -1, !dbg !627
  br i1 %10, label %12, label %11, !dbg !628

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !629
  unreachable, !dbg !629

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !630, !tbaa !632
  %14 = icmp slt i32 %13, %0, !dbg !634
  br i1 %14, label %17, label %15, !dbg !635

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !636
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16) #10, !dbg !638
  tail call void @usage(i32 1) #16, !dbg !639
  unreachable, !dbg !639

; <label>:17:                                     ; preds = %12
  %18 = add nsw i32 %13, 1, !dbg !640
  %19 = icmp slt i32 %18, %0, !dbg !641
  br i1 %19, label %20, label %28, !dbg !643

; <label>:20:                                     ; preds = %17
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !644
  %22 = load i32, i32* @optind, align 4, !dbg !646, !tbaa !632
  %23 = add nsw i32 %22, 1, !dbg !647
  %24 = sext i32 %23 to i64, !dbg !648
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !648
  %26 = load i8*, i8** %25, align 8, !dbg !648, !tbaa !583
  %27 = tail call i8* @quote(i8* %26) #10, !dbg !649
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21, i8* %27) #10, !dbg !650
  tail call void @usage(i32 1) #16, !dbg !651
  unreachable, !dbg !651

; <label>:28:                                     ; preds = %17
  %29 = sext i32 %13 to i64, !dbg !652
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !652
  %31 = load i8*, i8** %30, align 8, !dbg !652, !tbaa !583
  %32 = tail call i32 @unlink(i8* %31) #10, !dbg !654
  %33 = icmp eq i32 %32, 0, !dbg !655
  br i1 %33, label %43, label %34, !dbg !656

; <label>:34:                                     ; preds = %28
  %35 = tail call i32* @__errno_location() #17, !dbg !657
  %36 = load i32, i32* %35, align 4, !dbg !657, !tbaa !632
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !657
  %38 = load i32, i32* @optind, align 4, !dbg !657, !tbaa !632
  %39 = sext i32 %38 to i64, !dbg !657
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39, !dbg !657
  %41 = load i8*, i8** %40, align 8, !dbg !657, !tbaa !583
  %42 = tail call i8* @quotearg_style(i32 4, i8* %41) #10, !dbg !657
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %36, i8* %37, i8* %42) #10, !dbg !657
  unreachable, !dbg !657

; <label>:43:                                     ; preds = %28
  ret i32 0, !dbg !658
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
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !659 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !661, metadata !576), !dbg !662
  store i8* %0, i8** @file_name, align 8, !dbg !663, !tbaa !583
  ret void, !dbg !664
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !665 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !669, metadata !576), !dbg !670
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !671, !tbaa !672
  ret void, !dbg !674
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !675 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !583
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !683
  %3 = icmp eq i32 %2, 0, !dbg !684
  br i1 %3, label %21, label %4, !dbg !685

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !686, !tbaa !672, !range !687
  %6 = icmp eq i8 %5, 0, !dbg !686
  %7 = tail call i32* @__errno_location() #17, !dbg !688
  br i1 %6, label %11, label %8, !dbg !690

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !691, !tbaa !632
  %10 = icmp eq i32 %9, 32, !dbg !692
  br i1 %10, label %21, label %11, !dbg !693

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !694
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !679, metadata !576), !dbg !695
  %13 = load i8*, i8** @file_name, align 8, !dbg !696, !tbaa !583
  %14 = icmp eq i8* %13, null, !dbg !696
  %15 = load i32, i32* %7, align 4, !tbaa !632
  br i1 %14, label %18, label %16, !dbg !697

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !698
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.18, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !699
  br label %19, !dbg !699

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.19, i64 0, i64 0), i8* %12) #10, !dbg !700
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !701, !tbaa !632
  tail call void @_exit(i32 %20) #15, !dbg !702
  unreachable, !dbg !702

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !703, !tbaa !583
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !705
  %24 = icmp eq i32 %23, 0, !dbg !706
  br i1 %24, label %27, label %25, !dbg !707

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !708, !tbaa !632
  tail call void @_exit(i32 %26) #15, !dbg !709
  unreachable, !dbg !709

; <label>:27:                                     ; preds = %21
  ret void, !dbg !710
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !711 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !716, metadata !576), !dbg !743
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !717, metadata !576), !dbg !744
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !718, metadata !576), !dbg !745
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !719, metadata !576), !dbg !746
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !720, metadata !576), !dbg !747
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !721, metadata !576), !dbg !748
  %8 = load i32, i32* @opterr, align 4, !dbg !749, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !723, metadata !576), !dbg !750
  store i32 0, i32* @opterr, align 4, !dbg !751, !tbaa !632
  %9 = icmp eq i32 %0, 2, !dbg !752
  br i1 %9, label %10, label %17, !dbg !753

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !754
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !722, metadata !576), !dbg !755
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !756

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !757
  br label %17, !dbg !758

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !759
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !759
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !724, metadata !576), !dbg !760
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !761
  call void @llvm.va_start(i8* nonnull %14), !dbg !761
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !583
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !763
  call void @exit(i32 0) #15, !dbg !764
  unreachable, !dbg !764

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !765, !tbaa !632
  store i32 0, i32* @optind, align 4, !dbg !766, !tbaa !632
  ret void, !dbg !767
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !768 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !770, metadata !576), !dbg !773
  %2 = icmp eq i8* %0, null, !dbg !774
  br i1 %2, label %3, label %6, !dbg !776

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !777, !tbaa !583
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !779
  tail call void @abort() #15, !dbg !780
  unreachable, !dbg !780

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !781
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !771, metadata !576), !dbg !782
  %8 = icmp eq i8* %7, null, !dbg !783
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !784
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !785
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !772, metadata !576), !dbg !786
  %11 = ptrtoint i8* %10 to i64, !dbg !787
  %12 = ptrtoint i8* %0 to i64, !dbg !787
  %13 = sub i64 %11, %12, !dbg !787
  %14 = icmp sgt i64 %13, 6, !dbg !789
  br i1 %14, label %15, label %24, !dbg !790

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !791
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.37, i64 0, i64 0), i64 7) #14, !dbg !792
  %18 = icmp eq i32 %17, 0, !dbg !793
  br i1 %18, label %19, label %24, !dbg !794

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !770, metadata !576), !dbg !773
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.38, i64 0, i64 0), i64 3) #14, !dbg !795
  %21 = icmp eq i32 %20, 0, !dbg !798
  br i1 %21, label %22, label %24, !dbg !799

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !800
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !770, metadata !576), !dbg !773
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !802, !tbaa !583
  br label %24, !dbg !803

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !770, metadata !576), !dbg !773
  store i8* %25, i8** @program_name, align 8, !dbg !804, !tbaa !583
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !805, !tbaa !583
  ret void, !dbg !806
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !807 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !812, metadata !576), !dbg !815
  %2 = tail call i32* @__errno_location() #17, !dbg !816
  %3 = load i32, i32* %2, align 4, !dbg !816, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !813, metadata !576), !dbg !817
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !818
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !818
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !818
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !819
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !819
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !814, metadata !576), !dbg !820
  store i32 %3, i32* %2, align 4, !dbg !821, !tbaa !632
  ret %struct.quoting_options* %8, !dbg !822
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !823 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !829, metadata !576), !dbg !830
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !831
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !831
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !832
  %5 = load i32, i32* %4, align 8, !dbg !832, !tbaa !833
  ret i32 %5, !dbg !835
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !836 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !840, metadata !576), !dbg !842
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !841, metadata !576), !dbg !843
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !844
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !844
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !845
  store i32 %1, i32* %5, align 8, !dbg !846, !tbaa !833
  ret void, !dbg !847
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !848 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !852, metadata !576), !dbg !860
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !853, metadata !576), !dbg !861
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !854, metadata !576), !dbg !862
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !855, metadata !576), !dbg !863
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !864
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !864
  %6 = lshr i8 %1, 5, !dbg !865
  %7 = zext i8 %6 to i64, !dbg !865
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !866
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !856, metadata !576), !dbg !867
  %9 = and i8 %1, 31, !dbg !868
  %10 = zext i8 %9 to i32, !dbg !869
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !858, metadata !576), !dbg !870
  %11 = load i32, i32* %8, align 4, !dbg !871, !tbaa !632
  %12 = lshr i32 %11, %10, !dbg !872
  %13 = and i32 %12, 1, !dbg !873
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !859, metadata !576), !dbg !874
  %14 = and i32 %2, 1, !dbg !875
  %15 = xor i32 %13, %14, !dbg !876
  %16 = shl i32 %15, %10, !dbg !877
  %17 = xor i32 %16, %11, !dbg !878
  store i32 %17, i32* %8, align 4, !dbg !878, !tbaa !632
  ret i32 %13, !dbg !879
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !880 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !884, metadata !576), !dbg !887
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !885, metadata !576), !dbg !888
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !889
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !884, metadata !576), !dbg !887
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !891
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !884, metadata !576), !dbg !887
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !892
  %6 = load i32, i32* %5, align 4, !dbg !892, !tbaa !893
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !886, metadata !576), !dbg !894
  store i32 %1, i32* %5, align 4, !dbg !895, !tbaa !893
  ret i32 %6, !dbg !896
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !897 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !901, metadata !576), !dbg !904
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !902, metadata !576), !dbg !905
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !903, metadata !576), !dbg !906
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !907
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !901, metadata !576), !dbg !904
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !909
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !901, metadata !576), !dbg !904
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !910
  store i32 10, i32* %6, align 8, !dbg !911, !tbaa !833
  %7 = icmp ne i8* %1, null, !dbg !912
  %8 = icmp ne i8* %2, null, !dbg !914
  %9 = and i1 %7, %8, !dbg !915
  br i1 %9, label %11, label %10, !dbg !915

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !916
  unreachable, !dbg !916

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !917
  store i8* %1, i8** %12, align 8, !dbg !918, !tbaa !919
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !920
  store i8* %2, i8** %13, align 8, !dbg !921, !tbaa !922
  ret void, !dbg !923
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !924 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !928, metadata !576), !dbg !936
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !929, metadata !576), !dbg !937
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !930, metadata !576), !dbg !938
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !931, metadata !576), !dbg !939
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !932, metadata !576), !dbg !940
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !941
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !941
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !933, metadata !576), !dbg !942
  %8 = tail call i32* @__errno_location() #17, !dbg !943
  %9 = load i32, i32* %8, align 4, !dbg !943, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !934, metadata !576), !dbg !944
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !945
  %11 = load i32, i32* %10, align 8, !dbg !945, !tbaa !833
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !946
  %13 = load i32, i32* %12, align 4, !dbg !946, !tbaa !893
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !947
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !948
  %16 = load i8*, i8** %15, align 8, !dbg !948, !tbaa !919
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !949
  %18 = load i8*, i8** %17, align 8, !dbg !949, !tbaa !922
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !950
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !935, metadata !576), !dbg !951
  store i32 %9, i32* %8, align 4, !dbg !952, !tbaa !632
  ret i64 %19, !dbg !953
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !954 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !960, metadata !576), !dbg !1024
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !961, metadata !576), !dbg !1025
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !962, metadata !576), !dbg !1026
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !963, metadata !576), !dbg !1027
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !964, metadata !576), !dbg !1028
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !965, metadata !576), !dbg !1029
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !966, metadata !576), !dbg !1030
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !967, metadata !576), !dbg !1031
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !968, metadata !576), !dbg !1032
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !970, metadata !576), !dbg !1033
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !971, metadata !576), !dbg !1034
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !972, metadata !576), !dbg !1035
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !973, metadata !576), !dbg !1036
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !974, metadata !576), !dbg !1037
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1038
  %14 = icmp eq i64 %13, 1, !dbg !1039
  %15 = lshr i32 %5, 1, !dbg !1040
  %16 = trunc i32 %15 to i8, !dbg !1040
  %17 = and i8 %16, 1, !dbg !1040
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !976, metadata !576), !dbg !1040
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !977, metadata !576), !dbg !1041
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !978, metadata !576), !dbg !1042
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !979, metadata !576), !dbg !1043
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1044

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !961, metadata !576), !dbg !1025
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !979, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !978, metadata !576), !dbg !1042
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !976, metadata !576), !dbg !1040
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !963, metadata !576), !dbg !1027
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !974, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !973, metadata !576), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !972, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !971, metadata !576), !dbg !1034
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !968, metadata !576), !dbg !1032
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !967, metadata !576), !dbg !1031
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !964, metadata !576), !dbg !1028
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
  ], !dbg !1045

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !964, metadata !576), !dbg !1028
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !976, metadata !576), !dbg !1040
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !976, metadata !576), !dbg !1040
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !964, metadata !576), !dbg !1028
  br label %94, !dbg !1046

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !976, metadata !576), !dbg !1040
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !964, metadata !576), !dbg !1028
  %43 = and i8 %36, 1, !dbg !1048
  %44 = icmp eq i8 %43, 0, !dbg !1048
  br i1 %44, label %45, label %94, !dbg !1046

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1050
  br i1 %46, label %94, label %47, !dbg !1053

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1050, !tbaa !1054
  br label %94, !dbg !1050

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.49, i64 0, i64 0), i32 %28), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !967, metadata !576), !dbg !1031
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), i32 %28), !dbg !1059
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !968, metadata !576), !dbg !1032
  br label %51, !dbg !1060

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !968, metadata !576), !dbg !1032
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !967, metadata !576), !dbg !1031
  %54 = and i8 %36, 1, !dbg !1061
  %55 = icmp eq i8 %54, 0, !dbg !1061
  br i1 %55, label %56, label %72, !dbg !1063

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !972, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !972, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !970, metadata !576), !dbg !1033
  %57 = load i8, i8* %52, align 1, !dbg !1064, !tbaa !1054
  %58 = icmp eq i8 %57, 0, !dbg !1067
  br i1 %58, label %72, label %59, !dbg !1067

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1068

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !972, metadata !576), !dbg !1035
  %64 = icmp ult i64 %63, %40, !dbg !1068
  br i1 %64, label %65, label %67, !dbg !1071

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1068
  store i8 %61, i8* %66, align 1, !dbg !1068, !tbaa !1054
  br label %67, !dbg !1068

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1071
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !970, metadata !576), !dbg !1033
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1072
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !972, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !972, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !970, metadata !576), !dbg !1033
  %70 = load i8, i8* %69, align 1, !dbg !1064, !tbaa !1054
  %71 = icmp eq i8 %70, 0, !dbg !1067
  br i1 %71, label %72, label %60, !dbg !1067, !llvm.loop !1073

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !974, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !972, metadata !576), !dbg !1035
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !973, metadata !576), !dbg !1036
  br label %94, !dbg !1076

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !974, metadata !576), !dbg !1037
  br label %76, !dbg !1077

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !974, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !976, metadata !576), !dbg !1040
  br label %78, !dbg !1078

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !976, metadata !576), !dbg !1040
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !974, metadata !576), !dbg !1037
  %81 = and i8 %80, 1, !dbg !1079
  %82 = icmp eq i8 %81, 0, !dbg !1079
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !974, metadata !576), !dbg !1037
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1081
  br label %84, !dbg !1081

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !976, metadata !576), !dbg !1040
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !974, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !964, metadata !576), !dbg !1028
  %87 = and i8 %86, 1, !dbg !1082
  %88 = icmp eq i8 %87, 0, !dbg !1082
  br i1 %88, label %89, label %94, !dbg !1084

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1085
  br i1 %90, label %94, label %91, !dbg !1088

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1085, !tbaa !1054
  br label %94, !dbg !1085

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !976, metadata !576), !dbg !1040
  br label %94, !dbg !1089

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1090
  unreachable, !dbg !1090

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !976, metadata !576), !dbg !1040
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !974, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !973, metadata !576), !dbg !1036
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !972, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !968, metadata !576), !dbg !1032
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !967, metadata !576), !dbg !1031
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !964, metadata !576), !dbg !1028
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !969, metadata !576), !dbg !1091
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
  br label %122, !dbg !1092

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !961, metadata !576), !dbg !1025
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !979, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !978, metadata !576), !dbg !1042
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !963, metadata !576), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !971, metadata !576), !dbg !1034
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !969, metadata !576), !dbg !1091
  %131 = icmp eq i64 %126, -1, !dbg !1093
  br i1 %131, label %134, label %132, !dbg !1094

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1095
  br i1 %133, label %590, label %138, !dbg !1096

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1097
  %136 = load i8, i8* %135, align 1, !dbg !1097, !tbaa !1054
  %137 = icmp eq i8 %136, 0, !dbg !1098
  br i1 %137, label %590, label %138, !dbg !1096

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !985, metadata !576), !dbg !1099
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !986, metadata !576), !dbg !1100
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !987, metadata !576), !dbg !1101
  br i1 %108, label %139, label %154, !dbg !1102

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1104
  %141 = and i1 %109, %131, !dbg !1105
  br i1 %141, label %142, label %144, !dbg !1105

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !963, metadata !576), !dbg !1027
  br label %144, !dbg !1107

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !963, metadata !576), !dbg !1027
  %146 = icmp ugt i64 %140, %145, !dbg !1108
  br i1 %146, label %154, label %147, !dbg !1109

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1110
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1111
  %150 = icmp ne i32 %149, 0, !dbg !1112
  %151 = or i1 %150, %111, !dbg !1113
  %152 = xor i1 %150, true, !dbg !1113
  %153 = zext i1 %152 to i8, !dbg !1113
  br i1 %151, label %154, label %635, !dbg !1113

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !985, metadata !576), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !963, metadata !576), !dbg !1027
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1114
  %158 = load i8, i8* %157, align 1, !dbg !1114, !tbaa !1054
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !980, metadata !576), !dbg !1115
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
  ], !dbg !1116

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1117

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1118

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !986, metadata !576), !dbg !1100
  %162 = and i8 %127, 1, !dbg !1122
  %163 = icmp eq i8 %162, 0, !dbg !1122
  %164 = and i1 %113, %163, !dbg !1122
  br i1 %164, label %165, label %181, !dbg !1122

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1124
  br i1 %166, label %167, label %169, !dbg !1128

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1124
  store i8 39, i8* %168, align 1, !dbg !1124, !tbaa !1054
  br label %169, !dbg !1124

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !970, metadata !576), !dbg !1033
  %171 = icmp ult i64 %170, %130, !dbg !1129
  br i1 %171, label %172, label %174, !dbg !1132

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1129
  store i8 36, i8* %173, align 1, !dbg !1129, !tbaa !1054
  br label %174, !dbg !1129

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !970, metadata !576), !dbg !1033
  %176 = icmp ult i64 %175, %130, !dbg !1133
  br i1 %176, label %177, label %179, !dbg !1136

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1133
  store i8 39, i8* %178, align 1, !dbg !1133, !tbaa !1054
  br label %179, !dbg !1133

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !977, metadata !576), !dbg !1041
  br label %181, !dbg !1137

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !970, metadata !576), !dbg !1033
  %184 = icmp ult i64 %182, %130, !dbg !1138
  br i1 %184, label %185, label %187, !dbg !1141

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1138
  store i8 92, i8* %186, align 1, !dbg !1138, !tbaa !1054
  br label %187, !dbg !1138

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1141
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !970, metadata !576), !dbg !1033
  br i1 %105, label %189, label %470, !dbg !1142

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1144
  %191 = icmp ult i64 %190, %155, !dbg !1145
  br i1 %191, label %192, label %470, !dbg !1146

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1147
  %194 = load i8, i8* %193, align 1, !dbg !1147, !tbaa !1054
  %195 = add i8 %194, -48, !dbg !1148
  %196 = icmp ult i8 %195, 10, !dbg !1148
  br i1 %196, label %197, label %470, !dbg !1148

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1149
  br i1 %198, label %199, label %201, !dbg !1153

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1149
  store i8 48, i8* %200, align 1, !dbg !1149, !tbaa !1054
  br label %201, !dbg !1149

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !970, metadata !576), !dbg !1033
  %203 = icmp ult i64 %202, %130, !dbg !1154
  br i1 %203, label %204, label %206, !dbg !1157

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1154
  store i8 48, i8* %205, align 1, !dbg !1154, !tbaa !1054
  br label %206, !dbg !1154

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !970, metadata !576), !dbg !1033
  br label %470, !dbg !1158

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1159

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1160

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1161

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1163

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1165
  %214 = icmp ult i64 %213, %155, !dbg !1166
  br i1 %214, label %215, label %470, !dbg !1167

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1168
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1169
  %218 = load i8, i8* %217, align 1, !dbg !1169, !tbaa !1054
  %219 = icmp eq i8 %218, 63, !dbg !1170
  br i1 %219, label %220, label %470, !dbg !1171

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1172
  %222 = load i8, i8* %221, align 1, !dbg !1172, !tbaa !1054
  %223 = sext i8 %222 to i32, !dbg !1172
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
  ], !dbg !1173

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1174

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !980, metadata !576), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !969, metadata !576), !dbg !1091
  %226 = icmp ult i64 %124, %130, !dbg !1176
  br i1 %226, label %227, label %229, !dbg !1179

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1176
  store i8 63, i8* %228, align 1, !dbg !1176, !tbaa !1054
  br label %229, !dbg !1176

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !970, metadata !576), !dbg !1033
  %231 = icmp ult i64 %230, %130, !dbg !1180
  br i1 %231, label %232, label %234, !dbg !1183

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1180
  store i8 34, i8* %233, align 1, !dbg !1180, !tbaa !1054
  br label %234, !dbg !1180

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !970, metadata !576), !dbg !1033
  %236 = icmp ult i64 %235, %130, !dbg !1184
  br i1 %236, label %237, label %239, !dbg !1187

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1184
  store i8 34, i8* %238, align 1, !dbg !1184, !tbaa !1054
  br label %239, !dbg !1184

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !970, metadata !576), !dbg !1033
  %241 = icmp ult i64 %240, %130, !dbg !1188
  br i1 %241, label %242, label %244, !dbg !1191

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1188
  store i8 63, i8* %243, align 1, !dbg !1188, !tbaa !1054
  br label %244, !dbg !1188

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1191
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !970, metadata !576), !dbg !1033
  br label %470, !dbg !1192

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !984, metadata !576), !dbg !1193
  br label %256, !dbg !1194

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !984, metadata !576), !dbg !1193
  br label %256, !dbg !1195

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !984, metadata !576), !dbg !1193
  br label %254, !dbg !1196

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !984, metadata !576), !dbg !1193
  br label %254, !dbg !1197

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !984, metadata !576), !dbg !1193
  br label %256, !dbg !1198

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !984, metadata !576), !dbg !1193
  br i1 %113, label %252, label %253, !dbg !1199

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1200

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1203

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !984, metadata !576), !dbg !1193
  br i1 %117, label %256, label %635, !dbg !1205

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !984, metadata !576), !dbg !1193
  br i1 %104, label %497, label %470, !dbg !1207

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1208
  br i1 %259, label %260, label %265, !dbg !1210

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1211, !tbaa !1054
  %262 = icmp ne i8 %261, 0, !dbg !1212
  %263 = icmp ne i64 %123, 0, !dbg !1213
  %264 = or i1 %263, %262, !dbg !1215
  br i1 %264, label %470, label %271, !dbg !1215

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1216
  %267 = icmp ne i64 %123, 0, !dbg !1213
  %268 = or i1 %267, %266, !dbg !1210
  br i1 %268, label %470, label %271, !dbg !1210

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1213
  br i1 %270, label %271, label %470, !dbg !1217

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !987, metadata !576), !dbg !1101
  br label %272, !dbg !1218

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !987, metadata !576), !dbg !1101
  br i1 %117, label %470, label %635, !dbg !1219

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !978, metadata !576), !dbg !1042
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !987, metadata !576), !dbg !1101
  br i1 %113, label %275, label %470, !dbg !1221

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1222

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1225
  %278 = icmp ne i64 %125, 0, !dbg !1227
  %279 = or i1 %278, %277, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !971, metadata !576), !dbg !1034
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !961, metadata !576), !dbg !1025
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1228
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !961, metadata !576), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !971, metadata !576), !dbg !1034
  %282 = icmp ult i64 %124, %281, !dbg !1229
  br i1 %282, label %283, label %285, !dbg !1232

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1229
  store i8 39, i8* %284, align 1, !dbg !1229, !tbaa !1054
  br label %285, !dbg !1229

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !970, metadata !576), !dbg !1033
  %287 = icmp ult i64 %286, %281, !dbg !1233
  br i1 %287, label %288, label %290, !dbg !1236

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1233
  store i8 92, i8* %289, align 1, !dbg !1233, !tbaa !1054
  br label %290, !dbg !1233

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !970, metadata !576), !dbg !1033
  %292 = icmp ult i64 %291, %281, !dbg !1237
  br i1 %292, label %293, label %295, !dbg !1240

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1237
  store i8 39, i8* %294, align 1, !dbg !1237, !tbaa !1054
  br label %295, !dbg !1237

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1240
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !977, metadata !576), !dbg !1041
  br label %470, !dbg !1241

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1242

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !988, metadata !576), !dbg !1243
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1244
  %300 = load i16*, i16** %299, align 8, !dbg !1244, !tbaa !583
  %301 = zext i8 %158 to i64, !dbg !1244
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1244
  %303 = load i16, i16* %302, align 2, !dbg !1244, !tbaa !1246
  %304 = lshr i16 %303, 14, !dbg !1248
  %305 = trunc i16 %304 to i8, !dbg !1248
  %306 = and i8 %305, 1, !dbg !1248
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !991, metadata !576), !dbg !1249
  br label %362, !dbg !1250

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1251
  store i64 0, i64* %10, align 8, !dbg !1252
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !988, metadata !576), !dbg !1243
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !991, metadata !576), !dbg !1249
  %308 = icmp eq i64 %155, -1, !dbg !1253
  br i1 %308, label %309, label %311, !dbg !1255

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !963, metadata !576), !dbg !1027
  br label %311, !dbg !1257

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !963, metadata !576), !dbg !1027
  br label %313, !dbg !1258, !llvm.loop !1259

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !991, metadata !576), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !988, metadata !576), !dbg !1243
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1261
  %316 = add i64 %314, %123, !dbg !1262
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1263
  %318 = sub i64 %312, %316, !dbg !1264
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !992, metadata !576), !dbg !1265
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1010, metadata !576), !dbg !1266
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1013, metadata !576), !dbg !1268
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1269

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !991, metadata !576), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !988, metadata !576), !dbg !1243
  %321 = icmp ugt i64 %312, %316, !dbg !1270
  br i1 %321, label %322, label %347, !dbg !1272

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1273

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !988, metadata !576), !dbg !1243
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1273
  %327 = load i8, i8* %326, align 1, !dbg !1273, !tbaa !1054
  %328 = icmp eq i8 %327, 0, !dbg !1272
  br i1 %328, label %347, label %329, !dbg !1274

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !988, metadata !576), !dbg !1243
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !988, metadata !576), !dbg !1243
  %331 = add i64 %330, %123, !dbg !1276
  %332 = icmp ult i64 %331, %312, !dbg !1270
  br i1 %332, label %323, label %347, !dbg !1272, !llvm.loop !1277

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1278
  %335 = and i1 %115, %334, !dbg !1281
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1014, metadata !576), !dbg !1282
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1014, metadata !576), !dbg !1282
  br i1 %335, label %336, label %350, !dbg !1281

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1283

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1014, metadata !576), !dbg !1282
  %339 = add i64 %338, %316, !dbg !1283
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1284
  %341 = load i8, i8* %340, align 1, !dbg !1284, !tbaa !1054
  %342 = sext i8 %341 to i32, !dbg !1284
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1285

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1014, metadata !576), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1014, metadata !576), !dbg !1282
  %345 = icmp ult i64 %344, %319, !dbg !1278
  br i1 %345, label %337, label %350, !dbg !1287, !llvm.loop !1288

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1290

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !991, metadata !576), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !988, metadata !576), !dbg !1243
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1290
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1291, !tbaa !632
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1010, metadata !576), !dbg !1266
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1293
  %353 = icmp eq i32 %352, 0, !dbg !1293
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !991, metadata !576), !dbg !1249
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1294
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !991, metadata !576), !dbg !1249
  %355 = add i64 %319, %314, !dbg !1295
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !988, metadata !576), !dbg !1243
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !991, metadata !576), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !988, metadata !576), !dbg !1243
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1290
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !992, metadata !576), !dbg !1265
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1296
  %357 = icmp eq i32 %356, 0, !dbg !1297
  br i1 %357, label %313, label %358, !dbg !1298, !llvm.loop !1259

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1299
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !991, metadata !576), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !988, metadata !576), !dbg !1243
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1299
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !991, metadata !576), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !988, metadata !576), !dbg !1243
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !963, metadata !576), !dbg !1027
  %366 = and i8 %365, 1, !dbg !1300
  %367 = icmp ne i8 %366, 0, !dbg !1300
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !987, metadata !576), !dbg !1101
  %368 = icmp ult i64 %364, 2, !dbg !1301
  %369 = or i1 %367, %112, !dbg !1302
  %370 = and i1 %368, %369, !dbg !1303
  br i1 %370, label %470, label %371, !dbg !1303

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1021, metadata !576), !dbg !1305
  br label %373, !dbg !1306

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !986, metadata !576), !dbg !1100
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !985, metadata !576), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !980, metadata !576), !dbg !1115
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !969, metadata !576), !dbg !1091
  br i1 %369, label %426, label %380, !dbg !1307

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1312

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !986, metadata !576), !dbg !1100
  %382 = and i8 %376, 1, !dbg !1315
  %383 = icmp eq i8 %382, 0, !dbg !1315
  %384 = and i1 %113, %383, !dbg !1315
  br i1 %384, label %385, label %401, !dbg !1315

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1317
  br i1 %386, label %387, label %389, !dbg !1321

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1317
  store i8 39, i8* %388, align 1, !dbg !1317, !tbaa !1054
  br label %389, !dbg !1317

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1321
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !970, metadata !576), !dbg !1033
  %391 = icmp ult i64 %390, %130, !dbg !1322
  br i1 %391, label %392, label %394, !dbg !1325

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1322
  store i8 36, i8* %393, align 1, !dbg !1322, !tbaa !1054
  br label %394, !dbg !1322

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !970, metadata !576), !dbg !1033
  %396 = icmp ult i64 %395, %130, !dbg !1326
  br i1 %396, label %397, label %399, !dbg !1329

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1326
  store i8 39, i8* %398, align 1, !dbg !1326, !tbaa !1054
  br label %399, !dbg !1326

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !977, metadata !576), !dbg !1041
  br label %401, !dbg !1330

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !970, metadata !576), !dbg !1033
  %404 = icmp ult i64 %402, %130, !dbg !1331
  br i1 %404, label %405, label %407, !dbg !1334

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1331
  store i8 92, i8* %406, align 1, !dbg !1331, !tbaa !1054
  br label %407, !dbg !1331

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !970, metadata !576), !dbg !1033
  %409 = icmp ult i64 %408, %130, !dbg !1335
  br i1 %409, label %410, label %414, !dbg !1338

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1335
  %412 = or i8 %411, 48, !dbg !1335
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1335
  store i8 %412, i8* %413, align 1, !dbg !1335, !tbaa !1054
  br label %414, !dbg !1335

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !970, metadata !576), !dbg !1033
  %416 = icmp ult i64 %415, %130, !dbg !1339
  br i1 %416, label %417, label %422, !dbg !1342

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1339
  %419 = and i8 %418, 7, !dbg !1339
  %420 = or i8 %419, 48, !dbg !1339
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1339
  store i8 %420, i8* %421, align 1, !dbg !1339, !tbaa !1054
  br label %422, !dbg !1339

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !970, metadata !576), !dbg !1033
  %424 = and i8 %377, 7, !dbg !1343
  %425 = or i8 %424, 48, !dbg !1344
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !980, metadata !576), !dbg !1115
  br label %435, !dbg !1345

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1346
  %428 = icmp eq i8 %427, 0, !dbg !1346
  br i1 %428, label %435, label %429, !dbg !1348

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1349
  br i1 %430, label %431, label %433, !dbg !1353

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1349
  store i8 92, i8* %432, align 1, !dbg !1349, !tbaa !1054
  br label %433, !dbg !1349

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !985, metadata !576), !dbg !1099
  br label %435, !dbg !1354

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !986, metadata !576), !dbg !1100
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !985, metadata !576), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !980, metadata !576), !dbg !1115
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !970, metadata !576), !dbg !1033
  %441 = add i64 %374, 1, !dbg !1355
  %442 = icmp ugt i64 %372, %441, !dbg !1357
  br i1 %442, label %443, label %535, !dbg !1358

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1359
  %445 = icmp ne i8 %444, 0, !dbg !1359
  %446 = and i8 %440, 1, !dbg !1359
  %447 = icmp eq i8 %446, 0, !dbg !1359
  %448 = and i1 %445, %447, !dbg !1359
  br i1 %448, label %449, label %460, !dbg !1359

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1362
  br i1 %450, label %451, label %453, !dbg !1366

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1362
  store i8 39, i8* %452, align 1, !dbg !1362, !tbaa !1054
  br label %453, !dbg !1362

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1366
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !970, metadata !576), !dbg !1033
  %455 = icmp ult i64 %454, %130, !dbg !1367
  br i1 %455, label %456, label %458, !dbg !1370

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1367
  store i8 39, i8* %457, align 1, !dbg !1367, !tbaa !1054
  br label %458, !dbg !1367

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !977, metadata !576), !dbg !1041
  br label %460, !dbg !1371

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !970, metadata !576), !dbg !1033
  %463 = icmp ult i64 %461, %130, !dbg !1372
  br i1 %463, label %464, label %466, !dbg !1375

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1372
  store i8 %438, i8* %465, align 1, !dbg !1372, !tbaa !1054
  br label %466, !dbg !1372

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !969, metadata !576), !dbg !1091
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1376
  %469 = load i8, i8* %468, align 1, !dbg !1376, !tbaa !1054
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !980, metadata !576), !dbg !1115
  br label %373, !dbg !1377, !llvm.loop !1378

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !961, metadata !576), !dbg !1025
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !987, metadata !576), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !986, metadata !576), !dbg !1100
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !985, metadata !576), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !980, metadata !576), !dbg !1115
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !978, metadata !576), !dbg !1042
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !963, metadata !576), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !971, metadata !576), !dbg !1034
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !969, metadata !576), !dbg !1091
  br i1 %106, label %482, label %481, !dbg !1381

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1383

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1384

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1385
  %485 = zext i8 %484 to i64, !dbg !1385
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1386
  %487 = load i32, i32* %486, align 4, !dbg !1386, !tbaa !632
  %488 = and i8 %477, 31, !dbg !1387
  %489 = zext i8 %488 to i32, !dbg !1388
  %490 = shl i32 1, %489, !dbg !1389
  %491 = and i32 %487, %490, !dbg !1389
  %492 = icmp eq i32 %491, 0, !dbg !1389
  %493 = icmp eq i8 %156, 0, !dbg !1390
  %494 = and i1 %493, %492, !dbg !1391
  br i1 %494, label %535, label %497, !dbg !1391

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1390
  br i1 %496, label %535, label %497, !dbg !1392

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !961, metadata !576), !dbg !1025
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !987, metadata !576), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !980, metadata !576), !dbg !1115
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !978, metadata !576), !dbg !1042
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !963, metadata !576), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !971, metadata !576), !dbg !1034
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !969, metadata !576), !dbg !1091
  br i1 %111, label %507, label %635, !dbg !1393

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !986, metadata !576), !dbg !1100
  %508 = and i8 %502, 1, !dbg !1395
  %509 = icmp eq i8 %508, 0, !dbg !1395
  %510 = and i1 %113, %509, !dbg !1395
  br i1 %510, label %511, label %527, !dbg !1395

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1397
  br i1 %512, label %513, label %515, !dbg !1401

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1397
  store i8 39, i8* %514, align 1, !dbg !1397, !tbaa !1054
  br label %515, !dbg !1397

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !970, metadata !576), !dbg !1033
  %517 = icmp ult i64 %516, %506, !dbg !1402
  br i1 %517, label %518, label %520, !dbg !1405

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1402
  store i8 36, i8* %519, align 1, !dbg !1402, !tbaa !1054
  br label %520, !dbg !1402

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !970, metadata !576), !dbg !1033
  %522 = icmp ult i64 %521, %506, !dbg !1406
  br i1 %522, label %523, label %525, !dbg !1409

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1406
  store i8 39, i8* %524, align 1, !dbg !1406, !tbaa !1054
  br label %525, !dbg !1406

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !977, metadata !576), !dbg !1041
  br label %527, !dbg !1410

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !970, metadata !576), !dbg !1033
  %530 = icmp ult i64 %528, %506, !dbg !1411
  br i1 %530, label %531, label %533, !dbg !1414

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1411
  store i8 92, i8* %532, align 1, !dbg !1411, !tbaa !1054
  br label %533, !dbg !1411

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !961, metadata !576), !dbg !1025
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !987, metadata !576), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !986, metadata !576), !dbg !1100
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !980, metadata !576), !dbg !1115
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !978, metadata !576), !dbg !1042
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !963, metadata !576), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !971, metadata !576), !dbg !1034
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !969, metadata !576), !dbg !1091
  br label %562, !dbg !1415

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !961, metadata !576), !dbg !1025
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !987, metadata !576), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !986, metadata !576), !dbg !1100
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !980, metadata !576), !dbg !1115
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !978, metadata !576), !dbg !1042
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !963, metadata !576), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !971, metadata !576), !dbg !1034
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !969, metadata !576), !dbg !1091
  %546 = and i8 %540, 1, !dbg !1415
  %547 = icmp ne i8 %546, 0, !dbg !1415
  %548 = and i8 %543, 1, !dbg !1415
  %549 = icmp eq i8 %548, 0, !dbg !1415
  %550 = and i1 %547, %549, !dbg !1415
  br i1 %550, label %551, label %562, !dbg !1415

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1418
  br i1 %552, label %553, label %555, !dbg !1422

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1418
  store i8 39, i8* %554, align 1, !dbg !1418, !tbaa !1054
  br label %555, !dbg !1418

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !970, metadata !576), !dbg !1033
  %557 = icmp ult i64 %556, %545, !dbg !1423
  br i1 %557, label %558, label %560, !dbg !1426

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1423
  store i8 39, i8* %559, align 1, !dbg !1423, !tbaa !1054
  br label %560, !dbg !1423

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !977, metadata !576), !dbg !1041
  br label %562, !dbg !1427

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !970, metadata !576), !dbg !1033
  %572 = icmp ult i64 %570, %563, !dbg !1428
  br i1 %572, label %573, label %575, !dbg !1431

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1428
  store i8 %565, i8* %574, align 1, !dbg !1428, !tbaa !1054
  br label %575, !dbg !1428

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !970, metadata !576), !dbg !1033
  %577 = and i8 %564, 1, !dbg !1432
  %578 = icmp eq i8 %577, 0, !dbg !1432
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !979, metadata !576), !dbg !1043
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1434
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !979, metadata !576), !dbg !1043
  br label %580, !dbg !1435

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !961, metadata !576), !dbg !1025
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !979, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !978, metadata !576), !dbg !1042
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !963, metadata !576), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !971, metadata !576), !dbg !1034
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !969, metadata !576), !dbg !1091
  %589 = add i64 %581, 1, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !969, metadata !576), !dbg !1091
  br label %122, !dbg !1437, !llvm.loop !1438

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1440
  %593 = and i1 %113, %592, !dbg !1442
  %594 = xor i1 %593, true, !dbg !1442
  %595 = or i1 %111, %594, !dbg !1442
  br i1 %595, label %596, label %635, !dbg !1442

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1443
  %598 = xor i1 %597, true, !dbg !1443
  %599 = and i8 %128, 1, !dbg !1445
  %600 = icmp eq i8 %599, 0, !dbg !1445
  %601 = or i1 %600, %598, !dbg !1443
  br i1 %601, label %611, label %602, !dbg !1443

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1446
  %604 = icmp eq i8 %603, 0, !dbg !1446
  br i1 %604, label %607, label %605, !dbg !1449

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1450
  br label %645, !dbg !1451

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1452
  %609 = icmp ne i64 %125, 0, !dbg !1454
  %610 = and i1 %609, %608, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !961, metadata !576), !dbg !1025
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !970, metadata !576), !dbg !1033
  br i1 %610, label %27, label %611, !dbg !1455

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1456
  %613 = and i1 %612, %111, !dbg !1458
  br i1 %613, label %614, label %630, !dbg !1458

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !972, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !970, metadata !576), !dbg !1033
  %615 = load i8, i8* %99, align 1, !dbg !1459, !tbaa !1054
  %616 = icmp eq i8 %615, 0, !dbg !1462
  br i1 %616, label %630, label %617, !dbg !1462

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1463

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !970, metadata !576), !dbg !1033
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !972, metadata !576), !dbg !1035
  %622 = icmp ult i64 %621, %130, !dbg !1463
  br i1 %622, label %623, label %625, !dbg !1466

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1463
  store i8 %619, i8* %624, align 1, !dbg !1463, !tbaa !1054
  br label %625, !dbg !1463

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !970, metadata !576), !dbg !1033
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1467
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !972, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !972, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !970, metadata !576), !dbg !1033
  %628 = load i8, i8* %627, align 1, !dbg !1459, !tbaa !1054
  %629 = icmp eq i8 %628, 0, !dbg !1462
  br i1 %629, label %630, label %618, !dbg !1462, !llvm.loop !1468

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !970, metadata !576), !dbg !1033
  %632 = icmp ult i64 %631, %130, !dbg !1470
  br i1 %632, label %633, label %645, !dbg !1472

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1473
  store i8 0, i8* %634, align 1, !dbg !1474, !tbaa !1054
  br label %645, !dbg !1473

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !961, metadata !576), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !963, metadata !576), !dbg !1027
  %639 = icmp ne i32 %636, 2, !dbg !1475
  %640 = icmp eq i8 %103, 0, !dbg !1477
  %641 = or i1 %639, %640, !dbg !1478
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !964, metadata !576), !dbg !1028
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !964, metadata !576), !dbg !1028
  %643 = and i32 %5, -3, !dbg !1479
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1480
  br label %645, !dbg !1481

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1482
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1483 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1487, metadata !576), !dbg !1491
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1488, metadata !576), !dbg !1492
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1493
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1489, metadata !576), !dbg !1494
  %4 = icmp eq i8* %3, %0, !dbg !1495
  br i1 %4, label %5, label %75, !dbg !1497

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1498
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1490, metadata !576), !dbg !1499
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1500, metadata !576), !dbg !1516
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1514, metadata !576), !dbg !1519
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1515, metadata !576), !dbg !1520
  %7 = load i8, i8* %6, align 1, !dbg !1521, !tbaa !1054
  %8 = sext i8 %7 to i32, !dbg !1521
  %9 = and i32 %8, -33, !dbg !1521
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1521

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1523, metadata !576), !dbg !1537
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1535, metadata !576), !dbg !1541
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1536, metadata !576), !dbg !1542
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1543
  %12 = load i8, i8* %11, align 1, !dbg !1543, !tbaa !1054
  %13 = sext i8 %12 to i32, !dbg !1543
  %14 = and i32 %13, -33, !dbg !1543
  %15 = icmp eq i32 %14, 84, !dbg !1543
  br i1 %15, label %16, label %72, !dbg !1543

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1545, metadata !576), !dbg !1558
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1556, metadata !576), !dbg !1562
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1557, metadata !576), !dbg !1563
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1564
  %18 = load i8, i8* %17, align 1, !dbg !1564, !tbaa !1054
  %19 = sext i8 %18 to i32, !dbg !1564
  %20 = and i32 %19, -33, !dbg !1564
  %21 = icmp eq i32 %20, 70, !dbg !1564
  br i1 %21, label %22, label %72, !dbg !1564

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1566, metadata !576), !dbg !1578
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1576, metadata !576), !dbg !1582
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1577, metadata !576), !dbg !1583
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1584
  %24 = load i8, i8* %23, align 1, !dbg !1584, !tbaa !1054
  %25 = icmp eq i8 %24, 45, !dbg !1584
  br i1 %25, label %26, label %72, !dbg !1586

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1587, metadata !576), !dbg !1598
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1596, metadata !576), !dbg !1602
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1597, metadata !576), !dbg !1603
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1604
  %28 = load i8, i8* %27, align 1, !dbg !1604, !tbaa !1054
  %29 = icmp eq i8 %28, 56, !dbg !1604
  br i1 %29, label %30, label %72, !dbg !1606

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1607, metadata !576), !dbg !1617
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1615, metadata !576), !dbg !1621
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1616, metadata !576), !dbg !1622
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1623
  %32 = load i8, i8* %31, align 1, !dbg !1623, !tbaa !1054
  %33 = icmp eq i8 %32, 0, !dbg !1623
  br i1 %33, label %34, label %72, !dbg !1625

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1626, !tbaa !1054
  %36 = icmp eq i8 %35, 96, !dbg !1627
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1626
  br label %75, !dbg !1628

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1523, metadata !576), !dbg !1629
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1535, metadata !576), !dbg !1633
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1536, metadata !576), !dbg !1634
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1635
  %40 = load i8, i8* %39, align 1, !dbg !1635, !tbaa !1054
  %41 = sext i8 %40 to i32, !dbg !1635
  %42 = and i32 %41, -33, !dbg !1635
  %43 = icmp eq i32 %42, 66, !dbg !1635
  br i1 %43, label %44, label %72, !dbg !1635

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1545, metadata !576), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1556, metadata !576), !dbg !1638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1557, metadata !576), !dbg !1639
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1640
  %46 = load i8, i8* %45, align 1, !dbg !1640, !tbaa !1054
  %47 = icmp eq i8 %46, 49, !dbg !1640
  br i1 %47, label %48, label %72, !dbg !1641

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1566, metadata !576), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1576, metadata !576), !dbg !1644
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1577, metadata !576), !dbg !1645
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1646
  %50 = load i8, i8* %49, align 1, !dbg !1646, !tbaa !1054
  %51 = icmp eq i8 %50, 56, !dbg !1646
  br i1 %51, label %52, label %72, !dbg !1647

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1587, metadata !576), !dbg !1648
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1596, metadata !576), !dbg !1650
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1597, metadata !576), !dbg !1651
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1652
  %54 = load i8, i8* %53, align 1, !dbg !1652, !tbaa !1054
  %55 = icmp eq i8 %54, 48, !dbg !1652
  br i1 %55, label %56, label %72, !dbg !1653

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1607, metadata !576), !dbg !1654
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1615, metadata !576), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1616, metadata !576), !dbg !1657
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1658
  %58 = load i8, i8* %57, align 1, !dbg !1658, !tbaa !1054
  %59 = icmp eq i8 %58, 51, !dbg !1658
  br i1 %59, label %60, label %72, !dbg !1659

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1660, metadata !576), !dbg !1669
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1667, metadata !576), !dbg !1673
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1668, metadata !576), !dbg !1674
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1675
  %62 = load i8, i8* %61, align 1, !dbg !1675, !tbaa !1054
  %63 = icmp eq i8 %62, 48, !dbg !1675
  br i1 %63, label %64, label %72, !dbg !1677

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1678, metadata !576), !dbg !1686
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1684, metadata !576), !dbg !1690
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1685, metadata !576), !dbg !1691
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1692
  %66 = load i8, i8* %65, align 1, !dbg !1692, !tbaa !1054
  %67 = icmp eq i8 %66, 0, !dbg !1692
  br i1 %67, label %68, label %72, !dbg !1694

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1695, !tbaa !1054
  %70 = icmp eq i8 %69, 96, !dbg !1696
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.53, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1695
  br label %75, !dbg !1697

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1698
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), !dbg !1699
  br label %75, !dbg !1700

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1701
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1702 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1706, metadata !576), !dbg !1709
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1707, metadata !576), !dbg !1710
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1708, metadata !576), !dbg !1711
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1712, metadata !576) #10, !dbg !1725
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1717, metadata !576) #10, !dbg !1727
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1718, metadata !576) #10, !dbg !1728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1719, metadata !576) #10, !dbg !1729
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1730
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1730
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1720, metadata !576) #10, !dbg !1731
  %6 = tail call i32* @__errno_location() #17, !dbg !1732
  %7 = load i32, i32* %6, align 4, !dbg !1732, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1721, metadata !576) #10, !dbg !1733
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1734
  %9 = load i32, i32* %8, align 4, !dbg !1734, !tbaa !893
  %10 = or i32 %9, 1, !dbg !1735
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1722, metadata !576) #10, !dbg !1736
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1737
  %12 = load i32, i32* %11, align 8, !dbg !1737, !tbaa !833
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1738
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1739
  %15 = load i8*, i8** %14, align 8, !dbg !1739, !tbaa !919
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1740
  %17 = load i8*, i8** %16, align 8, !dbg !1740, !tbaa !922
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !1741
  %19 = add i64 %18, 1, !dbg !1742
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1723, metadata !576) #10, !dbg !1743
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1744, metadata !576) #10, !dbg !1749
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1751
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1724, metadata !576) #10, !dbg !1752
  %21 = load i32, i32* %11, align 8, !dbg !1753, !tbaa !833
  %22 = load i8*, i8** %14, align 8, !dbg !1754, !tbaa !919
  %23 = load i8*, i8** %16, align 8, !dbg !1755, !tbaa !922
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !1756
  store i32 %7, i32* %6, align 4, !dbg !1757, !tbaa !632
  ret i8* %20, !dbg !1758
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1713 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1712, metadata !576), !dbg !1759
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1717, metadata !576), !dbg !1760
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1718, metadata !576), !dbg !1761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1719, metadata !576), !dbg !1762
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1763
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1763
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1720, metadata !576), !dbg !1764
  %7 = tail call i32* @__errno_location() #17, !dbg !1765
  %8 = load i32, i32* %7, align 4, !dbg !1765, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1721, metadata !576), !dbg !1766
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1767
  %10 = load i32, i32* %9, align 4, !dbg !1767, !tbaa !893
  %11 = icmp ne i64* %2, null, !dbg !1768
  %12 = xor i1 %11, true, !dbg !1768
  %13 = zext i1 %12 to i32, !dbg !1768
  %14 = or i32 %10, %13, !dbg !1769
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1722, metadata !576), !dbg !1770
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1771
  %16 = load i32, i32* %15, align 8, !dbg !1771, !tbaa !833
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1772
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1773
  %19 = load i8*, i8** %18, align 8, !dbg !1773, !tbaa !919
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1774
  %21 = load i8*, i8** %20, align 8, !dbg !1774, !tbaa !922
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1775
  %23 = add i64 %22, 1, !dbg !1776
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1723, metadata !576), !dbg !1777
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1744, metadata !576) #10, !dbg !1778
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1780
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1724, metadata !576), !dbg !1781
  %25 = load i32, i32* %15, align 8, !dbg !1782, !tbaa !833
  %26 = load i8*, i8** %18, align 8, !dbg !1783, !tbaa !919
  %27 = load i8*, i8** %20, align 8, !dbg !1784, !tbaa !922
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1785
  store i32 %8, i32* %7, align 4, !dbg !1786, !tbaa !632
  br i1 %11, label %29, label %30, !dbg !1787

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1788, !tbaa !1790
  br label %30, !dbg !1792

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1793
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1794 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1798, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1796, metadata !576), !dbg !1799
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1797, metadata !576), !dbg !1800
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1797, metadata !576), !dbg !1800
  %2 = load i32, i32* @nslots, align 4, !dbg !1801, !tbaa !632
  %3 = icmp sgt i32 %2, 1, !dbg !1804
  br i1 %3, label %4, label %13, !dbg !1805

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1806

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1797, metadata !576), !dbg !1800
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1806
  %8 = load i8*, i8** %7, align 8, !dbg !1806, !tbaa !1807
  tail call void @free(i8* %8) #10, !dbg !1809
  %9 = add nuw i64 %6, 1, !dbg !1810
  %10 = load i32, i32* @nslots, align 4, !dbg !1801, !tbaa !632
  %11 = sext i32 %10 to i64, !dbg !1804
  %12 = icmp slt i64 %9, %11, !dbg !1804
  br i1 %12, label %5, label %13, !dbg !1805, !llvm.loop !1811

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1813
  %15 = load i8*, i8** %14, align 8, !dbg !1813, !tbaa !1807
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1815
  br i1 %16, label %18, label %17, !dbg !1816

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !1817
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1819, !tbaa !1820
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1821, !tbaa !1807
  br label %18, !dbg !1822

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1823
  br i1 %19, label %22, label %20, !dbg !1825

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1826
  tail call void @free(i8* %21) #10, !dbg !1828
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1829, !tbaa !583
  br label %22, !dbg !1830

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1831, !tbaa !632
  ret void, !dbg !1832
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1833 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1837, metadata !576), !dbg !1839
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1838, metadata !576), !dbg !1840
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1841
  ret i8* %3, !dbg !1842
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1843 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1847, metadata !576), !dbg !1861
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1848, metadata !576), !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1849, metadata !576), !dbg !1863
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1850, metadata !576), !dbg !1864
  %5 = tail call i32* @__errno_location() #17, !dbg !1865
  %6 = load i32, i32* %5, align 4, !dbg !1865, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1851, metadata !576), !dbg !1866
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1867, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1852, metadata !576), !dbg !1868
  %8 = icmp slt i32 %0, 0, !dbg !1869
  br i1 %8, label %9, label %10, !dbg !1871

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1872
  unreachable, !dbg !1872

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1873, !tbaa !632
  %12 = icmp sgt i32 %11, %0, !dbg !1874
  br i1 %12, label %34, label %13, !dbg !1875

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1876
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1877
  br i1 %15, label %16, label %17, !dbg !1879

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1880
  unreachable, !dbg !1880

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1881
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1881
  %20 = add nsw i32 %0, 1, !dbg !1882
  %21 = sext i32 %20 to i64, !dbg !1883
  %22 = shl nsw i64 %21, 4, !dbg !1884
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !1885
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1885
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1852, metadata !576), !dbg !1868
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1886, !tbaa !583
  br i1 %14, label %25, label %26, !dbg !1887

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1888, !tbaa.struct !1890
  br label %26, !dbg !1891

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1892, !tbaa !632
  %28 = sext i32 %27 to i64, !dbg !1893
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1893
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1894
  %31 = sub nsw i32 %20, %27, !dbg !1895
  %32 = sext i32 %31 to i64, !dbg !1896
  %33 = shl nsw i64 %32, 4, !dbg !1897
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1894
  store i32 %20, i32* @nslots, align 4, !dbg !1898, !tbaa !632
  br label %34, !dbg !1899

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1852, metadata !576), !dbg !1868
  %36 = sext i32 %0 to i64, !dbg !1900
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1901
  %38 = load i64, i64* %37, align 8, !dbg !1901, !tbaa !1820
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1856, metadata !576), !dbg !1902
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1903
  %40 = load i8*, i8** %39, align 8, !dbg !1903, !tbaa !1807
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1858, metadata !576), !dbg !1904
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1905
  %42 = load i32, i32* %41, align 4, !dbg !1905, !tbaa !893
  %43 = or i32 %42, 1, !dbg !1906
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1859, metadata !576), !dbg !1907
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1908
  %45 = load i32, i32* %44, align 8, !dbg !1908, !tbaa !833
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1909
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1910
  %48 = load i8*, i8** %47, align 8, !dbg !1910, !tbaa !919
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1911
  %50 = load i8*, i8** %49, align 8, !dbg !1911, !tbaa !922
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1912
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1860, metadata !576), !dbg !1913
  %52 = icmp ugt i64 %38, %51, !dbg !1914
  br i1 %52, label %63, label %53, !dbg !1916

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1917
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1856, metadata !576), !dbg !1902
  store i64 %54, i64* %37, align 8, !dbg !1919, !tbaa !1820
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1920
  br i1 %55, label %57, label %56, !dbg !1922

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !1923
  br label %57, !dbg !1923

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1744, metadata !576) #10, !dbg !1924
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !1926
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1858, metadata !576), !dbg !1904
  store i8* %58, i8** %39, align 8, !dbg !1927, !tbaa !1807
  %59 = load i32, i32* %44, align 8, !dbg !1928, !tbaa !833
  %60 = load i8*, i8** %47, align 8, !dbg !1929, !tbaa !919
  %61 = load i8*, i8** %49, align 8, !dbg !1930, !tbaa !922
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !1931
  br label %63, !dbg !1932

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1858, metadata !576), !dbg !1904
  store i32 %6, i32* %5, align 4, !dbg !1933, !tbaa !632
  ret i8* %64, !dbg !1934
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1935 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1939, metadata !576), !dbg !1942
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1940, metadata !576), !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1941, metadata !576), !dbg !1944
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1945
  ret i8* %4, !dbg !1946
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !1947 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1951, metadata !576), !dbg !1952
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1837, metadata !576) #10, !dbg !1953
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1838, metadata !576) #10, !dbg !1955
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1956
  ret i8* %2, !dbg !1957
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !1958 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1962, metadata !576), !dbg !1964
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1963, metadata !576), !dbg !1965
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1939, metadata !576) #10, !dbg !1966
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1940, metadata !576) #10, !dbg !1968
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1941, metadata !576) #10, !dbg !1969
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1970
  ret i8* %3, !dbg !1971
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !1972 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1980, metadata !1986), !dbg !1987
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1976, metadata !576), !dbg !1989
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1977, metadata !576), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1978, metadata !576), !dbg !1991
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1992
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !1992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1979, metadata !576), !dbg !1993
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1985, metadata !576) #10, !dbg !1994
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !1995
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !1995
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1980, metadata !576) #10, !dbg !1987
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1980, metadata !1996) #10, !dbg !1987
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !1987
  %8 = icmp eq i32 %1, 10, !dbg !1997
  br i1 %8, label %9, label %10, !dbg !1999

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2000, !noalias !2001
  unreachable, !dbg !2000

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1980, metadata !1996) #10, !dbg !1987
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2004
  store i32 %1, i32* %11, align 8, !dbg !2004, !alias.scope !2001
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2004
  %13 = bitcast i32* %12 to i8*, !dbg !2004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2004
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1979, metadata !576), !dbg !1993
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2006
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2007
  ret i8* %14, !dbg !2008
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2009 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !1980, metadata !1986), !dbg !2018
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2013, metadata !576), !dbg !2020
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2014, metadata !576), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2015, metadata !576), !dbg !2022
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2016, metadata !576), !dbg !2023
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2024
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2024
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2017, metadata !576), !dbg !2025
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1985, metadata !576) #10, !dbg !2026
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2027
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2027
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1980, metadata !576) #10, !dbg !2018
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1980, metadata !1996) #10, !dbg !2018
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2018
  %9 = icmp eq i32 %1, 10, !dbg !2028
  br i1 %9, label %10, label %11, !dbg !2029

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2030, !noalias !2031
  unreachable, !dbg !2030

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1980, metadata !1996) #10, !dbg !2018
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2034
  store i32 %1, i32* %12, align 8, !dbg !2034, !alias.scope !2031
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2034
  %14 = bitcast i32* %13 to i8*, !dbg !2034
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2034
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2035
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2017, metadata !576), !dbg !2025
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2036
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2037
  ret i8* %15, !dbg !2038
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2039 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !1980, metadata !1986), !dbg !2045
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2043, metadata !576), !dbg !2048
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2044, metadata !576), !dbg !2049
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1976, metadata !576) #10, !dbg !2050
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1977, metadata !576) #10, !dbg !2051
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1978, metadata !576) #10, !dbg !2052
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2053
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2053
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1979, metadata !576) #10, !dbg !2054
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1985, metadata !576) #10, !dbg !2055
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2056
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2056
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1980, metadata !576) #10, !dbg !2045
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1980, metadata !1996) #10, !dbg !2045
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2045
  %7 = icmp eq i32 %0, 10, !dbg !2057
  br i1 %7, label %8, label %9, !dbg !2058

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2059, !noalias !2060
  unreachable, !dbg !2059

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1980, metadata !1996) #10, !dbg !2045
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2063
  store i32 %0, i32* %10, align 8, !dbg !2063, !alias.scope !2060
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2063
  %12 = bitcast i32* %11 to i8*, !dbg !2063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1979, metadata !576) #10, !dbg !2054
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2065
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2066
  ret i8* %13, !dbg !2067
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2068 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1980, metadata !1986), !dbg !2075
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2072, metadata !576), !dbg !2078
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2073, metadata !576), !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2074, metadata !576), !dbg !2080
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2013, metadata !576) #10, !dbg !2081
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2014, metadata !576) #10, !dbg !2082
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2015, metadata !576) #10, !dbg !2083
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2016, metadata !576) #10, !dbg !2084
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2085
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2017, metadata !576) #10, !dbg !2086
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1985, metadata !576) #10, !dbg !2087
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2088
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2088
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1980, metadata !576) #10, !dbg !2075
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1980, metadata !1996) #10, !dbg !2075
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2075
  %8 = icmp eq i32 %0, 10, !dbg !2089
  br i1 %8, label %9, label %10, !dbg !2090

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2091, !noalias !2092
  unreachable, !dbg !2091

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1980, metadata !1996) #10, !dbg !2075
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2095
  store i32 %0, i32* %11, align 8, !dbg !2095, !alias.scope !2092
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2095
  %13 = bitcast i32* %12 to i8*, !dbg !2095
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2095
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2096
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2017, metadata !576) #10, !dbg !2086
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2097
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2098
  ret i8* %14, !dbg !2099
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2100 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2104, metadata !576), !dbg !2108
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2105, metadata !576), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2106, metadata !576), !dbg !2110
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2111
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2111
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2112, !tbaa.struct !2113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2107, metadata !576), !dbg !2114
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !852, metadata !576), !dbg !2115
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !853, metadata !576), !dbg !2117
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !854, metadata !576), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !855, metadata !576), !dbg !2119
  %6 = lshr i8 %2, 5, !dbg !2120
  %7 = zext i8 %6 to i64, !dbg !2120
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2121
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !856, metadata !576), !dbg !2122
  %9 = and i8 %2, 31, !dbg !2123
  %10 = zext i8 %9 to i32, !dbg !2124
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !858, metadata !576), !dbg !2125
  %11 = load i32, i32* %8, align 4, !dbg !2126, !tbaa !632
  %12 = lshr i32 %11, %10, !dbg !2127
  %13 = and i32 %12, 1, !dbg !2128
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !859, metadata !576), !dbg !2129
  %14 = xor i32 %13, 1, !dbg !2130
  %15 = shl i32 %14, %10, !dbg !2131
  %16 = xor i32 %15, %11, !dbg !2132
  store i32 %16, i32* %8, align 4, !dbg !2132, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2107, metadata !576), !dbg !2114
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2133
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2134
  ret i8* %17, !dbg !2135
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2136 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2140, metadata !576), !dbg !2142
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2141, metadata !576), !dbg !2143
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2104, metadata !576) #10, !dbg !2144
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2105, metadata !576) #10, !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2106, metadata !576) #10, !dbg !2147
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2148
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2148
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2149, !tbaa.struct !2113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2107, metadata !576) #10, !dbg !2150
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !852, metadata !576) #10, !dbg !2151
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !853, metadata !576) #10, !dbg !2153
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !854, metadata !576) #10, !dbg !2154
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !855, metadata !576) #10, !dbg !2155
  %5 = lshr i8 %1, 5, !dbg !2156
  %6 = zext i8 %5 to i64, !dbg !2156
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2157
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !856, metadata !576) #10, !dbg !2158
  %8 = and i8 %1, 31, !dbg !2159
  %9 = zext i8 %8 to i32, !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !858, metadata !576) #10, !dbg !2161
  %10 = load i32, i32* %7, align 4, !dbg !2162, !tbaa !632
  %11 = lshr i32 %10, %9, !dbg !2163
  %12 = and i32 %11, 1, !dbg !2164
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !859, metadata !576) #10, !dbg !2165
  %13 = xor i32 %12, 1, !dbg !2166
  %14 = shl i32 %13, %9, !dbg !2167
  %15 = xor i32 %14, %10, !dbg !2168
  store i32 %15, i32* %7, align 4, !dbg !2168, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2107, metadata !576) #10, !dbg !2150
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2170
  ret i8* %16, !dbg !2171
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2172 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2174, metadata !576), !dbg !2175
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2140, metadata !576) #10, !dbg !2176
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2141, metadata !576) #10, !dbg !2178
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2104, metadata !576) #10, !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2105, metadata !576) #10, !dbg !2181
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2106, metadata !576) #10, !dbg !2182
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2183
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2183
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2184, !tbaa.struct !2113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2107, metadata !576) #10, !dbg !2185
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !852, metadata !576) #10, !dbg !2186
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !853, metadata !576) #10, !dbg !2188
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !854, metadata !576) #10, !dbg !2189
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !855, metadata !576) #10, !dbg !2190
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2191
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !856, metadata !576) #10, !dbg !2192
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !858, metadata !576) #10, !dbg !2193
  %5 = load i32, i32* %4, align 4, !dbg !2194, !tbaa !632
  %6 = or i32 %5, 67108864, !dbg !2195
  store i32 %6, i32* %4, align 4, !dbg !2195, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2107, metadata !576) #10, !dbg !2185
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2196
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2197
  ret i8* %7, !dbg !2198
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2199 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2201, metadata !576), !dbg !2203
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2202, metadata !576), !dbg !2204
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2104, metadata !576) #10, !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2105, metadata !576) #10, !dbg !2207
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2106, metadata !576) #10, !dbg !2208
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2209
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2210, !tbaa.struct !2113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2107, metadata !576) #10, !dbg !2211
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !852, metadata !576) #10, !dbg !2212
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !853, metadata !576) #10, !dbg !2214
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !854, metadata !576) #10, !dbg !2215
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !855, metadata !576) #10, !dbg !2216
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2217
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !856, metadata !576) #10, !dbg !2218
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !858, metadata !576) #10, !dbg !2219
  %6 = load i32, i32* %5, align 4, !dbg !2220, !tbaa !632
  %7 = or i32 %6, 67108864, !dbg !2221
  store i32 %7, i32* %5, align 4, !dbg !2221, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2107, metadata !576) #10, !dbg !2211
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2222
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2223
  ret i8* %8, !dbg !2224
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2225 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1980, metadata !1986), !dbg !2231
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2227, metadata !576), !dbg !2233
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2228, metadata !576), !dbg !2234
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2229, metadata !576), !dbg !2235
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2236
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2236
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1985, metadata !576) #10, !dbg !2237
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2238
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2238
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1980, metadata !576) #10, !dbg !2231
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1980, metadata !1996) #10, !dbg !2231
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2231
  %9 = icmp eq i32 %1, 10, !dbg !2239
  br i1 %9, label %10, label %11, !dbg !2240

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2241, !noalias !2242
  unreachable, !dbg !2241

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1980, metadata !1996) #10, !dbg !2231
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2245
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2245
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2246
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2247
  store i32 %1, i32* %13, align 8, !dbg !2247
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2247
  %15 = bitcast i32* %14 to i8*, !dbg !2247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2247
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2230, metadata !576), !dbg !2248
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !852, metadata !576), !dbg !2249
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !853, metadata !576), !dbg !2251
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !854, metadata !576), !dbg !2252
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !855, metadata !576), !dbg !2253
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2254
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !856, metadata !576), !dbg !2255
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !858, metadata !576), !dbg !2256
  %17 = load i32, i32* %16, align 4, !dbg !2257, !tbaa !632
  %18 = or i32 %17, 67108864, !dbg !2258
  store i32 %18, i32* %16, align 4, !dbg !2258, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2230, metadata !576), !dbg !2248
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2259
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2260
  ret i8* %19, !dbg !2261
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2262 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2266, metadata !576), !dbg !2270
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2267, metadata !576), !dbg !2271
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2268, metadata !576), !dbg !2272
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2269, metadata !576), !dbg !2273
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2274, metadata !576) #10, !dbg !2284
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2279, metadata !576) #10, !dbg !2286
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2280, metadata !576) #10, !dbg !2287
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2281, metadata !576) #10, !dbg !2288
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2282, metadata !576) #10, !dbg !2289
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2290
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2291, !tbaa.struct !2113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2283, metadata !576) #10, !dbg !2292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !901, metadata !576) #10, !dbg !2293
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !902, metadata !576) #10, !dbg !2295
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !903, metadata !576) #10, !dbg !2296
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !901, metadata !576) #10, !dbg !2293
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !901, metadata !576) #10, !dbg !2293
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2297
  store i32 10, i32* %7, align 8, !dbg !2298, !tbaa !833
  %8 = icmp ne i8* %1, null, !dbg !2299
  %9 = icmp ne i8* %2, null, !dbg !2300
  %10 = and i1 %8, %9, !dbg !2301
  br i1 %10, label %12, label %11, !dbg !2301

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2302
  unreachable, !dbg !2302

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2303
  store i8* %1, i8** %13, align 8, !dbg !2304, !tbaa !919
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2305
  store i8* %2, i8** %14, align 8, !dbg !2306, !tbaa !922
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2283, metadata !576) #10, !dbg !2292
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2307
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2308
  ret i8* %15, !dbg !2309
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2275 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2274, metadata !576), !dbg !2310
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2279, metadata !576), !dbg !2311
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2280, metadata !576), !dbg !2312
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2281, metadata !576), !dbg !2313
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2282, metadata !576), !dbg !2314
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2315
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2315
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2316, !tbaa.struct !2113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2283, metadata !576), !dbg !2317
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !901, metadata !576) #10, !dbg !2318
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !902, metadata !576) #10, !dbg !2320
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !903, metadata !576) #10, !dbg !2321
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !901, metadata !576) #10, !dbg !2318
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !901, metadata !576) #10, !dbg !2318
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2322
  store i32 10, i32* %8, align 8, !dbg !2323, !tbaa !833
  %9 = icmp ne i8* %1, null, !dbg !2324
  %10 = icmp ne i8* %2, null, !dbg !2325
  %11 = and i1 %9, %10, !dbg !2326
  br i1 %11, label %13, label %12, !dbg !2326

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2327
  unreachable, !dbg !2327

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2328
  store i8* %1, i8** %14, align 8, !dbg !2329, !tbaa !919
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2330
  store i8* %2, i8** %15, align 8, !dbg !2331, !tbaa !922
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2283, metadata !576), !dbg !2317
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2332
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2333
  ret i8* %16, !dbg !2334
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2335 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2339, metadata !576), !dbg !2342
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2340, metadata !576), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2341, metadata !576), !dbg !2344
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2266, metadata !576) #10, !dbg !2345
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2267, metadata !576) #10, !dbg !2347
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2268, metadata !576) #10, !dbg !2348
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2269, metadata !576) #10, !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2274, metadata !576) #10, !dbg !2350
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2279, metadata !576) #10, !dbg !2352
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2280, metadata !576) #10, !dbg !2353
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2281, metadata !576) #10, !dbg !2354
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2282, metadata !576) #10, !dbg !2355
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2356
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2357, !tbaa.struct !2113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2283, metadata !576) #10, !dbg !2358
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !901, metadata !576) #10, !dbg !2359
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !902, metadata !576) #10, !dbg !2361
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !903, metadata !576) #10, !dbg !2362
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !901, metadata !576) #10, !dbg !2359
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !901, metadata !576) #10, !dbg !2359
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2363
  store i32 10, i32* %6, align 8, !dbg !2364, !tbaa !833
  %7 = icmp ne i8* %0, null, !dbg !2365
  %8 = icmp ne i8* %1, null, !dbg !2366
  %9 = and i1 %7, %8, !dbg !2367
  br i1 %9, label %11, label %10, !dbg !2367

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2368
  unreachable, !dbg !2368

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2369
  store i8* %0, i8** %12, align 8, !dbg !2370, !tbaa !919
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2371
  store i8* %1, i8** %13, align 8, !dbg !2372, !tbaa !922
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2283, metadata !576) #10, !dbg !2358
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2373
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2374
  ret i8* %14, !dbg !2375
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2376 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2380, metadata !576), !dbg !2384
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2381, metadata !576), !dbg !2385
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2382, metadata !576), !dbg !2386
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2383, metadata !576), !dbg !2387
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2274, metadata !576) #10, !dbg !2388
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2279, metadata !576) #10, !dbg !2390
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2280, metadata !576) #10, !dbg !2391
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2281, metadata !576) #10, !dbg !2392
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2282, metadata !576) #10, !dbg !2393
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2394
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2395, !tbaa.struct !2113
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2283, metadata !576) #10, !dbg !2396
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !901, metadata !576) #10, !dbg !2397
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !902, metadata !576) #10, !dbg !2399
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !903, metadata !576) #10, !dbg !2400
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !901, metadata !576) #10, !dbg !2397
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !901, metadata !576) #10, !dbg !2397
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2401
  store i32 10, i32* %7, align 8, !dbg !2402, !tbaa !833
  %8 = icmp ne i8* %0, null, !dbg !2403
  %9 = icmp ne i8* %1, null, !dbg !2404
  %10 = and i1 %8, %9, !dbg !2405
  br i1 %10, label %12, label %11, !dbg !2405

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2406
  unreachable, !dbg !2406

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2407
  store i8* %0, i8** %13, align 8, !dbg !2408, !tbaa !919
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2409
  store i8* %1, i8** %14, align 8, !dbg !2410, !tbaa !922
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2283, metadata !576) #10, !dbg !2396
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2411
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2412
  ret i8* %15, !dbg !2413
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2414 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2418, metadata !576), !dbg !2421
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2419, metadata !576), !dbg !2422
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2420, metadata !576), !dbg !2423
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2424
  ret i8* %4, !dbg !2425
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2426 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2430, metadata !576), !dbg !2432
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2431, metadata !576), !dbg !2433
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2418, metadata !576) #10, !dbg !2434
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2419, metadata !576) #10, !dbg !2436
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2420, metadata !576) #10, !dbg !2437
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2438
  ret i8* %3, !dbg !2439
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2440 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2444, metadata !576), !dbg !2446
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2445, metadata !576), !dbg !2447
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2418, metadata !576) #10, !dbg !2448
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2419, metadata !576) #10, !dbg !2450
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2420, metadata !576) #10, !dbg !2451
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2452
  ret i8* %3, !dbg !2453
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2454 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2458, metadata !576), !dbg !2459
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2444, metadata !576) #10, !dbg !2460
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2445, metadata !576) #10, !dbg !2462
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2418, metadata !576) #10, !dbg !2463
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2419, metadata !576) #10, !dbg !2465
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2420, metadata !576) #10, !dbg !2466
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2467
  ret i8* %2, !dbg !2468
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2469 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2527, metadata !576), !dbg !2533
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2528, metadata !576), !dbg !2534
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2529, metadata !576), !dbg !2535
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2530, metadata !576), !dbg !2536
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2531, metadata !576), !dbg !2537
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2532, metadata !576), !dbg !2538
  %7 = icmp eq i8* %1, null, !dbg !2539
  br i1 %7, label %10, label %8, !dbg !2541

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2542
  br label %12, !dbg !2542

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.61, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2543
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i32 5) #10, !dbg !2544
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2544
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.63, i64 0, i64 0), i32 5) #10, !dbg !2545
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2545
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
  ], !dbg !2546

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2547
  unreachable, !dbg !2547

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.64, i64 0, i64 0), i32 5) #10, !dbg !2549
  %20 = load i8*, i8** %4, align 8, !dbg !2549, !tbaa !583
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2549
  br label %146, !dbg !2550

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.65, i64 0, i64 0), i32 5) #10, !dbg !2551
  %24 = load i8*, i8** %4, align 8, !dbg !2551, !tbaa !583
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2551
  %26 = load i8*, i8** %25, align 8, !dbg !2551, !tbaa !583
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2551
  br label %146, !dbg !2552

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.66, i64 0, i64 0), i32 5) #10, !dbg !2553
  %30 = load i8*, i8** %4, align 8, !dbg !2553, !tbaa !583
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2553
  %32 = load i8*, i8** %31, align 8, !dbg !2553, !tbaa !583
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2553
  %34 = load i8*, i8** %33, align 8, !dbg !2553, !tbaa !583
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2553
  br label %146, !dbg !2554

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.67, i64 0, i64 0), i32 5) #10, !dbg !2555
  %38 = load i8*, i8** %4, align 8, !dbg !2555, !tbaa !583
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2555
  %40 = load i8*, i8** %39, align 8, !dbg !2555, !tbaa !583
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2555
  %42 = load i8*, i8** %41, align 8, !dbg !2555, !tbaa !583
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2555
  %44 = load i8*, i8** %43, align 8, !dbg !2555, !tbaa !583
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2555
  br label %146, !dbg !2556

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.68, i64 0, i64 0), i32 5) #10, !dbg !2557
  %48 = load i8*, i8** %4, align 8, !dbg !2557, !tbaa !583
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2557
  %50 = load i8*, i8** %49, align 8, !dbg !2557, !tbaa !583
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2557
  %52 = load i8*, i8** %51, align 8, !dbg !2557, !tbaa !583
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2557
  %54 = load i8*, i8** %53, align 8, !dbg !2557, !tbaa !583
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2557
  %56 = load i8*, i8** %55, align 8, !dbg !2557, !tbaa !583
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2557
  br label %146, !dbg !2558

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.69, i64 0, i64 0), i32 5) #10, !dbg !2559
  %60 = load i8*, i8** %4, align 8, !dbg !2559, !tbaa !583
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2559
  %62 = load i8*, i8** %61, align 8, !dbg !2559, !tbaa !583
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2559
  %64 = load i8*, i8** %63, align 8, !dbg !2559, !tbaa !583
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2559
  %66 = load i8*, i8** %65, align 8, !dbg !2559, !tbaa !583
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2559
  %68 = load i8*, i8** %67, align 8, !dbg !2559, !tbaa !583
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2559
  %70 = load i8*, i8** %69, align 8, !dbg !2559, !tbaa !583
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2559
  br label %146, !dbg !2560

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.70, i64 0, i64 0), i32 5) #10, !dbg !2561
  %74 = load i8*, i8** %4, align 8, !dbg !2561, !tbaa !583
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2561
  %76 = load i8*, i8** %75, align 8, !dbg !2561, !tbaa !583
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2561
  %78 = load i8*, i8** %77, align 8, !dbg !2561, !tbaa !583
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2561
  %80 = load i8*, i8** %79, align 8, !dbg !2561, !tbaa !583
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2561
  %82 = load i8*, i8** %81, align 8, !dbg !2561, !tbaa !583
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2561
  %84 = load i8*, i8** %83, align 8, !dbg !2561, !tbaa !583
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2561
  %86 = load i8*, i8** %85, align 8, !dbg !2561, !tbaa !583
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2561
  br label %146, !dbg !2562

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.71, i64 0, i64 0), i32 5) #10, !dbg !2563
  %90 = load i8*, i8** %4, align 8, !dbg !2563, !tbaa !583
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2563
  %92 = load i8*, i8** %91, align 8, !dbg !2563, !tbaa !583
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2563
  %94 = load i8*, i8** %93, align 8, !dbg !2563, !tbaa !583
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2563
  %96 = load i8*, i8** %95, align 8, !dbg !2563, !tbaa !583
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2563
  %98 = load i8*, i8** %97, align 8, !dbg !2563, !tbaa !583
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2563
  %100 = load i8*, i8** %99, align 8, !dbg !2563, !tbaa !583
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2563
  %102 = load i8*, i8** %101, align 8, !dbg !2563, !tbaa !583
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2563
  %104 = load i8*, i8** %103, align 8, !dbg !2563, !tbaa !583
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2563
  br label %146, !dbg !2564

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.72, i64 0, i64 0), i32 5) #10, !dbg !2565
  %108 = load i8*, i8** %4, align 8, !dbg !2565, !tbaa !583
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2565
  %110 = load i8*, i8** %109, align 8, !dbg !2565, !tbaa !583
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2565
  %112 = load i8*, i8** %111, align 8, !dbg !2565, !tbaa !583
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2565
  %114 = load i8*, i8** %113, align 8, !dbg !2565, !tbaa !583
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2565
  %116 = load i8*, i8** %115, align 8, !dbg !2565, !tbaa !583
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2565
  %118 = load i8*, i8** %117, align 8, !dbg !2565, !tbaa !583
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2565
  %120 = load i8*, i8** %119, align 8, !dbg !2565, !tbaa !583
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2565
  %122 = load i8*, i8** %121, align 8, !dbg !2565, !tbaa !583
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2565
  %124 = load i8*, i8** %123, align 8, !dbg !2565, !tbaa !583
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2565
  br label %146, !dbg !2566

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.73, i64 0, i64 0), i32 5) #10, !dbg !2567
  %128 = load i8*, i8** %4, align 8, !dbg !2567, !tbaa !583
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2567
  %130 = load i8*, i8** %129, align 8, !dbg !2567, !tbaa !583
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2567
  %132 = load i8*, i8** %131, align 8, !dbg !2567, !tbaa !583
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2567
  %134 = load i8*, i8** %133, align 8, !dbg !2567, !tbaa !583
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2567
  %136 = load i8*, i8** %135, align 8, !dbg !2567, !tbaa !583
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2567
  %138 = load i8*, i8** %137, align 8, !dbg !2567, !tbaa !583
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2567
  %140 = load i8*, i8** %139, align 8, !dbg !2567, !tbaa !583
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2567
  %142 = load i8*, i8** %141, align 8, !dbg !2567, !tbaa !583
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2567
  %144 = load i8*, i8** %143, align 8, !dbg !2567, !tbaa !583
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2567
  br label %146, !dbg !2568

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2569
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2570 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2574, metadata !576), !dbg !2580
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2575, metadata !576), !dbg !2581
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2576, metadata !576), !dbg !2582
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2577, metadata !576), !dbg !2583
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2578, metadata !576), !dbg !2584
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2579, metadata !576), !dbg !2585
  br label %6, !dbg !2586

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2579, metadata !576), !dbg !2585
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2588
  %9 = load i8*, i8** %8, align 8, !dbg !2588, !tbaa !583
  %10 = icmp eq i8* %9, null, !dbg !2590
  %11 = add i64 %7, 1, !dbg !2591
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2579, metadata !576), !dbg !2585
  br i1 %10, label %12, label %6, !dbg !2590, !llvm.loop !2592

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2594
  ret void, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2596 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2607, metadata !576), !dbg !2615
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2608, metadata !576), !dbg !2616
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2609, metadata !576), !dbg !2617
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2610, metadata !576), !dbg !2618
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2611, metadata !576), !dbg !2619
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2620
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2620
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2613, metadata !576), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  %11 = load i32, i32* %8, align 8, !dbg !2623
  %12 = icmp ult i32 %11, 41, !dbg !2623
  br i1 %12, label %13, label %18, !dbg !2623

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2623
  %15 = sext i32 %11 to i64, !dbg !2623
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2623
  %17 = add i32 %11, 8, !dbg !2623
  store i32 %17, i32* %8, align 8, !dbg !2623
  br label %21, !dbg !2623

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2623
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2623
  store i8* %20, i8** %10, align 8, !dbg !2623
  br label %21, !dbg !2623

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2623
  %25 = load i8*, i8** %24, align 8, !dbg !2623
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2626
  store i8* %25, i8** %26, align 16, !dbg !2627, !tbaa !583
  %27 = icmp eq i8* %25, null, !dbg !2628
  br i1 %27, label %30, label %28, !dbg !2629

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  %29 = icmp ult i32 %22, 41, !dbg !2623
  br i1 %29, label %35, label %32, !dbg !2623

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2630
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2631
  ret void, !dbg !2631

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2623
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2623
  store i8* %34, i8** %10, align 8, !dbg !2623
  br label %40, !dbg !2623

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2623
  %37 = sext i32 %22 to i64, !dbg !2623
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2623
  %39 = add i32 %22, 8, !dbg !2623
  store i32 %39, i32* %8, align 8, !dbg !2623
  br label %40, !dbg !2623

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2623
  %44 = load i8*, i8** %43, align 8, !dbg !2623
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2626
  store i8* %44, i8** %45, align 8, !dbg !2627, !tbaa !583
  %46 = icmp eq i8* %44, null, !dbg !2628
  br i1 %46, label %30, label %47, !dbg !2629

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  %48 = icmp ult i32 %41, 41, !dbg !2623
  br i1 %48, label %52, label %49, !dbg !2623

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2623
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2623
  store i8* %51, i8** %10, align 8, !dbg !2623
  br label %57, !dbg !2623

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2623
  %54 = sext i32 %41 to i64, !dbg !2623
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2623
  %56 = add i32 %41, 8, !dbg !2623
  store i32 %56, i32* %8, align 8, !dbg !2623
  br label %57, !dbg !2623

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2623
  %61 = load i8*, i8** %60, align 8, !dbg !2623
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2626
  store i8* %61, i8** %62, align 16, !dbg !2627, !tbaa !583
  %63 = icmp eq i8* %61, null, !dbg !2628
  br i1 %63, label %30, label %64, !dbg !2629

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  %65 = icmp ult i32 %58, 41, !dbg !2623
  br i1 %65, label %69, label %66, !dbg !2623

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2623
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2623
  store i8* %68, i8** %10, align 8, !dbg !2623
  br label %74, !dbg !2623

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2623
  %71 = sext i32 %58 to i64, !dbg !2623
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2623
  %73 = add i32 %58, 8, !dbg !2623
  store i32 %73, i32* %8, align 8, !dbg !2623
  br label %74, !dbg !2623

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2623
  %78 = load i8*, i8** %77, align 8, !dbg !2623
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2626
  store i8* %78, i8** %79, align 8, !dbg !2627, !tbaa !583
  %80 = icmp eq i8* %78, null, !dbg !2628
  br i1 %80, label %30, label %81, !dbg !2629

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  %82 = icmp ult i32 %75, 41, !dbg !2623
  br i1 %82, label %86, label %83, !dbg !2623

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2623
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2623
  store i8* %85, i8** %10, align 8, !dbg !2623
  br label %91, !dbg !2623

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2623
  %88 = sext i32 %75 to i64, !dbg !2623
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2623
  %90 = add i32 %75, 8, !dbg !2623
  store i32 %90, i32* %8, align 8, !dbg !2623
  br label %91, !dbg !2623

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2623
  %95 = load i8*, i8** %94, align 8, !dbg !2623
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2626
  store i8* %95, i8** %96, align 16, !dbg !2627, !tbaa !583
  %97 = icmp eq i8* %95, null, !dbg !2628
  br i1 %97, label %30, label %98, !dbg !2629

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  %99 = icmp ult i32 %92, 41, !dbg !2623
  br i1 %99, label %103, label %100, !dbg !2623

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2623
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2623
  store i8* %102, i8** %10, align 8, !dbg !2623
  br label %108, !dbg !2623

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2623
  %105 = sext i32 %92 to i64, !dbg !2623
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2623
  %107 = add i32 %92, 8, !dbg !2623
  store i32 %107, i32* %8, align 8, !dbg !2623
  br label %108, !dbg !2623

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2623
  %111 = load i8*, i8** %110, align 8, !dbg !2623
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2626
  store i8* %111, i8** %112, align 8, !dbg !2627, !tbaa !583
  %113 = icmp eq i8* %111, null, !dbg !2628
  br i1 %113, label %30, label %114, !dbg !2629

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  %115 = load i8*, i8** %10, align 8, !dbg !2623
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2623
  store i8* %116, i8** %10, align 8, !dbg !2623
  %117 = bitcast i8* %115 to i8**, !dbg !2623
  %118 = load i8*, i8** %117, align 8, !dbg !2623
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2626
  store i8* %118, i8** %119, align 16, !dbg !2627, !tbaa !583
  %120 = icmp eq i8* %118, null, !dbg !2628
  br i1 %120, label %30, label %121, !dbg !2629

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  %122 = load i8*, i8** %10, align 8, !dbg !2623
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2623
  store i8* %123, i8** %10, align 8, !dbg !2623
  %124 = bitcast i8* %122 to i8**, !dbg !2623
  %125 = load i8*, i8** %124, align 8, !dbg !2623
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2626
  store i8* %125, i8** %126, align 8, !dbg !2627, !tbaa !583
  %127 = icmp eq i8* %125, null, !dbg !2628
  br i1 %127, label %30, label %128, !dbg !2629

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  %129 = load i8*, i8** %10, align 8, !dbg !2623
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2623
  store i8* %130, i8** %10, align 8, !dbg !2623
  %131 = bitcast i8* %129 to i8**, !dbg !2623
  %132 = load i8*, i8** %131, align 8, !dbg !2623
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2626
  store i8* %132, i8** %133, align 16, !dbg !2627, !tbaa !583
  %134 = icmp eq i8* %132, null, !dbg !2628
  br i1 %134, label %30, label %135, !dbg !2629

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2612, metadata !576), !dbg !2622
  %136 = load i8*, i8** %10, align 8, !dbg !2623
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2623
  store i8* %137, i8** %10, align 8, !dbg !2623
  %138 = bitcast i8* %136 to i8**, !dbg !2623
  %139 = load i8*, i8** %138, align 8, !dbg !2623
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2626
  store i8* %139, i8** %140, align 8, !dbg !2627, !tbaa !583
  %141 = icmp eq i8* %139, null, !dbg !2628
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2612, metadata !576), !dbg !2622
  %142 = select i1 %141, i64 9, i64 10, !dbg !2629
  br label %30, !dbg !2629
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2632 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2636, metadata !576), !dbg !2645
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2637, metadata !576), !dbg !2646
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2638, metadata !576), !dbg !2647
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2639, metadata !576), !dbg !2648
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2649
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2649
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2640, metadata !576), !dbg !2650
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2651
  call void @llvm.va_start(i8* nonnull %6), !dbg !2651
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2652
  call void @llvm.va_end(i8* nonnull %6), !dbg !2653
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2654
  ret void, !dbg !2654
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2655 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.76, i64 0, i64 0), i32 5) #10, !dbg !2656
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.77, i64 0, i64 0)) #10, !dbg !2656
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !2657
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.79, i64 0, i64 0)) #10, !dbg !2657
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !2658
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2658, !tbaa !583
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2658
  ret void, !dbg !2659
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2660 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2664, metadata !576), !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2665, metadata !576), !dbg !2667
  %3 = udiv i64 9223372036854775807, %1, !dbg !2668
  %4 = icmp ult i64 %3, %0, !dbg !2668
  br i1 %4, label %5, label %6, !dbg !2670

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2671
  unreachable, !dbg !2671

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2672
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2673, metadata !576) #10, !dbg !2680
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2682
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2679, metadata !576) #10, !dbg !2683
  %9 = icmp eq i8* %8, null, !dbg !2684
  %10 = icmp ne i64 %7, 0, !dbg !2686
  %11 = and i1 %10, %9, !dbg !2687
  br i1 %11, label %12, label %13, !dbg !2687

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2688
  unreachable, !dbg !2688

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2689
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2674 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2673, metadata !576), !dbg !2690
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2691
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2679, metadata !576), !dbg !2692
  %3 = icmp eq i8* %2, null, !dbg !2693
  %4 = icmp ne i64 %0, 0, !dbg !2694
  %5 = and i1 %4, %3, !dbg !2695
  br i1 %5, label %6, label %7, !dbg !2695

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2696
  unreachable, !dbg !2696

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2697
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2698 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2702, metadata !576), !dbg !2705
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2703, metadata !576), !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2704, metadata !576), !dbg !2707
  %4 = udiv i64 9223372036854775807, %2, !dbg !2708
  %5 = icmp ult i64 %4, %1, !dbg !2708
  br i1 %5, label %6, label %7, !dbg !2710

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2711
  unreachable, !dbg !2711

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2712
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2713, metadata !576) #10, !dbg !2719
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2718, metadata !576) #10, !dbg !2721
  %9 = icmp eq i64 %8, 0, !dbg !2722
  %10 = icmp ne i8* %0, null, !dbg !2724
  %11 = and i1 %10, %9, !dbg !2725
  br i1 %11, label %12, label %13, !dbg !2725

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2726
  br label %19, !dbg !2728

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2729
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2713, metadata !576) #10, !dbg !2719
  %15 = icmp eq i8* %14, null, !dbg !2730
  %16 = icmp ne i64 %8, 0, !dbg !2732
  %17 = and i1 %16, %15, !dbg !2733
  br i1 %17, label %18, label %19, !dbg !2733

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2734
  unreachable, !dbg !2734

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2735
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2714 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2713, metadata !576), !dbg !2736
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2718, metadata !576), !dbg !2737
  %3 = icmp eq i64 %1, 0, !dbg !2738
  %4 = icmp ne i8* %0, null, !dbg !2739
  %5 = and i1 %4, %3, !dbg !2740
  br i1 %5, label %6, label %7, !dbg !2740

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2741
  br label %13, !dbg !2742

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2743
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2713, metadata !576), !dbg !2736
  %9 = icmp eq i8* %8, null, !dbg !2744
  %10 = icmp ne i64 %1, 0, !dbg !2745
  %11 = and i1 %10, %9, !dbg !2746
  br i1 %11, label %12, label %13, !dbg !2746

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2747
  unreachable, !dbg !2747

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2748
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !536 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !541, metadata !576), !dbg !2749
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !542, metadata !576), !dbg !2750
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !543, metadata !576), !dbg !2751
  %4 = load i64, i64* %1, align 8, !dbg !2752, !tbaa !1790
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !544, metadata !576), !dbg !2753
  %5 = icmp eq i8* %0, null, !dbg !2754
  br i1 %5, label %6, label %13, !dbg !2756

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2757
  br i1 %7, label %8, label %17, !dbg !2760

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2761
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !544, metadata !576), !dbg !2753
  %10 = icmp ugt i64 %2, 128, !dbg !2763
  %11 = zext i1 %10 to i64, !dbg !2763
  %12 = add nuw nsw i64 %9, %11, !dbg !2764
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !544, metadata !576), !dbg !2753
  br label %17, !dbg !2765

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2766
  %15 = icmp ugt i64 %14, %4, !dbg !2769
  br i1 %15, label %20, label %16, !dbg !2770

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2771
  unreachable, !dbg !2771

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !544, metadata !576), !dbg !2753
  store i64 %18, i64* %1, align 8, !dbg !2772, !tbaa !1790
  %19 = mul i64 %18, %2, !dbg !2773
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2713, metadata !576) #10, !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2718, metadata !576) #10, !dbg !2776
  br label %27, !dbg !2777

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2778
  %22 = add i64 %4, 1, !dbg !2779
  %23 = add i64 %22, %21, !dbg !2780
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !544, metadata !576), !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !544, metadata !576), !dbg !2753
  store i64 %23, i64* %1, align 8, !dbg !2772, !tbaa !1790
  %24 = mul i64 %23, %2, !dbg !2773
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2713, metadata !576) #10, !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2718, metadata !576) #10, !dbg !2776
  %25 = icmp eq i64 %24, 0, !dbg !2781
  br i1 %25, label %26, label %27, !dbg !2777

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !2782
  br label %34, !dbg !2783

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !2784
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2713, metadata !576) #10, !dbg !2774
  %30 = icmp eq i8* %29, null, !dbg !2785
  %31 = icmp ne i64 %28, 0, !dbg !2786
  %32 = and i1 %31, %30, !dbg !2787
  br i1 %32, label %33, label %34, !dbg !2787

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2788
  unreachable, !dbg !2788

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2789
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2790 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2792, metadata !576), !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2673, metadata !576) #10, !dbg !2794
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2796
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2679, metadata !576) #10, !dbg !2797
  %3 = icmp eq i8* %2, null, !dbg !2798
  %4 = icmp ne i64 %0, 0, !dbg !2799
  %5 = and i1 %4, %3, !dbg !2800
  br i1 %5, label %6, label %7, !dbg !2800

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2801
  unreachable, !dbg !2801

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2802
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2803 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2807, metadata !576), !dbg !2809
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2808, metadata !576), !dbg !2810
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !541, metadata !576) #10, !dbg !2811
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !542, metadata !576) #10, !dbg !2813
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !543, metadata !576) #10, !dbg !2814
  %3 = load i64, i64* %1, align 8, !dbg !2815, !tbaa !1790
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !544, metadata !576) #10, !dbg !2816
  %4 = icmp eq i8* %0, null, !dbg !2817
  br i1 %4, label %5, label %8, !dbg !2818

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2819
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !544, metadata !576) #10, !dbg !2816
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !544, metadata !576) #10, !dbg !2816
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2820
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !544, metadata !576) #10, !dbg !2816
  store i64 %7, i64* %1, align 8, !dbg !2821, !tbaa !1790
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2713, metadata !576) #10, !dbg !2822
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2718, metadata !576) #10, !dbg !2824
  br label %17, !dbg !2825

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2826
  br i1 %9, label %11, label %10, !dbg !2827

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2828
  unreachable, !dbg !2828

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2829
  %13 = add i64 %3, 1, !dbg !2830
  %14 = add i64 %13, %12, !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !544, metadata !576) #10, !dbg !2816
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !544, metadata !576) #10, !dbg !2816
  store i64 %14, i64* %1, align 8, !dbg !2821, !tbaa !1790
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2713, metadata !576) #10, !dbg !2822
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2718, metadata !576) #10, !dbg !2824
  %15 = icmp eq i64 %14, 0, !dbg !2832
  br i1 %15, label %16, label %17, !dbg !2825

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !2833
  br label %24, !dbg !2834

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !2835
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2713, metadata !576) #10, !dbg !2822
  %20 = icmp eq i8* %19, null, !dbg !2836
  %21 = icmp ne i64 %18, 0, !dbg !2837
  %22 = and i1 %21, %20, !dbg !2838
  br i1 %22, label %23, label %24, !dbg !2838

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2839
  unreachable, !dbg !2839

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2841 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2843, metadata !576), !dbg !2844
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2673, metadata !576) #10, !dbg !2845
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2847
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2679, metadata !576) #10, !dbg !2848
  %3 = icmp eq i8* %2, null, !dbg !2849
  %4 = icmp ne i64 %0, 0, !dbg !2850
  %5 = and i1 %4, %3, !dbg !2851
  br i1 %5, label %6, label %7, !dbg !2851

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2852
  unreachable, !dbg !2852

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2853
  ret i8* %2, !dbg !2854
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2855 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2857, metadata !576), !dbg !2860
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2858, metadata !576), !dbg !2861
  %3 = udiv i64 9223372036854775807, %1, !dbg !2862
  %4 = icmp ult i64 %3, %0, !dbg !2862
  br i1 %4, label %8, label %5, !dbg !2864

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !2865
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2859, metadata !576), !dbg !2866
  %7 = icmp eq i8* %6, null, !dbg !2867
  br i1 %7, label %8, label %9, !dbg !2868

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2869
  unreachable, !dbg !2869

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2870
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2871 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2877, metadata !576), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2878, metadata !576), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2673, metadata !576) #10, !dbg !2881
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !2883
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2679, metadata !576) #10, !dbg !2884
  %4 = icmp eq i8* %3, null, !dbg !2885
  %5 = icmp ne i64 %1, 0, !dbg !2886
  %6 = and i1 %5, %4, !dbg !2887
  br i1 %6, label %7, label %8, !dbg !2887

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2888
  unreachable, !dbg !2888

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2889
  ret i8* %3, !dbg !2890
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2891 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2893, metadata !576), !dbg !2894
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2895
  %3 = add i64 %2, 1, !dbg !2896
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2877, metadata !576) #10, !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2878, metadata !576) #10, !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2673, metadata !576) #10, !dbg !2900
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !2902
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2679, metadata !576) #10, !dbg !2903
  %5 = icmp eq i8* %4, null, !dbg !2904
  %6 = icmp ne i64 %3, 0, !dbg !2905
  %7 = and i1 %6, %5, !dbg !2906
  br i1 %7, label %8, label %9, !dbg !2906

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2907
  unreachable, !dbg !2907

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !2908
  ret i8* %4, !dbg !2909
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2910 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2912, !tbaa !632
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.90, i64 0, i64 0), i32 5) #10, !dbg !2913
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i64 0, i64 0), i8* %2) #10, !dbg !2914
  tail call void @abort() #15, !dbg !2915
  unreachable, !dbg !2915
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2916 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2919, metadata !576), !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2920, metadata !576), !dbg !2926
  %3 = icmp eq i64 %0, 0, !dbg !2927
  %4 = icmp eq i64 %1, 0, !dbg !2928
  %5 = or i1 %3, %4, !dbg !2929
  br i1 %5, label %12, label %6, !dbg !2929

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2930
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2922, metadata !576), !dbg !2931
  %8 = udiv i64 %7, %1, !dbg !2932
  %9 = icmp eq i64 %8, %0, !dbg !2934
  br i1 %9, label %12, label %10, !dbg !2935

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2936
  store i32 12, i32* %11, align 4, !dbg !2938, !tbaa !632
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2919, metadata !576), !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2920, metadata !576), !dbg !2926
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !2939
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2921, metadata !576), !dbg !2940
  br label %16, !dbg !2941

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !2942
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !2943 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !2960, metadata !576), !dbg !2969
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2961, metadata !576), !dbg !2970
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2962, metadata !576), !dbg !2971
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !2963, metadata !576), !dbg !2972
  %6 = bitcast i32* %5 to i8*, !dbg !2973
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !2973
  %7 = icmp eq i32* %0, null, !dbg !2974
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2960, metadata !576), !dbg !2969
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2976
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2960, metadata !576), !dbg !2969
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2964, metadata !576), !dbg !2978
  %10 = icmp ugt i64 %9, -3, !dbg !2979
  %11 = icmp ne i64 %2, 0, !dbg !2980
  %12 = and i1 %11, %10, !dbg !2981
  br i1 %12, label %13, label %18, !dbg !2981

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !2982
  br i1 %14, label %18, label %15, !dbg !2983

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2984, !tbaa !1054
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !2966, metadata !576), !dbg !2985
  %17 = zext i8 %16 to i32, !dbg !2986
  store i32 %17, i32* %8, align 4, !dbg !2987, !tbaa !632
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !2988
  ret i64 %19, !dbg !2988
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !2989 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3034, metadata !576), !dbg !3039
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3040
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3041, metadata !576), !dbg !3045
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3047
  %4 = load i32, i32* %3, align 8, !dbg !3047, !tbaa !3048
  %5 = and i32 %4, 32, !dbg !3047
  %6 = icmp eq i32 %5, 0, !dbg !3050
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3051
  %8 = icmp ne i32 %7, 0, !dbg !3052
  br i1 %6, label %9, label %19, !dbg !3053

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3055
  %11 = xor i1 %8, true, !dbg !3056
  %12 = or i1 %10, %11, !dbg !3056
  %13 = sext i1 %8 to i32, !dbg !3056
  br i1 %12, label %22, label %14, !dbg !3056

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3057
  %16 = load i32, i32* %15, align 4, !dbg !3057, !tbaa !632
  %17 = icmp ne i32 %16, 9, !dbg !3058
  %18 = sext i1 %17 to i32, !dbg !3059
  br label %22, !dbg !3059

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3060

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3062
  store i32 0, i32* %21, align 4, !dbg !3064, !tbaa !632
  br label %22, !dbg !3062

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3065
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3066 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3071, metadata !576), !dbg !3074
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3072, metadata !576), !dbg !3075
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3076
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3073, metadata !576), !dbg !3077
  %3 = icmp eq i8* %2, null, !dbg !3078
  br i1 %3, label %11, label %4, !dbg !3080

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0)) #14, !dbg !3081
  %6 = icmp eq i32 %5, 0, !dbg !3086
  br i1 %6, label %10, label %7, !dbg !3087

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.101, i64 0, i64 0)) #14, !dbg !3088
  %9 = icmp eq i32 %8, 0, !dbg !3089
  br i1 %9, label %10, label %11, !dbg !3090

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3072, metadata !576), !dbg !3075
  br label %11, !dbg !3091

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3092
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3093 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3099, metadata !576), !dbg !3173
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3166, metadata !576), !dbg !3176
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3177
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3097, metadata !576), !dbg !3178
  %4 = icmp eq i8* %3, null, !dbg !3179
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), i8* %3, !dbg !3181
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3097, metadata !576), !dbg !3178
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3182, !tbaa !583
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3113, metadata !576) #10, !dbg !3183
  %7 = icmp eq i8* %6, null, !dbg !3184
  br i1 %7, label %8, label %123, !dbg !3185

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.105, i64 0, i64 0)) #10, !dbg !3186
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3114, metadata !576) #10, !dbg !3187
  %10 = icmp eq i8* %9, null, !dbg !3188
  br i1 %10, label %14, label %11, !dbg !3190

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3191, !tbaa !1054
  %13 = icmp eq i8 %12, 0, !dbg !3192
  br i1 %13, label %14, label %15, !dbg !3193

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3194

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.106, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3114, metadata !576) #10, !dbg !3187
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3117, metadata !576) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3119, metadata !576) #10, !dbg !3197
  %18 = icmp eq i64 %17, 0, !dbg !3198
  br i1 %18, label %24, label %19, !dbg !3199

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3200
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3200
  %22 = load i8, i8* %21, align 1, !dbg !3200, !tbaa !1054
  %23 = icmp ne i8 %22, 47, !dbg !3200
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3201
  %27 = add i64 %17, 14, !dbg !3202
  %28 = add i64 %27, %26, !dbg !3203
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3204
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3116, metadata !576) #10, !dbg !3205
  %30 = icmp eq i8* %29, null, !dbg !3206
  br i1 %30, label %121, label %31, !dbg !3206

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3207
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3210

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3211, !tbaa !1054
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3213
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.107, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3214
  br label %37, !dbg !3215

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3213
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.107, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3214
  br label %37, !dbg !3215

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3216
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3121, metadata !576) #10, !dbg !3217
  %39 = icmp slt i32 %38, 0, !dbg !3218
  br i1 %39, label %119, label %40, !dbg !3219

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.108, i64 0, i64 0)) #10, !dbg !3220
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3122, metadata !576) #10, !dbg !3221
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3222
  br i1 %42, label %43, label %45, !dbg !3223

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3224
  br label %119, !dbg !3226

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3163, metadata !576) #10, !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3164, metadata !576) #10, !dbg !3228
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3229

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3230

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3163, metadata !576) #10, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3164, metadata !576) #10, !dbg !3228
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3230
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3231
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3232, metadata !576) #10, !dbg !3237
  %54 = load i8*, i8** %48, align 8, !dbg !3239, !tbaa !3240
  %55 = load i8*, i8** %49, align 8, !dbg !3239, !tbaa !3241
  %56 = icmp ult i8* %54, %55, !dbg !3239
  br i1 %56, label %59, label %57, !dbg !3239, !prof !3242

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3239
  br label %63, !dbg !3239

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3239
  store i8* %60, i8** %48, align 8, !dbg !3239, !tbaa !3240
  %61 = load i8, i8* %54, align 1, !dbg !3239, !tbaa !1054
  %62 = zext i8 %61 to i32, !dbg !3239
  br label %63, !dbg !3239

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3239
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3165, metadata !576) #10, !dbg !3243
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3244, !llvm.loop !3245

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3250

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3232, metadata !576) #10, !dbg !3252
  %67 = load i8*, i8** %48, align 8, !dbg !3250, !tbaa !3240
  %68 = load i8*, i8** %49, align 8, !dbg !3250, !tbaa !3241
  %69 = icmp ult i8* %67, %68, !dbg !3250
  br i1 %69, label %72, label %70, !dbg !3250, !prof !3242

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3250
  br label %76, !dbg !3250

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3250
  store i8* %73, i8** %48, align 8, !dbg !3250, !tbaa !3240
  %74 = load i8, i8* %67, align 1, !dbg !3250, !tbaa !1054
  %75 = zext i8 %74 to i32, !dbg !3250
  br label %76, !dbg !3250

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3250
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3165, metadata !576) #10, !dbg !3243
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3253, !llvm.loop !3254

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3257
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.109, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3258
  %81 = icmp slt i32 %80, 2, !dbg !3260
  br i1 %81, label %112, label %82, !dbg !3261

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3262
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3170, metadata !576) #10, !dbg !3263
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3264
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3171, metadata !576) #10, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3172, metadata !576) #10, !dbg !3266
  %85 = icmp eq i64 %51, 0, !dbg !3267
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3269

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3164, metadata !576) #10, !dbg !3228
  %90 = add i64 %87, 2, !dbg !3270
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3163, metadata !576) #10, !dbg !3227
  br label %96, !dbg !3273

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3274
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3164, metadata !576) #10, !dbg !3228
  %94 = add i64 %93, 1, !dbg !3276
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3277
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3163, metadata !576) #10, !dbg !3227
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3163, metadata !576) #10, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3164, metadata !576) #10, !dbg !3228
  %99 = icmp eq i8* %98, null, !dbg !3278
  br i1 %99, label %100, label %102, !dbg !3280

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3164, metadata !576) #10, !dbg !3228
  call void @free(i8* %52) #10, !dbg !3281
  br label %112, !dbg !3283

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3284
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3284
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3285
  %104 = xor i64 %84, -1, !dbg !3286
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3286
  %106 = xor i64 %83, -1, !dbg !3287
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3287
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3288, metadata !576) #10, !dbg !3297
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3296, metadata !576) #10, !dbg !3297
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3299
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3288, metadata !576) #10, !dbg !3301
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3296, metadata !576) #10, !dbg !3301
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3303
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3304
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3163, metadata !576) #10, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3164, metadata !576) #10, !dbg !3228
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3284
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3284
  br label %50, !dbg !3305, !llvm.loop !3254

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3284
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3284
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3306
  %116 = icmp eq i64 %113, 0, !dbg !3307
  br i1 %116, label %119, label %117, !dbg !3309

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3310
  store i8 0, i8* %118, align 1, !dbg !3312, !tbaa !1054
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3113, metadata !576) #10, !dbg !3183
  call void @free(i8* %29) #10, !dbg !3313
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3113, metadata !576) #10, !dbg !3183
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3314, !tbaa !583
  br label %123, !dbg !3315

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3113, metadata !576) #10, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3098, metadata !576), !dbg !3316
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3098, metadata !576), !dbg !3316
  %125 = load i8, i8* %124, align 1, !dbg !3317, !tbaa !1054
  %126 = icmp eq i8 %125, 0, !dbg !3319
  br i1 %126, label %152, label %127, !dbg !3320

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3321

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3098, metadata !576), !dbg !3316
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3321
  %132 = icmp eq i32 %131, 0, !dbg !3323
  br i1 %132, label %139, label %133, !dbg !3324

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3325
  br i1 %134, label %135, label %143, !dbg !3326

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3327
  %137 = load i8, i8* %136, align 1, !dbg !3327, !tbaa !1054
  %138 = icmp eq i8 %137, 0, !dbg !3328
  br i1 %138, label %139, label %143, !dbg !3329

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3330
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3332
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3097, metadata !576), !dbg !3178
  br label %152, !dbg !3334

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3335
  %145 = add i64 %144, 1, !dbg !3336
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3337
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3098, metadata !576), !dbg !3316
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3338
  %148 = add i64 %147, 1, !dbg !3339
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3340
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3098, metadata !576), !dbg !3316
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3098, metadata !576), !dbg !3316
  %150 = load i8, i8* %149, align 1, !dbg !3317, !tbaa !1054
  %151 = icmp eq i8 %150, 0, !dbg !3319
  br i1 %151, label %152, label %128, !dbg !3320, !llvm.loop !3341

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3097, metadata !576), !dbg !3178
  %154 = load i8, i8* %153, align 1, !dbg !3343, !tbaa !1054
  %155 = icmp eq i8 %154, 0, !dbg !3345
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.110, i64 0, i64 0), i8* %153, !dbg !3346
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3097, metadata !576), !dbg !3178
  ret i8* %156, !dbg !3347
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3348 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3393, metadata !576), !dbg !3397
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3394, metadata !576), !dbg !3398
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3396, metadata !576), !dbg !3399
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3400
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3395, metadata !576), !dbg !3401
  %3 = icmp slt i32 %2, 0, !dbg !3402
  br i1 %3, label %4, label %6, !dbg !3404

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3405
  br label %24, !dbg !3406

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3407
  %8 = icmp eq i32 %7, 0, !dbg !3407
  br i1 %8, label %13, label %9, !dbg !3409

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3410
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3411
  %12 = icmp eq i64 %11, -1, !dbg !3412
  br i1 %12, label %16, label %13, !dbg !3413

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3414
  %15 = icmp eq i32 %14, 0, !dbg !3414
  br i1 %15, label %16, label %18, !dbg !3415

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3394, metadata !576), !dbg !3398
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3416
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3396, metadata !576), !dbg !3399
  br label %24, !dbg !3417

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3418
  %20 = load i32, i32* %19, align 4, !dbg !3418, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3394, metadata !576), !dbg !3398
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3394, metadata !576), !dbg !3398
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3416
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3396, metadata !576), !dbg !3399
  %22 = icmp eq i32 %20, 0, !dbg !3419
  br i1 %22, label %24, label %23, !dbg !3417

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3421, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3396, metadata !576), !dbg !3399
  br label %24, !dbg !3423

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3424
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3425 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3470, metadata !576), !dbg !3471
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3472
  br i1 %2, label %6, label %3, !dbg !3474

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3475
  %5 = icmp eq i32 %4, 0, !dbg !3475
  br i1 %5, label %6, label %8, !dbg !3476

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3477
  br label %17, !dbg !3478

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3479, metadata !576) #10, !dbg !3484
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3486
  %10 = load i32, i32* %9, align 8, !dbg !3486, !tbaa !3048
  %11 = and i32 %10, 256, !dbg !3488
  %12 = icmp eq i32 %11, 0, !dbg !3488
  br i1 %12, label %15, label %13, !dbg !3489

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3490
  br label %15, !dbg !3490

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3491
  br label %17, !dbg !3492

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3493
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3494 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3540, metadata !576), !dbg !3546
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3541, metadata !576), !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3542, metadata !576), !dbg !3548
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3549
  %5 = load i8*, i8** %4, align 8, !dbg !3549, !tbaa !3241
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3550
  %7 = load i8*, i8** %6, align 8, !dbg !3550, !tbaa !3240
  %8 = icmp eq i8* %5, %7, !dbg !3551
  br i1 %8, label %9, label %28, !dbg !3552

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3553
  %11 = load i8*, i8** %10, align 8, !dbg !3553, !tbaa !3554
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3555
  %13 = load i8*, i8** %12, align 8, !dbg !3555, !tbaa !3556
  %14 = icmp eq i8* %11, %13, !dbg !3557
  br i1 %14, label %15, label %28, !dbg !3558

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3559
  %17 = load i8*, i8** %16, align 8, !dbg !3559, !tbaa !3560
  %18 = icmp eq i8* %17, null, !dbg !3561
  br i1 %18, label %19, label %28, !dbg !3562

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3563
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3543, metadata !576), !dbg !3565
  %22 = icmp eq i64 %21, -1, !dbg !3566
  br i1 %22, label %30, label %23, !dbg !3568

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3569
  %25 = load i32, i32* %24, align 8, !dbg !3570, !tbaa !3048
  %26 = and i32 %25, -17, !dbg !3570
  store i32 %26, i32* %24, align 8, !dbg !3570, !tbaa !3048
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3571
  store i64 %21, i64* %27, align 8, !dbg !3572, !tbaa !3573
  br label %30, !dbg !3574

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3575
  br label %30, !dbg !3576

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3577
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
attributes #9 = { argmemonly nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!498, !2, !11, !20, !28, !46, !55, !523, !142, !531, !548, !550, !552, !555, !557, !151, !559, !561, !563}
!llvm.ident = !{!565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565, !565}
!llvm.module.flags = !{!566, !567, !568, !569, !570}

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
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !500, retainedTypes: !501, globals: !502)
!499 = !DIFile(filename: "src/unlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!500 = !{!58}
!501 = !{!6, !49}
!502 = !{!503}
!503 = !DIGlobalVariableExpression(var: !504)
!504 = distinct !DIGlobalVariable(name: "infomap", scope: !505, file: !506, line: 632, type: !520, isLocal: true, isDefinition: true)
!505 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !506, file: !506, line: 630, type: !507, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !509)
!506 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!507 = !DISubroutineType(types: !508)
!508 = !{null, !6}
!509 = !{!510, !511, !512, !519}
!510 = !DILocalVariable(name: "program", arg: 1, scope: !505, file: !506, line: 630, type: !6)
!511 = !DILocalVariable(name: "node", scope: !505, file: !506, line: 642, type: !6)
!512 = !DILocalVariable(name: "map_prog", scope: !505, file: !506, line: 643, type: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !505, file: !506, line: 632, size: 128, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !515, file: !506, line: 632, baseType: !6, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !515, file: !506, line: 632, baseType: !6, size: 64, offset: 64)
!519 = !DILocalVariable(name: "lc_messages", scope: !505, file: !506, line: 655, type: !6)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 896, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 7)
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !525, retainedTypes: !530)
!524 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!525 = !{!526}
!526 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !527, line: 41, size: 32, elements: !528)
!527 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!528 = !{!529}
!529 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!530 = !{!49}
!531 = distinct !DICompileUnit(language: DW_LANG_C99, file: !532, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !533, retainedTypes: !547)
!532 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!533 = !{!534}
!534 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !536, file: !535, line: 192, size: 32, elements: !545)
!535 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!536 = distinct !DISubprogram(name: "x2nrealloc", scope: !535, file: !535, line: 180, type: !537, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !540)
!537 = !DISubroutineType(types: !538)
!538 = !{!49, !49, !539, !94}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!540 = !{!541, !542, !543, !544}
!541 = !DILocalVariable(name: "p", arg: 1, scope: !536, file: !535, line: 180, type: !49)
!542 = !DILocalVariable(name: "pn", arg: 2, scope: !536, file: !535, line: 180, type: !539)
!543 = !DILocalVariable(name: "s", arg: 3, scope: !536, file: !535, line: 180, type: !94)
!544 = !DILocalVariable(name: "n", scope: !536, file: !535, line: 182, type: !94)
!545 = !{!546}
!546 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!547 = !{!94, !50, !49}
!548 = distinct !DICompileUnit(language: DW_LANG_C99, file: !549, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!549 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !530)
!551 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !554)
!553 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !{!94}
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!556 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!558 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!560 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !530)
!562 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !530)
!564 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!566 = !{i32 2, !"Dwarf Version", i32 4}
!567 = !{i32 2, !"Debug Info Version", i32 3}
!568 = !{i32 1, !"wchar_size", i32 4}
!569 = !{i32 7, !"PIC Level", i32 2}
!570 = !{i32 7, !"PIE Level", i32 2}
!571 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 40, type: !572, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !25}
!574 = !{!575}
!575 = !DILocalVariable(name: "status", arg: 1, scope: !571, file: !499, line: 40, type: !25)
!576 = !DIExpression()
!577 = !DILocation(line: 40, column: 12, scope: !571)
!578 = !DILocation(line: 42, column: 14, scope: !579)
!579 = distinct !DILexicalBlock(scope: !571, file: !499, line: 42, column: 7)
!580 = !DILocation(line: 42, column: 7, scope: !571)
!581 = !DILocation(line: 43, column: 5, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !499, line: 43, column: 5)
!583 = !{!584, !584, i64 0}
!584 = !{!"any pointer", !585, i64 0}
!585 = !{!"omnipotent char", !586, i64 0}
!586 = !{!"Simple C/C++ TBAA"}
!587 = !DILocation(line: 46, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !579, file: !499, line: 45, column: 5)
!589 = !DILocation(line: 49, column: 7, scope: !588)
!590 = !DILocation(line: 51, column: 7, scope: !588)
!591 = !DILocation(line: 52, column: 7, scope: !588)
!592 = !DILocation(line: 642, column: 15, scope: !505, inlinedAt: !593)
!593 = distinct !DILocation(line: 53, column: 7, scope: !588)
!594 = !DILocation(line: 651, column: 3, scope: !505, inlinedAt: !593)
!595 = !DILocation(line: 655, column: 29, scope: !505, inlinedAt: !593)
!596 = !DILocation(line: 655, column: 15, scope: !505, inlinedAt: !593)
!597 = !DILocation(line: 656, column: 7, scope: !598, inlinedAt: !593)
!598 = distinct !DILexicalBlock(scope: !505, file: !506, line: 656, column: 7)
!599 = !DILocation(line: 656, column: 19, scope: !598, inlinedAt: !593)
!600 = !DILocation(line: 656, column: 22, scope: !598, inlinedAt: !593)
!601 = !DILocation(line: 656, column: 7, scope: !505, inlinedAt: !593)
!602 = !DILocation(line: 662, column: 7, scope: !603, inlinedAt: !593)
!603 = distinct !DILexicalBlock(scope: !598, file: !506, line: 657, column: 5)
!604 = !DILocation(line: 664, column: 5, scope: !603, inlinedAt: !593)
!605 = !DILocation(line: 665, column: 3, scope: !505, inlinedAt: !593)
!606 = !DILocation(line: 667, column: 3, scope: !505, inlinedAt: !593)
!607 = !DILocation(line: 55, column: 3, scope: !571)
!608 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 59, type: !609, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !612)
!609 = !DISubroutineType(types: !610)
!610 = !{!25, !25, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!612 = !{!613, !614}
!613 = !DILocalVariable(name: "argc", arg: 1, scope: !608, file: !499, line: 59, type: !25)
!614 = !DILocalVariable(name: "argv", arg: 2, scope: !608, file: !499, line: 59, type: !611)
!615 = !DILocation(line: 59, column: 11, scope: !608)
!616 = !DILocation(line: 59, column: 24, scope: !608)
!617 = !DILocation(line: 62, column: 21, scope: !608)
!618 = !DILocation(line: 62, column: 3, scope: !608)
!619 = !DILocation(line: 63, column: 3, scope: !608)
!620 = !DILocation(line: 64, column: 3, scope: !608)
!621 = !DILocation(line: 65, column: 3, scope: !608)
!622 = !DILocation(line: 67, column: 3, scope: !608)
!623 = !DILocation(line: 69, column: 63, scope: !608)
!624 = !DILocation(line: 69, column: 3, scope: !608)
!625 = !DILocation(line: 71, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !608, file: !499, line: 71, column: 7)
!627 = !DILocation(line: 71, column: 48, scope: !626)
!628 = !DILocation(line: 71, column: 7, scope: !608)
!629 = !DILocation(line: 72, column: 5, scope: !626)
!630 = !DILocation(line: 74, column: 14, scope: !631)
!631 = distinct !DILexicalBlock(scope: !608, file: !499, line: 74, column: 7)
!632 = !{!633, !633, i64 0}
!633 = !{!"int", !585, i64 0}
!634 = !DILocation(line: 74, column: 12, scope: !631)
!635 = !DILocation(line: 74, column: 7, scope: !608)
!636 = !DILocation(line: 76, column: 20, scope: !637)
!637 = distinct !DILexicalBlock(scope: !631, file: !499, line: 75, column: 5)
!638 = !DILocation(line: 76, column: 7, scope: !637)
!639 = !DILocation(line: 77, column: 7, scope: !637)
!640 = !DILocation(line: 74, column: 21, scope: !631)
!641 = !DILocation(line: 80, column: 18, scope: !642)
!642 = distinct !DILexicalBlock(scope: !608, file: !499, line: 80, column: 7)
!643 = !DILocation(line: 80, column: 7, scope: !608)
!644 = !DILocation(line: 82, column: 20, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !499, line: 81, column: 5)
!646 = !DILocation(line: 82, column: 55, scope: !645)
!647 = !DILocation(line: 82, column: 62, scope: !645)
!648 = !DILocation(line: 82, column: 50, scope: !645)
!649 = !DILocation(line: 82, column: 43, scope: !645)
!650 = !DILocation(line: 82, column: 7, scope: !645)
!651 = !DILocation(line: 83, column: 7, scope: !645)
!652 = !DILocation(line: 86, column: 15, scope: !653)
!653 = distinct !DILexicalBlock(scope: !608, file: !499, line: 86, column: 7)
!654 = !DILocation(line: 86, column: 7, scope: !653)
!655 = !DILocation(line: 86, column: 29, scope: !653)
!656 = !DILocation(line: 86, column: 7, scope: !608)
!657 = !DILocation(line: 87, column: 5, scope: !653)
!658 = !DILocation(line: 89, column: 3, scope: !608)
!659 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !507, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !660)
!660 = !{!661}
!661 = !DILocalVariable(name: "file", arg: 1, scope: !659, file: !16, line: 41, type: !6)
!662 = !DILocation(line: 41, column: 41, scope: !659)
!663 = !DILocation(line: 43, column: 13, scope: !659)
!664 = !DILocation(line: 44, column: 1, scope: !659)
!665 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !666, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !668)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !17}
!668 = !{!669}
!669 = !DILocalVariable(name: "ignore", arg: 1, scope: !665, file: !16, line: 78, type: !17)
!670 = !DILocation(line: 78, column: 37, scope: !665)
!671 = !DILocation(line: 80, column: 16, scope: !665)
!672 = !{!673, !673, i64 0}
!673 = !{!"_Bool", !585, i64 0}
!674 = !DILocation(line: 81, column: 1, scope: !665)
!675 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !676, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !678)
!676 = !DISubroutineType(types: !677)
!677 = !{null}
!678 = !{!679}
!679 = !DILocalVariable(name: "write_error", scope: !680, file: !16, line: 112, type: !6)
!680 = distinct !DILexicalBlock(scope: !681, file: !16, line: 111, column: 5)
!681 = distinct !DILexicalBlock(scope: !675, file: !16, line: 109, column: 7)
!682 = !DILocation(line: 109, column: 21, scope: !681)
!683 = !DILocation(line: 109, column: 7, scope: !681)
!684 = !DILocation(line: 109, column: 29, scope: !681)
!685 = !DILocation(line: 110, column: 7, scope: !681)
!686 = !DILocation(line: 110, column: 12, scope: !681)
!687 = !{i8 0, i8 2}
!688 = !DILocation(line: 114, column: 19, scope: !689)
!689 = distinct !DILexicalBlock(scope: !680, file: !16, line: 113, column: 11)
!690 = !DILocation(line: 110, column: 25, scope: !681)
!691 = !DILocation(line: 110, column: 28, scope: !681)
!692 = !DILocation(line: 110, column: 34, scope: !681)
!693 = !DILocation(line: 109, column: 7, scope: !675)
!694 = !DILocation(line: 112, column: 33, scope: !680)
!695 = !DILocation(line: 112, column: 19, scope: !680)
!696 = !DILocation(line: 113, column: 11, scope: !689)
!697 = !DILocation(line: 113, column: 11, scope: !680)
!698 = !DILocation(line: 114, column: 36, scope: !689)
!699 = !DILocation(line: 114, column: 9, scope: !689)
!700 = !DILocation(line: 117, column: 9, scope: !689)
!701 = !DILocation(line: 119, column: 14, scope: !680)
!702 = !DILocation(line: 119, column: 7, scope: !680)
!703 = !DILocation(line: 122, column: 22, scope: !704)
!704 = distinct !DILexicalBlock(scope: !675, file: !16, line: 122, column: 8)
!705 = !DILocation(line: 122, column: 8, scope: !704)
!706 = !DILocation(line: 122, column: 30, scope: !704)
!707 = !DILocation(line: 122, column: 8, scope: !675)
!708 = !DILocation(line: 123, column: 13, scope: !704)
!709 = !DILocation(line: 123, column: 6, scope: !704)
!710 = !DILocation(line: 124, column: 1, scope: !675)
!711 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !712, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !715)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !25, !611, !6, !6, !6, !714, null}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !724}
!716 = !DILocalVariable(name: "argc", arg: 1, scope: !711, file: !31, line: 44, type: !25)
!717 = !DILocalVariable(name: "argv", arg: 2, scope: !711, file: !31, line: 45, type: !611)
!718 = !DILocalVariable(name: "command_name", arg: 3, scope: !711, file: !31, line: 46, type: !6)
!719 = !DILocalVariable(name: "package", arg: 4, scope: !711, file: !31, line: 47, type: !6)
!720 = !DILocalVariable(name: "version", arg: 5, scope: !711, file: !31, line: 48, type: !6)
!721 = !DILocalVariable(name: "usage_func", arg: 6, scope: !711, file: !31, line: 49, type: !714)
!722 = !DILocalVariable(name: "c", scope: !711, file: !31, line: 52, type: !25)
!723 = !DILocalVariable(name: "saved_opterr", scope: !711, file: !31, line: 53, type: !25)
!724 = !DILocalVariable(name: "authors", scope: !725, file: !31, line: 71, type: !729)
!725 = distinct !DILexicalBlock(scope: !726, file: !31, line: 70, column: 11)
!726 = distinct !DILexicalBlock(scope: !727, file: !31, line: 64, column: 9)
!727 = distinct !DILexicalBlock(scope: !728, file: !31, line: 62, column: 5)
!728 = distinct !DILexicalBlock(scope: !711, file: !31, line: 60, column: 7)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !730, line: 46, baseType: !731)
!730 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !732, line: 48, baseType: !733)
!732 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !734)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 192, elements: !741)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !736)
!736 = !{!737, !738, !739, !740}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !735, file: !29, line: 71, baseType: !113, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !735, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !735, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !735, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!741 = !{!742}
!742 = !DISubrange(count: 1)
!743 = !DILocation(line: 44, column: 25, scope: !711)
!744 = !DILocation(line: 45, column: 28, scope: !711)
!745 = !DILocation(line: 46, column: 33, scope: !711)
!746 = !DILocation(line: 47, column: 33, scope: !711)
!747 = !DILocation(line: 48, column: 33, scope: !711)
!748 = !DILocation(line: 49, column: 28, scope: !711)
!749 = !DILocation(line: 55, column: 18, scope: !711)
!750 = !DILocation(line: 53, column: 7, scope: !711)
!751 = !DILocation(line: 58, column: 10, scope: !711)
!752 = !DILocation(line: 60, column: 12, scope: !728)
!753 = !DILocation(line: 61, column: 7, scope: !728)
!754 = !DILocation(line: 61, column: 15, scope: !728)
!755 = !DILocation(line: 52, column: 7, scope: !711)
!756 = !DILocation(line: 60, column: 7, scope: !711)
!757 = !DILocation(line: 66, column: 11, scope: !726)
!758 = !DILocation(line: 67, column: 11, scope: !726)
!759 = !DILocation(line: 71, column: 13, scope: !725)
!760 = !DILocation(line: 71, column: 21, scope: !725)
!761 = !DILocation(line: 72, column: 13, scope: !725)
!762 = !DILocation(line: 73, column: 29, scope: !725)
!763 = !DILocation(line: 73, column: 13, scope: !725)
!764 = !DILocation(line: 74, column: 13, scope: !725)
!765 = !DILocation(line: 84, column: 10, scope: !711)
!766 = !DILocation(line: 88, column: 10, scope: !711)
!767 = !DILocation(line: 89, column: 1, scope: !711)
!768 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !507, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !769)
!769 = !{!770, !771, !772}
!770 = !DILocalVariable(name: "argv0", arg: 1, scope: !768, file: !52, line: 39, type: !6)
!771 = !DILocalVariable(name: "slash", scope: !768, file: !52, line: 46, type: !6)
!772 = !DILocalVariable(name: "base", scope: !768, file: !52, line: 47, type: !6)
!773 = !DILocation(line: 39, column: 31, scope: !768)
!774 = !DILocation(line: 51, column: 13, scope: !775)
!775 = distinct !DILexicalBlock(scope: !768, file: !52, line: 51, column: 7)
!776 = !DILocation(line: 51, column: 7, scope: !768)
!777 = !DILocation(line: 55, column: 14, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !52, line: 52, column: 5)
!779 = !DILocation(line: 54, column: 7, scope: !778)
!780 = !DILocation(line: 56, column: 7, scope: !778)
!781 = !DILocation(line: 59, column: 11, scope: !768)
!782 = !DILocation(line: 46, column: 15, scope: !768)
!783 = !DILocation(line: 60, column: 17, scope: !768)
!784 = !DILocation(line: 60, column: 33, scope: !768)
!785 = !DILocation(line: 60, column: 11, scope: !768)
!786 = !DILocation(line: 47, column: 15, scope: !768)
!787 = !DILocation(line: 61, column: 12, scope: !788)
!788 = distinct !DILexicalBlock(scope: !768, file: !52, line: 61, column: 7)
!789 = !DILocation(line: 61, column: 20, scope: !788)
!790 = !DILocation(line: 61, column: 25, scope: !788)
!791 = !DILocation(line: 61, column: 42, scope: !788)
!792 = !DILocation(line: 61, column: 28, scope: !788)
!793 = !DILocation(line: 61, column: 61, scope: !788)
!794 = !DILocation(line: 61, column: 7, scope: !768)
!795 = !DILocation(line: 64, column: 11, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !52, line: 64, column: 11)
!797 = distinct !DILexicalBlock(scope: !788, file: !52, line: 62, column: 5)
!798 = !DILocation(line: 64, column: 36, scope: !796)
!799 = !DILocation(line: 64, column: 11, scope: !797)
!800 = !DILocation(line: 66, column: 24, scope: !801)
!801 = distinct !DILexicalBlock(scope: !796, file: !52, line: 65, column: 9)
!802 = !DILocation(line: 70, column: 41, scope: !801)
!803 = !DILocation(line: 72, column: 9, scope: !801)
!804 = !DILocation(line: 84, column: 16, scope: !768)
!805 = !DILocation(line: 90, column: 27, scope: !768)
!806 = !DILocation(line: 92, column: 1, scope: !768)
!807 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !808, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !811)
!808 = !DISubroutineType(types: !809)
!809 = !{!810, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!811 = !{!812, !813, !814}
!812 = !DILocalVariable(name: "o", arg: 1, scope: !807, file: !100, line: 114, type: !810)
!813 = !DILocalVariable(name: "e", scope: !807, file: !100, line: 116, type: !25)
!814 = !DILocalVariable(name: "p", scope: !807, file: !100, line: 117, type: !810)
!815 = !DILocation(line: 114, column: 48, scope: !807)
!816 = !DILocation(line: 116, column: 11, scope: !807)
!817 = !DILocation(line: 116, column: 7, scope: !807)
!818 = !DILocation(line: 117, column: 40, scope: !807)
!819 = !DILocation(line: 117, column: 31, scope: !807)
!820 = !DILocation(line: 117, column: 27, scope: !807)
!821 = !DILocation(line: 119, column: 9, scope: !807)
!822 = !DILocation(line: 120, column: 3, scope: !807)
!823 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !824, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !828)
!824 = !DISubroutineType(types: !825)
!825 = !{!58, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!828 = !{!829}
!829 = !DILocalVariable(name: "o", arg: 1, scope: !823, file: !100, line: 125, type: !826)
!830 = !DILocation(line: 125, column: 50, scope: !823)
!831 = !DILocation(line: 127, column: 11, scope: !823)
!832 = !DILocation(line: 127, column: 46, scope: !823)
!833 = !{!834, !585, i64 0}
!834 = !{!"quoting_options", !585, i64 0, !633, i64 4, !585, i64 8, !584, i64 40, !584, i64 48}
!835 = !DILocation(line: 127, column: 3, scope: !823)
!836 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !837, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !839)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !810, !58}
!839 = !{!840, !841}
!840 = !DILocalVariable(name: "o", arg: 1, scope: !836, file: !100, line: 133, type: !810)
!841 = !DILocalVariable(name: "s", arg: 2, scope: !836, file: !100, line: 133, type: !58)
!842 = !DILocation(line: 133, column: 44, scope: !836)
!843 = !DILocation(line: 133, column: 66, scope: !836)
!844 = !DILocation(line: 135, column: 4, scope: !836)
!845 = !DILocation(line: 135, column: 39, scope: !836)
!846 = !DILocation(line: 135, column: 45, scope: !836)
!847 = !DILocation(line: 136, column: 1, scope: !836)
!848 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !849, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{!25, !810, !8, !25}
!851 = !{!852, !853, !854, !855, !856, !858, !859}
!852 = !DILocalVariable(name: "o", arg: 1, scope: !848, file: !100, line: 144, type: !810)
!853 = !DILocalVariable(name: "c", arg: 2, scope: !848, file: !100, line: 144, type: !8)
!854 = !DILocalVariable(name: "i", arg: 3, scope: !848, file: !100, line: 144, type: !25)
!855 = !DILocalVariable(name: "uc", scope: !848, file: !100, line: 146, type: !494)
!856 = !DILocalVariable(name: "p", scope: !848, file: !100, line: 147, type: !857)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!858 = !DILocalVariable(name: "shift", scope: !848, file: !100, line: 149, type: !25)
!859 = !DILocalVariable(name: "r", scope: !848, file: !100, line: 150, type: !25)
!860 = !DILocation(line: 144, column: 43, scope: !848)
!861 = !DILocation(line: 144, column: 51, scope: !848)
!862 = !DILocation(line: 144, column: 58, scope: !848)
!863 = !DILocation(line: 146, column: 17, scope: !848)
!864 = !DILocation(line: 148, column: 6, scope: !848)
!865 = !DILocation(line: 148, column: 62, scope: !848)
!866 = !DILocation(line: 148, column: 57, scope: !848)
!867 = !DILocation(line: 147, column: 17, scope: !848)
!868 = !DILocation(line: 149, column: 18, scope: !848)
!869 = !DILocation(line: 149, column: 15, scope: !848)
!870 = !DILocation(line: 149, column: 7, scope: !848)
!871 = !DILocation(line: 150, column: 12, scope: !848)
!872 = !DILocation(line: 150, column: 15, scope: !848)
!873 = !DILocation(line: 150, column: 25, scope: !848)
!874 = !DILocation(line: 150, column: 7, scope: !848)
!875 = !DILocation(line: 151, column: 13, scope: !848)
!876 = !DILocation(line: 151, column: 18, scope: !848)
!877 = !DILocation(line: 151, column: 23, scope: !848)
!878 = !DILocation(line: 151, column: 6, scope: !848)
!879 = !DILocation(line: 152, column: 3, scope: !848)
!880 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !881, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !883)
!881 = !DISubroutineType(types: !882)
!882 = !{!25, !810, !25}
!883 = !{!884, !885, !886}
!884 = !DILocalVariable(name: "o", arg: 1, scope: !880, file: !100, line: 160, type: !810)
!885 = !DILocalVariable(name: "i", arg: 2, scope: !880, file: !100, line: 160, type: !25)
!886 = !DILocalVariable(name: "r", scope: !880, file: !100, line: 162, type: !25)
!887 = !DILocation(line: 160, column: 44, scope: !880)
!888 = !DILocation(line: 160, column: 51, scope: !880)
!889 = !DILocation(line: 163, column: 8, scope: !890)
!890 = distinct !DILexicalBlock(scope: !880, file: !100, line: 163, column: 7)
!891 = !DILocation(line: 163, column: 7, scope: !880)
!892 = !DILocation(line: 165, column: 10, scope: !880)
!893 = !{!834, !633, i64 4}
!894 = !DILocation(line: 162, column: 7, scope: !880)
!895 = !DILocation(line: 166, column: 12, scope: !880)
!896 = !DILocation(line: 167, column: 3, scope: !880)
!897 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !898, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !810, !6, !6}
!900 = !{!901, !902, !903}
!901 = !DILocalVariable(name: "o", arg: 1, scope: !897, file: !100, line: 171, type: !810)
!902 = !DILocalVariable(name: "left_quote", arg: 2, scope: !897, file: !100, line: 172, type: !6)
!903 = !DILocalVariable(name: "right_quote", arg: 3, scope: !897, file: !100, line: 172, type: !6)
!904 = !DILocation(line: 171, column: 45, scope: !897)
!905 = !DILocation(line: 172, column: 33, scope: !897)
!906 = !DILocation(line: 172, column: 57, scope: !897)
!907 = !DILocation(line: 174, column: 8, scope: !908)
!908 = distinct !DILexicalBlock(scope: !897, file: !100, line: 174, column: 7)
!909 = !DILocation(line: 174, column: 7, scope: !897)
!910 = !DILocation(line: 176, column: 6, scope: !897)
!911 = !DILocation(line: 176, column: 12, scope: !897)
!912 = !DILocation(line: 177, column: 8, scope: !913)
!913 = distinct !DILexicalBlock(scope: !897, file: !100, line: 177, column: 7)
!914 = !DILocation(line: 177, column: 23, scope: !913)
!915 = !DILocation(line: 177, column: 19, scope: !913)
!916 = !DILocation(line: 178, column: 5, scope: !913)
!917 = !DILocation(line: 179, column: 6, scope: !897)
!918 = !DILocation(line: 179, column: 17, scope: !897)
!919 = !{!834, !584, i64 40}
!920 = !DILocation(line: 180, column: 6, scope: !897)
!921 = !DILocation(line: 180, column: 18, scope: !897)
!922 = !{!834, !584, i64 48}
!923 = !DILocation(line: 181, column: 1, scope: !897)
!924 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !925, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{!94, !50, !94, !6, !94, !826}
!927 = !{!928, !929, !930, !931, !932, !933, !934, !935}
!928 = !DILocalVariable(name: "buffer", arg: 1, scope: !924, file: !100, line: 776, type: !50)
!929 = !DILocalVariable(name: "buffersize", arg: 2, scope: !924, file: !100, line: 776, type: !94)
!930 = !DILocalVariable(name: "arg", arg: 3, scope: !924, file: !100, line: 777, type: !6)
!931 = !DILocalVariable(name: "argsize", arg: 4, scope: !924, file: !100, line: 777, type: !94)
!932 = !DILocalVariable(name: "o", arg: 5, scope: !924, file: !100, line: 778, type: !826)
!933 = !DILocalVariable(name: "p", scope: !924, file: !100, line: 780, type: !826)
!934 = !DILocalVariable(name: "e", scope: !924, file: !100, line: 781, type: !25)
!935 = !DILocalVariable(name: "r", scope: !924, file: !100, line: 782, type: !94)
!936 = !DILocation(line: 776, column: 24, scope: !924)
!937 = !DILocation(line: 776, column: 39, scope: !924)
!938 = !DILocation(line: 777, column: 30, scope: !924)
!939 = !DILocation(line: 777, column: 42, scope: !924)
!940 = !DILocation(line: 778, column: 48, scope: !924)
!941 = !DILocation(line: 780, column: 37, scope: !924)
!942 = !DILocation(line: 780, column: 33, scope: !924)
!943 = !DILocation(line: 781, column: 11, scope: !924)
!944 = !DILocation(line: 781, column: 7, scope: !924)
!945 = !DILocation(line: 783, column: 43, scope: !924)
!946 = !DILocation(line: 783, column: 53, scope: !924)
!947 = !DILocation(line: 783, column: 60, scope: !924)
!948 = !DILocation(line: 784, column: 43, scope: !924)
!949 = !DILocation(line: 784, column: 58, scope: !924)
!950 = !DILocation(line: 782, column: 14, scope: !924)
!951 = !DILocation(line: 782, column: 10, scope: !924)
!952 = !DILocation(line: 785, column: 9, scope: !924)
!953 = !DILocation(line: 786, column: 3, scope: !924)
!954 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !955, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !959)
!955 = !DISubroutineType(types: !956)
!956 = !{!94, !50, !94, !6, !94, !58, !25, !957, !6, !6}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!959 = !{!960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !984, !985, !986, !987, !988, !991, !992, !1010, !1013, !1014, !1021}
!960 = !DILocalVariable(name: "buffer", arg: 1, scope: !954, file: !100, line: 248, type: !50)
!961 = !DILocalVariable(name: "buffersize", arg: 2, scope: !954, file: !100, line: 248, type: !94)
!962 = !DILocalVariable(name: "arg", arg: 3, scope: !954, file: !100, line: 249, type: !6)
!963 = !DILocalVariable(name: "argsize", arg: 4, scope: !954, file: !100, line: 249, type: !94)
!964 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !954, file: !100, line: 250, type: !58)
!965 = !DILocalVariable(name: "flags", arg: 6, scope: !954, file: !100, line: 250, type: !25)
!966 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !954, file: !100, line: 251, type: !957)
!967 = !DILocalVariable(name: "left_quote", arg: 8, scope: !954, file: !100, line: 252, type: !6)
!968 = !DILocalVariable(name: "right_quote", arg: 9, scope: !954, file: !100, line: 253, type: !6)
!969 = !DILocalVariable(name: "i", scope: !954, file: !100, line: 255, type: !94)
!970 = !DILocalVariable(name: "len", scope: !954, file: !100, line: 256, type: !94)
!971 = !DILocalVariable(name: "orig_buffersize", scope: !954, file: !100, line: 257, type: !94)
!972 = !DILocalVariable(name: "quote_string", scope: !954, file: !100, line: 258, type: !6)
!973 = !DILocalVariable(name: "quote_string_len", scope: !954, file: !100, line: 259, type: !94)
!974 = !DILocalVariable(name: "backslash_escapes", scope: !954, file: !100, line: 260, type: !17)
!975 = !DILocalVariable(name: "unibyte_locale", scope: !954, file: !100, line: 261, type: !17)
!976 = !DILocalVariable(name: "elide_outer_quotes", scope: !954, file: !100, line: 262, type: !17)
!977 = !DILocalVariable(name: "pending_shell_escape_end", scope: !954, file: !100, line: 263, type: !17)
!978 = !DILocalVariable(name: "encountered_single_quote", scope: !954, file: !100, line: 264, type: !17)
!979 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !954, file: !100, line: 265, type: !17)
!980 = !DILocalVariable(name: "c", scope: !981, file: !100, line: 394, type: !494)
!981 = distinct !DILexicalBlock(scope: !982, file: !100, line: 393, column: 5)
!982 = distinct !DILexicalBlock(scope: !983, file: !100, line: 392, column: 3)
!983 = distinct !DILexicalBlock(scope: !954, file: !100, line: 392, column: 3)
!984 = !DILocalVariable(name: "esc", scope: !981, file: !100, line: 395, type: !494)
!985 = !DILocalVariable(name: "is_right_quote", scope: !981, file: !100, line: 396, type: !17)
!986 = !DILocalVariable(name: "escaping", scope: !981, file: !100, line: 397, type: !17)
!987 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !981, file: !100, line: 398, type: !17)
!988 = !DILocalVariable(name: "m", scope: !989, file: !100, line: 602, type: !94)
!989 = distinct !DILexicalBlock(scope: !990, file: !100, line: 600, column: 11)
!990 = distinct !DILexicalBlock(scope: !981, file: !100, line: 418, column: 9)
!991 = !DILocalVariable(name: "printable", scope: !989, file: !100, line: 604, type: !17)
!992 = !DILocalVariable(name: "mbstate", scope: !993, file: !100, line: 613, type: !995)
!993 = distinct !DILexicalBlock(scope: !994, file: !100, line: 612, column: 15)
!994 = distinct !DILexicalBlock(scope: !989, file: !100, line: 606, column: 17)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !996, line: 6, baseType: !997)
!996 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !998, line: 21, baseType: !999)
!998 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !998, line: 13, size: 64, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !999, file: !998, line: 15, baseType: !25, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !999, file: !998, line: 20, baseType: !1003, size: 32, offset: 32)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !998, line: 16, size: 32, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1003, file: !998, line: 18, baseType: !113, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1003, file: !998, line: 19, baseType: !1007, size: 32)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 4)
!1010 = !DILocalVariable(name: "w", scope: !1011, file: !100, line: 623, type: !1012)
!1011 = distinct !DILexicalBlock(scope: !993, file: !100, line: 622, column: 19)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1013 = !DILocalVariable(name: "bytes", scope: !1011, file: !100, line: 624, type: !94)
!1014 = !DILocalVariable(name: "j", scope: !1015, file: !100, line: 649, type: !94)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !100, line: 648, column: 27)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !100, line: 646, column: 29)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !100, line: 641, column: 23)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !100, line: 633, column: 30)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !100, line: 628, column: 30)
!1020 = distinct !DILexicalBlock(scope: !1011, file: !100, line: 626, column: 25)
!1021 = !DILocalVariable(name: "ilim", scope: !1022, file: !100, line: 676, type: !94)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !100, line: 673, column: 15)
!1023 = distinct !DILexicalBlock(scope: !989, file: !100, line: 672, column: 17)
!1024 = !DILocation(line: 248, column: 33, scope: !954)
!1025 = !DILocation(line: 248, column: 48, scope: !954)
!1026 = !DILocation(line: 249, column: 39, scope: !954)
!1027 = !DILocation(line: 249, column: 51, scope: !954)
!1028 = !DILocation(line: 250, column: 46, scope: !954)
!1029 = !DILocation(line: 250, column: 65, scope: !954)
!1030 = !DILocation(line: 251, column: 47, scope: !954)
!1031 = !DILocation(line: 252, column: 39, scope: !954)
!1032 = !DILocation(line: 253, column: 39, scope: !954)
!1033 = !DILocation(line: 256, column: 10, scope: !954)
!1034 = !DILocation(line: 257, column: 10, scope: !954)
!1035 = !DILocation(line: 258, column: 15, scope: !954)
!1036 = !DILocation(line: 259, column: 10, scope: !954)
!1037 = !DILocation(line: 260, column: 8, scope: !954)
!1038 = !DILocation(line: 261, column: 25, scope: !954)
!1039 = !DILocation(line: 261, column: 36, scope: !954)
!1040 = !DILocation(line: 262, column: 8, scope: !954)
!1041 = !DILocation(line: 263, column: 8, scope: !954)
!1042 = !DILocation(line: 264, column: 8, scope: !954)
!1043 = !DILocation(line: 265, column: 8, scope: !954)
!1044 = !DILocation(line: 265, column: 3, scope: !954)
!1045 = !DILocation(line: 308, column: 3, scope: !954)
!1046 = !DILocation(line: 315, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !954, file: !100, line: 309, column: 5)
!1048 = !DILocation(line: 315, column: 12, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1047, file: !100, line: 315, column: 11)
!1050 = !DILocation(line: 316, column: 9, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !100, line: 316, column: 9)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !100, line: 316, column: 9)
!1053 = !DILocation(line: 316, column: 9, scope: !1052)
!1054 = !{!585, !585, i64 0}
!1055 = !DILocation(line: 354, column: 26, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !100, line: 332, column: 11)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !100, line: 331, column: 13)
!1058 = distinct !DILexicalBlock(scope: !1047, file: !100, line: 330, column: 7)
!1059 = !DILocation(line: 355, column: 27, scope: !1056)
!1060 = !DILocation(line: 356, column: 11, scope: !1056)
!1061 = !DILocation(line: 357, column: 14, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !100, line: 357, column: 13)
!1063 = !DILocation(line: 357, column: 13, scope: !1058)
!1064 = !DILocation(line: 358, column: 43, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !100, line: 358, column: 11)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !100, line: 358, column: 11)
!1067 = !DILocation(line: 358, column: 11, scope: !1066)
!1068 = !DILocation(line: 359, column: 13, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !100, line: 359, column: 13)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !100, line: 359, column: 13)
!1071 = !DILocation(line: 359, column: 13, scope: !1070)
!1072 = !DILocation(line: 358, column: 70, scope: !1065)
!1073 = distinct !{!1073, !1067, !1074}
!1074 = !DILocation(line: 359, column: 13, scope: !1066)
!1075 = !DILocation(line: 362, column: 28, scope: !1058)
!1076 = !DILocation(line: 364, column: 7, scope: !1047)
!1077 = !DILocation(line: 367, column: 7, scope: !1047)
!1078 = !DILocation(line: 370, column: 7, scope: !1047)
!1079 = !DILocation(line: 373, column: 12, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1047, file: !100, line: 373, column: 11)
!1081 = !DILocation(line: 373, column: 11, scope: !1047)
!1082 = !DILocation(line: 378, column: 12, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1047, file: !100, line: 378, column: 11)
!1084 = !DILocation(line: 378, column: 11, scope: !1047)
!1085 = !DILocation(line: 379, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !100, line: 379, column: 9)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !100, line: 379, column: 9)
!1088 = !DILocation(line: 379, column: 9, scope: !1087)
!1089 = !DILocation(line: 386, column: 7, scope: !1047)
!1090 = !DILocation(line: 389, column: 7, scope: !1047)
!1091 = !DILocation(line: 255, column: 10, scope: !954)
!1092 = !DILocation(line: 392, column: 8, scope: !983)
!1093 = !DILocation(line: 392, column: 27, scope: !982)
!1094 = !DILocation(line: 392, column: 19, scope: !982)
!1095 = !DILocation(line: 392, column: 60, scope: !982)
!1096 = !DILocation(line: 392, column: 3, scope: !983)
!1097 = !DILocation(line: 392, column: 41, scope: !982)
!1098 = !DILocation(line: 392, column: 48, scope: !982)
!1099 = !DILocation(line: 396, column: 12, scope: !981)
!1100 = !DILocation(line: 397, column: 12, scope: !981)
!1101 = !DILocation(line: 398, column: 12, scope: !981)
!1102 = !DILocation(line: 401, column: 11, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !981, file: !100, line: 400, column: 11)
!1104 = !DILocation(line: 403, column: 17, scope: !1103)
!1105 = !DILocation(line: 404, column: 39, scope: !1103)
!1106 = !DILocation(line: 408, column: 32, scope: !1103)
!1107 = !DILocation(line: 404, column: 19, scope: !1103)
!1108 = !DILocation(line: 404, column: 15, scope: !1103)
!1109 = !DILocation(line: 409, column: 11, scope: !1103)
!1110 = !DILocation(line: 409, column: 26, scope: !1103)
!1111 = !DILocation(line: 409, column: 14, scope: !1103)
!1112 = !DILocation(line: 409, column: 63, scope: !1103)
!1113 = !DILocation(line: 400, column: 11, scope: !981)
!1114 = !DILocation(line: 416, column: 11, scope: !981)
!1115 = !DILocation(line: 394, column: 21, scope: !981)
!1116 = !DILocation(line: 417, column: 7, scope: !981)
!1117 = !DILocation(line: 420, column: 15, scope: !990)
!1118 = !DILocation(line: 422, column: 15, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !100, line: 422, column: 15)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !100, line: 421, column: 13)
!1121 = distinct !DILexicalBlock(scope: !990, file: !100, line: 420, column: 15)
!1122 = !DILocation(line: 422, column: 15, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !100, line: 422, column: 15)
!1124 = !DILocation(line: 422, column: 15, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !100, line: 422, column: 15)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !100, line: 422, column: 15)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !100, line: 422, column: 15)
!1128 = !DILocation(line: 422, column: 15, scope: !1126)
!1129 = !DILocation(line: 422, column: 15, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !100, line: 422, column: 15)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !100, line: 422, column: 15)
!1132 = !DILocation(line: 422, column: 15, scope: !1131)
!1133 = !DILocation(line: 422, column: 15, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !100, line: 422, column: 15)
!1135 = distinct !DILexicalBlock(scope: !1127, file: !100, line: 422, column: 15)
!1136 = !DILocation(line: 422, column: 15, scope: !1135)
!1137 = !DILocation(line: 422, column: 15, scope: !1127)
!1138 = !DILocation(line: 422, column: 15, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !100, line: 422, column: 15)
!1140 = distinct !DILexicalBlock(scope: !1119, file: !100, line: 422, column: 15)
!1141 = !DILocation(line: 422, column: 15, scope: !1140)
!1142 = !DILocation(line: 430, column: 19, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1120, file: !100, line: 429, column: 19)
!1144 = !DILocation(line: 430, column: 24, scope: !1143)
!1145 = !DILocation(line: 430, column: 28, scope: !1143)
!1146 = !DILocation(line: 430, column: 38, scope: !1143)
!1147 = !DILocation(line: 430, column: 48, scope: !1143)
!1148 = !DILocation(line: 430, column: 59, scope: !1143)
!1149 = !DILocation(line: 432, column: 19, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !100, line: 432, column: 19)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !100, line: 432, column: 19)
!1152 = distinct !DILexicalBlock(scope: !1143, file: !100, line: 431, column: 17)
!1153 = !DILocation(line: 432, column: 19, scope: !1151)
!1154 = !DILocation(line: 433, column: 19, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !100, line: 433, column: 19)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !100, line: 433, column: 19)
!1157 = !DILocation(line: 433, column: 19, scope: !1156)
!1158 = !DILocation(line: 434, column: 17, scope: !1152)
!1159 = !DILocation(line: 441, column: 20, scope: !1121)
!1160 = !DILocation(line: 446, column: 11, scope: !990)
!1161 = !DILocation(line: 449, column: 19, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !990, file: !100, line: 447, column: 13)
!1163 = !DILocation(line: 455, column: 19, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1162, file: !100, line: 454, column: 19)
!1165 = !DILocation(line: 455, column: 24, scope: !1164)
!1166 = !DILocation(line: 455, column: 28, scope: !1164)
!1167 = !DILocation(line: 455, column: 38, scope: !1164)
!1168 = !DILocation(line: 455, column: 47, scope: !1164)
!1169 = !DILocation(line: 455, column: 41, scope: !1164)
!1170 = !DILocation(line: 455, column: 52, scope: !1164)
!1171 = !DILocation(line: 454, column: 19, scope: !1162)
!1172 = !DILocation(line: 456, column: 25, scope: !1164)
!1173 = !DILocation(line: 456, column: 17, scope: !1164)
!1174 = !DILocation(line: 463, column: 25, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1164, file: !100, line: 457, column: 19)
!1176 = !DILocation(line: 467, column: 21, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !100, line: 467, column: 21)
!1178 = distinct !DILexicalBlock(scope: !1175, file: !100, line: 467, column: 21)
!1179 = !DILocation(line: 467, column: 21, scope: !1178)
!1180 = !DILocation(line: 468, column: 21, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !100, line: 468, column: 21)
!1182 = distinct !DILexicalBlock(scope: !1175, file: !100, line: 468, column: 21)
!1183 = !DILocation(line: 468, column: 21, scope: !1182)
!1184 = !DILocation(line: 469, column: 21, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !100, line: 469, column: 21)
!1186 = distinct !DILexicalBlock(scope: !1175, file: !100, line: 469, column: 21)
!1187 = !DILocation(line: 469, column: 21, scope: !1186)
!1188 = !DILocation(line: 470, column: 21, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !100, line: 470, column: 21)
!1190 = distinct !DILexicalBlock(scope: !1175, file: !100, line: 470, column: 21)
!1191 = !DILocation(line: 470, column: 21, scope: !1190)
!1192 = !DILocation(line: 471, column: 21, scope: !1175)
!1193 = !DILocation(line: 395, column: 21, scope: !981)
!1194 = !DILocation(line: 484, column: 31, scope: !990)
!1195 = !DILocation(line: 485, column: 31, scope: !990)
!1196 = !DILocation(line: 487, column: 31, scope: !990)
!1197 = !DILocation(line: 488, column: 31, scope: !990)
!1198 = !DILocation(line: 489, column: 31, scope: !990)
!1199 = !DILocation(line: 492, column: 15, scope: !990)
!1200 = !DILocation(line: 494, column: 19, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !100, line: 493, column: 13)
!1202 = distinct !DILexicalBlock(scope: !990, file: !100, line: 492, column: 15)
!1203 = !DILocation(line: 501, column: 33, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !990, file: !100, line: 501, column: 15)
!1205 = !DILocation(line: 506, column: 15, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !990, file: !100, line: 505, column: 15)
!1207 = !DILocation(line: 510, column: 15, scope: !990)
!1208 = !DILocation(line: 518, column: 26, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !990, file: !100, line: 518, column: 15)
!1210 = !DILocation(line: 518, column: 15, scope: !990)
!1211 = !DILocation(line: 518, column: 40, scope: !1209)
!1212 = !DILocation(line: 518, column: 47, scope: !1209)
!1213 = !DILocation(line: 522, column: 17, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !990, file: !100, line: 522, column: 15)
!1215 = !DILocation(line: 518, column: 18, scope: !1209)
!1216 = !DILocation(line: 518, column: 65, scope: !1209)
!1217 = !DILocation(line: 522, column: 15, scope: !990)
!1218 = !DILocation(line: 526, column: 11, scope: !990)
!1219 = !DILocation(line: 541, column: 15, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !990, file: !100, line: 540, column: 15)
!1221 = !DILocation(line: 548, column: 15, scope: !990)
!1222 = !DILocation(line: 550, column: 19, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !100, line: 549, column: 13)
!1224 = distinct !DILexicalBlock(scope: !990, file: !100, line: 548, column: 15)
!1225 = !DILocation(line: 553, column: 19, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !100, line: 553, column: 19)
!1227 = !DILocation(line: 553, column: 35, scope: !1226)
!1228 = !DILocation(line: 553, column: 30, scope: !1226)
!1229 = !DILocation(line: 562, column: 15, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !100, line: 562, column: 15)
!1231 = distinct !DILexicalBlock(scope: !1223, file: !100, line: 562, column: 15)
!1232 = !DILocation(line: 562, column: 15, scope: !1231)
!1233 = !DILocation(line: 563, column: 15, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !100, line: 563, column: 15)
!1235 = distinct !DILexicalBlock(scope: !1223, file: !100, line: 563, column: 15)
!1236 = !DILocation(line: 563, column: 15, scope: !1235)
!1237 = !DILocation(line: 564, column: 15, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !100, line: 564, column: 15)
!1239 = distinct !DILexicalBlock(scope: !1223, file: !100, line: 564, column: 15)
!1240 = !DILocation(line: 564, column: 15, scope: !1239)
!1241 = !DILocation(line: 566, column: 13, scope: !1223)
!1242 = !DILocation(line: 606, column: 17, scope: !989)
!1243 = !DILocation(line: 602, column: 20, scope: !989)
!1244 = !DILocation(line: 609, column: 29, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !994, file: !100, line: 607, column: 15)
!1246 = !{!1247, !1247, i64 0}
!1247 = !{!"short", !585, i64 0}
!1248 = !DILocation(line: 609, column: 27, scope: !1245)
!1249 = !DILocation(line: 604, column: 18, scope: !989)
!1250 = !DILocation(line: 610, column: 15, scope: !1245)
!1251 = !DILocation(line: 613, column: 17, scope: !993)
!1252 = !DILocation(line: 614, column: 17, scope: !993)
!1253 = !DILocation(line: 618, column: 29, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !993, file: !100, line: 618, column: 21)
!1255 = !DILocation(line: 618, column: 21, scope: !993)
!1256 = !DILocation(line: 619, column: 29, scope: !1254)
!1257 = !DILocation(line: 619, column: 19, scope: !1254)
!1258 = !DILocation(line: 621, column: 17, scope: !993)
!1259 = distinct !{!1259, !1258, !1260}
!1260 = !DILocation(line: 667, column: 44, scope: !993)
!1261 = !DILocation(line: 623, column: 21, scope: !1011)
!1262 = !DILocation(line: 624, column: 56, scope: !1011)
!1263 = !DILocation(line: 624, column: 50, scope: !1011)
!1264 = !DILocation(line: 625, column: 53, scope: !1011)
!1265 = !DILocation(line: 613, column: 27, scope: !993)
!1266 = !DILocation(line: 623, column: 29, scope: !1011)
!1267 = !DILocation(line: 624, column: 36, scope: !1011)
!1268 = !DILocation(line: 624, column: 28, scope: !1011)
!1269 = !DILocation(line: 626, column: 25, scope: !1011)
!1270 = !DILocation(line: 636, column: 38, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1018, file: !100, line: 634, column: 23)
!1272 = !DILocation(line: 636, column: 48, scope: !1271)
!1273 = !DILocation(line: 636, column: 51, scope: !1271)
!1274 = !DILocation(line: 636, column: 25, scope: !1271)
!1275 = !DILocation(line: 637, column: 28, scope: !1271)
!1276 = !DILocation(line: 636, column: 34, scope: !1271)
!1277 = distinct !{!1277, !1274, !1275}
!1278 = !DILocation(line: 650, column: 43, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !100, line: 650, column: 29)
!1280 = distinct !DILexicalBlock(scope: !1015, file: !100, line: 650, column: 29)
!1281 = !DILocation(line: 647, column: 29, scope: !1016)
!1282 = !DILocation(line: 649, column: 36, scope: !1015)
!1283 = !DILocation(line: 651, column: 49, scope: !1279)
!1284 = !DILocation(line: 651, column: 39, scope: !1279)
!1285 = !DILocation(line: 651, column: 31, scope: !1279)
!1286 = !DILocation(line: 650, column: 53, scope: !1279)
!1287 = !DILocation(line: 650, column: 29, scope: !1280)
!1288 = distinct !{!1288, !1287, !1289}
!1289 = !DILocation(line: 659, column: 33, scope: !1280)
!1290 = !DILocation(line: 666, column: 19, scope: !993)
!1291 = !DILocation(line: 662, column: 41, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1017, file: !100, line: 662, column: 29)
!1293 = !DILocation(line: 662, column: 31, scope: !1292)
!1294 = !DILocation(line: 662, column: 29, scope: !1017)
!1295 = !DILocation(line: 664, column: 27, scope: !1017)
!1296 = !DILocation(line: 667, column: 26, scope: !993)
!1297 = !DILocation(line: 667, column: 24, scope: !993)
!1298 = !DILocation(line: 666, column: 19, scope: !1011)
!1299 = !DILocation(line: 668, column: 15, scope: !994)
!1300 = !DILocation(line: 670, column: 40, scope: !989)
!1301 = !DILocation(line: 672, column: 19, scope: !1023)
!1302 = !DILocation(line: 672, column: 45, scope: !1023)
!1303 = !DILocation(line: 672, column: 23, scope: !1023)
!1304 = !DILocation(line: 676, column: 33, scope: !1022)
!1305 = !DILocation(line: 676, column: 24, scope: !1022)
!1306 = !DILocation(line: 678, column: 17, scope: !1022)
!1307 = !DILocation(line: 680, column: 43, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !100, line: 680, column: 25)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !100, line: 679, column: 19)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !100, line: 678, column: 17)
!1311 = distinct !DILexicalBlock(scope: !1022, file: !100, line: 678, column: 17)
!1312 = !DILocation(line: 682, column: 25, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !100, line: 682, column: 25)
!1314 = distinct !DILexicalBlock(scope: !1308, file: !100, line: 681, column: 23)
!1315 = !DILocation(line: 682, column: 25, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !100, line: 682, column: 25)
!1317 = !DILocation(line: 682, column: 25, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !100, line: 682, column: 25)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !100, line: 682, column: 25)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !100, line: 682, column: 25)
!1321 = !DILocation(line: 682, column: 25, scope: !1319)
!1322 = !DILocation(line: 682, column: 25, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !100, line: 682, column: 25)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !100, line: 682, column: 25)
!1325 = !DILocation(line: 682, column: 25, scope: !1324)
!1326 = !DILocation(line: 682, column: 25, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !100, line: 682, column: 25)
!1328 = distinct !DILexicalBlock(scope: !1320, file: !100, line: 682, column: 25)
!1329 = !DILocation(line: 682, column: 25, scope: !1328)
!1330 = !DILocation(line: 682, column: 25, scope: !1320)
!1331 = !DILocation(line: 682, column: 25, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !100, line: 682, column: 25)
!1333 = distinct !DILexicalBlock(scope: !1313, file: !100, line: 682, column: 25)
!1334 = !DILocation(line: 682, column: 25, scope: !1333)
!1335 = !DILocation(line: 683, column: 25, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !100, line: 683, column: 25)
!1337 = distinct !DILexicalBlock(scope: !1314, file: !100, line: 683, column: 25)
!1338 = !DILocation(line: 683, column: 25, scope: !1337)
!1339 = !DILocation(line: 684, column: 25, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !100, line: 684, column: 25)
!1341 = distinct !DILexicalBlock(scope: !1314, file: !100, line: 684, column: 25)
!1342 = !DILocation(line: 684, column: 25, scope: !1341)
!1343 = !DILocation(line: 685, column: 38, scope: !1314)
!1344 = !DILocation(line: 685, column: 33, scope: !1314)
!1345 = !DILocation(line: 686, column: 23, scope: !1314)
!1346 = !DILocation(line: 687, column: 30, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1308, file: !100, line: 687, column: 30)
!1348 = !DILocation(line: 687, column: 30, scope: !1308)
!1349 = !DILocation(line: 689, column: 25, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !100, line: 689, column: 25)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !100, line: 689, column: 25)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !100, line: 688, column: 23)
!1353 = !DILocation(line: 689, column: 25, scope: !1351)
!1354 = !DILocation(line: 691, column: 23, scope: !1352)
!1355 = !DILocation(line: 692, column: 35, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1309, file: !100, line: 692, column: 25)
!1357 = !DILocation(line: 692, column: 30, scope: !1356)
!1358 = !DILocation(line: 692, column: 25, scope: !1309)
!1359 = !DILocation(line: 694, column: 21, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !100, line: 694, column: 21)
!1361 = distinct !DILexicalBlock(scope: !1309, file: !100, line: 694, column: 21)
!1362 = !DILocation(line: 694, column: 21, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !100, line: 694, column: 21)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !100, line: 694, column: 21)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !100, line: 694, column: 21)
!1366 = !DILocation(line: 694, column: 21, scope: !1364)
!1367 = !DILocation(line: 694, column: 21, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !100, line: 694, column: 21)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !100, line: 694, column: 21)
!1370 = !DILocation(line: 694, column: 21, scope: !1369)
!1371 = !DILocation(line: 694, column: 21, scope: !1365)
!1372 = !DILocation(line: 695, column: 21, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !100, line: 695, column: 21)
!1374 = distinct !DILexicalBlock(scope: !1309, file: !100, line: 695, column: 21)
!1375 = !DILocation(line: 695, column: 21, scope: !1374)
!1376 = !DILocation(line: 696, column: 25, scope: !1309)
!1377 = !DILocation(line: 678, column: 17, scope: !1310)
!1378 = distinct !{!1378, !1379, !1380}
!1379 = !DILocation(line: 678, column: 17, scope: !1311)
!1380 = !DILocation(line: 697, column: 19, scope: !1311)
!1381 = !DILocation(line: 704, column: 34, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !981, file: !100, line: 704, column: 11)
!1383 = !DILocation(line: 706, column: 14, scope: !1382)
!1384 = !DILocation(line: 707, column: 14, scope: !1382)
!1385 = !DILocation(line: 707, column: 35, scope: !1382)
!1386 = !DILocation(line: 707, column: 17, scope: !1382)
!1387 = !DILocation(line: 707, column: 53, scope: !1382)
!1388 = !DILocation(line: 707, column: 47, scope: !1382)
!1389 = !DILocation(line: 707, column: 65, scope: !1382)
!1390 = !DILocation(line: 708, column: 15, scope: !1382)
!1391 = !DILocation(line: 708, column: 11, scope: !1382)
!1392 = !DILocation(line: 704, column: 11, scope: !981)
!1393 = !DILocation(line: 712, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !981, file: !100, line: 712, column: 7)
!1395 = !DILocation(line: 712, column: 7, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1394, file: !100, line: 712, column: 7)
!1397 = !DILocation(line: 712, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !100, line: 712, column: 7)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !100, line: 712, column: 7)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !100, line: 712, column: 7)
!1401 = !DILocation(line: 712, column: 7, scope: !1399)
!1402 = !DILocation(line: 712, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !100, line: 712, column: 7)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !100, line: 712, column: 7)
!1405 = !DILocation(line: 712, column: 7, scope: !1404)
!1406 = !DILocation(line: 712, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !100, line: 712, column: 7)
!1408 = distinct !DILexicalBlock(scope: !1400, file: !100, line: 712, column: 7)
!1409 = !DILocation(line: 712, column: 7, scope: !1408)
!1410 = !DILocation(line: 712, column: 7, scope: !1400)
!1411 = !DILocation(line: 712, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !100, line: 712, column: 7)
!1413 = distinct !DILexicalBlock(scope: !1394, file: !100, line: 712, column: 7)
!1414 = !DILocation(line: 712, column: 7, scope: !1413)
!1415 = !DILocation(line: 715, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !100, line: 715, column: 7)
!1417 = distinct !DILexicalBlock(scope: !981, file: !100, line: 715, column: 7)
!1418 = !DILocation(line: 715, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !100, line: 715, column: 7)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !100, line: 715, column: 7)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !100, line: 715, column: 7)
!1422 = !DILocation(line: 715, column: 7, scope: !1420)
!1423 = !DILocation(line: 715, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !100, line: 715, column: 7)
!1425 = distinct !DILexicalBlock(scope: !1421, file: !100, line: 715, column: 7)
!1426 = !DILocation(line: 715, column: 7, scope: !1425)
!1427 = !DILocation(line: 715, column: 7, scope: !1421)
!1428 = !DILocation(line: 716, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !100, line: 716, column: 7)
!1430 = distinct !DILexicalBlock(scope: !981, file: !100, line: 716, column: 7)
!1431 = !DILocation(line: 716, column: 7, scope: !1430)
!1432 = !DILocation(line: 718, column: 13, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !981, file: !100, line: 718, column: 11)
!1434 = !DILocation(line: 718, column: 11, scope: !981)
!1435 = !DILocation(line: 720, column: 5, scope: !982)
!1436 = !DILocation(line: 392, column: 75, scope: !982)
!1437 = !DILocation(line: 392, column: 3, scope: !982)
!1438 = distinct !{!1438, !1096, !1439}
!1439 = !DILocation(line: 720, column: 5, scope: !983)
!1440 = !DILocation(line: 722, column: 11, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !954, file: !100, line: 722, column: 7)
!1442 = !DILocation(line: 722, column: 16, scope: !1441)
!1443 = !DILocation(line: 730, column: 51, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !954, file: !100, line: 730, column: 7)
!1445 = !DILocation(line: 731, column: 10, scope: !1444)
!1446 = !DILocation(line: 733, column: 11, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !100, line: 733, column: 11)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !100, line: 732, column: 5)
!1449 = !DILocation(line: 733, column: 11, scope: !1448)
!1450 = !DILocation(line: 734, column: 16, scope: !1447)
!1451 = !DILocation(line: 734, column: 9, scope: !1447)
!1452 = !DILocation(line: 738, column: 18, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1447, file: !100, line: 738, column: 16)
!1454 = !DILocation(line: 738, column: 32, scope: !1453)
!1455 = !DILocation(line: 738, column: 29, scope: !1453)
!1456 = !DILocation(line: 747, column: 7, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !954, file: !100, line: 747, column: 7)
!1458 = !DILocation(line: 747, column: 20, scope: !1457)
!1459 = !DILocation(line: 748, column: 12, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !100, line: 748, column: 5)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !100, line: 748, column: 5)
!1462 = !DILocation(line: 748, column: 5, scope: !1461)
!1463 = !DILocation(line: 749, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !100, line: 749, column: 7)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !100, line: 749, column: 7)
!1466 = !DILocation(line: 749, column: 7, scope: !1465)
!1467 = !DILocation(line: 748, column: 39, scope: !1460)
!1468 = distinct !{!1468, !1462, !1469}
!1469 = !DILocation(line: 749, column: 7, scope: !1461)
!1470 = !DILocation(line: 751, column: 11, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !954, file: !100, line: 751, column: 7)
!1472 = !DILocation(line: 751, column: 7, scope: !954)
!1473 = !DILocation(line: 752, column: 5, scope: !1471)
!1474 = !DILocation(line: 752, column: 17, scope: !1471)
!1475 = !DILocation(line: 758, column: 21, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !954, file: !100, line: 758, column: 7)
!1477 = !DILocation(line: 758, column: 54, scope: !1476)
!1478 = !DILocation(line: 758, column: 51, scope: !1476)
!1479 = !DILocation(line: 762, column: 42, scope: !954)
!1480 = !DILocation(line: 760, column: 10, scope: !954)
!1481 = !DILocation(line: 760, column: 3, scope: !954)
!1482 = !DILocation(line: 764, column: 1, scope: !954)
!1483 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1484, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!6, !6, !58}
!1486 = !{!1487, !1488, !1489, !1490}
!1487 = !DILocalVariable(name: "msgid", arg: 1, scope: !1483, file: !100, line: 199, type: !6)
!1488 = !DILocalVariable(name: "s", arg: 2, scope: !1483, file: !100, line: 199, type: !58)
!1489 = !DILocalVariable(name: "translation", scope: !1483, file: !100, line: 201, type: !6)
!1490 = !DILocalVariable(name: "locale_code", scope: !1483, file: !100, line: 202, type: !6)
!1491 = !DILocation(line: 199, column: 28, scope: !1483)
!1492 = !DILocation(line: 199, column: 54, scope: !1483)
!1493 = !DILocation(line: 201, column: 29, scope: !1483)
!1494 = !DILocation(line: 201, column: 15, scope: !1483)
!1495 = !DILocation(line: 204, column: 19, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1483, file: !100, line: 204, column: 7)
!1497 = !DILocation(line: 204, column: 7, scope: !1483)
!1498 = !DILocation(line: 225, column: 17, scope: !1483)
!1499 = !DILocation(line: 202, column: 15, scope: !1483)
!1500 = !DILocalVariable(name: "s2", arg: 2, scope: !1501, file: !1502, line: 160, type: !6)
!1501 = distinct !DISubprogram(name: "strcaseeq0", scope: !1502, file: !1502, line: 160, type: !1503, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1505)
!1502 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1505 = !{!1506, !1500, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515}
!1506 = !DILocalVariable(name: "s1", arg: 1, scope: !1501, file: !1502, line: 160, type: !6)
!1507 = !DILocalVariable(name: "s20", arg: 3, scope: !1501, file: !1502, line: 160, type: !8)
!1508 = !DILocalVariable(name: "s21", arg: 4, scope: !1501, file: !1502, line: 160, type: !8)
!1509 = !DILocalVariable(name: "s22", arg: 5, scope: !1501, file: !1502, line: 160, type: !8)
!1510 = !DILocalVariable(name: "s23", arg: 6, scope: !1501, file: !1502, line: 160, type: !8)
!1511 = !DILocalVariable(name: "s24", arg: 7, scope: !1501, file: !1502, line: 160, type: !8)
!1512 = !DILocalVariable(name: "s25", arg: 8, scope: !1501, file: !1502, line: 160, type: !8)
!1513 = !DILocalVariable(name: "s26", arg: 9, scope: !1501, file: !1502, line: 160, type: !8)
!1514 = !DILocalVariable(name: "s27", arg: 10, scope: !1501, file: !1502, line: 160, type: !8)
!1515 = !DILocalVariable(name: "s28", arg: 11, scope: !1501, file: !1502, line: 160, type: !8)
!1516 = !DILocation(line: 160, column: 41, scope: !1501, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 226, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1483, file: !100, line: 226, column: 7)
!1519 = !DILocation(line: 160, column: 120, scope: !1501, inlinedAt: !1517)
!1520 = !DILocation(line: 160, column: 130, scope: !1501, inlinedAt: !1517)
!1521 = !DILocation(line: 162, column: 7, scope: !1522, inlinedAt: !1517)
!1522 = distinct !DILexicalBlock(scope: !1501, file: !1502, line: 162, column: 7)
!1523 = !DILocalVariable(name: "s2", arg: 2, scope: !1524, file: !1502, line: 146, type: !6)
!1524 = distinct !DISubprogram(name: "strcaseeq1", scope: !1502, file: !1502, line: 146, type: !1525, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1527)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1527 = !{!1528, !1523, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1528 = !DILocalVariable(name: "s1", arg: 1, scope: !1524, file: !1502, line: 146, type: !6)
!1529 = !DILocalVariable(name: "s21", arg: 3, scope: !1524, file: !1502, line: 146, type: !8)
!1530 = !DILocalVariable(name: "s22", arg: 4, scope: !1524, file: !1502, line: 146, type: !8)
!1531 = !DILocalVariable(name: "s23", arg: 5, scope: !1524, file: !1502, line: 146, type: !8)
!1532 = !DILocalVariable(name: "s24", arg: 6, scope: !1524, file: !1502, line: 146, type: !8)
!1533 = !DILocalVariable(name: "s25", arg: 7, scope: !1524, file: !1502, line: 146, type: !8)
!1534 = !DILocalVariable(name: "s26", arg: 8, scope: !1524, file: !1502, line: 146, type: !8)
!1535 = !DILocalVariable(name: "s27", arg: 9, scope: !1524, file: !1502, line: 146, type: !8)
!1536 = !DILocalVariable(name: "s28", arg: 10, scope: !1524, file: !1502, line: 146, type: !8)
!1537 = !DILocation(line: 146, column: 41, scope: !1524, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 167, column: 16, scope: !1539, inlinedAt: !1517)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !1502, line: 164, column: 11)
!1540 = distinct !DILexicalBlock(scope: !1522, file: !1502, line: 163, column: 5)
!1541 = !DILocation(line: 146, column: 110, scope: !1524, inlinedAt: !1538)
!1542 = !DILocation(line: 146, column: 120, scope: !1524, inlinedAt: !1538)
!1543 = !DILocation(line: 148, column: 7, scope: !1544, inlinedAt: !1538)
!1544 = distinct !DILexicalBlock(scope: !1524, file: !1502, line: 148, column: 7)
!1545 = !DILocalVariable(name: "s2", arg: 2, scope: !1546, file: !1502, line: 132, type: !6)
!1546 = distinct !DISubprogram(name: "strcaseeq2", scope: !1502, file: !1502, line: 132, type: !1547, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1549 = !{!1550, !1545, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1550 = !DILocalVariable(name: "s1", arg: 1, scope: !1546, file: !1502, line: 132, type: !6)
!1551 = !DILocalVariable(name: "s22", arg: 3, scope: !1546, file: !1502, line: 132, type: !8)
!1552 = !DILocalVariable(name: "s23", arg: 4, scope: !1546, file: !1502, line: 132, type: !8)
!1553 = !DILocalVariable(name: "s24", arg: 5, scope: !1546, file: !1502, line: 132, type: !8)
!1554 = !DILocalVariable(name: "s25", arg: 6, scope: !1546, file: !1502, line: 132, type: !8)
!1555 = !DILocalVariable(name: "s26", arg: 7, scope: !1546, file: !1502, line: 132, type: !8)
!1556 = !DILocalVariable(name: "s27", arg: 8, scope: !1546, file: !1502, line: 132, type: !8)
!1557 = !DILocalVariable(name: "s28", arg: 9, scope: !1546, file: !1502, line: 132, type: !8)
!1558 = !DILocation(line: 132, column: 41, scope: !1546, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 153, column: 16, scope: !1560, inlinedAt: !1538)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !1502, line: 150, column: 11)
!1561 = distinct !DILexicalBlock(scope: !1544, file: !1502, line: 149, column: 5)
!1562 = !DILocation(line: 132, column: 100, scope: !1546, inlinedAt: !1559)
!1563 = !DILocation(line: 132, column: 110, scope: !1546, inlinedAt: !1559)
!1564 = !DILocation(line: 134, column: 7, scope: !1565, inlinedAt: !1559)
!1565 = distinct !DILexicalBlock(scope: !1546, file: !1502, line: 134, column: 7)
!1566 = !DILocalVariable(name: "s2", arg: 2, scope: !1567, file: !1502, line: 118, type: !6)
!1567 = distinct !DISubprogram(name: "strcaseeq3", scope: !1502, file: !1502, line: 118, type: !1568, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1570 = !{!1571, !1566, !1572, !1573, !1574, !1575, !1576, !1577}
!1571 = !DILocalVariable(name: "s1", arg: 1, scope: !1567, file: !1502, line: 118, type: !6)
!1572 = !DILocalVariable(name: "s23", arg: 3, scope: !1567, file: !1502, line: 118, type: !8)
!1573 = !DILocalVariable(name: "s24", arg: 4, scope: !1567, file: !1502, line: 118, type: !8)
!1574 = !DILocalVariable(name: "s25", arg: 5, scope: !1567, file: !1502, line: 118, type: !8)
!1575 = !DILocalVariable(name: "s26", arg: 6, scope: !1567, file: !1502, line: 118, type: !8)
!1576 = !DILocalVariable(name: "s27", arg: 7, scope: !1567, file: !1502, line: 118, type: !8)
!1577 = !DILocalVariable(name: "s28", arg: 8, scope: !1567, file: !1502, line: 118, type: !8)
!1578 = !DILocation(line: 118, column: 41, scope: !1567, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 139, column: 16, scope: !1580, inlinedAt: !1559)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !1502, line: 136, column: 11)
!1581 = distinct !DILexicalBlock(scope: !1565, file: !1502, line: 135, column: 5)
!1582 = !DILocation(line: 118, column: 90, scope: !1567, inlinedAt: !1579)
!1583 = !DILocation(line: 118, column: 100, scope: !1567, inlinedAt: !1579)
!1584 = !DILocation(line: 120, column: 7, scope: !1585, inlinedAt: !1579)
!1585 = distinct !DILexicalBlock(scope: !1567, file: !1502, line: 120, column: 7)
!1586 = !DILocation(line: 120, column: 7, scope: !1567, inlinedAt: !1579)
!1587 = !DILocalVariable(name: "s2", arg: 2, scope: !1588, file: !1502, line: 104, type: !6)
!1588 = distinct !DISubprogram(name: "strcaseeq4", scope: !1502, file: !1502, line: 104, type: !1589, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1591)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1591 = !{!1592, !1587, !1593, !1594, !1595, !1596, !1597}
!1592 = !DILocalVariable(name: "s1", arg: 1, scope: !1588, file: !1502, line: 104, type: !6)
!1593 = !DILocalVariable(name: "s24", arg: 3, scope: !1588, file: !1502, line: 104, type: !8)
!1594 = !DILocalVariable(name: "s25", arg: 4, scope: !1588, file: !1502, line: 104, type: !8)
!1595 = !DILocalVariable(name: "s26", arg: 5, scope: !1588, file: !1502, line: 104, type: !8)
!1596 = !DILocalVariable(name: "s27", arg: 6, scope: !1588, file: !1502, line: 104, type: !8)
!1597 = !DILocalVariable(name: "s28", arg: 7, scope: !1588, file: !1502, line: 104, type: !8)
!1598 = !DILocation(line: 104, column: 41, scope: !1588, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 125, column: 16, scope: !1600, inlinedAt: !1579)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !1502, line: 122, column: 11)
!1601 = distinct !DILexicalBlock(scope: !1585, file: !1502, line: 121, column: 5)
!1602 = !DILocation(line: 104, column: 80, scope: !1588, inlinedAt: !1599)
!1603 = !DILocation(line: 104, column: 90, scope: !1588, inlinedAt: !1599)
!1604 = !DILocation(line: 106, column: 7, scope: !1605, inlinedAt: !1599)
!1605 = distinct !DILexicalBlock(scope: !1588, file: !1502, line: 106, column: 7)
!1606 = !DILocation(line: 106, column: 7, scope: !1588, inlinedAt: !1599)
!1607 = !DILocalVariable(name: "s2", arg: 2, scope: !1608, file: !1502, line: 90, type: !6)
!1608 = distinct !DISubprogram(name: "strcaseeq5", scope: !1502, file: !1502, line: 90, type: !1609, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!25, !6, !6, !8, !8, !8, !8}
!1611 = !{!1612, !1607, !1613, !1614, !1615, !1616}
!1612 = !DILocalVariable(name: "s1", arg: 1, scope: !1608, file: !1502, line: 90, type: !6)
!1613 = !DILocalVariable(name: "s25", arg: 3, scope: !1608, file: !1502, line: 90, type: !8)
!1614 = !DILocalVariable(name: "s26", arg: 4, scope: !1608, file: !1502, line: 90, type: !8)
!1615 = !DILocalVariable(name: "s27", arg: 5, scope: !1608, file: !1502, line: 90, type: !8)
!1616 = !DILocalVariable(name: "s28", arg: 6, scope: !1608, file: !1502, line: 90, type: !8)
!1617 = !DILocation(line: 90, column: 41, scope: !1608, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 111, column: 16, scope: !1619, inlinedAt: !1599)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !1502, line: 108, column: 11)
!1620 = distinct !DILexicalBlock(scope: !1605, file: !1502, line: 107, column: 5)
!1621 = !DILocation(line: 90, column: 70, scope: !1608, inlinedAt: !1618)
!1622 = !DILocation(line: 90, column: 80, scope: !1608, inlinedAt: !1618)
!1623 = !DILocation(line: 92, column: 7, scope: !1624, inlinedAt: !1618)
!1624 = distinct !DILexicalBlock(scope: !1608, file: !1502, line: 92, column: 7)
!1625 = !DILocation(line: 92, column: 7, scope: !1608, inlinedAt: !1618)
!1626 = !DILocation(line: 227, column: 12, scope: !1518)
!1627 = !DILocation(line: 227, column: 21, scope: !1518)
!1628 = !DILocation(line: 227, column: 5, scope: !1518)
!1629 = !DILocation(line: 146, column: 41, scope: !1524, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 167, column: 16, scope: !1539, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 228, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1483, file: !100, line: 228, column: 7)
!1633 = !DILocation(line: 146, column: 110, scope: !1524, inlinedAt: !1630)
!1634 = !DILocation(line: 146, column: 120, scope: !1524, inlinedAt: !1630)
!1635 = !DILocation(line: 148, column: 7, scope: !1544, inlinedAt: !1630)
!1636 = !DILocation(line: 132, column: 41, scope: !1546, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 153, column: 16, scope: !1560, inlinedAt: !1630)
!1638 = !DILocation(line: 132, column: 100, scope: !1546, inlinedAt: !1637)
!1639 = !DILocation(line: 132, column: 110, scope: !1546, inlinedAt: !1637)
!1640 = !DILocation(line: 134, column: 7, scope: !1565, inlinedAt: !1637)
!1641 = !DILocation(line: 134, column: 7, scope: !1546, inlinedAt: !1637)
!1642 = !DILocation(line: 118, column: 41, scope: !1567, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 139, column: 16, scope: !1580, inlinedAt: !1637)
!1644 = !DILocation(line: 118, column: 90, scope: !1567, inlinedAt: !1643)
!1645 = !DILocation(line: 118, column: 100, scope: !1567, inlinedAt: !1643)
!1646 = !DILocation(line: 120, column: 7, scope: !1585, inlinedAt: !1643)
!1647 = !DILocation(line: 120, column: 7, scope: !1567, inlinedAt: !1643)
!1648 = !DILocation(line: 104, column: 41, scope: !1588, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 125, column: 16, scope: !1600, inlinedAt: !1643)
!1650 = !DILocation(line: 104, column: 80, scope: !1588, inlinedAt: !1649)
!1651 = !DILocation(line: 104, column: 90, scope: !1588, inlinedAt: !1649)
!1652 = !DILocation(line: 106, column: 7, scope: !1605, inlinedAt: !1649)
!1653 = !DILocation(line: 106, column: 7, scope: !1588, inlinedAt: !1649)
!1654 = !DILocation(line: 90, column: 41, scope: !1608, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 111, column: 16, scope: !1619, inlinedAt: !1649)
!1656 = !DILocation(line: 90, column: 70, scope: !1608, inlinedAt: !1655)
!1657 = !DILocation(line: 90, column: 80, scope: !1608, inlinedAt: !1655)
!1658 = !DILocation(line: 92, column: 7, scope: !1624, inlinedAt: !1655)
!1659 = !DILocation(line: 92, column: 7, scope: !1608, inlinedAt: !1655)
!1660 = !DILocalVariable(name: "s2", arg: 2, scope: !1661, file: !1502, line: 76, type: !6)
!1661 = distinct !DISubprogram(name: "strcaseeq6", scope: !1502, file: !1502, line: 76, type: !1662, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1664)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!25, !6, !6, !8, !8, !8}
!1664 = !{!1665, !1660, !1666, !1667, !1668}
!1665 = !DILocalVariable(name: "s1", arg: 1, scope: !1661, file: !1502, line: 76, type: !6)
!1666 = !DILocalVariable(name: "s26", arg: 3, scope: !1661, file: !1502, line: 76, type: !8)
!1667 = !DILocalVariable(name: "s27", arg: 4, scope: !1661, file: !1502, line: 76, type: !8)
!1668 = !DILocalVariable(name: "s28", arg: 5, scope: !1661, file: !1502, line: 76, type: !8)
!1669 = !DILocation(line: 76, column: 41, scope: !1661, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 97, column: 16, scope: !1671, inlinedAt: !1655)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !1502, line: 94, column: 11)
!1672 = distinct !DILexicalBlock(scope: !1624, file: !1502, line: 93, column: 5)
!1673 = !DILocation(line: 76, column: 60, scope: !1661, inlinedAt: !1670)
!1674 = !DILocation(line: 76, column: 70, scope: !1661, inlinedAt: !1670)
!1675 = !DILocation(line: 78, column: 7, scope: !1676, inlinedAt: !1670)
!1676 = distinct !DILexicalBlock(scope: !1661, file: !1502, line: 78, column: 7)
!1677 = !DILocation(line: 78, column: 7, scope: !1661, inlinedAt: !1670)
!1678 = !DILocalVariable(name: "s2", arg: 2, scope: !1679, file: !1502, line: 62, type: !6)
!1679 = distinct !DISubprogram(name: "strcaseeq7", scope: !1502, file: !1502, line: 62, type: !1680, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!25, !6, !6, !8, !8}
!1682 = !{!1683, !1678, !1684, !1685}
!1683 = !DILocalVariable(name: "s1", arg: 1, scope: !1679, file: !1502, line: 62, type: !6)
!1684 = !DILocalVariable(name: "s27", arg: 3, scope: !1679, file: !1502, line: 62, type: !8)
!1685 = !DILocalVariable(name: "s28", arg: 4, scope: !1679, file: !1502, line: 62, type: !8)
!1686 = !DILocation(line: 62, column: 41, scope: !1679, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 83, column: 16, scope: !1688, inlinedAt: !1670)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !1502, line: 80, column: 11)
!1689 = distinct !DILexicalBlock(scope: !1676, file: !1502, line: 79, column: 5)
!1690 = !DILocation(line: 62, column: 50, scope: !1679, inlinedAt: !1687)
!1691 = !DILocation(line: 62, column: 60, scope: !1679, inlinedAt: !1687)
!1692 = !DILocation(line: 64, column: 7, scope: !1693, inlinedAt: !1687)
!1693 = distinct !DILexicalBlock(scope: !1679, file: !1502, line: 64, column: 7)
!1694 = !DILocation(line: 228, column: 7, scope: !1483)
!1695 = !DILocation(line: 229, column: 12, scope: !1632)
!1696 = !DILocation(line: 229, column: 21, scope: !1632)
!1697 = !DILocation(line: 229, column: 5, scope: !1632)
!1698 = !DILocation(line: 231, column: 13, scope: !1483)
!1699 = !DILocation(line: 231, column: 11, scope: !1483)
!1700 = !DILocation(line: 231, column: 3, scope: !1483)
!1701 = !DILocation(line: 232, column: 1, scope: !1483)
!1702 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !1703, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!50, !6, !94, !826}
!1705 = !{!1706, !1707, !1708}
!1706 = !DILocalVariable(name: "arg", arg: 1, scope: !1702, file: !100, line: 791, type: !6)
!1707 = !DILocalVariable(name: "argsize", arg: 2, scope: !1702, file: !100, line: 791, type: !94)
!1708 = !DILocalVariable(name: "o", arg: 3, scope: !1702, file: !100, line: 792, type: !826)
!1709 = !DILocation(line: 791, column: 29, scope: !1702)
!1710 = !DILocation(line: 791, column: 41, scope: !1702)
!1711 = !DILocation(line: 792, column: 47, scope: !1702)
!1712 = !DILocalVariable(name: "arg", arg: 1, scope: !1713, file: !100, line: 804, type: !6)
!1713 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !1714, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1716)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!50, !6, !94, !539, !826}
!1716 = !{!1712, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724}
!1717 = !DILocalVariable(name: "argsize", arg: 2, scope: !1713, file: !100, line: 804, type: !94)
!1718 = !DILocalVariable(name: "size", arg: 3, scope: !1713, file: !100, line: 804, type: !539)
!1719 = !DILocalVariable(name: "o", arg: 4, scope: !1713, file: !100, line: 805, type: !826)
!1720 = !DILocalVariable(name: "p", scope: !1713, file: !100, line: 807, type: !826)
!1721 = !DILocalVariable(name: "e", scope: !1713, file: !100, line: 808, type: !25)
!1722 = !DILocalVariable(name: "flags", scope: !1713, file: !100, line: 810, type: !25)
!1723 = !DILocalVariable(name: "bufsize", scope: !1713, file: !100, line: 811, type: !94)
!1724 = !DILocalVariable(name: "buf", scope: !1713, file: !100, line: 815, type: !50)
!1725 = !DILocation(line: 804, column: 33, scope: !1713, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 794, column: 10, scope: !1702)
!1727 = !DILocation(line: 804, column: 45, scope: !1713, inlinedAt: !1726)
!1728 = !DILocation(line: 804, column: 62, scope: !1713, inlinedAt: !1726)
!1729 = !DILocation(line: 805, column: 51, scope: !1713, inlinedAt: !1726)
!1730 = !DILocation(line: 807, column: 37, scope: !1713, inlinedAt: !1726)
!1731 = !DILocation(line: 807, column: 33, scope: !1713, inlinedAt: !1726)
!1732 = !DILocation(line: 808, column: 11, scope: !1713, inlinedAt: !1726)
!1733 = !DILocation(line: 808, column: 7, scope: !1713, inlinedAt: !1726)
!1734 = !DILocation(line: 810, column: 18, scope: !1713, inlinedAt: !1726)
!1735 = !DILocation(line: 810, column: 24, scope: !1713, inlinedAt: !1726)
!1736 = !DILocation(line: 810, column: 7, scope: !1713, inlinedAt: !1726)
!1737 = !DILocation(line: 811, column: 69, scope: !1713, inlinedAt: !1726)
!1738 = !DILocation(line: 812, column: 53, scope: !1713, inlinedAt: !1726)
!1739 = !DILocation(line: 813, column: 49, scope: !1713, inlinedAt: !1726)
!1740 = !DILocation(line: 814, column: 49, scope: !1713, inlinedAt: !1726)
!1741 = !DILocation(line: 811, column: 20, scope: !1713, inlinedAt: !1726)
!1742 = !DILocation(line: 814, column: 62, scope: !1713, inlinedAt: !1726)
!1743 = !DILocation(line: 811, column: 10, scope: !1713, inlinedAt: !1726)
!1744 = !DILocalVariable(name: "n", arg: 1, scope: !1745, file: !535, line: 220, type: !94)
!1745 = distinct !DISubprogram(name: "xcharalloc", scope: !535, file: !535, line: 220, type: !1746, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1748)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!50, !94}
!1748 = !{!1744}
!1749 = !DILocation(line: 220, column: 20, scope: !1745, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 815, column: 15, scope: !1713, inlinedAt: !1726)
!1751 = !DILocation(line: 222, column: 10, scope: !1745, inlinedAt: !1750)
!1752 = !DILocation(line: 815, column: 9, scope: !1713, inlinedAt: !1726)
!1753 = !DILocation(line: 816, column: 60, scope: !1713, inlinedAt: !1726)
!1754 = !DILocation(line: 818, column: 32, scope: !1713, inlinedAt: !1726)
!1755 = !DILocation(line: 818, column: 47, scope: !1713, inlinedAt: !1726)
!1756 = !DILocation(line: 816, column: 3, scope: !1713, inlinedAt: !1726)
!1757 = !DILocation(line: 819, column: 9, scope: !1713, inlinedAt: !1726)
!1758 = !DILocation(line: 794, column: 3, scope: !1702)
!1759 = !DILocation(line: 804, column: 33, scope: !1713)
!1760 = !DILocation(line: 804, column: 45, scope: !1713)
!1761 = !DILocation(line: 804, column: 62, scope: !1713)
!1762 = !DILocation(line: 805, column: 51, scope: !1713)
!1763 = !DILocation(line: 807, column: 37, scope: !1713)
!1764 = !DILocation(line: 807, column: 33, scope: !1713)
!1765 = !DILocation(line: 808, column: 11, scope: !1713)
!1766 = !DILocation(line: 808, column: 7, scope: !1713)
!1767 = !DILocation(line: 810, column: 18, scope: !1713)
!1768 = !DILocation(line: 810, column: 27, scope: !1713)
!1769 = !DILocation(line: 810, column: 24, scope: !1713)
!1770 = !DILocation(line: 810, column: 7, scope: !1713)
!1771 = !DILocation(line: 811, column: 69, scope: !1713)
!1772 = !DILocation(line: 812, column: 53, scope: !1713)
!1773 = !DILocation(line: 813, column: 49, scope: !1713)
!1774 = !DILocation(line: 814, column: 49, scope: !1713)
!1775 = !DILocation(line: 811, column: 20, scope: !1713)
!1776 = !DILocation(line: 814, column: 62, scope: !1713)
!1777 = !DILocation(line: 811, column: 10, scope: !1713)
!1778 = !DILocation(line: 220, column: 20, scope: !1745, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 815, column: 15, scope: !1713)
!1780 = !DILocation(line: 222, column: 10, scope: !1745, inlinedAt: !1779)
!1781 = !DILocation(line: 815, column: 9, scope: !1713)
!1782 = !DILocation(line: 816, column: 60, scope: !1713)
!1783 = !DILocation(line: 818, column: 32, scope: !1713)
!1784 = !DILocation(line: 818, column: 47, scope: !1713)
!1785 = !DILocation(line: 816, column: 3, scope: !1713)
!1786 = !DILocation(line: 819, column: 9, scope: !1713)
!1787 = !DILocation(line: 820, column: 7, scope: !1713)
!1788 = !DILocation(line: 821, column: 11, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1713, file: !100, line: 820, column: 7)
!1790 = !{!1791, !1791, i64 0}
!1791 = !{!"long", !585, i64 0}
!1792 = !DILocation(line: 821, column: 5, scope: !1789)
!1793 = !DILocation(line: 822, column: 3, scope: !1713)
!1794 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !676, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1795)
!1795 = !{!1796, !1797}
!1796 = !DILocalVariable(name: "sv", scope: !1794, file: !100, line: 842, type: !127)
!1797 = !DILocalVariable(name: "i", scope: !1794, file: !100, line: 843, type: !25)
!1798 = !DILocation(line: 842, column: 24, scope: !1794)
!1799 = !DILocation(line: 842, column: 19, scope: !1794)
!1800 = !DILocation(line: 843, column: 7, scope: !1794)
!1801 = !DILocation(line: 844, column: 19, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !100, line: 844, column: 3)
!1803 = distinct !DILexicalBlock(scope: !1794, file: !100, line: 844, column: 3)
!1804 = !DILocation(line: 844, column: 17, scope: !1802)
!1805 = !DILocation(line: 844, column: 3, scope: !1803)
!1806 = !DILocation(line: 845, column: 17, scope: !1802)
!1807 = !{!1808, !584, i64 8}
!1808 = !{!"slotvec", !1791, i64 0, !584, i64 8}
!1809 = !DILocation(line: 845, column: 5, scope: !1802)
!1810 = !DILocation(line: 844, column: 28, scope: !1802)
!1811 = distinct !{!1811, !1805, !1812}
!1812 = !DILocation(line: 845, column: 20, scope: !1803)
!1813 = !DILocation(line: 846, column: 13, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1794, file: !100, line: 846, column: 7)
!1815 = !DILocation(line: 846, column: 17, scope: !1814)
!1816 = !DILocation(line: 846, column: 7, scope: !1794)
!1817 = !DILocation(line: 848, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1814, file: !100, line: 847, column: 5)
!1819 = !DILocation(line: 849, column: 21, scope: !1818)
!1820 = !{!1808, !1791, i64 0}
!1821 = !DILocation(line: 850, column: 20, scope: !1818)
!1822 = !DILocation(line: 851, column: 5, scope: !1818)
!1823 = !DILocation(line: 852, column: 10, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1794, file: !100, line: 852, column: 7)
!1825 = !DILocation(line: 852, column: 7, scope: !1794)
!1826 = !DILocation(line: 854, column: 13, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1824, file: !100, line: 853, column: 5)
!1828 = !DILocation(line: 854, column: 7, scope: !1827)
!1829 = !DILocation(line: 855, column: 15, scope: !1827)
!1830 = !DILocation(line: 856, column: 5, scope: !1827)
!1831 = !DILocation(line: 857, column: 10, scope: !1794)
!1832 = !DILocation(line: 858, column: 1, scope: !1794)
!1833 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !1834, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!50, !25, !6}
!1836 = !{!1837, !1838}
!1837 = !DILocalVariable(name: "n", arg: 1, scope: !1833, file: !100, line: 922, type: !25)
!1838 = !DILocalVariable(name: "arg", arg: 2, scope: !1833, file: !100, line: 922, type: !6)
!1839 = !DILocation(line: 922, column: 17, scope: !1833)
!1840 = !DILocation(line: 922, column: 32, scope: !1833)
!1841 = !DILocation(line: 924, column: 10, scope: !1833)
!1842 = !DILocation(line: 924, column: 3, scope: !1833)
!1843 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !1844, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!50, !25, !6, !94, !826}
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1853, !1856, !1858, !1859, !1860}
!1847 = !DILocalVariable(name: "n", arg: 1, scope: !1843, file: !100, line: 869, type: !25)
!1848 = !DILocalVariable(name: "arg", arg: 2, scope: !1843, file: !100, line: 869, type: !6)
!1849 = !DILocalVariable(name: "argsize", arg: 3, scope: !1843, file: !100, line: 869, type: !94)
!1850 = !DILocalVariable(name: "options", arg: 4, scope: !1843, file: !100, line: 870, type: !826)
!1851 = !DILocalVariable(name: "e", scope: !1843, file: !100, line: 872, type: !25)
!1852 = !DILocalVariable(name: "sv", scope: !1843, file: !100, line: 874, type: !127)
!1853 = !DILocalVariable(name: "preallocated", scope: !1854, file: !100, line: 881, type: !17)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !100, line: 880, column: 5)
!1855 = distinct !DILexicalBlock(scope: !1843, file: !100, line: 879, column: 7)
!1856 = !DILocalVariable(name: "size", scope: !1857, file: !100, line: 894, type: !94)
!1857 = distinct !DILexicalBlock(scope: !1843, file: !100, line: 893, column: 3)
!1858 = !DILocalVariable(name: "val", scope: !1857, file: !100, line: 895, type: !50)
!1859 = !DILocalVariable(name: "flags", scope: !1857, file: !100, line: 897, type: !25)
!1860 = !DILocalVariable(name: "qsize", scope: !1857, file: !100, line: 898, type: !94)
!1861 = !DILocation(line: 869, column: 25, scope: !1843)
!1862 = !DILocation(line: 869, column: 40, scope: !1843)
!1863 = !DILocation(line: 869, column: 52, scope: !1843)
!1864 = !DILocation(line: 870, column: 51, scope: !1843)
!1865 = !DILocation(line: 872, column: 11, scope: !1843)
!1866 = !DILocation(line: 872, column: 7, scope: !1843)
!1867 = !DILocation(line: 874, column: 24, scope: !1843)
!1868 = !DILocation(line: 874, column: 19, scope: !1843)
!1869 = !DILocation(line: 876, column: 9, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1843, file: !100, line: 876, column: 7)
!1871 = !DILocation(line: 876, column: 7, scope: !1843)
!1872 = !DILocation(line: 877, column: 5, scope: !1870)
!1873 = !DILocation(line: 879, column: 7, scope: !1855)
!1874 = !DILocation(line: 879, column: 14, scope: !1855)
!1875 = !DILocation(line: 879, column: 7, scope: !1843)
!1876 = !DILocation(line: 881, column: 31, scope: !1854)
!1877 = !DILocation(line: 883, column: 67, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1854, file: !100, line: 883, column: 11)
!1879 = !DILocation(line: 883, column: 11, scope: !1854)
!1880 = !DILocation(line: 884, column: 9, scope: !1878)
!1881 = !DILocation(line: 886, column: 32, scope: !1854)
!1882 = !DILocation(line: 886, column: 61, scope: !1854)
!1883 = !DILocation(line: 886, column: 58, scope: !1854)
!1884 = !DILocation(line: 886, column: 66, scope: !1854)
!1885 = !DILocation(line: 886, column: 22, scope: !1854)
!1886 = !DILocation(line: 886, column: 15, scope: !1854)
!1887 = !DILocation(line: 887, column: 11, scope: !1854)
!1888 = !DILocation(line: 888, column: 15, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1854, file: !100, line: 887, column: 11)
!1890 = !{i64 0, i64 8, !1790, i64 8, i64 8, !583}
!1891 = !DILocation(line: 888, column: 9, scope: !1889)
!1892 = !DILocation(line: 889, column: 20, scope: !1854)
!1893 = !DILocation(line: 889, column: 18, scope: !1854)
!1894 = !DILocation(line: 889, column: 7, scope: !1854)
!1895 = !DILocation(line: 889, column: 38, scope: !1854)
!1896 = !DILocation(line: 889, column: 31, scope: !1854)
!1897 = !DILocation(line: 889, column: 48, scope: !1854)
!1898 = !DILocation(line: 890, column: 14, scope: !1854)
!1899 = !DILocation(line: 891, column: 5, scope: !1854)
!1900 = !DILocation(line: 894, column: 19, scope: !1857)
!1901 = !DILocation(line: 894, column: 25, scope: !1857)
!1902 = !DILocation(line: 894, column: 12, scope: !1857)
!1903 = !DILocation(line: 895, column: 23, scope: !1857)
!1904 = !DILocation(line: 895, column: 11, scope: !1857)
!1905 = !DILocation(line: 897, column: 26, scope: !1857)
!1906 = !DILocation(line: 897, column: 32, scope: !1857)
!1907 = !DILocation(line: 897, column: 9, scope: !1857)
!1908 = !DILocation(line: 899, column: 55, scope: !1857)
!1909 = !DILocation(line: 900, column: 46, scope: !1857)
!1910 = !DILocation(line: 901, column: 55, scope: !1857)
!1911 = !DILocation(line: 902, column: 55, scope: !1857)
!1912 = !DILocation(line: 898, column: 20, scope: !1857)
!1913 = !DILocation(line: 898, column: 12, scope: !1857)
!1914 = !DILocation(line: 904, column: 14, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1857, file: !100, line: 904, column: 9)
!1916 = !DILocation(line: 904, column: 9, scope: !1857)
!1917 = !DILocation(line: 906, column: 35, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !100, line: 905, column: 7)
!1919 = !DILocation(line: 906, column: 20, scope: !1918)
!1920 = !DILocation(line: 907, column: 17, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1918, file: !100, line: 907, column: 13)
!1922 = !DILocation(line: 907, column: 13, scope: !1918)
!1923 = !DILocation(line: 908, column: 11, scope: !1921)
!1924 = !DILocation(line: 220, column: 20, scope: !1745, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 909, column: 27, scope: !1918)
!1926 = !DILocation(line: 222, column: 10, scope: !1745, inlinedAt: !1925)
!1927 = !DILocation(line: 909, column: 19, scope: !1918)
!1928 = !DILocation(line: 910, column: 69, scope: !1918)
!1929 = !DILocation(line: 912, column: 44, scope: !1918)
!1930 = !DILocation(line: 913, column: 44, scope: !1918)
!1931 = !DILocation(line: 910, column: 9, scope: !1918)
!1932 = !DILocation(line: 914, column: 7, scope: !1918)
!1933 = !DILocation(line: 916, column: 11, scope: !1857)
!1934 = !DILocation(line: 917, column: 5, scope: !1857)
!1935 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !1936, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!50, !25, !6, !94}
!1938 = !{!1939, !1940, !1941}
!1939 = !DILocalVariable(name: "n", arg: 1, scope: !1935, file: !100, line: 928, type: !25)
!1940 = !DILocalVariable(name: "arg", arg: 2, scope: !1935, file: !100, line: 928, type: !6)
!1941 = !DILocalVariable(name: "argsize", arg: 3, scope: !1935, file: !100, line: 928, type: !94)
!1942 = !DILocation(line: 928, column: 21, scope: !1935)
!1943 = !DILocation(line: 928, column: 36, scope: !1935)
!1944 = !DILocation(line: 928, column: 48, scope: !1935)
!1945 = !DILocation(line: 930, column: 10, scope: !1935)
!1946 = !DILocation(line: 930, column: 3, scope: !1935)
!1947 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !1948, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!50, !6}
!1950 = !{!1951}
!1951 = !DILocalVariable(name: "arg", arg: 1, scope: !1947, file: !100, line: 934, type: !6)
!1952 = !DILocation(line: 934, column: 23, scope: !1947)
!1953 = !DILocation(line: 922, column: 17, scope: !1833, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 936, column: 10, scope: !1947)
!1955 = !DILocation(line: 922, column: 32, scope: !1833, inlinedAt: !1954)
!1956 = !DILocation(line: 924, column: 10, scope: !1833, inlinedAt: !1954)
!1957 = !DILocation(line: 936, column: 3, scope: !1947)
!1958 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !1959, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1961)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!50, !6, !94}
!1961 = !{!1962, !1963}
!1962 = !DILocalVariable(name: "arg", arg: 1, scope: !1958, file: !100, line: 940, type: !6)
!1963 = !DILocalVariable(name: "argsize", arg: 2, scope: !1958, file: !100, line: 940, type: !94)
!1964 = !DILocation(line: 940, column: 27, scope: !1958)
!1965 = !DILocation(line: 940, column: 39, scope: !1958)
!1966 = !DILocation(line: 928, column: 21, scope: !1935, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 942, column: 10, scope: !1958)
!1968 = !DILocation(line: 928, column: 36, scope: !1935, inlinedAt: !1967)
!1969 = !DILocation(line: 928, column: 48, scope: !1935, inlinedAt: !1967)
!1970 = !DILocation(line: 930, column: 10, scope: !1935, inlinedAt: !1967)
!1971 = !DILocation(line: 942, column: 3, scope: !1958)
!1972 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !1973, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1975)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!50, !25, !58, !6}
!1975 = !{!1976, !1977, !1978, !1979}
!1976 = !DILocalVariable(name: "n", arg: 1, scope: !1972, file: !100, line: 946, type: !25)
!1977 = !DILocalVariable(name: "s", arg: 2, scope: !1972, file: !100, line: 946, type: !58)
!1978 = !DILocalVariable(name: "arg", arg: 3, scope: !1972, file: !100, line: 946, type: !6)
!1979 = !DILocalVariable(name: "o", scope: !1972, file: !100, line: 948, type: !827)
!1980 = !DILocalVariable(name: "o", scope: !1981, file: !100, line: 187, type: !107)
!1981 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !1982, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!107, !58}
!1984 = !{!1985, !1980}
!1985 = !DILocalVariable(name: "style", arg: 1, scope: !1981, file: !100, line: 185, type: !58)
!1986 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!1987 = !DILocation(line: 187, column: 26, scope: !1981, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 948, column: 36, scope: !1972)
!1989 = !DILocation(line: 946, column: 23, scope: !1972)
!1990 = !DILocation(line: 946, column: 45, scope: !1972)
!1991 = !DILocation(line: 946, column: 60, scope: !1972)
!1992 = !DILocation(line: 948, column: 3, scope: !1972)
!1993 = !DILocation(line: 948, column: 32, scope: !1972)
!1994 = !DILocation(line: 185, column: 48, scope: !1981, inlinedAt: !1988)
!1995 = !DILocation(line: 187, column: 3, scope: !1981, inlinedAt: !1988)
!1996 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!1997 = !DILocation(line: 188, column: 13, scope: !1998, inlinedAt: !1988)
!1998 = distinct !DILexicalBlock(scope: !1981, file: !100, line: 188, column: 7)
!1999 = !DILocation(line: 188, column: 7, scope: !1981, inlinedAt: !1988)
!2000 = !DILocation(line: 189, column: 5, scope: !1998, inlinedAt: !1988)
!2001 = !{!2002}
!2002 = distinct !{!2002, !2003, !"quoting_options_from_style: argument 0"}
!2003 = distinct !{!2003, !"quoting_options_from_style"}
!2004 = !DILocation(line: 191, column: 10, scope: !1981, inlinedAt: !1988)
!2005 = !DILocation(line: 192, column: 1, scope: !1981, inlinedAt: !1988)
!2006 = !DILocation(line: 949, column: 10, scope: !1972)
!2007 = !DILocation(line: 950, column: 1, scope: !1972)
!2008 = !DILocation(line: 949, column: 3, scope: !1972)
!2009 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2010, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!50, !25, !58, !6, !94}
!2012 = !{!2013, !2014, !2015, !2016, !2017}
!2013 = !DILocalVariable(name: "n", arg: 1, scope: !2009, file: !100, line: 953, type: !25)
!2014 = !DILocalVariable(name: "s", arg: 2, scope: !2009, file: !100, line: 953, type: !58)
!2015 = !DILocalVariable(name: "arg", arg: 3, scope: !2009, file: !100, line: 954, type: !6)
!2016 = !DILocalVariable(name: "argsize", arg: 4, scope: !2009, file: !100, line: 954, type: !94)
!2017 = !DILocalVariable(name: "o", scope: !2009, file: !100, line: 956, type: !827)
!2018 = !DILocation(line: 187, column: 26, scope: !1981, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 956, column: 36, scope: !2009)
!2020 = !DILocation(line: 953, column: 27, scope: !2009)
!2021 = !DILocation(line: 953, column: 49, scope: !2009)
!2022 = !DILocation(line: 954, column: 35, scope: !2009)
!2023 = !DILocation(line: 954, column: 47, scope: !2009)
!2024 = !DILocation(line: 956, column: 3, scope: !2009)
!2025 = !DILocation(line: 956, column: 32, scope: !2009)
!2026 = !DILocation(line: 185, column: 48, scope: !1981, inlinedAt: !2019)
!2027 = !DILocation(line: 187, column: 3, scope: !1981, inlinedAt: !2019)
!2028 = !DILocation(line: 188, column: 13, scope: !1998, inlinedAt: !2019)
!2029 = !DILocation(line: 188, column: 7, scope: !1981, inlinedAt: !2019)
!2030 = !DILocation(line: 189, column: 5, scope: !1998, inlinedAt: !2019)
!2031 = !{!2032}
!2032 = distinct !{!2032, !2033, !"quoting_options_from_style: argument 0"}
!2033 = distinct !{!2033, !"quoting_options_from_style"}
!2034 = !DILocation(line: 191, column: 10, scope: !1981, inlinedAt: !2019)
!2035 = !DILocation(line: 192, column: 1, scope: !1981, inlinedAt: !2019)
!2036 = !DILocation(line: 957, column: 10, scope: !2009)
!2037 = !DILocation(line: 958, column: 1, scope: !2009)
!2038 = !DILocation(line: 957, column: 3, scope: !2009)
!2039 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2040, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!50, !58, !6}
!2042 = !{!2043, !2044}
!2043 = !DILocalVariable(name: "s", arg: 1, scope: !2039, file: !100, line: 961, type: !58)
!2044 = !DILocalVariable(name: "arg", arg: 2, scope: !2039, file: !100, line: 961, type: !6)
!2045 = !DILocation(line: 187, column: 26, scope: !1981, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 948, column: 36, scope: !1972, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 963, column: 10, scope: !2039)
!2048 = !DILocation(line: 961, column: 36, scope: !2039)
!2049 = !DILocation(line: 961, column: 51, scope: !2039)
!2050 = !DILocation(line: 946, column: 23, scope: !1972, inlinedAt: !2047)
!2051 = !DILocation(line: 946, column: 45, scope: !1972, inlinedAt: !2047)
!2052 = !DILocation(line: 946, column: 60, scope: !1972, inlinedAt: !2047)
!2053 = !DILocation(line: 948, column: 3, scope: !1972, inlinedAt: !2047)
!2054 = !DILocation(line: 948, column: 32, scope: !1972, inlinedAt: !2047)
!2055 = !DILocation(line: 185, column: 48, scope: !1981, inlinedAt: !2046)
!2056 = !DILocation(line: 187, column: 3, scope: !1981, inlinedAt: !2046)
!2057 = !DILocation(line: 188, column: 13, scope: !1998, inlinedAt: !2046)
!2058 = !DILocation(line: 188, column: 7, scope: !1981, inlinedAt: !2046)
!2059 = !DILocation(line: 189, column: 5, scope: !1998, inlinedAt: !2046)
!2060 = !{!2061}
!2061 = distinct !{!2061, !2062, !"quoting_options_from_style: argument 0"}
!2062 = distinct !{!2062, !"quoting_options_from_style"}
!2063 = !DILocation(line: 191, column: 10, scope: !1981, inlinedAt: !2046)
!2064 = !DILocation(line: 192, column: 1, scope: !1981, inlinedAt: !2046)
!2065 = !DILocation(line: 949, column: 10, scope: !1972, inlinedAt: !2047)
!2066 = !DILocation(line: 950, column: 1, scope: !1972, inlinedAt: !2047)
!2067 = !DILocation(line: 963, column: 3, scope: !2039)
!2068 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2069, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2071)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!50, !58, !6, !94}
!2071 = !{!2072, !2073, !2074}
!2072 = !DILocalVariable(name: "s", arg: 1, scope: !2068, file: !100, line: 967, type: !58)
!2073 = !DILocalVariable(name: "arg", arg: 2, scope: !2068, file: !100, line: 967, type: !6)
!2074 = !DILocalVariable(name: "argsize", arg: 3, scope: !2068, file: !100, line: 967, type: !94)
!2075 = !DILocation(line: 187, column: 26, scope: !1981, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 956, column: 36, scope: !2009, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 969, column: 10, scope: !2068)
!2078 = !DILocation(line: 967, column: 40, scope: !2068)
!2079 = !DILocation(line: 967, column: 55, scope: !2068)
!2080 = !DILocation(line: 967, column: 67, scope: !2068)
!2081 = !DILocation(line: 953, column: 27, scope: !2009, inlinedAt: !2077)
!2082 = !DILocation(line: 953, column: 49, scope: !2009, inlinedAt: !2077)
!2083 = !DILocation(line: 954, column: 35, scope: !2009, inlinedAt: !2077)
!2084 = !DILocation(line: 954, column: 47, scope: !2009, inlinedAt: !2077)
!2085 = !DILocation(line: 956, column: 3, scope: !2009, inlinedAt: !2077)
!2086 = !DILocation(line: 956, column: 32, scope: !2009, inlinedAt: !2077)
!2087 = !DILocation(line: 185, column: 48, scope: !1981, inlinedAt: !2076)
!2088 = !DILocation(line: 187, column: 3, scope: !1981, inlinedAt: !2076)
!2089 = !DILocation(line: 188, column: 13, scope: !1998, inlinedAt: !2076)
!2090 = !DILocation(line: 188, column: 7, scope: !1981, inlinedAt: !2076)
!2091 = !DILocation(line: 189, column: 5, scope: !1998, inlinedAt: !2076)
!2092 = !{!2093}
!2093 = distinct !{!2093, !2094, !"quoting_options_from_style: argument 0"}
!2094 = distinct !{!2094, !"quoting_options_from_style"}
!2095 = !DILocation(line: 191, column: 10, scope: !1981, inlinedAt: !2076)
!2096 = !DILocation(line: 192, column: 1, scope: !1981, inlinedAt: !2076)
!2097 = !DILocation(line: 957, column: 10, scope: !2009, inlinedAt: !2077)
!2098 = !DILocation(line: 958, column: 1, scope: !2009, inlinedAt: !2077)
!2099 = !DILocation(line: 969, column: 3, scope: !2068)
!2100 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2101, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!50, !6, !94, !8}
!2103 = !{!2104, !2105, !2106, !2107}
!2104 = !DILocalVariable(name: "arg", arg: 1, scope: !2100, file: !100, line: 973, type: !6)
!2105 = !DILocalVariable(name: "argsize", arg: 2, scope: !2100, file: !100, line: 973, type: !94)
!2106 = !DILocalVariable(name: "ch", arg: 3, scope: !2100, file: !100, line: 973, type: !8)
!2107 = !DILocalVariable(name: "options", scope: !2100, file: !100, line: 975, type: !107)
!2108 = !DILocation(line: 973, column: 32, scope: !2100)
!2109 = !DILocation(line: 973, column: 44, scope: !2100)
!2110 = !DILocation(line: 973, column: 58, scope: !2100)
!2111 = !DILocation(line: 975, column: 3, scope: !2100)
!2112 = !DILocation(line: 976, column: 13, scope: !2100)
!2113 = !{i64 0, i64 4, !1054, i64 4, i64 4, !632, i64 8, i64 32, !1054, i64 40, i64 8, !583, i64 48, i64 8, !583}
!2114 = !DILocation(line: 975, column: 26, scope: !2100)
!2115 = !DILocation(line: 144, column: 43, scope: !848, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 977, column: 3, scope: !2100)
!2117 = !DILocation(line: 144, column: 51, scope: !848, inlinedAt: !2116)
!2118 = !DILocation(line: 144, column: 58, scope: !848, inlinedAt: !2116)
!2119 = !DILocation(line: 146, column: 17, scope: !848, inlinedAt: !2116)
!2120 = !DILocation(line: 148, column: 62, scope: !848, inlinedAt: !2116)
!2121 = !DILocation(line: 148, column: 57, scope: !848, inlinedAt: !2116)
!2122 = !DILocation(line: 147, column: 17, scope: !848, inlinedAt: !2116)
!2123 = !DILocation(line: 149, column: 18, scope: !848, inlinedAt: !2116)
!2124 = !DILocation(line: 149, column: 15, scope: !848, inlinedAt: !2116)
!2125 = !DILocation(line: 149, column: 7, scope: !848, inlinedAt: !2116)
!2126 = !DILocation(line: 150, column: 12, scope: !848, inlinedAt: !2116)
!2127 = !DILocation(line: 150, column: 15, scope: !848, inlinedAt: !2116)
!2128 = !DILocation(line: 150, column: 25, scope: !848, inlinedAt: !2116)
!2129 = !DILocation(line: 150, column: 7, scope: !848, inlinedAt: !2116)
!2130 = !DILocation(line: 151, column: 18, scope: !848, inlinedAt: !2116)
!2131 = !DILocation(line: 151, column: 23, scope: !848, inlinedAt: !2116)
!2132 = !DILocation(line: 151, column: 6, scope: !848, inlinedAt: !2116)
!2133 = !DILocation(line: 978, column: 10, scope: !2100)
!2134 = !DILocation(line: 979, column: 1, scope: !2100)
!2135 = !DILocation(line: 978, column: 3, scope: !2100)
!2136 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2137, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!50, !6, !8}
!2139 = !{!2140, !2141}
!2140 = !DILocalVariable(name: "arg", arg: 1, scope: !2136, file: !100, line: 982, type: !6)
!2141 = !DILocalVariable(name: "ch", arg: 2, scope: !2136, file: !100, line: 982, type: !8)
!2142 = !DILocation(line: 982, column: 28, scope: !2136)
!2143 = !DILocation(line: 982, column: 38, scope: !2136)
!2144 = !DILocation(line: 973, column: 32, scope: !2100, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 984, column: 10, scope: !2136)
!2146 = !DILocation(line: 973, column: 44, scope: !2100, inlinedAt: !2145)
!2147 = !DILocation(line: 973, column: 58, scope: !2100, inlinedAt: !2145)
!2148 = !DILocation(line: 975, column: 3, scope: !2100, inlinedAt: !2145)
!2149 = !DILocation(line: 976, column: 13, scope: !2100, inlinedAt: !2145)
!2150 = !DILocation(line: 975, column: 26, scope: !2100, inlinedAt: !2145)
!2151 = !DILocation(line: 144, column: 43, scope: !848, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 977, column: 3, scope: !2100, inlinedAt: !2145)
!2153 = !DILocation(line: 144, column: 51, scope: !848, inlinedAt: !2152)
!2154 = !DILocation(line: 144, column: 58, scope: !848, inlinedAt: !2152)
!2155 = !DILocation(line: 146, column: 17, scope: !848, inlinedAt: !2152)
!2156 = !DILocation(line: 148, column: 62, scope: !848, inlinedAt: !2152)
!2157 = !DILocation(line: 148, column: 57, scope: !848, inlinedAt: !2152)
!2158 = !DILocation(line: 147, column: 17, scope: !848, inlinedAt: !2152)
!2159 = !DILocation(line: 149, column: 18, scope: !848, inlinedAt: !2152)
!2160 = !DILocation(line: 149, column: 15, scope: !848, inlinedAt: !2152)
!2161 = !DILocation(line: 149, column: 7, scope: !848, inlinedAt: !2152)
!2162 = !DILocation(line: 150, column: 12, scope: !848, inlinedAt: !2152)
!2163 = !DILocation(line: 150, column: 15, scope: !848, inlinedAt: !2152)
!2164 = !DILocation(line: 150, column: 25, scope: !848, inlinedAt: !2152)
!2165 = !DILocation(line: 150, column: 7, scope: !848, inlinedAt: !2152)
!2166 = !DILocation(line: 151, column: 18, scope: !848, inlinedAt: !2152)
!2167 = !DILocation(line: 151, column: 23, scope: !848, inlinedAt: !2152)
!2168 = !DILocation(line: 151, column: 6, scope: !848, inlinedAt: !2152)
!2169 = !DILocation(line: 978, column: 10, scope: !2100, inlinedAt: !2145)
!2170 = !DILocation(line: 979, column: 1, scope: !2100, inlinedAt: !2145)
!2171 = !DILocation(line: 984, column: 3, scope: !2136)
!2172 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !1948, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2173)
!2173 = !{!2174}
!2174 = !DILocalVariable(name: "arg", arg: 1, scope: !2172, file: !100, line: 988, type: !6)
!2175 = !DILocation(line: 988, column: 29, scope: !2172)
!2176 = !DILocation(line: 982, column: 28, scope: !2136, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 990, column: 10, scope: !2172)
!2178 = !DILocation(line: 982, column: 38, scope: !2136, inlinedAt: !2177)
!2179 = !DILocation(line: 973, column: 32, scope: !2100, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 984, column: 10, scope: !2136, inlinedAt: !2177)
!2181 = !DILocation(line: 973, column: 44, scope: !2100, inlinedAt: !2180)
!2182 = !DILocation(line: 973, column: 58, scope: !2100, inlinedAt: !2180)
!2183 = !DILocation(line: 975, column: 3, scope: !2100, inlinedAt: !2180)
!2184 = !DILocation(line: 976, column: 13, scope: !2100, inlinedAt: !2180)
!2185 = !DILocation(line: 975, column: 26, scope: !2100, inlinedAt: !2180)
!2186 = !DILocation(line: 144, column: 43, scope: !848, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 977, column: 3, scope: !2100, inlinedAt: !2180)
!2188 = !DILocation(line: 144, column: 51, scope: !848, inlinedAt: !2187)
!2189 = !DILocation(line: 144, column: 58, scope: !848, inlinedAt: !2187)
!2190 = !DILocation(line: 146, column: 17, scope: !848, inlinedAt: !2187)
!2191 = !DILocation(line: 148, column: 57, scope: !848, inlinedAt: !2187)
!2192 = !DILocation(line: 147, column: 17, scope: !848, inlinedAt: !2187)
!2193 = !DILocation(line: 149, column: 7, scope: !848, inlinedAt: !2187)
!2194 = !DILocation(line: 150, column: 12, scope: !848, inlinedAt: !2187)
!2195 = !DILocation(line: 151, column: 6, scope: !848, inlinedAt: !2187)
!2196 = !DILocation(line: 978, column: 10, scope: !2100, inlinedAt: !2180)
!2197 = !DILocation(line: 979, column: 1, scope: !2100, inlinedAt: !2180)
!2198 = !DILocation(line: 990, column: 3, scope: !2172)
!2199 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !1959, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2200)
!2200 = !{!2201, !2202}
!2201 = !DILocalVariable(name: "arg", arg: 1, scope: !2199, file: !100, line: 994, type: !6)
!2202 = !DILocalVariable(name: "argsize", arg: 2, scope: !2199, file: !100, line: 994, type: !94)
!2203 = !DILocation(line: 994, column: 33, scope: !2199)
!2204 = !DILocation(line: 994, column: 45, scope: !2199)
!2205 = !DILocation(line: 973, column: 32, scope: !2100, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 996, column: 10, scope: !2199)
!2207 = !DILocation(line: 973, column: 44, scope: !2100, inlinedAt: !2206)
!2208 = !DILocation(line: 973, column: 58, scope: !2100, inlinedAt: !2206)
!2209 = !DILocation(line: 975, column: 3, scope: !2100, inlinedAt: !2206)
!2210 = !DILocation(line: 976, column: 13, scope: !2100, inlinedAt: !2206)
!2211 = !DILocation(line: 975, column: 26, scope: !2100, inlinedAt: !2206)
!2212 = !DILocation(line: 144, column: 43, scope: !848, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 977, column: 3, scope: !2100, inlinedAt: !2206)
!2214 = !DILocation(line: 144, column: 51, scope: !848, inlinedAt: !2213)
!2215 = !DILocation(line: 144, column: 58, scope: !848, inlinedAt: !2213)
!2216 = !DILocation(line: 146, column: 17, scope: !848, inlinedAt: !2213)
!2217 = !DILocation(line: 148, column: 57, scope: !848, inlinedAt: !2213)
!2218 = !DILocation(line: 147, column: 17, scope: !848, inlinedAt: !2213)
!2219 = !DILocation(line: 149, column: 7, scope: !848, inlinedAt: !2213)
!2220 = !DILocation(line: 150, column: 12, scope: !848, inlinedAt: !2213)
!2221 = !DILocation(line: 151, column: 6, scope: !848, inlinedAt: !2213)
!2222 = !DILocation(line: 978, column: 10, scope: !2100, inlinedAt: !2206)
!2223 = !DILocation(line: 979, column: 1, scope: !2100, inlinedAt: !2206)
!2224 = !DILocation(line: 996, column: 3, scope: !2199)
!2225 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !1973, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2226)
!2226 = !{!2227, !2228, !2229, !2230}
!2227 = !DILocalVariable(name: "n", arg: 1, scope: !2225, file: !100, line: 1000, type: !25)
!2228 = !DILocalVariable(name: "s", arg: 2, scope: !2225, file: !100, line: 1000, type: !58)
!2229 = !DILocalVariable(name: "arg", arg: 3, scope: !2225, file: !100, line: 1000, type: !6)
!2230 = !DILocalVariable(name: "options", scope: !2225, file: !100, line: 1002, type: !107)
!2231 = !DILocation(line: 187, column: 26, scope: !1981, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 1003, column: 13, scope: !2225)
!2233 = !DILocation(line: 1000, column: 29, scope: !2225)
!2234 = !DILocation(line: 1000, column: 51, scope: !2225)
!2235 = !DILocation(line: 1000, column: 66, scope: !2225)
!2236 = !DILocation(line: 1002, column: 3, scope: !2225)
!2237 = !DILocation(line: 185, column: 48, scope: !1981, inlinedAt: !2232)
!2238 = !DILocation(line: 187, column: 3, scope: !1981, inlinedAt: !2232)
!2239 = !DILocation(line: 188, column: 13, scope: !1998, inlinedAt: !2232)
!2240 = !DILocation(line: 188, column: 7, scope: !1981, inlinedAt: !2232)
!2241 = !DILocation(line: 189, column: 5, scope: !1998, inlinedAt: !2232)
!2242 = !{!2243}
!2243 = distinct !{!2243, !2244, !"quoting_options_from_style: argument 0"}
!2244 = distinct !{!2244, !"quoting_options_from_style"}
!2245 = !DILocation(line: 191, column: 10, scope: !1981, inlinedAt: !2232)
!2246 = !DILocation(line: 192, column: 1, scope: !1981, inlinedAt: !2232)
!2247 = !DILocation(line: 1003, column: 13, scope: !2225)
!2248 = !DILocation(line: 1002, column: 26, scope: !2225)
!2249 = !DILocation(line: 144, column: 43, scope: !848, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 1004, column: 3, scope: !2225)
!2251 = !DILocation(line: 144, column: 51, scope: !848, inlinedAt: !2250)
!2252 = !DILocation(line: 144, column: 58, scope: !848, inlinedAt: !2250)
!2253 = !DILocation(line: 146, column: 17, scope: !848, inlinedAt: !2250)
!2254 = !DILocation(line: 148, column: 57, scope: !848, inlinedAt: !2250)
!2255 = !DILocation(line: 147, column: 17, scope: !848, inlinedAt: !2250)
!2256 = !DILocation(line: 149, column: 7, scope: !848, inlinedAt: !2250)
!2257 = !DILocation(line: 150, column: 12, scope: !848, inlinedAt: !2250)
!2258 = !DILocation(line: 151, column: 6, scope: !848, inlinedAt: !2250)
!2259 = !DILocation(line: 1005, column: 10, scope: !2225)
!2260 = !DILocation(line: 1006, column: 1, scope: !2225)
!2261 = !DILocation(line: 1005, column: 3, scope: !2225)
!2262 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2263, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!50, !25, !6, !6, !6}
!2265 = !{!2266, !2267, !2268, !2269}
!2266 = !DILocalVariable(name: "n", arg: 1, scope: !2262, file: !100, line: 1009, type: !25)
!2267 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2262, file: !100, line: 1009, type: !6)
!2268 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2262, file: !100, line: 1010, type: !6)
!2269 = !DILocalVariable(name: "arg", arg: 4, scope: !2262, file: !100, line: 1010, type: !6)
!2270 = !DILocation(line: 1009, column: 24, scope: !2262)
!2271 = !DILocation(line: 1009, column: 39, scope: !2262)
!2272 = !DILocation(line: 1010, column: 32, scope: !2262)
!2273 = !DILocation(line: 1010, column: 57, scope: !2262)
!2274 = !DILocalVariable(name: "n", arg: 1, scope: !2275, file: !100, line: 1017, type: !25)
!2275 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2276, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!50, !25, !6, !6, !6, !94}
!2278 = !{!2274, !2279, !2280, !2281, !2282, !2283}
!2279 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2275, file: !100, line: 1017, type: !6)
!2280 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2275, file: !100, line: 1018, type: !6)
!2281 = !DILocalVariable(name: "arg", arg: 4, scope: !2275, file: !100, line: 1019, type: !6)
!2282 = !DILocalVariable(name: "argsize", arg: 5, scope: !2275, file: !100, line: 1019, type: !94)
!2283 = !DILocalVariable(name: "o", scope: !2275, file: !100, line: 1021, type: !107)
!2284 = !DILocation(line: 1017, column: 28, scope: !2275, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 1012, column: 10, scope: !2262)
!2286 = !DILocation(line: 1017, column: 43, scope: !2275, inlinedAt: !2285)
!2287 = !DILocation(line: 1018, column: 36, scope: !2275, inlinedAt: !2285)
!2288 = !DILocation(line: 1019, column: 36, scope: !2275, inlinedAt: !2285)
!2289 = !DILocation(line: 1019, column: 48, scope: !2275, inlinedAt: !2285)
!2290 = !DILocation(line: 1021, column: 3, scope: !2275, inlinedAt: !2285)
!2291 = !DILocation(line: 1021, column: 30, scope: !2275, inlinedAt: !2285)
!2292 = !DILocation(line: 1021, column: 26, scope: !2275, inlinedAt: !2285)
!2293 = !DILocation(line: 171, column: 45, scope: !897, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 1022, column: 3, scope: !2275, inlinedAt: !2285)
!2295 = !DILocation(line: 172, column: 33, scope: !897, inlinedAt: !2294)
!2296 = !DILocation(line: 172, column: 57, scope: !897, inlinedAt: !2294)
!2297 = !DILocation(line: 176, column: 6, scope: !897, inlinedAt: !2294)
!2298 = !DILocation(line: 176, column: 12, scope: !897, inlinedAt: !2294)
!2299 = !DILocation(line: 177, column: 8, scope: !913, inlinedAt: !2294)
!2300 = !DILocation(line: 177, column: 23, scope: !913, inlinedAt: !2294)
!2301 = !DILocation(line: 177, column: 19, scope: !913, inlinedAt: !2294)
!2302 = !DILocation(line: 178, column: 5, scope: !913, inlinedAt: !2294)
!2303 = !DILocation(line: 179, column: 6, scope: !897, inlinedAt: !2294)
!2304 = !DILocation(line: 179, column: 17, scope: !897, inlinedAt: !2294)
!2305 = !DILocation(line: 180, column: 6, scope: !897, inlinedAt: !2294)
!2306 = !DILocation(line: 180, column: 18, scope: !897, inlinedAt: !2294)
!2307 = !DILocation(line: 1023, column: 10, scope: !2275, inlinedAt: !2285)
!2308 = !DILocation(line: 1024, column: 1, scope: !2275, inlinedAt: !2285)
!2309 = !DILocation(line: 1012, column: 3, scope: !2262)
!2310 = !DILocation(line: 1017, column: 28, scope: !2275)
!2311 = !DILocation(line: 1017, column: 43, scope: !2275)
!2312 = !DILocation(line: 1018, column: 36, scope: !2275)
!2313 = !DILocation(line: 1019, column: 36, scope: !2275)
!2314 = !DILocation(line: 1019, column: 48, scope: !2275)
!2315 = !DILocation(line: 1021, column: 3, scope: !2275)
!2316 = !DILocation(line: 1021, column: 30, scope: !2275)
!2317 = !DILocation(line: 1021, column: 26, scope: !2275)
!2318 = !DILocation(line: 171, column: 45, scope: !897, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 1022, column: 3, scope: !2275)
!2320 = !DILocation(line: 172, column: 33, scope: !897, inlinedAt: !2319)
!2321 = !DILocation(line: 172, column: 57, scope: !897, inlinedAt: !2319)
!2322 = !DILocation(line: 176, column: 6, scope: !897, inlinedAt: !2319)
!2323 = !DILocation(line: 176, column: 12, scope: !897, inlinedAt: !2319)
!2324 = !DILocation(line: 177, column: 8, scope: !913, inlinedAt: !2319)
!2325 = !DILocation(line: 177, column: 23, scope: !913, inlinedAt: !2319)
!2326 = !DILocation(line: 177, column: 19, scope: !913, inlinedAt: !2319)
!2327 = !DILocation(line: 178, column: 5, scope: !913, inlinedAt: !2319)
!2328 = !DILocation(line: 179, column: 6, scope: !897, inlinedAt: !2319)
!2329 = !DILocation(line: 179, column: 17, scope: !897, inlinedAt: !2319)
!2330 = !DILocation(line: 180, column: 6, scope: !897, inlinedAt: !2319)
!2331 = !DILocation(line: 180, column: 18, scope: !897, inlinedAt: !2319)
!2332 = !DILocation(line: 1023, column: 10, scope: !2275)
!2333 = !DILocation(line: 1024, column: 1, scope: !2275)
!2334 = !DILocation(line: 1023, column: 3, scope: !2275)
!2335 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2336, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!50, !6, !6, !6}
!2338 = !{!2339, !2340, !2341}
!2339 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2335, file: !100, line: 1027, type: !6)
!2340 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2335, file: !100, line: 1027, type: !6)
!2341 = !DILocalVariable(name: "arg", arg: 3, scope: !2335, file: !100, line: 1028, type: !6)
!2342 = !DILocation(line: 1027, column: 30, scope: !2335)
!2343 = !DILocation(line: 1027, column: 54, scope: !2335)
!2344 = !DILocation(line: 1028, column: 30, scope: !2335)
!2345 = !DILocation(line: 1009, column: 24, scope: !2262, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 1030, column: 10, scope: !2335)
!2347 = !DILocation(line: 1009, column: 39, scope: !2262, inlinedAt: !2346)
!2348 = !DILocation(line: 1010, column: 32, scope: !2262, inlinedAt: !2346)
!2349 = !DILocation(line: 1010, column: 57, scope: !2262, inlinedAt: !2346)
!2350 = !DILocation(line: 1017, column: 28, scope: !2275, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 1012, column: 10, scope: !2262, inlinedAt: !2346)
!2352 = !DILocation(line: 1017, column: 43, scope: !2275, inlinedAt: !2351)
!2353 = !DILocation(line: 1018, column: 36, scope: !2275, inlinedAt: !2351)
!2354 = !DILocation(line: 1019, column: 36, scope: !2275, inlinedAt: !2351)
!2355 = !DILocation(line: 1019, column: 48, scope: !2275, inlinedAt: !2351)
!2356 = !DILocation(line: 1021, column: 3, scope: !2275, inlinedAt: !2351)
!2357 = !DILocation(line: 1021, column: 30, scope: !2275, inlinedAt: !2351)
!2358 = !DILocation(line: 1021, column: 26, scope: !2275, inlinedAt: !2351)
!2359 = !DILocation(line: 171, column: 45, scope: !897, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 1022, column: 3, scope: !2275, inlinedAt: !2351)
!2361 = !DILocation(line: 172, column: 33, scope: !897, inlinedAt: !2360)
!2362 = !DILocation(line: 172, column: 57, scope: !897, inlinedAt: !2360)
!2363 = !DILocation(line: 176, column: 6, scope: !897, inlinedAt: !2360)
!2364 = !DILocation(line: 176, column: 12, scope: !897, inlinedAt: !2360)
!2365 = !DILocation(line: 177, column: 8, scope: !913, inlinedAt: !2360)
!2366 = !DILocation(line: 177, column: 23, scope: !913, inlinedAt: !2360)
!2367 = !DILocation(line: 177, column: 19, scope: !913, inlinedAt: !2360)
!2368 = !DILocation(line: 178, column: 5, scope: !913, inlinedAt: !2360)
!2369 = !DILocation(line: 179, column: 6, scope: !897, inlinedAt: !2360)
!2370 = !DILocation(line: 179, column: 17, scope: !897, inlinedAt: !2360)
!2371 = !DILocation(line: 180, column: 6, scope: !897, inlinedAt: !2360)
!2372 = !DILocation(line: 180, column: 18, scope: !897, inlinedAt: !2360)
!2373 = !DILocation(line: 1023, column: 10, scope: !2275, inlinedAt: !2351)
!2374 = !DILocation(line: 1024, column: 1, scope: !2275, inlinedAt: !2351)
!2375 = !DILocation(line: 1030, column: 3, scope: !2335)
!2376 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2377, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!50, !6, !6, !6, !94}
!2379 = !{!2380, !2381, !2382, !2383}
!2380 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2376, file: !100, line: 1034, type: !6)
!2381 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2376, file: !100, line: 1034, type: !6)
!2382 = !DILocalVariable(name: "arg", arg: 3, scope: !2376, file: !100, line: 1035, type: !6)
!2383 = !DILocalVariable(name: "argsize", arg: 4, scope: !2376, file: !100, line: 1035, type: !94)
!2384 = !DILocation(line: 1034, column: 34, scope: !2376)
!2385 = !DILocation(line: 1034, column: 58, scope: !2376)
!2386 = !DILocation(line: 1035, column: 34, scope: !2376)
!2387 = !DILocation(line: 1035, column: 46, scope: !2376)
!2388 = !DILocation(line: 1017, column: 28, scope: !2275, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 1037, column: 10, scope: !2376)
!2390 = !DILocation(line: 1017, column: 43, scope: !2275, inlinedAt: !2389)
!2391 = !DILocation(line: 1018, column: 36, scope: !2275, inlinedAt: !2389)
!2392 = !DILocation(line: 1019, column: 36, scope: !2275, inlinedAt: !2389)
!2393 = !DILocation(line: 1019, column: 48, scope: !2275, inlinedAt: !2389)
!2394 = !DILocation(line: 1021, column: 3, scope: !2275, inlinedAt: !2389)
!2395 = !DILocation(line: 1021, column: 30, scope: !2275, inlinedAt: !2389)
!2396 = !DILocation(line: 1021, column: 26, scope: !2275, inlinedAt: !2389)
!2397 = !DILocation(line: 171, column: 45, scope: !897, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 1022, column: 3, scope: !2275, inlinedAt: !2389)
!2399 = !DILocation(line: 172, column: 33, scope: !897, inlinedAt: !2398)
!2400 = !DILocation(line: 172, column: 57, scope: !897, inlinedAt: !2398)
!2401 = !DILocation(line: 176, column: 6, scope: !897, inlinedAt: !2398)
!2402 = !DILocation(line: 176, column: 12, scope: !897, inlinedAt: !2398)
!2403 = !DILocation(line: 177, column: 8, scope: !913, inlinedAt: !2398)
!2404 = !DILocation(line: 177, column: 23, scope: !913, inlinedAt: !2398)
!2405 = !DILocation(line: 177, column: 19, scope: !913, inlinedAt: !2398)
!2406 = !DILocation(line: 178, column: 5, scope: !913, inlinedAt: !2398)
!2407 = !DILocation(line: 179, column: 6, scope: !897, inlinedAt: !2398)
!2408 = !DILocation(line: 179, column: 17, scope: !897, inlinedAt: !2398)
!2409 = !DILocation(line: 180, column: 6, scope: !897, inlinedAt: !2398)
!2410 = !DILocation(line: 180, column: 18, scope: !897, inlinedAt: !2398)
!2411 = !DILocation(line: 1023, column: 10, scope: !2275, inlinedAt: !2389)
!2412 = !DILocation(line: 1024, column: 1, scope: !2275, inlinedAt: !2389)
!2413 = !DILocation(line: 1037, column: 3, scope: !2376)
!2414 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2415, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!6, !25, !6, !94}
!2417 = !{!2418, !2419, !2420}
!2418 = !DILocalVariable(name: "n", arg: 1, scope: !2414, file: !100, line: 1052, type: !25)
!2419 = !DILocalVariable(name: "arg", arg: 2, scope: !2414, file: !100, line: 1052, type: !6)
!2420 = !DILocalVariable(name: "argsize", arg: 3, scope: !2414, file: !100, line: 1052, type: !94)
!2421 = !DILocation(line: 1052, column: 18, scope: !2414)
!2422 = !DILocation(line: 1052, column: 33, scope: !2414)
!2423 = !DILocation(line: 1052, column: 45, scope: !2414)
!2424 = !DILocation(line: 1054, column: 10, scope: !2414)
!2425 = !DILocation(line: 1054, column: 3, scope: !2414)
!2426 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2427, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!6, !6, !94}
!2429 = !{!2430, !2431}
!2430 = !DILocalVariable(name: "arg", arg: 1, scope: !2426, file: !100, line: 1058, type: !6)
!2431 = !DILocalVariable(name: "argsize", arg: 2, scope: !2426, file: !100, line: 1058, type: !94)
!2432 = !DILocation(line: 1058, column: 24, scope: !2426)
!2433 = !DILocation(line: 1058, column: 36, scope: !2426)
!2434 = !DILocation(line: 1052, column: 18, scope: !2414, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 1060, column: 10, scope: !2426)
!2436 = !DILocation(line: 1052, column: 33, scope: !2414, inlinedAt: !2435)
!2437 = !DILocation(line: 1052, column: 45, scope: !2414, inlinedAt: !2435)
!2438 = !DILocation(line: 1054, column: 10, scope: !2414, inlinedAt: !2435)
!2439 = !DILocation(line: 1060, column: 3, scope: !2426)
!2440 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2441, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!6, !25, !6}
!2443 = !{!2444, !2445}
!2444 = !DILocalVariable(name: "n", arg: 1, scope: !2440, file: !100, line: 1064, type: !25)
!2445 = !DILocalVariable(name: "arg", arg: 2, scope: !2440, file: !100, line: 1064, type: !6)
!2446 = !DILocation(line: 1064, column: 14, scope: !2440)
!2447 = !DILocation(line: 1064, column: 29, scope: !2440)
!2448 = !DILocation(line: 1052, column: 18, scope: !2414, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 1066, column: 10, scope: !2440)
!2450 = !DILocation(line: 1052, column: 33, scope: !2414, inlinedAt: !2449)
!2451 = !DILocation(line: 1052, column: 45, scope: !2414, inlinedAt: !2449)
!2452 = !DILocation(line: 1054, column: 10, scope: !2414, inlinedAt: !2449)
!2453 = !DILocation(line: 1066, column: 3, scope: !2440)
!2454 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2455, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!6, !6}
!2457 = !{!2458}
!2458 = !DILocalVariable(name: "arg", arg: 1, scope: !2454, file: !100, line: 1070, type: !6)
!2459 = !DILocation(line: 1070, column: 20, scope: !2454)
!2460 = !DILocation(line: 1064, column: 14, scope: !2440, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 1072, column: 10, scope: !2454)
!2462 = !DILocation(line: 1064, column: 29, scope: !2440, inlinedAt: !2461)
!2463 = !DILocation(line: 1052, column: 18, scope: !2414, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 1066, column: 10, scope: !2440, inlinedAt: !2461)
!2465 = !DILocation(line: 1052, column: 33, scope: !2414, inlinedAt: !2464)
!2466 = !DILocation(line: 1052, column: 45, scope: !2414, inlinedAt: !2464)
!2467 = !DILocation(line: 1054, column: 10, scope: !2414, inlinedAt: !2464)
!2468 = !DILocation(line: 1072, column: 3, scope: !2454)
!2469 = distinct !DISubprogram(name: "version_etc_arn", scope: !527, file: !527, line: 62, type: !2470, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !2526)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2472, !6, !6, !6, !2525, !94}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2474, line: 7, baseType: !2475)
!2474 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2476, line: 241, size: 1728, elements: !2477)
!2476 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2477 = !{!2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2498, !2499, !2500, !2501, !2505, !2506, !2508, !2510, !2513, !2515, !2516, !2517, !2518, !2519, !2520, !2521}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2475, file: !2476, line: 242, baseType: !25, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2475, file: !2476, line: 247, baseType: !50, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2475, file: !2476, line: 248, baseType: !50, size: 64, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2475, file: !2476, line: 249, baseType: !50, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2475, file: !2476, line: 250, baseType: !50, size: 64, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2475, file: !2476, line: 251, baseType: !50, size: 64, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2475, file: !2476, line: 252, baseType: !50, size: 64, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2475, file: !2476, line: 253, baseType: !50, size: 64, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2475, file: !2476, line: 254, baseType: !50, size: 64, offset: 512)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2475, file: !2476, line: 256, baseType: !50, size: 64, offset: 576)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2475, file: !2476, line: 257, baseType: !50, size: 64, offset: 640)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2475, file: !2476, line: 258, baseType: !50, size: 64, offset: 704)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2475, file: !2476, line: 260, baseType: !2491, size: 64, offset: 768)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2476, line: 156, size: 192, elements: !2493)
!2493 = !{!2494, !2495, !2497}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2492, file: !2476, line: 157, baseType: !2491, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2492, file: !2476, line: 158, baseType: !2496, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2492, file: !2476, line: 162, baseType: !25, size: 32, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2475, file: !2476, line: 262, baseType: !2496, size: 64, offset: 832)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2475, file: !2476, line: 264, baseType: !25, size: 32, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2475, file: !2476, line: 268, baseType: !25, size: 32, offset: 928)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2475, file: !2476, line: 270, baseType: !2502, size: 64, offset: 960)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2503, line: 140, baseType: !2504)
!2503 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2504 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2475, file: !2476, line: 274, baseType: !93, size: 16, offset: 1024)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2475, file: !2476, line: 275, baseType: !2507, size: 8, offset: 1040)
!2507 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2475, file: !2476, line: 276, baseType: !2509, size: 8, offset: 1048)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !741)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2475, file: !2476, line: 280, baseType: !2511, size: 64, offset: 1088)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2476, line: 150, baseType: null)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2475, file: !2476, line: 289, baseType: !2514, size: 64, offset: 1152)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2503, line: 141, baseType: !2504)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2475, file: !2476, line: 297, baseType: !49, size: 64, offset: 1216)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2475, file: !2476, line: 298, baseType: !49, size: 64, offset: 1280)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2475, file: !2476, line: 299, baseType: !49, size: 64, offset: 1344)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2475, file: !2476, line: 300, baseType: !49, size: 64, offset: 1408)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2475, file: !2476, line: 302, baseType: !94, size: 64, offset: 1472)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2475, file: !2476, line: 303, baseType: !25, size: 32, offset: 1536)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2475, file: !2476, line: 305, baseType: !2522, size: 160, offset: 1568)
!2522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2523)
!2523 = !{!2524}
!2524 = !DISubrange(count: 20)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2526 = !{!2527, !2528, !2529, !2530, !2531, !2532}
!2527 = !DILocalVariable(name: "stream", arg: 1, scope: !2469, file: !527, line: 62, type: !2472)
!2528 = !DILocalVariable(name: "command_name", arg: 2, scope: !2469, file: !527, line: 63, type: !6)
!2529 = !DILocalVariable(name: "package", arg: 3, scope: !2469, file: !527, line: 63, type: !6)
!2530 = !DILocalVariable(name: "version", arg: 4, scope: !2469, file: !527, line: 64, type: !6)
!2531 = !DILocalVariable(name: "authors", arg: 5, scope: !2469, file: !527, line: 65, type: !2525)
!2532 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2469, file: !527, line: 65, type: !94)
!2533 = !DILocation(line: 62, column: 24, scope: !2469)
!2534 = !DILocation(line: 63, column: 30, scope: !2469)
!2535 = !DILocation(line: 63, column: 56, scope: !2469)
!2536 = !DILocation(line: 64, column: 30, scope: !2469)
!2537 = !DILocation(line: 65, column: 39, scope: !2469)
!2538 = !DILocation(line: 65, column: 55, scope: !2469)
!2539 = !DILocation(line: 67, column: 7, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2469, file: !527, line: 67, column: 7)
!2541 = !DILocation(line: 67, column: 7, scope: !2469)
!2542 = !DILocation(line: 68, column: 5, scope: !2540)
!2543 = !DILocation(line: 70, column: 5, scope: !2540)
!2544 = !DILocation(line: 84, column: 3, scope: !2469)
!2545 = !DILocation(line: 86, column: 3, scope: !2469)
!2546 = !DILocation(line: 95, column: 3, scope: !2469)
!2547 = !DILocation(line: 99, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2469, file: !527, line: 96, column: 5)
!2549 = !DILocation(line: 102, column: 7, scope: !2548)
!2550 = !DILocation(line: 103, column: 7, scope: !2548)
!2551 = !DILocation(line: 106, column: 7, scope: !2548)
!2552 = !DILocation(line: 107, column: 7, scope: !2548)
!2553 = !DILocation(line: 110, column: 7, scope: !2548)
!2554 = !DILocation(line: 112, column: 7, scope: !2548)
!2555 = !DILocation(line: 117, column: 7, scope: !2548)
!2556 = !DILocation(line: 119, column: 7, scope: !2548)
!2557 = !DILocation(line: 124, column: 7, scope: !2548)
!2558 = !DILocation(line: 126, column: 7, scope: !2548)
!2559 = !DILocation(line: 131, column: 7, scope: !2548)
!2560 = !DILocation(line: 134, column: 7, scope: !2548)
!2561 = !DILocation(line: 139, column: 7, scope: !2548)
!2562 = !DILocation(line: 142, column: 7, scope: !2548)
!2563 = !DILocation(line: 147, column: 7, scope: !2548)
!2564 = !DILocation(line: 151, column: 7, scope: !2548)
!2565 = !DILocation(line: 156, column: 7, scope: !2548)
!2566 = !DILocation(line: 160, column: 7, scope: !2548)
!2567 = !DILocation(line: 167, column: 7, scope: !2548)
!2568 = !DILocation(line: 171, column: 7, scope: !2548)
!2569 = !DILocation(line: 173, column: 1, scope: !2469)
!2570 = distinct !DISubprogram(name: "version_etc_ar", scope: !527, file: !527, line: 180, type: !2571, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{null, !2472, !6, !6, !6, !2525}
!2573 = !{!2574, !2575, !2576, !2577, !2578, !2579}
!2574 = !DILocalVariable(name: "stream", arg: 1, scope: !2570, file: !527, line: 180, type: !2472)
!2575 = !DILocalVariable(name: "command_name", arg: 2, scope: !2570, file: !527, line: 181, type: !6)
!2576 = !DILocalVariable(name: "package", arg: 3, scope: !2570, file: !527, line: 181, type: !6)
!2577 = !DILocalVariable(name: "version", arg: 4, scope: !2570, file: !527, line: 182, type: !6)
!2578 = !DILocalVariable(name: "authors", arg: 5, scope: !2570, file: !527, line: 182, type: !2525)
!2579 = !DILocalVariable(name: "n_authors", scope: !2570, file: !527, line: 184, type: !94)
!2580 = !DILocation(line: 180, column: 23, scope: !2570)
!2581 = !DILocation(line: 181, column: 29, scope: !2570)
!2582 = !DILocation(line: 181, column: 55, scope: !2570)
!2583 = !DILocation(line: 182, column: 29, scope: !2570)
!2584 = !DILocation(line: 182, column: 59, scope: !2570)
!2585 = !DILocation(line: 184, column: 10, scope: !2570)
!2586 = !DILocation(line: 186, column: 8, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2570, file: !527, line: 186, column: 3)
!2588 = !DILocation(line: 186, column: 23, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2587, file: !527, line: 186, column: 3)
!2590 = !DILocation(line: 186, column: 3, scope: !2587)
!2591 = !DILocation(line: 186, column: 52, scope: !2589)
!2592 = distinct !{!2592, !2590, !2593}
!2593 = !DILocation(line: 187, column: 5, scope: !2587)
!2594 = !DILocation(line: 188, column: 3, scope: !2570)
!2595 = !DILocation(line: 189, column: 1, scope: !2570)
!2596 = distinct !DISubprogram(name: "version_etc_va", scope: !527, file: !527, line: 196, type: !2597, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !2606)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !2472, !6, !6, !6, !2599}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !524, line: 189, size: 192, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2600, file: !524, line: 189, baseType: !113, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2600, file: !524, line: 189, baseType: !113, size: 32, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2600, file: !524, line: 189, baseType: !49, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2600, file: !524, line: 189, baseType: !49, size: 64, offset: 128)
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2607 = !DILocalVariable(name: "stream", arg: 1, scope: !2596, file: !527, line: 196, type: !2472)
!2608 = !DILocalVariable(name: "command_name", arg: 2, scope: !2596, file: !527, line: 197, type: !6)
!2609 = !DILocalVariable(name: "package", arg: 3, scope: !2596, file: !527, line: 197, type: !6)
!2610 = !DILocalVariable(name: "version", arg: 4, scope: !2596, file: !527, line: 198, type: !6)
!2611 = !DILocalVariable(name: "authors", arg: 5, scope: !2596, file: !527, line: 198, type: !2599)
!2612 = !DILocalVariable(name: "n_authors", scope: !2596, file: !527, line: 200, type: !94)
!2613 = !DILocalVariable(name: "authtab", scope: !2596, file: !527, line: 201, type: !2614)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2615 = !DILocation(line: 196, column: 23, scope: !2596)
!2616 = !DILocation(line: 197, column: 29, scope: !2596)
!2617 = !DILocation(line: 197, column: 55, scope: !2596)
!2618 = !DILocation(line: 198, column: 29, scope: !2596)
!2619 = !DILocation(line: 198, column: 46, scope: !2596)
!2620 = !DILocation(line: 201, column: 3, scope: !2596)
!2621 = !DILocation(line: 201, column: 15, scope: !2596)
!2622 = !DILocation(line: 200, column: 10, scope: !2596)
!2623 = !DILocation(line: 205, column: 35, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !527, line: 203, column: 3)
!2625 = distinct !DILexicalBlock(scope: !2596, file: !527, line: 203, column: 3)
!2626 = !DILocation(line: 205, column: 14, scope: !2624)
!2627 = !DILocation(line: 205, column: 33, scope: !2624)
!2628 = !DILocation(line: 205, column: 67, scope: !2624)
!2629 = !DILocation(line: 203, column: 3, scope: !2625)
!2630 = !DILocation(line: 208, column: 3, scope: !2596)
!2631 = !DILocation(line: 210, column: 1, scope: !2596)
!2632 = distinct !DISubprogram(name: "version_etc", scope: !527, file: !527, line: 227, type: !2633, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{null, !2472, !6, !6, !6, null}
!2635 = !{!2636, !2637, !2638, !2639, !2640}
!2636 = !DILocalVariable(name: "stream", arg: 1, scope: !2632, file: !527, line: 227, type: !2472)
!2637 = !DILocalVariable(name: "command_name", arg: 2, scope: !2632, file: !527, line: 228, type: !6)
!2638 = !DILocalVariable(name: "package", arg: 3, scope: !2632, file: !527, line: 228, type: !6)
!2639 = !DILocalVariable(name: "version", arg: 4, scope: !2632, file: !527, line: 229, type: !6)
!2640 = !DILocalVariable(name: "authors", scope: !2632, file: !527, line: 231, type: !2641)
!2641 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !730, line: 46, baseType: !2642)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !732, line: 48, baseType: !2643)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !524, line: 231, baseType: !2644)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2600, size: 192, elements: !741)
!2645 = !DILocation(line: 227, column: 20, scope: !2632)
!2646 = !DILocation(line: 228, column: 26, scope: !2632)
!2647 = !DILocation(line: 228, column: 52, scope: !2632)
!2648 = !DILocation(line: 229, column: 26, scope: !2632)
!2649 = !DILocation(line: 231, column: 3, scope: !2632)
!2650 = !DILocation(line: 231, column: 11, scope: !2632)
!2651 = !DILocation(line: 233, column: 3, scope: !2632)
!2652 = !DILocation(line: 234, column: 3, scope: !2632)
!2653 = !DILocation(line: 235, column: 3, scope: !2632)
!2654 = !DILocation(line: 236, column: 1, scope: !2632)
!2655 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !527, file: !527, line: 239, type: !676, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !4)
!2656 = !DILocation(line: 245, column: 3, scope: !2655)
!2657 = !DILocation(line: 251, column: 3, scope: !2655)
!2658 = !DILocation(line: 256, column: 3, scope: !2655)
!2659 = !DILocation(line: 258, column: 1, scope: !2655)
!2660 = distinct !DISubprogram(name: "xnmalloc", scope: !535, file: !535, line: 105, type: !2661, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!49, !94, !94}
!2663 = !{!2664, !2665}
!2664 = !DILocalVariable(name: "n", arg: 1, scope: !2660, file: !535, line: 105, type: !94)
!2665 = !DILocalVariable(name: "s", arg: 2, scope: !2660, file: !535, line: 105, type: !94)
!2666 = !DILocation(line: 105, column: 18, scope: !2660)
!2667 = !DILocation(line: 105, column: 28, scope: !2660)
!2668 = !DILocation(line: 107, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2660, file: !535, line: 107, column: 7)
!2670 = !DILocation(line: 107, column: 7, scope: !2660)
!2671 = !DILocation(line: 108, column: 5, scope: !2669)
!2672 = !DILocation(line: 109, column: 21, scope: !2660)
!2673 = !DILocalVariable(name: "n", arg: 1, scope: !2674, file: !2675, line: 39, type: !94)
!2674 = distinct !DISubprogram(name: "xmalloc", scope: !2675, file: !2675, line: 39, type: !2676, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2678)
!2675 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!49, !94}
!2678 = !{!2673, !2679}
!2679 = !DILocalVariable(name: "p", scope: !2674, file: !2675, line: 41, type: !49)
!2680 = !DILocation(line: 39, column: 17, scope: !2674, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 109, column: 10, scope: !2660)
!2682 = !DILocation(line: 41, column: 13, scope: !2674, inlinedAt: !2681)
!2683 = !DILocation(line: 41, column: 9, scope: !2674, inlinedAt: !2681)
!2684 = !DILocation(line: 42, column: 8, scope: !2685, inlinedAt: !2681)
!2685 = distinct !DILexicalBlock(scope: !2674, file: !2675, line: 42, column: 7)
!2686 = !DILocation(line: 42, column: 15, scope: !2685, inlinedAt: !2681)
!2687 = !DILocation(line: 42, column: 10, scope: !2685, inlinedAt: !2681)
!2688 = !DILocation(line: 43, column: 5, scope: !2685, inlinedAt: !2681)
!2689 = !DILocation(line: 109, column: 3, scope: !2660)
!2690 = !DILocation(line: 39, column: 17, scope: !2674)
!2691 = !DILocation(line: 41, column: 13, scope: !2674)
!2692 = !DILocation(line: 41, column: 9, scope: !2674)
!2693 = !DILocation(line: 42, column: 8, scope: !2685)
!2694 = !DILocation(line: 42, column: 15, scope: !2685)
!2695 = !DILocation(line: 42, column: 10, scope: !2685)
!2696 = !DILocation(line: 43, column: 5, scope: !2685)
!2697 = !DILocation(line: 44, column: 3, scope: !2674)
!2698 = distinct !DISubprogram(name: "xnrealloc", scope: !535, file: !535, line: 118, type: !2699, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!49, !49, !94, !94}
!2701 = !{!2702, !2703, !2704}
!2702 = !DILocalVariable(name: "p", arg: 1, scope: !2698, file: !535, line: 118, type: !49)
!2703 = !DILocalVariable(name: "n", arg: 2, scope: !2698, file: !535, line: 118, type: !94)
!2704 = !DILocalVariable(name: "s", arg: 3, scope: !2698, file: !535, line: 118, type: !94)
!2705 = !DILocation(line: 118, column: 18, scope: !2698)
!2706 = !DILocation(line: 118, column: 28, scope: !2698)
!2707 = !DILocation(line: 118, column: 38, scope: !2698)
!2708 = !DILocation(line: 120, column: 7, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2698, file: !535, line: 120, column: 7)
!2710 = !DILocation(line: 120, column: 7, scope: !2698)
!2711 = !DILocation(line: 121, column: 5, scope: !2709)
!2712 = !DILocation(line: 122, column: 25, scope: !2698)
!2713 = !DILocalVariable(name: "p", arg: 1, scope: !2714, file: !2675, line: 51, type: !49)
!2714 = distinct !DISubprogram(name: "xrealloc", scope: !2675, file: !2675, line: 51, type: !2715, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!49, !49, !94}
!2717 = !{!2713, !2718}
!2718 = !DILocalVariable(name: "n", arg: 2, scope: !2714, file: !2675, line: 51, type: !94)
!2719 = !DILocation(line: 51, column: 17, scope: !2714, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 122, column: 10, scope: !2698)
!2721 = !DILocation(line: 51, column: 27, scope: !2714, inlinedAt: !2720)
!2722 = !DILocation(line: 53, column: 8, scope: !2723, inlinedAt: !2720)
!2723 = distinct !DILexicalBlock(scope: !2714, file: !2675, line: 53, column: 7)
!2724 = !DILocation(line: 53, column: 13, scope: !2723, inlinedAt: !2720)
!2725 = !DILocation(line: 53, column: 10, scope: !2723, inlinedAt: !2720)
!2726 = !DILocation(line: 57, column: 7, scope: !2727, inlinedAt: !2720)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !2675, line: 54, column: 5)
!2728 = !DILocation(line: 58, column: 7, scope: !2727, inlinedAt: !2720)
!2729 = !DILocation(line: 61, column: 7, scope: !2714, inlinedAt: !2720)
!2730 = !DILocation(line: 62, column: 8, scope: !2731, inlinedAt: !2720)
!2731 = distinct !DILexicalBlock(scope: !2714, file: !2675, line: 62, column: 7)
!2732 = !DILocation(line: 62, column: 13, scope: !2731, inlinedAt: !2720)
!2733 = !DILocation(line: 62, column: 10, scope: !2731, inlinedAt: !2720)
!2734 = !DILocation(line: 63, column: 5, scope: !2731, inlinedAt: !2720)
!2735 = !DILocation(line: 122, column: 3, scope: !2698)
!2736 = !DILocation(line: 51, column: 17, scope: !2714)
!2737 = !DILocation(line: 51, column: 27, scope: !2714)
!2738 = !DILocation(line: 53, column: 8, scope: !2723)
!2739 = !DILocation(line: 53, column: 13, scope: !2723)
!2740 = !DILocation(line: 53, column: 10, scope: !2723)
!2741 = !DILocation(line: 57, column: 7, scope: !2727)
!2742 = !DILocation(line: 58, column: 7, scope: !2727)
!2743 = !DILocation(line: 61, column: 7, scope: !2714)
!2744 = !DILocation(line: 62, column: 8, scope: !2731)
!2745 = !DILocation(line: 62, column: 13, scope: !2731)
!2746 = !DILocation(line: 62, column: 10, scope: !2731)
!2747 = !DILocation(line: 63, column: 5, scope: !2731)
!2748 = !DILocation(line: 65, column: 1, scope: !2714)
!2749 = !DILocation(line: 180, column: 19, scope: !536)
!2750 = !DILocation(line: 180, column: 30, scope: !536)
!2751 = !DILocation(line: 180, column: 41, scope: !536)
!2752 = !DILocation(line: 182, column: 14, scope: !536)
!2753 = !DILocation(line: 182, column: 10, scope: !536)
!2754 = !DILocation(line: 184, column: 9, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !536, file: !535, line: 184, column: 7)
!2756 = !DILocation(line: 184, column: 7, scope: !536)
!2757 = !DILocation(line: 186, column: 13, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !535, line: 186, column: 11)
!2759 = distinct !DILexicalBlock(scope: !2755, file: !535, line: 185, column: 5)
!2760 = !DILocation(line: 186, column: 11, scope: !2759)
!2761 = !DILocation(line: 194, column: 30, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2758, file: !535, line: 187, column: 9)
!2763 = !DILocation(line: 195, column: 16, scope: !2762)
!2764 = !DILocation(line: 195, column: 13, scope: !2762)
!2765 = !DILocation(line: 196, column: 9, scope: !2762)
!2766 = !DILocation(line: 204, column: 69, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !535, line: 204, column: 11)
!2768 = distinct !DILexicalBlock(scope: !2755, file: !535, line: 199, column: 5)
!2769 = !DILocation(line: 205, column: 11, scope: !2767)
!2770 = !DILocation(line: 204, column: 11, scope: !2768)
!2771 = !DILocation(line: 206, column: 9, scope: !2767)
!2772 = !DILocation(line: 210, column: 7, scope: !536)
!2773 = !DILocation(line: 211, column: 25, scope: !536)
!2774 = !DILocation(line: 51, column: 17, scope: !2714, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 211, column: 10, scope: !536)
!2776 = !DILocation(line: 51, column: 27, scope: !2714, inlinedAt: !2775)
!2777 = !DILocation(line: 53, column: 10, scope: !2723, inlinedAt: !2775)
!2778 = !DILocation(line: 207, column: 14, scope: !2768)
!2779 = !DILocation(line: 207, column: 18, scope: !2768)
!2780 = !DILocation(line: 207, column: 9, scope: !2768)
!2781 = !DILocation(line: 53, column: 8, scope: !2723, inlinedAt: !2775)
!2782 = !DILocation(line: 57, column: 7, scope: !2727, inlinedAt: !2775)
!2783 = !DILocation(line: 58, column: 7, scope: !2727, inlinedAt: !2775)
!2784 = !DILocation(line: 61, column: 7, scope: !2714, inlinedAt: !2775)
!2785 = !DILocation(line: 62, column: 8, scope: !2731, inlinedAt: !2775)
!2786 = !DILocation(line: 62, column: 13, scope: !2731, inlinedAt: !2775)
!2787 = !DILocation(line: 62, column: 10, scope: !2731, inlinedAt: !2775)
!2788 = !DILocation(line: 63, column: 5, scope: !2731, inlinedAt: !2775)
!2789 = !DILocation(line: 211, column: 3, scope: !536)
!2790 = distinct !DISubprogram(name: "xcharalloc", scope: !535, file: !535, line: 220, type: !1746, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2791)
!2791 = !{!2792}
!2792 = !DILocalVariable(name: "n", arg: 1, scope: !2790, file: !535, line: 220, type: !94)
!2793 = !DILocation(line: 220, column: 20, scope: !2790)
!2794 = !DILocation(line: 39, column: 17, scope: !2674, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 222, column: 10, scope: !2790)
!2796 = !DILocation(line: 41, column: 13, scope: !2674, inlinedAt: !2795)
!2797 = !DILocation(line: 41, column: 9, scope: !2674, inlinedAt: !2795)
!2798 = !DILocation(line: 42, column: 8, scope: !2685, inlinedAt: !2795)
!2799 = !DILocation(line: 42, column: 15, scope: !2685, inlinedAt: !2795)
!2800 = !DILocation(line: 42, column: 10, scope: !2685, inlinedAt: !2795)
!2801 = !DILocation(line: 43, column: 5, scope: !2685, inlinedAt: !2795)
!2802 = !DILocation(line: 222, column: 3, scope: !2790)
!2803 = distinct !DISubprogram(name: "x2realloc", scope: !2675, file: !2675, line: 74, type: !2804, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!49, !49, !539}
!2806 = !{!2807, !2808}
!2807 = !DILocalVariable(name: "p", arg: 1, scope: !2803, file: !2675, line: 74, type: !49)
!2808 = !DILocalVariable(name: "pn", arg: 2, scope: !2803, file: !2675, line: 74, type: !539)
!2809 = !DILocation(line: 74, column: 18, scope: !2803)
!2810 = !DILocation(line: 74, column: 29, scope: !2803)
!2811 = !DILocation(line: 180, column: 19, scope: !536, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 76, column: 10, scope: !2803)
!2813 = !DILocation(line: 180, column: 30, scope: !536, inlinedAt: !2812)
!2814 = !DILocation(line: 180, column: 41, scope: !536, inlinedAt: !2812)
!2815 = !DILocation(line: 182, column: 14, scope: !536, inlinedAt: !2812)
!2816 = !DILocation(line: 182, column: 10, scope: !536, inlinedAt: !2812)
!2817 = !DILocation(line: 184, column: 9, scope: !2755, inlinedAt: !2812)
!2818 = !DILocation(line: 184, column: 7, scope: !536, inlinedAt: !2812)
!2819 = !DILocation(line: 186, column: 13, scope: !2758, inlinedAt: !2812)
!2820 = !DILocation(line: 186, column: 11, scope: !2759, inlinedAt: !2812)
!2821 = !DILocation(line: 210, column: 7, scope: !536, inlinedAt: !2812)
!2822 = !DILocation(line: 51, column: 17, scope: !2714, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 211, column: 10, scope: !536, inlinedAt: !2812)
!2824 = !DILocation(line: 51, column: 27, scope: !2714, inlinedAt: !2823)
!2825 = !DILocation(line: 53, column: 10, scope: !2723, inlinedAt: !2823)
!2826 = !DILocation(line: 205, column: 11, scope: !2767, inlinedAt: !2812)
!2827 = !DILocation(line: 204, column: 11, scope: !2768, inlinedAt: !2812)
!2828 = !DILocation(line: 206, column: 9, scope: !2767, inlinedAt: !2812)
!2829 = !DILocation(line: 207, column: 14, scope: !2768, inlinedAt: !2812)
!2830 = !DILocation(line: 207, column: 18, scope: !2768, inlinedAt: !2812)
!2831 = !DILocation(line: 207, column: 9, scope: !2768, inlinedAt: !2812)
!2832 = !DILocation(line: 53, column: 8, scope: !2723, inlinedAt: !2823)
!2833 = !DILocation(line: 57, column: 7, scope: !2727, inlinedAt: !2823)
!2834 = !DILocation(line: 58, column: 7, scope: !2727, inlinedAt: !2823)
!2835 = !DILocation(line: 61, column: 7, scope: !2714, inlinedAt: !2823)
!2836 = !DILocation(line: 62, column: 8, scope: !2731, inlinedAt: !2823)
!2837 = !DILocation(line: 62, column: 13, scope: !2731, inlinedAt: !2823)
!2838 = !DILocation(line: 62, column: 10, scope: !2731, inlinedAt: !2823)
!2839 = !DILocation(line: 63, column: 5, scope: !2731, inlinedAt: !2823)
!2840 = !DILocation(line: 76, column: 3, scope: !2803)
!2841 = distinct !DISubprogram(name: "xzalloc", scope: !2675, file: !2675, line: 84, type: !2676, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2842)
!2842 = !{!2843}
!2843 = !DILocalVariable(name: "s", arg: 1, scope: !2841, file: !2675, line: 84, type: !94)
!2844 = !DILocation(line: 84, column: 17, scope: !2841)
!2845 = !DILocation(line: 39, column: 17, scope: !2674, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 86, column: 18, scope: !2841)
!2847 = !DILocation(line: 41, column: 13, scope: !2674, inlinedAt: !2846)
!2848 = !DILocation(line: 41, column: 9, scope: !2674, inlinedAt: !2846)
!2849 = !DILocation(line: 42, column: 8, scope: !2685, inlinedAt: !2846)
!2850 = !DILocation(line: 42, column: 15, scope: !2685, inlinedAt: !2846)
!2851 = !DILocation(line: 42, column: 10, scope: !2685, inlinedAt: !2846)
!2852 = !DILocation(line: 43, column: 5, scope: !2685, inlinedAt: !2846)
!2853 = !DILocation(line: 86, column: 10, scope: !2841)
!2854 = !DILocation(line: 86, column: 3, scope: !2841)
!2855 = distinct !DISubprogram(name: "xcalloc", scope: !2675, file: !2675, line: 93, type: !2661, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2856)
!2856 = !{!2857, !2858, !2859}
!2857 = !DILocalVariable(name: "n", arg: 1, scope: !2855, file: !2675, line: 93, type: !94)
!2858 = !DILocalVariable(name: "s", arg: 2, scope: !2855, file: !2675, line: 93, type: !94)
!2859 = !DILocalVariable(name: "p", scope: !2855, file: !2675, line: 95, type: !49)
!2860 = !DILocation(line: 93, column: 17, scope: !2855)
!2861 = !DILocation(line: 93, column: 27, scope: !2855)
!2862 = !DILocation(line: 100, column: 7, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2855, file: !2675, line: 100, column: 7)
!2864 = !DILocation(line: 101, column: 7, scope: !2863)
!2865 = !DILocation(line: 101, column: 18, scope: !2863)
!2866 = !DILocation(line: 95, column: 9, scope: !2855)
!2867 = !DILocation(line: 101, column: 16, scope: !2863)
!2868 = !DILocation(line: 100, column: 7, scope: !2855)
!2869 = !DILocation(line: 102, column: 5, scope: !2863)
!2870 = !DILocation(line: 103, column: 3, scope: !2855)
!2871 = distinct !DISubprogram(name: "xmemdup", scope: !2675, file: !2675, line: 111, type: !2872, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2876)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!49, !2874, !94}
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2876 = !{!2877, !2878}
!2877 = !DILocalVariable(name: "p", arg: 1, scope: !2871, file: !2675, line: 111, type: !2874)
!2878 = !DILocalVariable(name: "s", arg: 2, scope: !2871, file: !2675, line: 111, type: !94)
!2879 = !DILocation(line: 111, column: 22, scope: !2871)
!2880 = !DILocation(line: 111, column: 32, scope: !2871)
!2881 = !DILocation(line: 39, column: 17, scope: !2674, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 113, column: 18, scope: !2871)
!2883 = !DILocation(line: 41, column: 13, scope: !2674, inlinedAt: !2882)
!2884 = !DILocation(line: 41, column: 9, scope: !2674, inlinedAt: !2882)
!2885 = !DILocation(line: 42, column: 8, scope: !2685, inlinedAt: !2882)
!2886 = !DILocation(line: 42, column: 15, scope: !2685, inlinedAt: !2882)
!2887 = !DILocation(line: 42, column: 10, scope: !2685, inlinedAt: !2882)
!2888 = !DILocation(line: 43, column: 5, scope: !2685, inlinedAt: !2882)
!2889 = !DILocation(line: 113, column: 10, scope: !2871)
!2890 = !DILocation(line: 113, column: 3, scope: !2871)
!2891 = distinct !DISubprogram(name: "xstrdup", scope: !2675, file: !2675, line: 119, type: !1948, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2892)
!2892 = !{!2893}
!2893 = !DILocalVariable(name: "string", arg: 1, scope: !2891, file: !2675, line: 119, type: !6)
!2894 = !DILocation(line: 119, column: 22, scope: !2891)
!2895 = !DILocation(line: 121, column: 27, scope: !2891)
!2896 = !DILocation(line: 121, column: 43, scope: !2891)
!2897 = !DILocation(line: 111, column: 22, scope: !2871, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 121, column: 10, scope: !2891)
!2899 = !DILocation(line: 111, column: 32, scope: !2871, inlinedAt: !2898)
!2900 = !DILocation(line: 39, column: 17, scope: !2674, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 113, column: 18, scope: !2871, inlinedAt: !2898)
!2902 = !DILocation(line: 41, column: 13, scope: !2674, inlinedAt: !2901)
!2903 = !DILocation(line: 41, column: 9, scope: !2674, inlinedAt: !2901)
!2904 = !DILocation(line: 42, column: 8, scope: !2685, inlinedAt: !2901)
!2905 = !DILocation(line: 42, column: 15, scope: !2685, inlinedAt: !2901)
!2906 = !DILocation(line: 42, column: 10, scope: !2685, inlinedAt: !2901)
!2907 = !DILocation(line: 43, column: 5, scope: !2685, inlinedAt: !2901)
!2908 = !DILocation(line: 113, column: 10, scope: !2871, inlinedAt: !2898)
!2909 = !DILocation(line: 121, column: 3, scope: !2891)
!2910 = distinct !DISubprogram(name: "xalloc_die", scope: !2911, file: !2911, line: 32, type: !676, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !548, variables: !4)
!2911 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2912 = !DILocation(line: 34, column: 10, scope: !2910)
!2913 = !DILocation(line: 34, column: 33, scope: !2910)
!2914 = !DILocation(line: 34, column: 3, scope: !2910)
!2915 = !DILocation(line: 40, column: 3, scope: !2910)
!2916 = distinct !DISubprogram(name: "rpl_calloc", scope: !2917, file: !2917, line: 42, type: !2661, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !2918)
!2917 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2918 = !{!2919, !2920, !2921, !2922}
!2919 = !DILocalVariable(name: "n", arg: 1, scope: !2916, file: !2917, line: 42, type: !94)
!2920 = !DILocalVariable(name: "s", arg: 2, scope: !2916, file: !2917, line: 42, type: !94)
!2921 = !DILocalVariable(name: "result", scope: !2916, file: !2917, line: 44, type: !49)
!2922 = !DILocalVariable(name: "bytes", scope: !2923, file: !2917, line: 56, type: !94)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !2917, line: 53, column: 5)
!2924 = distinct !DILexicalBlock(scope: !2916, file: !2917, line: 47, column: 7)
!2925 = !DILocation(line: 42, column: 20, scope: !2916)
!2926 = !DILocation(line: 42, column: 30, scope: !2916)
!2927 = !DILocation(line: 47, column: 9, scope: !2924)
!2928 = !DILocation(line: 47, column: 19, scope: !2924)
!2929 = !DILocation(line: 47, column: 14, scope: !2924)
!2930 = !DILocation(line: 56, column: 24, scope: !2923)
!2931 = !DILocation(line: 56, column: 14, scope: !2923)
!2932 = !DILocation(line: 57, column: 17, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2923, file: !2917, line: 57, column: 11)
!2934 = !DILocation(line: 57, column: 21, scope: !2933)
!2935 = !DILocation(line: 57, column: 11, scope: !2923)
!2936 = !DILocation(line: 59, column: 11, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2933, file: !2917, line: 58, column: 9)
!2938 = !DILocation(line: 59, column: 17, scope: !2937)
!2939 = !DILocation(line: 65, column: 12, scope: !2916)
!2940 = !DILocation(line: 44, column: 9, scope: !2916)
!2941 = !DILocation(line: 72, column: 3, scope: !2916)
!2942 = !DILocation(line: 73, column: 1, scope: !2916)
!2943 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !2944, file: !2944, line: 334, type: !2945, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !2959)
!2944 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!94, !2947, !6, !94, !2948}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !996, line: 6, baseType: !2950)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !998, line: 21, baseType: !2951)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !998, line: 13, size: 64, elements: !2952)
!2952 = !{!2953, !2954}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2951, file: !998, line: 15, baseType: !25, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2951, file: !998, line: 20, baseType: !2955, size: 32, offset: 32)
!2955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2951, file: !998, line: 16, size: 32, elements: !2956)
!2956 = !{!2957, !2958}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2955, file: !998, line: 18, baseType: !113, size: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2955, file: !998, line: 19, baseType: !1007, size: 32)
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965, !2966}
!2960 = !DILocalVariable(name: "pwc", arg: 1, scope: !2943, file: !2944, line: 334, type: !2947)
!2961 = !DILocalVariable(name: "s", arg: 2, scope: !2943, file: !2944, line: 334, type: !6)
!2962 = !DILocalVariable(name: "n", arg: 3, scope: !2943, file: !2944, line: 334, type: !94)
!2963 = !DILocalVariable(name: "ps", arg: 4, scope: !2943, file: !2944, line: 334, type: !2948)
!2964 = !DILocalVariable(name: "ret", scope: !2943, file: !2944, line: 336, type: !94)
!2965 = !DILocalVariable(name: "wc", scope: !2943, file: !2944, line: 337, type: !1012)
!2966 = !DILocalVariable(name: "uc", scope: !2967, file: !2944, line: 398, type: !494)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !2944, line: 397, column: 5)
!2968 = distinct !DILexicalBlock(scope: !2943, file: !2944, line: 396, column: 7)
!2969 = !DILocation(line: 334, column: 23, scope: !2943)
!2970 = !DILocation(line: 334, column: 40, scope: !2943)
!2971 = !DILocation(line: 334, column: 50, scope: !2943)
!2972 = !DILocation(line: 334, column: 64, scope: !2943)
!2973 = !DILocation(line: 337, column: 3, scope: !2943)
!2974 = !DILocation(line: 353, column: 9, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2943, file: !2944, line: 353, column: 7)
!2976 = !DILocation(line: 353, column: 7, scope: !2943)
!2977 = !DILocation(line: 388, column: 9, scope: !2943)
!2978 = !DILocation(line: 336, column: 10, scope: !2943)
!2979 = !DILocation(line: 396, column: 19, scope: !2968)
!2980 = !DILocation(line: 396, column: 31, scope: !2968)
!2981 = !DILocation(line: 396, column: 26, scope: !2968)
!2982 = !DILocation(line: 396, column: 41, scope: !2968)
!2983 = !DILocation(line: 396, column: 7, scope: !2943)
!2984 = !DILocation(line: 398, column: 26, scope: !2967)
!2985 = !DILocation(line: 398, column: 21, scope: !2967)
!2986 = !DILocation(line: 399, column: 14, scope: !2967)
!2987 = !DILocation(line: 399, column: 12, scope: !2967)
!2988 = !DILocation(line: 405, column: 1, scope: !2943)
!2989 = distinct !DISubprogram(name: "close_stream", scope: !2990, file: !2990, line: 56, type: !2991, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3033)
!2990 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!25, !2993}
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2474, line: 7, baseType: !2995)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2476, line: 241, size: 1728, elements: !2996)
!2996 = !{!2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2995, file: !2476, line: 242, baseType: !25, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2995, file: !2476, line: 247, baseType: !50, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2995, file: !2476, line: 248, baseType: !50, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2995, file: !2476, line: 249, baseType: !50, size: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2995, file: !2476, line: 250, baseType: !50, size: 64, offset: 256)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2995, file: !2476, line: 251, baseType: !50, size: 64, offset: 320)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2995, file: !2476, line: 252, baseType: !50, size: 64, offset: 384)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2995, file: !2476, line: 253, baseType: !50, size: 64, offset: 448)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2995, file: !2476, line: 254, baseType: !50, size: 64, offset: 512)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2995, file: !2476, line: 256, baseType: !50, size: 64, offset: 576)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2995, file: !2476, line: 257, baseType: !50, size: 64, offset: 640)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2995, file: !2476, line: 258, baseType: !50, size: 64, offset: 704)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2995, file: !2476, line: 260, baseType: !3010, size: 64, offset: 768)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2476, line: 156, size: 192, elements: !3012)
!3012 = !{!3013, !3014, !3016}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3011, file: !2476, line: 157, baseType: !3010, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3011, file: !2476, line: 158, baseType: !3015, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3011, file: !2476, line: 162, baseType: !25, size: 32, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2995, file: !2476, line: 262, baseType: !3015, size: 64, offset: 832)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2995, file: !2476, line: 264, baseType: !25, size: 32, offset: 896)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2995, file: !2476, line: 268, baseType: !25, size: 32, offset: 928)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2995, file: !2476, line: 270, baseType: !2502, size: 64, offset: 960)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2995, file: !2476, line: 274, baseType: !93, size: 16, offset: 1024)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2995, file: !2476, line: 275, baseType: !2507, size: 8, offset: 1040)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2995, file: !2476, line: 276, baseType: !2509, size: 8, offset: 1048)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2995, file: !2476, line: 280, baseType: !2511, size: 64, offset: 1088)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2995, file: !2476, line: 289, baseType: !2514, size: 64, offset: 1152)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2995, file: !2476, line: 297, baseType: !49, size: 64, offset: 1216)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2995, file: !2476, line: 298, baseType: !49, size: 64, offset: 1280)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2995, file: !2476, line: 299, baseType: !49, size: 64, offset: 1344)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2995, file: !2476, line: 300, baseType: !49, size: 64, offset: 1408)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2995, file: !2476, line: 302, baseType: !94, size: 64, offset: 1472)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2995, file: !2476, line: 303, baseType: !25, size: 32, offset: 1536)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2995, file: !2476, line: 305, baseType: !2522, size: 160, offset: 1568)
!3033 = !{!3034, !3035, !3037, !3038}
!3034 = !DILocalVariable(name: "stream", arg: 1, scope: !2989, file: !2990, line: 56, type: !2993)
!3035 = !DILocalVariable(name: "some_pending", scope: !2989, file: !2990, line: 58, type: !3036)
!3036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3037 = !DILocalVariable(name: "prev_fail", scope: !2989, file: !2990, line: 59, type: !3036)
!3038 = !DILocalVariable(name: "fclose_fail", scope: !2989, file: !2990, line: 60, type: !3036)
!3039 = !DILocation(line: 56, column: 21, scope: !2989)
!3040 = !DILocation(line: 58, column: 30, scope: !2989)
!3041 = !DILocalVariable(name: "__stream", arg: 1, scope: !3042, file: !3043, line: 132, type: !2993)
!3042 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3043, file: !3043, line: 132, type: !2991, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3044)
!3043 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3044 = !{!3041}
!3045 = !DILocation(line: 132, column: 1, scope: !3042, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 59, column: 27, scope: !2989)
!3047 = !DILocation(line: 134, column: 10, scope: !3042, inlinedAt: !3046)
!3048 = !{!3049, !633, i64 0}
!3049 = !{!"_IO_FILE", !633, i64 0, !584, i64 8, !584, i64 16, !584, i64 24, !584, i64 32, !584, i64 40, !584, i64 48, !584, i64 56, !584, i64 64, !584, i64 72, !584, i64 80, !584, i64 88, !584, i64 96, !584, i64 104, !633, i64 112, !633, i64 116, !1791, i64 120, !1247, i64 128, !585, i64 130, !585, i64 131, !584, i64 136, !1791, i64 144, !584, i64 152, !584, i64 160, !584, i64 168, !584, i64 176, !1791, i64 184, !633, i64 192, !585, i64 196}
!3050 = !DILocation(line: 59, column: 43, scope: !2989)
!3051 = !DILocation(line: 60, column: 29, scope: !2989)
!3052 = !DILocation(line: 60, column: 45, scope: !2989)
!3053 = !DILocation(line: 70, column: 17, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !2989, file: !2990, line: 70, column: 7)
!3055 = !DILocation(line: 58, column: 50, scope: !2989)
!3056 = !DILocation(line: 70, column: 33, scope: !3054)
!3057 = !DILocation(line: 70, column: 53, scope: !3054)
!3058 = !DILocation(line: 70, column: 59, scope: !3054)
!3059 = !DILocation(line: 70, column: 7, scope: !2989)
!3060 = !DILocation(line: 72, column: 11, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3054, file: !2990, line: 71, column: 5)
!3062 = !DILocation(line: 73, column: 9, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3061, file: !2990, line: 72, column: 11)
!3064 = !DILocation(line: 73, column: 15, scope: !3063)
!3065 = !DILocation(line: 78, column: 1, scope: !2989)
!3066 = distinct !DISubprogram(name: "hard_locale", scope: !3067, file: !3067, line: 38, type: !3068, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3070)
!3067 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!17, !25}
!3070 = !{!3071, !3072, !3073}
!3071 = !DILocalVariable(name: "category", arg: 1, scope: !3066, file: !3067, line: 38, type: !25)
!3072 = !DILocalVariable(name: "hard", scope: !3066, file: !3067, line: 40, type: !17)
!3073 = !DILocalVariable(name: "p", scope: !3066, file: !3067, line: 41, type: !6)
!3074 = !DILocation(line: 38, column: 18, scope: !3066)
!3075 = !DILocation(line: 40, column: 8, scope: !3066)
!3076 = !DILocation(line: 41, column: 19, scope: !3066)
!3077 = !DILocation(line: 41, column: 15, scope: !3066)
!3078 = !DILocation(line: 43, column: 7, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3066, file: !3067, line: 43, column: 7)
!3080 = !DILocation(line: 43, column: 7, scope: !3066)
!3081 = !DILocation(line: 47, column: 15, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !3067, line: 47, column: 15)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !3067, line: 46, column: 9)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3067, line: 45, column: 11)
!3085 = distinct !DILexicalBlock(scope: !3079, file: !3067, line: 44, column: 5)
!3086 = !DILocation(line: 47, column: 31, scope: !3082)
!3087 = !DILocation(line: 47, column: 36, scope: !3082)
!3088 = !DILocation(line: 47, column: 39, scope: !3082)
!3089 = !DILocation(line: 47, column: 59, scope: !3082)
!3090 = !DILocation(line: 47, column: 15, scope: !3083)
!3091 = !DILocation(line: 48, column: 13, scope: !3082)
!3092 = !DILocation(line: 71, column: 3, scope: !3066)
!3093 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3094, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!6}
!3096 = !{!3097, !3098}
!3097 = !DILocalVariable(name: "codeset", scope: !3093, file: !496, line: 395, type: !6)
!3098 = !DILocalVariable(name: "aliases", scope: !3093, file: !496, line: 396, type: !6)
!3099 = !DILocalVariable(name: "buf1", scope: !3100, file: !496, line: 196, type: !3167)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !496, line: 194, column: 21)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !496, line: 193, column: 19)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !496, line: 193, column: 19)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !496, line: 188, column: 17)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !496, line: 181, column: 19)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !496, line: 177, column: 13)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !496, line: 173, column: 15)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !496, line: 161, column: 9)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !496, line: 157, column: 11)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !496, line: 130, column: 5)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !496, line: 129, column: 7)
!3111 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3094, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3112)
!3112 = !{!3113, !3114, !3115, !3116, !3117, !3119, !3120, !3121, !3122, !3163, !3164, !3165, !3099, !3166, !3170, !3171, !3172}
!3113 = !DILocalVariable(name: "cp", scope: !3111, file: !496, line: 126, type: !6)
!3114 = !DILocalVariable(name: "dir", scope: !3109, file: !496, line: 132, type: !6)
!3115 = !DILocalVariable(name: "base", scope: !3109, file: !496, line: 133, type: !6)
!3116 = !DILocalVariable(name: "file_name", scope: !3109, file: !496, line: 134, type: !50)
!3117 = !DILocalVariable(name: "dir_len", scope: !3118, file: !496, line: 144, type: !94)
!3118 = distinct !DILexicalBlock(scope: !3109, file: !496, line: 143, column: 7)
!3119 = !DILocalVariable(name: "base_len", scope: !3118, file: !496, line: 145, type: !94)
!3120 = !DILocalVariable(name: "add_slash", scope: !3118, file: !496, line: 146, type: !25)
!3121 = !DILocalVariable(name: "fd", scope: !3107, file: !496, line: 162, type: !25)
!3122 = !DILocalVariable(name: "fp", scope: !3105, file: !496, line: 178, type: !3123)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2474, line: 7, baseType: !3125)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2476, line: 241, size: 1728, elements: !3126)
!3126 = !{!3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3125, file: !2476, line: 242, baseType: !25, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3125, file: !2476, line: 247, baseType: !50, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3125, file: !2476, line: 248, baseType: !50, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3125, file: !2476, line: 249, baseType: !50, size: 64, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3125, file: !2476, line: 250, baseType: !50, size: 64, offset: 256)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3125, file: !2476, line: 251, baseType: !50, size: 64, offset: 320)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3125, file: !2476, line: 252, baseType: !50, size: 64, offset: 384)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3125, file: !2476, line: 253, baseType: !50, size: 64, offset: 448)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3125, file: !2476, line: 254, baseType: !50, size: 64, offset: 512)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3125, file: !2476, line: 256, baseType: !50, size: 64, offset: 576)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3125, file: !2476, line: 257, baseType: !50, size: 64, offset: 640)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3125, file: !2476, line: 258, baseType: !50, size: 64, offset: 704)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3125, file: !2476, line: 260, baseType: !3140, size: 64, offset: 768)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2476, line: 156, size: 192, elements: !3142)
!3142 = !{!3143, !3144, !3146}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3141, file: !2476, line: 157, baseType: !3140, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3141, file: !2476, line: 158, baseType: !3145, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3141, file: !2476, line: 162, baseType: !25, size: 32, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3125, file: !2476, line: 262, baseType: !3145, size: 64, offset: 832)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3125, file: !2476, line: 264, baseType: !25, size: 32, offset: 896)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3125, file: !2476, line: 268, baseType: !25, size: 32, offset: 928)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3125, file: !2476, line: 270, baseType: !2502, size: 64, offset: 960)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3125, file: !2476, line: 274, baseType: !93, size: 16, offset: 1024)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3125, file: !2476, line: 275, baseType: !2507, size: 8, offset: 1040)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3125, file: !2476, line: 276, baseType: !2509, size: 8, offset: 1048)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3125, file: !2476, line: 280, baseType: !2511, size: 64, offset: 1088)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3125, file: !2476, line: 289, baseType: !2514, size: 64, offset: 1152)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3125, file: !2476, line: 297, baseType: !49, size: 64, offset: 1216)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3125, file: !2476, line: 298, baseType: !49, size: 64, offset: 1280)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3125, file: !2476, line: 299, baseType: !49, size: 64, offset: 1344)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3125, file: !2476, line: 300, baseType: !49, size: 64, offset: 1408)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3125, file: !2476, line: 302, baseType: !94, size: 64, offset: 1472)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3125, file: !2476, line: 303, baseType: !25, size: 32, offset: 1536)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3125, file: !2476, line: 305, baseType: !2522, size: 160, offset: 1568)
!3163 = !DILocalVariable(name: "res_ptr", scope: !3103, file: !496, line: 190, type: !50)
!3164 = !DILocalVariable(name: "res_size", scope: !3103, file: !496, line: 191, type: !94)
!3165 = !DILocalVariable(name: "c", scope: !3100, file: !496, line: 195, type: !25)
!3166 = !DILocalVariable(name: "buf2", scope: !3100, file: !496, line: 197, type: !3167)
!3167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3168)
!3168 = !{!3169}
!3169 = !DISubrange(count: 51)
!3170 = !DILocalVariable(name: "l1", scope: !3100, file: !496, line: 198, type: !94)
!3171 = !DILocalVariable(name: "l2", scope: !3100, file: !496, line: 198, type: !94)
!3172 = !DILocalVariable(name: "old_res_ptr", scope: !3100, file: !496, line: 199, type: !50)
!3173 = !DILocation(line: 196, column: 28, scope: !3100, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 589, column: 18, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3093, file: !496, line: 589, column: 3)
!3176 = !DILocation(line: 197, column: 28, scope: !3100, inlinedAt: !3174)
!3177 = !DILocation(line: 403, column: 13, scope: !3093)
!3178 = !DILocation(line: 395, column: 15, scope: !3093)
!3179 = !DILocation(line: 584, column: 15, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3093, file: !496, line: 584, column: 7)
!3181 = !DILocation(line: 584, column: 7, scope: !3093)
!3182 = !DILocation(line: 128, column: 8, scope: !3111, inlinedAt: !3174)
!3183 = !DILocation(line: 126, column: 15, scope: !3111, inlinedAt: !3174)
!3184 = !DILocation(line: 129, column: 10, scope: !3110, inlinedAt: !3174)
!3185 = !DILocation(line: 129, column: 7, scope: !3111, inlinedAt: !3174)
!3186 = !DILocation(line: 138, column: 13, scope: !3109, inlinedAt: !3174)
!3187 = !DILocation(line: 132, column: 19, scope: !3109, inlinedAt: !3174)
!3188 = !DILocation(line: 139, column: 15, scope: !3189, inlinedAt: !3174)
!3189 = distinct !DILexicalBlock(scope: !3109, file: !496, line: 139, column: 11)
!3190 = !DILocation(line: 139, column: 23, scope: !3189, inlinedAt: !3174)
!3191 = !DILocation(line: 139, column: 26, scope: !3189, inlinedAt: !3174)
!3192 = !DILocation(line: 139, column: 33, scope: !3189, inlinedAt: !3174)
!3193 = !DILocation(line: 139, column: 11, scope: !3109, inlinedAt: !3174)
!3194 = !DILocation(line: 140, column: 9, scope: !3189, inlinedAt: !3174)
!3195 = !DILocation(line: 144, column: 26, scope: !3118, inlinedAt: !3174)
!3196 = !DILocation(line: 144, column: 16, scope: !3118, inlinedAt: !3174)
!3197 = !DILocation(line: 145, column: 16, scope: !3118, inlinedAt: !3174)
!3198 = !DILocation(line: 146, column: 34, scope: !3118, inlinedAt: !3174)
!3199 = !DILocation(line: 146, column: 38, scope: !3118, inlinedAt: !3174)
!3200 = !DILocation(line: 146, column: 42, scope: !3118, inlinedAt: !3174)
!3201 = !DILocation(line: 147, column: 48, scope: !3118, inlinedAt: !3174)
!3202 = !DILocation(line: 147, column: 46, scope: !3118, inlinedAt: !3174)
!3203 = !DILocation(line: 147, column: 69, scope: !3118, inlinedAt: !3174)
!3204 = !DILocation(line: 147, column: 30, scope: !3118, inlinedAt: !3174)
!3205 = !DILocation(line: 134, column: 13, scope: !3109, inlinedAt: !3174)
!3206 = !DILocation(line: 148, column: 13, scope: !3118, inlinedAt: !3174)
!3207 = !DILocation(line: 150, column: 13, scope: !3208, inlinedAt: !3174)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !496, line: 149, column: 11)
!3209 = distinct !DILexicalBlock(scope: !3118, file: !496, line: 148, column: 13)
!3210 = !DILocation(line: 151, column: 17, scope: !3208, inlinedAt: !3174)
!3211 = !DILocation(line: 152, column: 34, scope: !3212, inlinedAt: !3174)
!3212 = distinct !DILexicalBlock(scope: !3208, file: !496, line: 151, column: 17)
!3213 = !DILocation(line: 153, column: 41, scope: !3208, inlinedAt: !3174)
!3214 = !DILocation(line: 153, column: 13, scope: !3208, inlinedAt: !3174)
!3215 = !DILocation(line: 157, column: 11, scope: !3109, inlinedAt: !3174)
!3216 = !DILocation(line: 171, column: 16, scope: !3107, inlinedAt: !3174)
!3217 = !DILocation(line: 162, column: 15, scope: !3107, inlinedAt: !3174)
!3218 = !DILocation(line: 173, column: 18, scope: !3106, inlinedAt: !3174)
!3219 = !DILocation(line: 173, column: 15, scope: !3107, inlinedAt: !3174)
!3220 = !DILocation(line: 180, column: 20, scope: !3105, inlinedAt: !3174)
!3221 = !DILocation(line: 178, column: 21, scope: !3105, inlinedAt: !3174)
!3222 = !DILocation(line: 181, column: 22, scope: !3104, inlinedAt: !3174)
!3223 = !DILocation(line: 181, column: 19, scope: !3105, inlinedAt: !3174)
!3224 = !DILocation(line: 184, column: 19, scope: !3225, inlinedAt: !3174)
!3225 = distinct !DILexicalBlock(scope: !3104, file: !496, line: 182, column: 17)
!3226 = !DILocation(line: 186, column: 17, scope: !3225, inlinedAt: !3174)
!3227 = !DILocation(line: 190, column: 25, scope: !3103, inlinedAt: !3174)
!3228 = !DILocation(line: 191, column: 26, scope: !3103, inlinedAt: !3174)
!3229 = !DILocation(line: 193, column: 19, scope: !3103, inlinedAt: !3174)
!3230 = !DILocation(line: 196, column: 23, scope: !3100, inlinedAt: !3174)
!3231 = !DILocation(line: 197, column: 23, scope: !3100, inlinedAt: !3174)
!3232 = !DILocalVariable(name: "__fp", arg: 1, scope: !3233, file: !3043, line: 63, type: !3123)
!3233 = distinct !DISubprogram(name: "getc_unlocked", scope: !3043, file: !3043, line: 63, type: !3234, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3236)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!25, !3123}
!3236 = !{!3232}
!3237 = !DILocation(line: 63, column: 22, scope: !3233, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 201, column: 27, scope: !3100, inlinedAt: !3174)
!3239 = !DILocation(line: 65, column: 10, scope: !3233, inlinedAt: !3238)
!3240 = !{!3049, !584, i64 8}
!3241 = !{!3049, !584, i64 16}
!3242 = !{!"branch_weights", i32 2000, i32 1}
!3243 = !DILocation(line: 195, column: 27, scope: !3100, inlinedAt: !3174)
!3244 = !DILocation(line: 202, column: 27, scope: !3100, inlinedAt: !3174)
!3245 = distinct !{!3245, !3246, !3249}
!3246 = !DILocation(line: 209, column: 27, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !496, line: 207, column: 25)
!3248 = distinct !DILexicalBlock(scope: !3100, file: !496, line: 206, column: 27)
!3249 = !DILocation(line: 211, column: 58, scope: !3247)
!3250 = !DILocation(line: 65, column: 10, scope: !3233, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 210, column: 33, scope: !3247, inlinedAt: !3174)
!3252 = !DILocation(line: 63, column: 22, scope: !3233, inlinedAt: !3251)
!3253 = !DILocation(line: 210, column: 29, scope: !3247, inlinedAt: !3174)
!3254 = distinct !{!3254, !3255, !3256}
!3255 = !DILocation(line: 193, column: 19, scope: !3102)
!3256 = !DILocation(line: 241, column: 21, scope: !3102)
!3257 = !DILocation(line: 216, column: 23, scope: !3100, inlinedAt: !3174)
!3258 = !DILocation(line: 217, column: 27, scope: !3259, inlinedAt: !3174)
!3259 = distinct !DILexicalBlock(scope: !3100, file: !496, line: 217, column: 27)
!3260 = !DILocation(line: 217, column: 64, scope: !3259, inlinedAt: !3174)
!3261 = !DILocation(line: 217, column: 27, scope: !3100, inlinedAt: !3174)
!3262 = !DILocation(line: 219, column: 28, scope: !3100, inlinedAt: !3174)
!3263 = !DILocation(line: 198, column: 30, scope: !3100, inlinedAt: !3174)
!3264 = !DILocation(line: 220, column: 28, scope: !3100, inlinedAt: !3174)
!3265 = !DILocation(line: 198, column: 34, scope: !3100, inlinedAt: !3174)
!3266 = !DILocation(line: 199, column: 29, scope: !3100, inlinedAt: !3174)
!3267 = !DILocation(line: 222, column: 36, scope: !3268, inlinedAt: !3174)
!3268 = distinct !DILexicalBlock(scope: !3100, file: !496, line: 222, column: 27)
!3269 = !DILocation(line: 222, column: 27, scope: !3100, inlinedAt: !3174)
!3270 = !DILocation(line: 225, column: 63, scope: !3271, inlinedAt: !3174)
!3271 = distinct !DILexicalBlock(scope: !3268, file: !496, line: 223, column: 25)
!3272 = !DILocation(line: 225, column: 46, scope: !3271, inlinedAt: !3174)
!3273 = !DILocation(line: 226, column: 25, scope: !3271, inlinedAt: !3174)
!3274 = !DILocation(line: 229, column: 36, scope: !3275, inlinedAt: !3174)
!3275 = distinct !DILexicalBlock(scope: !3268, file: !496, line: 228, column: 25)
!3276 = !DILocation(line: 230, column: 73, scope: !3275, inlinedAt: !3174)
!3277 = !DILocation(line: 230, column: 46, scope: !3275, inlinedAt: !3174)
!3278 = !DILocation(line: 232, column: 35, scope: !3279, inlinedAt: !3174)
!3279 = distinct !DILexicalBlock(scope: !3100, file: !496, line: 232, column: 27)
!3280 = !DILocation(line: 232, column: 27, scope: !3100, inlinedAt: !3174)
!3281 = !DILocation(line: 236, column: 27, scope: !3282, inlinedAt: !3174)
!3282 = distinct !DILexicalBlock(scope: !3279, file: !496, line: 233, column: 25)
!3283 = !DILocation(line: 237, column: 27, scope: !3282, inlinedAt: !3174)
!3284 = !DILocation(line: 241, column: 21, scope: !3101, inlinedAt: !3174)
!3285 = !DILocation(line: 239, column: 39, scope: !3100, inlinedAt: !3174)
!3286 = !DILocation(line: 239, column: 50, scope: !3100, inlinedAt: !3174)
!3287 = !DILocation(line: 239, column: 61, scope: !3100, inlinedAt: !3174)
!3288 = !DILocalVariable(name: "__dest", arg: 1, scope: !3289, file: !3290, line: 88, type: !3293)
!3289 = distinct !DISubprogram(name: "strcpy", scope: !3290, file: !3290, line: 88, type: !3291, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3295)
!3290 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!50, !3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3295 = !{!3288, !3296}
!3296 = !DILocalVariable(name: "__src", arg: 2, scope: !3289, file: !3290, line: 88, type: !3294)
!3297 = !DILocation(line: 88, column: 1, scope: !3289, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 239, column: 23, scope: !3100, inlinedAt: !3174)
!3299 = !DILocation(line: 90, column: 49, scope: !3289, inlinedAt: !3298)
!3300 = !DILocation(line: 90, column: 10, scope: !3289, inlinedAt: !3298)
!3301 = !DILocation(line: 88, column: 1, scope: !3289, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 240, column: 23, scope: !3100, inlinedAt: !3174)
!3303 = !DILocation(line: 90, column: 49, scope: !3289, inlinedAt: !3302)
!3304 = !DILocation(line: 90, column: 10, scope: !3289, inlinedAt: !3302)
!3305 = !DILocation(line: 193, column: 19, scope: !3101, inlinedAt: !3174)
!3306 = !DILocation(line: 242, column: 19, scope: !3103, inlinedAt: !3174)
!3307 = !DILocation(line: 243, column: 32, scope: !3308, inlinedAt: !3174)
!3308 = distinct !DILexicalBlock(scope: !3103, file: !496, line: 243, column: 23)
!3309 = !DILocation(line: 243, column: 23, scope: !3103, inlinedAt: !3174)
!3310 = !DILocation(line: 247, column: 33, scope: !3311, inlinedAt: !3174)
!3311 = distinct !DILexicalBlock(scope: !3308, file: !496, line: 246, column: 21)
!3312 = !DILocation(line: 247, column: 45, scope: !3311, inlinedAt: !3174)
!3313 = !DILocation(line: 253, column: 11, scope: !3107, inlinedAt: !3174)
!3314 = !DILocation(line: 377, column: 23, scope: !3109, inlinedAt: !3174)
!3315 = !DILocation(line: 378, column: 5, scope: !3109, inlinedAt: !3174)
!3316 = !DILocation(line: 396, column: 15, scope: !3093)
!3317 = !DILocation(line: 590, column: 8, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3175, file: !496, line: 589, column: 3)
!3319 = !DILocation(line: 590, column: 17, scope: !3318)
!3320 = !DILocation(line: 589, column: 3, scope: !3175)
!3321 = !DILocation(line: 592, column: 9, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3318, file: !496, line: 592, column: 9)
!3323 = !DILocation(line: 592, column: 35, scope: !3322)
!3324 = !DILocation(line: 593, column: 9, scope: !3322)
!3325 = !DILocation(line: 593, column: 24, scope: !3322)
!3326 = !DILocation(line: 593, column: 31, scope: !3322)
!3327 = !DILocation(line: 593, column: 34, scope: !3322)
!3328 = !DILocation(line: 593, column: 45, scope: !3322)
!3329 = !DILocation(line: 592, column: 9, scope: !3318)
!3330 = !DILocation(line: 595, column: 29, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3322, file: !496, line: 594, column: 7)
!3332 = !DILocation(line: 595, column: 27, scope: !3331)
!3333 = !DILocation(line: 595, column: 46, scope: !3331)
!3334 = !DILocation(line: 596, column: 9, scope: !3331)
!3335 = !DILocation(line: 591, column: 19, scope: !3318)
!3336 = !DILocation(line: 591, column: 36, scope: !3318)
!3337 = !DILocation(line: 591, column: 16, scope: !3318)
!3338 = !DILocation(line: 591, column: 52, scope: !3318)
!3339 = !DILocation(line: 591, column: 69, scope: !3318)
!3340 = !DILocation(line: 591, column: 49, scope: !3318)
!3341 = distinct !{!3341, !3320, !3342}
!3342 = !DILocation(line: 597, column: 7, scope: !3175)
!3343 = !DILocation(line: 602, column: 7, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3093, file: !496, line: 602, column: 7)
!3345 = !DILocation(line: 602, column: 18, scope: !3344)
!3346 = !DILocation(line: 602, column: 7, scope: !3093)
!3347 = !DILocation(line: 612, column: 3, scope: !3093)
!3348 = distinct !DISubprogram(name: "rpl_fclose", scope: !3349, file: !3349, line: 56, type: !3350, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3392)
!3349 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!25, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2474, line: 7, baseType: !3354)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2476, line: 241, size: 1728, elements: !3355)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3354, file: !2476, line: 242, baseType: !25, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3354, file: !2476, line: 247, baseType: !50, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3354, file: !2476, line: 248, baseType: !50, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3354, file: !2476, line: 249, baseType: !50, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3354, file: !2476, line: 250, baseType: !50, size: 64, offset: 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3354, file: !2476, line: 251, baseType: !50, size: 64, offset: 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3354, file: !2476, line: 252, baseType: !50, size: 64, offset: 384)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3354, file: !2476, line: 253, baseType: !50, size: 64, offset: 448)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3354, file: !2476, line: 254, baseType: !50, size: 64, offset: 512)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3354, file: !2476, line: 256, baseType: !50, size: 64, offset: 576)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3354, file: !2476, line: 257, baseType: !50, size: 64, offset: 640)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3354, file: !2476, line: 258, baseType: !50, size: 64, offset: 704)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3354, file: !2476, line: 260, baseType: !3369, size: 64, offset: 768)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2476, line: 156, size: 192, elements: !3371)
!3371 = !{!3372, !3373, !3375}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3370, file: !2476, line: 157, baseType: !3369, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3370, file: !2476, line: 158, baseType: !3374, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3370, file: !2476, line: 162, baseType: !25, size: 32, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3354, file: !2476, line: 262, baseType: !3374, size: 64, offset: 832)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3354, file: !2476, line: 264, baseType: !25, size: 32, offset: 896)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3354, file: !2476, line: 268, baseType: !25, size: 32, offset: 928)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3354, file: !2476, line: 270, baseType: !2502, size: 64, offset: 960)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3354, file: !2476, line: 274, baseType: !93, size: 16, offset: 1024)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3354, file: !2476, line: 275, baseType: !2507, size: 8, offset: 1040)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3354, file: !2476, line: 276, baseType: !2509, size: 8, offset: 1048)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3354, file: !2476, line: 280, baseType: !2511, size: 64, offset: 1088)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3354, file: !2476, line: 289, baseType: !2514, size: 64, offset: 1152)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3354, file: !2476, line: 297, baseType: !49, size: 64, offset: 1216)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3354, file: !2476, line: 298, baseType: !49, size: 64, offset: 1280)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3354, file: !2476, line: 299, baseType: !49, size: 64, offset: 1344)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3354, file: !2476, line: 300, baseType: !49, size: 64, offset: 1408)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3354, file: !2476, line: 302, baseType: !94, size: 64, offset: 1472)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3354, file: !2476, line: 303, baseType: !25, size: 32, offset: 1536)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3354, file: !2476, line: 305, baseType: !2522, size: 160, offset: 1568)
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DILocalVariable(name: "fp", arg: 1, scope: !3348, file: !3349, line: 56, type: !3352)
!3394 = !DILocalVariable(name: "saved_errno", scope: !3348, file: !3349, line: 58, type: !25)
!3395 = !DILocalVariable(name: "fd", scope: !3348, file: !3349, line: 59, type: !25)
!3396 = !DILocalVariable(name: "result", scope: !3348, file: !3349, line: 60, type: !25)
!3397 = !DILocation(line: 56, column: 19, scope: !3348)
!3398 = !DILocation(line: 58, column: 7, scope: !3348)
!3399 = !DILocation(line: 60, column: 7, scope: !3348)
!3400 = !DILocation(line: 63, column: 8, scope: !3348)
!3401 = !DILocation(line: 59, column: 7, scope: !3348)
!3402 = !DILocation(line: 64, column: 10, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3348, file: !3349, line: 64, column: 7)
!3404 = !DILocation(line: 64, column: 7, scope: !3348)
!3405 = !DILocation(line: 65, column: 12, scope: !3403)
!3406 = !DILocation(line: 65, column: 5, scope: !3403)
!3407 = !DILocation(line: 70, column: 9, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3348, file: !3349, line: 70, column: 7)
!3409 = !DILocation(line: 70, column: 23, scope: !3408)
!3410 = !DILocation(line: 70, column: 33, scope: !3408)
!3411 = !DILocation(line: 70, column: 26, scope: !3408)
!3412 = !DILocation(line: 70, column: 59, scope: !3408)
!3413 = !DILocation(line: 71, column: 7, scope: !3408)
!3414 = !DILocation(line: 71, column: 10, scope: !3408)
!3415 = !DILocation(line: 70, column: 7, scope: !3348)
!3416 = !DILocation(line: 98, column: 12, scope: !3348)
!3417 = !DILocation(line: 103, column: 7, scope: !3348)
!3418 = !DILocation(line: 72, column: 19, scope: !3408)
!3419 = !DILocation(line: 103, column: 19, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3348, file: !3349, line: 103, column: 7)
!3421 = !DILocation(line: 105, column: 13, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3420, file: !3349, line: 104, column: 5)
!3423 = !DILocation(line: 107, column: 5, scope: !3422)
!3424 = !DILocation(line: 110, column: 1, scope: !3348)
!3425 = distinct !DISubprogram(name: "rpl_fflush", scope: !3426, file: !3426, line: 127, type: !3427, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !3469)
!3426 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!25, !3429}
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2474, line: 7, baseType: !3431)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2476, line: 241, size: 1728, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3431, file: !2476, line: 242, baseType: !25, size: 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3431, file: !2476, line: 247, baseType: !50, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3431, file: !2476, line: 248, baseType: !50, size: 64, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3431, file: !2476, line: 249, baseType: !50, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3431, file: !2476, line: 250, baseType: !50, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3431, file: !2476, line: 251, baseType: !50, size: 64, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3431, file: !2476, line: 252, baseType: !50, size: 64, offset: 384)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3431, file: !2476, line: 253, baseType: !50, size: 64, offset: 448)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3431, file: !2476, line: 254, baseType: !50, size: 64, offset: 512)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3431, file: !2476, line: 256, baseType: !50, size: 64, offset: 576)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3431, file: !2476, line: 257, baseType: !50, size: 64, offset: 640)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3431, file: !2476, line: 258, baseType: !50, size: 64, offset: 704)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3431, file: !2476, line: 260, baseType: !3446, size: 64, offset: 768)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2476, line: 156, size: 192, elements: !3448)
!3448 = !{!3449, !3450, !3452}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3447, file: !2476, line: 157, baseType: !3446, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3447, file: !2476, line: 158, baseType: !3451, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3447, file: !2476, line: 162, baseType: !25, size: 32, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3431, file: !2476, line: 262, baseType: !3451, size: 64, offset: 832)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3431, file: !2476, line: 264, baseType: !25, size: 32, offset: 896)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3431, file: !2476, line: 268, baseType: !25, size: 32, offset: 928)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3431, file: !2476, line: 270, baseType: !2502, size: 64, offset: 960)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3431, file: !2476, line: 274, baseType: !93, size: 16, offset: 1024)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3431, file: !2476, line: 275, baseType: !2507, size: 8, offset: 1040)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3431, file: !2476, line: 276, baseType: !2509, size: 8, offset: 1048)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3431, file: !2476, line: 280, baseType: !2511, size: 64, offset: 1088)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3431, file: !2476, line: 289, baseType: !2514, size: 64, offset: 1152)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3431, file: !2476, line: 297, baseType: !49, size: 64, offset: 1216)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3431, file: !2476, line: 298, baseType: !49, size: 64, offset: 1280)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3431, file: !2476, line: 299, baseType: !49, size: 64, offset: 1344)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3431, file: !2476, line: 300, baseType: !49, size: 64, offset: 1408)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3431, file: !2476, line: 302, baseType: !94, size: 64, offset: 1472)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3431, file: !2476, line: 303, baseType: !25, size: 32, offset: 1536)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3431, file: !2476, line: 305, baseType: !2522, size: 160, offset: 1568)
!3469 = !{!3470}
!3470 = !DILocalVariable(name: "stream", arg: 1, scope: !3425, file: !3426, line: 127, type: !3429)
!3471 = !DILocation(line: 127, column: 19, scope: !3425)
!3472 = !DILocation(line: 148, column: 14, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3425, file: !3426, line: 148, column: 7)
!3474 = !DILocation(line: 148, column: 22, scope: !3473)
!3475 = !DILocation(line: 148, column: 27, scope: !3473)
!3476 = !DILocation(line: 148, column: 7, scope: !3425)
!3477 = !DILocation(line: 149, column: 12, scope: !3473)
!3478 = !DILocation(line: 149, column: 5, scope: !3473)
!3479 = !DILocalVariable(name: "fp", arg: 1, scope: !3480, file: !3426, line: 40, type: !3429)
!3480 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3426, file: !3426, line: 40, type: !3481, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !3483)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !3429}
!3483 = !{!3479}
!3484 = !DILocation(line: 40, column: 48, scope: !3480, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 153, column: 3, scope: !3425)
!3486 = !DILocation(line: 42, column: 11, scope: !3487, inlinedAt: !3485)
!3487 = distinct !DILexicalBlock(scope: !3480, file: !3426, line: 42, column: 7)
!3488 = !DILocation(line: 42, column: 18, scope: !3487, inlinedAt: !3485)
!3489 = !DILocation(line: 42, column: 7, scope: !3480, inlinedAt: !3485)
!3490 = !DILocation(line: 44, column: 5, scope: !3487, inlinedAt: !3485)
!3491 = !DILocation(line: 155, column: 10, scope: !3425)
!3492 = !DILocation(line: 155, column: 3, scope: !3425)
!3493 = !DILocation(line: 229, column: 1, scope: !3425)
!3494 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3495, file: !3495, line: 28, type: !3496, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3539)
!3495 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!25, !3498, !3538, !25}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2474, line: 7, baseType: !3500)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2476, line: 241, size: 1728, elements: !3501)
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3500, file: !2476, line: 242, baseType: !25, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3500, file: !2476, line: 247, baseType: !50, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3500, file: !2476, line: 248, baseType: !50, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3500, file: !2476, line: 249, baseType: !50, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3500, file: !2476, line: 250, baseType: !50, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3500, file: !2476, line: 251, baseType: !50, size: 64, offset: 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3500, file: !2476, line: 252, baseType: !50, size: 64, offset: 384)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3500, file: !2476, line: 253, baseType: !50, size: 64, offset: 448)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3500, file: !2476, line: 254, baseType: !50, size: 64, offset: 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3500, file: !2476, line: 256, baseType: !50, size: 64, offset: 576)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3500, file: !2476, line: 257, baseType: !50, size: 64, offset: 640)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3500, file: !2476, line: 258, baseType: !50, size: 64, offset: 704)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3500, file: !2476, line: 260, baseType: !3515, size: 64, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2476, line: 156, size: 192, elements: !3517)
!3517 = !{!3518, !3519, !3521}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3516, file: !2476, line: 157, baseType: !3515, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3516, file: !2476, line: 158, baseType: !3520, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3516, file: !2476, line: 162, baseType: !25, size: 32, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3500, file: !2476, line: 262, baseType: !3520, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3500, file: !2476, line: 264, baseType: !25, size: 32, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3500, file: !2476, line: 268, baseType: !25, size: 32, offset: 928)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3500, file: !2476, line: 270, baseType: !2502, size: 64, offset: 960)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3500, file: !2476, line: 274, baseType: !93, size: 16, offset: 1024)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3500, file: !2476, line: 275, baseType: !2507, size: 8, offset: 1040)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3500, file: !2476, line: 276, baseType: !2509, size: 8, offset: 1048)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3500, file: !2476, line: 280, baseType: !2511, size: 64, offset: 1088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3500, file: !2476, line: 289, baseType: !2514, size: 64, offset: 1152)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3500, file: !2476, line: 297, baseType: !49, size: 64, offset: 1216)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3500, file: !2476, line: 298, baseType: !49, size: 64, offset: 1280)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3500, file: !2476, line: 299, baseType: !49, size: 64, offset: 1344)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3500, file: !2476, line: 300, baseType: !49, size: 64, offset: 1408)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3500, file: !2476, line: 302, baseType: !94, size: 64, offset: 1472)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3500, file: !2476, line: 303, baseType: !25, size: 32, offset: 1536)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3500, file: !2476, line: 305, baseType: !2522, size: 160, offset: 1568)
!3538 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !730, line: 57, baseType: !2502)
!3539 = !{!3540, !3541, !3542, !3543}
!3540 = !DILocalVariable(name: "fp", arg: 1, scope: !3494, file: !3495, line: 28, type: !3498)
!3541 = !DILocalVariable(name: "offset", arg: 2, scope: !3494, file: !3495, line: 28, type: !3538)
!3542 = !DILocalVariable(name: "whence", arg: 3, scope: !3494, file: !3495, line: 28, type: !25)
!3543 = !DILocalVariable(name: "pos", scope: !3544, file: !3495, line: 116, type: !3538)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !3495, line: 112, column: 5)
!3545 = distinct !DILexicalBlock(scope: !3494, file: !3495, line: 51, column: 7)
!3546 = !DILocation(line: 28, column: 15, scope: !3494)
!3547 = !DILocation(line: 28, column: 25, scope: !3494)
!3548 = !DILocation(line: 28, column: 37, scope: !3494)
!3549 = !DILocation(line: 51, column: 11, scope: !3545)
!3550 = !DILocation(line: 51, column: 31, scope: !3545)
!3551 = !DILocation(line: 51, column: 24, scope: !3545)
!3552 = !DILocation(line: 52, column: 7, scope: !3545)
!3553 = !DILocation(line: 52, column: 14, scope: !3545)
!3554 = !{!3049, !584, i64 40}
!3555 = !DILocation(line: 52, column: 35, scope: !3545)
!3556 = !{!3049, !584, i64 32}
!3557 = !DILocation(line: 52, column: 28, scope: !3545)
!3558 = !DILocation(line: 53, column: 7, scope: !3545)
!3559 = !DILocation(line: 53, column: 14, scope: !3545)
!3560 = !{!3049, !584, i64 72}
!3561 = !DILocation(line: 53, column: 28, scope: !3545)
!3562 = !DILocation(line: 51, column: 7, scope: !3494)
!3563 = !DILocation(line: 116, column: 26, scope: !3544)
!3564 = !DILocation(line: 116, column: 19, scope: !3544)
!3565 = !DILocation(line: 116, column: 13, scope: !3544)
!3566 = !DILocation(line: 117, column: 15, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3544, file: !3495, line: 117, column: 11)
!3568 = !DILocation(line: 117, column: 11, scope: !3544)
!3569 = !DILocation(line: 127, column: 11, scope: !3544)
!3570 = !DILocation(line: 127, column: 18, scope: !3544)
!3571 = !DILocation(line: 128, column: 11, scope: !3544)
!3572 = !DILocation(line: 128, column: 19, scope: !3544)
!3573 = !{!3049, !1791, i64 144}
!3574 = !DILocation(line: 159, column: 7, scope: !3544)
!3575 = !DILocation(line: 161, column: 10, scope: !3494)
!3576 = !DILocation(line: 161, column: 3, scope: !3494)
!3577 = !DILocation(line: 162, column: 1, scope: !3494)
