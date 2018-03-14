; ModuleID = 'coreutils-8.27/src/link.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s FILE1 FILE2\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Call the link function to create a link named FILE2 to an existing FILE1.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"cannot create link %s to %s\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !0
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.18 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.31, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.32, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.37 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.38 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.39 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.43, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.49, i32 0, i32 0), i8* null], align 16, !dbg !53
@.str.40 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.41 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.42 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.43 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.44 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.45 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.46 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.47 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.48 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.49 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.50 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.51 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.52 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.53 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.54 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.55 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
@.str.62 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.63 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.64 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.65 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.66 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.67 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.68 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.69 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.70 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.71 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.72 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.73 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.74 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.75 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.78 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.79 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.80 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.81 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.92 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.103 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.106 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.107 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.108 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.109 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.110 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.111 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

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
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !587
  %10 = load i8*, i8** @program_name, align 8, !dbg !587, !tbaa !583
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !587
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !589
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !583
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !589
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !590
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590, !tbaa !583
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !590
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !591
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !591, !tbaa !583
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !591
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !511, metadata !576) #10, !dbg !592
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !511, metadata !576) #10, !dbg !592
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !594
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !594
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !595
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !519, metadata !576) #10, !dbg !596
  %24 = icmp eq i8* %23, null, !dbg !597
  br i1 %24, label %31, label %25, !dbg !599

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !600
  %27 = icmp eq i32 %26, 0, !dbg !600
  br i1 %27, label %31, label %28, !dbg !601

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !602
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !602
  br label %31, !dbg !604

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !605
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !605
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !606
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !606
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
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !624
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !625
  %10 = icmp eq i32 %9, -1, !dbg !627
  br i1 %10, label %12, label %11, !dbg !628

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !629
  unreachable, !dbg !629

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !630, !tbaa !632
  %14 = add nsw i32 %13, 2, !dbg !634
  %15 = icmp sgt i32 %14, %0, !dbg !635
  br i1 %15, label %16, label %28, !dbg !636

; <label>:16:                                     ; preds = %12
  %17 = icmp slt i32 %13, %0, !dbg !637
  br i1 %17, label %20, label %18, !dbg !640

; <label>:18:                                     ; preds = %16
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !641
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #10, !dbg !642
  br label %27, !dbg !642

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !643
  %22 = load i32, i32* @optind, align 4, !dbg !644, !tbaa !632
  %23 = sext i32 %22 to i64, !dbg !645
  %24 = getelementptr inbounds i8*, i8** %1, i64 %23, !dbg !645
  %25 = load i8*, i8** %24, align 8, !dbg !645, !tbaa !583
  %26 = tail call i8* @quote(i8* %25) #10, !dbg !646
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21, i8* %26) #10, !dbg !647
  br label %27

; <label>:27:                                     ; preds = %20, %18
  tail call void @usage(i32 1) #16, !dbg !648
  unreachable, !dbg !648

; <label>:28:                                     ; preds = %12
  %29 = icmp slt i32 %14, %0, !dbg !649
  br i1 %29, label %30, label %38, !dbg !651

; <label>:30:                                     ; preds = %28
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !652
  %32 = load i32, i32* @optind, align 4, !dbg !654, !tbaa !632
  %33 = add nsw i32 %32, 2, !dbg !655
  %34 = sext i32 %33 to i64, !dbg !656
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !656
  %36 = load i8*, i8** %35, align 8, !dbg !656, !tbaa !583
  %37 = tail call i8* @quote(i8* %36) #10, !dbg !657
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %31, i8* %37) #10, !dbg !658
  tail call void @usage(i32 1) #16, !dbg !659
  unreachable, !dbg !659

; <label>:38:                                     ; preds = %28
  %39 = sext i32 %13 to i64, !dbg !660
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39, !dbg !660
  %41 = load i8*, i8** %40, align 8, !dbg !660, !tbaa !583
  %42 = add nsw i32 %13, 1, !dbg !662
  %43 = sext i32 %42 to i64, !dbg !663
  %44 = getelementptr inbounds i8*, i8** %1, i64 %43, !dbg !663
  %45 = load i8*, i8** %44, align 8, !dbg !663, !tbaa !583
  %46 = tail call i32 @link(i8* %41, i8* %45) #10, !dbg !664
  %47 = icmp eq i32 %46, 0, !dbg !665
  br i1 %47, label %63, label %48, !dbg !666

; <label>:48:                                     ; preds = %38
  %49 = tail call i32* @__errno_location() #17, !dbg !667
  %50 = load i32, i32* %49, align 4, !dbg !667, !tbaa !632
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !667
  %52 = load i32, i32* @optind, align 4, !dbg !667, !tbaa !632
  %53 = add nsw i32 %52, 1, !dbg !667
  %54 = sext i32 %53 to i64, !dbg !667
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !667
  %56 = load i8*, i8** %55, align 8, !dbg !667, !tbaa !583
  %57 = tail call i8* @quotearg_n_style(i32 0, i32 4, i8* %56) #10, !dbg !667
  %58 = load i32, i32* @optind, align 4, !dbg !667, !tbaa !632
  %59 = sext i32 %58 to i64, !dbg !667
  %60 = getelementptr inbounds i8*, i8** %1, i64 %59, !dbg !667
  %61 = load i8*, i8** %60, align 8, !dbg !667, !tbaa !583
  %62 = tail call i8* @quotearg_n_style(i32 1, i32 4, i8* %61) #10, !dbg !667
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %50, i8* %51, i8* %57, i8* %62) #10, !dbg !667
  unreachable, !dbg !667

; <label>:63:                                     ; preds = %38
  ret i32 0, !dbg !668
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
declare i32 @link(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !669 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !671, metadata !576), !dbg !672
  store i8* %0, i8** @file_name, align 8, !dbg !673, !tbaa !583
  ret void, !dbg !674
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !675 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !679, metadata !576), !dbg !680
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !681, !tbaa !682
  ret void, !dbg !684
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !685 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !692, !tbaa !583
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !693
  %3 = icmp eq i32 %2, 0, !dbg !694
  br i1 %3, label %21, label %4, !dbg !695

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !696, !tbaa !682, !range !697
  %6 = icmp eq i8 %5, 0, !dbg !696
  %7 = tail call i32* @__errno_location() #17, !dbg !698
  br i1 %6, label %11, label %8, !dbg !700

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !701, !tbaa !632
  %10 = icmp eq i32 %9, 32, !dbg !702
  br i1 %10, label %21, label %11, !dbg !703

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !704
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !689, metadata !576), !dbg !705
  %13 = load i8*, i8** @file_name, align 8, !dbg !706, !tbaa !583
  %14 = icmp eq i8* %13, null, !dbg !706
  %15 = load i32, i32* %7, align 4, !tbaa !632
  br i1 %14, label %18, label %16, !dbg !707

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !708
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.19, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !709
  br label %19, !dbg !709

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i8* %12) #10, !dbg !710
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !711, !tbaa !632
  tail call void @_exit(i32 %20) #15, !dbg !712
  unreachable, !dbg !712

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !713, !tbaa !583
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !715
  %24 = icmp eq i32 %23, 0, !dbg !716
  br i1 %24, label %27, label %25, !dbg !717

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !718, !tbaa !632
  tail call void @_exit(i32 %26) #15, !dbg !719
  unreachable, !dbg !719

; <label>:27:                                     ; preds = %21
  ret void, !dbg !720
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !721 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !726, metadata !576), !dbg !753
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !727, metadata !576), !dbg !754
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !728, metadata !576), !dbg !755
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !729, metadata !576), !dbg !756
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !730, metadata !576), !dbg !757
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !731, metadata !576), !dbg !758
  %8 = load i32, i32* @opterr, align 4, !dbg !759, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !733, metadata !576), !dbg !760
  store i32 0, i32* @opterr, align 4, !dbg !761, !tbaa !632
  %9 = icmp eq i32 %0, 2, !dbg !762
  br i1 %9, label %10, label %17, !dbg !763

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !764
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !732, metadata !576), !dbg !765
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !766

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !767
  br label %17, !dbg !768

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !769
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !769
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !734, metadata !576), !dbg !770
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !771
  call void @llvm.va_start(i8* nonnull %14), !dbg !771
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !772, !tbaa !583
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !773
  call void @exit(i32 0) #15, !dbg !774
  unreachable, !dbg !774

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !775, !tbaa !632
  store i32 0, i32* @optind, align 4, !dbg !776, !tbaa !632
  ret void, !dbg !777
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !778 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !780, metadata !576), !dbg !783
  %2 = icmp eq i8* %0, null, !dbg !784
  br i1 %2, label %3, label %6, !dbg !786

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !787, !tbaa !583
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !789
  tail call void @abort() #15, !dbg !790
  unreachable, !dbg !790

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !791
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !781, metadata !576), !dbg !792
  %8 = icmp eq i8* %7, null, !dbg !793
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !794
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !795
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !782, metadata !576), !dbg !796
  %11 = ptrtoint i8* %10 to i64, !dbg !797
  %12 = ptrtoint i8* %0 to i64, !dbg !797
  %13 = sub i64 %11, %12, !dbg !797
  %14 = icmp sgt i64 %13, 6, !dbg !799
  br i1 %14, label %15, label %24, !dbg !800

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !801
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.38, i64 0, i64 0), i64 7) #14, !dbg !802
  %18 = icmp eq i32 %17, 0, !dbg !803
  br i1 %18, label %19, label %24, !dbg !804

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !780, metadata !576), !dbg !783
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.39, i64 0, i64 0), i64 3) #14, !dbg !805
  %21 = icmp eq i32 %20, 0, !dbg !808
  br i1 %21, label %22, label %24, !dbg !809

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !810
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !780, metadata !576), !dbg !783
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !812, !tbaa !583
  br label %24, !dbg !813

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !780, metadata !576), !dbg !783
  store i8* %25, i8** @program_name, align 8, !dbg !814, !tbaa !583
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !815, !tbaa !583
  ret void, !dbg !816
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !817 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !822, metadata !576), !dbg !825
  %2 = tail call i32* @__errno_location() #17, !dbg !826
  %3 = load i32, i32* %2, align 4, !dbg !826, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !823, metadata !576), !dbg !827
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !828
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !828
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !828
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !829
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !824, metadata !576), !dbg !830
  store i32 %3, i32* %2, align 4, !dbg !831, !tbaa !632
  ret %struct.quoting_options* %8, !dbg !832
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !833 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !839, metadata !576), !dbg !840
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !841
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !841
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !842
  %5 = load i32, i32* %4, align 8, !dbg !842, !tbaa !843
  ret i32 %5, !dbg !845
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !846 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !850, metadata !576), !dbg !852
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !851, metadata !576), !dbg !853
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !854
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !854
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !855
  store i32 %1, i32* %5, align 8, !dbg !856, !tbaa !843
  ret void, !dbg !857
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !858 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !862, metadata !576), !dbg !870
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !863, metadata !576), !dbg !871
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !864, metadata !576), !dbg !872
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !865, metadata !576), !dbg !873
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !874
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !874
  %6 = lshr i8 %1, 5, !dbg !875
  %7 = zext i8 %6 to i64, !dbg !875
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !876
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !866, metadata !576), !dbg !877
  %9 = and i8 %1, 31, !dbg !878
  %10 = zext i8 %9 to i32, !dbg !879
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !868, metadata !576), !dbg !880
  %11 = load i32, i32* %8, align 4, !dbg !881, !tbaa !632
  %12 = lshr i32 %11, %10, !dbg !882
  %13 = and i32 %12, 1, !dbg !883
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !869, metadata !576), !dbg !884
  %14 = and i32 %2, 1, !dbg !885
  %15 = xor i32 %13, %14, !dbg !886
  %16 = shl i32 %15, %10, !dbg !887
  %17 = xor i32 %16, %11, !dbg !888
  store i32 %17, i32* %8, align 4, !dbg !888, !tbaa !632
  ret i32 %13, !dbg !889
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !890 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !894, metadata !576), !dbg !897
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !895, metadata !576), !dbg !898
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !899
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !894, metadata !576), !dbg !897
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !901
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !894, metadata !576), !dbg !897
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !902
  %6 = load i32, i32* %5, align 4, !dbg !902, !tbaa !903
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !896, metadata !576), !dbg !904
  store i32 %1, i32* %5, align 4, !dbg !905, !tbaa !903
  ret i32 %6, !dbg !906
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !907 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !911, metadata !576), !dbg !914
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !912, metadata !576), !dbg !915
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !913, metadata !576), !dbg !916
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !911, metadata !576), !dbg !914
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !919
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !911, metadata !576), !dbg !914
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !920
  store i32 10, i32* %6, align 8, !dbg !921, !tbaa !843
  %7 = icmp ne i8* %1, null, !dbg !922
  %8 = icmp ne i8* %2, null, !dbg !924
  %9 = and i1 %7, %8, !dbg !925
  br i1 %9, label %11, label %10, !dbg !925

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !926
  unreachable, !dbg !926

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !927
  store i8* %1, i8** %12, align 8, !dbg !928, !tbaa !929
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !930
  store i8* %2, i8** %13, align 8, !dbg !931, !tbaa !932
  ret void, !dbg !933
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !934 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !938, metadata !576), !dbg !946
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !939, metadata !576), !dbg !947
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !940, metadata !576), !dbg !948
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !941, metadata !576), !dbg !949
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !942, metadata !576), !dbg !950
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !951
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !951
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !943, metadata !576), !dbg !952
  %8 = tail call i32* @__errno_location() #17, !dbg !953
  %9 = load i32, i32* %8, align 4, !dbg !953, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !944, metadata !576), !dbg !954
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !955
  %11 = load i32, i32* %10, align 8, !dbg !955, !tbaa !843
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !956
  %13 = load i32, i32* %12, align 4, !dbg !956, !tbaa !903
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !957
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !958
  %16 = load i8*, i8** %15, align 8, !dbg !958, !tbaa !929
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !959
  %18 = load i8*, i8** %17, align 8, !dbg !959, !tbaa !932
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !960
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !945, metadata !576), !dbg !961
  store i32 %9, i32* %8, align 4, !dbg !962, !tbaa !632
  ret i64 %19, !dbg !963
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !964 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !970, metadata !576), !dbg !1034
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !971, metadata !576), !dbg !1035
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !972, metadata !576), !dbg !1036
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !973, metadata !576), !dbg !1037
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !974, metadata !576), !dbg !1038
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !975, metadata !576), !dbg !1039
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !976, metadata !576), !dbg !1040
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !977, metadata !576), !dbg !1041
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !978, metadata !576), !dbg !1042
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !980, metadata !576), !dbg !1043
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !981, metadata !576), !dbg !1044
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !982, metadata !576), !dbg !1045
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !983, metadata !576), !dbg !1046
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !984, metadata !576), !dbg !1047
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1048
  %14 = icmp eq i64 %13, 1, !dbg !1049
  %15 = lshr i32 %5, 1, !dbg !1050
  %16 = trunc i32 %15 to i8, !dbg !1050
  %17 = and i8 %16, 1, !dbg !1050
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !986, metadata !576), !dbg !1050
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !987, metadata !576), !dbg !1051
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !988, metadata !576), !dbg !1052
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !989, metadata !576), !dbg !1053
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1054

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !971, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !989, metadata !576), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !988, metadata !576), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !986, metadata !576), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !973, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !984, metadata !576), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !983, metadata !576), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !982, metadata !576), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !981, metadata !576), !dbg !1044
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !978, metadata !576), !dbg !1042
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !974, metadata !576), !dbg !1038
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
  ], !dbg !1055

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !974, metadata !576), !dbg !1038
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !986, metadata !576), !dbg !1050
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !986, metadata !576), !dbg !1050
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !974, metadata !576), !dbg !1038
  br label %94, !dbg !1056

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !986, metadata !576), !dbg !1050
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !974, metadata !576), !dbg !1038
  %43 = and i8 %36, 1, !dbg !1058
  %44 = icmp eq i8 %43, 0, !dbg !1058
  br i1 %44, label %45, label %94, !dbg !1056

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1060
  br i1 %46, label %94, label %47, !dbg !1063

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1060, !tbaa !1064
  br label %94, !dbg !1060

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.50, i64 0, i64 0), i32 %28), !dbg !1065
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !977, metadata !576), !dbg !1041
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), i32 %28), !dbg !1069
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !978, metadata !576), !dbg !1042
  br label %51, !dbg !1070

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !978, metadata !576), !dbg !1042
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !977, metadata !576), !dbg !1041
  %54 = and i8 %36, 1, !dbg !1071
  %55 = icmp eq i8 %54, 0, !dbg !1071
  br i1 %55, label %56, label %72, !dbg !1073

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !982, metadata !576), !dbg !1045
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !982, metadata !576), !dbg !1045
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !980, metadata !576), !dbg !1043
  %57 = load i8, i8* %52, align 1, !dbg !1074, !tbaa !1064
  %58 = icmp eq i8 %57, 0, !dbg !1077
  br i1 %58, label %72, label %59, !dbg !1077

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1078

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !982, metadata !576), !dbg !1045
  %64 = icmp ult i64 %63, %40, !dbg !1078
  br i1 %64, label %65, label %67, !dbg !1081

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1078
  store i8 %61, i8* %66, align 1, !dbg !1078, !tbaa !1064
  br label %67, !dbg !1078

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !980, metadata !576), !dbg !1043
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1082
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !982, metadata !576), !dbg !1045
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !982, metadata !576), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !980, metadata !576), !dbg !1043
  %70 = load i8, i8* %69, align 1, !dbg !1074, !tbaa !1064
  %71 = icmp eq i8 %70, 0, !dbg !1077
  br i1 %71, label %72, label %60, !dbg !1077, !llvm.loop !1083

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !984, metadata !576), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !982, metadata !576), !dbg !1045
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !983, metadata !576), !dbg !1046
  br label %94, !dbg !1086

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !984, metadata !576), !dbg !1047
  br label %76, !dbg !1087

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !984, metadata !576), !dbg !1047
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !986, metadata !576), !dbg !1050
  br label %78, !dbg !1088

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !986, metadata !576), !dbg !1050
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !984, metadata !576), !dbg !1047
  %81 = and i8 %80, 1, !dbg !1089
  %82 = icmp eq i8 %81, 0, !dbg !1089
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !984, metadata !576), !dbg !1047
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1091
  br label %84, !dbg !1091

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !986, metadata !576), !dbg !1050
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !984, metadata !576), !dbg !1047
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !974, metadata !576), !dbg !1038
  %87 = and i8 %86, 1, !dbg !1092
  %88 = icmp eq i8 %87, 0, !dbg !1092
  br i1 %88, label %89, label %94, !dbg !1094

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1095
  br i1 %90, label %94, label %91, !dbg !1098

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1095, !tbaa !1064
  br label %94, !dbg !1095

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !986, metadata !576), !dbg !1050
  br label %94, !dbg !1099

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1100
  unreachable, !dbg !1100

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !986, metadata !576), !dbg !1050
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !984, metadata !576), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !983, metadata !576), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !982, metadata !576), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !978, metadata !576), !dbg !1042
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !977, metadata !576), !dbg !1041
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !974, metadata !576), !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !979, metadata !576), !dbg !1101
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
  br label %122, !dbg !1102

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !971, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !989, metadata !576), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !988, metadata !576), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !973, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !981, metadata !576), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !979, metadata !576), !dbg !1101
  %131 = icmp eq i64 %126, -1, !dbg !1103
  br i1 %131, label %134, label %132, !dbg !1104

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1105
  br i1 %133, label %590, label %138, !dbg !1106

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1107
  %136 = load i8, i8* %135, align 1, !dbg !1107, !tbaa !1064
  %137 = icmp eq i8 %136, 0, !dbg !1108
  br i1 %137, label %590, label %138, !dbg !1106

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !995, metadata !576), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !996, metadata !576), !dbg !1110
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !997, metadata !576), !dbg !1111
  br i1 %108, label %139, label %154, !dbg !1112

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1114
  %141 = and i1 %109, %131, !dbg !1115
  br i1 %141, label %142, label %144, !dbg !1115

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1116
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !973, metadata !576), !dbg !1037
  br label %144, !dbg !1117

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !973, metadata !576), !dbg !1037
  %146 = icmp ugt i64 %140, %145, !dbg !1118
  br i1 %146, label %154, label %147, !dbg !1119

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1120
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1121
  %150 = icmp ne i32 %149, 0, !dbg !1122
  %151 = or i1 %150, %111, !dbg !1123
  %152 = xor i1 %150, true, !dbg !1123
  %153 = zext i1 %152 to i8, !dbg !1123
  br i1 %151, label %154, label %635, !dbg !1123

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !995, metadata !576), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !973, metadata !576), !dbg !1037
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1124
  %158 = load i8, i8* %157, align 1, !dbg !1124, !tbaa !1064
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !990, metadata !576), !dbg !1125
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
  ], !dbg !1126

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1127

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1128

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !996, metadata !576), !dbg !1110
  %162 = and i8 %127, 1, !dbg !1132
  %163 = icmp eq i8 %162, 0, !dbg !1132
  %164 = and i1 %113, %163, !dbg !1132
  br i1 %164, label %165, label %181, !dbg !1132

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1134
  br i1 %166, label %167, label %169, !dbg !1138

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1134
  store i8 39, i8* %168, align 1, !dbg !1134, !tbaa !1064
  br label %169, !dbg !1134

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1138
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !980, metadata !576), !dbg !1043
  %171 = icmp ult i64 %170, %130, !dbg !1139
  br i1 %171, label %172, label %174, !dbg !1142

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1139
  store i8 36, i8* %173, align 1, !dbg !1139, !tbaa !1064
  br label %174, !dbg !1139

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1142
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !980, metadata !576), !dbg !1043
  %176 = icmp ult i64 %175, %130, !dbg !1143
  br i1 %176, label %177, label %179, !dbg !1146

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1143
  store i8 39, i8* %178, align 1, !dbg !1143, !tbaa !1064
  br label %179, !dbg !1143

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !987, metadata !576), !dbg !1051
  br label %181, !dbg !1147

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !980, metadata !576), !dbg !1043
  %184 = icmp ult i64 %182, %130, !dbg !1148
  br i1 %184, label %185, label %187, !dbg !1151

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1148
  store i8 92, i8* %186, align 1, !dbg !1148, !tbaa !1064
  br label %187, !dbg !1148

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !980, metadata !576), !dbg !1043
  br i1 %105, label %189, label %470, !dbg !1152

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1154
  %191 = icmp ult i64 %190, %155, !dbg !1155
  br i1 %191, label %192, label %470, !dbg !1156

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1157
  %194 = load i8, i8* %193, align 1, !dbg !1157, !tbaa !1064
  %195 = add i8 %194, -48, !dbg !1158
  %196 = icmp ult i8 %195, 10, !dbg !1158
  br i1 %196, label %197, label %470, !dbg !1158

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1159
  br i1 %198, label %199, label %201, !dbg !1163

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1159
  store i8 48, i8* %200, align 1, !dbg !1159, !tbaa !1064
  br label %201, !dbg !1159

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1163
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !980, metadata !576), !dbg !1043
  %203 = icmp ult i64 %202, %130, !dbg !1164
  br i1 %203, label %204, label %206, !dbg !1167

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1164
  store i8 48, i8* %205, align 1, !dbg !1164, !tbaa !1064
  br label %206, !dbg !1164

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1167
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !980, metadata !576), !dbg !1043
  br label %470, !dbg !1168

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1169

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1170

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1171

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1173

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1175
  %214 = icmp ult i64 %213, %155, !dbg !1176
  br i1 %214, label %215, label %470, !dbg !1177

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1178
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1179
  %218 = load i8, i8* %217, align 1, !dbg !1179, !tbaa !1064
  %219 = icmp eq i8 %218, 63, !dbg !1180
  br i1 %219, label %220, label %470, !dbg !1181

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1182
  %222 = load i8, i8* %221, align 1, !dbg !1182, !tbaa !1064
  %223 = sext i8 %222 to i32, !dbg !1182
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
  ], !dbg !1183

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1184

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !990, metadata !576), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !979, metadata !576), !dbg !1101
  %226 = icmp ult i64 %124, %130, !dbg !1186
  br i1 %226, label %227, label %229, !dbg !1189

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1186
  store i8 63, i8* %228, align 1, !dbg !1186, !tbaa !1064
  br label %229, !dbg !1186

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !980, metadata !576), !dbg !1043
  %231 = icmp ult i64 %230, %130, !dbg !1190
  br i1 %231, label %232, label %234, !dbg !1193

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1190
  store i8 34, i8* %233, align 1, !dbg !1190, !tbaa !1064
  br label %234, !dbg !1190

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1193
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !980, metadata !576), !dbg !1043
  %236 = icmp ult i64 %235, %130, !dbg !1194
  br i1 %236, label %237, label %239, !dbg !1197

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1194
  store i8 34, i8* %238, align 1, !dbg !1194, !tbaa !1064
  br label %239, !dbg !1194

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1197
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !980, metadata !576), !dbg !1043
  %241 = icmp ult i64 %240, %130, !dbg !1198
  br i1 %241, label %242, label %244, !dbg !1201

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1198
  store i8 63, i8* %243, align 1, !dbg !1198, !tbaa !1064
  br label %244, !dbg !1198

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !980, metadata !576), !dbg !1043
  br label %470, !dbg !1202

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !994, metadata !576), !dbg !1203
  br label %256, !dbg !1204

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !994, metadata !576), !dbg !1203
  br label %256, !dbg !1205

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !994, metadata !576), !dbg !1203
  br label %254, !dbg !1206

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !994, metadata !576), !dbg !1203
  br label %254, !dbg !1207

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !994, metadata !576), !dbg !1203
  br label %256, !dbg !1208

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !994, metadata !576), !dbg !1203
  br i1 %113, label %252, label %253, !dbg !1209

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1210

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1213

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !994, metadata !576), !dbg !1203
  br i1 %117, label %256, label %635, !dbg !1215

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !994, metadata !576), !dbg !1203
  br i1 %104, label %497, label %470, !dbg !1217

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1218
  br i1 %259, label %260, label %265, !dbg !1220

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1221, !tbaa !1064
  %262 = icmp ne i8 %261, 0, !dbg !1222
  %263 = icmp ne i64 %123, 0, !dbg !1223
  %264 = or i1 %263, %262, !dbg !1225
  br i1 %264, label %470, label %271, !dbg !1225

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1226
  %267 = icmp ne i64 %123, 0, !dbg !1223
  %268 = or i1 %267, %266, !dbg !1220
  br i1 %268, label %470, label %271, !dbg !1220

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1223
  br i1 %270, label %271, label %470, !dbg !1227

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !997, metadata !576), !dbg !1111
  br label %272, !dbg !1228

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !997, metadata !576), !dbg !1111
  br i1 %117, label %470, label %635, !dbg !1229

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !988, metadata !576), !dbg !1052
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !997, metadata !576), !dbg !1111
  br i1 %113, label %275, label %470, !dbg !1231

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1232

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1235
  %278 = icmp ne i64 %125, 0, !dbg !1237
  %279 = or i1 %278, %277, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !981, metadata !576), !dbg !1044
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !971, metadata !576), !dbg !1035
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1238
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !971, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !981, metadata !576), !dbg !1044
  %282 = icmp ult i64 %124, %281, !dbg !1239
  br i1 %282, label %283, label %285, !dbg !1242

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1239
  store i8 39, i8* %284, align 1, !dbg !1239, !tbaa !1064
  br label %285, !dbg !1239

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !980, metadata !576), !dbg !1043
  %287 = icmp ult i64 %286, %281, !dbg !1243
  br i1 %287, label %288, label %290, !dbg !1246

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1243
  store i8 92, i8* %289, align 1, !dbg !1243, !tbaa !1064
  br label %290, !dbg !1243

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !980, metadata !576), !dbg !1043
  %292 = icmp ult i64 %291, %281, !dbg !1247
  br i1 %292, label %293, label %295, !dbg !1250

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1247
  store i8 39, i8* %294, align 1, !dbg !1247, !tbaa !1064
  br label %295, !dbg !1247

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !987, metadata !576), !dbg !1051
  br label %470, !dbg !1251

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1252

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !998, metadata !576), !dbg !1253
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1254
  %300 = load i16*, i16** %299, align 8, !dbg !1254, !tbaa !583
  %301 = zext i8 %158 to i64, !dbg !1254
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1254
  %303 = load i16, i16* %302, align 2, !dbg !1254, !tbaa !1256
  %304 = lshr i16 %303, 14, !dbg !1258
  %305 = trunc i16 %304 to i8, !dbg !1258
  %306 = and i8 %305, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1001, metadata !576), !dbg !1259
  br label %362, !dbg !1260

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1261
  store i64 0, i64* %10, align 8, !dbg !1262
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !998, metadata !576), !dbg !1253
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1001, metadata !576), !dbg !1259
  %308 = icmp eq i64 %155, -1, !dbg !1263
  br i1 %308, label %309, label %311, !dbg !1265

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !973, metadata !576), !dbg !1037
  br label %311, !dbg !1267

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !973, metadata !576), !dbg !1037
  br label %313, !dbg !1268, !llvm.loop !1269

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1001, metadata !576), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !998, metadata !576), !dbg !1253
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1271
  %316 = add i64 %314, %123, !dbg !1272
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1273
  %318 = sub i64 %312, %316, !dbg !1274
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1002, metadata !576), !dbg !1275
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1020, metadata !576), !dbg !1276
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1023, metadata !576), !dbg !1278
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1279

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1001, metadata !576), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !998, metadata !576), !dbg !1253
  %321 = icmp ugt i64 %312, %316, !dbg !1280
  br i1 %321, label %322, label %347, !dbg !1282

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1283

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !998, metadata !576), !dbg !1253
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1283
  %327 = load i8, i8* %326, align 1, !dbg !1283, !tbaa !1064
  %328 = icmp eq i8 %327, 0, !dbg !1282
  br i1 %328, label %347, label %329, !dbg !1284

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !998, metadata !576), !dbg !1253
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !998, metadata !576), !dbg !1253
  %331 = add i64 %330, %123, !dbg !1286
  %332 = icmp ult i64 %331, %312, !dbg !1280
  br i1 %332, label %323, label %347, !dbg !1282, !llvm.loop !1287

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1288
  %335 = and i1 %115, %334, !dbg !1291
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1024, metadata !576), !dbg !1292
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1024, metadata !576), !dbg !1292
  br i1 %335, label %336, label %350, !dbg !1291

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1293

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1024, metadata !576), !dbg !1292
  %339 = add i64 %338, %316, !dbg !1293
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1294
  %341 = load i8, i8* %340, align 1, !dbg !1294, !tbaa !1064
  %342 = sext i8 %341 to i32, !dbg !1294
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1295

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1024, metadata !576), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1024, metadata !576), !dbg !1292
  %345 = icmp ult i64 %344, %319, !dbg !1288
  br i1 %345, label %337, label %350, !dbg !1297, !llvm.loop !1298

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1300

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1001, metadata !576), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !998, metadata !576), !dbg !1253
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1300
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1301, !tbaa !632
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1020, metadata !576), !dbg !1276
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1303
  %353 = icmp eq i32 %352, 0, !dbg !1303
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1001, metadata !576), !dbg !1259
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1304
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1001, metadata !576), !dbg !1259
  %355 = add i64 %319, %314, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !998, metadata !576), !dbg !1253
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1001, metadata !576), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !998, metadata !576), !dbg !1253
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1300
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1002, metadata !576), !dbg !1275
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1306
  %357 = icmp eq i32 %356, 0, !dbg !1307
  br i1 %357, label %313, label %358, !dbg !1308, !llvm.loop !1269

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1309
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1001, metadata !576), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !998, metadata !576), !dbg !1253
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1300
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1309
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1001, metadata !576), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !998, metadata !576), !dbg !1253
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !973, metadata !576), !dbg !1037
  %366 = and i8 %365, 1, !dbg !1310
  %367 = icmp ne i8 %366, 0, !dbg !1310
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !997, metadata !576), !dbg !1111
  %368 = icmp ult i64 %364, 2, !dbg !1311
  %369 = or i1 %367, %112, !dbg !1312
  %370 = and i1 %368, %369, !dbg !1313
  br i1 %370, label %470, label %371, !dbg !1313

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1031, metadata !576), !dbg !1315
  br label %373, !dbg !1316

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !996, metadata !576), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !995, metadata !576), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !990, metadata !576), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !979, metadata !576), !dbg !1101
  br i1 %369, label %426, label %380, !dbg !1317

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1322

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !996, metadata !576), !dbg !1110
  %382 = and i8 %376, 1, !dbg !1325
  %383 = icmp eq i8 %382, 0, !dbg !1325
  %384 = and i1 %113, %383, !dbg !1325
  br i1 %384, label %385, label %401, !dbg !1325

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1327
  br i1 %386, label %387, label %389, !dbg !1331

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1327
  store i8 39, i8* %388, align 1, !dbg !1327, !tbaa !1064
  br label %389, !dbg !1327

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !980, metadata !576), !dbg !1043
  %391 = icmp ult i64 %390, %130, !dbg !1332
  br i1 %391, label %392, label %394, !dbg !1335

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1332
  store i8 36, i8* %393, align 1, !dbg !1332, !tbaa !1064
  br label %394, !dbg !1332

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !980, metadata !576), !dbg !1043
  %396 = icmp ult i64 %395, %130, !dbg !1336
  br i1 %396, label %397, label %399, !dbg !1339

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1336
  store i8 39, i8* %398, align 1, !dbg !1336, !tbaa !1064
  br label %399, !dbg !1336

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !987, metadata !576), !dbg !1051
  br label %401, !dbg !1340

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !980, metadata !576), !dbg !1043
  %404 = icmp ult i64 %402, %130, !dbg !1341
  br i1 %404, label %405, label %407, !dbg !1344

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1341
  store i8 92, i8* %406, align 1, !dbg !1341, !tbaa !1064
  br label %407, !dbg !1341

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !980, metadata !576), !dbg !1043
  %409 = icmp ult i64 %408, %130, !dbg !1345
  br i1 %409, label %410, label %414, !dbg !1348

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1345
  %412 = or i8 %411, 48, !dbg !1345
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1345
  store i8 %412, i8* %413, align 1, !dbg !1345, !tbaa !1064
  br label %414, !dbg !1345

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1348
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !980, metadata !576), !dbg !1043
  %416 = icmp ult i64 %415, %130, !dbg !1349
  br i1 %416, label %417, label %422, !dbg !1352

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1349
  %419 = and i8 %418, 7, !dbg !1349
  %420 = or i8 %419, 48, !dbg !1349
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1349
  store i8 %420, i8* %421, align 1, !dbg !1349, !tbaa !1064
  br label %422, !dbg !1349

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !980, metadata !576), !dbg !1043
  %424 = and i8 %377, 7, !dbg !1353
  %425 = or i8 %424, 48, !dbg !1354
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !990, metadata !576), !dbg !1125
  br label %435, !dbg !1355

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1356
  %428 = icmp eq i8 %427, 0, !dbg !1356
  br i1 %428, label %435, label %429, !dbg !1358

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1359
  br i1 %430, label %431, label %433, !dbg !1363

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1359
  store i8 92, i8* %432, align 1, !dbg !1359, !tbaa !1064
  br label %433, !dbg !1359

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !995, metadata !576), !dbg !1109
  br label %435, !dbg !1364

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !996, metadata !576), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !995, metadata !576), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !990, metadata !576), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !980, metadata !576), !dbg !1043
  %441 = add i64 %374, 1, !dbg !1365
  %442 = icmp ugt i64 %372, %441, !dbg !1367
  br i1 %442, label %443, label %535, !dbg !1368

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1369
  %445 = icmp ne i8 %444, 0, !dbg !1369
  %446 = and i8 %440, 1, !dbg !1369
  %447 = icmp eq i8 %446, 0, !dbg !1369
  %448 = and i1 %445, %447, !dbg !1369
  br i1 %448, label %449, label %460, !dbg !1369

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1372
  br i1 %450, label %451, label %453, !dbg !1376

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1372
  store i8 39, i8* %452, align 1, !dbg !1372, !tbaa !1064
  br label %453, !dbg !1372

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !980, metadata !576), !dbg !1043
  %455 = icmp ult i64 %454, %130, !dbg !1377
  br i1 %455, label %456, label %458, !dbg !1380

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1377
  store i8 39, i8* %457, align 1, !dbg !1377, !tbaa !1064
  br label %458, !dbg !1377

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !987, metadata !576), !dbg !1051
  br label %460, !dbg !1381

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !980, metadata !576), !dbg !1043
  %463 = icmp ult i64 %461, %130, !dbg !1382
  br i1 %463, label %464, label %466, !dbg !1385

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1382
  store i8 %438, i8* %465, align 1, !dbg !1382, !tbaa !1064
  br label %466, !dbg !1382

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !979, metadata !576), !dbg !1101
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1386
  %469 = load i8, i8* %468, align 1, !dbg !1386, !tbaa !1064
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !990, metadata !576), !dbg !1125
  br label %373, !dbg !1387, !llvm.loop !1388

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !971, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !997, metadata !576), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !996, metadata !576), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !995, metadata !576), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !990, metadata !576), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !988, metadata !576), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !973, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !981, metadata !576), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !979, metadata !576), !dbg !1101
  br i1 %106, label %482, label %481, !dbg !1391

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1393

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1394

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1395
  %485 = zext i8 %484 to i64, !dbg !1395
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1396
  %487 = load i32, i32* %486, align 4, !dbg !1396, !tbaa !632
  %488 = and i8 %477, 31, !dbg !1397
  %489 = zext i8 %488 to i32, !dbg !1398
  %490 = shl i32 1, %489, !dbg !1399
  %491 = and i32 %487, %490, !dbg !1399
  %492 = icmp eq i32 %491, 0, !dbg !1399
  %493 = icmp eq i8 %156, 0, !dbg !1400
  %494 = and i1 %493, %492, !dbg !1401
  br i1 %494, label %535, label %497, !dbg !1401

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1400
  br i1 %496, label %535, label %497, !dbg !1402

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !971, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !997, metadata !576), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !990, metadata !576), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !988, metadata !576), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !973, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !981, metadata !576), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !979, metadata !576), !dbg !1101
  br i1 %111, label %507, label %635, !dbg !1403

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !996, metadata !576), !dbg !1110
  %508 = and i8 %502, 1, !dbg !1405
  %509 = icmp eq i8 %508, 0, !dbg !1405
  %510 = and i1 %113, %509, !dbg !1405
  br i1 %510, label %511, label %527, !dbg !1405

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1407
  br i1 %512, label %513, label %515, !dbg !1411

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1407
  store i8 39, i8* %514, align 1, !dbg !1407, !tbaa !1064
  br label %515, !dbg !1407

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !980, metadata !576), !dbg !1043
  %517 = icmp ult i64 %516, %506, !dbg !1412
  br i1 %517, label %518, label %520, !dbg !1415

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1412
  store i8 36, i8* %519, align 1, !dbg !1412, !tbaa !1064
  br label %520, !dbg !1412

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !980, metadata !576), !dbg !1043
  %522 = icmp ult i64 %521, %506, !dbg !1416
  br i1 %522, label %523, label %525, !dbg !1419

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1416
  store i8 39, i8* %524, align 1, !dbg !1416, !tbaa !1064
  br label %525, !dbg !1416

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !987, metadata !576), !dbg !1051
  br label %527, !dbg !1420

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !980, metadata !576), !dbg !1043
  %530 = icmp ult i64 %528, %506, !dbg !1421
  br i1 %530, label %531, label %533, !dbg !1424

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1421
  store i8 92, i8* %532, align 1, !dbg !1421, !tbaa !1064
  br label %533, !dbg !1421

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !971, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !997, metadata !576), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !996, metadata !576), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !990, metadata !576), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !988, metadata !576), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !973, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !981, metadata !576), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !979, metadata !576), !dbg !1101
  br label %562, !dbg !1425

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !971, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !997, metadata !576), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !996, metadata !576), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !990, metadata !576), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !988, metadata !576), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !973, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !981, metadata !576), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !979, metadata !576), !dbg !1101
  %546 = and i8 %540, 1, !dbg !1425
  %547 = icmp ne i8 %546, 0, !dbg !1425
  %548 = and i8 %543, 1, !dbg !1425
  %549 = icmp eq i8 %548, 0, !dbg !1425
  %550 = and i1 %547, %549, !dbg !1425
  br i1 %550, label %551, label %562, !dbg !1425

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1428
  br i1 %552, label %553, label %555, !dbg !1432

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1428
  store i8 39, i8* %554, align 1, !dbg !1428, !tbaa !1064
  br label %555, !dbg !1428

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !980, metadata !576), !dbg !1043
  %557 = icmp ult i64 %556, %545, !dbg !1433
  br i1 %557, label %558, label %560, !dbg !1436

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1433
  store i8 39, i8* %559, align 1, !dbg !1433, !tbaa !1064
  br label %560, !dbg !1433

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !987, metadata !576), !dbg !1051
  br label %562, !dbg !1437

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !980, metadata !576), !dbg !1043
  %572 = icmp ult i64 %570, %563, !dbg !1438
  br i1 %572, label %573, label %575, !dbg !1441

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1438
  store i8 %565, i8* %574, align 1, !dbg !1438, !tbaa !1064
  br label %575, !dbg !1438

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !980, metadata !576), !dbg !1043
  %577 = and i8 %564, 1, !dbg !1442
  %578 = icmp eq i8 %577, 0, !dbg !1442
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !989, metadata !576), !dbg !1053
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1444
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !989, metadata !576), !dbg !1053
  br label %580, !dbg !1445

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !971, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !989, metadata !576), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !988, metadata !576), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !987, metadata !576), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !973, metadata !576), !dbg !1037
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !981, metadata !576), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !979, metadata !576), !dbg !1101
  %589 = add i64 %581, 1, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !979, metadata !576), !dbg !1101
  br label %122, !dbg !1447, !llvm.loop !1448

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1450
  %593 = and i1 %113, %592, !dbg !1452
  %594 = xor i1 %593, true, !dbg !1452
  %595 = or i1 %111, %594, !dbg !1452
  br i1 %595, label %596, label %635, !dbg !1452

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1453
  %598 = xor i1 %597, true, !dbg !1453
  %599 = and i8 %128, 1, !dbg !1455
  %600 = icmp eq i8 %599, 0, !dbg !1455
  %601 = or i1 %600, %598, !dbg !1453
  br i1 %601, label %611, label %602, !dbg !1453

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1456
  %604 = icmp eq i8 %603, 0, !dbg !1456
  br i1 %604, label %607, label %605, !dbg !1459

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1460
  br label %645, !dbg !1461

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1462
  %609 = icmp ne i64 %125, 0, !dbg !1464
  %610 = and i1 %609, %608, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !971, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !980, metadata !576), !dbg !1043
  br i1 %610, label %27, label %611, !dbg !1465

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1466
  %613 = and i1 %612, %111, !dbg !1468
  br i1 %613, label %614, label %630, !dbg !1468

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !982, metadata !576), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !980, metadata !576), !dbg !1043
  %615 = load i8, i8* %99, align 1, !dbg !1469, !tbaa !1064
  %616 = icmp eq i8 %615, 0, !dbg !1472
  br i1 %616, label %630, label %617, !dbg !1472

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1473

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !980, metadata !576), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !982, metadata !576), !dbg !1045
  %622 = icmp ult i64 %621, %130, !dbg !1473
  br i1 %622, label %623, label %625, !dbg !1476

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1473
  store i8 %619, i8* %624, align 1, !dbg !1473, !tbaa !1064
  br label %625, !dbg !1473

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !980, metadata !576), !dbg !1043
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1477
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !982, metadata !576), !dbg !1045
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !982, metadata !576), !dbg !1045
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !980, metadata !576), !dbg !1043
  %628 = load i8, i8* %627, align 1, !dbg !1469, !tbaa !1064
  %629 = icmp eq i8 %628, 0, !dbg !1472
  br i1 %629, label %630, label %618, !dbg !1472, !llvm.loop !1478

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !980, metadata !576), !dbg !1043
  %632 = icmp ult i64 %631, %130, !dbg !1480
  br i1 %632, label %633, label %645, !dbg !1482

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1483
  store i8 0, i8* %634, align 1, !dbg !1484, !tbaa !1064
  br label %645, !dbg !1483

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !971, metadata !576), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !973, metadata !576), !dbg !1037
  %639 = icmp ne i32 %636, 2, !dbg !1485
  %640 = icmp eq i8 %103, 0, !dbg !1487
  %641 = or i1 %639, %640, !dbg !1488
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !974, metadata !576), !dbg !1038
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1488
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !974, metadata !576), !dbg !1038
  %643 = and i32 %5, -3, !dbg !1489
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1490
  br label %645, !dbg !1491

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1492
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1493 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1497, metadata !576), !dbg !1501
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1498, metadata !576), !dbg !1502
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1503
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1499, metadata !576), !dbg !1504
  %4 = icmp eq i8* %3, %0, !dbg !1505
  br i1 %4, label %5, label %75, !dbg !1507

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1508
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1500, metadata !576), !dbg !1509
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1510, metadata !576), !dbg !1526
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1524, metadata !576), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1525, metadata !576), !dbg !1530
  %7 = load i8, i8* %6, align 1, !dbg !1531, !tbaa !1064
  %8 = sext i8 %7 to i32, !dbg !1531
  %9 = and i32 %8, -33, !dbg !1531
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1531

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1533, metadata !576), !dbg !1547
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1545, metadata !576), !dbg !1551
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1546, metadata !576), !dbg !1552
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1553
  %12 = load i8, i8* %11, align 1, !dbg !1553, !tbaa !1064
  %13 = sext i8 %12 to i32, !dbg !1553
  %14 = and i32 %13, -33, !dbg !1553
  %15 = icmp eq i32 %14, 84, !dbg !1553
  br i1 %15, label %16, label %72, !dbg !1553

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1555, metadata !576), !dbg !1568
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1566, metadata !576), !dbg !1572
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1567, metadata !576), !dbg !1573
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1574
  %18 = load i8, i8* %17, align 1, !dbg !1574, !tbaa !1064
  %19 = sext i8 %18 to i32, !dbg !1574
  %20 = and i32 %19, -33, !dbg !1574
  %21 = icmp eq i32 %20, 70, !dbg !1574
  br i1 %21, label %22, label %72, !dbg !1574

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1576, metadata !576), !dbg !1588
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1586, metadata !576), !dbg !1592
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1587, metadata !576), !dbg !1593
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1594
  %24 = load i8, i8* %23, align 1, !dbg !1594, !tbaa !1064
  %25 = icmp eq i8 %24, 45, !dbg !1594
  br i1 %25, label %26, label %72, !dbg !1596

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1597, metadata !576), !dbg !1608
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1606, metadata !576), !dbg !1612
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1607, metadata !576), !dbg !1613
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1614
  %28 = load i8, i8* %27, align 1, !dbg !1614, !tbaa !1064
  %29 = icmp eq i8 %28, 56, !dbg !1614
  br i1 %29, label %30, label %72, !dbg !1616

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1617, metadata !576), !dbg !1627
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1625, metadata !576), !dbg !1631
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1626, metadata !576), !dbg !1632
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1633
  %32 = load i8, i8* %31, align 1, !dbg !1633, !tbaa !1064
  %33 = icmp eq i8 %32, 0, !dbg !1633
  br i1 %33, label %34, label %72, !dbg !1635

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1636, !tbaa !1064
  %36 = icmp eq i8 %35, 96, !dbg !1637
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.54, i64 0, i64 0), !dbg !1636
  br label %75, !dbg !1638

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1533, metadata !576), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1545, metadata !576), !dbg !1643
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1546, metadata !576), !dbg !1644
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1645
  %40 = load i8, i8* %39, align 1, !dbg !1645, !tbaa !1064
  %41 = sext i8 %40 to i32, !dbg !1645
  %42 = and i32 %41, -33, !dbg !1645
  %43 = icmp eq i32 %42, 66, !dbg !1645
  br i1 %43, label %44, label %72, !dbg !1645

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1555, metadata !576), !dbg !1646
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1566, metadata !576), !dbg !1648
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1567, metadata !576), !dbg !1649
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1650
  %46 = load i8, i8* %45, align 1, !dbg !1650, !tbaa !1064
  %47 = icmp eq i8 %46, 49, !dbg !1650
  br i1 %47, label %48, label %72, !dbg !1651

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1576, metadata !576), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1586, metadata !576), !dbg !1654
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1587, metadata !576), !dbg !1655
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1656
  %50 = load i8, i8* %49, align 1, !dbg !1656, !tbaa !1064
  %51 = icmp eq i8 %50, 56, !dbg !1656
  br i1 %51, label %52, label %72, !dbg !1657

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1597, metadata !576), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1606, metadata !576), !dbg !1660
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1607, metadata !576), !dbg !1661
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1662
  %54 = load i8, i8* %53, align 1, !dbg !1662, !tbaa !1064
  %55 = icmp eq i8 %54, 48, !dbg !1662
  br i1 %55, label %56, label %72, !dbg !1663

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1617, metadata !576), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1625, metadata !576), !dbg !1666
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1626, metadata !576), !dbg !1667
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1668
  %58 = load i8, i8* %57, align 1, !dbg !1668, !tbaa !1064
  %59 = icmp eq i8 %58, 51, !dbg !1668
  br i1 %59, label %60, label %72, !dbg !1669

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1670, metadata !576), !dbg !1679
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1677, metadata !576), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1678, metadata !576), !dbg !1684
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1685
  %62 = load i8, i8* %61, align 1, !dbg !1685, !tbaa !1064
  %63 = icmp eq i8 %62, 48, !dbg !1685
  br i1 %63, label %64, label %72, !dbg !1687

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1688, metadata !576), !dbg !1696
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1694, metadata !576), !dbg !1700
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1695, metadata !576), !dbg !1701
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1702
  %66 = load i8, i8* %65, align 1, !dbg !1702, !tbaa !1064
  %67 = icmp eq i8 %66, 0, !dbg !1702
  br i1 %67, label %68, label %72, !dbg !1704

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1705, !tbaa !1064
  %70 = icmp eq i8 %69, 96, !dbg !1706
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.55, i64 0, i64 0), !dbg !1705
  br label %75, !dbg !1707

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1708
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), !dbg !1709
  br label %75, !dbg !1710

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1711
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1712 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1716, metadata !576), !dbg !1719
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1717, metadata !576), !dbg !1720
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1718, metadata !576), !dbg !1721
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1722, metadata !576) #10, !dbg !1735
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1727, metadata !576) #10, !dbg !1737
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1728, metadata !576) #10, !dbg !1738
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1729, metadata !576) #10, !dbg !1739
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1740
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1740
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1730, metadata !576) #10, !dbg !1741
  %6 = tail call i32* @__errno_location() #17, !dbg !1742
  %7 = load i32, i32* %6, align 4, !dbg !1742, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1731, metadata !576) #10, !dbg !1743
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1744
  %9 = load i32, i32* %8, align 4, !dbg !1744, !tbaa !903
  %10 = or i32 %9, 1, !dbg !1745
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1732, metadata !576) #10, !dbg !1746
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1747
  %12 = load i32, i32* %11, align 8, !dbg !1747, !tbaa !843
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1748
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1749
  %15 = load i8*, i8** %14, align 8, !dbg !1749, !tbaa !929
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1750
  %17 = load i8*, i8** %16, align 8, !dbg !1750, !tbaa !932
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !1751
  %19 = add i64 %18, 1, !dbg !1752
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1733, metadata !576) #10, !dbg !1753
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1754, metadata !576) #10, !dbg !1759
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1761
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1734, metadata !576) #10, !dbg !1762
  %21 = load i32, i32* %11, align 8, !dbg !1763, !tbaa !843
  %22 = load i8*, i8** %14, align 8, !dbg !1764, !tbaa !929
  %23 = load i8*, i8** %16, align 8, !dbg !1765, !tbaa !932
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !1766
  store i32 %7, i32* %6, align 4, !dbg !1767, !tbaa !632
  ret i8* %20, !dbg !1768
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1723 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1722, metadata !576), !dbg !1769
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1727, metadata !576), !dbg !1770
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1728, metadata !576), !dbg !1771
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1729, metadata !576), !dbg !1772
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1773
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1773
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1730, metadata !576), !dbg !1774
  %7 = tail call i32* @__errno_location() #17, !dbg !1775
  %8 = load i32, i32* %7, align 4, !dbg !1775, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1731, metadata !576), !dbg !1776
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1777
  %10 = load i32, i32* %9, align 4, !dbg !1777, !tbaa !903
  %11 = icmp ne i64* %2, null, !dbg !1778
  %12 = xor i1 %11, true, !dbg !1778
  %13 = zext i1 %12 to i32, !dbg !1778
  %14 = or i32 %10, %13, !dbg !1779
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1732, metadata !576), !dbg !1780
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1781
  %16 = load i32, i32* %15, align 8, !dbg !1781, !tbaa !843
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1782
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1783
  %19 = load i8*, i8** %18, align 8, !dbg !1783, !tbaa !929
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1784
  %21 = load i8*, i8** %20, align 8, !dbg !1784, !tbaa !932
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1785
  %23 = add i64 %22, 1, !dbg !1786
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1733, metadata !576), !dbg !1787
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1754, metadata !576) #10, !dbg !1788
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1790
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1734, metadata !576), !dbg !1791
  %25 = load i32, i32* %15, align 8, !dbg !1792, !tbaa !843
  %26 = load i8*, i8** %18, align 8, !dbg !1793, !tbaa !929
  %27 = load i8*, i8** %20, align 8, !dbg !1794, !tbaa !932
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1795
  store i32 %8, i32* %7, align 4, !dbg !1796, !tbaa !632
  br i1 %11, label %29, label %30, !dbg !1797

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1798, !tbaa !1800
  br label %30, !dbg !1802

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1803
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1804 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1808, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1806, metadata !576), !dbg !1809
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1807, metadata !576), !dbg !1810
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1807, metadata !576), !dbg !1810
  %2 = load i32, i32* @nslots, align 4, !dbg !1811, !tbaa !632
  %3 = icmp sgt i32 %2, 1, !dbg !1814
  br i1 %3, label %4, label %13, !dbg !1815

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1816

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1807, metadata !576), !dbg !1810
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1816
  %8 = load i8*, i8** %7, align 8, !dbg !1816, !tbaa !1817
  tail call void @free(i8* %8) #10, !dbg !1819
  %9 = add nuw i64 %6, 1, !dbg !1820
  %10 = load i32, i32* @nslots, align 4, !dbg !1811, !tbaa !632
  %11 = sext i32 %10 to i64, !dbg !1814
  %12 = icmp slt i64 %9, %11, !dbg !1814
  br i1 %12, label %5, label %13, !dbg !1815, !llvm.loop !1821

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1823
  %15 = load i8*, i8** %14, align 8, !dbg !1823, !tbaa !1817
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1825
  br i1 %16, label %18, label %17, !dbg !1826

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !1827
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1829, !tbaa !1830
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1831, !tbaa !1817
  br label %18, !dbg !1832

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1833
  br i1 %19, label %22, label %20, !dbg !1835

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1836
  tail call void @free(i8* %21) #10, !dbg !1838
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1839, !tbaa !583
  br label %22, !dbg !1840

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1841, !tbaa !632
  ret void, !dbg !1842
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1843 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1847, metadata !576), !dbg !1849
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1848, metadata !576), !dbg !1850
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1851
  ret i8* %3, !dbg !1852
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1853 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1857, metadata !576), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1858, metadata !576), !dbg !1872
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1859, metadata !576), !dbg !1873
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1860, metadata !576), !dbg !1874
  %5 = tail call i32* @__errno_location() #17, !dbg !1875
  %6 = load i32, i32* %5, align 4, !dbg !1875, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1861, metadata !576), !dbg !1876
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1877, !tbaa !583
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1862, metadata !576), !dbg !1878
  %8 = icmp slt i32 %0, 0, !dbg !1879
  br i1 %8, label %9, label %10, !dbg !1881

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1882
  unreachable, !dbg !1882

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1883, !tbaa !632
  %12 = icmp sgt i32 %11, %0, !dbg !1884
  br i1 %12, label %34, label %13, !dbg !1885

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1886
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1887
  br i1 %15, label %16, label %17, !dbg !1889

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1890
  unreachable, !dbg !1890

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1891
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1891
  %20 = add nsw i32 %0, 1, !dbg !1892
  %21 = sext i32 %20 to i64, !dbg !1893
  %22 = shl nsw i64 %21, 4, !dbg !1894
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !1895
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1895
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1862, metadata !576), !dbg !1878
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1896, !tbaa !583
  br i1 %14, label %25, label %26, !dbg !1897

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1898, !tbaa.struct !1900
  br label %26, !dbg !1901

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1902, !tbaa !632
  %28 = sext i32 %27 to i64, !dbg !1903
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1903
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1904
  %31 = sub nsw i32 %20, %27, !dbg !1905
  %32 = sext i32 %31 to i64, !dbg !1906
  %33 = shl nsw i64 %32, 4, !dbg !1907
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1904
  store i32 %20, i32* @nslots, align 4, !dbg !1908, !tbaa !632
  br label %34, !dbg !1909

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1862, metadata !576), !dbg !1878
  %36 = sext i32 %0 to i64, !dbg !1910
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1911
  %38 = load i64, i64* %37, align 8, !dbg !1911, !tbaa !1830
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1866, metadata !576), !dbg !1912
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1913
  %40 = load i8*, i8** %39, align 8, !dbg !1913, !tbaa !1817
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1868, metadata !576), !dbg !1914
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1915
  %42 = load i32, i32* %41, align 4, !dbg !1915, !tbaa !903
  %43 = or i32 %42, 1, !dbg !1916
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1869, metadata !576), !dbg !1917
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1918
  %45 = load i32, i32* %44, align 8, !dbg !1918, !tbaa !843
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1919
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1920
  %48 = load i8*, i8** %47, align 8, !dbg !1920, !tbaa !929
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1921
  %50 = load i8*, i8** %49, align 8, !dbg !1921, !tbaa !932
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1870, metadata !576), !dbg !1923
  %52 = icmp ugt i64 %38, %51, !dbg !1924
  br i1 %52, label %63, label %53, !dbg !1926

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1927
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1866, metadata !576), !dbg !1912
  store i64 %54, i64* %37, align 8, !dbg !1929, !tbaa !1830
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1930
  br i1 %55, label %57, label %56, !dbg !1932

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !1933
  br label %57, !dbg !1933

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1754, metadata !576) #10, !dbg !1934
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !1936
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1868, metadata !576), !dbg !1914
  store i8* %58, i8** %39, align 8, !dbg !1937, !tbaa !1817
  %59 = load i32, i32* %44, align 8, !dbg !1938, !tbaa !843
  %60 = load i8*, i8** %47, align 8, !dbg !1939, !tbaa !929
  %61 = load i8*, i8** %49, align 8, !dbg !1940, !tbaa !932
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !1941
  br label %63, !dbg !1942

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1868, metadata !576), !dbg !1914
  store i32 %6, i32* %5, align 4, !dbg !1943, !tbaa !632
  ret i8* %64, !dbg !1944
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1945 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1949, metadata !576), !dbg !1952
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1950, metadata !576), !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1951, metadata !576), !dbg !1954
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1955
  ret i8* %4, !dbg !1956
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !1957 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1961, metadata !576), !dbg !1962
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1847, metadata !576) #10, !dbg !1963
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1848, metadata !576) #10, !dbg !1965
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1966
  ret i8* %2, !dbg !1967
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !1968 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1972, metadata !576), !dbg !1974
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1973, metadata !576), !dbg !1975
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1949, metadata !576) #10, !dbg !1976
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1950, metadata !576) #10, !dbg !1978
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1951, metadata !576) #10, !dbg !1979
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1980
  ret i8* %3, !dbg !1981
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !1982 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1990, metadata !1996), !dbg !1997
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1986, metadata !576), !dbg !1999
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1987, metadata !576), !dbg !2000
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1988, metadata !576), !dbg !2001
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2002
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2002
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1989, metadata !576), !dbg !2003
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1995, metadata !576) #10, !dbg !2004
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2005
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2005
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1990, metadata !576) #10, !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1990, metadata !2006) #10, !dbg !1997
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !1997
  %8 = icmp eq i32 %1, 10, !dbg !2007
  br i1 %8, label %9, label %10, !dbg !2009

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2010, !noalias !2011
  unreachable, !dbg !2010

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1990, metadata !2006) #10, !dbg !1997
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2014
  store i32 %1, i32* %11, align 8, !dbg !2014, !alias.scope !2011
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2014
  %13 = bitcast i32* %12 to i8*, !dbg !2014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2014
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2015
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1989, metadata !576), !dbg !2003
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2016
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2017
  ret i8* %14, !dbg !2018
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2019 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !1990, metadata !1996), !dbg !2028
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2023, metadata !576), !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2024, metadata !576), !dbg !2031
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2025, metadata !576), !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2026, metadata !576), !dbg !2033
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2034
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2034
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2027, metadata !576), !dbg !2035
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1995, metadata !576) #10, !dbg !2036
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2037
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2037
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1990, metadata !576) #10, !dbg !2028
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1990, metadata !2006) #10, !dbg !2028
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2028
  %9 = icmp eq i32 %1, 10, !dbg !2038
  br i1 %9, label %10, label %11, !dbg !2039

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2040, !noalias !2041
  unreachable, !dbg !2040

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1990, metadata !2006) #10, !dbg !2028
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2044
  store i32 %1, i32* %12, align 8, !dbg !2044, !alias.scope !2041
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2044
  %14 = bitcast i32* %13 to i8*, !dbg !2044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2044
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2045
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2027, metadata !576), !dbg !2035
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2046
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2047
  ret i8* %15, !dbg !2048
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2049 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !1990, metadata !1996), !dbg !2055
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2053, metadata !576), !dbg !2058
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2054, metadata !576), !dbg !2059
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1986, metadata !576) #10, !dbg !2060
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1987, metadata !576) #10, !dbg !2061
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1988, metadata !576) #10, !dbg !2062
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2063
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2063
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1989, metadata !576) #10, !dbg !2064
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1995, metadata !576) #10, !dbg !2065
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2066
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2066
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1990, metadata !576) #10, !dbg !2055
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1990, metadata !2006) #10, !dbg !2055
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2055
  %7 = icmp eq i32 %0, 10, !dbg !2067
  br i1 %7, label %8, label %9, !dbg !2068

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2069, !noalias !2070
  unreachable, !dbg !2069

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1990, metadata !2006) #10, !dbg !2055
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2073
  store i32 %0, i32* %10, align 8, !dbg !2073, !alias.scope !2070
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2073
  %12 = bitcast i32* %11 to i8*, !dbg !2073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2073
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2074
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1989, metadata !576) #10, !dbg !2064
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2075
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2076
  ret i8* %13, !dbg !2077
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2078 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1990, metadata !1996), !dbg !2085
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2082, metadata !576), !dbg !2088
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2083, metadata !576), !dbg !2089
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2084, metadata !576), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2023, metadata !576) #10, !dbg !2091
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2024, metadata !576) #10, !dbg !2092
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2025, metadata !576) #10, !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2026, metadata !576) #10, !dbg !2094
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2095
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2095
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2027, metadata !576) #10, !dbg !2096
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1995, metadata !576) #10, !dbg !2097
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2098
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2098
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1990, metadata !576) #10, !dbg !2085
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1990, metadata !2006) #10, !dbg !2085
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2085
  %8 = icmp eq i32 %0, 10, !dbg !2099
  br i1 %8, label %9, label %10, !dbg !2100

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2101, !noalias !2102
  unreachable, !dbg !2101

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1990, metadata !2006) #10, !dbg !2085
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2105
  store i32 %0, i32* %11, align 8, !dbg !2105, !alias.scope !2102
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2105
  %13 = bitcast i32* %12 to i8*, !dbg !2105
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2105
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2106
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2027, metadata !576) #10, !dbg !2096
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2107
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2108
  ret i8* %14, !dbg !2109
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2110 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2114, metadata !576), !dbg !2118
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2115, metadata !576), !dbg !2119
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2116, metadata !576), !dbg !2120
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2121
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2121
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2122, !tbaa.struct !2123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2117, metadata !576), !dbg !2124
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !862, metadata !576), !dbg !2125
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !863, metadata !576), !dbg !2127
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !864, metadata !576), !dbg !2128
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !865, metadata !576), !dbg !2129
  %6 = lshr i8 %2, 5, !dbg !2130
  %7 = zext i8 %6 to i64, !dbg !2130
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2131
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !866, metadata !576), !dbg !2132
  %9 = and i8 %2, 31, !dbg !2133
  %10 = zext i8 %9 to i32, !dbg !2134
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !868, metadata !576), !dbg !2135
  %11 = load i32, i32* %8, align 4, !dbg !2136, !tbaa !632
  %12 = lshr i32 %11, %10, !dbg !2137
  %13 = and i32 %12, 1, !dbg !2138
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !869, metadata !576), !dbg !2139
  %14 = xor i32 %13, 1, !dbg !2140
  %15 = shl i32 %14, %10, !dbg !2141
  %16 = xor i32 %15, %11, !dbg !2142
  store i32 %16, i32* %8, align 4, !dbg !2142, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2117, metadata !576), !dbg !2124
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2143
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2144
  ret i8* %17, !dbg !2145
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2146 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2150, metadata !576), !dbg !2152
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2151, metadata !576), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2114, metadata !576) #10, !dbg !2154
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2115, metadata !576) #10, !dbg !2156
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2116, metadata !576) #10, !dbg !2157
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2158
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2159, !tbaa.struct !2123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2117, metadata !576) #10, !dbg !2160
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !862, metadata !576) #10, !dbg !2161
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !863, metadata !576) #10, !dbg !2163
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !864, metadata !576) #10, !dbg !2164
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !865, metadata !576) #10, !dbg !2165
  %5 = lshr i8 %1, 5, !dbg !2166
  %6 = zext i8 %5 to i64, !dbg !2166
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2167
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !866, metadata !576) #10, !dbg !2168
  %8 = and i8 %1, 31, !dbg !2169
  %9 = zext i8 %8 to i32, !dbg !2170
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !868, metadata !576) #10, !dbg !2171
  %10 = load i32, i32* %7, align 4, !dbg !2172, !tbaa !632
  %11 = lshr i32 %10, %9, !dbg !2173
  %12 = and i32 %11, 1, !dbg !2174
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !869, metadata !576) #10, !dbg !2175
  %13 = xor i32 %12, 1, !dbg !2176
  %14 = shl i32 %13, %9, !dbg !2177
  %15 = xor i32 %14, %10, !dbg !2178
  store i32 %15, i32* %7, align 4, !dbg !2178, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2117, metadata !576) #10, !dbg !2160
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2179
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2180
  ret i8* %16, !dbg !2181
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2182 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2184, metadata !576), !dbg !2185
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2150, metadata !576) #10, !dbg !2186
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2151, metadata !576) #10, !dbg !2188
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2114, metadata !576) #10, !dbg !2189
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2115, metadata !576) #10, !dbg !2191
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2116, metadata !576) #10, !dbg !2192
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2193
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2194, !tbaa.struct !2123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2117, metadata !576) #10, !dbg !2195
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !862, metadata !576) #10, !dbg !2196
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !863, metadata !576) #10, !dbg !2198
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !864, metadata !576) #10, !dbg !2199
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !865, metadata !576) #10, !dbg !2200
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2201
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !866, metadata !576) #10, !dbg !2202
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !868, metadata !576) #10, !dbg !2203
  %5 = load i32, i32* %4, align 4, !dbg !2204, !tbaa !632
  %6 = or i32 %5, 67108864, !dbg !2205
  store i32 %6, i32* %4, align 4, !dbg !2205, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2117, metadata !576) #10, !dbg !2195
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2206
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2207
  ret i8* %7, !dbg !2208
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2209 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2211, metadata !576), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2212, metadata !576), !dbg !2214
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2114, metadata !576) #10, !dbg !2215
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2115, metadata !576) #10, !dbg !2217
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2116, metadata !576) #10, !dbg !2218
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2219
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2219
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2220, !tbaa.struct !2123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2117, metadata !576) #10, !dbg !2221
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !862, metadata !576) #10, !dbg !2222
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !863, metadata !576) #10, !dbg !2224
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !864, metadata !576) #10, !dbg !2225
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !865, metadata !576) #10, !dbg !2226
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2227
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !866, metadata !576) #10, !dbg !2228
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !868, metadata !576) #10, !dbg !2229
  %6 = load i32, i32* %5, align 4, !dbg !2230, !tbaa !632
  %7 = or i32 %6, 67108864, !dbg !2231
  store i32 %7, i32* %5, align 4, !dbg !2231, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2117, metadata !576) #10, !dbg !2221
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2232
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2233
  ret i8* %8, !dbg !2234
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2235 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1990, metadata !1996), !dbg !2241
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2237, metadata !576), !dbg !2243
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2238, metadata !576), !dbg !2244
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2239, metadata !576), !dbg !2245
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2246
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1995, metadata !576) #10, !dbg !2247
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2248
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2248
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1990, metadata !576) #10, !dbg !2241
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1990, metadata !2006) #10, !dbg !2241
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2241
  %9 = icmp eq i32 %1, 10, !dbg !2249
  br i1 %9, label %10, label %11, !dbg !2250

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2251, !noalias !2252
  unreachable, !dbg !2251

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1990, metadata !2006) #10, !dbg !2241
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2255
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2255
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2256
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2257
  store i32 %1, i32* %13, align 8, !dbg !2257
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2257
  %15 = bitcast i32* %14 to i8*, !dbg !2257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2257
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2240, metadata !576), !dbg !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !862, metadata !576), !dbg !2259
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !863, metadata !576), !dbg !2261
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !864, metadata !576), !dbg !2262
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !865, metadata !576), !dbg !2263
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2264
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !866, metadata !576), !dbg !2265
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !868, metadata !576), !dbg !2266
  %17 = load i32, i32* %16, align 4, !dbg !2267, !tbaa !632
  %18 = or i32 %17, 67108864, !dbg !2268
  store i32 %18, i32* %16, align 4, !dbg !2268, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2240, metadata !576), !dbg !2258
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2269
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2270
  ret i8* %19, !dbg !2271
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2272 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2276, metadata !576), !dbg !2280
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2277, metadata !576), !dbg !2281
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2278, metadata !576), !dbg !2282
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2279, metadata !576), !dbg !2283
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2284, metadata !576) #10, !dbg !2294
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2289, metadata !576) #10, !dbg !2296
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2290, metadata !576) #10, !dbg !2297
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2291, metadata !576) #10, !dbg !2298
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2292, metadata !576) #10, !dbg !2299
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2300
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2301, !tbaa.struct !2123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2293, metadata !576) #10, !dbg !2302
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !911, metadata !576) #10, !dbg !2303
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !912, metadata !576) #10, !dbg !2305
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !913, metadata !576) #10, !dbg !2306
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !911, metadata !576) #10, !dbg !2303
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !911, metadata !576) #10, !dbg !2303
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2307
  store i32 10, i32* %7, align 8, !dbg !2308, !tbaa !843
  %8 = icmp ne i8* %1, null, !dbg !2309
  %9 = icmp ne i8* %2, null, !dbg !2310
  %10 = and i1 %8, %9, !dbg !2311
  br i1 %10, label %12, label %11, !dbg !2311

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2312
  unreachable, !dbg !2312

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2313
  store i8* %1, i8** %13, align 8, !dbg !2314, !tbaa !929
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2315
  store i8* %2, i8** %14, align 8, !dbg !2316, !tbaa !932
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2293, metadata !576) #10, !dbg !2302
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2317
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2318
  ret i8* %15, !dbg !2319
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2285 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2284, metadata !576), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2289, metadata !576), !dbg !2321
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2290, metadata !576), !dbg !2322
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2291, metadata !576), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2292, metadata !576), !dbg !2324
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2325
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2326, !tbaa.struct !2123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2293, metadata !576), !dbg !2327
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !911, metadata !576) #10, !dbg !2328
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !912, metadata !576) #10, !dbg !2330
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !913, metadata !576) #10, !dbg !2331
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !911, metadata !576) #10, !dbg !2328
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !911, metadata !576) #10, !dbg !2328
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2332
  store i32 10, i32* %8, align 8, !dbg !2333, !tbaa !843
  %9 = icmp ne i8* %1, null, !dbg !2334
  %10 = icmp ne i8* %2, null, !dbg !2335
  %11 = and i1 %9, %10, !dbg !2336
  br i1 %11, label %13, label %12, !dbg !2336

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2337
  unreachable, !dbg !2337

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2338
  store i8* %1, i8** %14, align 8, !dbg !2339, !tbaa !929
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2340
  store i8* %2, i8** %15, align 8, !dbg !2341, !tbaa !932
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2293, metadata !576), !dbg !2327
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2342
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2343
  ret i8* %16, !dbg !2344
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2345 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2349, metadata !576), !dbg !2352
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2350, metadata !576), !dbg !2353
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2351, metadata !576), !dbg !2354
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2276, metadata !576) #10, !dbg !2355
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2277, metadata !576) #10, !dbg !2357
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2278, metadata !576) #10, !dbg !2358
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2279, metadata !576) #10, !dbg !2359
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2284, metadata !576) #10, !dbg !2360
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2289, metadata !576) #10, !dbg !2362
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2290, metadata !576) #10, !dbg !2363
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2291, metadata !576) #10, !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2292, metadata !576) #10, !dbg !2365
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2366
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2367, !tbaa.struct !2123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2293, metadata !576) #10, !dbg !2368
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !911, metadata !576) #10, !dbg !2369
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !912, metadata !576) #10, !dbg !2371
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !913, metadata !576) #10, !dbg !2372
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !911, metadata !576) #10, !dbg !2369
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !911, metadata !576) #10, !dbg !2369
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2373
  store i32 10, i32* %6, align 8, !dbg !2374, !tbaa !843
  %7 = icmp ne i8* %0, null, !dbg !2375
  %8 = icmp ne i8* %1, null, !dbg !2376
  %9 = and i1 %7, %8, !dbg !2377
  br i1 %9, label %11, label %10, !dbg !2377

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2378
  unreachable, !dbg !2378

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2379
  store i8* %0, i8** %12, align 8, !dbg !2380, !tbaa !929
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2381
  store i8* %1, i8** %13, align 8, !dbg !2382, !tbaa !932
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2293, metadata !576) #10, !dbg !2368
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2383
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2384
  ret i8* %14, !dbg !2385
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2386 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2390, metadata !576), !dbg !2394
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2391, metadata !576), !dbg !2395
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2392, metadata !576), !dbg !2396
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2393, metadata !576), !dbg !2397
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2284, metadata !576) #10, !dbg !2398
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2289, metadata !576) #10, !dbg !2400
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2290, metadata !576) #10, !dbg !2401
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2291, metadata !576) #10, !dbg !2402
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2292, metadata !576) #10, !dbg !2403
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2404
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2405, !tbaa.struct !2123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2293, metadata !576) #10, !dbg !2406
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !911, metadata !576) #10, !dbg !2407
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !912, metadata !576) #10, !dbg !2409
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !913, metadata !576) #10, !dbg !2410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !911, metadata !576) #10, !dbg !2407
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !911, metadata !576) #10, !dbg !2407
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2411
  store i32 10, i32* %7, align 8, !dbg !2412, !tbaa !843
  %8 = icmp ne i8* %0, null, !dbg !2413
  %9 = icmp ne i8* %1, null, !dbg !2414
  %10 = and i1 %8, %9, !dbg !2415
  br i1 %10, label %12, label %11, !dbg !2415

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2416
  unreachable, !dbg !2416

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2417
  store i8* %0, i8** %13, align 8, !dbg !2418, !tbaa !929
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2419
  store i8* %1, i8** %14, align 8, !dbg !2420, !tbaa !932
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2293, metadata !576) #10, !dbg !2406
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2421
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2422
  ret i8* %15, !dbg !2423
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2424 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2428, metadata !576), !dbg !2431
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2429, metadata !576), !dbg !2432
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2430, metadata !576), !dbg !2433
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2434
  ret i8* %4, !dbg !2435
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2436 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2440, metadata !576), !dbg !2442
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2441, metadata !576), !dbg !2443
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2428, metadata !576) #10, !dbg !2444
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2429, metadata !576) #10, !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2430, metadata !576) #10, !dbg !2447
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2448
  ret i8* %3, !dbg !2449
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2450 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2454, metadata !576), !dbg !2456
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2455, metadata !576), !dbg !2457
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2428, metadata !576) #10, !dbg !2458
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2429, metadata !576) #10, !dbg !2460
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2430, metadata !576) #10, !dbg !2461
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2462
  ret i8* %3, !dbg !2463
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2464 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2468, metadata !576), !dbg !2469
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2454, metadata !576) #10, !dbg !2470
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2455, metadata !576) #10, !dbg !2472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2428, metadata !576) #10, !dbg !2473
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2429, metadata !576) #10, !dbg !2475
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2430, metadata !576) #10, !dbg !2476
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2477
  ret i8* %2, !dbg !2478
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2479 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2537, metadata !576), !dbg !2543
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2538, metadata !576), !dbg !2544
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2539, metadata !576), !dbg !2545
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2540, metadata !576), !dbg !2546
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2541, metadata !576), !dbg !2547
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2542, metadata !576), !dbg !2548
  %7 = icmp eq i8* %1, null, !dbg !2549
  br i1 %7, label %10, label %8, !dbg !2551

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2552
  br label %12, !dbg !2552

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.63, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2553
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.64, i64 0, i64 0), i32 5) #10, !dbg !2554
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2554
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.65, i64 0, i64 0), i32 5) #10, !dbg !2555
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2555
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
  ], !dbg !2556

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2557
  unreachable, !dbg !2557

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.66, i64 0, i64 0), i32 5) #10, !dbg !2559
  %20 = load i8*, i8** %4, align 8, !dbg !2559, !tbaa !583
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2559
  br label %146, !dbg !2560

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.67, i64 0, i64 0), i32 5) #10, !dbg !2561
  %24 = load i8*, i8** %4, align 8, !dbg !2561, !tbaa !583
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2561
  %26 = load i8*, i8** %25, align 8, !dbg !2561, !tbaa !583
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2561
  br label %146, !dbg !2562

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.68, i64 0, i64 0), i32 5) #10, !dbg !2563
  %30 = load i8*, i8** %4, align 8, !dbg !2563, !tbaa !583
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2563
  %32 = load i8*, i8** %31, align 8, !dbg !2563, !tbaa !583
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2563
  %34 = load i8*, i8** %33, align 8, !dbg !2563, !tbaa !583
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2563
  br label %146, !dbg !2564

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.69, i64 0, i64 0), i32 5) #10, !dbg !2565
  %38 = load i8*, i8** %4, align 8, !dbg !2565, !tbaa !583
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2565
  %40 = load i8*, i8** %39, align 8, !dbg !2565, !tbaa !583
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2565
  %42 = load i8*, i8** %41, align 8, !dbg !2565, !tbaa !583
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2565
  %44 = load i8*, i8** %43, align 8, !dbg !2565, !tbaa !583
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2565
  br label %146, !dbg !2566

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.70, i64 0, i64 0), i32 5) #10, !dbg !2567
  %48 = load i8*, i8** %4, align 8, !dbg !2567, !tbaa !583
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2567
  %50 = load i8*, i8** %49, align 8, !dbg !2567, !tbaa !583
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2567
  %52 = load i8*, i8** %51, align 8, !dbg !2567, !tbaa !583
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2567
  %54 = load i8*, i8** %53, align 8, !dbg !2567, !tbaa !583
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2567
  %56 = load i8*, i8** %55, align 8, !dbg !2567, !tbaa !583
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2567
  br label %146, !dbg !2568

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.71, i64 0, i64 0), i32 5) #10, !dbg !2569
  %60 = load i8*, i8** %4, align 8, !dbg !2569, !tbaa !583
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2569
  %62 = load i8*, i8** %61, align 8, !dbg !2569, !tbaa !583
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2569
  %64 = load i8*, i8** %63, align 8, !dbg !2569, !tbaa !583
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2569
  %66 = load i8*, i8** %65, align 8, !dbg !2569, !tbaa !583
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2569
  %68 = load i8*, i8** %67, align 8, !dbg !2569, !tbaa !583
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2569
  %70 = load i8*, i8** %69, align 8, !dbg !2569, !tbaa !583
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2569
  br label %146, !dbg !2570

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.72, i64 0, i64 0), i32 5) #10, !dbg !2571
  %74 = load i8*, i8** %4, align 8, !dbg !2571, !tbaa !583
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2571
  %76 = load i8*, i8** %75, align 8, !dbg !2571, !tbaa !583
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2571
  %78 = load i8*, i8** %77, align 8, !dbg !2571, !tbaa !583
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2571
  %80 = load i8*, i8** %79, align 8, !dbg !2571, !tbaa !583
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2571
  %82 = load i8*, i8** %81, align 8, !dbg !2571, !tbaa !583
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2571
  %84 = load i8*, i8** %83, align 8, !dbg !2571, !tbaa !583
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2571
  %86 = load i8*, i8** %85, align 8, !dbg !2571, !tbaa !583
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2571
  br label %146, !dbg !2572

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.73, i64 0, i64 0), i32 5) #10, !dbg !2573
  %90 = load i8*, i8** %4, align 8, !dbg !2573, !tbaa !583
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2573
  %92 = load i8*, i8** %91, align 8, !dbg !2573, !tbaa !583
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2573
  %94 = load i8*, i8** %93, align 8, !dbg !2573, !tbaa !583
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2573
  %96 = load i8*, i8** %95, align 8, !dbg !2573, !tbaa !583
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2573
  %98 = load i8*, i8** %97, align 8, !dbg !2573, !tbaa !583
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2573
  %100 = load i8*, i8** %99, align 8, !dbg !2573, !tbaa !583
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2573
  %102 = load i8*, i8** %101, align 8, !dbg !2573, !tbaa !583
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2573
  %104 = load i8*, i8** %103, align 8, !dbg !2573, !tbaa !583
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2573
  br label %146, !dbg !2574

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.74, i64 0, i64 0), i32 5) #10, !dbg !2575
  %108 = load i8*, i8** %4, align 8, !dbg !2575, !tbaa !583
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2575
  %110 = load i8*, i8** %109, align 8, !dbg !2575, !tbaa !583
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2575
  %112 = load i8*, i8** %111, align 8, !dbg !2575, !tbaa !583
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2575
  %114 = load i8*, i8** %113, align 8, !dbg !2575, !tbaa !583
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2575
  %116 = load i8*, i8** %115, align 8, !dbg !2575, !tbaa !583
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2575
  %118 = load i8*, i8** %117, align 8, !dbg !2575, !tbaa !583
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2575
  %120 = load i8*, i8** %119, align 8, !dbg !2575, !tbaa !583
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2575
  %122 = load i8*, i8** %121, align 8, !dbg !2575, !tbaa !583
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2575
  %124 = load i8*, i8** %123, align 8, !dbg !2575, !tbaa !583
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2575
  br label %146, !dbg !2576

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.75, i64 0, i64 0), i32 5) #10, !dbg !2577
  %128 = load i8*, i8** %4, align 8, !dbg !2577, !tbaa !583
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2577
  %130 = load i8*, i8** %129, align 8, !dbg !2577, !tbaa !583
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2577
  %132 = load i8*, i8** %131, align 8, !dbg !2577, !tbaa !583
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2577
  %134 = load i8*, i8** %133, align 8, !dbg !2577, !tbaa !583
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2577
  %136 = load i8*, i8** %135, align 8, !dbg !2577, !tbaa !583
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2577
  %138 = load i8*, i8** %137, align 8, !dbg !2577, !tbaa !583
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2577
  %140 = load i8*, i8** %139, align 8, !dbg !2577, !tbaa !583
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2577
  %142 = load i8*, i8** %141, align 8, !dbg !2577, !tbaa !583
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2577
  %144 = load i8*, i8** %143, align 8, !dbg !2577, !tbaa !583
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2577
  br label %146, !dbg !2578

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2579
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2580 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2584, metadata !576), !dbg !2590
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2585, metadata !576), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2586, metadata !576), !dbg !2592
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2587, metadata !576), !dbg !2593
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2588, metadata !576), !dbg !2594
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2589, metadata !576), !dbg !2595
  br label %6, !dbg !2596

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2589, metadata !576), !dbg !2595
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2598
  %9 = load i8*, i8** %8, align 8, !dbg !2598, !tbaa !583
  %10 = icmp eq i8* %9, null, !dbg !2600
  %11 = add i64 %7, 1, !dbg !2601
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2589, metadata !576), !dbg !2595
  br i1 %10, label %12, label %6, !dbg !2600, !llvm.loop !2602

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2604
  ret void, !dbg !2605
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2606 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2617, metadata !576), !dbg !2625
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2618, metadata !576), !dbg !2626
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2619, metadata !576), !dbg !2627
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2620, metadata !576), !dbg !2628
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2621, metadata !576), !dbg !2629
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2630
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2630
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2623, metadata !576), !dbg !2631
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  %11 = load i32, i32* %8, align 8, !dbg !2633
  %12 = icmp ult i32 %11, 41, !dbg !2633
  br i1 %12, label %13, label %18, !dbg !2633

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2633
  %15 = sext i32 %11 to i64, !dbg !2633
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2633
  %17 = add i32 %11, 8, !dbg !2633
  store i32 %17, i32* %8, align 8, !dbg !2633
  br label %21, !dbg !2633

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2633
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2633
  store i8* %20, i8** %10, align 8, !dbg !2633
  br label %21, !dbg !2633

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2633
  %25 = load i8*, i8** %24, align 8, !dbg !2633
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2636
  store i8* %25, i8** %26, align 16, !dbg !2637, !tbaa !583
  %27 = icmp eq i8* %25, null, !dbg !2638
  br i1 %27, label %30, label %28, !dbg !2639

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  %29 = icmp ult i32 %22, 41, !dbg !2633
  br i1 %29, label %35, label %32, !dbg !2633

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2640
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2641
  ret void, !dbg !2641

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2633
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2633
  store i8* %34, i8** %10, align 8, !dbg !2633
  br label %40, !dbg !2633

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2633
  %37 = sext i32 %22 to i64, !dbg !2633
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2633
  %39 = add i32 %22, 8, !dbg !2633
  store i32 %39, i32* %8, align 8, !dbg !2633
  br label %40, !dbg !2633

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2633
  %44 = load i8*, i8** %43, align 8, !dbg !2633
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2636
  store i8* %44, i8** %45, align 8, !dbg !2637, !tbaa !583
  %46 = icmp eq i8* %44, null, !dbg !2638
  br i1 %46, label %30, label %47, !dbg !2639

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  %48 = icmp ult i32 %41, 41, !dbg !2633
  br i1 %48, label %52, label %49, !dbg !2633

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2633
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2633
  store i8* %51, i8** %10, align 8, !dbg !2633
  br label %57, !dbg !2633

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2633
  %54 = sext i32 %41 to i64, !dbg !2633
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2633
  %56 = add i32 %41, 8, !dbg !2633
  store i32 %56, i32* %8, align 8, !dbg !2633
  br label %57, !dbg !2633

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2633
  %61 = load i8*, i8** %60, align 8, !dbg !2633
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2636
  store i8* %61, i8** %62, align 16, !dbg !2637, !tbaa !583
  %63 = icmp eq i8* %61, null, !dbg !2638
  br i1 %63, label %30, label %64, !dbg !2639

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  %65 = icmp ult i32 %58, 41, !dbg !2633
  br i1 %65, label %69, label %66, !dbg !2633

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2633
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2633
  store i8* %68, i8** %10, align 8, !dbg !2633
  br label %74, !dbg !2633

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2633
  %71 = sext i32 %58 to i64, !dbg !2633
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2633
  %73 = add i32 %58, 8, !dbg !2633
  store i32 %73, i32* %8, align 8, !dbg !2633
  br label %74, !dbg !2633

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2633
  %78 = load i8*, i8** %77, align 8, !dbg !2633
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2636
  store i8* %78, i8** %79, align 8, !dbg !2637, !tbaa !583
  %80 = icmp eq i8* %78, null, !dbg !2638
  br i1 %80, label %30, label %81, !dbg !2639

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  %82 = icmp ult i32 %75, 41, !dbg !2633
  br i1 %82, label %86, label %83, !dbg !2633

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2633
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2633
  store i8* %85, i8** %10, align 8, !dbg !2633
  br label %91, !dbg !2633

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2633
  %88 = sext i32 %75 to i64, !dbg !2633
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2633
  %90 = add i32 %75, 8, !dbg !2633
  store i32 %90, i32* %8, align 8, !dbg !2633
  br label %91, !dbg !2633

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2633
  %95 = load i8*, i8** %94, align 8, !dbg !2633
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2636
  store i8* %95, i8** %96, align 16, !dbg !2637, !tbaa !583
  %97 = icmp eq i8* %95, null, !dbg !2638
  br i1 %97, label %30, label %98, !dbg !2639

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  %99 = icmp ult i32 %92, 41, !dbg !2633
  br i1 %99, label %103, label %100, !dbg !2633

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2633
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2633
  store i8* %102, i8** %10, align 8, !dbg !2633
  br label %108, !dbg !2633

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2633
  %105 = sext i32 %92 to i64, !dbg !2633
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2633
  %107 = add i32 %92, 8, !dbg !2633
  store i32 %107, i32* %8, align 8, !dbg !2633
  br label %108, !dbg !2633

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2633
  %111 = load i8*, i8** %110, align 8, !dbg !2633
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2636
  store i8* %111, i8** %112, align 8, !dbg !2637, !tbaa !583
  %113 = icmp eq i8* %111, null, !dbg !2638
  br i1 %113, label %30, label %114, !dbg !2639

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  %115 = load i8*, i8** %10, align 8, !dbg !2633
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2633
  store i8* %116, i8** %10, align 8, !dbg !2633
  %117 = bitcast i8* %115 to i8**, !dbg !2633
  %118 = load i8*, i8** %117, align 8, !dbg !2633
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2636
  store i8* %118, i8** %119, align 16, !dbg !2637, !tbaa !583
  %120 = icmp eq i8* %118, null, !dbg !2638
  br i1 %120, label %30, label %121, !dbg !2639

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  %122 = load i8*, i8** %10, align 8, !dbg !2633
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2633
  store i8* %123, i8** %10, align 8, !dbg !2633
  %124 = bitcast i8* %122 to i8**, !dbg !2633
  %125 = load i8*, i8** %124, align 8, !dbg !2633
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2636
  store i8* %125, i8** %126, align 8, !dbg !2637, !tbaa !583
  %127 = icmp eq i8* %125, null, !dbg !2638
  br i1 %127, label %30, label %128, !dbg !2639

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  %129 = load i8*, i8** %10, align 8, !dbg !2633
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2633
  store i8* %130, i8** %10, align 8, !dbg !2633
  %131 = bitcast i8* %129 to i8**, !dbg !2633
  %132 = load i8*, i8** %131, align 8, !dbg !2633
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2636
  store i8* %132, i8** %133, align 16, !dbg !2637, !tbaa !583
  %134 = icmp eq i8* %132, null, !dbg !2638
  br i1 %134, label %30, label %135, !dbg !2639

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2622, metadata !576), !dbg !2632
  %136 = load i8*, i8** %10, align 8, !dbg !2633
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2633
  store i8* %137, i8** %10, align 8, !dbg !2633
  %138 = bitcast i8* %136 to i8**, !dbg !2633
  %139 = load i8*, i8** %138, align 8, !dbg !2633
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2636
  store i8* %139, i8** %140, align 8, !dbg !2637, !tbaa !583
  %141 = icmp eq i8* %139, null, !dbg !2638
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2622, metadata !576), !dbg !2632
  %142 = select i1 %141, i64 9, i64 10, !dbg !2639
  br label %30, !dbg !2639
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2642 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2646, metadata !576), !dbg !2655
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2647, metadata !576), !dbg !2656
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2648, metadata !576), !dbg !2657
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2649, metadata !576), !dbg !2658
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2659
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2659
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2650, metadata !576), !dbg !2660
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2661
  call void @llvm.va_start(i8* nonnull %6), !dbg !2661
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2662
  call void @llvm.va_end(i8* nonnull %6), !dbg !2663
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2664
  ret void, !dbg !2664
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2665 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.78, i64 0, i64 0), i32 5) #10, !dbg !2666
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.79, i64 0, i64 0)) #10, !dbg !2666
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !2667
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.80, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.81, i64 0, i64 0)) #10, !dbg !2667
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !2668
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2668, !tbaa !583
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2668
  ret void, !dbg !2669
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2670 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2674, metadata !576), !dbg !2676
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2675, metadata !576), !dbg !2677
  %3 = udiv i64 9223372036854775807, %1, !dbg !2678
  %4 = icmp ult i64 %3, %0, !dbg !2678
  br i1 %4, label %5, label %6, !dbg !2680

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2681
  unreachable, !dbg !2681

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2682
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2683, metadata !576) #10, !dbg !2690
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2692
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2689, metadata !576) #10, !dbg !2693
  %9 = icmp eq i8* %8, null, !dbg !2694
  %10 = icmp ne i64 %7, 0, !dbg !2696
  %11 = and i1 %10, %9, !dbg !2697
  br i1 %11, label %12, label %13, !dbg !2697

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2698
  unreachable, !dbg !2698

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2699
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2684 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2683, metadata !576), !dbg !2700
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2701
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2689, metadata !576), !dbg !2702
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

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2708 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2712, metadata !576), !dbg !2715
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2713, metadata !576), !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2714, metadata !576), !dbg !2717
  %4 = udiv i64 9223372036854775807, %2, !dbg !2718
  %5 = icmp ult i64 %4, %1, !dbg !2718
  br i1 %5, label %6, label %7, !dbg !2720

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2721
  unreachable, !dbg !2721

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2722
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2723, metadata !576) #10, !dbg !2729
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2728, metadata !576) #10, !dbg !2731
  %9 = icmp eq i64 %8, 0, !dbg !2732
  %10 = icmp ne i8* %0, null, !dbg !2734
  %11 = and i1 %10, %9, !dbg !2735
  br i1 %11, label %12, label %13, !dbg !2735

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2736
  br label %19, !dbg !2738

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2739
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2723, metadata !576) #10, !dbg !2729
  %15 = icmp eq i8* %14, null, !dbg !2740
  %16 = icmp ne i64 %8, 0, !dbg !2742
  %17 = and i1 %16, %15, !dbg !2743
  br i1 %17, label %18, label %19, !dbg !2743

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2744
  unreachable, !dbg !2744

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2745
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2724 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2723, metadata !576), !dbg !2746
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2728, metadata !576), !dbg !2747
  %3 = icmp eq i64 %1, 0, !dbg !2748
  %4 = icmp ne i8* %0, null, !dbg !2749
  %5 = and i1 %4, %3, !dbg !2750
  br i1 %5, label %6, label %7, !dbg !2750

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2751
  br label %13, !dbg !2752

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2753
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2723, metadata !576), !dbg !2746
  %9 = icmp eq i8* %8, null, !dbg !2754
  %10 = icmp ne i64 %1, 0, !dbg !2755
  %11 = and i1 %10, %9, !dbg !2756
  br i1 %11, label %12, label %13, !dbg !2756

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2757
  unreachable, !dbg !2757

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2758
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !536 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !541, metadata !576), !dbg !2759
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !542, metadata !576), !dbg !2760
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !543, metadata !576), !dbg !2761
  %4 = load i64, i64* %1, align 8, !dbg !2762, !tbaa !1800
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !544, metadata !576), !dbg !2763
  %5 = icmp eq i8* %0, null, !dbg !2764
  br i1 %5, label %6, label %13, !dbg !2766

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2767
  br i1 %7, label %8, label %17, !dbg !2770

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !544, metadata !576), !dbg !2763
  %10 = icmp ugt i64 %2, 128, !dbg !2773
  %11 = zext i1 %10 to i64, !dbg !2773
  %12 = add nuw nsw i64 %9, %11, !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !544, metadata !576), !dbg !2763
  br label %17, !dbg !2775

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2776
  %15 = icmp ugt i64 %14, %4, !dbg !2779
  br i1 %15, label %20, label %16, !dbg !2780

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2781
  unreachable, !dbg !2781

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !544, metadata !576), !dbg !2763
  store i64 %18, i64* %1, align 8, !dbg !2782, !tbaa !1800
  %19 = mul i64 %18, %2, !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2723, metadata !576) #10, !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2728, metadata !576) #10, !dbg !2786
  br label %27, !dbg !2787

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2788
  %22 = add i64 %4, 1, !dbg !2789
  %23 = add i64 %22, %21, !dbg !2790
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !544, metadata !576), !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !544, metadata !576), !dbg !2763
  store i64 %23, i64* %1, align 8, !dbg !2782, !tbaa !1800
  %24 = mul i64 %23, %2, !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2723, metadata !576) #10, !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2728, metadata !576) #10, !dbg !2786
  %25 = icmp eq i64 %24, 0, !dbg !2791
  br i1 %25, label %26, label %27, !dbg !2787

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !2792
  br label %34, !dbg !2793

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !2794
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2723, metadata !576) #10, !dbg !2784
  %30 = icmp eq i8* %29, null, !dbg !2795
  %31 = icmp ne i64 %28, 0, !dbg !2796
  %32 = and i1 %31, %30, !dbg !2797
  br i1 %32, label %33, label %34, !dbg !2797

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2798
  unreachable, !dbg !2798

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2799
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2800 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2802, metadata !576), !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2683, metadata !576) #10, !dbg !2804
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2806
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2689, metadata !576) #10, !dbg !2807
  %3 = icmp eq i8* %2, null, !dbg !2808
  %4 = icmp ne i64 %0, 0, !dbg !2809
  %5 = and i1 %4, %3, !dbg !2810
  br i1 %5, label %6, label %7, !dbg !2810

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2811
  unreachable, !dbg !2811

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2812
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2813 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2817, metadata !576), !dbg !2819
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2818, metadata !576), !dbg !2820
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !541, metadata !576) #10, !dbg !2821
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !542, metadata !576) #10, !dbg !2823
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !543, metadata !576) #10, !dbg !2824
  %3 = load i64, i64* %1, align 8, !dbg !2825, !tbaa !1800
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !544, metadata !576) #10, !dbg !2826
  %4 = icmp eq i8* %0, null, !dbg !2827
  br i1 %4, label %5, label %8, !dbg !2828

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !544, metadata !576) #10, !dbg !2826
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !544, metadata !576) #10, !dbg !2826
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !544, metadata !576) #10, !dbg !2826
  store i64 %7, i64* %1, align 8, !dbg !2831, !tbaa !1800
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2723, metadata !576) #10, !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2728, metadata !576) #10, !dbg !2834
  br label %17, !dbg !2835

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2836
  br i1 %9, label %11, label %10, !dbg !2837

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2838
  unreachable, !dbg !2838

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2839
  %13 = add i64 %3, 1, !dbg !2840
  %14 = add i64 %13, %12, !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !544, metadata !576) #10, !dbg !2826
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !544, metadata !576) #10, !dbg !2826
  store i64 %14, i64* %1, align 8, !dbg !2831, !tbaa !1800
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2723, metadata !576) #10, !dbg !2832
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2728, metadata !576) #10, !dbg !2834
  %15 = icmp eq i64 %14, 0, !dbg !2842
  br i1 %15, label %16, label %17, !dbg !2835

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !2843
  br label %24, !dbg !2844

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2723, metadata !576) #10, !dbg !2832
  %20 = icmp eq i8* %19, null, !dbg !2846
  %21 = icmp ne i64 %18, 0, !dbg !2847
  %22 = and i1 %21, %20, !dbg !2848
  br i1 %22, label %23, label %24, !dbg !2848

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2849
  unreachable, !dbg !2849

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2850
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2851 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2853, metadata !576), !dbg !2854
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2683, metadata !576) #10, !dbg !2855
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2857
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2689, metadata !576) #10, !dbg !2858
  %3 = icmp eq i8* %2, null, !dbg !2859
  %4 = icmp ne i64 %0, 0, !dbg !2860
  %5 = and i1 %4, %3, !dbg !2861
  br i1 %5, label %6, label %7, !dbg !2861

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2862
  unreachable, !dbg !2862

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2863
  ret i8* %2, !dbg !2864
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2865 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2867, metadata !576), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2868, metadata !576), !dbg !2871
  %3 = udiv i64 9223372036854775807, %1, !dbg !2872
  %4 = icmp ult i64 %3, %0, !dbg !2872
  br i1 %4, label %8, label %5, !dbg !2874

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !2875
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2869, metadata !576), !dbg !2876
  %7 = icmp eq i8* %6, null, !dbg !2877
  br i1 %7, label %8, label %9, !dbg !2878

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2879
  unreachable, !dbg !2879

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2880
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2881 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2887, metadata !576), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2888, metadata !576), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2683, metadata !576) #10, !dbg !2891
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !2893
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2689, metadata !576) #10, !dbg !2894
  %4 = icmp eq i8* %3, null, !dbg !2895
  %5 = icmp ne i64 %1, 0, !dbg !2896
  %6 = and i1 %5, %4, !dbg !2897
  br i1 %6, label %7, label %8, !dbg !2897

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2898
  unreachable, !dbg !2898

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2899
  ret i8* %3, !dbg !2900
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2901 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2903, metadata !576), !dbg !2904
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2905
  %3 = add i64 %2, 1, !dbg !2906
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2887, metadata !576) #10, !dbg !2907
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2888, metadata !576) #10, !dbg !2909
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2683, metadata !576) #10, !dbg !2910
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !2912
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2689, metadata !576) #10, !dbg !2913
  %5 = icmp eq i8* %4, null, !dbg !2914
  %6 = icmp ne i64 %3, 0, !dbg !2915
  %7 = and i1 %6, %5, !dbg !2916
  br i1 %7, label %8, label %9, !dbg !2916

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2917
  unreachable, !dbg !2917

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !2918
  ret i8* %4, !dbg !2919
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2920 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2922, !tbaa !632
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.92, i64 0, i64 0), i32 5) #10, !dbg !2923
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0), i8* %2) #10, !dbg !2924
  tail call void @abort() #15, !dbg !2925
  unreachable, !dbg !2925
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2926 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2929, metadata !576), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2930, metadata !576), !dbg !2936
  %3 = icmp eq i64 %0, 0, !dbg !2937
  %4 = icmp eq i64 %1, 0, !dbg !2938
  %5 = or i1 %3, %4, !dbg !2939
  br i1 %5, label %12, label %6, !dbg !2939

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2940
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2932, metadata !576), !dbg !2941
  %8 = udiv i64 %7, %1, !dbg !2942
  %9 = icmp eq i64 %8, %0, !dbg !2944
  br i1 %9, label %12, label %10, !dbg !2945

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2946
  store i32 12, i32* %11, align 4, !dbg !2948, !tbaa !632
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2929, metadata !576), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2930, metadata !576), !dbg !2936
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !2949
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2931, metadata !576), !dbg !2950
  br label %16, !dbg !2951

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !2952
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !2953 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !2970, metadata !576), !dbg !2979
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2971, metadata !576), !dbg !2980
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2972, metadata !576), !dbg !2981
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !2973, metadata !576), !dbg !2982
  %6 = bitcast i32* %5 to i8*, !dbg !2983
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !2983
  %7 = icmp eq i32* %0, null, !dbg !2984
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2970, metadata !576), !dbg !2979
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2986
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2970, metadata !576), !dbg !2979
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2974, metadata !576), !dbg !2988
  %10 = icmp ugt i64 %9, -3, !dbg !2989
  %11 = icmp ne i64 %2, 0, !dbg !2990
  %12 = and i1 %11, %10, !dbg !2991
  br i1 %12, label %13, label %18, !dbg !2991

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !2992
  br i1 %14, label %18, label %15, !dbg !2993

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2994, !tbaa !1064
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !2976, metadata !576), !dbg !2995
  %17 = zext i8 %16 to i32, !dbg !2996
  store i32 %17, i32* %8, align 4, !dbg !2997, !tbaa !632
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !2998
  ret i64 %19, !dbg !2998
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !2999 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3044, metadata !576), !dbg !3049
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3050
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3051, metadata !576), !dbg !3055
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3057
  %4 = load i32, i32* %3, align 8, !dbg !3057, !tbaa !3058
  %5 = and i32 %4, 32, !dbg !3057
  %6 = icmp eq i32 %5, 0, !dbg !3060
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3061
  %8 = icmp ne i32 %7, 0, !dbg !3062
  br i1 %6, label %9, label %19, !dbg !3063

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3065
  %11 = xor i1 %8, true, !dbg !3066
  %12 = or i1 %10, %11, !dbg !3066
  %13 = sext i1 %8 to i32, !dbg !3066
  br i1 %12, label %22, label %14, !dbg !3066

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3067
  %16 = load i32, i32* %15, align 4, !dbg !3067, !tbaa !632
  %17 = icmp ne i32 %16, 9, !dbg !3068
  %18 = sext i1 %17 to i32, !dbg !3069
  br label %22, !dbg !3069

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3070

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3072
  store i32 0, i32* %21, align 4, !dbg !3074, !tbaa !632
  br label %22, !dbg !3072

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3075
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3076 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3081, metadata !576), !dbg !3084
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3082, metadata !576), !dbg !3085
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3086
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3083, metadata !576), !dbg !3087
  %3 = icmp eq i8* %2, null, !dbg !3088
  br i1 %3, label %11, label %4, !dbg !3090

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0)) #14, !dbg !3091
  %6 = icmp eq i32 %5, 0, !dbg !3096
  br i1 %6, label %10, label %7, !dbg !3097

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.103, i64 0, i64 0)) #14, !dbg !3098
  %9 = icmp eq i32 %8, 0, !dbg !3099
  br i1 %9, label %10, label %11, !dbg !3100

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3082, metadata !576), !dbg !3085
  br label %11, !dbg !3101

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3102
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3103 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3109, metadata !576), !dbg !3183
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3176, metadata !576), !dbg !3186
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3187
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3107, metadata !576), !dbg !3188
  %4 = icmp eq i8* %3, null, !dbg !3189
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i64 0, i64 0), i8* %3, !dbg !3191
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3107, metadata !576), !dbg !3188
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3192, !tbaa !583
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3123, metadata !576) #10, !dbg !3193
  %7 = icmp eq i8* %6, null, !dbg !3194
  br i1 %7, label %8, label %123, !dbg !3195

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.107, i64 0, i64 0)) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3124, metadata !576) #10, !dbg !3197
  %10 = icmp eq i8* %9, null, !dbg !3198
  br i1 %10, label %14, label %11, !dbg !3200

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3201, !tbaa !1064
  %13 = icmp eq i8 %12, 0, !dbg !3202
  br i1 %13, label %14, label %15, !dbg !3203

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3204

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.108, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3124, metadata !576) #10, !dbg !3197
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3127, metadata !576) #10, !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3129, metadata !576) #10, !dbg !3207
  %18 = icmp eq i64 %17, 0, !dbg !3208
  br i1 %18, label %24, label %19, !dbg !3209

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3210
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3210
  %22 = load i8, i8* %21, align 1, !dbg !3210, !tbaa !1064
  %23 = icmp ne i8 %22, 47, !dbg !3210
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3211
  %27 = add i64 %17, 14, !dbg !3212
  %28 = add i64 %27, %26, !dbg !3213
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3214
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3126, metadata !576) #10, !dbg !3215
  %30 = icmp eq i8* %29, null, !dbg !3216
  br i1 %30, label %121, label %31, !dbg !3216

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3217
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3220

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3221, !tbaa !1064
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3223
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.109, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3224
  br label %37, !dbg !3225

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3223
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.109, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3224
  br label %37, !dbg !3225

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3226
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3131, metadata !576) #10, !dbg !3227
  %39 = icmp slt i32 %38, 0, !dbg !3228
  br i1 %39, label %119, label %40, !dbg !3229

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.110, i64 0, i64 0)) #10, !dbg !3230
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3132, metadata !576) #10, !dbg !3231
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3232
  br i1 %42, label %43, label %45, !dbg !3233

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3234
  br label %119, !dbg !3236

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3173, metadata !576) #10, !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3174, metadata !576) #10, !dbg !3238
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3239

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3240

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3173, metadata !576) #10, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3174, metadata !576) #10, !dbg !3238
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3240
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3241
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3242, metadata !576) #10, !dbg !3247
  %54 = load i8*, i8** %48, align 8, !dbg !3249, !tbaa !3250
  %55 = load i8*, i8** %49, align 8, !dbg !3249, !tbaa !3251
  %56 = icmp ult i8* %54, %55, !dbg !3249
  br i1 %56, label %59, label %57, !dbg !3249, !prof !3252

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3249
  br label %63, !dbg !3249

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3249
  store i8* %60, i8** %48, align 8, !dbg !3249, !tbaa !3250
  %61 = load i8, i8* %54, align 1, !dbg !3249, !tbaa !1064
  %62 = zext i8 %61 to i32, !dbg !3249
  br label %63, !dbg !3249

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3249
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3175, metadata !576) #10, !dbg !3253
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3254, !llvm.loop !3255

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3260

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3242, metadata !576) #10, !dbg !3262
  %67 = load i8*, i8** %48, align 8, !dbg !3260, !tbaa !3250
  %68 = load i8*, i8** %49, align 8, !dbg !3260, !tbaa !3251
  %69 = icmp ult i8* %67, %68, !dbg !3260
  br i1 %69, label %72, label %70, !dbg !3260, !prof !3252

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3260
  br label %76, !dbg !3260

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3260
  store i8* %73, i8** %48, align 8, !dbg !3260, !tbaa !3250
  %74 = load i8, i8* %67, align 1, !dbg !3260, !tbaa !1064
  %75 = zext i8 %74 to i32, !dbg !3260
  br label %76, !dbg !3260

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3260
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3175, metadata !576) #10, !dbg !3253
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3263, !llvm.loop !3264

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3267
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.111, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3268
  %81 = icmp slt i32 %80, 2, !dbg !3270
  br i1 %81, label %112, label %82, !dbg !3271

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3180, metadata !576) #10, !dbg !3273
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3274
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3181, metadata !576) #10, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3182, metadata !576) #10, !dbg !3276
  %85 = icmp eq i64 %51, 0, !dbg !3277
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3279

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3174, metadata !576) #10, !dbg !3238
  %90 = add i64 %87, 2, !dbg !3280
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3173, metadata !576) #10, !dbg !3237
  br label %96, !dbg !3283

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3284
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3174, metadata !576) #10, !dbg !3238
  %94 = add i64 %93, 1, !dbg !3286
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3287
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3173, metadata !576) #10, !dbg !3237
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3173, metadata !576) #10, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3174, metadata !576) #10, !dbg !3238
  %99 = icmp eq i8* %98, null, !dbg !3288
  br i1 %99, label %100, label %102, !dbg !3290

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3174, metadata !576) #10, !dbg !3238
  call void @free(i8* %52) #10, !dbg !3291
  br label %112, !dbg !3293

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3294
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3294
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3295
  %104 = xor i64 %84, -1, !dbg !3296
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3296
  %106 = xor i64 %83, -1, !dbg !3297
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3297
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3298, metadata !576) #10, !dbg !3307
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3306, metadata !576) #10, !dbg !3307
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3309
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3310
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3298, metadata !576) #10, !dbg !3311
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3306, metadata !576) #10, !dbg !3311
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3313
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3314
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3173, metadata !576) #10, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3174, metadata !576) #10, !dbg !3238
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3294
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3294
  br label %50, !dbg !3315, !llvm.loop !3264

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3294
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3294
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3316
  %116 = icmp eq i64 %113, 0, !dbg !3317
  br i1 %116, label %119, label %117, !dbg !3319

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3320
  store i8 0, i8* %118, align 1, !dbg !3322, !tbaa !1064
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3123, metadata !576) #10, !dbg !3193
  call void @free(i8* %29) #10, !dbg !3323
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.106, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3123, metadata !576) #10, !dbg !3193
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3324, !tbaa !583
  br label %123, !dbg !3325

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3123, metadata !576) #10, !dbg !3193
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3108, metadata !576), !dbg !3326
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3108, metadata !576), !dbg !3326
  %125 = load i8, i8* %124, align 1, !dbg !3327, !tbaa !1064
  %126 = icmp eq i8 %125, 0, !dbg !3329
  br i1 %126, label %152, label %127, !dbg !3330

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3331

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3108, metadata !576), !dbg !3326
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3331
  %132 = icmp eq i32 %131, 0, !dbg !3333
  br i1 %132, label %139, label %133, !dbg !3334

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3335
  br i1 %134, label %135, label %143, !dbg !3336

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3337
  %137 = load i8, i8* %136, align 1, !dbg !3337, !tbaa !1064
  %138 = icmp eq i8 %137, 0, !dbg !3338
  br i1 %138, label %139, label %143, !dbg !3339

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3340
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3342
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3343
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3107, metadata !576), !dbg !3188
  br label %152, !dbg !3344

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3345
  %145 = add i64 %144, 1, !dbg !3346
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3108, metadata !576), !dbg !3326
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3348
  %148 = add i64 %147, 1, !dbg !3349
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3350
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3108, metadata !576), !dbg !3326
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3108, metadata !576), !dbg !3326
  %150 = load i8, i8* %149, align 1, !dbg !3327, !tbaa !1064
  %151 = icmp eq i8 %150, 0, !dbg !3329
  br i1 %151, label %152, label %128, !dbg !3330, !llvm.loop !3351

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3107, metadata !576), !dbg !3188
  %154 = load i8, i8* %153, align 1, !dbg !3353, !tbaa !1064
  %155 = icmp eq i8 %154, 0, !dbg !3355
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i8* %153, !dbg !3356
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3107, metadata !576), !dbg !3188
  ret i8* %156, !dbg !3357
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3358 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3403, metadata !576), !dbg !3407
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3404, metadata !576), !dbg !3408
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3406, metadata !576), !dbg !3409
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3410
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3405, metadata !576), !dbg !3411
  %3 = icmp slt i32 %2, 0, !dbg !3412
  br i1 %3, label %4, label %6, !dbg !3414

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3415
  br label %24, !dbg !3416

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3417
  %8 = icmp eq i32 %7, 0, !dbg !3417
  br i1 %8, label %13, label %9, !dbg !3419

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3420
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3421
  %12 = icmp eq i64 %11, -1, !dbg !3422
  br i1 %12, label %16, label %13, !dbg !3423

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3424
  %15 = icmp eq i32 %14, 0, !dbg !3424
  br i1 %15, label %16, label %18, !dbg !3425

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3404, metadata !576), !dbg !3408
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3426
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3406, metadata !576), !dbg !3409
  br label %24, !dbg !3427

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3428
  %20 = load i32, i32* %19, align 4, !dbg !3428, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3404, metadata !576), !dbg !3408
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3404, metadata !576), !dbg !3408
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3426
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3406, metadata !576), !dbg !3409
  %22 = icmp eq i32 %20, 0, !dbg !3429
  br i1 %22, label %24, label %23, !dbg !3427

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3431, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3406, metadata !576), !dbg !3409
  br label %24, !dbg !3433

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3434
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3435 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3480, metadata !576), !dbg !3481
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3482
  br i1 %2, label %6, label %3, !dbg !3484

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3485
  %5 = icmp eq i32 %4, 0, !dbg !3485
  br i1 %5, label %6, label %8, !dbg !3486

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3487
  br label %17, !dbg !3488

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3489, metadata !576) #10, !dbg !3494
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3496
  %10 = load i32, i32* %9, align 8, !dbg !3496, !tbaa !3058
  %11 = and i32 %10, 256, !dbg !3498
  %12 = icmp eq i32 %11, 0, !dbg !3498
  br i1 %12, label %15, label %13, !dbg !3499

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3500
  br label %15, !dbg !3500

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3501
  br label %17, !dbg !3502

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3503
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3504 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3550, metadata !576), !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3551, metadata !576), !dbg !3557
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3552, metadata !576), !dbg !3558
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3559
  %5 = load i8*, i8** %4, align 8, !dbg !3559, !tbaa !3251
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3560
  %7 = load i8*, i8** %6, align 8, !dbg !3560, !tbaa !3250
  %8 = icmp eq i8* %5, %7, !dbg !3561
  br i1 %8, label %9, label %28, !dbg !3562

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3563
  %11 = load i8*, i8** %10, align 8, !dbg !3563, !tbaa !3564
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3565
  %13 = load i8*, i8** %12, align 8, !dbg !3565, !tbaa !3566
  %14 = icmp eq i8* %11, %13, !dbg !3567
  br i1 %14, label %15, label %28, !dbg !3568

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3569
  %17 = load i8*, i8** %16, align 8, !dbg !3569, !tbaa !3570
  %18 = icmp eq i8* %17, null, !dbg !3571
  br i1 %18, label %19, label %28, !dbg !3572

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3573
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3553, metadata !576), !dbg !3575
  %22 = icmp eq i64 %21, -1, !dbg !3576
  br i1 %22, label %30, label %23, !dbg !3578

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3579
  %25 = load i32, i32* %24, align 8, !dbg !3580, !tbaa !3058
  %26 = and i32 %25, -17, !dbg !3580
  store i32 %26, i32* %24, align 8, !dbg !3580, !tbaa !3058
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3581
  store i64 %21, i64* %27, align 8, !dbg !3582, !tbaa !3583
  br label %30, !dbg !3584

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3585
  br label %30, !dbg !3586

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3587
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
!499 = !DIFile(filename: "src/link.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!590 = !DILocation(line: 52, column: 7, scope: !588)
!591 = !DILocation(line: 53, column: 7, scope: !588)
!592 = !DILocation(line: 642, column: 15, scope: !505, inlinedAt: !593)
!593 = distinct !DILocation(line: 54, column: 7, scope: !588)
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
!607 = !DILocation(line: 56, column: 3, scope: !571)
!608 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 60, type: !609, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !612)
!609 = !DISubroutineType(types: !610)
!610 = !{!25, !25, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!612 = !{!613, !614}
!613 = !DILocalVariable(name: "argc", arg: 1, scope: !608, file: !499, line: 60, type: !25)
!614 = !DILocalVariable(name: "argv", arg: 2, scope: !608, file: !499, line: 60, type: !611)
!615 = !DILocation(line: 60, column: 11, scope: !608)
!616 = !DILocation(line: 60, column: 24, scope: !608)
!617 = !DILocation(line: 63, column: 21, scope: !608)
!618 = !DILocation(line: 63, column: 3, scope: !608)
!619 = !DILocation(line: 64, column: 3, scope: !608)
!620 = !DILocation(line: 65, column: 3, scope: !608)
!621 = !DILocation(line: 66, column: 3, scope: !608)
!622 = !DILocation(line: 68, column: 3, scope: !608)
!623 = !DILocation(line: 70, column: 63, scope: !608)
!624 = !DILocation(line: 70, column: 3, scope: !608)
!625 = !DILocation(line: 72, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !608, file: !499, line: 72, column: 7)
!627 = !DILocation(line: 72, column: 48, scope: !626)
!628 = !DILocation(line: 72, column: 7, scope: !608)
!629 = !DILocation(line: 73, column: 5, scope: !626)
!630 = !DILocation(line: 75, column: 14, scope: !631)
!631 = distinct !DILexicalBlock(scope: !608, file: !499, line: 75, column: 7)
!632 = !{!633, !633, i64 0}
!633 = !{!"int", !585, i64 0}
!634 = !DILocation(line: 75, column: 21, scope: !631)
!635 = !DILocation(line: 75, column: 12, scope: !631)
!636 = !DILocation(line: 75, column: 7, scope: !608)
!637 = !DILocation(line: 77, column: 16, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !499, line: 77, column: 11)
!639 = distinct !DILexicalBlock(scope: !631, file: !499, line: 76, column: 5)
!640 = !DILocation(line: 77, column: 11, scope: !639)
!641 = !DILocation(line: 78, column: 22, scope: !638)
!642 = !DILocation(line: 78, column: 9, scope: !638)
!643 = !DILocation(line: 80, column: 22, scope: !638)
!644 = !DILocation(line: 80, column: 65, scope: !638)
!645 = !DILocation(line: 80, column: 60, scope: !638)
!646 = !DILocation(line: 80, column: 53, scope: !638)
!647 = !DILocation(line: 80, column: 9, scope: !638)
!648 = !DILocation(line: 81, column: 7, scope: !639)
!649 = !DILocation(line: 84, column: 18, scope: !650)
!650 = distinct !DILexicalBlock(scope: !608, file: !499, line: 84, column: 7)
!651 = !DILocation(line: 84, column: 7, scope: !608)
!652 = !DILocation(line: 86, column: 20, scope: !653)
!653 = distinct !DILexicalBlock(scope: !650, file: !499, line: 85, column: 5)
!654 = !DILocation(line: 86, column: 55, scope: !653)
!655 = !DILocation(line: 86, column: 62, scope: !653)
!656 = !DILocation(line: 86, column: 50, scope: !653)
!657 = !DILocation(line: 86, column: 43, scope: !653)
!658 = !DILocation(line: 86, column: 7, scope: !653)
!659 = !DILocation(line: 87, column: 7, scope: !653)
!660 = !DILocation(line: 90, column: 13, scope: !661)
!661 = distinct !DILexicalBlock(scope: !608, file: !499, line: 90, column: 7)
!662 = !DILocation(line: 90, column: 39, scope: !661)
!663 = !DILocation(line: 90, column: 27, scope: !661)
!664 = !DILocation(line: 90, column: 7, scope: !661)
!665 = !DILocation(line: 90, column: 45, scope: !661)
!666 = !DILocation(line: 90, column: 7, scope: !608)
!667 = !DILocation(line: 91, column: 5, scope: !661)
!668 = !DILocation(line: 94, column: 3, scope: !608)
!669 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !507, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !670)
!670 = !{!671}
!671 = !DILocalVariable(name: "file", arg: 1, scope: !669, file: !16, line: 41, type: !6)
!672 = !DILocation(line: 41, column: 41, scope: !669)
!673 = !DILocation(line: 43, column: 13, scope: !669)
!674 = !DILocation(line: 44, column: 1, scope: !669)
!675 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !676, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !678)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !17}
!678 = !{!679}
!679 = !DILocalVariable(name: "ignore", arg: 1, scope: !675, file: !16, line: 78, type: !17)
!680 = !DILocation(line: 78, column: 37, scope: !675)
!681 = !DILocation(line: 80, column: 16, scope: !675)
!682 = !{!683, !683, i64 0}
!683 = !{!"_Bool", !585, i64 0}
!684 = !DILocation(line: 81, column: 1, scope: !675)
!685 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !686, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !688)
!686 = !DISubroutineType(types: !687)
!687 = !{null}
!688 = !{!689}
!689 = !DILocalVariable(name: "write_error", scope: !690, file: !16, line: 112, type: !6)
!690 = distinct !DILexicalBlock(scope: !691, file: !16, line: 111, column: 5)
!691 = distinct !DILexicalBlock(scope: !685, file: !16, line: 109, column: 7)
!692 = !DILocation(line: 109, column: 21, scope: !691)
!693 = !DILocation(line: 109, column: 7, scope: !691)
!694 = !DILocation(line: 109, column: 29, scope: !691)
!695 = !DILocation(line: 110, column: 7, scope: !691)
!696 = !DILocation(line: 110, column: 12, scope: !691)
!697 = !{i8 0, i8 2}
!698 = !DILocation(line: 114, column: 19, scope: !699)
!699 = distinct !DILexicalBlock(scope: !690, file: !16, line: 113, column: 11)
!700 = !DILocation(line: 110, column: 25, scope: !691)
!701 = !DILocation(line: 110, column: 28, scope: !691)
!702 = !DILocation(line: 110, column: 34, scope: !691)
!703 = !DILocation(line: 109, column: 7, scope: !685)
!704 = !DILocation(line: 112, column: 33, scope: !690)
!705 = !DILocation(line: 112, column: 19, scope: !690)
!706 = !DILocation(line: 113, column: 11, scope: !699)
!707 = !DILocation(line: 113, column: 11, scope: !690)
!708 = !DILocation(line: 114, column: 36, scope: !699)
!709 = !DILocation(line: 114, column: 9, scope: !699)
!710 = !DILocation(line: 117, column: 9, scope: !699)
!711 = !DILocation(line: 119, column: 14, scope: !690)
!712 = !DILocation(line: 119, column: 7, scope: !690)
!713 = !DILocation(line: 122, column: 22, scope: !714)
!714 = distinct !DILexicalBlock(scope: !685, file: !16, line: 122, column: 8)
!715 = !DILocation(line: 122, column: 8, scope: !714)
!716 = !DILocation(line: 122, column: 30, scope: !714)
!717 = !DILocation(line: 122, column: 8, scope: !685)
!718 = !DILocation(line: 123, column: 13, scope: !714)
!719 = !DILocation(line: 123, column: 6, scope: !714)
!720 = !DILocation(line: 124, column: 1, scope: !685)
!721 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !722, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !725)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !25, !611, !6, !6, !6, !724, null}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734}
!726 = !DILocalVariable(name: "argc", arg: 1, scope: !721, file: !31, line: 44, type: !25)
!727 = !DILocalVariable(name: "argv", arg: 2, scope: !721, file: !31, line: 45, type: !611)
!728 = !DILocalVariable(name: "command_name", arg: 3, scope: !721, file: !31, line: 46, type: !6)
!729 = !DILocalVariable(name: "package", arg: 4, scope: !721, file: !31, line: 47, type: !6)
!730 = !DILocalVariable(name: "version", arg: 5, scope: !721, file: !31, line: 48, type: !6)
!731 = !DILocalVariable(name: "usage_func", arg: 6, scope: !721, file: !31, line: 49, type: !724)
!732 = !DILocalVariable(name: "c", scope: !721, file: !31, line: 52, type: !25)
!733 = !DILocalVariable(name: "saved_opterr", scope: !721, file: !31, line: 53, type: !25)
!734 = !DILocalVariable(name: "authors", scope: !735, file: !31, line: 71, type: !739)
!735 = distinct !DILexicalBlock(scope: !736, file: !31, line: 70, column: 11)
!736 = distinct !DILexicalBlock(scope: !737, file: !31, line: 64, column: 9)
!737 = distinct !DILexicalBlock(scope: !738, file: !31, line: 62, column: 5)
!738 = distinct !DILexicalBlock(scope: !721, file: !31, line: 60, column: 7)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !740, line: 46, baseType: !741)
!740 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !742, line: 48, baseType: !743)
!742 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !744)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 192, elements: !751)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !746)
!746 = !{!747, !748, !749, !750}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !745, file: !29, line: 71, baseType: !113, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !745, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !745, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !745, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!751 = !{!752}
!752 = !DISubrange(count: 1)
!753 = !DILocation(line: 44, column: 25, scope: !721)
!754 = !DILocation(line: 45, column: 28, scope: !721)
!755 = !DILocation(line: 46, column: 33, scope: !721)
!756 = !DILocation(line: 47, column: 33, scope: !721)
!757 = !DILocation(line: 48, column: 33, scope: !721)
!758 = !DILocation(line: 49, column: 28, scope: !721)
!759 = !DILocation(line: 55, column: 18, scope: !721)
!760 = !DILocation(line: 53, column: 7, scope: !721)
!761 = !DILocation(line: 58, column: 10, scope: !721)
!762 = !DILocation(line: 60, column: 12, scope: !738)
!763 = !DILocation(line: 61, column: 7, scope: !738)
!764 = !DILocation(line: 61, column: 15, scope: !738)
!765 = !DILocation(line: 52, column: 7, scope: !721)
!766 = !DILocation(line: 60, column: 7, scope: !721)
!767 = !DILocation(line: 66, column: 11, scope: !736)
!768 = !DILocation(line: 67, column: 11, scope: !736)
!769 = !DILocation(line: 71, column: 13, scope: !735)
!770 = !DILocation(line: 71, column: 21, scope: !735)
!771 = !DILocation(line: 72, column: 13, scope: !735)
!772 = !DILocation(line: 73, column: 29, scope: !735)
!773 = !DILocation(line: 73, column: 13, scope: !735)
!774 = !DILocation(line: 74, column: 13, scope: !735)
!775 = !DILocation(line: 84, column: 10, scope: !721)
!776 = !DILocation(line: 88, column: 10, scope: !721)
!777 = !DILocation(line: 89, column: 1, scope: !721)
!778 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !507, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !779)
!779 = !{!780, !781, !782}
!780 = !DILocalVariable(name: "argv0", arg: 1, scope: !778, file: !52, line: 39, type: !6)
!781 = !DILocalVariable(name: "slash", scope: !778, file: !52, line: 46, type: !6)
!782 = !DILocalVariable(name: "base", scope: !778, file: !52, line: 47, type: !6)
!783 = !DILocation(line: 39, column: 31, scope: !778)
!784 = !DILocation(line: 51, column: 13, scope: !785)
!785 = distinct !DILexicalBlock(scope: !778, file: !52, line: 51, column: 7)
!786 = !DILocation(line: 51, column: 7, scope: !778)
!787 = !DILocation(line: 55, column: 14, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !52, line: 52, column: 5)
!789 = !DILocation(line: 54, column: 7, scope: !788)
!790 = !DILocation(line: 56, column: 7, scope: !788)
!791 = !DILocation(line: 59, column: 11, scope: !778)
!792 = !DILocation(line: 46, column: 15, scope: !778)
!793 = !DILocation(line: 60, column: 17, scope: !778)
!794 = !DILocation(line: 60, column: 33, scope: !778)
!795 = !DILocation(line: 60, column: 11, scope: !778)
!796 = !DILocation(line: 47, column: 15, scope: !778)
!797 = !DILocation(line: 61, column: 12, scope: !798)
!798 = distinct !DILexicalBlock(scope: !778, file: !52, line: 61, column: 7)
!799 = !DILocation(line: 61, column: 20, scope: !798)
!800 = !DILocation(line: 61, column: 25, scope: !798)
!801 = !DILocation(line: 61, column: 42, scope: !798)
!802 = !DILocation(line: 61, column: 28, scope: !798)
!803 = !DILocation(line: 61, column: 61, scope: !798)
!804 = !DILocation(line: 61, column: 7, scope: !778)
!805 = !DILocation(line: 64, column: 11, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !52, line: 64, column: 11)
!807 = distinct !DILexicalBlock(scope: !798, file: !52, line: 62, column: 5)
!808 = !DILocation(line: 64, column: 36, scope: !806)
!809 = !DILocation(line: 64, column: 11, scope: !807)
!810 = !DILocation(line: 66, column: 24, scope: !811)
!811 = distinct !DILexicalBlock(scope: !806, file: !52, line: 65, column: 9)
!812 = !DILocation(line: 70, column: 41, scope: !811)
!813 = !DILocation(line: 72, column: 9, scope: !811)
!814 = !DILocation(line: 84, column: 16, scope: !778)
!815 = !DILocation(line: 90, column: 27, scope: !778)
!816 = !DILocation(line: 92, column: 1, scope: !778)
!817 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !818, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !821)
!818 = !DISubroutineType(types: !819)
!819 = !{!820, !820}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!821 = !{!822, !823, !824}
!822 = !DILocalVariable(name: "o", arg: 1, scope: !817, file: !100, line: 114, type: !820)
!823 = !DILocalVariable(name: "e", scope: !817, file: !100, line: 116, type: !25)
!824 = !DILocalVariable(name: "p", scope: !817, file: !100, line: 117, type: !820)
!825 = !DILocation(line: 114, column: 48, scope: !817)
!826 = !DILocation(line: 116, column: 11, scope: !817)
!827 = !DILocation(line: 116, column: 7, scope: !817)
!828 = !DILocation(line: 117, column: 40, scope: !817)
!829 = !DILocation(line: 117, column: 31, scope: !817)
!830 = !DILocation(line: 117, column: 27, scope: !817)
!831 = !DILocation(line: 119, column: 9, scope: !817)
!832 = !DILocation(line: 120, column: 3, scope: !817)
!833 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !834, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !838)
!834 = !DISubroutineType(types: !835)
!835 = !{!58, !836}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!838 = !{!839}
!839 = !DILocalVariable(name: "o", arg: 1, scope: !833, file: !100, line: 125, type: !836)
!840 = !DILocation(line: 125, column: 50, scope: !833)
!841 = !DILocation(line: 127, column: 11, scope: !833)
!842 = !DILocation(line: 127, column: 46, scope: !833)
!843 = !{!844, !585, i64 0}
!844 = !{!"quoting_options", !585, i64 0, !633, i64 4, !585, i64 8, !584, i64 40, !584, i64 48}
!845 = !DILocation(line: 127, column: 3, scope: !833)
!846 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !847, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !820, !58}
!849 = !{!850, !851}
!850 = !DILocalVariable(name: "o", arg: 1, scope: !846, file: !100, line: 133, type: !820)
!851 = !DILocalVariable(name: "s", arg: 2, scope: !846, file: !100, line: 133, type: !58)
!852 = !DILocation(line: 133, column: 44, scope: !846)
!853 = !DILocation(line: 133, column: 66, scope: !846)
!854 = !DILocation(line: 135, column: 4, scope: !846)
!855 = !DILocation(line: 135, column: 39, scope: !846)
!856 = !DILocation(line: 135, column: 45, scope: !846)
!857 = !DILocation(line: 136, column: 1, scope: !846)
!858 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !859, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!25, !820, !8, !25}
!861 = !{!862, !863, !864, !865, !866, !868, !869}
!862 = !DILocalVariable(name: "o", arg: 1, scope: !858, file: !100, line: 144, type: !820)
!863 = !DILocalVariable(name: "c", arg: 2, scope: !858, file: !100, line: 144, type: !8)
!864 = !DILocalVariable(name: "i", arg: 3, scope: !858, file: !100, line: 144, type: !25)
!865 = !DILocalVariable(name: "uc", scope: !858, file: !100, line: 146, type: !494)
!866 = !DILocalVariable(name: "p", scope: !858, file: !100, line: 147, type: !867)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!868 = !DILocalVariable(name: "shift", scope: !858, file: !100, line: 149, type: !25)
!869 = !DILocalVariable(name: "r", scope: !858, file: !100, line: 150, type: !25)
!870 = !DILocation(line: 144, column: 43, scope: !858)
!871 = !DILocation(line: 144, column: 51, scope: !858)
!872 = !DILocation(line: 144, column: 58, scope: !858)
!873 = !DILocation(line: 146, column: 17, scope: !858)
!874 = !DILocation(line: 148, column: 6, scope: !858)
!875 = !DILocation(line: 148, column: 62, scope: !858)
!876 = !DILocation(line: 148, column: 57, scope: !858)
!877 = !DILocation(line: 147, column: 17, scope: !858)
!878 = !DILocation(line: 149, column: 18, scope: !858)
!879 = !DILocation(line: 149, column: 15, scope: !858)
!880 = !DILocation(line: 149, column: 7, scope: !858)
!881 = !DILocation(line: 150, column: 12, scope: !858)
!882 = !DILocation(line: 150, column: 15, scope: !858)
!883 = !DILocation(line: 150, column: 25, scope: !858)
!884 = !DILocation(line: 150, column: 7, scope: !858)
!885 = !DILocation(line: 151, column: 13, scope: !858)
!886 = !DILocation(line: 151, column: 18, scope: !858)
!887 = !DILocation(line: 151, column: 23, scope: !858)
!888 = !DILocation(line: 151, column: 6, scope: !858)
!889 = !DILocation(line: 152, column: 3, scope: !858)
!890 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !891, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{!25, !820, !25}
!893 = !{!894, !895, !896}
!894 = !DILocalVariable(name: "o", arg: 1, scope: !890, file: !100, line: 160, type: !820)
!895 = !DILocalVariable(name: "i", arg: 2, scope: !890, file: !100, line: 160, type: !25)
!896 = !DILocalVariable(name: "r", scope: !890, file: !100, line: 162, type: !25)
!897 = !DILocation(line: 160, column: 44, scope: !890)
!898 = !DILocation(line: 160, column: 51, scope: !890)
!899 = !DILocation(line: 163, column: 8, scope: !900)
!900 = distinct !DILexicalBlock(scope: !890, file: !100, line: 163, column: 7)
!901 = !DILocation(line: 163, column: 7, scope: !890)
!902 = !DILocation(line: 165, column: 10, scope: !890)
!903 = !{!844, !633, i64 4}
!904 = !DILocation(line: 162, column: 7, scope: !890)
!905 = !DILocation(line: 166, column: 12, scope: !890)
!906 = !DILocation(line: 167, column: 3, scope: !890)
!907 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !908, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !910)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !820, !6, !6}
!910 = !{!911, !912, !913}
!911 = !DILocalVariable(name: "o", arg: 1, scope: !907, file: !100, line: 171, type: !820)
!912 = !DILocalVariable(name: "left_quote", arg: 2, scope: !907, file: !100, line: 172, type: !6)
!913 = !DILocalVariable(name: "right_quote", arg: 3, scope: !907, file: !100, line: 172, type: !6)
!914 = !DILocation(line: 171, column: 45, scope: !907)
!915 = !DILocation(line: 172, column: 33, scope: !907)
!916 = !DILocation(line: 172, column: 57, scope: !907)
!917 = !DILocation(line: 174, column: 8, scope: !918)
!918 = distinct !DILexicalBlock(scope: !907, file: !100, line: 174, column: 7)
!919 = !DILocation(line: 174, column: 7, scope: !907)
!920 = !DILocation(line: 176, column: 6, scope: !907)
!921 = !DILocation(line: 176, column: 12, scope: !907)
!922 = !DILocation(line: 177, column: 8, scope: !923)
!923 = distinct !DILexicalBlock(scope: !907, file: !100, line: 177, column: 7)
!924 = !DILocation(line: 177, column: 23, scope: !923)
!925 = !DILocation(line: 177, column: 19, scope: !923)
!926 = !DILocation(line: 178, column: 5, scope: !923)
!927 = !DILocation(line: 179, column: 6, scope: !907)
!928 = !DILocation(line: 179, column: 17, scope: !907)
!929 = !{!844, !584, i64 40}
!930 = !DILocation(line: 180, column: 6, scope: !907)
!931 = !DILocation(line: 180, column: 18, scope: !907)
!932 = !{!844, !584, i64 48}
!933 = !DILocation(line: 181, column: 1, scope: !907)
!934 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !935, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!94, !50, !94, !6, !94, !836}
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945}
!938 = !DILocalVariable(name: "buffer", arg: 1, scope: !934, file: !100, line: 776, type: !50)
!939 = !DILocalVariable(name: "buffersize", arg: 2, scope: !934, file: !100, line: 776, type: !94)
!940 = !DILocalVariable(name: "arg", arg: 3, scope: !934, file: !100, line: 777, type: !6)
!941 = !DILocalVariable(name: "argsize", arg: 4, scope: !934, file: !100, line: 777, type: !94)
!942 = !DILocalVariable(name: "o", arg: 5, scope: !934, file: !100, line: 778, type: !836)
!943 = !DILocalVariable(name: "p", scope: !934, file: !100, line: 780, type: !836)
!944 = !DILocalVariable(name: "e", scope: !934, file: !100, line: 781, type: !25)
!945 = !DILocalVariable(name: "r", scope: !934, file: !100, line: 782, type: !94)
!946 = !DILocation(line: 776, column: 24, scope: !934)
!947 = !DILocation(line: 776, column: 39, scope: !934)
!948 = !DILocation(line: 777, column: 30, scope: !934)
!949 = !DILocation(line: 777, column: 42, scope: !934)
!950 = !DILocation(line: 778, column: 48, scope: !934)
!951 = !DILocation(line: 780, column: 37, scope: !934)
!952 = !DILocation(line: 780, column: 33, scope: !934)
!953 = !DILocation(line: 781, column: 11, scope: !934)
!954 = !DILocation(line: 781, column: 7, scope: !934)
!955 = !DILocation(line: 783, column: 43, scope: !934)
!956 = !DILocation(line: 783, column: 53, scope: !934)
!957 = !DILocation(line: 783, column: 60, scope: !934)
!958 = !DILocation(line: 784, column: 43, scope: !934)
!959 = !DILocation(line: 784, column: 58, scope: !934)
!960 = !DILocation(line: 782, column: 14, scope: !934)
!961 = !DILocation(line: 782, column: 10, scope: !934)
!962 = !DILocation(line: 785, column: 9, scope: !934)
!963 = !DILocation(line: 786, column: 3, scope: !934)
!964 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !965, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !969)
!965 = !DISubroutineType(types: !966)
!966 = !{!94, !50, !94, !6, !94, !58, !25, !967, !6, !6}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!969 = !{!970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !994, !995, !996, !997, !998, !1001, !1002, !1020, !1023, !1024, !1031}
!970 = !DILocalVariable(name: "buffer", arg: 1, scope: !964, file: !100, line: 248, type: !50)
!971 = !DILocalVariable(name: "buffersize", arg: 2, scope: !964, file: !100, line: 248, type: !94)
!972 = !DILocalVariable(name: "arg", arg: 3, scope: !964, file: !100, line: 249, type: !6)
!973 = !DILocalVariable(name: "argsize", arg: 4, scope: !964, file: !100, line: 249, type: !94)
!974 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !964, file: !100, line: 250, type: !58)
!975 = !DILocalVariable(name: "flags", arg: 6, scope: !964, file: !100, line: 250, type: !25)
!976 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !964, file: !100, line: 251, type: !967)
!977 = !DILocalVariable(name: "left_quote", arg: 8, scope: !964, file: !100, line: 252, type: !6)
!978 = !DILocalVariable(name: "right_quote", arg: 9, scope: !964, file: !100, line: 253, type: !6)
!979 = !DILocalVariable(name: "i", scope: !964, file: !100, line: 255, type: !94)
!980 = !DILocalVariable(name: "len", scope: !964, file: !100, line: 256, type: !94)
!981 = !DILocalVariable(name: "orig_buffersize", scope: !964, file: !100, line: 257, type: !94)
!982 = !DILocalVariable(name: "quote_string", scope: !964, file: !100, line: 258, type: !6)
!983 = !DILocalVariable(name: "quote_string_len", scope: !964, file: !100, line: 259, type: !94)
!984 = !DILocalVariable(name: "backslash_escapes", scope: !964, file: !100, line: 260, type: !17)
!985 = !DILocalVariable(name: "unibyte_locale", scope: !964, file: !100, line: 261, type: !17)
!986 = !DILocalVariable(name: "elide_outer_quotes", scope: !964, file: !100, line: 262, type: !17)
!987 = !DILocalVariable(name: "pending_shell_escape_end", scope: !964, file: !100, line: 263, type: !17)
!988 = !DILocalVariable(name: "encountered_single_quote", scope: !964, file: !100, line: 264, type: !17)
!989 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !964, file: !100, line: 265, type: !17)
!990 = !DILocalVariable(name: "c", scope: !991, file: !100, line: 394, type: !494)
!991 = distinct !DILexicalBlock(scope: !992, file: !100, line: 393, column: 5)
!992 = distinct !DILexicalBlock(scope: !993, file: !100, line: 392, column: 3)
!993 = distinct !DILexicalBlock(scope: !964, file: !100, line: 392, column: 3)
!994 = !DILocalVariable(name: "esc", scope: !991, file: !100, line: 395, type: !494)
!995 = !DILocalVariable(name: "is_right_quote", scope: !991, file: !100, line: 396, type: !17)
!996 = !DILocalVariable(name: "escaping", scope: !991, file: !100, line: 397, type: !17)
!997 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !991, file: !100, line: 398, type: !17)
!998 = !DILocalVariable(name: "m", scope: !999, file: !100, line: 602, type: !94)
!999 = distinct !DILexicalBlock(scope: !1000, file: !100, line: 600, column: 11)
!1000 = distinct !DILexicalBlock(scope: !991, file: !100, line: 418, column: 9)
!1001 = !DILocalVariable(name: "printable", scope: !999, file: !100, line: 604, type: !17)
!1002 = !DILocalVariable(name: "mbstate", scope: !1003, file: !100, line: 613, type: !1005)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !100, line: 612, column: 15)
!1004 = distinct !DILexicalBlock(scope: !999, file: !100, line: 606, column: 17)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1006, line: 6, baseType: !1007)
!1006 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1008, line: 21, baseType: !1009)
!1008 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1008, line: 13, size: 64, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1009, file: !1008, line: 15, baseType: !25, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1009, file: !1008, line: 20, baseType: !1013, size: 32, offset: 32)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !1008, line: 16, size: 32, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1013, file: !1008, line: 18, baseType: !113, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1013, file: !1008, line: 19, baseType: !1017, size: 32)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1018)
!1018 = !{!1019}
!1019 = !DISubrange(count: 4)
!1020 = !DILocalVariable(name: "w", scope: !1021, file: !100, line: 623, type: !1022)
!1021 = distinct !DILexicalBlock(scope: !1003, file: !100, line: 622, column: 19)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1023 = !DILocalVariable(name: "bytes", scope: !1021, file: !100, line: 624, type: !94)
!1024 = !DILocalVariable(name: "j", scope: !1025, file: !100, line: 649, type: !94)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !100, line: 648, column: 27)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !100, line: 646, column: 29)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !100, line: 641, column: 23)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !100, line: 633, column: 30)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !100, line: 628, column: 30)
!1030 = distinct !DILexicalBlock(scope: !1021, file: !100, line: 626, column: 25)
!1031 = !DILocalVariable(name: "ilim", scope: !1032, file: !100, line: 676, type: !94)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 673, column: 15)
!1033 = distinct !DILexicalBlock(scope: !999, file: !100, line: 672, column: 17)
!1034 = !DILocation(line: 248, column: 33, scope: !964)
!1035 = !DILocation(line: 248, column: 48, scope: !964)
!1036 = !DILocation(line: 249, column: 39, scope: !964)
!1037 = !DILocation(line: 249, column: 51, scope: !964)
!1038 = !DILocation(line: 250, column: 46, scope: !964)
!1039 = !DILocation(line: 250, column: 65, scope: !964)
!1040 = !DILocation(line: 251, column: 47, scope: !964)
!1041 = !DILocation(line: 252, column: 39, scope: !964)
!1042 = !DILocation(line: 253, column: 39, scope: !964)
!1043 = !DILocation(line: 256, column: 10, scope: !964)
!1044 = !DILocation(line: 257, column: 10, scope: !964)
!1045 = !DILocation(line: 258, column: 15, scope: !964)
!1046 = !DILocation(line: 259, column: 10, scope: !964)
!1047 = !DILocation(line: 260, column: 8, scope: !964)
!1048 = !DILocation(line: 261, column: 25, scope: !964)
!1049 = !DILocation(line: 261, column: 36, scope: !964)
!1050 = !DILocation(line: 262, column: 8, scope: !964)
!1051 = !DILocation(line: 263, column: 8, scope: !964)
!1052 = !DILocation(line: 264, column: 8, scope: !964)
!1053 = !DILocation(line: 265, column: 8, scope: !964)
!1054 = !DILocation(line: 265, column: 3, scope: !964)
!1055 = !DILocation(line: 308, column: 3, scope: !964)
!1056 = !DILocation(line: 315, column: 11, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !964, file: !100, line: 309, column: 5)
!1058 = !DILocation(line: 315, column: 12, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1057, file: !100, line: 315, column: 11)
!1060 = !DILocation(line: 316, column: 9, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !100, line: 316, column: 9)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !100, line: 316, column: 9)
!1063 = !DILocation(line: 316, column: 9, scope: !1062)
!1064 = !{!585, !585, i64 0}
!1065 = !DILocation(line: 354, column: 26, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !100, line: 332, column: 11)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !100, line: 331, column: 13)
!1068 = distinct !DILexicalBlock(scope: !1057, file: !100, line: 330, column: 7)
!1069 = !DILocation(line: 355, column: 27, scope: !1066)
!1070 = !DILocation(line: 356, column: 11, scope: !1066)
!1071 = !DILocation(line: 357, column: 14, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !100, line: 357, column: 13)
!1073 = !DILocation(line: 357, column: 13, scope: !1068)
!1074 = !DILocation(line: 358, column: 43, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !100, line: 358, column: 11)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !100, line: 358, column: 11)
!1077 = !DILocation(line: 358, column: 11, scope: !1076)
!1078 = !DILocation(line: 359, column: 13, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !100, line: 359, column: 13)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !100, line: 359, column: 13)
!1081 = !DILocation(line: 359, column: 13, scope: !1080)
!1082 = !DILocation(line: 358, column: 70, scope: !1075)
!1083 = distinct !{!1083, !1077, !1084}
!1084 = !DILocation(line: 359, column: 13, scope: !1076)
!1085 = !DILocation(line: 362, column: 28, scope: !1068)
!1086 = !DILocation(line: 364, column: 7, scope: !1057)
!1087 = !DILocation(line: 367, column: 7, scope: !1057)
!1088 = !DILocation(line: 370, column: 7, scope: !1057)
!1089 = !DILocation(line: 373, column: 12, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1057, file: !100, line: 373, column: 11)
!1091 = !DILocation(line: 373, column: 11, scope: !1057)
!1092 = !DILocation(line: 378, column: 12, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1057, file: !100, line: 378, column: 11)
!1094 = !DILocation(line: 378, column: 11, scope: !1057)
!1095 = !DILocation(line: 379, column: 9, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !100, line: 379, column: 9)
!1097 = distinct !DILexicalBlock(scope: !1093, file: !100, line: 379, column: 9)
!1098 = !DILocation(line: 379, column: 9, scope: !1097)
!1099 = !DILocation(line: 386, column: 7, scope: !1057)
!1100 = !DILocation(line: 389, column: 7, scope: !1057)
!1101 = !DILocation(line: 255, column: 10, scope: !964)
!1102 = !DILocation(line: 392, column: 8, scope: !993)
!1103 = !DILocation(line: 392, column: 27, scope: !992)
!1104 = !DILocation(line: 392, column: 19, scope: !992)
!1105 = !DILocation(line: 392, column: 60, scope: !992)
!1106 = !DILocation(line: 392, column: 3, scope: !993)
!1107 = !DILocation(line: 392, column: 41, scope: !992)
!1108 = !DILocation(line: 392, column: 48, scope: !992)
!1109 = !DILocation(line: 396, column: 12, scope: !991)
!1110 = !DILocation(line: 397, column: 12, scope: !991)
!1111 = !DILocation(line: 398, column: 12, scope: !991)
!1112 = !DILocation(line: 401, column: 11, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !991, file: !100, line: 400, column: 11)
!1114 = !DILocation(line: 403, column: 17, scope: !1113)
!1115 = !DILocation(line: 404, column: 39, scope: !1113)
!1116 = !DILocation(line: 408, column: 32, scope: !1113)
!1117 = !DILocation(line: 404, column: 19, scope: !1113)
!1118 = !DILocation(line: 404, column: 15, scope: !1113)
!1119 = !DILocation(line: 409, column: 11, scope: !1113)
!1120 = !DILocation(line: 409, column: 26, scope: !1113)
!1121 = !DILocation(line: 409, column: 14, scope: !1113)
!1122 = !DILocation(line: 409, column: 63, scope: !1113)
!1123 = !DILocation(line: 400, column: 11, scope: !991)
!1124 = !DILocation(line: 416, column: 11, scope: !991)
!1125 = !DILocation(line: 394, column: 21, scope: !991)
!1126 = !DILocation(line: 417, column: 7, scope: !991)
!1127 = !DILocation(line: 420, column: 15, scope: !1000)
!1128 = !DILocation(line: 422, column: 15, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !100, line: 422, column: 15)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !100, line: 421, column: 13)
!1131 = distinct !DILexicalBlock(scope: !1000, file: !100, line: 420, column: 15)
!1132 = !DILocation(line: 422, column: 15, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !100, line: 422, column: 15)
!1134 = !DILocation(line: 422, column: 15, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !100, line: 422, column: 15)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !100, line: 422, column: 15)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !100, line: 422, column: 15)
!1138 = !DILocation(line: 422, column: 15, scope: !1136)
!1139 = !DILocation(line: 422, column: 15, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !100, line: 422, column: 15)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !100, line: 422, column: 15)
!1142 = !DILocation(line: 422, column: 15, scope: !1141)
!1143 = !DILocation(line: 422, column: 15, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !100, line: 422, column: 15)
!1145 = distinct !DILexicalBlock(scope: !1137, file: !100, line: 422, column: 15)
!1146 = !DILocation(line: 422, column: 15, scope: !1145)
!1147 = !DILocation(line: 422, column: 15, scope: !1137)
!1148 = !DILocation(line: 422, column: 15, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !100, line: 422, column: 15)
!1150 = distinct !DILexicalBlock(scope: !1129, file: !100, line: 422, column: 15)
!1151 = !DILocation(line: 422, column: 15, scope: !1150)
!1152 = !DILocation(line: 430, column: 19, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1130, file: !100, line: 429, column: 19)
!1154 = !DILocation(line: 430, column: 24, scope: !1153)
!1155 = !DILocation(line: 430, column: 28, scope: !1153)
!1156 = !DILocation(line: 430, column: 38, scope: !1153)
!1157 = !DILocation(line: 430, column: 48, scope: !1153)
!1158 = !DILocation(line: 430, column: 59, scope: !1153)
!1159 = !DILocation(line: 432, column: 19, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !100, line: 432, column: 19)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !100, line: 432, column: 19)
!1162 = distinct !DILexicalBlock(scope: !1153, file: !100, line: 431, column: 17)
!1163 = !DILocation(line: 432, column: 19, scope: !1161)
!1164 = !DILocation(line: 433, column: 19, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !100, line: 433, column: 19)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !100, line: 433, column: 19)
!1167 = !DILocation(line: 433, column: 19, scope: !1166)
!1168 = !DILocation(line: 434, column: 17, scope: !1162)
!1169 = !DILocation(line: 441, column: 20, scope: !1131)
!1170 = !DILocation(line: 446, column: 11, scope: !1000)
!1171 = !DILocation(line: 449, column: 19, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1000, file: !100, line: 447, column: 13)
!1173 = !DILocation(line: 455, column: 19, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1172, file: !100, line: 454, column: 19)
!1175 = !DILocation(line: 455, column: 24, scope: !1174)
!1176 = !DILocation(line: 455, column: 28, scope: !1174)
!1177 = !DILocation(line: 455, column: 38, scope: !1174)
!1178 = !DILocation(line: 455, column: 47, scope: !1174)
!1179 = !DILocation(line: 455, column: 41, scope: !1174)
!1180 = !DILocation(line: 455, column: 52, scope: !1174)
!1181 = !DILocation(line: 454, column: 19, scope: !1172)
!1182 = !DILocation(line: 456, column: 25, scope: !1174)
!1183 = !DILocation(line: 456, column: 17, scope: !1174)
!1184 = !DILocation(line: 463, column: 25, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1174, file: !100, line: 457, column: 19)
!1186 = !DILocation(line: 467, column: 21, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !100, line: 467, column: 21)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !100, line: 467, column: 21)
!1189 = !DILocation(line: 467, column: 21, scope: !1188)
!1190 = !DILocation(line: 468, column: 21, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !100, line: 468, column: 21)
!1192 = distinct !DILexicalBlock(scope: !1185, file: !100, line: 468, column: 21)
!1193 = !DILocation(line: 468, column: 21, scope: !1192)
!1194 = !DILocation(line: 469, column: 21, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !100, line: 469, column: 21)
!1196 = distinct !DILexicalBlock(scope: !1185, file: !100, line: 469, column: 21)
!1197 = !DILocation(line: 469, column: 21, scope: !1196)
!1198 = !DILocation(line: 470, column: 21, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !100, line: 470, column: 21)
!1200 = distinct !DILexicalBlock(scope: !1185, file: !100, line: 470, column: 21)
!1201 = !DILocation(line: 470, column: 21, scope: !1200)
!1202 = !DILocation(line: 471, column: 21, scope: !1185)
!1203 = !DILocation(line: 395, column: 21, scope: !991)
!1204 = !DILocation(line: 484, column: 31, scope: !1000)
!1205 = !DILocation(line: 485, column: 31, scope: !1000)
!1206 = !DILocation(line: 487, column: 31, scope: !1000)
!1207 = !DILocation(line: 488, column: 31, scope: !1000)
!1208 = !DILocation(line: 489, column: 31, scope: !1000)
!1209 = !DILocation(line: 492, column: 15, scope: !1000)
!1210 = !DILocation(line: 494, column: 19, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !100, line: 493, column: 13)
!1212 = distinct !DILexicalBlock(scope: !1000, file: !100, line: 492, column: 15)
!1213 = !DILocation(line: 501, column: 33, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1000, file: !100, line: 501, column: 15)
!1215 = !DILocation(line: 506, column: 15, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1000, file: !100, line: 505, column: 15)
!1217 = !DILocation(line: 510, column: 15, scope: !1000)
!1218 = !DILocation(line: 518, column: 26, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1000, file: !100, line: 518, column: 15)
!1220 = !DILocation(line: 518, column: 15, scope: !1000)
!1221 = !DILocation(line: 518, column: 40, scope: !1219)
!1222 = !DILocation(line: 518, column: 47, scope: !1219)
!1223 = !DILocation(line: 522, column: 17, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1000, file: !100, line: 522, column: 15)
!1225 = !DILocation(line: 518, column: 18, scope: !1219)
!1226 = !DILocation(line: 518, column: 65, scope: !1219)
!1227 = !DILocation(line: 522, column: 15, scope: !1000)
!1228 = !DILocation(line: 526, column: 11, scope: !1000)
!1229 = !DILocation(line: 541, column: 15, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1000, file: !100, line: 540, column: 15)
!1231 = !DILocation(line: 548, column: 15, scope: !1000)
!1232 = !DILocation(line: 550, column: 19, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !100, line: 549, column: 13)
!1234 = distinct !DILexicalBlock(scope: !1000, file: !100, line: 548, column: 15)
!1235 = !DILocation(line: 553, column: 19, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 553, column: 19)
!1237 = !DILocation(line: 553, column: 35, scope: !1236)
!1238 = !DILocation(line: 553, column: 30, scope: !1236)
!1239 = !DILocation(line: 562, column: 15, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !100, line: 562, column: 15)
!1241 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 562, column: 15)
!1242 = !DILocation(line: 562, column: 15, scope: !1241)
!1243 = !DILocation(line: 563, column: 15, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !100, line: 563, column: 15)
!1245 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 563, column: 15)
!1246 = !DILocation(line: 563, column: 15, scope: !1245)
!1247 = !DILocation(line: 564, column: 15, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !100, line: 564, column: 15)
!1249 = distinct !DILexicalBlock(scope: !1233, file: !100, line: 564, column: 15)
!1250 = !DILocation(line: 564, column: 15, scope: !1249)
!1251 = !DILocation(line: 566, column: 13, scope: !1233)
!1252 = !DILocation(line: 606, column: 17, scope: !999)
!1253 = !DILocation(line: 602, column: 20, scope: !999)
!1254 = !DILocation(line: 609, column: 29, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1004, file: !100, line: 607, column: 15)
!1256 = !{!1257, !1257, i64 0}
!1257 = !{!"short", !585, i64 0}
!1258 = !DILocation(line: 609, column: 27, scope: !1255)
!1259 = !DILocation(line: 604, column: 18, scope: !999)
!1260 = !DILocation(line: 610, column: 15, scope: !1255)
!1261 = !DILocation(line: 613, column: 17, scope: !1003)
!1262 = !DILocation(line: 614, column: 17, scope: !1003)
!1263 = !DILocation(line: 618, column: 29, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1003, file: !100, line: 618, column: 21)
!1265 = !DILocation(line: 618, column: 21, scope: !1003)
!1266 = !DILocation(line: 619, column: 29, scope: !1264)
!1267 = !DILocation(line: 619, column: 19, scope: !1264)
!1268 = !DILocation(line: 621, column: 17, scope: !1003)
!1269 = distinct !{!1269, !1268, !1270}
!1270 = !DILocation(line: 667, column: 44, scope: !1003)
!1271 = !DILocation(line: 623, column: 21, scope: !1021)
!1272 = !DILocation(line: 624, column: 56, scope: !1021)
!1273 = !DILocation(line: 624, column: 50, scope: !1021)
!1274 = !DILocation(line: 625, column: 53, scope: !1021)
!1275 = !DILocation(line: 613, column: 27, scope: !1003)
!1276 = !DILocation(line: 623, column: 29, scope: !1021)
!1277 = !DILocation(line: 624, column: 36, scope: !1021)
!1278 = !DILocation(line: 624, column: 28, scope: !1021)
!1279 = !DILocation(line: 626, column: 25, scope: !1021)
!1280 = !DILocation(line: 636, column: 38, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1028, file: !100, line: 634, column: 23)
!1282 = !DILocation(line: 636, column: 48, scope: !1281)
!1283 = !DILocation(line: 636, column: 51, scope: !1281)
!1284 = !DILocation(line: 636, column: 25, scope: !1281)
!1285 = !DILocation(line: 637, column: 28, scope: !1281)
!1286 = !DILocation(line: 636, column: 34, scope: !1281)
!1287 = distinct !{!1287, !1284, !1285}
!1288 = !DILocation(line: 650, column: 43, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !100, line: 650, column: 29)
!1290 = distinct !DILexicalBlock(scope: !1025, file: !100, line: 650, column: 29)
!1291 = !DILocation(line: 647, column: 29, scope: !1026)
!1292 = !DILocation(line: 649, column: 36, scope: !1025)
!1293 = !DILocation(line: 651, column: 49, scope: !1289)
!1294 = !DILocation(line: 651, column: 39, scope: !1289)
!1295 = !DILocation(line: 651, column: 31, scope: !1289)
!1296 = !DILocation(line: 650, column: 53, scope: !1289)
!1297 = !DILocation(line: 650, column: 29, scope: !1290)
!1298 = distinct !{!1298, !1297, !1299}
!1299 = !DILocation(line: 659, column: 33, scope: !1290)
!1300 = !DILocation(line: 666, column: 19, scope: !1003)
!1301 = !DILocation(line: 662, column: 41, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1027, file: !100, line: 662, column: 29)
!1303 = !DILocation(line: 662, column: 31, scope: !1302)
!1304 = !DILocation(line: 662, column: 29, scope: !1027)
!1305 = !DILocation(line: 664, column: 27, scope: !1027)
!1306 = !DILocation(line: 667, column: 26, scope: !1003)
!1307 = !DILocation(line: 667, column: 24, scope: !1003)
!1308 = !DILocation(line: 666, column: 19, scope: !1021)
!1309 = !DILocation(line: 668, column: 15, scope: !1004)
!1310 = !DILocation(line: 670, column: 40, scope: !999)
!1311 = !DILocation(line: 672, column: 19, scope: !1033)
!1312 = !DILocation(line: 672, column: 45, scope: !1033)
!1313 = !DILocation(line: 672, column: 23, scope: !1033)
!1314 = !DILocation(line: 676, column: 33, scope: !1032)
!1315 = !DILocation(line: 676, column: 24, scope: !1032)
!1316 = !DILocation(line: 678, column: 17, scope: !1032)
!1317 = !DILocation(line: 680, column: 43, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !100, line: 680, column: 25)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !100, line: 679, column: 19)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !100, line: 678, column: 17)
!1321 = distinct !DILexicalBlock(scope: !1032, file: !100, line: 678, column: 17)
!1322 = !DILocation(line: 682, column: 25, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !100, line: 682, column: 25)
!1324 = distinct !DILexicalBlock(scope: !1318, file: !100, line: 681, column: 23)
!1325 = !DILocation(line: 682, column: 25, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !100, line: 682, column: 25)
!1327 = !DILocation(line: 682, column: 25, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !100, line: 682, column: 25)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !100, line: 682, column: 25)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !100, line: 682, column: 25)
!1331 = !DILocation(line: 682, column: 25, scope: !1329)
!1332 = !DILocation(line: 682, column: 25, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !100, line: 682, column: 25)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !100, line: 682, column: 25)
!1335 = !DILocation(line: 682, column: 25, scope: !1334)
!1336 = !DILocation(line: 682, column: 25, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !100, line: 682, column: 25)
!1338 = distinct !DILexicalBlock(scope: !1330, file: !100, line: 682, column: 25)
!1339 = !DILocation(line: 682, column: 25, scope: !1338)
!1340 = !DILocation(line: 682, column: 25, scope: !1330)
!1341 = !DILocation(line: 682, column: 25, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !100, line: 682, column: 25)
!1343 = distinct !DILexicalBlock(scope: !1323, file: !100, line: 682, column: 25)
!1344 = !DILocation(line: 682, column: 25, scope: !1343)
!1345 = !DILocation(line: 683, column: 25, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !100, line: 683, column: 25)
!1347 = distinct !DILexicalBlock(scope: !1324, file: !100, line: 683, column: 25)
!1348 = !DILocation(line: 683, column: 25, scope: !1347)
!1349 = !DILocation(line: 684, column: 25, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !100, line: 684, column: 25)
!1351 = distinct !DILexicalBlock(scope: !1324, file: !100, line: 684, column: 25)
!1352 = !DILocation(line: 684, column: 25, scope: !1351)
!1353 = !DILocation(line: 685, column: 38, scope: !1324)
!1354 = !DILocation(line: 685, column: 33, scope: !1324)
!1355 = !DILocation(line: 686, column: 23, scope: !1324)
!1356 = !DILocation(line: 687, column: 30, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1318, file: !100, line: 687, column: 30)
!1358 = !DILocation(line: 687, column: 30, scope: !1318)
!1359 = !DILocation(line: 689, column: 25, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !100, line: 689, column: 25)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !100, line: 689, column: 25)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !100, line: 688, column: 23)
!1363 = !DILocation(line: 689, column: 25, scope: !1361)
!1364 = !DILocation(line: 691, column: 23, scope: !1362)
!1365 = !DILocation(line: 692, column: 35, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1319, file: !100, line: 692, column: 25)
!1367 = !DILocation(line: 692, column: 30, scope: !1366)
!1368 = !DILocation(line: 692, column: 25, scope: !1319)
!1369 = !DILocation(line: 694, column: 21, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !100, line: 694, column: 21)
!1371 = distinct !DILexicalBlock(scope: !1319, file: !100, line: 694, column: 21)
!1372 = !DILocation(line: 694, column: 21, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !100, line: 694, column: 21)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !100, line: 694, column: 21)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !100, line: 694, column: 21)
!1376 = !DILocation(line: 694, column: 21, scope: !1374)
!1377 = !DILocation(line: 694, column: 21, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !100, line: 694, column: 21)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !100, line: 694, column: 21)
!1380 = !DILocation(line: 694, column: 21, scope: !1379)
!1381 = !DILocation(line: 694, column: 21, scope: !1375)
!1382 = !DILocation(line: 695, column: 21, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !100, line: 695, column: 21)
!1384 = distinct !DILexicalBlock(scope: !1319, file: !100, line: 695, column: 21)
!1385 = !DILocation(line: 695, column: 21, scope: !1384)
!1386 = !DILocation(line: 696, column: 25, scope: !1319)
!1387 = !DILocation(line: 678, column: 17, scope: !1320)
!1388 = distinct !{!1388, !1389, !1390}
!1389 = !DILocation(line: 678, column: 17, scope: !1321)
!1390 = !DILocation(line: 697, column: 19, scope: !1321)
!1391 = !DILocation(line: 704, column: 34, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !991, file: !100, line: 704, column: 11)
!1393 = !DILocation(line: 706, column: 14, scope: !1392)
!1394 = !DILocation(line: 707, column: 14, scope: !1392)
!1395 = !DILocation(line: 707, column: 35, scope: !1392)
!1396 = !DILocation(line: 707, column: 17, scope: !1392)
!1397 = !DILocation(line: 707, column: 53, scope: !1392)
!1398 = !DILocation(line: 707, column: 47, scope: !1392)
!1399 = !DILocation(line: 707, column: 65, scope: !1392)
!1400 = !DILocation(line: 708, column: 15, scope: !1392)
!1401 = !DILocation(line: 708, column: 11, scope: !1392)
!1402 = !DILocation(line: 704, column: 11, scope: !991)
!1403 = !DILocation(line: 712, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !991, file: !100, line: 712, column: 7)
!1405 = !DILocation(line: 712, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1404, file: !100, line: 712, column: 7)
!1407 = !DILocation(line: 712, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !100, line: 712, column: 7)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !100, line: 712, column: 7)
!1410 = distinct !DILexicalBlock(scope: !1406, file: !100, line: 712, column: 7)
!1411 = !DILocation(line: 712, column: 7, scope: !1409)
!1412 = !DILocation(line: 712, column: 7, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !100, line: 712, column: 7)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !100, line: 712, column: 7)
!1415 = !DILocation(line: 712, column: 7, scope: !1414)
!1416 = !DILocation(line: 712, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !100, line: 712, column: 7)
!1418 = distinct !DILexicalBlock(scope: !1410, file: !100, line: 712, column: 7)
!1419 = !DILocation(line: 712, column: 7, scope: !1418)
!1420 = !DILocation(line: 712, column: 7, scope: !1410)
!1421 = !DILocation(line: 712, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !100, line: 712, column: 7)
!1423 = distinct !DILexicalBlock(scope: !1404, file: !100, line: 712, column: 7)
!1424 = !DILocation(line: 712, column: 7, scope: !1423)
!1425 = !DILocation(line: 715, column: 7, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !100, line: 715, column: 7)
!1427 = distinct !DILexicalBlock(scope: !991, file: !100, line: 715, column: 7)
!1428 = !DILocation(line: 715, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !100, line: 715, column: 7)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !100, line: 715, column: 7)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !100, line: 715, column: 7)
!1432 = !DILocation(line: 715, column: 7, scope: !1430)
!1433 = !DILocation(line: 715, column: 7, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !100, line: 715, column: 7)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !100, line: 715, column: 7)
!1436 = !DILocation(line: 715, column: 7, scope: !1435)
!1437 = !DILocation(line: 715, column: 7, scope: !1431)
!1438 = !DILocation(line: 716, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !100, line: 716, column: 7)
!1440 = distinct !DILexicalBlock(scope: !991, file: !100, line: 716, column: 7)
!1441 = !DILocation(line: 716, column: 7, scope: !1440)
!1442 = !DILocation(line: 718, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !991, file: !100, line: 718, column: 11)
!1444 = !DILocation(line: 718, column: 11, scope: !991)
!1445 = !DILocation(line: 720, column: 5, scope: !992)
!1446 = !DILocation(line: 392, column: 75, scope: !992)
!1447 = !DILocation(line: 392, column: 3, scope: !992)
!1448 = distinct !{!1448, !1106, !1449}
!1449 = !DILocation(line: 720, column: 5, scope: !993)
!1450 = !DILocation(line: 722, column: 11, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !964, file: !100, line: 722, column: 7)
!1452 = !DILocation(line: 722, column: 16, scope: !1451)
!1453 = !DILocation(line: 730, column: 51, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !964, file: !100, line: 730, column: 7)
!1455 = !DILocation(line: 731, column: 10, scope: !1454)
!1456 = !DILocation(line: 733, column: 11, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !100, line: 733, column: 11)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !100, line: 732, column: 5)
!1459 = !DILocation(line: 733, column: 11, scope: !1458)
!1460 = !DILocation(line: 734, column: 16, scope: !1457)
!1461 = !DILocation(line: 734, column: 9, scope: !1457)
!1462 = !DILocation(line: 738, column: 18, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1457, file: !100, line: 738, column: 16)
!1464 = !DILocation(line: 738, column: 32, scope: !1463)
!1465 = !DILocation(line: 738, column: 29, scope: !1463)
!1466 = !DILocation(line: 747, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !964, file: !100, line: 747, column: 7)
!1468 = !DILocation(line: 747, column: 20, scope: !1467)
!1469 = !DILocation(line: 748, column: 12, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !100, line: 748, column: 5)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !100, line: 748, column: 5)
!1472 = !DILocation(line: 748, column: 5, scope: !1471)
!1473 = !DILocation(line: 749, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !100, line: 749, column: 7)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !100, line: 749, column: 7)
!1476 = !DILocation(line: 749, column: 7, scope: !1475)
!1477 = !DILocation(line: 748, column: 39, scope: !1470)
!1478 = distinct !{!1478, !1472, !1479}
!1479 = !DILocation(line: 749, column: 7, scope: !1471)
!1480 = !DILocation(line: 751, column: 11, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !964, file: !100, line: 751, column: 7)
!1482 = !DILocation(line: 751, column: 7, scope: !964)
!1483 = !DILocation(line: 752, column: 5, scope: !1481)
!1484 = !DILocation(line: 752, column: 17, scope: !1481)
!1485 = !DILocation(line: 758, column: 21, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !964, file: !100, line: 758, column: 7)
!1487 = !DILocation(line: 758, column: 54, scope: !1486)
!1488 = !DILocation(line: 758, column: 51, scope: !1486)
!1489 = !DILocation(line: 762, column: 42, scope: !964)
!1490 = !DILocation(line: 760, column: 10, scope: !964)
!1491 = !DILocation(line: 760, column: 3, scope: !964)
!1492 = !DILocation(line: 764, column: 1, scope: !964)
!1493 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1494, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!6, !6, !58}
!1496 = !{!1497, !1498, !1499, !1500}
!1497 = !DILocalVariable(name: "msgid", arg: 1, scope: !1493, file: !100, line: 199, type: !6)
!1498 = !DILocalVariable(name: "s", arg: 2, scope: !1493, file: !100, line: 199, type: !58)
!1499 = !DILocalVariable(name: "translation", scope: !1493, file: !100, line: 201, type: !6)
!1500 = !DILocalVariable(name: "locale_code", scope: !1493, file: !100, line: 202, type: !6)
!1501 = !DILocation(line: 199, column: 28, scope: !1493)
!1502 = !DILocation(line: 199, column: 54, scope: !1493)
!1503 = !DILocation(line: 201, column: 29, scope: !1493)
!1504 = !DILocation(line: 201, column: 15, scope: !1493)
!1505 = !DILocation(line: 204, column: 19, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1493, file: !100, line: 204, column: 7)
!1507 = !DILocation(line: 204, column: 7, scope: !1493)
!1508 = !DILocation(line: 225, column: 17, scope: !1493)
!1509 = !DILocation(line: 202, column: 15, scope: !1493)
!1510 = !DILocalVariable(name: "s2", arg: 2, scope: !1511, file: !1512, line: 160, type: !6)
!1511 = distinct !DISubprogram(name: "strcaseeq0", scope: !1512, file: !1512, line: 160, type: !1513, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1515)
!1512 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1515 = !{!1516, !1510, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1516 = !DILocalVariable(name: "s1", arg: 1, scope: !1511, file: !1512, line: 160, type: !6)
!1517 = !DILocalVariable(name: "s20", arg: 3, scope: !1511, file: !1512, line: 160, type: !8)
!1518 = !DILocalVariable(name: "s21", arg: 4, scope: !1511, file: !1512, line: 160, type: !8)
!1519 = !DILocalVariable(name: "s22", arg: 5, scope: !1511, file: !1512, line: 160, type: !8)
!1520 = !DILocalVariable(name: "s23", arg: 6, scope: !1511, file: !1512, line: 160, type: !8)
!1521 = !DILocalVariable(name: "s24", arg: 7, scope: !1511, file: !1512, line: 160, type: !8)
!1522 = !DILocalVariable(name: "s25", arg: 8, scope: !1511, file: !1512, line: 160, type: !8)
!1523 = !DILocalVariable(name: "s26", arg: 9, scope: !1511, file: !1512, line: 160, type: !8)
!1524 = !DILocalVariable(name: "s27", arg: 10, scope: !1511, file: !1512, line: 160, type: !8)
!1525 = !DILocalVariable(name: "s28", arg: 11, scope: !1511, file: !1512, line: 160, type: !8)
!1526 = !DILocation(line: 160, column: 41, scope: !1511, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 226, column: 7, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1493, file: !100, line: 226, column: 7)
!1529 = !DILocation(line: 160, column: 120, scope: !1511, inlinedAt: !1527)
!1530 = !DILocation(line: 160, column: 130, scope: !1511, inlinedAt: !1527)
!1531 = !DILocation(line: 162, column: 7, scope: !1532, inlinedAt: !1527)
!1532 = distinct !DILexicalBlock(scope: !1511, file: !1512, line: 162, column: 7)
!1533 = !DILocalVariable(name: "s2", arg: 2, scope: !1534, file: !1512, line: 146, type: !6)
!1534 = distinct !DISubprogram(name: "strcaseeq1", scope: !1512, file: !1512, line: 146, type: !1535, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1537)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1537 = !{!1538, !1533, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546}
!1538 = !DILocalVariable(name: "s1", arg: 1, scope: !1534, file: !1512, line: 146, type: !6)
!1539 = !DILocalVariable(name: "s21", arg: 3, scope: !1534, file: !1512, line: 146, type: !8)
!1540 = !DILocalVariable(name: "s22", arg: 4, scope: !1534, file: !1512, line: 146, type: !8)
!1541 = !DILocalVariable(name: "s23", arg: 5, scope: !1534, file: !1512, line: 146, type: !8)
!1542 = !DILocalVariable(name: "s24", arg: 6, scope: !1534, file: !1512, line: 146, type: !8)
!1543 = !DILocalVariable(name: "s25", arg: 7, scope: !1534, file: !1512, line: 146, type: !8)
!1544 = !DILocalVariable(name: "s26", arg: 8, scope: !1534, file: !1512, line: 146, type: !8)
!1545 = !DILocalVariable(name: "s27", arg: 9, scope: !1534, file: !1512, line: 146, type: !8)
!1546 = !DILocalVariable(name: "s28", arg: 10, scope: !1534, file: !1512, line: 146, type: !8)
!1547 = !DILocation(line: 146, column: 41, scope: !1534, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 167, column: 16, scope: !1549, inlinedAt: !1527)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !1512, line: 164, column: 11)
!1550 = distinct !DILexicalBlock(scope: !1532, file: !1512, line: 163, column: 5)
!1551 = !DILocation(line: 146, column: 110, scope: !1534, inlinedAt: !1548)
!1552 = !DILocation(line: 146, column: 120, scope: !1534, inlinedAt: !1548)
!1553 = !DILocation(line: 148, column: 7, scope: !1554, inlinedAt: !1548)
!1554 = distinct !DILexicalBlock(scope: !1534, file: !1512, line: 148, column: 7)
!1555 = !DILocalVariable(name: "s2", arg: 2, scope: !1556, file: !1512, line: 132, type: !6)
!1556 = distinct !DISubprogram(name: "strcaseeq2", scope: !1512, file: !1512, line: 132, type: !1557, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1559)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1559 = !{!1560, !1555, !1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1560 = !DILocalVariable(name: "s1", arg: 1, scope: !1556, file: !1512, line: 132, type: !6)
!1561 = !DILocalVariable(name: "s22", arg: 3, scope: !1556, file: !1512, line: 132, type: !8)
!1562 = !DILocalVariable(name: "s23", arg: 4, scope: !1556, file: !1512, line: 132, type: !8)
!1563 = !DILocalVariable(name: "s24", arg: 5, scope: !1556, file: !1512, line: 132, type: !8)
!1564 = !DILocalVariable(name: "s25", arg: 6, scope: !1556, file: !1512, line: 132, type: !8)
!1565 = !DILocalVariable(name: "s26", arg: 7, scope: !1556, file: !1512, line: 132, type: !8)
!1566 = !DILocalVariable(name: "s27", arg: 8, scope: !1556, file: !1512, line: 132, type: !8)
!1567 = !DILocalVariable(name: "s28", arg: 9, scope: !1556, file: !1512, line: 132, type: !8)
!1568 = !DILocation(line: 132, column: 41, scope: !1556, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 153, column: 16, scope: !1570, inlinedAt: !1548)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !1512, line: 150, column: 11)
!1571 = distinct !DILexicalBlock(scope: !1554, file: !1512, line: 149, column: 5)
!1572 = !DILocation(line: 132, column: 100, scope: !1556, inlinedAt: !1569)
!1573 = !DILocation(line: 132, column: 110, scope: !1556, inlinedAt: !1569)
!1574 = !DILocation(line: 134, column: 7, scope: !1575, inlinedAt: !1569)
!1575 = distinct !DILexicalBlock(scope: !1556, file: !1512, line: 134, column: 7)
!1576 = !DILocalVariable(name: "s2", arg: 2, scope: !1577, file: !1512, line: 118, type: !6)
!1577 = distinct !DISubprogram(name: "strcaseeq3", scope: !1512, file: !1512, line: 118, type: !1578, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1580 = !{!1581, !1576, !1582, !1583, !1584, !1585, !1586, !1587}
!1581 = !DILocalVariable(name: "s1", arg: 1, scope: !1577, file: !1512, line: 118, type: !6)
!1582 = !DILocalVariable(name: "s23", arg: 3, scope: !1577, file: !1512, line: 118, type: !8)
!1583 = !DILocalVariable(name: "s24", arg: 4, scope: !1577, file: !1512, line: 118, type: !8)
!1584 = !DILocalVariable(name: "s25", arg: 5, scope: !1577, file: !1512, line: 118, type: !8)
!1585 = !DILocalVariable(name: "s26", arg: 6, scope: !1577, file: !1512, line: 118, type: !8)
!1586 = !DILocalVariable(name: "s27", arg: 7, scope: !1577, file: !1512, line: 118, type: !8)
!1587 = !DILocalVariable(name: "s28", arg: 8, scope: !1577, file: !1512, line: 118, type: !8)
!1588 = !DILocation(line: 118, column: 41, scope: !1577, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 139, column: 16, scope: !1590, inlinedAt: !1569)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !1512, line: 136, column: 11)
!1591 = distinct !DILexicalBlock(scope: !1575, file: !1512, line: 135, column: 5)
!1592 = !DILocation(line: 118, column: 90, scope: !1577, inlinedAt: !1589)
!1593 = !DILocation(line: 118, column: 100, scope: !1577, inlinedAt: !1589)
!1594 = !DILocation(line: 120, column: 7, scope: !1595, inlinedAt: !1589)
!1595 = distinct !DILexicalBlock(scope: !1577, file: !1512, line: 120, column: 7)
!1596 = !DILocation(line: 120, column: 7, scope: !1577, inlinedAt: !1589)
!1597 = !DILocalVariable(name: "s2", arg: 2, scope: !1598, file: !1512, line: 104, type: !6)
!1598 = distinct !DISubprogram(name: "strcaseeq4", scope: !1512, file: !1512, line: 104, type: !1599, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1601)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1601 = !{!1602, !1597, !1603, !1604, !1605, !1606, !1607}
!1602 = !DILocalVariable(name: "s1", arg: 1, scope: !1598, file: !1512, line: 104, type: !6)
!1603 = !DILocalVariable(name: "s24", arg: 3, scope: !1598, file: !1512, line: 104, type: !8)
!1604 = !DILocalVariable(name: "s25", arg: 4, scope: !1598, file: !1512, line: 104, type: !8)
!1605 = !DILocalVariable(name: "s26", arg: 5, scope: !1598, file: !1512, line: 104, type: !8)
!1606 = !DILocalVariable(name: "s27", arg: 6, scope: !1598, file: !1512, line: 104, type: !8)
!1607 = !DILocalVariable(name: "s28", arg: 7, scope: !1598, file: !1512, line: 104, type: !8)
!1608 = !DILocation(line: 104, column: 41, scope: !1598, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 125, column: 16, scope: !1610, inlinedAt: !1589)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !1512, line: 122, column: 11)
!1611 = distinct !DILexicalBlock(scope: !1595, file: !1512, line: 121, column: 5)
!1612 = !DILocation(line: 104, column: 80, scope: !1598, inlinedAt: !1609)
!1613 = !DILocation(line: 104, column: 90, scope: !1598, inlinedAt: !1609)
!1614 = !DILocation(line: 106, column: 7, scope: !1615, inlinedAt: !1609)
!1615 = distinct !DILexicalBlock(scope: !1598, file: !1512, line: 106, column: 7)
!1616 = !DILocation(line: 106, column: 7, scope: !1598, inlinedAt: !1609)
!1617 = !DILocalVariable(name: "s2", arg: 2, scope: !1618, file: !1512, line: 90, type: !6)
!1618 = distinct !DISubprogram(name: "strcaseeq5", scope: !1512, file: !1512, line: 90, type: !1619, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1621)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!25, !6, !6, !8, !8, !8, !8}
!1621 = !{!1622, !1617, !1623, !1624, !1625, !1626}
!1622 = !DILocalVariable(name: "s1", arg: 1, scope: !1618, file: !1512, line: 90, type: !6)
!1623 = !DILocalVariable(name: "s25", arg: 3, scope: !1618, file: !1512, line: 90, type: !8)
!1624 = !DILocalVariable(name: "s26", arg: 4, scope: !1618, file: !1512, line: 90, type: !8)
!1625 = !DILocalVariable(name: "s27", arg: 5, scope: !1618, file: !1512, line: 90, type: !8)
!1626 = !DILocalVariable(name: "s28", arg: 6, scope: !1618, file: !1512, line: 90, type: !8)
!1627 = !DILocation(line: 90, column: 41, scope: !1618, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 111, column: 16, scope: !1629, inlinedAt: !1609)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !1512, line: 108, column: 11)
!1630 = distinct !DILexicalBlock(scope: !1615, file: !1512, line: 107, column: 5)
!1631 = !DILocation(line: 90, column: 70, scope: !1618, inlinedAt: !1628)
!1632 = !DILocation(line: 90, column: 80, scope: !1618, inlinedAt: !1628)
!1633 = !DILocation(line: 92, column: 7, scope: !1634, inlinedAt: !1628)
!1634 = distinct !DILexicalBlock(scope: !1618, file: !1512, line: 92, column: 7)
!1635 = !DILocation(line: 92, column: 7, scope: !1618, inlinedAt: !1628)
!1636 = !DILocation(line: 227, column: 12, scope: !1528)
!1637 = !DILocation(line: 227, column: 21, scope: !1528)
!1638 = !DILocation(line: 227, column: 5, scope: !1528)
!1639 = !DILocation(line: 146, column: 41, scope: !1534, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 167, column: 16, scope: !1549, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 228, column: 7, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1493, file: !100, line: 228, column: 7)
!1643 = !DILocation(line: 146, column: 110, scope: !1534, inlinedAt: !1640)
!1644 = !DILocation(line: 146, column: 120, scope: !1534, inlinedAt: !1640)
!1645 = !DILocation(line: 148, column: 7, scope: !1554, inlinedAt: !1640)
!1646 = !DILocation(line: 132, column: 41, scope: !1556, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 153, column: 16, scope: !1570, inlinedAt: !1640)
!1648 = !DILocation(line: 132, column: 100, scope: !1556, inlinedAt: !1647)
!1649 = !DILocation(line: 132, column: 110, scope: !1556, inlinedAt: !1647)
!1650 = !DILocation(line: 134, column: 7, scope: !1575, inlinedAt: !1647)
!1651 = !DILocation(line: 134, column: 7, scope: !1556, inlinedAt: !1647)
!1652 = !DILocation(line: 118, column: 41, scope: !1577, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 139, column: 16, scope: !1590, inlinedAt: !1647)
!1654 = !DILocation(line: 118, column: 90, scope: !1577, inlinedAt: !1653)
!1655 = !DILocation(line: 118, column: 100, scope: !1577, inlinedAt: !1653)
!1656 = !DILocation(line: 120, column: 7, scope: !1595, inlinedAt: !1653)
!1657 = !DILocation(line: 120, column: 7, scope: !1577, inlinedAt: !1653)
!1658 = !DILocation(line: 104, column: 41, scope: !1598, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 125, column: 16, scope: !1610, inlinedAt: !1653)
!1660 = !DILocation(line: 104, column: 80, scope: !1598, inlinedAt: !1659)
!1661 = !DILocation(line: 104, column: 90, scope: !1598, inlinedAt: !1659)
!1662 = !DILocation(line: 106, column: 7, scope: !1615, inlinedAt: !1659)
!1663 = !DILocation(line: 106, column: 7, scope: !1598, inlinedAt: !1659)
!1664 = !DILocation(line: 90, column: 41, scope: !1618, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 111, column: 16, scope: !1629, inlinedAt: !1659)
!1666 = !DILocation(line: 90, column: 70, scope: !1618, inlinedAt: !1665)
!1667 = !DILocation(line: 90, column: 80, scope: !1618, inlinedAt: !1665)
!1668 = !DILocation(line: 92, column: 7, scope: !1634, inlinedAt: !1665)
!1669 = !DILocation(line: 92, column: 7, scope: !1618, inlinedAt: !1665)
!1670 = !DILocalVariable(name: "s2", arg: 2, scope: !1671, file: !1512, line: 76, type: !6)
!1671 = distinct !DISubprogram(name: "strcaseeq6", scope: !1512, file: !1512, line: 76, type: !1672, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!25, !6, !6, !8, !8, !8}
!1674 = !{!1675, !1670, !1676, !1677, !1678}
!1675 = !DILocalVariable(name: "s1", arg: 1, scope: !1671, file: !1512, line: 76, type: !6)
!1676 = !DILocalVariable(name: "s26", arg: 3, scope: !1671, file: !1512, line: 76, type: !8)
!1677 = !DILocalVariable(name: "s27", arg: 4, scope: !1671, file: !1512, line: 76, type: !8)
!1678 = !DILocalVariable(name: "s28", arg: 5, scope: !1671, file: !1512, line: 76, type: !8)
!1679 = !DILocation(line: 76, column: 41, scope: !1671, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 97, column: 16, scope: !1681, inlinedAt: !1665)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !1512, line: 94, column: 11)
!1682 = distinct !DILexicalBlock(scope: !1634, file: !1512, line: 93, column: 5)
!1683 = !DILocation(line: 76, column: 60, scope: !1671, inlinedAt: !1680)
!1684 = !DILocation(line: 76, column: 70, scope: !1671, inlinedAt: !1680)
!1685 = !DILocation(line: 78, column: 7, scope: !1686, inlinedAt: !1680)
!1686 = distinct !DILexicalBlock(scope: !1671, file: !1512, line: 78, column: 7)
!1687 = !DILocation(line: 78, column: 7, scope: !1671, inlinedAt: !1680)
!1688 = !DILocalVariable(name: "s2", arg: 2, scope: !1689, file: !1512, line: 62, type: !6)
!1689 = distinct !DISubprogram(name: "strcaseeq7", scope: !1512, file: !1512, line: 62, type: !1690, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!25, !6, !6, !8, !8}
!1692 = !{!1693, !1688, !1694, !1695}
!1693 = !DILocalVariable(name: "s1", arg: 1, scope: !1689, file: !1512, line: 62, type: !6)
!1694 = !DILocalVariable(name: "s27", arg: 3, scope: !1689, file: !1512, line: 62, type: !8)
!1695 = !DILocalVariable(name: "s28", arg: 4, scope: !1689, file: !1512, line: 62, type: !8)
!1696 = !DILocation(line: 62, column: 41, scope: !1689, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 83, column: 16, scope: !1698, inlinedAt: !1680)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !1512, line: 80, column: 11)
!1699 = distinct !DILexicalBlock(scope: !1686, file: !1512, line: 79, column: 5)
!1700 = !DILocation(line: 62, column: 50, scope: !1689, inlinedAt: !1697)
!1701 = !DILocation(line: 62, column: 60, scope: !1689, inlinedAt: !1697)
!1702 = !DILocation(line: 64, column: 7, scope: !1703, inlinedAt: !1697)
!1703 = distinct !DILexicalBlock(scope: !1689, file: !1512, line: 64, column: 7)
!1704 = !DILocation(line: 228, column: 7, scope: !1493)
!1705 = !DILocation(line: 229, column: 12, scope: !1642)
!1706 = !DILocation(line: 229, column: 21, scope: !1642)
!1707 = !DILocation(line: 229, column: 5, scope: !1642)
!1708 = !DILocation(line: 231, column: 13, scope: !1493)
!1709 = !DILocation(line: 231, column: 11, scope: !1493)
!1710 = !DILocation(line: 231, column: 3, scope: !1493)
!1711 = !DILocation(line: 232, column: 1, scope: !1493)
!1712 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !1713, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!50, !6, !94, !836}
!1715 = !{!1716, !1717, !1718}
!1716 = !DILocalVariable(name: "arg", arg: 1, scope: !1712, file: !100, line: 791, type: !6)
!1717 = !DILocalVariable(name: "argsize", arg: 2, scope: !1712, file: !100, line: 791, type: !94)
!1718 = !DILocalVariable(name: "o", arg: 3, scope: !1712, file: !100, line: 792, type: !836)
!1719 = !DILocation(line: 791, column: 29, scope: !1712)
!1720 = !DILocation(line: 791, column: 41, scope: !1712)
!1721 = !DILocation(line: 792, column: 47, scope: !1712)
!1722 = !DILocalVariable(name: "arg", arg: 1, scope: !1723, file: !100, line: 804, type: !6)
!1723 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !1724, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!50, !6, !94, !539, !836}
!1726 = !{!1722, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734}
!1727 = !DILocalVariable(name: "argsize", arg: 2, scope: !1723, file: !100, line: 804, type: !94)
!1728 = !DILocalVariable(name: "size", arg: 3, scope: !1723, file: !100, line: 804, type: !539)
!1729 = !DILocalVariable(name: "o", arg: 4, scope: !1723, file: !100, line: 805, type: !836)
!1730 = !DILocalVariable(name: "p", scope: !1723, file: !100, line: 807, type: !836)
!1731 = !DILocalVariable(name: "e", scope: !1723, file: !100, line: 808, type: !25)
!1732 = !DILocalVariable(name: "flags", scope: !1723, file: !100, line: 810, type: !25)
!1733 = !DILocalVariable(name: "bufsize", scope: !1723, file: !100, line: 811, type: !94)
!1734 = !DILocalVariable(name: "buf", scope: !1723, file: !100, line: 815, type: !50)
!1735 = !DILocation(line: 804, column: 33, scope: !1723, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 794, column: 10, scope: !1712)
!1737 = !DILocation(line: 804, column: 45, scope: !1723, inlinedAt: !1736)
!1738 = !DILocation(line: 804, column: 62, scope: !1723, inlinedAt: !1736)
!1739 = !DILocation(line: 805, column: 51, scope: !1723, inlinedAt: !1736)
!1740 = !DILocation(line: 807, column: 37, scope: !1723, inlinedAt: !1736)
!1741 = !DILocation(line: 807, column: 33, scope: !1723, inlinedAt: !1736)
!1742 = !DILocation(line: 808, column: 11, scope: !1723, inlinedAt: !1736)
!1743 = !DILocation(line: 808, column: 7, scope: !1723, inlinedAt: !1736)
!1744 = !DILocation(line: 810, column: 18, scope: !1723, inlinedAt: !1736)
!1745 = !DILocation(line: 810, column: 24, scope: !1723, inlinedAt: !1736)
!1746 = !DILocation(line: 810, column: 7, scope: !1723, inlinedAt: !1736)
!1747 = !DILocation(line: 811, column: 69, scope: !1723, inlinedAt: !1736)
!1748 = !DILocation(line: 812, column: 53, scope: !1723, inlinedAt: !1736)
!1749 = !DILocation(line: 813, column: 49, scope: !1723, inlinedAt: !1736)
!1750 = !DILocation(line: 814, column: 49, scope: !1723, inlinedAt: !1736)
!1751 = !DILocation(line: 811, column: 20, scope: !1723, inlinedAt: !1736)
!1752 = !DILocation(line: 814, column: 62, scope: !1723, inlinedAt: !1736)
!1753 = !DILocation(line: 811, column: 10, scope: !1723, inlinedAt: !1736)
!1754 = !DILocalVariable(name: "n", arg: 1, scope: !1755, file: !535, line: 220, type: !94)
!1755 = distinct !DISubprogram(name: "xcharalloc", scope: !535, file: !535, line: 220, type: !1756, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!50, !94}
!1758 = !{!1754}
!1759 = !DILocation(line: 220, column: 20, scope: !1755, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 815, column: 15, scope: !1723, inlinedAt: !1736)
!1761 = !DILocation(line: 222, column: 10, scope: !1755, inlinedAt: !1760)
!1762 = !DILocation(line: 815, column: 9, scope: !1723, inlinedAt: !1736)
!1763 = !DILocation(line: 816, column: 60, scope: !1723, inlinedAt: !1736)
!1764 = !DILocation(line: 818, column: 32, scope: !1723, inlinedAt: !1736)
!1765 = !DILocation(line: 818, column: 47, scope: !1723, inlinedAt: !1736)
!1766 = !DILocation(line: 816, column: 3, scope: !1723, inlinedAt: !1736)
!1767 = !DILocation(line: 819, column: 9, scope: !1723, inlinedAt: !1736)
!1768 = !DILocation(line: 794, column: 3, scope: !1712)
!1769 = !DILocation(line: 804, column: 33, scope: !1723)
!1770 = !DILocation(line: 804, column: 45, scope: !1723)
!1771 = !DILocation(line: 804, column: 62, scope: !1723)
!1772 = !DILocation(line: 805, column: 51, scope: !1723)
!1773 = !DILocation(line: 807, column: 37, scope: !1723)
!1774 = !DILocation(line: 807, column: 33, scope: !1723)
!1775 = !DILocation(line: 808, column: 11, scope: !1723)
!1776 = !DILocation(line: 808, column: 7, scope: !1723)
!1777 = !DILocation(line: 810, column: 18, scope: !1723)
!1778 = !DILocation(line: 810, column: 27, scope: !1723)
!1779 = !DILocation(line: 810, column: 24, scope: !1723)
!1780 = !DILocation(line: 810, column: 7, scope: !1723)
!1781 = !DILocation(line: 811, column: 69, scope: !1723)
!1782 = !DILocation(line: 812, column: 53, scope: !1723)
!1783 = !DILocation(line: 813, column: 49, scope: !1723)
!1784 = !DILocation(line: 814, column: 49, scope: !1723)
!1785 = !DILocation(line: 811, column: 20, scope: !1723)
!1786 = !DILocation(line: 814, column: 62, scope: !1723)
!1787 = !DILocation(line: 811, column: 10, scope: !1723)
!1788 = !DILocation(line: 220, column: 20, scope: !1755, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 815, column: 15, scope: !1723)
!1790 = !DILocation(line: 222, column: 10, scope: !1755, inlinedAt: !1789)
!1791 = !DILocation(line: 815, column: 9, scope: !1723)
!1792 = !DILocation(line: 816, column: 60, scope: !1723)
!1793 = !DILocation(line: 818, column: 32, scope: !1723)
!1794 = !DILocation(line: 818, column: 47, scope: !1723)
!1795 = !DILocation(line: 816, column: 3, scope: !1723)
!1796 = !DILocation(line: 819, column: 9, scope: !1723)
!1797 = !DILocation(line: 820, column: 7, scope: !1723)
!1798 = !DILocation(line: 821, column: 11, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1723, file: !100, line: 820, column: 7)
!1800 = !{!1801, !1801, i64 0}
!1801 = !{!"long", !585, i64 0}
!1802 = !DILocation(line: 821, column: 5, scope: !1799)
!1803 = !DILocation(line: 822, column: 3, scope: !1723)
!1804 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !686, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1805)
!1805 = !{!1806, !1807}
!1806 = !DILocalVariable(name: "sv", scope: !1804, file: !100, line: 842, type: !127)
!1807 = !DILocalVariable(name: "i", scope: !1804, file: !100, line: 843, type: !25)
!1808 = !DILocation(line: 842, column: 24, scope: !1804)
!1809 = !DILocation(line: 842, column: 19, scope: !1804)
!1810 = !DILocation(line: 843, column: 7, scope: !1804)
!1811 = !DILocation(line: 844, column: 19, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !100, line: 844, column: 3)
!1813 = distinct !DILexicalBlock(scope: !1804, file: !100, line: 844, column: 3)
!1814 = !DILocation(line: 844, column: 17, scope: !1812)
!1815 = !DILocation(line: 844, column: 3, scope: !1813)
!1816 = !DILocation(line: 845, column: 17, scope: !1812)
!1817 = !{!1818, !584, i64 8}
!1818 = !{!"slotvec", !1801, i64 0, !584, i64 8}
!1819 = !DILocation(line: 845, column: 5, scope: !1812)
!1820 = !DILocation(line: 844, column: 28, scope: !1812)
!1821 = distinct !{!1821, !1815, !1822}
!1822 = !DILocation(line: 845, column: 20, scope: !1813)
!1823 = !DILocation(line: 846, column: 13, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1804, file: !100, line: 846, column: 7)
!1825 = !DILocation(line: 846, column: 17, scope: !1824)
!1826 = !DILocation(line: 846, column: 7, scope: !1804)
!1827 = !DILocation(line: 848, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !100, line: 847, column: 5)
!1829 = !DILocation(line: 849, column: 21, scope: !1828)
!1830 = !{!1818, !1801, i64 0}
!1831 = !DILocation(line: 850, column: 20, scope: !1828)
!1832 = !DILocation(line: 851, column: 5, scope: !1828)
!1833 = !DILocation(line: 852, column: 10, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1804, file: !100, line: 852, column: 7)
!1835 = !DILocation(line: 852, column: 7, scope: !1804)
!1836 = !DILocation(line: 854, column: 13, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !100, line: 853, column: 5)
!1838 = !DILocation(line: 854, column: 7, scope: !1837)
!1839 = !DILocation(line: 855, column: 15, scope: !1837)
!1840 = !DILocation(line: 856, column: 5, scope: !1837)
!1841 = !DILocation(line: 857, column: 10, scope: !1804)
!1842 = !DILocation(line: 858, column: 1, scope: !1804)
!1843 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !1844, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!50, !25, !6}
!1846 = !{!1847, !1848}
!1847 = !DILocalVariable(name: "n", arg: 1, scope: !1843, file: !100, line: 922, type: !25)
!1848 = !DILocalVariable(name: "arg", arg: 2, scope: !1843, file: !100, line: 922, type: !6)
!1849 = !DILocation(line: 922, column: 17, scope: !1843)
!1850 = !DILocation(line: 922, column: 32, scope: !1843)
!1851 = !DILocation(line: 924, column: 10, scope: !1843)
!1852 = !DILocation(line: 924, column: 3, scope: !1843)
!1853 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !1854, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1856)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!50, !25, !6, !94, !836}
!1856 = !{!1857, !1858, !1859, !1860, !1861, !1862, !1863, !1866, !1868, !1869, !1870}
!1857 = !DILocalVariable(name: "n", arg: 1, scope: !1853, file: !100, line: 869, type: !25)
!1858 = !DILocalVariable(name: "arg", arg: 2, scope: !1853, file: !100, line: 869, type: !6)
!1859 = !DILocalVariable(name: "argsize", arg: 3, scope: !1853, file: !100, line: 869, type: !94)
!1860 = !DILocalVariable(name: "options", arg: 4, scope: !1853, file: !100, line: 870, type: !836)
!1861 = !DILocalVariable(name: "e", scope: !1853, file: !100, line: 872, type: !25)
!1862 = !DILocalVariable(name: "sv", scope: !1853, file: !100, line: 874, type: !127)
!1863 = !DILocalVariable(name: "preallocated", scope: !1864, file: !100, line: 881, type: !17)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !100, line: 880, column: 5)
!1865 = distinct !DILexicalBlock(scope: !1853, file: !100, line: 879, column: 7)
!1866 = !DILocalVariable(name: "size", scope: !1867, file: !100, line: 894, type: !94)
!1867 = distinct !DILexicalBlock(scope: !1853, file: !100, line: 893, column: 3)
!1868 = !DILocalVariable(name: "val", scope: !1867, file: !100, line: 895, type: !50)
!1869 = !DILocalVariable(name: "flags", scope: !1867, file: !100, line: 897, type: !25)
!1870 = !DILocalVariable(name: "qsize", scope: !1867, file: !100, line: 898, type: !94)
!1871 = !DILocation(line: 869, column: 25, scope: !1853)
!1872 = !DILocation(line: 869, column: 40, scope: !1853)
!1873 = !DILocation(line: 869, column: 52, scope: !1853)
!1874 = !DILocation(line: 870, column: 51, scope: !1853)
!1875 = !DILocation(line: 872, column: 11, scope: !1853)
!1876 = !DILocation(line: 872, column: 7, scope: !1853)
!1877 = !DILocation(line: 874, column: 24, scope: !1853)
!1878 = !DILocation(line: 874, column: 19, scope: !1853)
!1879 = !DILocation(line: 876, column: 9, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1853, file: !100, line: 876, column: 7)
!1881 = !DILocation(line: 876, column: 7, scope: !1853)
!1882 = !DILocation(line: 877, column: 5, scope: !1880)
!1883 = !DILocation(line: 879, column: 7, scope: !1865)
!1884 = !DILocation(line: 879, column: 14, scope: !1865)
!1885 = !DILocation(line: 879, column: 7, scope: !1853)
!1886 = !DILocation(line: 881, column: 31, scope: !1864)
!1887 = !DILocation(line: 883, column: 67, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1864, file: !100, line: 883, column: 11)
!1889 = !DILocation(line: 883, column: 11, scope: !1864)
!1890 = !DILocation(line: 884, column: 9, scope: !1888)
!1891 = !DILocation(line: 886, column: 32, scope: !1864)
!1892 = !DILocation(line: 886, column: 61, scope: !1864)
!1893 = !DILocation(line: 886, column: 58, scope: !1864)
!1894 = !DILocation(line: 886, column: 66, scope: !1864)
!1895 = !DILocation(line: 886, column: 22, scope: !1864)
!1896 = !DILocation(line: 886, column: 15, scope: !1864)
!1897 = !DILocation(line: 887, column: 11, scope: !1864)
!1898 = !DILocation(line: 888, column: 15, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1864, file: !100, line: 887, column: 11)
!1900 = !{i64 0, i64 8, !1800, i64 8, i64 8, !583}
!1901 = !DILocation(line: 888, column: 9, scope: !1899)
!1902 = !DILocation(line: 889, column: 20, scope: !1864)
!1903 = !DILocation(line: 889, column: 18, scope: !1864)
!1904 = !DILocation(line: 889, column: 7, scope: !1864)
!1905 = !DILocation(line: 889, column: 38, scope: !1864)
!1906 = !DILocation(line: 889, column: 31, scope: !1864)
!1907 = !DILocation(line: 889, column: 48, scope: !1864)
!1908 = !DILocation(line: 890, column: 14, scope: !1864)
!1909 = !DILocation(line: 891, column: 5, scope: !1864)
!1910 = !DILocation(line: 894, column: 19, scope: !1867)
!1911 = !DILocation(line: 894, column: 25, scope: !1867)
!1912 = !DILocation(line: 894, column: 12, scope: !1867)
!1913 = !DILocation(line: 895, column: 23, scope: !1867)
!1914 = !DILocation(line: 895, column: 11, scope: !1867)
!1915 = !DILocation(line: 897, column: 26, scope: !1867)
!1916 = !DILocation(line: 897, column: 32, scope: !1867)
!1917 = !DILocation(line: 897, column: 9, scope: !1867)
!1918 = !DILocation(line: 899, column: 55, scope: !1867)
!1919 = !DILocation(line: 900, column: 46, scope: !1867)
!1920 = !DILocation(line: 901, column: 55, scope: !1867)
!1921 = !DILocation(line: 902, column: 55, scope: !1867)
!1922 = !DILocation(line: 898, column: 20, scope: !1867)
!1923 = !DILocation(line: 898, column: 12, scope: !1867)
!1924 = !DILocation(line: 904, column: 14, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1867, file: !100, line: 904, column: 9)
!1926 = !DILocation(line: 904, column: 9, scope: !1867)
!1927 = !DILocation(line: 906, column: 35, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1925, file: !100, line: 905, column: 7)
!1929 = !DILocation(line: 906, column: 20, scope: !1928)
!1930 = !DILocation(line: 907, column: 17, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1928, file: !100, line: 907, column: 13)
!1932 = !DILocation(line: 907, column: 13, scope: !1928)
!1933 = !DILocation(line: 908, column: 11, scope: !1931)
!1934 = !DILocation(line: 220, column: 20, scope: !1755, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 909, column: 27, scope: !1928)
!1936 = !DILocation(line: 222, column: 10, scope: !1755, inlinedAt: !1935)
!1937 = !DILocation(line: 909, column: 19, scope: !1928)
!1938 = !DILocation(line: 910, column: 69, scope: !1928)
!1939 = !DILocation(line: 912, column: 44, scope: !1928)
!1940 = !DILocation(line: 913, column: 44, scope: !1928)
!1941 = !DILocation(line: 910, column: 9, scope: !1928)
!1942 = !DILocation(line: 914, column: 7, scope: !1928)
!1943 = !DILocation(line: 916, column: 11, scope: !1867)
!1944 = !DILocation(line: 917, column: 5, scope: !1867)
!1945 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !1946, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1948)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!50, !25, !6, !94}
!1948 = !{!1949, !1950, !1951}
!1949 = !DILocalVariable(name: "n", arg: 1, scope: !1945, file: !100, line: 928, type: !25)
!1950 = !DILocalVariable(name: "arg", arg: 2, scope: !1945, file: !100, line: 928, type: !6)
!1951 = !DILocalVariable(name: "argsize", arg: 3, scope: !1945, file: !100, line: 928, type: !94)
!1952 = !DILocation(line: 928, column: 21, scope: !1945)
!1953 = !DILocation(line: 928, column: 36, scope: !1945)
!1954 = !DILocation(line: 928, column: 48, scope: !1945)
!1955 = !DILocation(line: 930, column: 10, scope: !1945)
!1956 = !DILocation(line: 930, column: 3, scope: !1945)
!1957 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !1958, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1960)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!50, !6}
!1960 = !{!1961}
!1961 = !DILocalVariable(name: "arg", arg: 1, scope: !1957, file: !100, line: 934, type: !6)
!1962 = !DILocation(line: 934, column: 23, scope: !1957)
!1963 = !DILocation(line: 922, column: 17, scope: !1843, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 936, column: 10, scope: !1957)
!1965 = !DILocation(line: 922, column: 32, scope: !1843, inlinedAt: !1964)
!1966 = !DILocation(line: 924, column: 10, scope: !1843, inlinedAt: !1964)
!1967 = !DILocation(line: 936, column: 3, scope: !1957)
!1968 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !1969, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!50, !6, !94}
!1971 = !{!1972, !1973}
!1972 = !DILocalVariable(name: "arg", arg: 1, scope: !1968, file: !100, line: 940, type: !6)
!1973 = !DILocalVariable(name: "argsize", arg: 2, scope: !1968, file: !100, line: 940, type: !94)
!1974 = !DILocation(line: 940, column: 27, scope: !1968)
!1975 = !DILocation(line: 940, column: 39, scope: !1968)
!1976 = !DILocation(line: 928, column: 21, scope: !1945, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 942, column: 10, scope: !1968)
!1978 = !DILocation(line: 928, column: 36, scope: !1945, inlinedAt: !1977)
!1979 = !DILocation(line: 928, column: 48, scope: !1945, inlinedAt: !1977)
!1980 = !DILocation(line: 930, column: 10, scope: !1945, inlinedAt: !1977)
!1981 = !DILocation(line: 942, column: 3, scope: !1968)
!1982 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !1983, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!50, !25, !58, !6}
!1985 = !{!1986, !1987, !1988, !1989}
!1986 = !DILocalVariable(name: "n", arg: 1, scope: !1982, file: !100, line: 946, type: !25)
!1987 = !DILocalVariable(name: "s", arg: 2, scope: !1982, file: !100, line: 946, type: !58)
!1988 = !DILocalVariable(name: "arg", arg: 3, scope: !1982, file: !100, line: 946, type: !6)
!1989 = !DILocalVariable(name: "o", scope: !1982, file: !100, line: 948, type: !837)
!1990 = !DILocalVariable(name: "o", scope: !1991, file: !100, line: 187, type: !107)
!1991 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !1992, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!107, !58}
!1994 = !{!1995, !1990}
!1995 = !DILocalVariable(name: "style", arg: 1, scope: !1991, file: !100, line: 185, type: !58)
!1996 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!1997 = !DILocation(line: 187, column: 26, scope: !1991, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 948, column: 36, scope: !1982)
!1999 = !DILocation(line: 946, column: 23, scope: !1982)
!2000 = !DILocation(line: 946, column: 45, scope: !1982)
!2001 = !DILocation(line: 946, column: 60, scope: !1982)
!2002 = !DILocation(line: 948, column: 3, scope: !1982)
!2003 = !DILocation(line: 948, column: 32, scope: !1982)
!2004 = !DILocation(line: 185, column: 48, scope: !1991, inlinedAt: !1998)
!2005 = !DILocation(line: 187, column: 3, scope: !1991, inlinedAt: !1998)
!2006 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2007 = !DILocation(line: 188, column: 13, scope: !2008, inlinedAt: !1998)
!2008 = distinct !DILexicalBlock(scope: !1991, file: !100, line: 188, column: 7)
!2009 = !DILocation(line: 188, column: 7, scope: !1991, inlinedAt: !1998)
!2010 = !DILocation(line: 189, column: 5, scope: !2008, inlinedAt: !1998)
!2011 = !{!2012}
!2012 = distinct !{!2012, !2013, !"quoting_options_from_style: argument 0"}
!2013 = distinct !{!2013, !"quoting_options_from_style"}
!2014 = !DILocation(line: 191, column: 10, scope: !1991, inlinedAt: !1998)
!2015 = !DILocation(line: 192, column: 1, scope: !1991, inlinedAt: !1998)
!2016 = !DILocation(line: 949, column: 10, scope: !1982)
!2017 = !DILocation(line: 950, column: 1, scope: !1982)
!2018 = !DILocation(line: 949, column: 3, scope: !1982)
!2019 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2020, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2022)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!50, !25, !58, !6, !94}
!2022 = !{!2023, !2024, !2025, !2026, !2027}
!2023 = !DILocalVariable(name: "n", arg: 1, scope: !2019, file: !100, line: 953, type: !25)
!2024 = !DILocalVariable(name: "s", arg: 2, scope: !2019, file: !100, line: 953, type: !58)
!2025 = !DILocalVariable(name: "arg", arg: 3, scope: !2019, file: !100, line: 954, type: !6)
!2026 = !DILocalVariable(name: "argsize", arg: 4, scope: !2019, file: !100, line: 954, type: !94)
!2027 = !DILocalVariable(name: "o", scope: !2019, file: !100, line: 956, type: !837)
!2028 = !DILocation(line: 187, column: 26, scope: !1991, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 956, column: 36, scope: !2019)
!2030 = !DILocation(line: 953, column: 27, scope: !2019)
!2031 = !DILocation(line: 953, column: 49, scope: !2019)
!2032 = !DILocation(line: 954, column: 35, scope: !2019)
!2033 = !DILocation(line: 954, column: 47, scope: !2019)
!2034 = !DILocation(line: 956, column: 3, scope: !2019)
!2035 = !DILocation(line: 956, column: 32, scope: !2019)
!2036 = !DILocation(line: 185, column: 48, scope: !1991, inlinedAt: !2029)
!2037 = !DILocation(line: 187, column: 3, scope: !1991, inlinedAt: !2029)
!2038 = !DILocation(line: 188, column: 13, scope: !2008, inlinedAt: !2029)
!2039 = !DILocation(line: 188, column: 7, scope: !1991, inlinedAt: !2029)
!2040 = !DILocation(line: 189, column: 5, scope: !2008, inlinedAt: !2029)
!2041 = !{!2042}
!2042 = distinct !{!2042, !2043, !"quoting_options_from_style: argument 0"}
!2043 = distinct !{!2043, !"quoting_options_from_style"}
!2044 = !DILocation(line: 191, column: 10, scope: !1991, inlinedAt: !2029)
!2045 = !DILocation(line: 192, column: 1, scope: !1991, inlinedAt: !2029)
!2046 = !DILocation(line: 957, column: 10, scope: !2019)
!2047 = !DILocation(line: 958, column: 1, scope: !2019)
!2048 = !DILocation(line: 957, column: 3, scope: !2019)
!2049 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2050, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!50, !58, !6}
!2052 = !{!2053, !2054}
!2053 = !DILocalVariable(name: "s", arg: 1, scope: !2049, file: !100, line: 961, type: !58)
!2054 = !DILocalVariable(name: "arg", arg: 2, scope: !2049, file: !100, line: 961, type: !6)
!2055 = !DILocation(line: 187, column: 26, scope: !1991, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 948, column: 36, scope: !1982, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 963, column: 10, scope: !2049)
!2058 = !DILocation(line: 961, column: 36, scope: !2049)
!2059 = !DILocation(line: 961, column: 51, scope: !2049)
!2060 = !DILocation(line: 946, column: 23, scope: !1982, inlinedAt: !2057)
!2061 = !DILocation(line: 946, column: 45, scope: !1982, inlinedAt: !2057)
!2062 = !DILocation(line: 946, column: 60, scope: !1982, inlinedAt: !2057)
!2063 = !DILocation(line: 948, column: 3, scope: !1982, inlinedAt: !2057)
!2064 = !DILocation(line: 948, column: 32, scope: !1982, inlinedAt: !2057)
!2065 = !DILocation(line: 185, column: 48, scope: !1991, inlinedAt: !2056)
!2066 = !DILocation(line: 187, column: 3, scope: !1991, inlinedAt: !2056)
!2067 = !DILocation(line: 188, column: 13, scope: !2008, inlinedAt: !2056)
!2068 = !DILocation(line: 188, column: 7, scope: !1991, inlinedAt: !2056)
!2069 = !DILocation(line: 189, column: 5, scope: !2008, inlinedAt: !2056)
!2070 = !{!2071}
!2071 = distinct !{!2071, !2072, !"quoting_options_from_style: argument 0"}
!2072 = distinct !{!2072, !"quoting_options_from_style"}
!2073 = !DILocation(line: 191, column: 10, scope: !1991, inlinedAt: !2056)
!2074 = !DILocation(line: 192, column: 1, scope: !1991, inlinedAt: !2056)
!2075 = !DILocation(line: 949, column: 10, scope: !1982, inlinedAt: !2057)
!2076 = !DILocation(line: 950, column: 1, scope: !1982, inlinedAt: !2057)
!2077 = !DILocation(line: 963, column: 3, scope: !2049)
!2078 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2079, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2081)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!50, !58, !6, !94}
!2081 = !{!2082, !2083, !2084}
!2082 = !DILocalVariable(name: "s", arg: 1, scope: !2078, file: !100, line: 967, type: !58)
!2083 = !DILocalVariable(name: "arg", arg: 2, scope: !2078, file: !100, line: 967, type: !6)
!2084 = !DILocalVariable(name: "argsize", arg: 3, scope: !2078, file: !100, line: 967, type: !94)
!2085 = !DILocation(line: 187, column: 26, scope: !1991, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 956, column: 36, scope: !2019, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 969, column: 10, scope: !2078)
!2088 = !DILocation(line: 967, column: 40, scope: !2078)
!2089 = !DILocation(line: 967, column: 55, scope: !2078)
!2090 = !DILocation(line: 967, column: 67, scope: !2078)
!2091 = !DILocation(line: 953, column: 27, scope: !2019, inlinedAt: !2087)
!2092 = !DILocation(line: 953, column: 49, scope: !2019, inlinedAt: !2087)
!2093 = !DILocation(line: 954, column: 35, scope: !2019, inlinedAt: !2087)
!2094 = !DILocation(line: 954, column: 47, scope: !2019, inlinedAt: !2087)
!2095 = !DILocation(line: 956, column: 3, scope: !2019, inlinedAt: !2087)
!2096 = !DILocation(line: 956, column: 32, scope: !2019, inlinedAt: !2087)
!2097 = !DILocation(line: 185, column: 48, scope: !1991, inlinedAt: !2086)
!2098 = !DILocation(line: 187, column: 3, scope: !1991, inlinedAt: !2086)
!2099 = !DILocation(line: 188, column: 13, scope: !2008, inlinedAt: !2086)
!2100 = !DILocation(line: 188, column: 7, scope: !1991, inlinedAt: !2086)
!2101 = !DILocation(line: 189, column: 5, scope: !2008, inlinedAt: !2086)
!2102 = !{!2103}
!2103 = distinct !{!2103, !2104, !"quoting_options_from_style: argument 0"}
!2104 = distinct !{!2104, !"quoting_options_from_style"}
!2105 = !DILocation(line: 191, column: 10, scope: !1991, inlinedAt: !2086)
!2106 = !DILocation(line: 192, column: 1, scope: !1991, inlinedAt: !2086)
!2107 = !DILocation(line: 957, column: 10, scope: !2019, inlinedAt: !2087)
!2108 = !DILocation(line: 958, column: 1, scope: !2019, inlinedAt: !2087)
!2109 = !DILocation(line: 969, column: 3, scope: !2078)
!2110 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2111, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!50, !6, !94, !8}
!2113 = !{!2114, !2115, !2116, !2117}
!2114 = !DILocalVariable(name: "arg", arg: 1, scope: !2110, file: !100, line: 973, type: !6)
!2115 = !DILocalVariable(name: "argsize", arg: 2, scope: !2110, file: !100, line: 973, type: !94)
!2116 = !DILocalVariable(name: "ch", arg: 3, scope: !2110, file: !100, line: 973, type: !8)
!2117 = !DILocalVariable(name: "options", scope: !2110, file: !100, line: 975, type: !107)
!2118 = !DILocation(line: 973, column: 32, scope: !2110)
!2119 = !DILocation(line: 973, column: 44, scope: !2110)
!2120 = !DILocation(line: 973, column: 58, scope: !2110)
!2121 = !DILocation(line: 975, column: 3, scope: !2110)
!2122 = !DILocation(line: 976, column: 13, scope: !2110)
!2123 = !{i64 0, i64 4, !1064, i64 4, i64 4, !632, i64 8, i64 32, !1064, i64 40, i64 8, !583, i64 48, i64 8, !583}
!2124 = !DILocation(line: 975, column: 26, scope: !2110)
!2125 = !DILocation(line: 144, column: 43, scope: !858, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 977, column: 3, scope: !2110)
!2127 = !DILocation(line: 144, column: 51, scope: !858, inlinedAt: !2126)
!2128 = !DILocation(line: 144, column: 58, scope: !858, inlinedAt: !2126)
!2129 = !DILocation(line: 146, column: 17, scope: !858, inlinedAt: !2126)
!2130 = !DILocation(line: 148, column: 62, scope: !858, inlinedAt: !2126)
!2131 = !DILocation(line: 148, column: 57, scope: !858, inlinedAt: !2126)
!2132 = !DILocation(line: 147, column: 17, scope: !858, inlinedAt: !2126)
!2133 = !DILocation(line: 149, column: 18, scope: !858, inlinedAt: !2126)
!2134 = !DILocation(line: 149, column: 15, scope: !858, inlinedAt: !2126)
!2135 = !DILocation(line: 149, column: 7, scope: !858, inlinedAt: !2126)
!2136 = !DILocation(line: 150, column: 12, scope: !858, inlinedAt: !2126)
!2137 = !DILocation(line: 150, column: 15, scope: !858, inlinedAt: !2126)
!2138 = !DILocation(line: 150, column: 25, scope: !858, inlinedAt: !2126)
!2139 = !DILocation(line: 150, column: 7, scope: !858, inlinedAt: !2126)
!2140 = !DILocation(line: 151, column: 18, scope: !858, inlinedAt: !2126)
!2141 = !DILocation(line: 151, column: 23, scope: !858, inlinedAt: !2126)
!2142 = !DILocation(line: 151, column: 6, scope: !858, inlinedAt: !2126)
!2143 = !DILocation(line: 978, column: 10, scope: !2110)
!2144 = !DILocation(line: 979, column: 1, scope: !2110)
!2145 = !DILocation(line: 978, column: 3, scope: !2110)
!2146 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2147, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!50, !6, !8}
!2149 = !{!2150, !2151}
!2150 = !DILocalVariable(name: "arg", arg: 1, scope: !2146, file: !100, line: 982, type: !6)
!2151 = !DILocalVariable(name: "ch", arg: 2, scope: !2146, file: !100, line: 982, type: !8)
!2152 = !DILocation(line: 982, column: 28, scope: !2146)
!2153 = !DILocation(line: 982, column: 38, scope: !2146)
!2154 = !DILocation(line: 973, column: 32, scope: !2110, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 984, column: 10, scope: !2146)
!2156 = !DILocation(line: 973, column: 44, scope: !2110, inlinedAt: !2155)
!2157 = !DILocation(line: 973, column: 58, scope: !2110, inlinedAt: !2155)
!2158 = !DILocation(line: 975, column: 3, scope: !2110, inlinedAt: !2155)
!2159 = !DILocation(line: 976, column: 13, scope: !2110, inlinedAt: !2155)
!2160 = !DILocation(line: 975, column: 26, scope: !2110, inlinedAt: !2155)
!2161 = !DILocation(line: 144, column: 43, scope: !858, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 977, column: 3, scope: !2110, inlinedAt: !2155)
!2163 = !DILocation(line: 144, column: 51, scope: !858, inlinedAt: !2162)
!2164 = !DILocation(line: 144, column: 58, scope: !858, inlinedAt: !2162)
!2165 = !DILocation(line: 146, column: 17, scope: !858, inlinedAt: !2162)
!2166 = !DILocation(line: 148, column: 62, scope: !858, inlinedAt: !2162)
!2167 = !DILocation(line: 148, column: 57, scope: !858, inlinedAt: !2162)
!2168 = !DILocation(line: 147, column: 17, scope: !858, inlinedAt: !2162)
!2169 = !DILocation(line: 149, column: 18, scope: !858, inlinedAt: !2162)
!2170 = !DILocation(line: 149, column: 15, scope: !858, inlinedAt: !2162)
!2171 = !DILocation(line: 149, column: 7, scope: !858, inlinedAt: !2162)
!2172 = !DILocation(line: 150, column: 12, scope: !858, inlinedAt: !2162)
!2173 = !DILocation(line: 150, column: 15, scope: !858, inlinedAt: !2162)
!2174 = !DILocation(line: 150, column: 25, scope: !858, inlinedAt: !2162)
!2175 = !DILocation(line: 150, column: 7, scope: !858, inlinedAt: !2162)
!2176 = !DILocation(line: 151, column: 18, scope: !858, inlinedAt: !2162)
!2177 = !DILocation(line: 151, column: 23, scope: !858, inlinedAt: !2162)
!2178 = !DILocation(line: 151, column: 6, scope: !858, inlinedAt: !2162)
!2179 = !DILocation(line: 978, column: 10, scope: !2110, inlinedAt: !2155)
!2180 = !DILocation(line: 979, column: 1, scope: !2110, inlinedAt: !2155)
!2181 = !DILocation(line: 984, column: 3, scope: !2146)
!2182 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !1958, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2183)
!2183 = !{!2184}
!2184 = !DILocalVariable(name: "arg", arg: 1, scope: !2182, file: !100, line: 988, type: !6)
!2185 = !DILocation(line: 988, column: 29, scope: !2182)
!2186 = !DILocation(line: 982, column: 28, scope: !2146, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 990, column: 10, scope: !2182)
!2188 = !DILocation(line: 982, column: 38, scope: !2146, inlinedAt: !2187)
!2189 = !DILocation(line: 973, column: 32, scope: !2110, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 984, column: 10, scope: !2146, inlinedAt: !2187)
!2191 = !DILocation(line: 973, column: 44, scope: !2110, inlinedAt: !2190)
!2192 = !DILocation(line: 973, column: 58, scope: !2110, inlinedAt: !2190)
!2193 = !DILocation(line: 975, column: 3, scope: !2110, inlinedAt: !2190)
!2194 = !DILocation(line: 976, column: 13, scope: !2110, inlinedAt: !2190)
!2195 = !DILocation(line: 975, column: 26, scope: !2110, inlinedAt: !2190)
!2196 = !DILocation(line: 144, column: 43, scope: !858, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 977, column: 3, scope: !2110, inlinedAt: !2190)
!2198 = !DILocation(line: 144, column: 51, scope: !858, inlinedAt: !2197)
!2199 = !DILocation(line: 144, column: 58, scope: !858, inlinedAt: !2197)
!2200 = !DILocation(line: 146, column: 17, scope: !858, inlinedAt: !2197)
!2201 = !DILocation(line: 148, column: 57, scope: !858, inlinedAt: !2197)
!2202 = !DILocation(line: 147, column: 17, scope: !858, inlinedAt: !2197)
!2203 = !DILocation(line: 149, column: 7, scope: !858, inlinedAt: !2197)
!2204 = !DILocation(line: 150, column: 12, scope: !858, inlinedAt: !2197)
!2205 = !DILocation(line: 151, column: 6, scope: !858, inlinedAt: !2197)
!2206 = !DILocation(line: 978, column: 10, scope: !2110, inlinedAt: !2190)
!2207 = !DILocation(line: 979, column: 1, scope: !2110, inlinedAt: !2190)
!2208 = !DILocation(line: 990, column: 3, scope: !2182)
!2209 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !1969, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2210)
!2210 = !{!2211, !2212}
!2211 = !DILocalVariable(name: "arg", arg: 1, scope: !2209, file: !100, line: 994, type: !6)
!2212 = !DILocalVariable(name: "argsize", arg: 2, scope: !2209, file: !100, line: 994, type: !94)
!2213 = !DILocation(line: 994, column: 33, scope: !2209)
!2214 = !DILocation(line: 994, column: 45, scope: !2209)
!2215 = !DILocation(line: 973, column: 32, scope: !2110, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 996, column: 10, scope: !2209)
!2217 = !DILocation(line: 973, column: 44, scope: !2110, inlinedAt: !2216)
!2218 = !DILocation(line: 973, column: 58, scope: !2110, inlinedAt: !2216)
!2219 = !DILocation(line: 975, column: 3, scope: !2110, inlinedAt: !2216)
!2220 = !DILocation(line: 976, column: 13, scope: !2110, inlinedAt: !2216)
!2221 = !DILocation(line: 975, column: 26, scope: !2110, inlinedAt: !2216)
!2222 = !DILocation(line: 144, column: 43, scope: !858, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 977, column: 3, scope: !2110, inlinedAt: !2216)
!2224 = !DILocation(line: 144, column: 51, scope: !858, inlinedAt: !2223)
!2225 = !DILocation(line: 144, column: 58, scope: !858, inlinedAt: !2223)
!2226 = !DILocation(line: 146, column: 17, scope: !858, inlinedAt: !2223)
!2227 = !DILocation(line: 148, column: 57, scope: !858, inlinedAt: !2223)
!2228 = !DILocation(line: 147, column: 17, scope: !858, inlinedAt: !2223)
!2229 = !DILocation(line: 149, column: 7, scope: !858, inlinedAt: !2223)
!2230 = !DILocation(line: 150, column: 12, scope: !858, inlinedAt: !2223)
!2231 = !DILocation(line: 151, column: 6, scope: !858, inlinedAt: !2223)
!2232 = !DILocation(line: 978, column: 10, scope: !2110, inlinedAt: !2216)
!2233 = !DILocation(line: 979, column: 1, scope: !2110, inlinedAt: !2216)
!2234 = !DILocation(line: 996, column: 3, scope: !2209)
!2235 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !1983, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2236)
!2236 = !{!2237, !2238, !2239, !2240}
!2237 = !DILocalVariable(name: "n", arg: 1, scope: !2235, file: !100, line: 1000, type: !25)
!2238 = !DILocalVariable(name: "s", arg: 2, scope: !2235, file: !100, line: 1000, type: !58)
!2239 = !DILocalVariable(name: "arg", arg: 3, scope: !2235, file: !100, line: 1000, type: !6)
!2240 = !DILocalVariable(name: "options", scope: !2235, file: !100, line: 1002, type: !107)
!2241 = !DILocation(line: 187, column: 26, scope: !1991, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 1003, column: 13, scope: !2235)
!2243 = !DILocation(line: 1000, column: 29, scope: !2235)
!2244 = !DILocation(line: 1000, column: 51, scope: !2235)
!2245 = !DILocation(line: 1000, column: 66, scope: !2235)
!2246 = !DILocation(line: 1002, column: 3, scope: !2235)
!2247 = !DILocation(line: 185, column: 48, scope: !1991, inlinedAt: !2242)
!2248 = !DILocation(line: 187, column: 3, scope: !1991, inlinedAt: !2242)
!2249 = !DILocation(line: 188, column: 13, scope: !2008, inlinedAt: !2242)
!2250 = !DILocation(line: 188, column: 7, scope: !1991, inlinedAt: !2242)
!2251 = !DILocation(line: 189, column: 5, scope: !2008, inlinedAt: !2242)
!2252 = !{!2253}
!2253 = distinct !{!2253, !2254, !"quoting_options_from_style: argument 0"}
!2254 = distinct !{!2254, !"quoting_options_from_style"}
!2255 = !DILocation(line: 191, column: 10, scope: !1991, inlinedAt: !2242)
!2256 = !DILocation(line: 192, column: 1, scope: !1991, inlinedAt: !2242)
!2257 = !DILocation(line: 1003, column: 13, scope: !2235)
!2258 = !DILocation(line: 1002, column: 26, scope: !2235)
!2259 = !DILocation(line: 144, column: 43, scope: !858, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 1004, column: 3, scope: !2235)
!2261 = !DILocation(line: 144, column: 51, scope: !858, inlinedAt: !2260)
!2262 = !DILocation(line: 144, column: 58, scope: !858, inlinedAt: !2260)
!2263 = !DILocation(line: 146, column: 17, scope: !858, inlinedAt: !2260)
!2264 = !DILocation(line: 148, column: 57, scope: !858, inlinedAt: !2260)
!2265 = !DILocation(line: 147, column: 17, scope: !858, inlinedAt: !2260)
!2266 = !DILocation(line: 149, column: 7, scope: !858, inlinedAt: !2260)
!2267 = !DILocation(line: 150, column: 12, scope: !858, inlinedAt: !2260)
!2268 = !DILocation(line: 151, column: 6, scope: !858, inlinedAt: !2260)
!2269 = !DILocation(line: 1005, column: 10, scope: !2235)
!2270 = !DILocation(line: 1006, column: 1, scope: !2235)
!2271 = !DILocation(line: 1005, column: 3, scope: !2235)
!2272 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2273, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2275)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!50, !25, !6, !6, !6}
!2275 = !{!2276, !2277, !2278, !2279}
!2276 = !DILocalVariable(name: "n", arg: 1, scope: !2272, file: !100, line: 1009, type: !25)
!2277 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2272, file: !100, line: 1009, type: !6)
!2278 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2272, file: !100, line: 1010, type: !6)
!2279 = !DILocalVariable(name: "arg", arg: 4, scope: !2272, file: !100, line: 1010, type: !6)
!2280 = !DILocation(line: 1009, column: 24, scope: !2272)
!2281 = !DILocation(line: 1009, column: 39, scope: !2272)
!2282 = !DILocation(line: 1010, column: 32, scope: !2272)
!2283 = !DILocation(line: 1010, column: 57, scope: !2272)
!2284 = !DILocalVariable(name: "n", arg: 1, scope: !2285, file: !100, line: 1017, type: !25)
!2285 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2286, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!50, !25, !6, !6, !6, !94}
!2288 = !{!2284, !2289, !2290, !2291, !2292, !2293}
!2289 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2285, file: !100, line: 1017, type: !6)
!2290 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2285, file: !100, line: 1018, type: !6)
!2291 = !DILocalVariable(name: "arg", arg: 4, scope: !2285, file: !100, line: 1019, type: !6)
!2292 = !DILocalVariable(name: "argsize", arg: 5, scope: !2285, file: !100, line: 1019, type: !94)
!2293 = !DILocalVariable(name: "o", scope: !2285, file: !100, line: 1021, type: !107)
!2294 = !DILocation(line: 1017, column: 28, scope: !2285, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 1012, column: 10, scope: !2272)
!2296 = !DILocation(line: 1017, column: 43, scope: !2285, inlinedAt: !2295)
!2297 = !DILocation(line: 1018, column: 36, scope: !2285, inlinedAt: !2295)
!2298 = !DILocation(line: 1019, column: 36, scope: !2285, inlinedAt: !2295)
!2299 = !DILocation(line: 1019, column: 48, scope: !2285, inlinedAt: !2295)
!2300 = !DILocation(line: 1021, column: 3, scope: !2285, inlinedAt: !2295)
!2301 = !DILocation(line: 1021, column: 30, scope: !2285, inlinedAt: !2295)
!2302 = !DILocation(line: 1021, column: 26, scope: !2285, inlinedAt: !2295)
!2303 = !DILocation(line: 171, column: 45, scope: !907, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 1022, column: 3, scope: !2285, inlinedAt: !2295)
!2305 = !DILocation(line: 172, column: 33, scope: !907, inlinedAt: !2304)
!2306 = !DILocation(line: 172, column: 57, scope: !907, inlinedAt: !2304)
!2307 = !DILocation(line: 176, column: 6, scope: !907, inlinedAt: !2304)
!2308 = !DILocation(line: 176, column: 12, scope: !907, inlinedAt: !2304)
!2309 = !DILocation(line: 177, column: 8, scope: !923, inlinedAt: !2304)
!2310 = !DILocation(line: 177, column: 23, scope: !923, inlinedAt: !2304)
!2311 = !DILocation(line: 177, column: 19, scope: !923, inlinedAt: !2304)
!2312 = !DILocation(line: 178, column: 5, scope: !923, inlinedAt: !2304)
!2313 = !DILocation(line: 179, column: 6, scope: !907, inlinedAt: !2304)
!2314 = !DILocation(line: 179, column: 17, scope: !907, inlinedAt: !2304)
!2315 = !DILocation(line: 180, column: 6, scope: !907, inlinedAt: !2304)
!2316 = !DILocation(line: 180, column: 18, scope: !907, inlinedAt: !2304)
!2317 = !DILocation(line: 1023, column: 10, scope: !2285, inlinedAt: !2295)
!2318 = !DILocation(line: 1024, column: 1, scope: !2285, inlinedAt: !2295)
!2319 = !DILocation(line: 1012, column: 3, scope: !2272)
!2320 = !DILocation(line: 1017, column: 28, scope: !2285)
!2321 = !DILocation(line: 1017, column: 43, scope: !2285)
!2322 = !DILocation(line: 1018, column: 36, scope: !2285)
!2323 = !DILocation(line: 1019, column: 36, scope: !2285)
!2324 = !DILocation(line: 1019, column: 48, scope: !2285)
!2325 = !DILocation(line: 1021, column: 3, scope: !2285)
!2326 = !DILocation(line: 1021, column: 30, scope: !2285)
!2327 = !DILocation(line: 1021, column: 26, scope: !2285)
!2328 = !DILocation(line: 171, column: 45, scope: !907, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 1022, column: 3, scope: !2285)
!2330 = !DILocation(line: 172, column: 33, scope: !907, inlinedAt: !2329)
!2331 = !DILocation(line: 172, column: 57, scope: !907, inlinedAt: !2329)
!2332 = !DILocation(line: 176, column: 6, scope: !907, inlinedAt: !2329)
!2333 = !DILocation(line: 176, column: 12, scope: !907, inlinedAt: !2329)
!2334 = !DILocation(line: 177, column: 8, scope: !923, inlinedAt: !2329)
!2335 = !DILocation(line: 177, column: 23, scope: !923, inlinedAt: !2329)
!2336 = !DILocation(line: 177, column: 19, scope: !923, inlinedAt: !2329)
!2337 = !DILocation(line: 178, column: 5, scope: !923, inlinedAt: !2329)
!2338 = !DILocation(line: 179, column: 6, scope: !907, inlinedAt: !2329)
!2339 = !DILocation(line: 179, column: 17, scope: !907, inlinedAt: !2329)
!2340 = !DILocation(line: 180, column: 6, scope: !907, inlinedAt: !2329)
!2341 = !DILocation(line: 180, column: 18, scope: !907, inlinedAt: !2329)
!2342 = !DILocation(line: 1023, column: 10, scope: !2285)
!2343 = !DILocation(line: 1024, column: 1, scope: !2285)
!2344 = !DILocation(line: 1023, column: 3, scope: !2285)
!2345 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2346, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2348)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!50, !6, !6, !6}
!2348 = !{!2349, !2350, !2351}
!2349 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2345, file: !100, line: 1027, type: !6)
!2350 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2345, file: !100, line: 1027, type: !6)
!2351 = !DILocalVariable(name: "arg", arg: 3, scope: !2345, file: !100, line: 1028, type: !6)
!2352 = !DILocation(line: 1027, column: 30, scope: !2345)
!2353 = !DILocation(line: 1027, column: 54, scope: !2345)
!2354 = !DILocation(line: 1028, column: 30, scope: !2345)
!2355 = !DILocation(line: 1009, column: 24, scope: !2272, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 1030, column: 10, scope: !2345)
!2357 = !DILocation(line: 1009, column: 39, scope: !2272, inlinedAt: !2356)
!2358 = !DILocation(line: 1010, column: 32, scope: !2272, inlinedAt: !2356)
!2359 = !DILocation(line: 1010, column: 57, scope: !2272, inlinedAt: !2356)
!2360 = !DILocation(line: 1017, column: 28, scope: !2285, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 1012, column: 10, scope: !2272, inlinedAt: !2356)
!2362 = !DILocation(line: 1017, column: 43, scope: !2285, inlinedAt: !2361)
!2363 = !DILocation(line: 1018, column: 36, scope: !2285, inlinedAt: !2361)
!2364 = !DILocation(line: 1019, column: 36, scope: !2285, inlinedAt: !2361)
!2365 = !DILocation(line: 1019, column: 48, scope: !2285, inlinedAt: !2361)
!2366 = !DILocation(line: 1021, column: 3, scope: !2285, inlinedAt: !2361)
!2367 = !DILocation(line: 1021, column: 30, scope: !2285, inlinedAt: !2361)
!2368 = !DILocation(line: 1021, column: 26, scope: !2285, inlinedAt: !2361)
!2369 = !DILocation(line: 171, column: 45, scope: !907, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 1022, column: 3, scope: !2285, inlinedAt: !2361)
!2371 = !DILocation(line: 172, column: 33, scope: !907, inlinedAt: !2370)
!2372 = !DILocation(line: 172, column: 57, scope: !907, inlinedAt: !2370)
!2373 = !DILocation(line: 176, column: 6, scope: !907, inlinedAt: !2370)
!2374 = !DILocation(line: 176, column: 12, scope: !907, inlinedAt: !2370)
!2375 = !DILocation(line: 177, column: 8, scope: !923, inlinedAt: !2370)
!2376 = !DILocation(line: 177, column: 23, scope: !923, inlinedAt: !2370)
!2377 = !DILocation(line: 177, column: 19, scope: !923, inlinedAt: !2370)
!2378 = !DILocation(line: 178, column: 5, scope: !923, inlinedAt: !2370)
!2379 = !DILocation(line: 179, column: 6, scope: !907, inlinedAt: !2370)
!2380 = !DILocation(line: 179, column: 17, scope: !907, inlinedAt: !2370)
!2381 = !DILocation(line: 180, column: 6, scope: !907, inlinedAt: !2370)
!2382 = !DILocation(line: 180, column: 18, scope: !907, inlinedAt: !2370)
!2383 = !DILocation(line: 1023, column: 10, scope: !2285, inlinedAt: !2361)
!2384 = !DILocation(line: 1024, column: 1, scope: !2285, inlinedAt: !2361)
!2385 = !DILocation(line: 1030, column: 3, scope: !2345)
!2386 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2387, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!50, !6, !6, !6, !94}
!2389 = !{!2390, !2391, !2392, !2393}
!2390 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2386, file: !100, line: 1034, type: !6)
!2391 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2386, file: !100, line: 1034, type: !6)
!2392 = !DILocalVariable(name: "arg", arg: 3, scope: !2386, file: !100, line: 1035, type: !6)
!2393 = !DILocalVariable(name: "argsize", arg: 4, scope: !2386, file: !100, line: 1035, type: !94)
!2394 = !DILocation(line: 1034, column: 34, scope: !2386)
!2395 = !DILocation(line: 1034, column: 58, scope: !2386)
!2396 = !DILocation(line: 1035, column: 34, scope: !2386)
!2397 = !DILocation(line: 1035, column: 46, scope: !2386)
!2398 = !DILocation(line: 1017, column: 28, scope: !2285, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 1037, column: 10, scope: !2386)
!2400 = !DILocation(line: 1017, column: 43, scope: !2285, inlinedAt: !2399)
!2401 = !DILocation(line: 1018, column: 36, scope: !2285, inlinedAt: !2399)
!2402 = !DILocation(line: 1019, column: 36, scope: !2285, inlinedAt: !2399)
!2403 = !DILocation(line: 1019, column: 48, scope: !2285, inlinedAt: !2399)
!2404 = !DILocation(line: 1021, column: 3, scope: !2285, inlinedAt: !2399)
!2405 = !DILocation(line: 1021, column: 30, scope: !2285, inlinedAt: !2399)
!2406 = !DILocation(line: 1021, column: 26, scope: !2285, inlinedAt: !2399)
!2407 = !DILocation(line: 171, column: 45, scope: !907, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 1022, column: 3, scope: !2285, inlinedAt: !2399)
!2409 = !DILocation(line: 172, column: 33, scope: !907, inlinedAt: !2408)
!2410 = !DILocation(line: 172, column: 57, scope: !907, inlinedAt: !2408)
!2411 = !DILocation(line: 176, column: 6, scope: !907, inlinedAt: !2408)
!2412 = !DILocation(line: 176, column: 12, scope: !907, inlinedAt: !2408)
!2413 = !DILocation(line: 177, column: 8, scope: !923, inlinedAt: !2408)
!2414 = !DILocation(line: 177, column: 23, scope: !923, inlinedAt: !2408)
!2415 = !DILocation(line: 177, column: 19, scope: !923, inlinedAt: !2408)
!2416 = !DILocation(line: 178, column: 5, scope: !923, inlinedAt: !2408)
!2417 = !DILocation(line: 179, column: 6, scope: !907, inlinedAt: !2408)
!2418 = !DILocation(line: 179, column: 17, scope: !907, inlinedAt: !2408)
!2419 = !DILocation(line: 180, column: 6, scope: !907, inlinedAt: !2408)
!2420 = !DILocation(line: 180, column: 18, scope: !907, inlinedAt: !2408)
!2421 = !DILocation(line: 1023, column: 10, scope: !2285, inlinedAt: !2399)
!2422 = !DILocation(line: 1024, column: 1, scope: !2285, inlinedAt: !2399)
!2423 = !DILocation(line: 1037, column: 3, scope: !2386)
!2424 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2425, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!6, !25, !6, !94}
!2427 = !{!2428, !2429, !2430}
!2428 = !DILocalVariable(name: "n", arg: 1, scope: !2424, file: !100, line: 1052, type: !25)
!2429 = !DILocalVariable(name: "arg", arg: 2, scope: !2424, file: !100, line: 1052, type: !6)
!2430 = !DILocalVariable(name: "argsize", arg: 3, scope: !2424, file: !100, line: 1052, type: !94)
!2431 = !DILocation(line: 1052, column: 18, scope: !2424)
!2432 = !DILocation(line: 1052, column: 33, scope: !2424)
!2433 = !DILocation(line: 1052, column: 45, scope: !2424)
!2434 = !DILocation(line: 1054, column: 10, scope: !2424)
!2435 = !DILocation(line: 1054, column: 3, scope: !2424)
!2436 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2437, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!6, !6, !94}
!2439 = !{!2440, !2441}
!2440 = !DILocalVariable(name: "arg", arg: 1, scope: !2436, file: !100, line: 1058, type: !6)
!2441 = !DILocalVariable(name: "argsize", arg: 2, scope: !2436, file: !100, line: 1058, type: !94)
!2442 = !DILocation(line: 1058, column: 24, scope: !2436)
!2443 = !DILocation(line: 1058, column: 36, scope: !2436)
!2444 = !DILocation(line: 1052, column: 18, scope: !2424, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 1060, column: 10, scope: !2436)
!2446 = !DILocation(line: 1052, column: 33, scope: !2424, inlinedAt: !2445)
!2447 = !DILocation(line: 1052, column: 45, scope: !2424, inlinedAt: !2445)
!2448 = !DILocation(line: 1054, column: 10, scope: !2424, inlinedAt: !2445)
!2449 = !DILocation(line: 1060, column: 3, scope: !2436)
!2450 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2451, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!6, !25, !6}
!2453 = !{!2454, !2455}
!2454 = !DILocalVariable(name: "n", arg: 1, scope: !2450, file: !100, line: 1064, type: !25)
!2455 = !DILocalVariable(name: "arg", arg: 2, scope: !2450, file: !100, line: 1064, type: !6)
!2456 = !DILocation(line: 1064, column: 14, scope: !2450)
!2457 = !DILocation(line: 1064, column: 29, scope: !2450)
!2458 = !DILocation(line: 1052, column: 18, scope: !2424, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 1066, column: 10, scope: !2450)
!2460 = !DILocation(line: 1052, column: 33, scope: !2424, inlinedAt: !2459)
!2461 = !DILocation(line: 1052, column: 45, scope: !2424, inlinedAt: !2459)
!2462 = !DILocation(line: 1054, column: 10, scope: !2424, inlinedAt: !2459)
!2463 = !DILocation(line: 1066, column: 3, scope: !2450)
!2464 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2465, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!6, !6}
!2467 = !{!2468}
!2468 = !DILocalVariable(name: "arg", arg: 1, scope: !2464, file: !100, line: 1070, type: !6)
!2469 = !DILocation(line: 1070, column: 20, scope: !2464)
!2470 = !DILocation(line: 1064, column: 14, scope: !2450, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 1072, column: 10, scope: !2464)
!2472 = !DILocation(line: 1064, column: 29, scope: !2450, inlinedAt: !2471)
!2473 = !DILocation(line: 1052, column: 18, scope: !2424, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 1066, column: 10, scope: !2450, inlinedAt: !2471)
!2475 = !DILocation(line: 1052, column: 33, scope: !2424, inlinedAt: !2474)
!2476 = !DILocation(line: 1052, column: 45, scope: !2424, inlinedAt: !2474)
!2477 = !DILocation(line: 1054, column: 10, scope: !2424, inlinedAt: !2474)
!2478 = !DILocation(line: 1072, column: 3, scope: !2464)
!2479 = distinct !DISubprogram(name: "version_etc_arn", scope: !527, file: !527, line: 62, type: !2480, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !2536)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !2482, !6, !6, !6, !2535, !94}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2484, line: 7, baseType: !2485)
!2484 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2486, line: 241, size: 1728, elements: !2487)
!2486 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2508, !2509, !2510, !2511, !2515, !2516, !2518, !2520, !2523, !2525, !2526, !2527, !2528, !2529, !2530, !2531}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2485, file: !2486, line: 242, baseType: !25, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2485, file: !2486, line: 247, baseType: !50, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2485, file: !2486, line: 248, baseType: !50, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2485, file: !2486, line: 249, baseType: !50, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2485, file: !2486, line: 250, baseType: !50, size: 64, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2485, file: !2486, line: 251, baseType: !50, size: 64, offset: 320)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2485, file: !2486, line: 252, baseType: !50, size: 64, offset: 384)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2485, file: !2486, line: 253, baseType: !50, size: 64, offset: 448)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2485, file: !2486, line: 254, baseType: !50, size: 64, offset: 512)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2485, file: !2486, line: 256, baseType: !50, size: 64, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2485, file: !2486, line: 257, baseType: !50, size: 64, offset: 640)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2485, file: !2486, line: 258, baseType: !50, size: 64, offset: 704)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2485, file: !2486, line: 260, baseType: !2501, size: 64, offset: 768)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2486, line: 156, size: 192, elements: !2503)
!2503 = !{!2504, !2505, !2507}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2502, file: !2486, line: 157, baseType: !2501, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2502, file: !2486, line: 158, baseType: !2506, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2502, file: !2486, line: 162, baseType: !25, size: 32, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2485, file: !2486, line: 262, baseType: !2506, size: 64, offset: 832)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2485, file: !2486, line: 264, baseType: !25, size: 32, offset: 896)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2485, file: !2486, line: 268, baseType: !25, size: 32, offset: 928)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2485, file: !2486, line: 270, baseType: !2512, size: 64, offset: 960)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2513, line: 140, baseType: !2514)
!2513 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2514 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2485, file: !2486, line: 274, baseType: !93, size: 16, offset: 1024)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2485, file: !2486, line: 275, baseType: !2517, size: 8, offset: 1040)
!2517 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2485, file: !2486, line: 276, baseType: !2519, size: 8, offset: 1048)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !751)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2485, file: !2486, line: 280, baseType: !2521, size: 64, offset: 1088)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2486, line: 150, baseType: null)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2485, file: !2486, line: 289, baseType: !2524, size: 64, offset: 1152)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2513, line: 141, baseType: !2514)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2485, file: !2486, line: 297, baseType: !49, size: 64, offset: 1216)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2485, file: !2486, line: 298, baseType: !49, size: 64, offset: 1280)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2485, file: !2486, line: 299, baseType: !49, size: 64, offset: 1344)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2485, file: !2486, line: 300, baseType: !49, size: 64, offset: 1408)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2485, file: !2486, line: 302, baseType: !94, size: 64, offset: 1472)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2485, file: !2486, line: 303, baseType: !25, size: 32, offset: 1536)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2485, file: !2486, line: 305, baseType: !2532, size: 160, offset: 1568)
!2532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2533)
!2533 = !{!2534}
!2534 = !DISubrange(count: 20)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542}
!2537 = !DILocalVariable(name: "stream", arg: 1, scope: !2479, file: !527, line: 62, type: !2482)
!2538 = !DILocalVariable(name: "command_name", arg: 2, scope: !2479, file: !527, line: 63, type: !6)
!2539 = !DILocalVariable(name: "package", arg: 3, scope: !2479, file: !527, line: 63, type: !6)
!2540 = !DILocalVariable(name: "version", arg: 4, scope: !2479, file: !527, line: 64, type: !6)
!2541 = !DILocalVariable(name: "authors", arg: 5, scope: !2479, file: !527, line: 65, type: !2535)
!2542 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2479, file: !527, line: 65, type: !94)
!2543 = !DILocation(line: 62, column: 24, scope: !2479)
!2544 = !DILocation(line: 63, column: 30, scope: !2479)
!2545 = !DILocation(line: 63, column: 56, scope: !2479)
!2546 = !DILocation(line: 64, column: 30, scope: !2479)
!2547 = !DILocation(line: 65, column: 39, scope: !2479)
!2548 = !DILocation(line: 65, column: 55, scope: !2479)
!2549 = !DILocation(line: 67, column: 7, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2479, file: !527, line: 67, column: 7)
!2551 = !DILocation(line: 67, column: 7, scope: !2479)
!2552 = !DILocation(line: 68, column: 5, scope: !2550)
!2553 = !DILocation(line: 70, column: 5, scope: !2550)
!2554 = !DILocation(line: 84, column: 3, scope: !2479)
!2555 = !DILocation(line: 86, column: 3, scope: !2479)
!2556 = !DILocation(line: 95, column: 3, scope: !2479)
!2557 = !DILocation(line: 99, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2479, file: !527, line: 96, column: 5)
!2559 = !DILocation(line: 102, column: 7, scope: !2558)
!2560 = !DILocation(line: 103, column: 7, scope: !2558)
!2561 = !DILocation(line: 106, column: 7, scope: !2558)
!2562 = !DILocation(line: 107, column: 7, scope: !2558)
!2563 = !DILocation(line: 110, column: 7, scope: !2558)
!2564 = !DILocation(line: 112, column: 7, scope: !2558)
!2565 = !DILocation(line: 117, column: 7, scope: !2558)
!2566 = !DILocation(line: 119, column: 7, scope: !2558)
!2567 = !DILocation(line: 124, column: 7, scope: !2558)
!2568 = !DILocation(line: 126, column: 7, scope: !2558)
!2569 = !DILocation(line: 131, column: 7, scope: !2558)
!2570 = !DILocation(line: 134, column: 7, scope: !2558)
!2571 = !DILocation(line: 139, column: 7, scope: !2558)
!2572 = !DILocation(line: 142, column: 7, scope: !2558)
!2573 = !DILocation(line: 147, column: 7, scope: !2558)
!2574 = !DILocation(line: 151, column: 7, scope: !2558)
!2575 = !DILocation(line: 156, column: 7, scope: !2558)
!2576 = !DILocation(line: 160, column: 7, scope: !2558)
!2577 = !DILocation(line: 167, column: 7, scope: !2558)
!2578 = !DILocation(line: 171, column: 7, scope: !2558)
!2579 = !DILocation(line: 173, column: 1, scope: !2479)
!2580 = distinct !DISubprogram(name: "version_etc_ar", scope: !527, file: !527, line: 180, type: !2581, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !2583)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !2482, !6, !6, !6, !2535}
!2583 = !{!2584, !2585, !2586, !2587, !2588, !2589}
!2584 = !DILocalVariable(name: "stream", arg: 1, scope: !2580, file: !527, line: 180, type: !2482)
!2585 = !DILocalVariable(name: "command_name", arg: 2, scope: !2580, file: !527, line: 181, type: !6)
!2586 = !DILocalVariable(name: "package", arg: 3, scope: !2580, file: !527, line: 181, type: !6)
!2587 = !DILocalVariable(name: "version", arg: 4, scope: !2580, file: !527, line: 182, type: !6)
!2588 = !DILocalVariable(name: "authors", arg: 5, scope: !2580, file: !527, line: 182, type: !2535)
!2589 = !DILocalVariable(name: "n_authors", scope: !2580, file: !527, line: 184, type: !94)
!2590 = !DILocation(line: 180, column: 23, scope: !2580)
!2591 = !DILocation(line: 181, column: 29, scope: !2580)
!2592 = !DILocation(line: 181, column: 55, scope: !2580)
!2593 = !DILocation(line: 182, column: 29, scope: !2580)
!2594 = !DILocation(line: 182, column: 59, scope: !2580)
!2595 = !DILocation(line: 184, column: 10, scope: !2580)
!2596 = !DILocation(line: 186, column: 8, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2580, file: !527, line: 186, column: 3)
!2598 = !DILocation(line: 186, column: 23, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2597, file: !527, line: 186, column: 3)
!2600 = !DILocation(line: 186, column: 3, scope: !2597)
!2601 = !DILocation(line: 186, column: 52, scope: !2599)
!2602 = distinct !{!2602, !2600, !2603}
!2603 = !DILocation(line: 187, column: 5, scope: !2597)
!2604 = !DILocation(line: 188, column: 3, scope: !2580)
!2605 = !DILocation(line: 189, column: 1, scope: !2580)
!2606 = distinct !DISubprogram(name: "version_etc_va", scope: !527, file: !527, line: 196, type: !2607, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !2616)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !2482, !6, !6, !6, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !524, line: 189, size: 192, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2610, file: !524, line: 189, baseType: !113, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2610, file: !524, line: 189, baseType: !113, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2610, file: !524, line: 189, baseType: !49, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2610, file: !524, line: 189, baseType: !49, size: 64, offset: 128)
!2616 = !{!2617, !2618, !2619, !2620, !2621, !2622, !2623}
!2617 = !DILocalVariable(name: "stream", arg: 1, scope: !2606, file: !527, line: 196, type: !2482)
!2618 = !DILocalVariable(name: "command_name", arg: 2, scope: !2606, file: !527, line: 197, type: !6)
!2619 = !DILocalVariable(name: "package", arg: 3, scope: !2606, file: !527, line: 197, type: !6)
!2620 = !DILocalVariable(name: "version", arg: 4, scope: !2606, file: !527, line: 198, type: !6)
!2621 = !DILocalVariable(name: "authors", arg: 5, scope: !2606, file: !527, line: 198, type: !2609)
!2622 = !DILocalVariable(name: "n_authors", scope: !2606, file: !527, line: 200, type: !94)
!2623 = !DILocalVariable(name: "authtab", scope: !2606, file: !527, line: 201, type: !2624)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2625 = !DILocation(line: 196, column: 23, scope: !2606)
!2626 = !DILocation(line: 197, column: 29, scope: !2606)
!2627 = !DILocation(line: 197, column: 55, scope: !2606)
!2628 = !DILocation(line: 198, column: 29, scope: !2606)
!2629 = !DILocation(line: 198, column: 46, scope: !2606)
!2630 = !DILocation(line: 201, column: 3, scope: !2606)
!2631 = !DILocation(line: 201, column: 15, scope: !2606)
!2632 = !DILocation(line: 200, column: 10, scope: !2606)
!2633 = !DILocation(line: 205, column: 35, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !527, line: 203, column: 3)
!2635 = distinct !DILexicalBlock(scope: !2606, file: !527, line: 203, column: 3)
!2636 = !DILocation(line: 205, column: 14, scope: !2634)
!2637 = !DILocation(line: 205, column: 33, scope: !2634)
!2638 = !DILocation(line: 205, column: 67, scope: !2634)
!2639 = !DILocation(line: 203, column: 3, scope: !2635)
!2640 = !DILocation(line: 208, column: 3, scope: !2606)
!2641 = !DILocation(line: 210, column: 1, scope: !2606)
!2642 = distinct !DISubprogram(name: "version_etc", scope: !527, file: !527, line: 227, type: !2643, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !2482, !6, !6, !6, null}
!2645 = !{!2646, !2647, !2648, !2649, !2650}
!2646 = !DILocalVariable(name: "stream", arg: 1, scope: !2642, file: !527, line: 227, type: !2482)
!2647 = !DILocalVariable(name: "command_name", arg: 2, scope: !2642, file: !527, line: 228, type: !6)
!2648 = !DILocalVariable(name: "package", arg: 3, scope: !2642, file: !527, line: 228, type: !6)
!2649 = !DILocalVariable(name: "version", arg: 4, scope: !2642, file: !527, line: 229, type: !6)
!2650 = !DILocalVariable(name: "authors", scope: !2642, file: !527, line: 231, type: !2651)
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !740, line: 46, baseType: !2652)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !742, line: 48, baseType: !2653)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !524, line: 231, baseType: !2654)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2610, size: 192, elements: !751)
!2655 = !DILocation(line: 227, column: 20, scope: !2642)
!2656 = !DILocation(line: 228, column: 26, scope: !2642)
!2657 = !DILocation(line: 228, column: 52, scope: !2642)
!2658 = !DILocation(line: 229, column: 26, scope: !2642)
!2659 = !DILocation(line: 231, column: 3, scope: !2642)
!2660 = !DILocation(line: 231, column: 11, scope: !2642)
!2661 = !DILocation(line: 233, column: 3, scope: !2642)
!2662 = !DILocation(line: 234, column: 3, scope: !2642)
!2663 = !DILocation(line: 235, column: 3, scope: !2642)
!2664 = !DILocation(line: 236, column: 1, scope: !2642)
!2665 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !527, file: !527, line: 239, type: !686, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !4)
!2666 = !DILocation(line: 245, column: 3, scope: !2665)
!2667 = !DILocation(line: 251, column: 3, scope: !2665)
!2668 = !DILocation(line: 256, column: 3, scope: !2665)
!2669 = !DILocation(line: 258, column: 1, scope: !2665)
!2670 = distinct !DISubprogram(name: "xnmalloc", scope: !535, file: !535, line: 105, type: !2671, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!49, !94, !94}
!2673 = !{!2674, !2675}
!2674 = !DILocalVariable(name: "n", arg: 1, scope: !2670, file: !535, line: 105, type: !94)
!2675 = !DILocalVariable(name: "s", arg: 2, scope: !2670, file: !535, line: 105, type: !94)
!2676 = !DILocation(line: 105, column: 18, scope: !2670)
!2677 = !DILocation(line: 105, column: 28, scope: !2670)
!2678 = !DILocation(line: 107, column: 7, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2670, file: !535, line: 107, column: 7)
!2680 = !DILocation(line: 107, column: 7, scope: !2670)
!2681 = !DILocation(line: 108, column: 5, scope: !2679)
!2682 = !DILocation(line: 109, column: 21, scope: !2670)
!2683 = !DILocalVariable(name: "n", arg: 1, scope: !2684, file: !2685, line: 39, type: !94)
!2684 = distinct !DISubprogram(name: "xmalloc", scope: !2685, file: !2685, line: 39, type: !2686, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2688)
!2685 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!49, !94}
!2688 = !{!2683, !2689}
!2689 = !DILocalVariable(name: "p", scope: !2684, file: !2685, line: 41, type: !49)
!2690 = !DILocation(line: 39, column: 17, scope: !2684, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 109, column: 10, scope: !2670)
!2692 = !DILocation(line: 41, column: 13, scope: !2684, inlinedAt: !2691)
!2693 = !DILocation(line: 41, column: 9, scope: !2684, inlinedAt: !2691)
!2694 = !DILocation(line: 42, column: 8, scope: !2695, inlinedAt: !2691)
!2695 = distinct !DILexicalBlock(scope: !2684, file: !2685, line: 42, column: 7)
!2696 = !DILocation(line: 42, column: 15, scope: !2695, inlinedAt: !2691)
!2697 = !DILocation(line: 42, column: 10, scope: !2695, inlinedAt: !2691)
!2698 = !DILocation(line: 43, column: 5, scope: !2695, inlinedAt: !2691)
!2699 = !DILocation(line: 109, column: 3, scope: !2670)
!2700 = !DILocation(line: 39, column: 17, scope: !2684)
!2701 = !DILocation(line: 41, column: 13, scope: !2684)
!2702 = !DILocation(line: 41, column: 9, scope: !2684)
!2703 = !DILocation(line: 42, column: 8, scope: !2695)
!2704 = !DILocation(line: 42, column: 15, scope: !2695)
!2705 = !DILocation(line: 42, column: 10, scope: !2695)
!2706 = !DILocation(line: 43, column: 5, scope: !2695)
!2707 = !DILocation(line: 44, column: 3, scope: !2684)
!2708 = distinct !DISubprogram(name: "xnrealloc", scope: !535, file: !535, line: 118, type: !2709, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!49, !49, !94, !94}
!2711 = !{!2712, !2713, !2714}
!2712 = !DILocalVariable(name: "p", arg: 1, scope: !2708, file: !535, line: 118, type: !49)
!2713 = !DILocalVariable(name: "n", arg: 2, scope: !2708, file: !535, line: 118, type: !94)
!2714 = !DILocalVariable(name: "s", arg: 3, scope: !2708, file: !535, line: 118, type: !94)
!2715 = !DILocation(line: 118, column: 18, scope: !2708)
!2716 = !DILocation(line: 118, column: 28, scope: !2708)
!2717 = !DILocation(line: 118, column: 38, scope: !2708)
!2718 = !DILocation(line: 120, column: 7, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2708, file: !535, line: 120, column: 7)
!2720 = !DILocation(line: 120, column: 7, scope: !2708)
!2721 = !DILocation(line: 121, column: 5, scope: !2719)
!2722 = !DILocation(line: 122, column: 25, scope: !2708)
!2723 = !DILocalVariable(name: "p", arg: 1, scope: !2724, file: !2685, line: 51, type: !49)
!2724 = distinct !DISubprogram(name: "xrealloc", scope: !2685, file: !2685, line: 51, type: !2725, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!49, !49, !94}
!2727 = !{!2723, !2728}
!2728 = !DILocalVariable(name: "n", arg: 2, scope: !2724, file: !2685, line: 51, type: !94)
!2729 = !DILocation(line: 51, column: 17, scope: !2724, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 122, column: 10, scope: !2708)
!2731 = !DILocation(line: 51, column: 27, scope: !2724, inlinedAt: !2730)
!2732 = !DILocation(line: 53, column: 8, scope: !2733, inlinedAt: !2730)
!2733 = distinct !DILexicalBlock(scope: !2724, file: !2685, line: 53, column: 7)
!2734 = !DILocation(line: 53, column: 13, scope: !2733, inlinedAt: !2730)
!2735 = !DILocation(line: 53, column: 10, scope: !2733, inlinedAt: !2730)
!2736 = !DILocation(line: 57, column: 7, scope: !2737, inlinedAt: !2730)
!2737 = distinct !DILexicalBlock(scope: !2733, file: !2685, line: 54, column: 5)
!2738 = !DILocation(line: 58, column: 7, scope: !2737, inlinedAt: !2730)
!2739 = !DILocation(line: 61, column: 7, scope: !2724, inlinedAt: !2730)
!2740 = !DILocation(line: 62, column: 8, scope: !2741, inlinedAt: !2730)
!2741 = distinct !DILexicalBlock(scope: !2724, file: !2685, line: 62, column: 7)
!2742 = !DILocation(line: 62, column: 13, scope: !2741, inlinedAt: !2730)
!2743 = !DILocation(line: 62, column: 10, scope: !2741, inlinedAt: !2730)
!2744 = !DILocation(line: 63, column: 5, scope: !2741, inlinedAt: !2730)
!2745 = !DILocation(line: 122, column: 3, scope: !2708)
!2746 = !DILocation(line: 51, column: 17, scope: !2724)
!2747 = !DILocation(line: 51, column: 27, scope: !2724)
!2748 = !DILocation(line: 53, column: 8, scope: !2733)
!2749 = !DILocation(line: 53, column: 13, scope: !2733)
!2750 = !DILocation(line: 53, column: 10, scope: !2733)
!2751 = !DILocation(line: 57, column: 7, scope: !2737)
!2752 = !DILocation(line: 58, column: 7, scope: !2737)
!2753 = !DILocation(line: 61, column: 7, scope: !2724)
!2754 = !DILocation(line: 62, column: 8, scope: !2741)
!2755 = !DILocation(line: 62, column: 13, scope: !2741)
!2756 = !DILocation(line: 62, column: 10, scope: !2741)
!2757 = !DILocation(line: 63, column: 5, scope: !2741)
!2758 = !DILocation(line: 65, column: 1, scope: !2724)
!2759 = !DILocation(line: 180, column: 19, scope: !536)
!2760 = !DILocation(line: 180, column: 30, scope: !536)
!2761 = !DILocation(line: 180, column: 41, scope: !536)
!2762 = !DILocation(line: 182, column: 14, scope: !536)
!2763 = !DILocation(line: 182, column: 10, scope: !536)
!2764 = !DILocation(line: 184, column: 9, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !536, file: !535, line: 184, column: 7)
!2766 = !DILocation(line: 184, column: 7, scope: !536)
!2767 = !DILocation(line: 186, column: 13, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !535, line: 186, column: 11)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !535, line: 185, column: 5)
!2770 = !DILocation(line: 186, column: 11, scope: !2769)
!2771 = !DILocation(line: 194, column: 30, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2768, file: !535, line: 187, column: 9)
!2773 = !DILocation(line: 195, column: 16, scope: !2772)
!2774 = !DILocation(line: 195, column: 13, scope: !2772)
!2775 = !DILocation(line: 196, column: 9, scope: !2772)
!2776 = !DILocation(line: 204, column: 69, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !535, line: 204, column: 11)
!2778 = distinct !DILexicalBlock(scope: !2765, file: !535, line: 199, column: 5)
!2779 = !DILocation(line: 205, column: 11, scope: !2777)
!2780 = !DILocation(line: 204, column: 11, scope: !2778)
!2781 = !DILocation(line: 206, column: 9, scope: !2777)
!2782 = !DILocation(line: 210, column: 7, scope: !536)
!2783 = !DILocation(line: 211, column: 25, scope: !536)
!2784 = !DILocation(line: 51, column: 17, scope: !2724, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 211, column: 10, scope: !536)
!2786 = !DILocation(line: 51, column: 27, scope: !2724, inlinedAt: !2785)
!2787 = !DILocation(line: 53, column: 10, scope: !2733, inlinedAt: !2785)
!2788 = !DILocation(line: 207, column: 14, scope: !2778)
!2789 = !DILocation(line: 207, column: 18, scope: !2778)
!2790 = !DILocation(line: 207, column: 9, scope: !2778)
!2791 = !DILocation(line: 53, column: 8, scope: !2733, inlinedAt: !2785)
!2792 = !DILocation(line: 57, column: 7, scope: !2737, inlinedAt: !2785)
!2793 = !DILocation(line: 58, column: 7, scope: !2737, inlinedAt: !2785)
!2794 = !DILocation(line: 61, column: 7, scope: !2724, inlinedAt: !2785)
!2795 = !DILocation(line: 62, column: 8, scope: !2741, inlinedAt: !2785)
!2796 = !DILocation(line: 62, column: 13, scope: !2741, inlinedAt: !2785)
!2797 = !DILocation(line: 62, column: 10, scope: !2741, inlinedAt: !2785)
!2798 = !DILocation(line: 63, column: 5, scope: !2741, inlinedAt: !2785)
!2799 = !DILocation(line: 211, column: 3, scope: !536)
!2800 = distinct !DISubprogram(name: "xcharalloc", scope: !535, file: !535, line: 220, type: !1756, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2801)
!2801 = !{!2802}
!2802 = !DILocalVariable(name: "n", arg: 1, scope: !2800, file: !535, line: 220, type: !94)
!2803 = !DILocation(line: 220, column: 20, scope: !2800)
!2804 = !DILocation(line: 39, column: 17, scope: !2684, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 222, column: 10, scope: !2800)
!2806 = !DILocation(line: 41, column: 13, scope: !2684, inlinedAt: !2805)
!2807 = !DILocation(line: 41, column: 9, scope: !2684, inlinedAt: !2805)
!2808 = !DILocation(line: 42, column: 8, scope: !2695, inlinedAt: !2805)
!2809 = !DILocation(line: 42, column: 15, scope: !2695, inlinedAt: !2805)
!2810 = !DILocation(line: 42, column: 10, scope: !2695, inlinedAt: !2805)
!2811 = !DILocation(line: 43, column: 5, scope: !2695, inlinedAt: !2805)
!2812 = !DILocation(line: 222, column: 3, scope: !2800)
!2813 = distinct !DISubprogram(name: "x2realloc", scope: !2685, file: !2685, line: 74, type: !2814, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!49, !49, !539}
!2816 = !{!2817, !2818}
!2817 = !DILocalVariable(name: "p", arg: 1, scope: !2813, file: !2685, line: 74, type: !49)
!2818 = !DILocalVariable(name: "pn", arg: 2, scope: !2813, file: !2685, line: 74, type: !539)
!2819 = !DILocation(line: 74, column: 18, scope: !2813)
!2820 = !DILocation(line: 74, column: 29, scope: !2813)
!2821 = !DILocation(line: 180, column: 19, scope: !536, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 76, column: 10, scope: !2813)
!2823 = !DILocation(line: 180, column: 30, scope: !536, inlinedAt: !2822)
!2824 = !DILocation(line: 180, column: 41, scope: !536, inlinedAt: !2822)
!2825 = !DILocation(line: 182, column: 14, scope: !536, inlinedAt: !2822)
!2826 = !DILocation(line: 182, column: 10, scope: !536, inlinedAt: !2822)
!2827 = !DILocation(line: 184, column: 9, scope: !2765, inlinedAt: !2822)
!2828 = !DILocation(line: 184, column: 7, scope: !536, inlinedAt: !2822)
!2829 = !DILocation(line: 186, column: 13, scope: !2768, inlinedAt: !2822)
!2830 = !DILocation(line: 186, column: 11, scope: !2769, inlinedAt: !2822)
!2831 = !DILocation(line: 210, column: 7, scope: !536, inlinedAt: !2822)
!2832 = !DILocation(line: 51, column: 17, scope: !2724, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 211, column: 10, scope: !536, inlinedAt: !2822)
!2834 = !DILocation(line: 51, column: 27, scope: !2724, inlinedAt: !2833)
!2835 = !DILocation(line: 53, column: 10, scope: !2733, inlinedAt: !2833)
!2836 = !DILocation(line: 205, column: 11, scope: !2777, inlinedAt: !2822)
!2837 = !DILocation(line: 204, column: 11, scope: !2778, inlinedAt: !2822)
!2838 = !DILocation(line: 206, column: 9, scope: !2777, inlinedAt: !2822)
!2839 = !DILocation(line: 207, column: 14, scope: !2778, inlinedAt: !2822)
!2840 = !DILocation(line: 207, column: 18, scope: !2778, inlinedAt: !2822)
!2841 = !DILocation(line: 207, column: 9, scope: !2778, inlinedAt: !2822)
!2842 = !DILocation(line: 53, column: 8, scope: !2733, inlinedAt: !2833)
!2843 = !DILocation(line: 57, column: 7, scope: !2737, inlinedAt: !2833)
!2844 = !DILocation(line: 58, column: 7, scope: !2737, inlinedAt: !2833)
!2845 = !DILocation(line: 61, column: 7, scope: !2724, inlinedAt: !2833)
!2846 = !DILocation(line: 62, column: 8, scope: !2741, inlinedAt: !2833)
!2847 = !DILocation(line: 62, column: 13, scope: !2741, inlinedAt: !2833)
!2848 = !DILocation(line: 62, column: 10, scope: !2741, inlinedAt: !2833)
!2849 = !DILocation(line: 63, column: 5, scope: !2741, inlinedAt: !2833)
!2850 = !DILocation(line: 76, column: 3, scope: !2813)
!2851 = distinct !DISubprogram(name: "xzalloc", scope: !2685, file: !2685, line: 84, type: !2686, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2852)
!2852 = !{!2853}
!2853 = !DILocalVariable(name: "s", arg: 1, scope: !2851, file: !2685, line: 84, type: !94)
!2854 = !DILocation(line: 84, column: 17, scope: !2851)
!2855 = !DILocation(line: 39, column: 17, scope: !2684, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 86, column: 18, scope: !2851)
!2857 = !DILocation(line: 41, column: 13, scope: !2684, inlinedAt: !2856)
!2858 = !DILocation(line: 41, column: 9, scope: !2684, inlinedAt: !2856)
!2859 = !DILocation(line: 42, column: 8, scope: !2695, inlinedAt: !2856)
!2860 = !DILocation(line: 42, column: 15, scope: !2695, inlinedAt: !2856)
!2861 = !DILocation(line: 42, column: 10, scope: !2695, inlinedAt: !2856)
!2862 = !DILocation(line: 43, column: 5, scope: !2695, inlinedAt: !2856)
!2863 = !DILocation(line: 86, column: 10, scope: !2851)
!2864 = !DILocation(line: 86, column: 3, scope: !2851)
!2865 = distinct !DISubprogram(name: "xcalloc", scope: !2685, file: !2685, line: 93, type: !2671, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2866)
!2866 = !{!2867, !2868, !2869}
!2867 = !DILocalVariable(name: "n", arg: 1, scope: !2865, file: !2685, line: 93, type: !94)
!2868 = !DILocalVariable(name: "s", arg: 2, scope: !2865, file: !2685, line: 93, type: !94)
!2869 = !DILocalVariable(name: "p", scope: !2865, file: !2685, line: 95, type: !49)
!2870 = !DILocation(line: 93, column: 17, scope: !2865)
!2871 = !DILocation(line: 93, column: 27, scope: !2865)
!2872 = !DILocation(line: 100, column: 7, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2865, file: !2685, line: 100, column: 7)
!2874 = !DILocation(line: 101, column: 7, scope: !2873)
!2875 = !DILocation(line: 101, column: 18, scope: !2873)
!2876 = !DILocation(line: 95, column: 9, scope: !2865)
!2877 = !DILocation(line: 101, column: 16, scope: !2873)
!2878 = !DILocation(line: 100, column: 7, scope: !2865)
!2879 = !DILocation(line: 102, column: 5, scope: !2873)
!2880 = !DILocation(line: 103, column: 3, scope: !2865)
!2881 = distinct !DISubprogram(name: "xmemdup", scope: !2685, file: !2685, line: 111, type: !2882, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2886)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!49, !2884, !94}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2886 = !{!2887, !2888}
!2887 = !DILocalVariable(name: "p", arg: 1, scope: !2881, file: !2685, line: 111, type: !2884)
!2888 = !DILocalVariable(name: "s", arg: 2, scope: !2881, file: !2685, line: 111, type: !94)
!2889 = !DILocation(line: 111, column: 22, scope: !2881)
!2890 = !DILocation(line: 111, column: 32, scope: !2881)
!2891 = !DILocation(line: 39, column: 17, scope: !2684, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 113, column: 18, scope: !2881)
!2893 = !DILocation(line: 41, column: 13, scope: !2684, inlinedAt: !2892)
!2894 = !DILocation(line: 41, column: 9, scope: !2684, inlinedAt: !2892)
!2895 = !DILocation(line: 42, column: 8, scope: !2695, inlinedAt: !2892)
!2896 = !DILocation(line: 42, column: 15, scope: !2695, inlinedAt: !2892)
!2897 = !DILocation(line: 42, column: 10, scope: !2695, inlinedAt: !2892)
!2898 = !DILocation(line: 43, column: 5, scope: !2695, inlinedAt: !2892)
!2899 = !DILocation(line: 113, column: 10, scope: !2881)
!2900 = !DILocation(line: 113, column: 3, scope: !2881)
!2901 = distinct !DISubprogram(name: "xstrdup", scope: !2685, file: !2685, line: 119, type: !1958, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !531, variables: !2902)
!2902 = !{!2903}
!2903 = !DILocalVariable(name: "string", arg: 1, scope: !2901, file: !2685, line: 119, type: !6)
!2904 = !DILocation(line: 119, column: 22, scope: !2901)
!2905 = !DILocation(line: 121, column: 27, scope: !2901)
!2906 = !DILocation(line: 121, column: 43, scope: !2901)
!2907 = !DILocation(line: 111, column: 22, scope: !2881, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 121, column: 10, scope: !2901)
!2909 = !DILocation(line: 111, column: 32, scope: !2881, inlinedAt: !2908)
!2910 = !DILocation(line: 39, column: 17, scope: !2684, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 113, column: 18, scope: !2881, inlinedAt: !2908)
!2912 = !DILocation(line: 41, column: 13, scope: !2684, inlinedAt: !2911)
!2913 = !DILocation(line: 41, column: 9, scope: !2684, inlinedAt: !2911)
!2914 = !DILocation(line: 42, column: 8, scope: !2695, inlinedAt: !2911)
!2915 = !DILocation(line: 42, column: 15, scope: !2695, inlinedAt: !2911)
!2916 = !DILocation(line: 42, column: 10, scope: !2695, inlinedAt: !2911)
!2917 = !DILocation(line: 43, column: 5, scope: !2695, inlinedAt: !2911)
!2918 = !DILocation(line: 113, column: 10, scope: !2881, inlinedAt: !2908)
!2919 = !DILocation(line: 121, column: 3, scope: !2901)
!2920 = distinct !DISubprogram(name: "xalloc_die", scope: !2921, file: !2921, line: 32, type: !686, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !548, variables: !4)
!2921 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2922 = !DILocation(line: 34, column: 10, scope: !2920)
!2923 = !DILocation(line: 34, column: 33, scope: !2920)
!2924 = !DILocation(line: 34, column: 3, scope: !2920)
!2925 = !DILocation(line: 40, column: 3, scope: !2920)
!2926 = distinct !DISubprogram(name: "rpl_calloc", scope: !2927, file: !2927, line: 42, type: !2671, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !550, variables: !2928)
!2927 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2928 = !{!2929, !2930, !2931, !2932}
!2929 = !DILocalVariable(name: "n", arg: 1, scope: !2926, file: !2927, line: 42, type: !94)
!2930 = !DILocalVariable(name: "s", arg: 2, scope: !2926, file: !2927, line: 42, type: !94)
!2931 = !DILocalVariable(name: "result", scope: !2926, file: !2927, line: 44, type: !49)
!2932 = !DILocalVariable(name: "bytes", scope: !2933, file: !2927, line: 56, type: !94)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !2927, line: 53, column: 5)
!2934 = distinct !DILexicalBlock(scope: !2926, file: !2927, line: 47, column: 7)
!2935 = !DILocation(line: 42, column: 20, scope: !2926)
!2936 = !DILocation(line: 42, column: 30, scope: !2926)
!2937 = !DILocation(line: 47, column: 9, scope: !2934)
!2938 = !DILocation(line: 47, column: 19, scope: !2934)
!2939 = !DILocation(line: 47, column: 14, scope: !2934)
!2940 = !DILocation(line: 56, column: 24, scope: !2933)
!2941 = !DILocation(line: 56, column: 14, scope: !2933)
!2942 = !DILocation(line: 57, column: 17, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2933, file: !2927, line: 57, column: 11)
!2944 = !DILocation(line: 57, column: 21, scope: !2943)
!2945 = !DILocation(line: 57, column: 11, scope: !2933)
!2946 = !DILocation(line: 59, column: 11, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !2927, line: 58, column: 9)
!2948 = !DILocation(line: 59, column: 17, scope: !2947)
!2949 = !DILocation(line: 65, column: 12, scope: !2926)
!2950 = !DILocation(line: 44, column: 9, scope: !2926)
!2951 = !DILocation(line: 72, column: 3, scope: !2926)
!2952 = !DILocation(line: 73, column: 1, scope: !2926)
!2953 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !2954, file: !2954, line: 334, type: !2955, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !2969)
!2954 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!94, !2957, !6, !94, !2958}
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1006, line: 6, baseType: !2960)
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1008, line: 21, baseType: !2961)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1008, line: 13, size: 64, elements: !2962)
!2962 = !{!2963, !2964}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2961, file: !1008, line: 15, baseType: !25, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2961, file: !1008, line: 20, baseType: !2965, size: 32, offset: 32)
!2965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2961, file: !1008, line: 16, size: 32, elements: !2966)
!2966 = !{!2967, !2968}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2965, file: !1008, line: 18, baseType: !113, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2965, file: !1008, line: 19, baseType: !1017, size: 32)
!2969 = !{!2970, !2971, !2972, !2973, !2974, !2975, !2976}
!2970 = !DILocalVariable(name: "pwc", arg: 1, scope: !2953, file: !2954, line: 334, type: !2957)
!2971 = !DILocalVariable(name: "s", arg: 2, scope: !2953, file: !2954, line: 334, type: !6)
!2972 = !DILocalVariable(name: "n", arg: 3, scope: !2953, file: !2954, line: 334, type: !94)
!2973 = !DILocalVariable(name: "ps", arg: 4, scope: !2953, file: !2954, line: 334, type: !2958)
!2974 = !DILocalVariable(name: "ret", scope: !2953, file: !2954, line: 336, type: !94)
!2975 = !DILocalVariable(name: "wc", scope: !2953, file: !2954, line: 337, type: !1022)
!2976 = !DILocalVariable(name: "uc", scope: !2977, file: !2954, line: 398, type: !494)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !2954, line: 397, column: 5)
!2978 = distinct !DILexicalBlock(scope: !2953, file: !2954, line: 396, column: 7)
!2979 = !DILocation(line: 334, column: 23, scope: !2953)
!2980 = !DILocation(line: 334, column: 40, scope: !2953)
!2981 = !DILocation(line: 334, column: 50, scope: !2953)
!2982 = !DILocation(line: 334, column: 64, scope: !2953)
!2983 = !DILocation(line: 337, column: 3, scope: !2953)
!2984 = !DILocation(line: 353, column: 9, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2953, file: !2954, line: 353, column: 7)
!2986 = !DILocation(line: 353, column: 7, scope: !2953)
!2987 = !DILocation(line: 388, column: 9, scope: !2953)
!2988 = !DILocation(line: 336, column: 10, scope: !2953)
!2989 = !DILocation(line: 396, column: 19, scope: !2978)
!2990 = !DILocation(line: 396, column: 31, scope: !2978)
!2991 = !DILocation(line: 396, column: 26, scope: !2978)
!2992 = !DILocation(line: 396, column: 41, scope: !2978)
!2993 = !DILocation(line: 396, column: 7, scope: !2953)
!2994 = !DILocation(line: 398, column: 26, scope: !2977)
!2995 = !DILocation(line: 398, column: 21, scope: !2977)
!2996 = !DILocation(line: 399, column: 14, scope: !2977)
!2997 = !DILocation(line: 399, column: 12, scope: !2977)
!2998 = !DILocation(line: 405, column: 1, scope: !2953)
!2999 = distinct !DISubprogram(name: "close_stream", scope: !3000, file: !3000, line: 56, type: !3001, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3043)
!3000 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!25, !3003}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2484, line: 7, baseType: !3005)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2486, line: 241, size: 1728, elements: !3006)
!3006 = !{!3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3005, file: !2486, line: 242, baseType: !25, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3005, file: !2486, line: 247, baseType: !50, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3005, file: !2486, line: 248, baseType: !50, size: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3005, file: !2486, line: 249, baseType: !50, size: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3005, file: !2486, line: 250, baseType: !50, size: 64, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3005, file: !2486, line: 251, baseType: !50, size: 64, offset: 320)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3005, file: !2486, line: 252, baseType: !50, size: 64, offset: 384)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3005, file: !2486, line: 253, baseType: !50, size: 64, offset: 448)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3005, file: !2486, line: 254, baseType: !50, size: 64, offset: 512)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3005, file: !2486, line: 256, baseType: !50, size: 64, offset: 576)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3005, file: !2486, line: 257, baseType: !50, size: 64, offset: 640)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3005, file: !2486, line: 258, baseType: !50, size: 64, offset: 704)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3005, file: !2486, line: 260, baseType: !3020, size: 64, offset: 768)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2486, line: 156, size: 192, elements: !3022)
!3022 = !{!3023, !3024, !3026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3021, file: !2486, line: 157, baseType: !3020, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3021, file: !2486, line: 158, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3021, file: !2486, line: 162, baseType: !25, size: 32, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3005, file: !2486, line: 262, baseType: !3025, size: 64, offset: 832)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3005, file: !2486, line: 264, baseType: !25, size: 32, offset: 896)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3005, file: !2486, line: 268, baseType: !25, size: 32, offset: 928)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3005, file: !2486, line: 270, baseType: !2512, size: 64, offset: 960)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3005, file: !2486, line: 274, baseType: !93, size: 16, offset: 1024)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3005, file: !2486, line: 275, baseType: !2517, size: 8, offset: 1040)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3005, file: !2486, line: 276, baseType: !2519, size: 8, offset: 1048)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3005, file: !2486, line: 280, baseType: !2521, size: 64, offset: 1088)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3005, file: !2486, line: 289, baseType: !2524, size: 64, offset: 1152)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3005, file: !2486, line: 297, baseType: !49, size: 64, offset: 1216)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3005, file: !2486, line: 298, baseType: !49, size: 64, offset: 1280)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3005, file: !2486, line: 299, baseType: !49, size: 64, offset: 1344)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3005, file: !2486, line: 300, baseType: !49, size: 64, offset: 1408)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3005, file: !2486, line: 302, baseType: !94, size: 64, offset: 1472)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3005, file: !2486, line: 303, baseType: !25, size: 32, offset: 1536)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3005, file: !2486, line: 305, baseType: !2532, size: 160, offset: 1568)
!3043 = !{!3044, !3045, !3047, !3048}
!3044 = !DILocalVariable(name: "stream", arg: 1, scope: !2999, file: !3000, line: 56, type: !3003)
!3045 = !DILocalVariable(name: "some_pending", scope: !2999, file: !3000, line: 58, type: !3046)
!3046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3047 = !DILocalVariable(name: "prev_fail", scope: !2999, file: !3000, line: 59, type: !3046)
!3048 = !DILocalVariable(name: "fclose_fail", scope: !2999, file: !3000, line: 60, type: !3046)
!3049 = !DILocation(line: 56, column: 21, scope: !2999)
!3050 = !DILocation(line: 58, column: 30, scope: !2999)
!3051 = !DILocalVariable(name: "__stream", arg: 1, scope: !3052, file: !3053, line: 132, type: !3003)
!3052 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3053, file: !3053, line: 132, type: !3001, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3054)
!3053 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3054 = !{!3051}
!3055 = !DILocation(line: 132, column: 1, scope: !3052, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 59, column: 27, scope: !2999)
!3057 = !DILocation(line: 134, column: 10, scope: !3052, inlinedAt: !3056)
!3058 = !{!3059, !633, i64 0}
!3059 = !{!"_IO_FILE", !633, i64 0, !584, i64 8, !584, i64 16, !584, i64 24, !584, i64 32, !584, i64 40, !584, i64 48, !584, i64 56, !584, i64 64, !584, i64 72, !584, i64 80, !584, i64 88, !584, i64 96, !584, i64 104, !633, i64 112, !633, i64 116, !1801, i64 120, !1257, i64 128, !585, i64 130, !585, i64 131, !584, i64 136, !1801, i64 144, !584, i64 152, !584, i64 160, !584, i64 168, !584, i64 176, !1801, i64 184, !633, i64 192, !585, i64 196}
!3060 = !DILocation(line: 59, column: 43, scope: !2999)
!3061 = !DILocation(line: 60, column: 29, scope: !2999)
!3062 = !DILocation(line: 60, column: 45, scope: !2999)
!3063 = !DILocation(line: 70, column: 17, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2999, file: !3000, line: 70, column: 7)
!3065 = !DILocation(line: 58, column: 50, scope: !2999)
!3066 = !DILocation(line: 70, column: 33, scope: !3064)
!3067 = !DILocation(line: 70, column: 53, scope: !3064)
!3068 = !DILocation(line: 70, column: 59, scope: !3064)
!3069 = !DILocation(line: 70, column: 7, scope: !2999)
!3070 = !DILocation(line: 72, column: 11, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3064, file: !3000, line: 71, column: 5)
!3072 = !DILocation(line: 73, column: 9, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3071, file: !3000, line: 72, column: 11)
!3074 = !DILocation(line: 73, column: 15, scope: !3073)
!3075 = !DILocation(line: 78, column: 1, scope: !2999)
!3076 = distinct !DISubprogram(name: "hard_locale", scope: !3077, file: !3077, line: 38, type: !3078, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !557, variables: !3080)
!3077 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!17, !25}
!3080 = !{!3081, !3082, !3083}
!3081 = !DILocalVariable(name: "category", arg: 1, scope: !3076, file: !3077, line: 38, type: !25)
!3082 = !DILocalVariable(name: "hard", scope: !3076, file: !3077, line: 40, type: !17)
!3083 = !DILocalVariable(name: "p", scope: !3076, file: !3077, line: 41, type: !6)
!3084 = !DILocation(line: 38, column: 18, scope: !3076)
!3085 = !DILocation(line: 40, column: 8, scope: !3076)
!3086 = !DILocation(line: 41, column: 19, scope: !3076)
!3087 = !DILocation(line: 41, column: 15, scope: !3076)
!3088 = !DILocation(line: 43, column: 7, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3076, file: !3077, line: 43, column: 7)
!3090 = !DILocation(line: 43, column: 7, scope: !3076)
!3091 = !DILocation(line: 47, column: 15, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !3077, line: 47, column: 15)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3077, line: 46, column: 9)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !3077, line: 45, column: 11)
!3095 = distinct !DILexicalBlock(scope: !3089, file: !3077, line: 44, column: 5)
!3096 = !DILocation(line: 47, column: 31, scope: !3092)
!3097 = !DILocation(line: 47, column: 36, scope: !3092)
!3098 = !DILocation(line: 47, column: 39, scope: !3092)
!3099 = !DILocation(line: 47, column: 59, scope: !3092)
!3100 = !DILocation(line: 47, column: 15, scope: !3093)
!3101 = !DILocation(line: 48, column: 13, scope: !3092)
!3102 = !DILocation(line: 71, column: 3, scope: !3076)
!3103 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3104, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!6}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "codeset", scope: !3103, file: !496, line: 395, type: !6)
!3108 = !DILocalVariable(name: "aliases", scope: !3103, file: !496, line: 396, type: !6)
!3109 = !DILocalVariable(name: "buf1", scope: !3110, file: !496, line: 196, type: !3177)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !496, line: 194, column: 21)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !496, line: 193, column: 19)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !496, line: 193, column: 19)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !496, line: 188, column: 17)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !496, line: 181, column: 19)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !496, line: 177, column: 13)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !496, line: 173, column: 15)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !496, line: 161, column: 9)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !496, line: 157, column: 11)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !496, line: 130, column: 5)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !496, line: 129, column: 7)
!3121 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3104, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3122)
!3122 = !{!3123, !3124, !3125, !3126, !3127, !3129, !3130, !3131, !3132, !3173, !3174, !3175, !3109, !3176, !3180, !3181, !3182}
!3123 = !DILocalVariable(name: "cp", scope: !3121, file: !496, line: 126, type: !6)
!3124 = !DILocalVariable(name: "dir", scope: !3119, file: !496, line: 132, type: !6)
!3125 = !DILocalVariable(name: "base", scope: !3119, file: !496, line: 133, type: !6)
!3126 = !DILocalVariable(name: "file_name", scope: !3119, file: !496, line: 134, type: !50)
!3127 = !DILocalVariable(name: "dir_len", scope: !3128, file: !496, line: 144, type: !94)
!3128 = distinct !DILexicalBlock(scope: !3119, file: !496, line: 143, column: 7)
!3129 = !DILocalVariable(name: "base_len", scope: !3128, file: !496, line: 145, type: !94)
!3130 = !DILocalVariable(name: "add_slash", scope: !3128, file: !496, line: 146, type: !25)
!3131 = !DILocalVariable(name: "fd", scope: !3117, file: !496, line: 162, type: !25)
!3132 = !DILocalVariable(name: "fp", scope: !3115, file: !496, line: 178, type: !3133)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2484, line: 7, baseType: !3135)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2486, line: 241, size: 1728, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3135, file: !2486, line: 242, baseType: !25, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3135, file: !2486, line: 247, baseType: !50, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3135, file: !2486, line: 248, baseType: !50, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3135, file: !2486, line: 249, baseType: !50, size: 64, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3135, file: !2486, line: 250, baseType: !50, size: 64, offset: 256)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3135, file: !2486, line: 251, baseType: !50, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3135, file: !2486, line: 252, baseType: !50, size: 64, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3135, file: !2486, line: 253, baseType: !50, size: 64, offset: 448)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3135, file: !2486, line: 254, baseType: !50, size: 64, offset: 512)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3135, file: !2486, line: 256, baseType: !50, size: 64, offset: 576)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3135, file: !2486, line: 257, baseType: !50, size: 64, offset: 640)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3135, file: !2486, line: 258, baseType: !50, size: 64, offset: 704)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3135, file: !2486, line: 260, baseType: !3150, size: 64, offset: 768)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2486, line: 156, size: 192, elements: !3152)
!3152 = !{!3153, !3154, !3156}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3151, file: !2486, line: 157, baseType: !3150, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3151, file: !2486, line: 158, baseType: !3155, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3151, file: !2486, line: 162, baseType: !25, size: 32, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3135, file: !2486, line: 262, baseType: !3155, size: 64, offset: 832)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3135, file: !2486, line: 264, baseType: !25, size: 32, offset: 896)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3135, file: !2486, line: 268, baseType: !25, size: 32, offset: 928)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3135, file: !2486, line: 270, baseType: !2512, size: 64, offset: 960)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3135, file: !2486, line: 274, baseType: !93, size: 16, offset: 1024)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3135, file: !2486, line: 275, baseType: !2517, size: 8, offset: 1040)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3135, file: !2486, line: 276, baseType: !2519, size: 8, offset: 1048)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3135, file: !2486, line: 280, baseType: !2521, size: 64, offset: 1088)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3135, file: !2486, line: 289, baseType: !2524, size: 64, offset: 1152)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3135, file: !2486, line: 297, baseType: !49, size: 64, offset: 1216)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3135, file: !2486, line: 298, baseType: !49, size: 64, offset: 1280)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3135, file: !2486, line: 299, baseType: !49, size: 64, offset: 1344)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3135, file: !2486, line: 300, baseType: !49, size: 64, offset: 1408)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3135, file: !2486, line: 302, baseType: !94, size: 64, offset: 1472)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3135, file: !2486, line: 303, baseType: !25, size: 32, offset: 1536)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3135, file: !2486, line: 305, baseType: !2532, size: 160, offset: 1568)
!3173 = !DILocalVariable(name: "res_ptr", scope: !3113, file: !496, line: 190, type: !50)
!3174 = !DILocalVariable(name: "res_size", scope: !3113, file: !496, line: 191, type: !94)
!3175 = !DILocalVariable(name: "c", scope: !3110, file: !496, line: 195, type: !25)
!3176 = !DILocalVariable(name: "buf2", scope: !3110, file: !496, line: 197, type: !3177)
!3177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3178)
!3178 = !{!3179}
!3179 = !DISubrange(count: 51)
!3180 = !DILocalVariable(name: "l1", scope: !3110, file: !496, line: 198, type: !94)
!3181 = !DILocalVariable(name: "l2", scope: !3110, file: !496, line: 198, type: !94)
!3182 = !DILocalVariable(name: "old_res_ptr", scope: !3110, file: !496, line: 199, type: !50)
!3183 = !DILocation(line: 196, column: 28, scope: !3110, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 589, column: 18, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3103, file: !496, line: 589, column: 3)
!3186 = !DILocation(line: 197, column: 28, scope: !3110, inlinedAt: !3184)
!3187 = !DILocation(line: 403, column: 13, scope: !3103)
!3188 = !DILocation(line: 395, column: 15, scope: !3103)
!3189 = !DILocation(line: 584, column: 15, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3103, file: !496, line: 584, column: 7)
!3191 = !DILocation(line: 584, column: 7, scope: !3103)
!3192 = !DILocation(line: 128, column: 8, scope: !3121, inlinedAt: !3184)
!3193 = !DILocation(line: 126, column: 15, scope: !3121, inlinedAt: !3184)
!3194 = !DILocation(line: 129, column: 10, scope: !3120, inlinedAt: !3184)
!3195 = !DILocation(line: 129, column: 7, scope: !3121, inlinedAt: !3184)
!3196 = !DILocation(line: 138, column: 13, scope: !3119, inlinedAt: !3184)
!3197 = !DILocation(line: 132, column: 19, scope: !3119, inlinedAt: !3184)
!3198 = !DILocation(line: 139, column: 15, scope: !3199, inlinedAt: !3184)
!3199 = distinct !DILexicalBlock(scope: !3119, file: !496, line: 139, column: 11)
!3200 = !DILocation(line: 139, column: 23, scope: !3199, inlinedAt: !3184)
!3201 = !DILocation(line: 139, column: 26, scope: !3199, inlinedAt: !3184)
!3202 = !DILocation(line: 139, column: 33, scope: !3199, inlinedAt: !3184)
!3203 = !DILocation(line: 139, column: 11, scope: !3119, inlinedAt: !3184)
!3204 = !DILocation(line: 140, column: 9, scope: !3199, inlinedAt: !3184)
!3205 = !DILocation(line: 144, column: 26, scope: !3128, inlinedAt: !3184)
!3206 = !DILocation(line: 144, column: 16, scope: !3128, inlinedAt: !3184)
!3207 = !DILocation(line: 145, column: 16, scope: !3128, inlinedAt: !3184)
!3208 = !DILocation(line: 146, column: 34, scope: !3128, inlinedAt: !3184)
!3209 = !DILocation(line: 146, column: 38, scope: !3128, inlinedAt: !3184)
!3210 = !DILocation(line: 146, column: 42, scope: !3128, inlinedAt: !3184)
!3211 = !DILocation(line: 147, column: 48, scope: !3128, inlinedAt: !3184)
!3212 = !DILocation(line: 147, column: 46, scope: !3128, inlinedAt: !3184)
!3213 = !DILocation(line: 147, column: 69, scope: !3128, inlinedAt: !3184)
!3214 = !DILocation(line: 147, column: 30, scope: !3128, inlinedAt: !3184)
!3215 = !DILocation(line: 134, column: 13, scope: !3119, inlinedAt: !3184)
!3216 = !DILocation(line: 148, column: 13, scope: !3128, inlinedAt: !3184)
!3217 = !DILocation(line: 150, column: 13, scope: !3218, inlinedAt: !3184)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !496, line: 149, column: 11)
!3219 = distinct !DILexicalBlock(scope: !3128, file: !496, line: 148, column: 13)
!3220 = !DILocation(line: 151, column: 17, scope: !3218, inlinedAt: !3184)
!3221 = !DILocation(line: 152, column: 34, scope: !3222, inlinedAt: !3184)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !496, line: 151, column: 17)
!3223 = !DILocation(line: 153, column: 41, scope: !3218, inlinedAt: !3184)
!3224 = !DILocation(line: 153, column: 13, scope: !3218, inlinedAt: !3184)
!3225 = !DILocation(line: 157, column: 11, scope: !3119, inlinedAt: !3184)
!3226 = !DILocation(line: 171, column: 16, scope: !3117, inlinedAt: !3184)
!3227 = !DILocation(line: 162, column: 15, scope: !3117, inlinedAt: !3184)
!3228 = !DILocation(line: 173, column: 18, scope: !3116, inlinedAt: !3184)
!3229 = !DILocation(line: 173, column: 15, scope: !3117, inlinedAt: !3184)
!3230 = !DILocation(line: 180, column: 20, scope: !3115, inlinedAt: !3184)
!3231 = !DILocation(line: 178, column: 21, scope: !3115, inlinedAt: !3184)
!3232 = !DILocation(line: 181, column: 22, scope: !3114, inlinedAt: !3184)
!3233 = !DILocation(line: 181, column: 19, scope: !3115, inlinedAt: !3184)
!3234 = !DILocation(line: 184, column: 19, scope: !3235, inlinedAt: !3184)
!3235 = distinct !DILexicalBlock(scope: !3114, file: !496, line: 182, column: 17)
!3236 = !DILocation(line: 186, column: 17, scope: !3235, inlinedAt: !3184)
!3237 = !DILocation(line: 190, column: 25, scope: !3113, inlinedAt: !3184)
!3238 = !DILocation(line: 191, column: 26, scope: !3113, inlinedAt: !3184)
!3239 = !DILocation(line: 193, column: 19, scope: !3113, inlinedAt: !3184)
!3240 = !DILocation(line: 196, column: 23, scope: !3110, inlinedAt: !3184)
!3241 = !DILocation(line: 197, column: 23, scope: !3110, inlinedAt: !3184)
!3242 = !DILocalVariable(name: "__fp", arg: 1, scope: !3243, file: !3053, line: 63, type: !3133)
!3243 = distinct !DISubprogram(name: "getc_unlocked", scope: !3053, file: !3053, line: 63, type: !3244, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!25, !3133}
!3246 = !{!3242}
!3247 = !DILocation(line: 63, column: 22, scope: !3243, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 201, column: 27, scope: !3110, inlinedAt: !3184)
!3249 = !DILocation(line: 65, column: 10, scope: !3243, inlinedAt: !3248)
!3250 = !{!3059, !584, i64 8}
!3251 = !{!3059, !584, i64 16}
!3252 = !{!"branch_weights", i32 2000, i32 1}
!3253 = !DILocation(line: 195, column: 27, scope: !3110, inlinedAt: !3184)
!3254 = !DILocation(line: 202, column: 27, scope: !3110, inlinedAt: !3184)
!3255 = distinct !{!3255, !3256, !3259}
!3256 = !DILocation(line: 209, column: 27, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !496, line: 207, column: 25)
!3258 = distinct !DILexicalBlock(scope: !3110, file: !496, line: 206, column: 27)
!3259 = !DILocation(line: 211, column: 58, scope: !3257)
!3260 = !DILocation(line: 65, column: 10, scope: !3243, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 210, column: 33, scope: !3257, inlinedAt: !3184)
!3262 = !DILocation(line: 63, column: 22, scope: !3243, inlinedAt: !3261)
!3263 = !DILocation(line: 210, column: 29, scope: !3257, inlinedAt: !3184)
!3264 = distinct !{!3264, !3265, !3266}
!3265 = !DILocation(line: 193, column: 19, scope: !3112)
!3266 = !DILocation(line: 241, column: 21, scope: !3112)
!3267 = !DILocation(line: 216, column: 23, scope: !3110, inlinedAt: !3184)
!3268 = !DILocation(line: 217, column: 27, scope: !3269, inlinedAt: !3184)
!3269 = distinct !DILexicalBlock(scope: !3110, file: !496, line: 217, column: 27)
!3270 = !DILocation(line: 217, column: 64, scope: !3269, inlinedAt: !3184)
!3271 = !DILocation(line: 217, column: 27, scope: !3110, inlinedAt: !3184)
!3272 = !DILocation(line: 219, column: 28, scope: !3110, inlinedAt: !3184)
!3273 = !DILocation(line: 198, column: 30, scope: !3110, inlinedAt: !3184)
!3274 = !DILocation(line: 220, column: 28, scope: !3110, inlinedAt: !3184)
!3275 = !DILocation(line: 198, column: 34, scope: !3110, inlinedAt: !3184)
!3276 = !DILocation(line: 199, column: 29, scope: !3110, inlinedAt: !3184)
!3277 = !DILocation(line: 222, column: 36, scope: !3278, inlinedAt: !3184)
!3278 = distinct !DILexicalBlock(scope: !3110, file: !496, line: 222, column: 27)
!3279 = !DILocation(line: 222, column: 27, scope: !3110, inlinedAt: !3184)
!3280 = !DILocation(line: 225, column: 63, scope: !3281, inlinedAt: !3184)
!3281 = distinct !DILexicalBlock(scope: !3278, file: !496, line: 223, column: 25)
!3282 = !DILocation(line: 225, column: 46, scope: !3281, inlinedAt: !3184)
!3283 = !DILocation(line: 226, column: 25, scope: !3281, inlinedAt: !3184)
!3284 = !DILocation(line: 229, column: 36, scope: !3285, inlinedAt: !3184)
!3285 = distinct !DILexicalBlock(scope: !3278, file: !496, line: 228, column: 25)
!3286 = !DILocation(line: 230, column: 73, scope: !3285, inlinedAt: !3184)
!3287 = !DILocation(line: 230, column: 46, scope: !3285, inlinedAt: !3184)
!3288 = !DILocation(line: 232, column: 35, scope: !3289, inlinedAt: !3184)
!3289 = distinct !DILexicalBlock(scope: !3110, file: !496, line: 232, column: 27)
!3290 = !DILocation(line: 232, column: 27, scope: !3110, inlinedAt: !3184)
!3291 = !DILocation(line: 236, column: 27, scope: !3292, inlinedAt: !3184)
!3292 = distinct !DILexicalBlock(scope: !3289, file: !496, line: 233, column: 25)
!3293 = !DILocation(line: 237, column: 27, scope: !3292, inlinedAt: !3184)
!3294 = !DILocation(line: 241, column: 21, scope: !3111, inlinedAt: !3184)
!3295 = !DILocation(line: 239, column: 39, scope: !3110, inlinedAt: !3184)
!3296 = !DILocation(line: 239, column: 50, scope: !3110, inlinedAt: !3184)
!3297 = !DILocation(line: 239, column: 61, scope: !3110, inlinedAt: !3184)
!3298 = !DILocalVariable(name: "__dest", arg: 1, scope: !3299, file: !3300, line: 88, type: !3303)
!3299 = distinct !DISubprogram(name: "strcpy", scope: !3300, file: !3300, line: 88, type: !3301, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3305)
!3300 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!50, !3303, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3304 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3305 = !{!3298, !3306}
!3306 = !DILocalVariable(name: "__src", arg: 2, scope: !3299, file: !3300, line: 88, type: !3304)
!3307 = !DILocation(line: 88, column: 1, scope: !3299, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 239, column: 23, scope: !3110, inlinedAt: !3184)
!3309 = !DILocation(line: 90, column: 49, scope: !3299, inlinedAt: !3308)
!3310 = !DILocation(line: 90, column: 10, scope: !3299, inlinedAt: !3308)
!3311 = !DILocation(line: 88, column: 1, scope: !3299, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 240, column: 23, scope: !3110, inlinedAt: !3184)
!3313 = !DILocation(line: 90, column: 49, scope: !3299, inlinedAt: !3312)
!3314 = !DILocation(line: 90, column: 10, scope: !3299, inlinedAt: !3312)
!3315 = !DILocation(line: 193, column: 19, scope: !3111, inlinedAt: !3184)
!3316 = !DILocation(line: 242, column: 19, scope: !3113, inlinedAt: !3184)
!3317 = !DILocation(line: 243, column: 32, scope: !3318, inlinedAt: !3184)
!3318 = distinct !DILexicalBlock(scope: !3113, file: !496, line: 243, column: 23)
!3319 = !DILocation(line: 243, column: 23, scope: !3113, inlinedAt: !3184)
!3320 = !DILocation(line: 247, column: 33, scope: !3321, inlinedAt: !3184)
!3321 = distinct !DILexicalBlock(scope: !3318, file: !496, line: 246, column: 21)
!3322 = !DILocation(line: 247, column: 45, scope: !3321, inlinedAt: !3184)
!3323 = !DILocation(line: 253, column: 11, scope: !3117, inlinedAt: !3184)
!3324 = !DILocation(line: 377, column: 23, scope: !3119, inlinedAt: !3184)
!3325 = !DILocation(line: 378, column: 5, scope: !3119, inlinedAt: !3184)
!3326 = !DILocation(line: 396, column: 15, scope: !3103)
!3327 = !DILocation(line: 590, column: 8, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3185, file: !496, line: 589, column: 3)
!3329 = !DILocation(line: 590, column: 17, scope: !3328)
!3330 = !DILocation(line: 589, column: 3, scope: !3185)
!3331 = !DILocation(line: 592, column: 9, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3328, file: !496, line: 592, column: 9)
!3333 = !DILocation(line: 592, column: 35, scope: !3332)
!3334 = !DILocation(line: 593, column: 9, scope: !3332)
!3335 = !DILocation(line: 593, column: 24, scope: !3332)
!3336 = !DILocation(line: 593, column: 31, scope: !3332)
!3337 = !DILocation(line: 593, column: 34, scope: !3332)
!3338 = !DILocation(line: 593, column: 45, scope: !3332)
!3339 = !DILocation(line: 592, column: 9, scope: !3328)
!3340 = !DILocation(line: 595, column: 29, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3332, file: !496, line: 594, column: 7)
!3342 = !DILocation(line: 595, column: 27, scope: !3341)
!3343 = !DILocation(line: 595, column: 46, scope: !3341)
!3344 = !DILocation(line: 596, column: 9, scope: !3341)
!3345 = !DILocation(line: 591, column: 19, scope: !3328)
!3346 = !DILocation(line: 591, column: 36, scope: !3328)
!3347 = !DILocation(line: 591, column: 16, scope: !3328)
!3348 = !DILocation(line: 591, column: 52, scope: !3328)
!3349 = !DILocation(line: 591, column: 69, scope: !3328)
!3350 = !DILocation(line: 591, column: 49, scope: !3328)
!3351 = distinct !{!3351, !3330, !3352}
!3352 = !DILocation(line: 597, column: 7, scope: !3185)
!3353 = !DILocation(line: 602, column: 7, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3103, file: !496, line: 602, column: 7)
!3355 = !DILocation(line: 602, column: 18, scope: !3354)
!3356 = !DILocation(line: 602, column: 7, scope: !3103)
!3357 = !DILocation(line: 612, column: 3, scope: !3103)
!3358 = distinct !DISubprogram(name: "rpl_fclose", scope: !3359, file: !3359, line: 56, type: !3360, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3402)
!3359 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!25, !3362}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2484, line: 7, baseType: !3364)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2486, line: 241, size: 1728, elements: !3365)
!3365 = !{!3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3364, file: !2486, line: 242, baseType: !25, size: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3364, file: !2486, line: 247, baseType: !50, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3364, file: !2486, line: 248, baseType: !50, size: 64, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3364, file: !2486, line: 249, baseType: !50, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3364, file: !2486, line: 250, baseType: !50, size: 64, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3364, file: !2486, line: 251, baseType: !50, size: 64, offset: 320)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3364, file: !2486, line: 252, baseType: !50, size: 64, offset: 384)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3364, file: !2486, line: 253, baseType: !50, size: 64, offset: 448)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3364, file: !2486, line: 254, baseType: !50, size: 64, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3364, file: !2486, line: 256, baseType: !50, size: 64, offset: 576)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3364, file: !2486, line: 257, baseType: !50, size: 64, offset: 640)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3364, file: !2486, line: 258, baseType: !50, size: 64, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3364, file: !2486, line: 260, baseType: !3379, size: 64, offset: 768)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2486, line: 156, size: 192, elements: !3381)
!3381 = !{!3382, !3383, !3385}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3380, file: !2486, line: 157, baseType: !3379, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3380, file: !2486, line: 158, baseType: !3384, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3380, file: !2486, line: 162, baseType: !25, size: 32, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3364, file: !2486, line: 262, baseType: !3384, size: 64, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3364, file: !2486, line: 264, baseType: !25, size: 32, offset: 896)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3364, file: !2486, line: 268, baseType: !25, size: 32, offset: 928)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3364, file: !2486, line: 270, baseType: !2512, size: 64, offset: 960)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3364, file: !2486, line: 274, baseType: !93, size: 16, offset: 1024)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3364, file: !2486, line: 275, baseType: !2517, size: 8, offset: 1040)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3364, file: !2486, line: 276, baseType: !2519, size: 8, offset: 1048)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3364, file: !2486, line: 280, baseType: !2521, size: 64, offset: 1088)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3364, file: !2486, line: 289, baseType: !2524, size: 64, offset: 1152)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3364, file: !2486, line: 297, baseType: !49, size: 64, offset: 1216)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3364, file: !2486, line: 298, baseType: !49, size: 64, offset: 1280)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3364, file: !2486, line: 299, baseType: !49, size: 64, offset: 1344)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3364, file: !2486, line: 300, baseType: !49, size: 64, offset: 1408)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3364, file: !2486, line: 302, baseType: !94, size: 64, offset: 1472)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3364, file: !2486, line: 303, baseType: !25, size: 32, offset: 1536)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3364, file: !2486, line: 305, baseType: !2532, size: 160, offset: 1568)
!3402 = !{!3403, !3404, !3405, !3406}
!3403 = !DILocalVariable(name: "fp", arg: 1, scope: !3358, file: !3359, line: 56, type: !3362)
!3404 = !DILocalVariable(name: "saved_errno", scope: !3358, file: !3359, line: 58, type: !25)
!3405 = !DILocalVariable(name: "fd", scope: !3358, file: !3359, line: 59, type: !25)
!3406 = !DILocalVariable(name: "result", scope: !3358, file: !3359, line: 60, type: !25)
!3407 = !DILocation(line: 56, column: 19, scope: !3358)
!3408 = !DILocation(line: 58, column: 7, scope: !3358)
!3409 = !DILocation(line: 60, column: 7, scope: !3358)
!3410 = !DILocation(line: 63, column: 8, scope: !3358)
!3411 = !DILocation(line: 59, column: 7, scope: !3358)
!3412 = !DILocation(line: 64, column: 10, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3358, file: !3359, line: 64, column: 7)
!3414 = !DILocation(line: 64, column: 7, scope: !3358)
!3415 = !DILocation(line: 65, column: 12, scope: !3413)
!3416 = !DILocation(line: 65, column: 5, scope: !3413)
!3417 = !DILocation(line: 70, column: 9, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3358, file: !3359, line: 70, column: 7)
!3419 = !DILocation(line: 70, column: 23, scope: !3418)
!3420 = !DILocation(line: 70, column: 33, scope: !3418)
!3421 = !DILocation(line: 70, column: 26, scope: !3418)
!3422 = !DILocation(line: 70, column: 59, scope: !3418)
!3423 = !DILocation(line: 71, column: 7, scope: !3418)
!3424 = !DILocation(line: 71, column: 10, scope: !3418)
!3425 = !DILocation(line: 70, column: 7, scope: !3358)
!3426 = !DILocation(line: 98, column: 12, scope: !3358)
!3427 = !DILocation(line: 103, column: 7, scope: !3358)
!3428 = !DILocation(line: 72, column: 19, scope: !3418)
!3429 = !DILocation(line: 103, column: 19, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3358, file: !3359, line: 103, column: 7)
!3431 = !DILocation(line: 105, column: 13, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3430, file: !3359, line: 104, column: 5)
!3433 = !DILocation(line: 107, column: 5, scope: !3432)
!3434 = !DILocation(line: 110, column: 1, scope: !3358)
!3435 = distinct !DISubprogram(name: "rpl_fflush", scope: !3436, file: !3436, line: 127, type: !3437, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !3479)
!3436 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!25, !3439}
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2484, line: 7, baseType: !3441)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2486, line: 241, size: 1728, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3441, file: !2486, line: 242, baseType: !25, size: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3441, file: !2486, line: 247, baseType: !50, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3441, file: !2486, line: 248, baseType: !50, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3441, file: !2486, line: 249, baseType: !50, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3441, file: !2486, line: 250, baseType: !50, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3441, file: !2486, line: 251, baseType: !50, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3441, file: !2486, line: 252, baseType: !50, size: 64, offset: 384)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3441, file: !2486, line: 253, baseType: !50, size: 64, offset: 448)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3441, file: !2486, line: 254, baseType: !50, size: 64, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3441, file: !2486, line: 256, baseType: !50, size: 64, offset: 576)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3441, file: !2486, line: 257, baseType: !50, size: 64, offset: 640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3441, file: !2486, line: 258, baseType: !50, size: 64, offset: 704)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3441, file: !2486, line: 260, baseType: !3456, size: 64, offset: 768)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2486, line: 156, size: 192, elements: !3458)
!3458 = !{!3459, !3460, !3462}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3457, file: !2486, line: 157, baseType: !3456, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3457, file: !2486, line: 158, baseType: !3461, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3457, file: !2486, line: 162, baseType: !25, size: 32, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3441, file: !2486, line: 262, baseType: !3461, size: 64, offset: 832)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3441, file: !2486, line: 264, baseType: !25, size: 32, offset: 896)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3441, file: !2486, line: 268, baseType: !25, size: 32, offset: 928)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3441, file: !2486, line: 270, baseType: !2512, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3441, file: !2486, line: 274, baseType: !93, size: 16, offset: 1024)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3441, file: !2486, line: 275, baseType: !2517, size: 8, offset: 1040)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3441, file: !2486, line: 276, baseType: !2519, size: 8, offset: 1048)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3441, file: !2486, line: 280, baseType: !2521, size: 64, offset: 1088)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3441, file: !2486, line: 289, baseType: !2524, size: 64, offset: 1152)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3441, file: !2486, line: 297, baseType: !49, size: 64, offset: 1216)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3441, file: !2486, line: 298, baseType: !49, size: 64, offset: 1280)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3441, file: !2486, line: 299, baseType: !49, size: 64, offset: 1344)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3441, file: !2486, line: 300, baseType: !49, size: 64, offset: 1408)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3441, file: !2486, line: 302, baseType: !94, size: 64, offset: 1472)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3441, file: !2486, line: 303, baseType: !25, size: 32, offset: 1536)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3441, file: !2486, line: 305, baseType: !2532, size: 160, offset: 1568)
!3479 = !{!3480}
!3480 = !DILocalVariable(name: "stream", arg: 1, scope: !3435, file: !3436, line: 127, type: !3439)
!3481 = !DILocation(line: 127, column: 19, scope: !3435)
!3482 = !DILocation(line: 148, column: 14, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3435, file: !3436, line: 148, column: 7)
!3484 = !DILocation(line: 148, column: 22, scope: !3483)
!3485 = !DILocation(line: 148, column: 27, scope: !3483)
!3486 = !DILocation(line: 148, column: 7, scope: !3435)
!3487 = !DILocation(line: 149, column: 12, scope: !3483)
!3488 = !DILocation(line: 149, column: 5, scope: !3483)
!3489 = !DILocalVariable(name: "fp", arg: 1, scope: !3490, file: !3436, line: 40, type: !3439)
!3490 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3436, file: !3436, line: 40, type: !3491, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3439}
!3493 = !{!3489}
!3494 = !DILocation(line: 40, column: 48, scope: !3490, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 153, column: 3, scope: !3435)
!3496 = !DILocation(line: 42, column: 11, scope: !3497, inlinedAt: !3495)
!3497 = distinct !DILexicalBlock(scope: !3490, file: !3436, line: 42, column: 7)
!3498 = !DILocation(line: 42, column: 18, scope: !3497, inlinedAt: !3495)
!3499 = !DILocation(line: 42, column: 7, scope: !3490, inlinedAt: !3495)
!3500 = !DILocation(line: 44, column: 5, scope: !3497, inlinedAt: !3495)
!3501 = !DILocation(line: 155, column: 10, scope: !3435)
!3502 = !DILocation(line: 155, column: 3, scope: !3435)
!3503 = !DILocation(line: 229, column: 1, scope: !3435)
!3504 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3505, file: !3505, line: 28, type: !3506, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3549)
!3505 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!25, !3508, !3548, !25}
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2484, line: 7, baseType: !3510)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2486, line: 241, size: 1728, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3510, file: !2486, line: 242, baseType: !25, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3510, file: !2486, line: 247, baseType: !50, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3510, file: !2486, line: 248, baseType: !50, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3510, file: !2486, line: 249, baseType: !50, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3510, file: !2486, line: 250, baseType: !50, size: 64, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3510, file: !2486, line: 251, baseType: !50, size: 64, offset: 320)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3510, file: !2486, line: 252, baseType: !50, size: 64, offset: 384)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3510, file: !2486, line: 253, baseType: !50, size: 64, offset: 448)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3510, file: !2486, line: 254, baseType: !50, size: 64, offset: 512)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3510, file: !2486, line: 256, baseType: !50, size: 64, offset: 576)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3510, file: !2486, line: 257, baseType: !50, size: 64, offset: 640)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3510, file: !2486, line: 258, baseType: !50, size: 64, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3510, file: !2486, line: 260, baseType: !3525, size: 64, offset: 768)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2486, line: 156, size: 192, elements: !3527)
!3527 = !{!3528, !3529, !3531}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3526, file: !2486, line: 157, baseType: !3525, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3526, file: !2486, line: 158, baseType: !3530, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3526, file: !2486, line: 162, baseType: !25, size: 32, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3510, file: !2486, line: 262, baseType: !3530, size: 64, offset: 832)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3510, file: !2486, line: 264, baseType: !25, size: 32, offset: 896)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3510, file: !2486, line: 268, baseType: !25, size: 32, offset: 928)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3510, file: !2486, line: 270, baseType: !2512, size: 64, offset: 960)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3510, file: !2486, line: 274, baseType: !93, size: 16, offset: 1024)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3510, file: !2486, line: 275, baseType: !2517, size: 8, offset: 1040)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3510, file: !2486, line: 276, baseType: !2519, size: 8, offset: 1048)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3510, file: !2486, line: 280, baseType: !2521, size: 64, offset: 1088)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3510, file: !2486, line: 289, baseType: !2524, size: 64, offset: 1152)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3510, file: !2486, line: 297, baseType: !49, size: 64, offset: 1216)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3510, file: !2486, line: 298, baseType: !49, size: 64, offset: 1280)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3510, file: !2486, line: 299, baseType: !49, size: 64, offset: 1344)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3510, file: !2486, line: 300, baseType: !49, size: 64, offset: 1408)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3510, file: !2486, line: 302, baseType: !94, size: 64, offset: 1472)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3510, file: !2486, line: 303, baseType: !25, size: 32, offset: 1536)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3510, file: !2486, line: 305, baseType: !2532, size: 160, offset: 1568)
!3548 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !740, line: 57, baseType: !2512)
!3549 = !{!3550, !3551, !3552, !3553}
!3550 = !DILocalVariable(name: "fp", arg: 1, scope: !3504, file: !3505, line: 28, type: !3508)
!3551 = !DILocalVariable(name: "offset", arg: 2, scope: !3504, file: !3505, line: 28, type: !3548)
!3552 = !DILocalVariable(name: "whence", arg: 3, scope: !3504, file: !3505, line: 28, type: !25)
!3553 = !DILocalVariable(name: "pos", scope: !3554, file: !3505, line: 116, type: !3548)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3505, line: 112, column: 5)
!3555 = distinct !DILexicalBlock(scope: !3504, file: !3505, line: 51, column: 7)
!3556 = !DILocation(line: 28, column: 15, scope: !3504)
!3557 = !DILocation(line: 28, column: 25, scope: !3504)
!3558 = !DILocation(line: 28, column: 37, scope: !3504)
!3559 = !DILocation(line: 51, column: 11, scope: !3555)
!3560 = !DILocation(line: 51, column: 31, scope: !3555)
!3561 = !DILocation(line: 51, column: 24, scope: !3555)
!3562 = !DILocation(line: 52, column: 7, scope: !3555)
!3563 = !DILocation(line: 52, column: 14, scope: !3555)
!3564 = !{!3059, !584, i64 40}
!3565 = !DILocation(line: 52, column: 35, scope: !3555)
!3566 = !{!3059, !584, i64 32}
!3567 = !DILocation(line: 52, column: 28, scope: !3555)
!3568 = !DILocation(line: 53, column: 7, scope: !3555)
!3569 = !DILocation(line: 53, column: 14, scope: !3555)
!3570 = !{!3059, !584, i64 72}
!3571 = !DILocation(line: 53, column: 28, scope: !3555)
!3572 = !DILocation(line: 51, column: 7, scope: !3504)
!3573 = !DILocation(line: 116, column: 26, scope: !3554)
!3574 = !DILocation(line: 116, column: 19, scope: !3554)
!3575 = !DILocation(line: 116, column: 13, scope: !3554)
!3576 = !DILocation(line: 117, column: 15, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3554, file: !3505, line: 117, column: 11)
!3578 = !DILocation(line: 117, column: 11, scope: !3554)
!3579 = !DILocation(line: 127, column: 11, scope: !3554)
!3580 = !DILocation(line: 127, column: 18, scope: !3554)
!3581 = !DILocation(line: 128, column: 11, scope: !3554)
!3582 = !DILocation(line: 128, column: 19, scope: !3554)
!3583 = !{!3059, !1801, i64 144}
!3584 = !DILocation(line: 159, column: 7, scope: !3554)
!3585 = !DILocation(line: 161, column: 10, scope: !3504)
!3586 = !DILocation(line: 161, column: 3, scope: !3504)
!3587 = !DILocation(line: 162, column: 1, scope: !3504)
