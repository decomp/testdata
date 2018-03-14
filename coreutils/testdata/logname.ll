; ModuleID = 'coreutils-8.27/src/logname.bc'
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
@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Print the name of the current user.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"logname\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.24 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"FIXME: unknown\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"no login name\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), align 8, !dbg !0
@.str.13 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.16 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.17 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.29, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.30, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.29 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.30 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.35 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.36 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.37 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.41, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.47, i32 0, i32 0), i8* null], align 16, !dbg !53
@.str.38 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.39 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.40 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.41 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.42 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.43 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.44 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.45 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.46 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.47 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.48 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.49 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.50 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !125
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !132
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !120
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !134
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
@.str.16.73 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.74 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.75 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.86 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.97 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.100 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.101 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.102 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.103 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.104 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.105 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.106 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 !dbg !570 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !574, metadata !575), !dbg !576
  %2 = icmp eq i32 %0, 0, !dbg !577
  br i1 %2, label %8, label %3, !dbg !579

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !580, !tbaa !582
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !580
  %6 = load i8*, i8** @program_name, align 8, !dbg !580, !tbaa !582
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !580
  br label %36, !dbg !580

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !586
  %10 = load i8*, i8** @program_name, align 8, !dbg !586, !tbaa !582
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !586
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !588
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !588, !tbaa !582
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !588
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !589
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !582
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !589
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !590
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590, !tbaa !582
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !590
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !510, metadata !575) #10, !dbg !591
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !510, metadata !575) #10, !dbg !591
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !593
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !593
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !594
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !518, metadata !575) #10, !dbg !595
  %24 = icmp eq i8* %23, null, !dbg !596
  br i1 %24, label %31, label %25, !dbg !598

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i64 3) #14, !dbg !599
  %27 = icmp eq i32 %26, 0, !dbg !599
  br i1 %27, label %31, label %28, !dbg !600

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !601
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !601
  br label %31, !dbg !603

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !604
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !604
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !605
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0)) #10, !dbg !605
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #15, !dbg !606
  unreachable, !dbg !606
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !607 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !612, metadata !575), !dbg !615
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !613, metadata !575), !dbg !616
  %3 = load i8*, i8** %1, align 8, !dbg !617, !tbaa !582
  tail call void @set_program_name(i8* %3) #10, !dbg !618
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !619
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !620
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !621
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !622
  %8 = load i8*, i8** @Version, align 8, !dbg !623, !tbaa !582
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !624
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !625
  %10 = icmp eq i32 %9, -1, !dbg !627
  br i1 %10, label %12, label %11, !dbg !628

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !629
  unreachable, !dbg !629

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !630, !tbaa !632
  %14 = icmp slt i32 %13, %0, !dbg !634
  br i1 %14, label %15, label %22, !dbg !635

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !636
  %17 = load i32, i32* @optind, align 4, !dbg !638, !tbaa !632
  %18 = sext i32 %17 to i64, !dbg !639
  %19 = getelementptr inbounds i8*, i8** %1, i64 %18, !dbg !639
  %20 = load i8*, i8** %19, align 8, !dbg !639, !tbaa !582
  %21 = tail call i8* @quote(i8* %20) #10, !dbg !640
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %21) #10, !dbg !641
  tail call void @usage(i32 1) #16, !dbg !642
  unreachable, !dbg !642

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @getlogin() #10, !dbg !643
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !614, metadata !575), !dbg !644
  %24 = icmp eq i8* %23, null, !dbg !645
  br i1 %24, label %25, label %27, !dbg !647

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !648
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #10, !dbg !648
  unreachable, !dbg !648

; <label>:27:                                     ; preds = %22
  %28 = tail call i32 @puts(i8* nonnull %23), !dbg !649
  ret i32 0, !dbg !650
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

declare i8* @getlogin() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !651 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !653, metadata !575), !dbg !654
  store i8* %0, i8** @file_name, align 8, !dbg !655, !tbaa !582
  ret void, !dbg !656
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !657 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !661, metadata !575), !dbg !662
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !663, !tbaa !664
  ret void, !dbg !666
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !667 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !674, !tbaa !582
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !675
  %3 = icmp eq i32 %2, 0, !dbg !676
  br i1 %3, label %21, label %4, !dbg !677

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !678, !tbaa !664, !range !679
  %6 = icmp eq i8 %5, 0, !dbg !678
  %7 = tail call i32* @__errno_location() #17, !dbg !680
  br i1 %6, label %11, label %8, !dbg !682

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !683, !tbaa !632
  %10 = icmp eq i32 %9, 32, !dbg !684
  br i1 %10, label %21, label %11, !dbg !685

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !686
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !671, metadata !575), !dbg !687
  %13 = load i8*, i8** @file_name, align 8, !dbg !688, !tbaa !582
  %14 = icmp eq i8* %13, null, !dbg !688
  %15 = load i32, i32* %7, align 4, !tbaa !632
  br i1 %14, label %18, label %16, !dbg !689

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !690
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.17, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !691
  br label %19, !dbg !691

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.18, i64 0, i64 0), i8* %12) #10, !dbg !692
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !693, !tbaa !632
  tail call void @_exit(i32 %20) #15, !dbg !694
  unreachable, !dbg !694

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !695, !tbaa !582
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !697
  %24 = icmp eq i32 %23, 0, !dbg !698
  br i1 %24, label %27, label %25, !dbg !699

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !700, !tbaa !632
  tail call void @_exit(i32 %26) #15, !dbg !701
  unreachable, !dbg !701

; <label>:27:                                     ; preds = %21
  ret void, !dbg !702
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !703 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !708, metadata !575), !dbg !735
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !709, metadata !575), !dbg !736
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !710, metadata !575), !dbg !737
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !711, metadata !575), !dbg !738
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !712, metadata !575), !dbg !739
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !713, metadata !575), !dbg !740
  %8 = load i32, i32* @opterr, align 4, !dbg !741, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !715, metadata !575), !dbg !742
  store i32 0, i32* @opterr, align 4, !dbg !743, !tbaa !632
  %9 = icmp eq i32 %0, 2, !dbg !744
  br i1 %9, label %10, label %17, !dbg !745

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !746
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !714, metadata !575), !dbg !747
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !748

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !749
  br label %17, !dbg !750

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !751
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !751
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !716, metadata !575), !dbg !752
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !753
  call void @llvm.va_start(i8* nonnull %14), !dbg !753
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754, !tbaa !582
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !755
  call void @exit(i32 0) #15, !dbg !756
  unreachable, !dbg !756

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !757, !tbaa !632
  store i32 0, i32* @optind, align 4, !dbg !758, !tbaa !632
  ret void, !dbg !759
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !760 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !762, metadata !575), !dbg !765
  %2 = icmp eq i8* %0, null, !dbg !766
  br i1 %2, label %3, label %6, !dbg !768

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !769, !tbaa !582
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !771
  tail call void @abort() #15, !dbg !772
  unreachable, !dbg !772

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !773
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !763, metadata !575), !dbg !774
  %8 = icmp eq i8* %7, null, !dbg !775
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !776
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !777
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !764, metadata !575), !dbg !778
  %11 = ptrtoint i8* %10 to i64, !dbg !779
  %12 = ptrtoint i8* %0 to i64, !dbg !779
  %13 = sub i64 %11, %12, !dbg !779
  %14 = icmp sgt i64 %13, 6, !dbg !781
  br i1 %14, label %15, label %24, !dbg !782

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !783
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.36, i64 0, i64 0), i64 7) #14, !dbg !784
  %18 = icmp eq i32 %17, 0, !dbg !785
  br i1 %18, label %19, label %24, !dbg !786

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !762, metadata !575), !dbg !765
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.37, i64 0, i64 0), i64 3) #14, !dbg !787
  %21 = icmp eq i32 %20, 0, !dbg !790
  br i1 %21, label %22, label %24, !dbg !791

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !792
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !762, metadata !575), !dbg !765
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !794, !tbaa !582
  br label %24, !dbg !795

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !762, metadata !575), !dbg !765
  store i8* %25, i8** @program_name, align 8, !dbg !796, !tbaa !582
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !797, !tbaa !582
  ret void, !dbg !798
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !799 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !804, metadata !575), !dbg !807
  %2 = tail call i32* @__errno_location() #17, !dbg !808
  %3 = load i32, i32* %2, align 4, !dbg !808, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !805, metadata !575), !dbg !809
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !810
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !810
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !810
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !811
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !811
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !806, metadata !575), !dbg !812
  store i32 %3, i32* %2, align 4, !dbg !813, !tbaa !632
  ret %struct.quoting_options* %8, !dbg !814
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !815 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !821, metadata !575), !dbg !822
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !823
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !823
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !824
  %5 = load i32, i32* %4, align 8, !dbg !824, !tbaa !825
  ret i32 %5, !dbg !827
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !828 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !832, metadata !575), !dbg !834
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !833, metadata !575), !dbg !835
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !836
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !836
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !837
  store i32 %1, i32* %5, align 8, !dbg !838, !tbaa !825
  ret void, !dbg !839
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !840 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !844, metadata !575), !dbg !852
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !845, metadata !575), !dbg !853
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !846, metadata !575), !dbg !854
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !847, metadata !575), !dbg !855
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !856
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !856
  %6 = lshr i8 %1, 5, !dbg !857
  %7 = zext i8 %6 to i64, !dbg !857
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !858
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !848, metadata !575), !dbg !859
  %9 = and i8 %1, 31, !dbg !860
  %10 = zext i8 %9 to i32, !dbg !861
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !850, metadata !575), !dbg !862
  %11 = load i32, i32* %8, align 4, !dbg !863, !tbaa !632
  %12 = lshr i32 %11, %10, !dbg !864
  %13 = and i32 %12, 1, !dbg !865
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !851, metadata !575), !dbg !866
  %14 = and i32 %2, 1, !dbg !867
  %15 = xor i32 %13, %14, !dbg !868
  %16 = shl i32 %15, %10, !dbg !869
  %17 = xor i32 %16, %11, !dbg !870
  store i32 %17, i32* %8, align 4, !dbg !870, !tbaa !632
  ret i32 %13, !dbg !871
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !872 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !876, metadata !575), !dbg !879
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !877, metadata !575), !dbg !880
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !881
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !876, metadata !575), !dbg !879
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !883
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !876, metadata !575), !dbg !879
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !884
  %6 = load i32, i32* %5, align 4, !dbg !884, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !878, metadata !575), !dbg !886
  store i32 %1, i32* %5, align 4, !dbg !887, !tbaa !885
  ret i32 %6, !dbg !888
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !889 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !893, metadata !575), !dbg !896
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !894, metadata !575), !dbg !897
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !895, metadata !575), !dbg !898
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !899
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !893, metadata !575), !dbg !896
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !901
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !893, metadata !575), !dbg !896
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !902
  store i32 10, i32* %6, align 8, !dbg !903, !tbaa !825
  %7 = icmp ne i8* %1, null, !dbg !904
  %8 = icmp ne i8* %2, null, !dbg !906
  %9 = and i1 %7, %8, !dbg !907
  br i1 %9, label %11, label %10, !dbg !907

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !908
  unreachable, !dbg !908

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !909
  store i8* %1, i8** %12, align 8, !dbg !910, !tbaa !911
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !912
  store i8* %2, i8** %13, align 8, !dbg !913, !tbaa !914
  ret void, !dbg !915
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !916 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !920, metadata !575), !dbg !928
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !921, metadata !575), !dbg !929
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !922, metadata !575), !dbg !930
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !923, metadata !575), !dbg !931
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !924, metadata !575), !dbg !932
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !933
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !933
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !925, metadata !575), !dbg !934
  %8 = tail call i32* @__errno_location() #17, !dbg !935
  %9 = load i32, i32* %8, align 4, !dbg !935, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !926, metadata !575), !dbg !936
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !937
  %11 = load i32, i32* %10, align 8, !dbg !937, !tbaa !825
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !938
  %13 = load i32, i32* %12, align 4, !dbg !938, !tbaa !885
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !939
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !940
  %16 = load i8*, i8** %15, align 8, !dbg !940, !tbaa !911
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !941
  %18 = load i8*, i8** %17, align 8, !dbg !941, !tbaa !914
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !942
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !927, metadata !575), !dbg !943
  store i32 %9, i32* %8, align 4, !dbg !944, !tbaa !632
  ret i64 %19, !dbg !945
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !946 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !952, metadata !575), !dbg !1016
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !953, metadata !575), !dbg !1017
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !954, metadata !575), !dbg !1018
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !955, metadata !575), !dbg !1019
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !956, metadata !575), !dbg !1020
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !957, metadata !575), !dbg !1021
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !958, metadata !575), !dbg !1022
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !959, metadata !575), !dbg !1023
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !960, metadata !575), !dbg !1024
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !962, metadata !575), !dbg !1025
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !963, metadata !575), !dbg !1026
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !964, metadata !575), !dbg !1027
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !965, metadata !575), !dbg !1028
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !966, metadata !575), !dbg !1029
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1030
  %14 = icmp eq i64 %13, 1, !dbg !1031
  %15 = lshr i32 %5, 1, !dbg !1032
  %16 = trunc i32 %15 to i8, !dbg !1032
  %17 = and i8 %16, 1, !dbg !1032
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !968, metadata !575), !dbg !1032
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !969, metadata !575), !dbg !1033
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !970, metadata !575), !dbg !1034
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !971, metadata !575), !dbg !1035
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1036

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !953, metadata !575), !dbg !1017
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !971, metadata !575), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !970, metadata !575), !dbg !1034
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !968, metadata !575), !dbg !1032
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !955, metadata !575), !dbg !1019
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !966, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !965, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !964, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !963, metadata !575), !dbg !1026
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !960, metadata !575), !dbg !1024
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !959, metadata !575), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !956, metadata !575), !dbg !1020
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
  ], !dbg !1037

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !956, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !968, metadata !575), !dbg !1032
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !968, metadata !575), !dbg !1032
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !956, metadata !575), !dbg !1020
  br label %94, !dbg !1038

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !968, metadata !575), !dbg !1032
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !956, metadata !575), !dbg !1020
  %43 = and i8 %36, 1, !dbg !1040
  %44 = icmp eq i8 %43, 0, !dbg !1040
  br i1 %44, label %45, label %94, !dbg !1038

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1042
  br i1 %46, label %94, label %47, !dbg !1045

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1042, !tbaa !1046
  br label %94, !dbg !1042

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.48, i64 0, i64 0), i32 %28), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !959, metadata !575), !dbg !1023
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), i32 %28), !dbg !1051
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !960, metadata !575), !dbg !1024
  br label %51, !dbg !1052

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !960, metadata !575), !dbg !1024
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !959, metadata !575), !dbg !1023
  %54 = and i8 %36, 1, !dbg !1053
  %55 = icmp eq i8 %54, 0, !dbg !1053
  br i1 %55, label %56, label %72, !dbg !1055

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !964, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !964, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !962, metadata !575), !dbg !1025
  %57 = load i8, i8* %52, align 1, !dbg !1056, !tbaa !1046
  %58 = icmp eq i8 %57, 0, !dbg !1059
  br i1 %58, label %72, label %59, !dbg !1059

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1060

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !964, metadata !575), !dbg !1027
  %64 = icmp ult i64 %63, %40, !dbg !1060
  br i1 %64, label %65, label %67, !dbg !1063

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1060
  store i8 %61, i8* %66, align 1, !dbg !1060, !tbaa !1046
  br label %67, !dbg !1060

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !962, metadata !575), !dbg !1025
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1064
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !964, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !964, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !962, metadata !575), !dbg !1025
  %70 = load i8, i8* %69, align 1, !dbg !1056, !tbaa !1046
  %71 = icmp eq i8 %70, 0, !dbg !1059
  br i1 %71, label %72, label %60, !dbg !1059, !llvm.loop !1065

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !966, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !964, metadata !575), !dbg !1027
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !965, metadata !575), !dbg !1028
  br label %94, !dbg !1068

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !966, metadata !575), !dbg !1029
  br label %76, !dbg !1069

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !966, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !968, metadata !575), !dbg !1032
  br label %78, !dbg !1070

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !968, metadata !575), !dbg !1032
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !966, metadata !575), !dbg !1029
  %81 = and i8 %80, 1, !dbg !1071
  %82 = icmp eq i8 %81, 0, !dbg !1071
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !966, metadata !575), !dbg !1029
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1073
  br label %84, !dbg !1073

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !968, metadata !575), !dbg !1032
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !966, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !956, metadata !575), !dbg !1020
  %87 = and i8 %86, 1, !dbg !1074
  %88 = icmp eq i8 %87, 0, !dbg !1074
  br i1 %88, label %89, label %94, !dbg !1076

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1077
  br i1 %90, label %94, label %91, !dbg !1080

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1077, !tbaa !1046
  br label %94, !dbg !1077

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !968, metadata !575), !dbg !1032
  br label %94, !dbg !1081

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1082
  unreachable, !dbg !1082

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !968, metadata !575), !dbg !1032
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !966, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !965, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !964, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !960, metadata !575), !dbg !1024
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !959, metadata !575), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !956, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !961, metadata !575), !dbg !1083
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
  br label %122, !dbg !1084

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !953, metadata !575), !dbg !1017
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !971, metadata !575), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !970, metadata !575), !dbg !1034
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !955, metadata !575), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !963, metadata !575), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !961, metadata !575), !dbg !1083
  %131 = icmp eq i64 %126, -1, !dbg !1085
  br i1 %131, label %134, label %132, !dbg !1086

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1087
  br i1 %133, label %590, label %138, !dbg !1088

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1089
  %136 = load i8, i8* %135, align 1, !dbg !1089, !tbaa !1046
  %137 = icmp eq i8 %136, 0, !dbg !1090
  br i1 %137, label %590, label %138, !dbg !1088

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !977, metadata !575), !dbg !1091
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !978, metadata !575), !dbg !1092
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !979, metadata !575), !dbg !1093
  br i1 %108, label %139, label %154, !dbg !1094

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1096
  %141 = and i1 %109, %131, !dbg !1097
  br i1 %141, label %142, label %144, !dbg !1097

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !955, metadata !575), !dbg !1019
  br label %144, !dbg !1099

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !955, metadata !575), !dbg !1019
  %146 = icmp ugt i64 %140, %145, !dbg !1100
  br i1 %146, label %154, label %147, !dbg !1101

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1102
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1103
  %150 = icmp ne i32 %149, 0, !dbg !1104
  %151 = or i1 %150, %111, !dbg !1105
  %152 = xor i1 %150, true, !dbg !1105
  %153 = zext i1 %152 to i8, !dbg !1105
  br i1 %151, label %154, label %635, !dbg !1105

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !977, metadata !575), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !955, metadata !575), !dbg !1019
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1106
  %158 = load i8, i8* %157, align 1, !dbg !1106, !tbaa !1046
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !972, metadata !575), !dbg !1107
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
  ], !dbg !1108

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1109

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1110

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !978, metadata !575), !dbg !1092
  %162 = and i8 %127, 1, !dbg !1114
  %163 = icmp eq i8 %162, 0, !dbg !1114
  %164 = and i1 %113, %163, !dbg !1114
  br i1 %164, label %165, label %181, !dbg !1114

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1116
  br i1 %166, label %167, label %169, !dbg !1120

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1116
  store i8 39, i8* %168, align 1, !dbg !1116, !tbaa !1046
  br label %169, !dbg !1116

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1120
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !962, metadata !575), !dbg !1025
  %171 = icmp ult i64 %170, %130, !dbg !1121
  br i1 %171, label %172, label %174, !dbg !1124

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1121
  store i8 36, i8* %173, align 1, !dbg !1121, !tbaa !1046
  br label %174, !dbg !1121

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !962, metadata !575), !dbg !1025
  %176 = icmp ult i64 %175, %130, !dbg !1125
  br i1 %176, label %177, label %179, !dbg !1128

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1125
  store i8 39, i8* %178, align 1, !dbg !1125, !tbaa !1046
  br label %179, !dbg !1125

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !969, metadata !575), !dbg !1033
  br label %181, !dbg !1129

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !962, metadata !575), !dbg !1025
  %184 = icmp ult i64 %182, %130, !dbg !1130
  br i1 %184, label %185, label %187, !dbg !1133

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1130
  store i8 92, i8* %186, align 1, !dbg !1130, !tbaa !1046
  br label %187, !dbg !1130

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !962, metadata !575), !dbg !1025
  br i1 %105, label %189, label %470, !dbg !1134

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1136
  %191 = icmp ult i64 %190, %155, !dbg !1137
  br i1 %191, label %192, label %470, !dbg !1138

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1139
  %194 = load i8, i8* %193, align 1, !dbg !1139, !tbaa !1046
  %195 = add i8 %194, -48, !dbg !1140
  %196 = icmp ult i8 %195, 10, !dbg !1140
  br i1 %196, label %197, label %470, !dbg !1140

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1141
  br i1 %198, label %199, label %201, !dbg !1145

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1141
  store i8 48, i8* %200, align 1, !dbg !1141, !tbaa !1046
  br label %201, !dbg !1141

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1145
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !962, metadata !575), !dbg !1025
  %203 = icmp ult i64 %202, %130, !dbg !1146
  br i1 %203, label %204, label %206, !dbg !1149

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1146
  store i8 48, i8* %205, align 1, !dbg !1146, !tbaa !1046
  br label %206, !dbg !1146

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !962, metadata !575), !dbg !1025
  br label %470, !dbg !1150

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1151

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1152

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1153

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1155

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1157
  %214 = icmp ult i64 %213, %155, !dbg !1158
  br i1 %214, label %215, label %470, !dbg !1159

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1160
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1161
  %218 = load i8, i8* %217, align 1, !dbg !1161, !tbaa !1046
  %219 = icmp eq i8 %218, 63, !dbg !1162
  br i1 %219, label %220, label %470, !dbg !1163

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1164
  %222 = load i8, i8* %221, align 1, !dbg !1164, !tbaa !1046
  %223 = sext i8 %222 to i32, !dbg !1164
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
  ], !dbg !1165

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1166

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !972, metadata !575), !dbg !1107
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !961, metadata !575), !dbg !1083
  %226 = icmp ult i64 %124, %130, !dbg !1168
  br i1 %226, label %227, label %229, !dbg !1171

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1168
  store i8 63, i8* %228, align 1, !dbg !1168, !tbaa !1046
  br label %229, !dbg !1168

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1171
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !962, metadata !575), !dbg !1025
  %231 = icmp ult i64 %230, %130, !dbg !1172
  br i1 %231, label %232, label %234, !dbg !1175

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1172
  store i8 34, i8* %233, align 1, !dbg !1172, !tbaa !1046
  br label %234, !dbg !1172

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !962, metadata !575), !dbg !1025
  %236 = icmp ult i64 %235, %130, !dbg !1176
  br i1 %236, label %237, label %239, !dbg !1179

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1176
  store i8 34, i8* %238, align 1, !dbg !1176, !tbaa !1046
  br label %239, !dbg !1176

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !962, metadata !575), !dbg !1025
  %241 = icmp ult i64 %240, %130, !dbg !1180
  br i1 %241, label %242, label %244, !dbg !1183

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1180
  store i8 63, i8* %243, align 1, !dbg !1180, !tbaa !1046
  br label %244, !dbg !1180

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !962, metadata !575), !dbg !1025
  br label %470, !dbg !1184

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !976, metadata !575), !dbg !1185
  br label %256, !dbg !1186

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !976, metadata !575), !dbg !1185
  br label %256, !dbg !1187

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !976, metadata !575), !dbg !1185
  br label %254, !dbg !1188

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !976, metadata !575), !dbg !1185
  br label %254, !dbg !1189

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !976, metadata !575), !dbg !1185
  br label %256, !dbg !1190

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !976, metadata !575), !dbg !1185
  br i1 %113, label %252, label %253, !dbg !1191

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1192

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1195

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !976, metadata !575), !dbg !1185
  br i1 %117, label %256, label %635, !dbg !1197

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !976, metadata !575), !dbg !1185
  br i1 %104, label %497, label %470, !dbg !1199

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1200
  br i1 %259, label %260, label %265, !dbg !1202

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1203, !tbaa !1046
  %262 = icmp ne i8 %261, 0, !dbg !1204
  %263 = icmp ne i64 %123, 0, !dbg !1205
  %264 = or i1 %263, %262, !dbg !1207
  br i1 %264, label %470, label %271, !dbg !1207

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1208
  %267 = icmp ne i64 %123, 0, !dbg !1205
  %268 = or i1 %267, %266, !dbg !1202
  br i1 %268, label %470, label %271, !dbg !1202

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1205
  br i1 %270, label %271, label %470, !dbg !1209

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !979, metadata !575), !dbg !1093
  br label %272, !dbg !1210

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !979, metadata !575), !dbg !1093
  br i1 %117, label %470, label %635, !dbg !1211

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !970, metadata !575), !dbg !1034
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !979, metadata !575), !dbg !1093
  br i1 %113, label %275, label %470, !dbg !1213

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1214

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1217
  %278 = icmp ne i64 %125, 0, !dbg !1219
  %279 = or i1 %278, %277, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !963, metadata !575), !dbg !1026
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !953, metadata !575), !dbg !1017
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1220
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !953, metadata !575), !dbg !1017
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !963, metadata !575), !dbg !1026
  %282 = icmp ult i64 %124, %281, !dbg !1221
  br i1 %282, label %283, label %285, !dbg !1224

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1221
  store i8 39, i8* %284, align 1, !dbg !1221, !tbaa !1046
  br label %285, !dbg !1221

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !962, metadata !575), !dbg !1025
  %287 = icmp ult i64 %286, %281, !dbg !1225
  br i1 %287, label %288, label %290, !dbg !1228

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1225
  store i8 92, i8* %289, align 1, !dbg !1225, !tbaa !1046
  br label %290, !dbg !1225

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !962, metadata !575), !dbg !1025
  %292 = icmp ult i64 %291, %281, !dbg !1229
  br i1 %292, label %293, label %295, !dbg !1232

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1229
  store i8 39, i8* %294, align 1, !dbg !1229, !tbaa !1046
  br label %295, !dbg !1229

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !969, metadata !575), !dbg !1033
  br label %470, !dbg !1233

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1234

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !980, metadata !575), !dbg !1235
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1236
  %300 = load i16*, i16** %299, align 8, !dbg !1236, !tbaa !582
  %301 = zext i8 %158 to i64, !dbg !1236
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1236
  %303 = load i16, i16* %302, align 2, !dbg !1236, !tbaa !1238
  %304 = lshr i16 %303, 14, !dbg !1240
  %305 = trunc i16 %304 to i8, !dbg !1240
  %306 = and i8 %305, 1, !dbg !1240
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !983, metadata !575), !dbg !1241
  br label %362, !dbg !1242

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1243
  store i64 0, i64* %10, align 8, !dbg !1244
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !980, metadata !575), !dbg !1235
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !983, metadata !575), !dbg !1241
  %308 = icmp eq i64 %155, -1, !dbg !1245
  br i1 %308, label %309, label %311, !dbg !1247

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !955, metadata !575), !dbg !1019
  br label %311, !dbg !1249

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !955, metadata !575), !dbg !1019
  br label %313, !dbg !1250, !llvm.loop !1251

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !983, metadata !575), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !980, metadata !575), !dbg !1235
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1253
  %316 = add i64 %314, %123, !dbg !1254
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1255
  %318 = sub i64 %312, %316, !dbg !1256
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !984, metadata !575), !dbg !1257
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1002, metadata !575), !dbg !1258
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1005, metadata !575), !dbg !1260
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1261

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !983, metadata !575), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !980, metadata !575), !dbg !1235
  %321 = icmp ugt i64 %312, %316, !dbg !1262
  br i1 %321, label %322, label %347, !dbg !1264

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1265

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !980, metadata !575), !dbg !1235
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1265
  %327 = load i8, i8* %326, align 1, !dbg !1265, !tbaa !1046
  %328 = icmp eq i8 %327, 0, !dbg !1264
  br i1 %328, label %347, label %329, !dbg !1266

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !980, metadata !575), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !980, metadata !575), !dbg !1235
  %331 = add i64 %330, %123, !dbg !1268
  %332 = icmp ult i64 %331, %312, !dbg !1262
  br i1 %332, label %323, label %347, !dbg !1264, !llvm.loop !1269

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1270
  %335 = and i1 %115, %334, !dbg !1273
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1006, metadata !575), !dbg !1274
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1006, metadata !575), !dbg !1274
  br i1 %335, label %336, label %350, !dbg !1273

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1275

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1006, metadata !575), !dbg !1274
  %339 = add i64 %338, %316, !dbg !1275
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1276
  %341 = load i8, i8* %340, align 1, !dbg !1276, !tbaa !1046
  %342 = sext i8 %341 to i32, !dbg !1276
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1277

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1006, metadata !575), !dbg !1274
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1006, metadata !575), !dbg !1274
  %345 = icmp ult i64 %344, %319, !dbg !1270
  br i1 %345, label %337, label %350, !dbg !1279, !llvm.loop !1280

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1282

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !983, metadata !575), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !980, metadata !575), !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1282
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1283, !tbaa !632
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1002, metadata !575), !dbg !1258
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1285
  %353 = icmp eq i32 %352, 0, !dbg !1285
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !983, metadata !575), !dbg !1241
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1286
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !983, metadata !575), !dbg !1241
  %355 = add i64 %319, %314, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !980, metadata !575), !dbg !1235
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !983, metadata !575), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !980, metadata !575), !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1282
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !984, metadata !575), !dbg !1257
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1288
  %357 = icmp eq i32 %356, 0, !dbg !1289
  br i1 %357, label %313, label %358, !dbg !1290, !llvm.loop !1251

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1291
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !983, metadata !575), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !980, metadata !575), !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1282
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1291
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !983, metadata !575), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !980, metadata !575), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !955, metadata !575), !dbg !1019
  %366 = and i8 %365, 1, !dbg !1292
  %367 = icmp ne i8 %366, 0, !dbg !1292
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !979, metadata !575), !dbg !1093
  %368 = icmp ult i64 %364, 2, !dbg !1293
  %369 = or i1 %367, %112, !dbg !1294
  %370 = and i1 %368, %369, !dbg !1295
  br i1 %370, label %470, label %371, !dbg !1295

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1013, metadata !575), !dbg !1297
  br label %373, !dbg !1298

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !978, metadata !575), !dbg !1092
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !977, metadata !575), !dbg !1091
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !972, metadata !575), !dbg !1107
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !961, metadata !575), !dbg !1083
  br i1 %369, label %426, label %380, !dbg !1299

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1304

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !978, metadata !575), !dbg !1092
  %382 = and i8 %376, 1, !dbg !1307
  %383 = icmp eq i8 %382, 0, !dbg !1307
  %384 = and i1 %113, %383, !dbg !1307
  br i1 %384, label %385, label %401, !dbg !1307

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1309
  br i1 %386, label %387, label %389, !dbg !1313

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1309
  store i8 39, i8* %388, align 1, !dbg !1309, !tbaa !1046
  br label %389, !dbg !1309

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !962, metadata !575), !dbg !1025
  %391 = icmp ult i64 %390, %130, !dbg !1314
  br i1 %391, label %392, label %394, !dbg !1317

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1314
  store i8 36, i8* %393, align 1, !dbg !1314, !tbaa !1046
  br label %394, !dbg !1314

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !962, metadata !575), !dbg !1025
  %396 = icmp ult i64 %395, %130, !dbg !1318
  br i1 %396, label %397, label %399, !dbg !1321

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1318
  store i8 39, i8* %398, align 1, !dbg !1318, !tbaa !1046
  br label %399, !dbg !1318

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1321
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !969, metadata !575), !dbg !1033
  br label %401, !dbg !1322

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !962, metadata !575), !dbg !1025
  %404 = icmp ult i64 %402, %130, !dbg !1323
  br i1 %404, label %405, label %407, !dbg !1326

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1323
  store i8 92, i8* %406, align 1, !dbg !1323, !tbaa !1046
  br label %407, !dbg !1323

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !962, metadata !575), !dbg !1025
  %409 = icmp ult i64 %408, %130, !dbg !1327
  br i1 %409, label %410, label %414, !dbg !1330

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1327
  %412 = or i8 %411, 48, !dbg !1327
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1327
  store i8 %412, i8* %413, align 1, !dbg !1327, !tbaa !1046
  br label %414, !dbg !1327

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !962, metadata !575), !dbg !1025
  %416 = icmp ult i64 %415, %130, !dbg !1331
  br i1 %416, label %417, label %422, !dbg !1334

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1331
  %419 = and i8 %418, 7, !dbg !1331
  %420 = or i8 %419, 48, !dbg !1331
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1331
  store i8 %420, i8* %421, align 1, !dbg !1331, !tbaa !1046
  br label %422, !dbg !1331

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !962, metadata !575), !dbg !1025
  %424 = and i8 %377, 7, !dbg !1335
  %425 = or i8 %424, 48, !dbg !1336
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !972, metadata !575), !dbg !1107
  br label %435, !dbg !1337

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1338
  %428 = icmp eq i8 %427, 0, !dbg !1338
  br i1 %428, label %435, label %429, !dbg !1340

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1341
  br i1 %430, label %431, label %433, !dbg !1345

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1341
  store i8 92, i8* %432, align 1, !dbg !1341, !tbaa !1046
  br label %433, !dbg !1341

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !977, metadata !575), !dbg !1091
  br label %435, !dbg !1346

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !978, metadata !575), !dbg !1092
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !977, metadata !575), !dbg !1091
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !972, metadata !575), !dbg !1107
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !962, metadata !575), !dbg !1025
  %441 = add i64 %374, 1, !dbg !1347
  %442 = icmp ugt i64 %372, %441, !dbg !1349
  br i1 %442, label %443, label %535, !dbg !1350

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1351
  %445 = icmp ne i8 %444, 0, !dbg !1351
  %446 = and i8 %440, 1, !dbg !1351
  %447 = icmp eq i8 %446, 0, !dbg !1351
  %448 = and i1 %445, %447, !dbg !1351
  br i1 %448, label %449, label %460, !dbg !1351

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1354
  br i1 %450, label %451, label %453, !dbg !1358

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1354
  store i8 39, i8* %452, align 1, !dbg !1354, !tbaa !1046
  br label %453, !dbg !1354

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !962, metadata !575), !dbg !1025
  %455 = icmp ult i64 %454, %130, !dbg !1359
  br i1 %455, label %456, label %458, !dbg !1362

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1359
  store i8 39, i8* %457, align 1, !dbg !1359, !tbaa !1046
  br label %458, !dbg !1359

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !969, metadata !575), !dbg !1033
  br label %460, !dbg !1363

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !962, metadata !575), !dbg !1025
  %463 = icmp ult i64 %461, %130, !dbg !1364
  br i1 %463, label %464, label %466, !dbg !1367

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1364
  store i8 %438, i8* %465, align 1, !dbg !1364, !tbaa !1046
  br label %466, !dbg !1364

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !961, metadata !575), !dbg !1083
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1368
  %469 = load i8, i8* %468, align 1, !dbg !1368, !tbaa !1046
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !972, metadata !575), !dbg !1107
  br label %373, !dbg !1369, !llvm.loop !1370

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !953, metadata !575), !dbg !1017
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !979, metadata !575), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !978, metadata !575), !dbg !1092
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !977, metadata !575), !dbg !1091
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !972, metadata !575), !dbg !1107
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !970, metadata !575), !dbg !1034
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !955, metadata !575), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !963, metadata !575), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !961, metadata !575), !dbg !1083
  br i1 %106, label %482, label %481, !dbg !1373

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1375

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1376

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1377
  %485 = zext i8 %484 to i64, !dbg !1377
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1378
  %487 = load i32, i32* %486, align 4, !dbg !1378, !tbaa !632
  %488 = and i8 %477, 31, !dbg !1379
  %489 = zext i8 %488 to i32, !dbg !1380
  %490 = shl i32 1, %489, !dbg !1381
  %491 = and i32 %487, %490, !dbg !1381
  %492 = icmp eq i32 %491, 0, !dbg !1381
  %493 = icmp eq i8 %156, 0, !dbg !1382
  %494 = and i1 %493, %492, !dbg !1383
  br i1 %494, label %535, label %497, !dbg !1383

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1382
  br i1 %496, label %535, label %497, !dbg !1384

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !953, metadata !575), !dbg !1017
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !979, metadata !575), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !972, metadata !575), !dbg !1107
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !970, metadata !575), !dbg !1034
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !955, metadata !575), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !963, metadata !575), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !961, metadata !575), !dbg !1083
  br i1 %111, label %507, label %635, !dbg !1385

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !978, metadata !575), !dbg !1092
  %508 = and i8 %502, 1, !dbg !1387
  %509 = icmp eq i8 %508, 0, !dbg !1387
  %510 = and i1 %113, %509, !dbg !1387
  br i1 %510, label %511, label %527, !dbg !1387

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1389
  br i1 %512, label %513, label %515, !dbg !1393

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1389
  store i8 39, i8* %514, align 1, !dbg !1389, !tbaa !1046
  br label %515, !dbg !1389

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !962, metadata !575), !dbg !1025
  %517 = icmp ult i64 %516, %506, !dbg !1394
  br i1 %517, label %518, label %520, !dbg !1397

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1394
  store i8 36, i8* %519, align 1, !dbg !1394, !tbaa !1046
  br label %520, !dbg !1394

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !962, metadata !575), !dbg !1025
  %522 = icmp ult i64 %521, %506, !dbg !1398
  br i1 %522, label %523, label %525, !dbg !1401

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1398
  store i8 39, i8* %524, align 1, !dbg !1398, !tbaa !1046
  br label %525, !dbg !1398

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !969, metadata !575), !dbg !1033
  br label %527, !dbg !1402

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !962, metadata !575), !dbg !1025
  %530 = icmp ult i64 %528, %506, !dbg !1403
  br i1 %530, label %531, label %533, !dbg !1406

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1403
  store i8 92, i8* %532, align 1, !dbg !1403, !tbaa !1046
  br label %533, !dbg !1403

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !953, metadata !575), !dbg !1017
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !979, metadata !575), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !978, metadata !575), !dbg !1092
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !972, metadata !575), !dbg !1107
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !970, metadata !575), !dbg !1034
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !955, metadata !575), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !963, metadata !575), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !961, metadata !575), !dbg !1083
  br label %562, !dbg !1407

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !953, metadata !575), !dbg !1017
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !979, metadata !575), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !978, metadata !575), !dbg !1092
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !972, metadata !575), !dbg !1107
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !970, metadata !575), !dbg !1034
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !955, metadata !575), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !963, metadata !575), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !961, metadata !575), !dbg !1083
  %546 = and i8 %540, 1, !dbg !1407
  %547 = icmp ne i8 %546, 0, !dbg !1407
  %548 = and i8 %543, 1, !dbg !1407
  %549 = icmp eq i8 %548, 0, !dbg !1407
  %550 = and i1 %547, %549, !dbg !1407
  br i1 %550, label %551, label %562, !dbg !1407

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1410
  br i1 %552, label %553, label %555, !dbg !1414

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1410
  store i8 39, i8* %554, align 1, !dbg !1410, !tbaa !1046
  br label %555, !dbg !1410

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !962, metadata !575), !dbg !1025
  %557 = icmp ult i64 %556, %545, !dbg !1415
  br i1 %557, label %558, label %560, !dbg !1418

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1415
  store i8 39, i8* %559, align 1, !dbg !1415, !tbaa !1046
  br label %560, !dbg !1415

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !969, metadata !575), !dbg !1033
  br label %562, !dbg !1419

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !962, metadata !575), !dbg !1025
  %572 = icmp ult i64 %570, %563, !dbg !1420
  br i1 %572, label %573, label %575, !dbg !1423

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1420
  store i8 %565, i8* %574, align 1, !dbg !1420, !tbaa !1046
  br label %575, !dbg !1420

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !962, metadata !575), !dbg !1025
  %577 = and i8 %564, 1, !dbg !1424
  %578 = icmp eq i8 %577, 0, !dbg !1424
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !971, metadata !575), !dbg !1035
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1426
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !971, metadata !575), !dbg !1035
  br label %580, !dbg !1427

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !953, metadata !575), !dbg !1017
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !971, metadata !575), !dbg !1035
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !970, metadata !575), !dbg !1034
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !969, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !955, metadata !575), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !963, metadata !575), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !961, metadata !575), !dbg !1083
  %589 = add i64 %581, 1, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !961, metadata !575), !dbg !1083
  br label %122, !dbg !1429, !llvm.loop !1430

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1432
  %593 = and i1 %113, %592, !dbg !1434
  %594 = xor i1 %593, true, !dbg !1434
  %595 = or i1 %111, %594, !dbg !1434
  br i1 %595, label %596, label %635, !dbg !1434

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1435
  %598 = xor i1 %597, true, !dbg !1435
  %599 = and i8 %128, 1, !dbg !1437
  %600 = icmp eq i8 %599, 0, !dbg !1437
  %601 = or i1 %600, %598, !dbg !1435
  br i1 %601, label %611, label %602, !dbg !1435

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1438
  %604 = icmp eq i8 %603, 0, !dbg !1438
  br i1 %604, label %607, label %605, !dbg !1441

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1442
  br label %645, !dbg !1443

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1444
  %609 = icmp ne i64 %125, 0, !dbg !1446
  %610 = and i1 %609, %608, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !953, metadata !575), !dbg !1017
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !962, metadata !575), !dbg !1025
  br i1 %610, label %27, label %611, !dbg !1447

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1448
  %613 = and i1 %612, %111, !dbg !1450
  br i1 %613, label %614, label %630, !dbg !1450

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !964, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !962, metadata !575), !dbg !1025
  %615 = load i8, i8* %99, align 1, !dbg !1451, !tbaa !1046
  %616 = icmp eq i8 %615, 0, !dbg !1454
  br i1 %616, label %630, label %617, !dbg !1454

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1455

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !962, metadata !575), !dbg !1025
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !964, metadata !575), !dbg !1027
  %622 = icmp ult i64 %621, %130, !dbg !1455
  br i1 %622, label %623, label %625, !dbg !1458

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1455
  store i8 %619, i8* %624, align 1, !dbg !1455, !tbaa !1046
  br label %625, !dbg !1455

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !962, metadata !575), !dbg !1025
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1459
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !964, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !964, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !962, metadata !575), !dbg !1025
  %628 = load i8, i8* %627, align 1, !dbg !1451, !tbaa !1046
  %629 = icmp eq i8 %628, 0, !dbg !1454
  br i1 %629, label %630, label %618, !dbg !1454, !llvm.loop !1460

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !962, metadata !575), !dbg !1025
  %632 = icmp ult i64 %631, %130, !dbg !1462
  br i1 %632, label %633, label %645, !dbg !1464

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1465
  store i8 0, i8* %634, align 1, !dbg !1466, !tbaa !1046
  br label %645, !dbg !1465

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !953, metadata !575), !dbg !1017
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !955, metadata !575), !dbg !1019
  %639 = icmp ne i32 %636, 2, !dbg !1467
  %640 = icmp eq i8 %103, 0, !dbg !1469
  %641 = or i1 %639, %640, !dbg !1470
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !956, metadata !575), !dbg !1020
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1470
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !956, metadata !575), !dbg !1020
  %643 = and i32 %5, -3, !dbg !1471
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1472
  br label %645, !dbg !1473

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1474
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1475 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1479, metadata !575), !dbg !1483
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1480, metadata !575), !dbg !1484
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1485
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1481, metadata !575), !dbg !1486
  %4 = icmp eq i8* %3, %0, !dbg !1487
  br i1 %4, label %5, label %75, !dbg !1489

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1490
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1482, metadata !575), !dbg !1491
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1492, metadata !575), !dbg !1508
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1506, metadata !575), !dbg !1511
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1507, metadata !575), !dbg !1512
  %7 = load i8, i8* %6, align 1, !dbg !1513, !tbaa !1046
  %8 = sext i8 %7 to i32, !dbg !1513
  %9 = and i32 %8, -33, !dbg !1513
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1513

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1515, metadata !575), !dbg !1529
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1527, metadata !575), !dbg !1533
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1528, metadata !575), !dbg !1534
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1535
  %12 = load i8, i8* %11, align 1, !dbg !1535, !tbaa !1046
  %13 = sext i8 %12 to i32, !dbg !1535
  %14 = and i32 %13, -33, !dbg !1535
  %15 = icmp eq i32 %14, 84, !dbg !1535
  br i1 %15, label %16, label %72, !dbg !1535

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1537, metadata !575), !dbg !1550
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1548, metadata !575), !dbg !1554
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1549, metadata !575), !dbg !1555
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1556
  %18 = load i8, i8* %17, align 1, !dbg !1556, !tbaa !1046
  %19 = sext i8 %18 to i32, !dbg !1556
  %20 = and i32 %19, -33, !dbg !1556
  %21 = icmp eq i32 %20, 70, !dbg !1556
  br i1 %21, label %22, label %72, !dbg !1556

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1558, metadata !575), !dbg !1570
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1568, metadata !575), !dbg !1574
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1569, metadata !575), !dbg !1575
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1576
  %24 = load i8, i8* %23, align 1, !dbg !1576, !tbaa !1046
  %25 = icmp eq i8 %24, 45, !dbg !1576
  br i1 %25, label %26, label %72, !dbg !1578

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1579, metadata !575), !dbg !1590
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1588, metadata !575), !dbg !1594
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1589, metadata !575), !dbg !1595
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1596
  %28 = load i8, i8* %27, align 1, !dbg !1596, !tbaa !1046
  %29 = icmp eq i8 %28, 56, !dbg !1596
  br i1 %29, label %30, label %72, !dbg !1598

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1599, metadata !575), !dbg !1609
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1607, metadata !575), !dbg !1613
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1608, metadata !575), !dbg !1614
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1615
  %32 = load i8, i8* %31, align 1, !dbg !1615, !tbaa !1046
  %33 = icmp eq i8 %32, 0, !dbg !1615
  br i1 %33, label %34, label %72, !dbg !1617

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1618, !tbaa !1046
  %36 = icmp eq i8 %35, 96, !dbg !1619
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1618
  br label %75, !dbg !1620

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1515, metadata !575), !dbg !1621
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1527, metadata !575), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1528, metadata !575), !dbg !1626
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1627
  %40 = load i8, i8* %39, align 1, !dbg !1627, !tbaa !1046
  %41 = sext i8 %40 to i32, !dbg !1627
  %42 = and i32 %41, -33, !dbg !1627
  %43 = icmp eq i32 %42, 66, !dbg !1627
  br i1 %43, label %44, label %72, !dbg !1627

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1537, metadata !575), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1548, metadata !575), !dbg !1630
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1549, metadata !575), !dbg !1631
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1632
  %46 = load i8, i8* %45, align 1, !dbg !1632, !tbaa !1046
  %47 = icmp eq i8 %46, 49, !dbg !1632
  br i1 %47, label %48, label %72, !dbg !1633

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1558, metadata !575), !dbg !1634
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1568, metadata !575), !dbg !1636
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1569, metadata !575), !dbg !1637
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1638
  %50 = load i8, i8* %49, align 1, !dbg !1638, !tbaa !1046
  %51 = icmp eq i8 %50, 56, !dbg !1638
  br i1 %51, label %52, label %72, !dbg !1639

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1579, metadata !575), !dbg !1640
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1588, metadata !575), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1589, metadata !575), !dbg !1643
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1644
  %54 = load i8, i8* %53, align 1, !dbg !1644, !tbaa !1046
  %55 = icmp eq i8 %54, 48, !dbg !1644
  br i1 %55, label %56, label %72, !dbg !1645

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1599, metadata !575), !dbg !1646
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1607, metadata !575), !dbg !1648
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1608, metadata !575), !dbg !1649
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1650
  %58 = load i8, i8* %57, align 1, !dbg !1650, !tbaa !1046
  %59 = icmp eq i8 %58, 51, !dbg !1650
  br i1 %59, label %60, label %72, !dbg !1651

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1652, metadata !575), !dbg !1661
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1659, metadata !575), !dbg !1665
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1660, metadata !575), !dbg !1666
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1667
  %62 = load i8, i8* %61, align 1, !dbg !1667, !tbaa !1046
  %63 = icmp eq i8 %62, 48, !dbg !1667
  br i1 %63, label %64, label %72, !dbg !1669

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1670, metadata !575), !dbg !1678
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1676, metadata !575), !dbg !1682
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1677, metadata !575), !dbg !1683
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1684
  %66 = load i8, i8* %65, align 1, !dbg !1684, !tbaa !1046
  %67 = icmp eq i8 %66, 0, !dbg !1684
  br i1 %67, label %68, label %72, !dbg !1686

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1687, !tbaa !1046
  %70 = icmp eq i8 %69, 96, !dbg !1688
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1687
  br label %75, !dbg !1689

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1690
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), !dbg !1691
  br label %75, !dbg !1692

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1693
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1694 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1698, metadata !575), !dbg !1701
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1699, metadata !575), !dbg !1702
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1700, metadata !575), !dbg !1703
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1704, metadata !575) #10, !dbg !1717
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1709, metadata !575) #10, !dbg !1719
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1710, metadata !575) #10, !dbg !1720
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1711, metadata !575) #10, !dbg !1721
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1722
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1722
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1712, metadata !575) #10, !dbg !1723
  %6 = tail call i32* @__errno_location() #17, !dbg !1724
  %7 = load i32, i32* %6, align 4, !dbg !1724, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1713, metadata !575) #10, !dbg !1725
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1726
  %9 = load i32, i32* %8, align 4, !dbg !1726, !tbaa !885
  %10 = or i32 %9, 1, !dbg !1727
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1714, metadata !575) #10, !dbg !1728
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1729
  %12 = load i32, i32* %11, align 8, !dbg !1729, !tbaa !825
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1730
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1731
  %15 = load i8*, i8** %14, align 8, !dbg !1731, !tbaa !911
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1732
  %17 = load i8*, i8** %16, align 8, !dbg !1732, !tbaa !914
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !1733
  %19 = add i64 %18, 1, !dbg !1734
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1715, metadata !575) #10, !dbg !1735
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1736, metadata !575) #10, !dbg !1741
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1743
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1716, metadata !575) #10, !dbg !1744
  %21 = load i32, i32* %11, align 8, !dbg !1745, !tbaa !825
  %22 = load i8*, i8** %14, align 8, !dbg !1746, !tbaa !911
  %23 = load i8*, i8** %16, align 8, !dbg !1747, !tbaa !914
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !1748
  store i32 %7, i32* %6, align 4, !dbg !1749, !tbaa !632
  ret i8* %20, !dbg !1750
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1705 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1704, metadata !575), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1709, metadata !575), !dbg !1752
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1710, metadata !575), !dbg !1753
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1711, metadata !575), !dbg !1754
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1755
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1755
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1712, metadata !575), !dbg !1756
  %7 = tail call i32* @__errno_location() #17, !dbg !1757
  %8 = load i32, i32* %7, align 4, !dbg !1757, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1713, metadata !575), !dbg !1758
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1759
  %10 = load i32, i32* %9, align 4, !dbg !1759, !tbaa !885
  %11 = icmp ne i64* %2, null, !dbg !1760
  %12 = xor i1 %11, true, !dbg !1760
  %13 = zext i1 %12 to i32, !dbg !1760
  %14 = or i32 %10, %13, !dbg !1761
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1714, metadata !575), !dbg !1762
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1763
  %16 = load i32, i32* %15, align 8, !dbg !1763, !tbaa !825
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1764
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1765
  %19 = load i8*, i8** %18, align 8, !dbg !1765, !tbaa !911
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1766
  %21 = load i8*, i8** %20, align 8, !dbg !1766, !tbaa !914
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1767
  %23 = add i64 %22, 1, !dbg !1768
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1715, metadata !575), !dbg !1769
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1736, metadata !575) #10, !dbg !1770
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1772
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1716, metadata !575), !dbg !1773
  %25 = load i32, i32* %15, align 8, !dbg !1774, !tbaa !825
  %26 = load i8*, i8** %18, align 8, !dbg !1775, !tbaa !911
  %27 = load i8*, i8** %20, align 8, !dbg !1776, !tbaa !914
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1777
  store i32 %8, i32* %7, align 4, !dbg !1778, !tbaa !632
  br i1 %11, label %29, label %30, !dbg !1779

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1780, !tbaa !1782
  br label %30, !dbg !1784

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1785
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1786 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1790, !tbaa !582
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1788, metadata !575), !dbg !1791
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1789, metadata !575), !dbg !1792
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1789, metadata !575), !dbg !1792
  %2 = load i32, i32* @nslots, align 4, !dbg !1793, !tbaa !632
  %3 = icmp sgt i32 %2, 1, !dbg !1796
  br i1 %3, label %4, label %13, !dbg !1797

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1798

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1789, metadata !575), !dbg !1792
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1798
  %8 = load i8*, i8** %7, align 8, !dbg !1798, !tbaa !1799
  tail call void @free(i8* %8) #10, !dbg !1801
  %9 = add nuw i64 %6, 1, !dbg !1802
  %10 = load i32, i32* @nslots, align 4, !dbg !1793, !tbaa !632
  %11 = sext i32 %10 to i64, !dbg !1796
  %12 = icmp slt i64 %9, %11, !dbg !1796
  br i1 %12, label %5, label %13, !dbg !1797, !llvm.loop !1803

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1805
  %15 = load i8*, i8** %14, align 8, !dbg !1805, !tbaa !1799
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1807
  br i1 %16, label %18, label %17, !dbg !1808

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !1809
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1811, !tbaa !1812
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1813, !tbaa !1799
  br label %18, !dbg !1814

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1815
  br i1 %19, label %22, label %20, !dbg !1817

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1818
  tail call void @free(i8* %21) #10, !dbg !1820
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1821, !tbaa !582
  br label %22, !dbg !1822

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1823, !tbaa !632
  ret void, !dbg !1824
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1825 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1829, metadata !575), !dbg !1831
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1830, metadata !575), !dbg !1832
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1833
  ret i8* %3, !dbg !1834
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1835 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1839, metadata !575), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1840, metadata !575), !dbg !1854
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1841, metadata !575), !dbg !1855
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1842, metadata !575), !dbg !1856
  %5 = tail call i32* @__errno_location() #17, !dbg !1857
  %6 = load i32, i32* %5, align 4, !dbg !1857, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1843, metadata !575), !dbg !1858
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1859, !tbaa !582
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1844, metadata !575), !dbg !1860
  %8 = icmp slt i32 %0, 0, !dbg !1861
  br i1 %8, label %9, label %10, !dbg !1863

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1864
  unreachable, !dbg !1864

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1865, !tbaa !632
  %12 = icmp sgt i32 %11, %0, !dbg !1866
  br i1 %12, label %34, label %13, !dbg !1867

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1868
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1869
  br i1 %15, label %16, label %17, !dbg !1871

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1872
  unreachable, !dbg !1872

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1873
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1873
  %20 = add nsw i32 %0, 1, !dbg !1874
  %21 = sext i32 %20 to i64, !dbg !1875
  %22 = shl nsw i64 %21, 4, !dbg !1876
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !1877
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1877
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1844, metadata !575), !dbg !1860
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1878, !tbaa !582
  br i1 %14, label %25, label %26, !dbg !1879

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1880, !tbaa.struct !1882
  br label %26, !dbg !1883

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1884, !tbaa !632
  %28 = sext i32 %27 to i64, !dbg !1885
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1885
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1886
  %31 = sub nsw i32 %20, %27, !dbg !1887
  %32 = sext i32 %31 to i64, !dbg !1888
  %33 = shl nsw i64 %32, 4, !dbg !1889
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1886
  store i32 %20, i32* @nslots, align 4, !dbg !1890, !tbaa !632
  br label %34, !dbg !1891

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1844, metadata !575), !dbg !1860
  %36 = sext i32 %0 to i64, !dbg !1892
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1893
  %38 = load i64, i64* %37, align 8, !dbg !1893, !tbaa !1812
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1848, metadata !575), !dbg !1894
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1895
  %40 = load i8*, i8** %39, align 8, !dbg !1895, !tbaa !1799
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1850, metadata !575), !dbg !1896
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1897
  %42 = load i32, i32* %41, align 4, !dbg !1897, !tbaa !885
  %43 = or i32 %42, 1, !dbg !1898
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1851, metadata !575), !dbg !1899
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1900
  %45 = load i32, i32* %44, align 8, !dbg !1900, !tbaa !825
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1901
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1902
  %48 = load i8*, i8** %47, align 8, !dbg !1902, !tbaa !911
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1903
  %50 = load i8*, i8** %49, align 8, !dbg !1903, !tbaa !914
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1904
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1852, metadata !575), !dbg !1905
  %52 = icmp ugt i64 %38, %51, !dbg !1906
  br i1 %52, label %63, label %53, !dbg !1908

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1909
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1848, metadata !575), !dbg !1894
  store i64 %54, i64* %37, align 8, !dbg !1911, !tbaa !1812
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1912
  br i1 %55, label %57, label %56, !dbg !1914

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !1915
  br label %57, !dbg !1915

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1736, metadata !575) #10, !dbg !1916
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !1918
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1850, metadata !575), !dbg !1896
  store i8* %58, i8** %39, align 8, !dbg !1919, !tbaa !1799
  %59 = load i32, i32* %44, align 8, !dbg !1920, !tbaa !825
  %60 = load i8*, i8** %47, align 8, !dbg !1921, !tbaa !911
  %61 = load i8*, i8** %49, align 8, !dbg !1922, !tbaa !914
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !1923
  br label %63, !dbg !1924

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1850, metadata !575), !dbg !1896
  store i32 %6, i32* %5, align 4, !dbg !1925, !tbaa !632
  ret i8* %64, !dbg !1926
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1927 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1931, metadata !575), !dbg !1934
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1932, metadata !575), !dbg !1935
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1933, metadata !575), !dbg !1936
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1937
  ret i8* %4, !dbg !1938
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !1939 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1943, metadata !575), !dbg !1944
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1829, metadata !575) #10, !dbg !1945
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1830, metadata !575) #10, !dbg !1947
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1948
  ret i8* %2, !dbg !1949
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !1950 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1954, metadata !575), !dbg !1956
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1955, metadata !575), !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1931, metadata !575) #10, !dbg !1958
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1932, metadata !575) #10, !dbg !1960
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1933, metadata !575) #10, !dbg !1961
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1962
  ret i8* %3, !dbg !1963
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !1964 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1972, metadata !1978), !dbg !1979
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1968, metadata !575), !dbg !1981
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1969, metadata !575), !dbg !1982
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1970, metadata !575), !dbg !1983
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1984
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !1984
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1971, metadata !575), !dbg !1985
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1977, metadata !575) #10, !dbg !1986
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !1987
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !1987
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1972, metadata !575) #10, !dbg !1979
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1972, metadata !1988) #10, !dbg !1979
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !1979
  %8 = icmp eq i32 %1, 10, !dbg !1989
  br i1 %8, label %9, label %10, !dbg !1991

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !1992, !noalias !1993
  unreachable, !dbg !1992

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1972, metadata !1988) #10, !dbg !1979
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1996
  store i32 %1, i32* %11, align 8, !dbg !1996, !alias.scope !1993
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1996
  %13 = bitcast i32* %12 to i8*, !dbg !1996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !1996
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !1997
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1971, metadata !575), !dbg !1985
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !1998
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !1999
  ret i8* %14, !dbg !2000
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2001 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !1972, metadata !1978), !dbg !2010
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2005, metadata !575), !dbg !2012
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2006, metadata !575), !dbg !2013
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2007, metadata !575), !dbg !2014
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2008, metadata !575), !dbg !2015
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2016
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2016
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2009, metadata !575), !dbg !2017
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1977, metadata !575) #10, !dbg !2018
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2019
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2019
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1972, metadata !575) #10, !dbg !2010
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1972, metadata !1988) #10, !dbg !2010
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2010
  %9 = icmp eq i32 %1, 10, !dbg !2020
  br i1 %9, label %10, label %11, !dbg !2021

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2022, !noalias !2023
  unreachable, !dbg !2022

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1972, metadata !1988) #10, !dbg !2010
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2026
  store i32 %1, i32* %12, align 8, !dbg !2026, !alias.scope !2023
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2026
  %14 = bitcast i32* %13 to i8*, !dbg !2026
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2026
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2027
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2009, metadata !575), !dbg !2017
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2028
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2029
  ret i8* %15, !dbg !2030
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2031 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !1972, metadata !1978), !dbg !2037
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2035, metadata !575), !dbg !2040
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2036, metadata !575), !dbg !2041
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1968, metadata !575) #10, !dbg !2042
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1969, metadata !575) #10, !dbg !2043
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1970, metadata !575) #10, !dbg !2044
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2045
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2045
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1971, metadata !575) #10, !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1977, metadata !575) #10, !dbg !2047
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2048
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2048
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1972, metadata !575) #10, !dbg !2037
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1972, metadata !1988) #10, !dbg !2037
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2037
  %7 = icmp eq i32 %0, 10, !dbg !2049
  br i1 %7, label %8, label %9, !dbg !2050

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2051, !noalias !2052
  unreachable, !dbg !2051

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1972, metadata !1988) #10, !dbg !2037
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2055
  store i32 %0, i32* %10, align 8, !dbg !2055, !alias.scope !2052
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2055
  %12 = bitcast i32* %11 to i8*, !dbg !2055
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2055
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2056
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1971, metadata !575) #10, !dbg !2046
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2057
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2058
  ret i8* %13, !dbg !2059
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2060 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1972, metadata !1978), !dbg !2067
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2064, metadata !575), !dbg !2070
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2065, metadata !575), !dbg !2071
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2066, metadata !575), !dbg !2072
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2005, metadata !575) #10, !dbg !2073
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2006, metadata !575) #10, !dbg !2074
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2007, metadata !575) #10, !dbg !2075
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2008, metadata !575) #10, !dbg !2076
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2077
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2077
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2009, metadata !575) #10, !dbg !2078
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1977, metadata !575) #10, !dbg !2079
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2080
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2080
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1972, metadata !575) #10, !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1972, metadata !1988) #10, !dbg !2067
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2067
  %8 = icmp eq i32 %0, 10, !dbg !2081
  br i1 %8, label %9, label %10, !dbg !2082

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2083, !noalias !2084
  unreachable, !dbg !2083

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1972, metadata !1988) #10, !dbg !2067
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2087
  store i32 %0, i32* %11, align 8, !dbg !2087, !alias.scope !2084
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2087
  %13 = bitcast i32* %12 to i8*, !dbg !2087
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2087
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2009, metadata !575) #10, !dbg !2078
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2089
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2090
  ret i8* %14, !dbg !2091
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2092 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2096, metadata !575), !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2097, metadata !575), !dbg !2101
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2098, metadata !575), !dbg !2102
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2103
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2103
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2104, !tbaa.struct !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2099, metadata !575), !dbg !2106
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !844, metadata !575), !dbg !2107
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !845, metadata !575), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !846, metadata !575), !dbg !2110
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !847, metadata !575), !dbg !2111
  %6 = lshr i8 %2, 5, !dbg !2112
  %7 = zext i8 %6 to i64, !dbg !2112
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2113
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !848, metadata !575), !dbg !2114
  %9 = and i8 %2, 31, !dbg !2115
  %10 = zext i8 %9 to i32, !dbg !2116
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !850, metadata !575), !dbg !2117
  %11 = load i32, i32* %8, align 4, !dbg !2118, !tbaa !632
  %12 = lshr i32 %11, %10, !dbg !2119
  %13 = and i32 %12, 1, !dbg !2120
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !851, metadata !575), !dbg !2121
  %14 = xor i32 %13, 1, !dbg !2122
  %15 = shl i32 %14, %10, !dbg !2123
  %16 = xor i32 %15, %11, !dbg !2124
  store i32 %16, i32* %8, align 4, !dbg !2124, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2099, metadata !575), !dbg !2106
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2125
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2126
  ret i8* %17, !dbg !2127
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2128 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2132, metadata !575), !dbg !2134
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2133, metadata !575), !dbg !2135
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2096, metadata !575) #10, !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2097, metadata !575) #10, !dbg !2138
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2098, metadata !575) #10, !dbg !2139
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2140
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2140
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2141, !tbaa.struct !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2099, metadata !575) #10, !dbg !2142
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !844, metadata !575) #10, !dbg !2143
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !845, metadata !575) #10, !dbg !2145
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !846, metadata !575) #10, !dbg !2146
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !847, metadata !575) #10, !dbg !2147
  %5 = lshr i8 %1, 5, !dbg !2148
  %6 = zext i8 %5 to i64, !dbg !2148
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2149
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !848, metadata !575) #10, !dbg !2150
  %8 = and i8 %1, 31, !dbg !2151
  %9 = zext i8 %8 to i32, !dbg !2152
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !850, metadata !575) #10, !dbg !2153
  %10 = load i32, i32* %7, align 4, !dbg !2154, !tbaa !632
  %11 = lshr i32 %10, %9, !dbg !2155
  %12 = and i32 %11, 1, !dbg !2156
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !851, metadata !575) #10, !dbg !2157
  %13 = xor i32 %12, 1, !dbg !2158
  %14 = shl i32 %13, %9, !dbg !2159
  %15 = xor i32 %14, %10, !dbg !2160
  store i32 %15, i32* %7, align 4, !dbg !2160, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2099, metadata !575) #10, !dbg !2142
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2161
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2162
  ret i8* %16, !dbg !2163
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2164 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2166, metadata !575), !dbg !2167
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2132, metadata !575) #10, !dbg !2168
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2133, metadata !575) #10, !dbg !2170
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2096, metadata !575) #10, !dbg !2171
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2097, metadata !575) #10, !dbg !2173
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2098, metadata !575) #10, !dbg !2174
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2175
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2176, !tbaa.struct !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2099, metadata !575) #10, !dbg !2177
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !844, metadata !575) #10, !dbg !2178
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !845, metadata !575) #10, !dbg !2180
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !846, metadata !575) #10, !dbg !2181
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !847, metadata !575) #10, !dbg !2182
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2183
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !848, metadata !575) #10, !dbg !2184
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !850, metadata !575) #10, !dbg !2185
  %5 = load i32, i32* %4, align 4, !dbg !2186, !tbaa !632
  %6 = or i32 %5, 67108864, !dbg !2187
  store i32 %6, i32* %4, align 4, !dbg !2187, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2099, metadata !575) #10, !dbg !2177
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2188
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2189
  ret i8* %7, !dbg !2190
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2191 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2193, metadata !575), !dbg !2195
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2194, metadata !575), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2096, metadata !575) #10, !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2097, metadata !575) #10, !dbg !2199
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2098, metadata !575) #10, !dbg !2200
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2201
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2202, !tbaa.struct !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2099, metadata !575) #10, !dbg !2203
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !844, metadata !575) #10, !dbg !2204
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !845, metadata !575) #10, !dbg !2206
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !846, metadata !575) #10, !dbg !2207
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !847, metadata !575) #10, !dbg !2208
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2209
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !848, metadata !575) #10, !dbg !2210
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !850, metadata !575) #10, !dbg !2211
  %6 = load i32, i32* %5, align 4, !dbg !2212, !tbaa !632
  %7 = or i32 %6, 67108864, !dbg !2213
  store i32 %7, i32* %5, align 4, !dbg !2213, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2099, metadata !575) #10, !dbg !2203
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2214
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2215
  ret i8* %8, !dbg !2216
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2217 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1972, metadata !1978), !dbg !2223
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2219, metadata !575), !dbg !2225
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2220, metadata !575), !dbg !2226
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2221, metadata !575), !dbg !2227
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2228
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2228
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1977, metadata !575) #10, !dbg !2229
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2230
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2230
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1972, metadata !575) #10, !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1972, metadata !1988) #10, !dbg !2223
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2223
  %9 = icmp eq i32 %1, 10, !dbg !2231
  br i1 %9, label %10, label %11, !dbg !2232

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2233, !noalias !2234
  unreachable, !dbg !2233

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1972, metadata !1988) #10, !dbg !2223
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2238
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2239
  store i32 %1, i32* %13, align 8, !dbg !2239
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2239
  %15 = bitcast i32* %14 to i8*, !dbg !2239
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2239
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2222, metadata !575), !dbg !2240
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !844, metadata !575), !dbg !2241
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !845, metadata !575), !dbg !2243
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !846, metadata !575), !dbg !2244
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !847, metadata !575), !dbg !2245
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2246
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !848, metadata !575), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !850, metadata !575), !dbg !2248
  %17 = load i32, i32* %16, align 4, !dbg !2249, !tbaa !632
  %18 = or i32 %17, 67108864, !dbg !2250
  store i32 %18, i32* %16, align 4, !dbg !2250, !tbaa !632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2222, metadata !575), !dbg !2240
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2251
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2252
  ret i8* %19, !dbg !2253
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2254 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2258, metadata !575), !dbg !2262
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2259, metadata !575), !dbg !2263
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2260, metadata !575), !dbg !2264
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2261, metadata !575), !dbg !2265
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2266, metadata !575) #10, !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2271, metadata !575) #10, !dbg !2278
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2272, metadata !575) #10, !dbg !2279
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2273, metadata !575) #10, !dbg !2280
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2274, metadata !575) #10, !dbg !2281
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2282
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2283, !tbaa.struct !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2275, metadata !575) #10, !dbg !2284
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !893, metadata !575) #10, !dbg !2285
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !894, metadata !575) #10, !dbg !2287
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !895, metadata !575) #10, !dbg !2288
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !893, metadata !575) #10, !dbg !2285
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !893, metadata !575) #10, !dbg !2285
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2289
  store i32 10, i32* %7, align 8, !dbg !2290, !tbaa !825
  %8 = icmp ne i8* %1, null, !dbg !2291
  %9 = icmp ne i8* %2, null, !dbg !2292
  %10 = and i1 %8, %9, !dbg !2293
  br i1 %10, label %12, label %11, !dbg !2293

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2294
  unreachable, !dbg !2294

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2295
  store i8* %1, i8** %13, align 8, !dbg !2296, !tbaa !911
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2297
  store i8* %2, i8** %14, align 8, !dbg !2298, !tbaa !914
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2275, metadata !575) #10, !dbg !2284
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2299
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2300
  ret i8* %15, !dbg !2301
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2267 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2266, metadata !575), !dbg !2302
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2271, metadata !575), !dbg !2303
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2272, metadata !575), !dbg !2304
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2273, metadata !575), !dbg !2305
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2274, metadata !575), !dbg !2306
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2307
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2308, !tbaa.struct !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2275, metadata !575), !dbg !2309
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !893, metadata !575) #10, !dbg !2310
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !894, metadata !575) #10, !dbg !2312
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !895, metadata !575) #10, !dbg !2313
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !893, metadata !575) #10, !dbg !2310
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !893, metadata !575) #10, !dbg !2310
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2314
  store i32 10, i32* %8, align 8, !dbg !2315, !tbaa !825
  %9 = icmp ne i8* %1, null, !dbg !2316
  %10 = icmp ne i8* %2, null, !dbg !2317
  %11 = and i1 %9, %10, !dbg !2318
  br i1 %11, label %13, label %12, !dbg !2318

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2319
  unreachable, !dbg !2319

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2320
  store i8* %1, i8** %14, align 8, !dbg !2321, !tbaa !911
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2322
  store i8* %2, i8** %15, align 8, !dbg !2323, !tbaa !914
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2275, metadata !575), !dbg !2309
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2324
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2325
  ret i8* %16, !dbg !2326
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2327 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2331, metadata !575), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2332, metadata !575), !dbg !2335
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2333, metadata !575), !dbg !2336
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2258, metadata !575) #10, !dbg !2337
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2259, metadata !575) #10, !dbg !2339
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2260, metadata !575) #10, !dbg !2340
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2261, metadata !575) #10, !dbg !2341
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2266, metadata !575) #10, !dbg !2342
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2271, metadata !575) #10, !dbg !2344
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2272, metadata !575) #10, !dbg !2345
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2273, metadata !575) #10, !dbg !2346
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2274, metadata !575) #10, !dbg !2347
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2348
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2348
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2349, !tbaa.struct !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2275, metadata !575) #10, !dbg !2350
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !893, metadata !575) #10, !dbg !2351
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !894, metadata !575) #10, !dbg !2353
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !895, metadata !575) #10, !dbg !2354
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !893, metadata !575) #10, !dbg !2351
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !893, metadata !575) #10, !dbg !2351
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2355
  store i32 10, i32* %6, align 8, !dbg !2356, !tbaa !825
  %7 = icmp ne i8* %0, null, !dbg !2357
  %8 = icmp ne i8* %1, null, !dbg !2358
  %9 = and i1 %7, %8, !dbg !2359
  br i1 %9, label %11, label %10, !dbg !2359

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2360
  unreachable, !dbg !2360

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2361
  store i8* %0, i8** %12, align 8, !dbg !2362, !tbaa !911
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2363
  store i8* %1, i8** %13, align 8, !dbg !2364, !tbaa !914
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2275, metadata !575) #10, !dbg !2350
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2365
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2366
  ret i8* %14, !dbg !2367
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2368 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2372, metadata !575), !dbg !2376
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2373, metadata !575), !dbg !2377
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2374, metadata !575), !dbg !2378
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2375, metadata !575), !dbg !2379
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2266, metadata !575) #10, !dbg !2380
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2271, metadata !575) #10, !dbg !2382
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2272, metadata !575) #10, !dbg !2383
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2273, metadata !575) #10, !dbg !2384
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2274, metadata !575) #10, !dbg !2385
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2386
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2387, !tbaa.struct !2105
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2275, metadata !575) #10, !dbg !2388
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !893, metadata !575) #10, !dbg !2389
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !894, metadata !575) #10, !dbg !2391
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !895, metadata !575) #10, !dbg !2392
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !893, metadata !575) #10, !dbg !2389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !893, metadata !575) #10, !dbg !2389
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2393
  store i32 10, i32* %7, align 8, !dbg !2394, !tbaa !825
  %8 = icmp ne i8* %0, null, !dbg !2395
  %9 = icmp ne i8* %1, null, !dbg !2396
  %10 = and i1 %8, %9, !dbg !2397
  br i1 %10, label %12, label %11, !dbg !2397

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2398
  unreachable, !dbg !2398

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2399
  store i8* %0, i8** %13, align 8, !dbg !2400, !tbaa !911
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2401
  store i8* %1, i8** %14, align 8, !dbg !2402, !tbaa !914
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2275, metadata !575) #10, !dbg !2388
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2403
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2404
  ret i8* %15, !dbg !2405
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2406 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2410, metadata !575), !dbg !2413
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2411, metadata !575), !dbg !2414
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2412, metadata !575), !dbg !2415
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2416
  ret i8* %4, !dbg !2417
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2418 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2422, metadata !575), !dbg !2424
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2423, metadata !575), !dbg !2425
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2410, metadata !575) #10, !dbg !2426
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2411, metadata !575) #10, !dbg !2428
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2412, metadata !575) #10, !dbg !2429
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2430
  ret i8* %3, !dbg !2431
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2432 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2436, metadata !575), !dbg !2438
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2437, metadata !575), !dbg !2439
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2410, metadata !575) #10, !dbg !2440
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2411, metadata !575) #10, !dbg !2442
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2412, metadata !575) #10, !dbg !2443
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2444
  ret i8* %3, !dbg !2445
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2446 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2450, metadata !575), !dbg !2451
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2436, metadata !575) #10, !dbg !2452
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2437, metadata !575) #10, !dbg !2454
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2410, metadata !575) #10, !dbg !2455
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2411, metadata !575) #10, !dbg !2457
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2412, metadata !575) #10, !dbg !2458
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2459
  ret i8* %2, !dbg !2460
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2461 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2519, metadata !575), !dbg !2525
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2520, metadata !575), !dbg !2526
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2521, metadata !575), !dbg !2527
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2522, metadata !575), !dbg !2528
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2523, metadata !575), !dbg !2529
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2524, metadata !575), !dbg !2530
  %7 = icmp eq i8* %1, null, !dbg !2531
  br i1 %7, label %10, label %8, !dbg !2533

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2534
  br label %12, !dbg !2534

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2535
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i32 5) #10, !dbg !2536
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2536
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.58, i64 0, i64 0), i32 5) #10, !dbg !2537
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2537
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
  ], !dbg !2538

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2539
  unreachable, !dbg !2539

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.59, i64 0, i64 0), i32 5) #10, !dbg !2541
  %20 = load i8*, i8** %4, align 8, !dbg !2541, !tbaa !582
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2541
  br label %146, !dbg !2542

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.60, i64 0, i64 0), i32 5) #10, !dbg !2543
  %24 = load i8*, i8** %4, align 8, !dbg !2543, !tbaa !582
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2543
  %26 = load i8*, i8** %25, align 8, !dbg !2543, !tbaa !582
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2543
  br label %146, !dbg !2544

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.61, i64 0, i64 0), i32 5) #10, !dbg !2545
  %30 = load i8*, i8** %4, align 8, !dbg !2545, !tbaa !582
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2545
  %32 = load i8*, i8** %31, align 8, !dbg !2545, !tbaa !582
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2545
  %34 = load i8*, i8** %33, align 8, !dbg !2545, !tbaa !582
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2545
  br label %146, !dbg !2546

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.62, i64 0, i64 0), i32 5) #10, !dbg !2547
  %38 = load i8*, i8** %4, align 8, !dbg !2547, !tbaa !582
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2547
  %40 = load i8*, i8** %39, align 8, !dbg !2547, !tbaa !582
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2547
  %42 = load i8*, i8** %41, align 8, !dbg !2547, !tbaa !582
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2547
  %44 = load i8*, i8** %43, align 8, !dbg !2547, !tbaa !582
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2547
  br label %146, !dbg !2548

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.63, i64 0, i64 0), i32 5) #10, !dbg !2549
  %48 = load i8*, i8** %4, align 8, !dbg !2549, !tbaa !582
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2549
  %50 = load i8*, i8** %49, align 8, !dbg !2549, !tbaa !582
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2549
  %52 = load i8*, i8** %51, align 8, !dbg !2549, !tbaa !582
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2549
  %54 = load i8*, i8** %53, align 8, !dbg !2549, !tbaa !582
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2549
  %56 = load i8*, i8** %55, align 8, !dbg !2549, !tbaa !582
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2549
  br label %146, !dbg !2550

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.64, i64 0, i64 0), i32 5) #10, !dbg !2551
  %60 = load i8*, i8** %4, align 8, !dbg !2551, !tbaa !582
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2551
  %62 = load i8*, i8** %61, align 8, !dbg !2551, !tbaa !582
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2551
  %64 = load i8*, i8** %63, align 8, !dbg !2551, !tbaa !582
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2551
  %66 = load i8*, i8** %65, align 8, !dbg !2551, !tbaa !582
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2551
  %68 = load i8*, i8** %67, align 8, !dbg !2551, !tbaa !582
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2551
  %70 = load i8*, i8** %69, align 8, !dbg !2551, !tbaa !582
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2551
  br label %146, !dbg !2552

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.65, i64 0, i64 0), i32 5) #10, !dbg !2553
  %74 = load i8*, i8** %4, align 8, !dbg !2553, !tbaa !582
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2553
  %76 = load i8*, i8** %75, align 8, !dbg !2553, !tbaa !582
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2553
  %78 = load i8*, i8** %77, align 8, !dbg !2553, !tbaa !582
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2553
  %80 = load i8*, i8** %79, align 8, !dbg !2553, !tbaa !582
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2553
  %82 = load i8*, i8** %81, align 8, !dbg !2553, !tbaa !582
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2553
  %84 = load i8*, i8** %83, align 8, !dbg !2553, !tbaa !582
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2553
  %86 = load i8*, i8** %85, align 8, !dbg !2553, !tbaa !582
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2553
  br label %146, !dbg !2554

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.66, i64 0, i64 0), i32 5) #10, !dbg !2555
  %90 = load i8*, i8** %4, align 8, !dbg !2555, !tbaa !582
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2555
  %92 = load i8*, i8** %91, align 8, !dbg !2555, !tbaa !582
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2555
  %94 = load i8*, i8** %93, align 8, !dbg !2555, !tbaa !582
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2555
  %96 = load i8*, i8** %95, align 8, !dbg !2555, !tbaa !582
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2555
  %98 = load i8*, i8** %97, align 8, !dbg !2555, !tbaa !582
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2555
  %100 = load i8*, i8** %99, align 8, !dbg !2555, !tbaa !582
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2555
  %102 = load i8*, i8** %101, align 8, !dbg !2555, !tbaa !582
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2555
  %104 = load i8*, i8** %103, align 8, !dbg !2555, !tbaa !582
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2555
  br label %146, !dbg !2556

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.67, i64 0, i64 0), i32 5) #10, !dbg !2557
  %108 = load i8*, i8** %4, align 8, !dbg !2557, !tbaa !582
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2557
  %110 = load i8*, i8** %109, align 8, !dbg !2557, !tbaa !582
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2557
  %112 = load i8*, i8** %111, align 8, !dbg !2557, !tbaa !582
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2557
  %114 = load i8*, i8** %113, align 8, !dbg !2557, !tbaa !582
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2557
  %116 = load i8*, i8** %115, align 8, !dbg !2557, !tbaa !582
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2557
  %118 = load i8*, i8** %117, align 8, !dbg !2557, !tbaa !582
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2557
  %120 = load i8*, i8** %119, align 8, !dbg !2557, !tbaa !582
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2557
  %122 = load i8*, i8** %121, align 8, !dbg !2557, !tbaa !582
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2557
  %124 = load i8*, i8** %123, align 8, !dbg !2557, !tbaa !582
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2557
  br label %146, !dbg !2558

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.68, i64 0, i64 0), i32 5) #10, !dbg !2559
  %128 = load i8*, i8** %4, align 8, !dbg !2559, !tbaa !582
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2559
  %130 = load i8*, i8** %129, align 8, !dbg !2559, !tbaa !582
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2559
  %132 = load i8*, i8** %131, align 8, !dbg !2559, !tbaa !582
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2559
  %134 = load i8*, i8** %133, align 8, !dbg !2559, !tbaa !582
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2559
  %136 = load i8*, i8** %135, align 8, !dbg !2559, !tbaa !582
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2559
  %138 = load i8*, i8** %137, align 8, !dbg !2559, !tbaa !582
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2559
  %140 = load i8*, i8** %139, align 8, !dbg !2559, !tbaa !582
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2559
  %142 = load i8*, i8** %141, align 8, !dbg !2559, !tbaa !582
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2559
  %144 = load i8*, i8** %143, align 8, !dbg !2559, !tbaa !582
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2559
  br label %146, !dbg !2560

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2561
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2562 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2566, metadata !575), !dbg !2572
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2567, metadata !575), !dbg !2573
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2568, metadata !575), !dbg !2574
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2569, metadata !575), !dbg !2575
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2570, metadata !575), !dbg !2576
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2571, metadata !575), !dbg !2577
  br label %6, !dbg !2578

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2571, metadata !575), !dbg !2577
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2580
  %9 = load i8*, i8** %8, align 8, !dbg !2580, !tbaa !582
  %10 = icmp eq i8* %9, null, !dbg !2582
  %11 = add i64 %7, 1, !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2571, metadata !575), !dbg !2577
  br i1 %10, label %12, label %6, !dbg !2582, !llvm.loop !2584

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2586
  ret void, !dbg !2587
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2588 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2599, metadata !575), !dbg !2607
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2600, metadata !575), !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2601, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2602, metadata !575), !dbg !2610
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2603, metadata !575), !dbg !2611
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2612
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2612
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2605, metadata !575), !dbg !2613
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  %11 = load i32, i32* %8, align 8, !dbg !2615
  %12 = icmp ult i32 %11, 41, !dbg !2615
  br i1 %12, label %13, label %18, !dbg !2615

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2615
  %15 = sext i32 %11 to i64, !dbg !2615
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2615
  %17 = add i32 %11, 8, !dbg !2615
  store i32 %17, i32* %8, align 8, !dbg !2615
  br label %21, !dbg !2615

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2615
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2615
  store i8* %20, i8** %10, align 8, !dbg !2615
  br label %21, !dbg !2615

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2615
  %25 = load i8*, i8** %24, align 8, !dbg !2615
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2618
  store i8* %25, i8** %26, align 16, !dbg !2619, !tbaa !582
  %27 = icmp eq i8* %25, null, !dbg !2620
  br i1 %27, label %30, label %28, !dbg !2621

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  %29 = icmp ult i32 %22, 41, !dbg !2615
  br i1 %29, label %35, label %32, !dbg !2615

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2622
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2623
  ret void, !dbg !2623

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2615
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2615
  store i8* %34, i8** %10, align 8, !dbg !2615
  br label %40, !dbg !2615

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2615
  %37 = sext i32 %22 to i64, !dbg !2615
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2615
  %39 = add i32 %22, 8, !dbg !2615
  store i32 %39, i32* %8, align 8, !dbg !2615
  br label %40, !dbg !2615

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2615
  %44 = load i8*, i8** %43, align 8, !dbg !2615
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2618
  store i8* %44, i8** %45, align 8, !dbg !2619, !tbaa !582
  %46 = icmp eq i8* %44, null, !dbg !2620
  br i1 %46, label %30, label %47, !dbg !2621

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  %48 = icmp ult i32 %41, 41, !dbg !2615
  br i1 %48, label %52, label %49, !dbg !2615

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2615
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2615
  store i8* %51, i8** %10, align 8, !dbg !2615
  br label %57, !dbg !2615

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2615
  %54 = sext i32 %41 to i64, !dbg !2615
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2615
  %56 = add i32 %41, 8, !dbg !2615
  store i32 %56, i32* %8, align 8, !dbg !2615
  br label %57, !dbg !2615

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2615
  %61 = load i8*, i8** %60, align 8, !dbg !2615
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2618
  store i8* %61, i8** %62, align 16, !dbg !2619, !tbaa !582
  %63 = icmp eq i8* %61, null, !dbg !2620
  br i1 %63, label %30, label %64, !dbg !2621

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  %65 = icmp ult i32 %58, 41, !dbg !2615
  br i1 %65, label %69, label %66, !dbg !2615

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2615
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2615
  store i8* %68, i8** %10, align 8, !dbg !2615
  br label %74, !dbg !2615

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2615
  %71 = sext i32 %58 to i64, !dbg !2615
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2615
  %73 = add i32 %58, 8, !dbg !2615
  store i32 %73, i32* %8, align 8, !dbg !2615
  br label %74, !dbg !2615

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2615
  %78 = load i8*, i8** %77, align 8, !dbg !2615
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2618
  store i8* %78, i8** %79, align 8, !dbg !2619, !tbaa !582
  %80 = icmp eq i8* %78, null, !dbg !2620
  br i1 %80, label %30, label %81, !dbg !2621

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  %82 = icmp ult i32 %75, 41, !dbg !2615
  br i1 %82, label %86, label %83, !dbg !2615

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2615
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2615
  store i8* %85, i8** %10, align 8, !dbg !2615
  br label %91, !dbg !2615

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2615
  %88 = sext i32 %75 to i64, !dbg !2615
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2615
  %90 = add i32 %75, 8, !dbg !2615
  store i32 %90, i32* %8, align 8, !dbg !2615
  br label %91, !dbg !2615

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2615
  %95 = load i8*, i8** %94, align 8, !dbg !2615
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2618
  store i8* %95, i8** %96, align 16, !dbg !2619, !tbaa !582
  %97 = icmp eq i8* %95, null, !dbg !2620
  br i1 %97, label %30, label %98, !dbg !2621

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  %99 = icmp ult i32 %92, 41, !dbg !2615
  br i1 %99, label %103, label %100, !dbg !2615

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2615
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2615
  store i8* %102, i8** %10, align 8, !dbg !2615
  br label %108, !dbg !2615

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2615
  %105 = sext i32 %92 to i64, !dbg !2615
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2615
  %107 = add i32 %92, 8, !dbg !2615
  store i32 %107, i32* %8, align 8, !dbg !2615
  br label %108, !dbg !2615

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2615
  %111 = load i8*, i8** %110, align 8, !dbg !2615
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2618
  store i8* %111, i8** %112, align 8, !dbg !2619, !tbaa !582
  %113 = icmp eq i8* %111, null, !dbg !2620
  br i1 %113, label %30, label %114, !dbg !2621

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  %115 = load i8*, i8** %10, align 8, !dbg !2615
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2615
  store i8* %116, i8** %10, align 8, !dbg !2615
  %117 = bitcast i8* %115 to i8**, !dbg !2615
  %118 = load i8*, i8** %117, align 8, !dbg !2615
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2618
  store i8* %118, i8** %119, align 16, !dbg !2619, !tbaa !582
  %120 = icmp eq i8* %118, null, !dbg !2620
  br i1 %120, label %30, label %121, !dbg !2621

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  %122 = load i8*, i8** %10, align 8, !dbg !2615
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2615
  store i8* %123, i8** %10, align 8, !dbg !2615
  %124 = bitcast i8* %122 to i8**, !dbg !2615
  %125 = load i8*, i8** %124, align 8, !dbg !2615
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2618
  store i8* %125, i8** %126, align 8, !dbg !2619, !tbaa !582
  %127 = icmp eq i8* %125, null, !dbg !2620
  br i1 %127, label %30, label %128, !dbg !2621

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  %129 = load i8*, i8** %10, align 8, !dbg !2615
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2615
  store i8* %130, i8** %10, align 8, !dbg !2615
  %131 = bitcast i8* %129 to i8**, !dbg !2615
  %132 = load i8*, i8** %131, align 8, !dbg !2615
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2618
  store i8* %132, i8** %133, align 16, !dbg !2619, !tbaa !582
  %134 = icmp eq i8* %132, null, !dbg !2620
  br i1 %134, label %30, label %135, !dbg !2621

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2604, metadata !575), !dbg !2614
  %136 = load i8*, i8** %10, align 8, !dbg !2615
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2615
  store i8* %137, i8** %10, align 8, !dbg !2615
  %138 = bitcast i8* %136 to i8**, !dbg !2615
  %139 = load i8*, i8** %138, align 8, !dbg !2615
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2618
  store i8* %139, i8** %140, align 8, !dbg !2619, !tbaa !582
  %141 = icmp eq i8* %139, null, !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2604, metadata !575), !dbg !2614
  %142 = select i1 %141, i64 9, i64 10, !dbg !2621
  br label %30, !dbg !2621
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2624 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2628, metadata !575), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2629, metadata !575), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2630, metadata !575), !dbg !2639
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2631, metadata !575), !dbg !2640
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2641
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2632, metadata !575), !dbg !2642
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2643
  call void @llvm.va_start(i8* nonnull %6), !dbg !2643
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2644
  call void @llvm.va_end(i8* nonnull %6), !dbg !2645
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2646
  ret void, !dbg !2646
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2647 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.71, i64 0, i64 0), i32 5) #10, !dbg !2648
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.72, i64 0, i64 0)) #10, !dbg !2648
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.73, i64 0, i64 0), i32 5) #10, !dbg !2649
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.75, i64 0, i64 0)) #10, !dbg !2649
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !2650
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2650, !tbaa !582
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2650
  ret void, !dbg !2651
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2652 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2656, metadata !575), !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2657, metadata !575), !dbg !2659
  %3 = udiv i64 9223372036854775807, %1, !dbg !2660
  %4 = icmp ult i64 %3, %0, !dbg !2660
  br i1 %4, label %5, label %6, !dbg !2662

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2663
  unreachable, !dbg !2663

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2664
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2665, metadata !575) #10, !dbg !2672
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2674
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2671, metadata !575) #10, !dbg !2675
  %9 = icmp eq i8* %8, null, !dbg !2676
  %10 = icmp ne i64 %7, 0, !dbg !2678
  %11 = and i1 %10, %9, !dbg !2679
  br i1 %11, label %12, label %13, !dbg !2679

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2680
  unreachable, !dbg !2680

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2681
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2666 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2665, metadata !575), !dbg !2682
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2683
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2671, metadata !575), !dbg !2684
  %3 = icmp eq i8* %2, null, !dbg !2685
  %4 = icmp ne i64 %0, 0, !dbg !2686
  %5 = and i1 %4, %3, !dbg !2687
  br i1 %5, label %6, label %7, !dbg !2687

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2688
  unreachable, !dbg !2688

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2689
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2690 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2694, metadata !575), !dbg !2697
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2695, metadata !575), !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2696, metadata !575), !dbg !2699
  %4 = udiv i64 9223372036854775807, %2, !dbg !2700
  %5 = icmp ult i64 %4, %1, !dbg !2700
  br i1 %5, label %6, label %7, !dbg !2702

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2703
  unreachable, !dbg !2703

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2704
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2705, metadata !575) #10, !dbg !2711
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2710, metadata !575) #10, !dbg !2713
  %9 = icmp eq i64 %8, 0, !dbg !2714
  %10 = icmp ne i8* %0, null, !dbg !2716
  %11 = and i1 %10, %9, !dbg !2717
  br i1 %11, label %12, label %13, !dbg !2717

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2718
  br label %19, !dbg !2720

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2721
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2705, metadata !575) #10, !dbg !2711
  %15 = icmp eq i8* %14, null, !dbg !2722
  %16 = icmp ne i64 %8, 0, !dbg !2724
  %17 = and i1 %16, %15, !dbg !2725
  br i1 %17, label %18, label %19, !dbg !2725

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2726
  unreachable, !dbg !2726

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2727
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2706 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2705, metadata !575), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2710, metadata !575), !dbg !2729
  %3 = icmp eq i64 %1, 0, !dbg !2730
  %4 = icmp ne i8* %0, null, !dbg !2731
  %5 = and i1 %4, %3, !dbg !2732
  br i1 %5, label %6, label %7, !dbg !2732

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2733
  br label %13, !dbg !2734

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2705, metadata !575), !dbg !2728
  %9 = icmp eq i8* %8, null, !dbg !2736
  %10 = icmp ne i64 %1, 0, !dbg !2737
  %11 = and i1 %10, %9, !dbg !2738
  br i1 %11, label %12, label %13, !dbg !2738

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2739
  unreachable, !dbg !2739

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2740
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !535 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !540, metadata !575), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !541, metadata !575), !dbg !2742
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !542, metadata !575), !dbg !2743
  %4 = load i64, i64* %1, align 8, !dbg !2744, !tbaa !1782
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !543, metadata !575), !dbg !2745
  %5 = icmp eq i8* %0, null, !dbg !2746
  br i1 %5, label %6, label %13, !dbg !2748

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2749
  br i1 %7, label %8, label %17, !dbg !2752

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !543, metadata !575), !dbg !2745
  %10 = icmp ugt i64 %2, 128, !dbg !2755
  %11 = zext i1 %10 to i64, !dbg !2755
  %12 = add nuw nsw i64 %9, %11, !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !543, metadata !575), !dbg !2745
  br label %17, !dbg !2757

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2758
  %15 = icmp ugt i64 %14, %4, !dbg !2761
  br i1 %15, label %20, label %16, !dbg !2762

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2763
  unreachable, !dbg !2763

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2745
  store i64 %18, i64* %1, align 8, !dbg !2764, !tbaa !1782
  %19 = mul i64 %18, %2, !dbg !2765
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2705, metadata !575) #10, !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2710, metadata !575) #10, !dbg !2768
  br label %27, !dbg !2769

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2770
  %22 = add i64 %4, 1, !dbg !2771
  %23 = add i64 %22, %21, !dbg !2772
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2745
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2745
  store i64 %23, i64* %1, align 8, !dbg !2764, !tbaa !1782
  %24 = mul i64 %23, %2, !dbg !2765
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2705, metadata !575) #10, !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2710, metadata !575) #10, !dbg !2768
  %25 = icmp eq i64 %24, 0, !dbg !2773
  br i1 %25, label %26, label %27, !dbg !2769

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !2774
  br label %34, !dbg !2775

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !2776
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2705, metadata !575) #10, !dbg !2766
  %30 = icmp eq i8* %29, null, !dbg !2777
  %31 = icmp ne i64 %28, 0, !dbg !2778
  %32 = and i1 %31, %30, !dbg !2779
  br i1 %32, label %33, label %34, !dbg !2779

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2780
  unreachable, !dbg !2780

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2781
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2782 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2784, metadata !575), !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2665, metadata !575) #10, !dbg !2786
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2788
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2671, metadata !575) #10, !dbg !2789
  %3 = icmp eq i8* %2, null, !dbg !2790
  %4 = icmp ne i64 %0, 0, !dbg !2791
  %5 = and i1 %4, %3, !dbg !2792
  br i1 %5, label %6, label %7, !dbg !2792

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2793
  unreachable, !dbg !2793

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2794
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2795 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2799, metadata !575), !dbg !2801
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2800, metadata !575), !dbg !2802
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !540, metadata !575) #10, !dbg !2803
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !541, metadata !575) #10, !dbg !2805
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !542, metadata !575) #10, !dbg !2806
  %3 = load i64, i64* %1, align 8, !dbg !2807, !tbaa !1782
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !543, metadata !575) #10, !dbg !2808
  %4 = icmp eq i8* %0, null, !dbg !2809
  br i1 %4, label %5, label %8, !dbg !2810

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2811
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !543, metadata !575) #10, !dbg !2808
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !543, metadata !575) #10, !dbg !2808
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2812
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #10, !dbg !2808
  store i64 %7, i64* %1, align 8, !dbg !2813, !tbaa !1782
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2705, metadata !575) #10, !dbg !2814
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2710, metadata !575) #10, !dbg !2816
  br label %17, !dbg !2817

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2818
  br i1 %9, label %11, label %10, !dbg !2819

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2820
  unreachable, !dbg !2820

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2821
  %13 = add i64 %3, 1, !dbg !2822
  %14 = add i64 %13, %12, !dbg !2823
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #10, !dbg !2808
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #10, !dbg !2808
  store i64 %14, i64* %1, align 8, !dbg !2813, !tbaa !1782
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2705, metadata !575) #10, !dbg !2814
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2710, metadata !575) #10, !dbg !2816
  %15 = icmp eq i64 %14, 0, !dbg !2824
  br i1 %15, label %16, label %17, !dbg !2817

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !2825
  br label %24, !dbg !2826

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !2827
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2705, metadata !575) #10, !dbg !2814
  %20 = icmp eq i8* %19, null, !dbg !2828
  %21 = icmp ne i64 %18, 0, !dbg !2829
  %22 = and i1 %21, %20, !dbg !2830
  br i1 %22, label %23, label %24, !dbg !2830

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2831
  unreachable, !dbg !2831

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2832
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2833 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2835, metadata !575), !dbg !2836
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2665, metadata !575) #10, !dbg !2837
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2839
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2671, metadata !575) #10, !dbg !2840
  %3 = icmp eq i8* %2, null, !dbg !2841
  %4 = icmp ne i64 %0, 0, !dbg !2842
  %5 = and i1 %4, %3, !dbg !2843
  br i1 %5, label %6, label %7, !dbg !2843

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2844
  unreachable, !dbg !2844

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2845
  ret i8* %2, !dbg !2846
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2847 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2849, metadata !575), !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2850, metadata !575), !dbg !2853
  %3 = udiv i64 9223372036854775807, %1, !dbg !2854
  %4 = icmp ult i64 %3, %0, !dbg !2854
  br i1 %4, label %8, label %5, !dbg !2856

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !2857
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2851, metadata !575), !dbg !2858
  %7 = icmp eq i8* %6, null, !dbg !2859
  br i1 %7, label %8, label %9, !dbg !2860

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2861
  unreachable, !dbg !2861

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2862
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2863 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2869, metadata !575), !dbg !2871
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2870, metadata !575), !dbg !2872
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2665, metadata !575) #10, !dbg !2873
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !2875
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2671, metadata !575) #10, !dbg !2876
  %4 = icmp eq i8* %3, null, !dbg !2877
  %5 = icmp ne i64 %1, 0, !dbg !2878
  %6 = and i1 %5, %4, !dbg !2879
  br i1 %6, label %7, label %8, !dbg !2879

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2880
  unreachable, !dbg !2880

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2881
  ret i8* %3, !dbg !2882
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2883 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2885, metadata !575), !dbg !2886
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2887
  %3 = add i64 %2, 1, !dbg !2888
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2869, metadata !575) #10, !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2870, metadata !575) #10, !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2665, metadata !575) #10, !dbg !2892
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2671, metadata !575) #10, !dbg !2895
  %5 = icmp eq i8* %4, null, !dbg !2896
  %6 = icmp ne i64 %3, 0, !dbg !2897
  %7 = and i1 %6, %5, !dbg !2898
  br i1 %7, label %8, label %9, !dbg !2898

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2899
  unreachable, !dbg !2899

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !2900
  ret i8* %4, !dbg !2901
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2902 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2904, !tbaa !632
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.86, i64 0, i64 0), i32 5) #10, !dbg !2905
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i8* %2) #10, !dbg !2906
  tail call void @abort() #15, !dbg !2907
  unreachable, !dbg !2907
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2908 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2911, metadata !575), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2912, metadata !575), !dbg !2918
  %3 = icmp eq i64 %0, 0, !dbg !2919
  %4 = icmp eq i64 %1, 0, !dbg !2920
  %5 = or i1 %3, %4, !dbg !2921
  br i1 %5, label %12, label %6, !dbg !2921

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2914, metadata !575), !dbg !2923
  %8 = udiv i64 %7, %1, !dbg !2924
  %9 = icmp eq i64 %8, %0, !dbg !2926
  br i1 %9, label %12, label %10, !dbg !2927

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2928
  store i32 12, i32* %11, align 4, !dbg !2930, !tbaa !632
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2911, metadata !575), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2912, metadata !575), !dbg !2918
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !2931
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2913, metadata !575), !dbg !2932
  br label %16, !dbg !2933

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !2934
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !2935 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !2952, metadata !575), !dbg !2961
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2953, metadata !575), !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2954, metadata !575), !dbg !2963
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !2955, metadata !575), !dbg !2964
  %6 = bitcast i32* %5 to i8*, !dbg !2965
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !2965
  %7 = icmp eq i32* %0, null, !dbg !2966
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2952, metadata !575), !dbg !2961
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2968
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2952, metadata !575), !dbg !2961
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2956, metadata !575), !dbg !2970
  %10 = icmp ugt i64 %9, -3, !dbg !2971
  %11 = icmp ne i64 %2, 0, !dbg !2972
  %12 = and i1 %11, %10, !dbg !2973
  br i1 %12, label %13, label %18, !dbg !2973

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !2974
  br i1 %14, label %18, label %15, !dbg !2975

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2976, !tbaa !1046
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !2958, metadata !575), !dbg !2977
  %17 = zext i8 %16 to i32, !dbg !2978
  store i32 %17, i32* %8, align 4, !dbg !2979, !tbaa !632
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !2980
  ret i64 %19, !dbg !2980
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !2981 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3026, metadata !575), !dbg !3031
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3032
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3033, metadata !575), !dbg !3037
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3039
  %4 = load i32, i32* %3, align 8, !dbg !3039, !tbaa !3040
  %5 = and i32 %4, 32, !dbg !3039
  %6 = icmp eq i32 %5, 0, !dbg !3042
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3043
  %8 = icmp ne i32 %7, 0, !dbg !3044
  br i1 %6, label %9, label %19, !dbg !3045

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3047
  %11 = xor i1 %8, true, !dbg !3048
  %12 = or i1 %10, %11, !dbg !3048
  %13 = sext i1 %8 to i32, !dbg !3048
  br i1 %12, label %22, label %14, !dbg !3048

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3049
  %16 = load i32, i32* %15, align 4, !dbg !3049, !tbaa !632
  %17 = icmp ne i32 %16, 9, !dbg !3050
  %18 = sext i1 %17 to i32, !dbg !3051
  br label %22, !dbg !3051

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3052

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3054
  store i32 0, i32* %21, align 4, !dbg !3056, !tbaa !632
  br label %22, !dbg !3054

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3057
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3058 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3063, metadata !575), !dbg !3066
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3064, metadata !575), !dbg !3067
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3068
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3065, metadata !575), !dbg !3069
  %3 = icmp eq i8* %2, null, !dbg !3070
  br i1 %3, label %11, label %4, !dbg !3072

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0)) #14, !dbg !3073
  %6 = icmp eq i32 %5, 0, !dbg !3078
  br i1 %6, label %10, label %7, !dbg !3079

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.97, i64 0, i64 0)) #14, !dbg !3080
  %9 = icmp eq i32 %8, 0, !dbg !3081
  br i1 %9, label %10, label %11, !dbg !3082

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3064, metadata !575), !dbg !3067
  br label %11, !dbg !3083

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3084
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3085 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3091, metadata !575), !dbg !3165
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3158, metadata !575), !dbg !3168
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3169
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3089, metadata !575), !dbg !3170
  %4 = icmp eq i8* %3, null, !dbg !3171
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), i8* %3, !dbg !3173
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3089, metadata !575), !dbg !3170
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3174, !tbaa !582
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3105, metadata !575) #10, !dbg !3175
  %7 = icmp eq i8* %6, null, !dbg !3176
  br i1 %7, label %8, label %123, !dbg !3177

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.101, i64 0, i64 0)) #10, !dbg !3178
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3106, metadata !575) #10, !dbg !3179
  %10 = icmp eq i8* %9, null, !dbg !3180
  br i1 %10, label %14, label %11, !dbg !3182

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3183, !tbaa !1046
  %13 = icmp eq i8 %12, 0, !dbg !3184
  br i1 %13, label %14, label %15, !dbg !3185

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3186

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.102, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3106, metadata !575) #10, !dbg !3179
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3109, metadata !575) #10, !dbg !3188
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3111, metadata !575) #10, !dbg !3189
  %18 = icmp eq i64 %17, 0, !dbg !3190
  br i1 %18, label %24, label %19, !dbg !3191

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3192
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3192
  %22 = load i8, i8* %21, align 1, !dbg !3192, !tbaa !1046
  %23 = icmp ne i8 %22, 47, !dbg !3192
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3193
  %27 = add i64 %17, 14, !dbg !3194
  %28 = add i64 %27, %26, !dbg !3195
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3108, metadata !575) #10, !dbg !3197
  %30 = icmp eq i8* %29, null, !dbg !3198
  br i1 %30, label %121, label %31, !dbg !3198

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3199
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3202

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3203, !tbaa !1046
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3205
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.103, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3206
  br label %37, !dbg !3207

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3205
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.103, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3206
  br label %37, !dbg !3207

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3208
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3113, metadata !575) #10, !dbg !3209
  %39 = icmp slt i32 %38, 0, !dbg !3210
  br i1 %39, label %119, label %40, !dbg !3211

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.104, i64 0, i64 0)) #10, !dbg !3212
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3114, metadata !575) #10, !dbg !3213
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3214
  br i1 %42, label %43, label %45, !dbg !3215

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3216
  br label %119, !dbg !3218

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3155, metadata !575) #10, !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3156, metadata !575) #10, !dbg !3220
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3221

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3222

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3155, metadata !575) #10, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3156, metadata !575) #10, !dbg !3220
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3222
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3223
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3224, metadata !575) #10, !dbg !3229
  %54 = load i8*, i8** %48, align 8, !dbg !3231, !tbaa !3232
  %55 = load i8*, i8** %49, align 8, !dbg !3231, !tbaa !3233
  %56 = icmp ult i8* %54, %55, !dbg !3231
  br i1 %56, label %59, label %57, !dbg !3231, !prof !3234

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3231
  br label %63, !dbg !3231

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3231
  store i8* %60, i8** %48, align 8, !dbg !3231, !tbaa !3232
  %61 = load i8, i8* %54, align 1, !dbg !3231, !tbaa !1046
  %62 = zext i8 %61 to i32, !dbg !3231
  br label %63, !dbg !3231

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3231
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3157, metadata !575) #10, !dbg !3235
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3236, !llvm.loop !3237

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3242

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3224, metadata !575) #10, !dbg !3244
  %67 = load i8*, i8** %48, align 8, !dbg !3242, !tbaa !3232
  %68 = load i8*, i8** %49, align 8, !dbg !3242, !tbaa !3233
  %69 = icmp ult i8* %67, %68, !dbg !3242
  br i1 %69, label %72, label %70, !dbg !3242, !prof !3234

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3242
  br label %76, !dbg !3242

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3242
  store i8* %73, i8** %48, align 8, !dbg !3242, !tbaa !3232
  %74 = load i8, i8* %67, align 1, !dbg !3242, !tbaa !1046
  %75 = zext i8 %74 to i32, !dbg !3242
  br label %76, !dbg !3242

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3242
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3157, metadata !575) #10, !dbg !3235
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3245, !llvm.loop !3246

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3249
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.105, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3250
  %81 = icmp slt i32 %80, 2, !dbg !3252
  br i1 %81, label %112, label %82, !dbg !3253

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3162, metadata !575) #10, !dbg !3255
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3163, metadata !575) #10, !dbg !3257
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3164, metadata !575) #10, !dbg !3258
  %85 = icmp eq i64 %51, 0, !dbg !3259
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3261

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3156, metadata !575) #10, !dbg !3220
  %90 = add i64 %87, 2, !dbg !3262
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3155, metadata !575) #10, !dbg !3219
  br label %96, !dbg !3265

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3156, metadata !575) #10, !dbg !3220
  %94 = add i64 %93, 1, !dbg !3268
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3269
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3155, metadata !575) #10, !dbg !3219
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3155, metadata !575) #10, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3156, metadata !575) #10, !dbg !3220
  %99 = icmp eq i8* %98, null, !dbg !3270
  br i1 %99, label %100, label %102, !dbg !3272

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3156, metadata !575) #10, !dbg !3220
  call void @free(i8* %52) #10, !dbg !3273
  br label %112, !dbg !3275

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3276
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3277
  %104 = xor i64 %84, -1, !dbg !3278
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3278
  %106 = xor i64 %83, -1, !dbg !3279
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3279
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3280, metadata !575) #10, !dbg !3289
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3288, metadata !575) #10, !dbg !3289
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3291
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3292
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3280, metadata !575) #10, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3288, metadata !575) #10, !dbg !3293
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3295
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3155, metadata !575) #10, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3156, metadata !575) #10, !dbg !3220
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3276
  br label %50, !dbg !3297, !llvm.loop !3246

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3276
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3298
  %116 = icmp eq i64 %113, 0, !dbg !3299
  br i1 %116, label %119, label %117, !dbg !3301

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3302
  store i8 0, i8* %118, align 1, !dbg !3304, !tbaa !1046
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3105, metadata !575) #10, !dbg !3175
  call void @free(i8* %29) #10, !dbg !3305
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3105, metadata !575) #10, !dbg !3175
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3306, !tbaa !582
  br label %123, !dbg !3307

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3105, metadata !575) #10, !dbg !3175
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3090, metadata !575), !dbg !3308
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3090, metadata !575), !dbg !3308
  %125 = load i8, i8* %124, align 1, !dbg !3309, !tbaa !1046
  %126 = icmp eq i8 %125, 0, !dbg !3311
  br i1 %126, label %152, label %127, !dbg !3312

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3313

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3090, metadata !575), !dbg !3308
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3313
  %132 = icmp eq i32 %131, 0, !dbg !3315
  br i1 %132, label %139, label %133, !dbg !3316

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3317
  br i1 %134, label %135, label %143, !dbg !3318

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3319
  %137 = load i8, i8* %136, align 1, !dbg !3319, !tbaa !1046
  %138 = icmp eq i8 %137, 0, !dbg !3320
  br i1 %138, label %139, label %143, !dbg !3321

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3322
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3324
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3325
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3089, metadata !575), !dbg !3170
  br label %152, !dbg !3326

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3327
  %145 = add i64 %144, 1, !dbg !3328
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3090, metadata !575), !dbg !3308
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3330
  %148 = add i64 %147, 1, !dbg !3331
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3090, metadata !575), !dbg !3308
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3090, metadata !575), !dbg !3308
  %150 = load i8, i8* %149, align 1, !dbg !3309, !tbaa !1046
  %151 = icmp eq i8 %150, 0, !dbg !3311
  br i1 %151, label %152, label %128, !dbg !3312, !llvm.loop !3333

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3089, metadata !575), !dbg !3170
  %154 = load i8, i8* %153, align 1, !dbg !3335, !tbaa !1046
  %155 = icmp eq i8 %154, 0, !dbg !3337
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.106, i64 0, i64 0), i8* %153, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3089, metadata !575), !dbg !3170
  ret i8* %156, !dbg !3339
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3340 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3385, metadata !575), !dbg !3389
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3386, metadata !575), !dbg !3390
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3388, metadata !575), !dbg !3391
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3392
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3387, metadata !575), !dbg !3393
  %3 = icmp slt i32 %2, 0, !dbg !3394
  br i1 %3, label %4, label %6, !dbg !3396

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3397
  br label %24, !dbg !3398

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3399
  %8 = icmp eq i32 %7, 0, !dbg !3399
  br i1 %8, label %13, label %9, !dbg !3401

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3402
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3403
  %12 = icmp eq i64 %11, -1, !dbg !3404
  br i1 %12, label %16, label %13, !dbg !3405

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3406
  %15 = icmp eq i32 %14, 0, !dbg !3406
  br i1 %15, label %16, label %18, !dbg !3407

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3386, metadata !575), !dbg !3390
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3408
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3388, metadata !575), !dbg !3391
  br label %24, !dbg !3409

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3410
  %20 = load i32, i32* %19, align 4, !dbg !3410, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3386, metadata !575), !dbg !3390
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3386, metadata !575), !dbg !3390
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3408
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3388, metadata !575), !dbg !3391
  %22 = icmp eq i32 %20, 0, !dbg !3411
  br i1 %22, label %24, label %23, !dbg !3409

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3413, !tbaa !632
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3388, metadata !575), !dbg !3391
  br label %24, !dbg !3415

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3416
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3417 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3462, metadata !575), !dbg !3463
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3464
  br i1 %2, label %6, label %3, !dbg !3466

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3467
  %5 = icmp eq i32 %4, 0, !dbg !3467
  br i1 %5, label %6, label %8, !dbg !3468

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3469
  br label %17, !dbg !3470

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3471, metadata !575) #10, !dbg !3476
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3478
  %10 = load i32, i32* %9, align 8, !dbg !3478, !tbaa !3040
  %11 = and i32 %10, 256, !dbg !3480
  %12 = icmp eq i32 %11, 0, !dbg !3480
  br i1 %12, label %15, label %13, !dbg !3481

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3482
  br label %15, !dbg !3482

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3483
  br label %17, !dbg !3484

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3485
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3486 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3532, metadata !575), !dbg !3538
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3533, metadata !575), !dbg !3539
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3534, metadata !575), !dbg !3540
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3541
  %5 = load i8*, i8** %4, align 8, !dbg !3541, !tbaa !3233
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3542
  %7 = load i8*, i8** %6, align 8, !dbg !3542, !tbaa !3232
  %8 = icmp eq i8* %5, %7, !dbg !3543
  br i1 %8, label %9, label %28, !dbg !3544

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3545
  %11 = load i8*, i8** %10, align 8, !dbg !3545, !tbaa !3546
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3547
  %13 = load i8*, i8** %12, align 8, !dbg !3547, !tbaa !3548
  %14 = icmp eq i8* %11, %13, !dbg !3549
  br i1 %14, label %15, label %28, !dbg !3550

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3551
  %17 = load i8*, i8** %16, align 8, !dbg !3551, !tbaa !3552
  %18 = icmp eq i8* %17, null, !dbg !3553
  br i1 %18, label %19, label %28, !dbg !3554

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3555
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3535, metadata !575), !dbg !3557
  %22 = icmp eq i64 %21, -1, !dbg !3558
  br i1 %22, label %30, label %23, !dbg !3560

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3561
  %25 = load i32, i32* %24, align 8, !dbg !3562, !tbaa !3040
  %26 = and i32 %25, -17, !dbg !3562
  store i32 %26, i32* %24, align 8, !dbg !3562, !tbaa !3040
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3563
  store i64 %21, i64* %27, align 8, !dbg !3564, !tbaa !3565
  br label %30, !dbg !3566

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3567
  br label %30, !dbg !3568

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3569
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

!llvm.dbg.cu = !{!498, !2, !11, !20, !28, !46, !55, !522, !142, !530, !547, !549, !551, !554, !556, !151, !558, !560, !562}
!llvm.ident = !{!564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564}
!llvm.module.flags = !{!565, !566, !567, !568, !569}

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
!499 = !DIFile(filename: "src/logname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!500 = !{!6, !49}
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
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !524, retainedTypes: !529)
!523 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!524 = !{!525}
!525 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 41, size: 32, elements: !527)
!526 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!527 = !{!528}
!528 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!529 = !{!49}
!530 = distinct !DICompileUnit(language: DW_LANG_C99, file: !531, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !532, retainedTypes: !546)
!531 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!532 = !{!533}
!533 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !535, file: !534, line: 192, size: 32, elements: !544)
!534 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = distinct !DISubprogram(name: "x2nrealloc", scope: !534, file: !534, line: 180, type: !536, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !539)
!536 = !DISubroutineType(types: !537)
!537 = !{!49, !49, !538, !94}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!539 = !{!540, !541, !542, !543}
!540 = !DILocalVariable(name: "p", arg: 1, scope: !535, file: !534, line: 180, type: !49)
!541 = !DILocalVariable(name: "pn", arg: 2, scope: !535, file: !534, line: 180, type: !538)
!542 = !DILocalVariable(name: "s", arg: 3, scope: !535, file: !534, line: 180, type: !94)
!543 = !DILocalVariable(name: "n", scope: !535, file: !534, line: 182, type: !94)
!544 = !{!545}
!545 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!546 = !{!94, !50, !49}
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!548 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !529)
!550 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !553)
!552 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!553 = !{!94}
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!555 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !557, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!557 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!559 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !529)
!561 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !529)
!563 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!565 = !{i32 2, !"Dwarf Version", i32 4}
!566 = !{i32 2, !"Debug Info Version", i32 3}
!567 = !{i32 1, !"wchar_size", i32 4}
!568 = !{i32 7, !"PIC Level", i32 2}
!569 = !{i32 7, !"PIE Level", i32 2}
!570 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 34, type: !571, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !25}
!573 = !{!574}
!574 = !DILocalVariable(name: "status", arg: 1, scope: !570, file: !499, line: 34, type: !25)
!575 = !DIExpression()
!576 = !DILocation(line: 34, column: 12, scope: !570)
!577 = !DILocation(line: 36, column: 14, scope: !578)
!578 = distinct !DILexicalBlock(scope: !570, file: !499, line: 36, column: 7)
!579 = !DILocation(line: 36, column: 7, scope: !570)
!580 = !DILocation(line: 37, column: 5, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !499, line: 37, column: 5)
!582 = !{!583, !583, i64 0}
!583 = !{!"any pointer", !584, i64 0}
!584 = !{!"omnipotent char", !585, i64 0}
!585 = !{!"Simple C/C++ TBAA"}
!586 = !DILocation(line: 40, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !578, file: !499, line: 39, column: 5)
!588 = !DILocation(line: 41, column: 7, scope: !587)
!589 = !DILocation(line: 45, column: 7, scope: !587)
!590 = !DILocation(line: 46, column: 7, scope: !587)
!591 = !DILocation(line: 642, column: 15, scope: !504, inlinedAt: !592)
!592 = distinct !DILocation(line: 47, column: 7, scope: !587)
!593 = !DILocation(line: 651, column: 3, scope: !504, inlinedAt: !592)
!594 = !DILocation(line: 655, column: 29, scope: !504, inlinedAt: !592)
!595 = !DILocation(line: 655, column: 15, scope: !504, inlinedAt: !592)
!596 = !DILocation(line: 656, column: 7, scope: !597, inlinedAt: !592)
!597 = distinct !DILexicalBlock(scope: !504, file: !505, line: 656, column: 7)
!598 = !DILocation(line: 656, column: 19, scope: !597, inlinedAt: !592)
!599 = !DILocation(line: 656, column: 22, scope: !597, inlinedAt: !592)
!600 = !DILocation(line: 656, column: 7, scope: !504, inlinedAt: !592)
!601 = !DILocation(line: 662, column: 7, scope: !602, inlinedAt: !592)
!602 = distinct !DILexicalBlock(scope: !597, file: !505, line: 657, column: 5)
!603 = !DILocation(line: 664, column: 5, scope: !602, inlinedAt: !592)
!604 = !DILocation(line: 665, column: 3, scope: !504, inlinedAt: !592)
!605 = !DILocation(line: 667, column: 3, scope: !504, inlinedAt: !592)
!606 = !DILocation(line: 49, column: 3, scope: !570)
!607 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 53, type: !608, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !611)
!608 = !DISubroutineType(types: !609)
!609 = !{!25, !25, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!611 = !{!612, !613, !614}
!612 = !DILocalVariable(name: "argc", arg: 1, scope: !607, file: !499, line: 53, type: !25)
!613 = !DILocalVariable(name: "argv", arg: 2, scope: !607, file: !499, line: 53, type: !610)
!614 = !DILocalVariable(name: "cp", scope: !607, file: !499, line: 55, type: !50)
!615 = !DILocation(line: 53, column: 11, scope: !607)
!616 = !DILocation(line: 53, column: 24, scope: !607)
!617 = !DILocation(line: 58, column: 21, scope: !607)
!618 = !DILocation(line: 58, column: 3, scope: !607)
!619 = !DILocation(line: 59, column: 3, scope: !607)
!620 = !DILocation(line: 60, column: 3, scope: !607)
!621 = !DILocation(line: 61, column: 3, scope: !607)
!622 = !DILocation(line: 63, column: 3, scope: !607)
!623 = !DILocation(line: 65, column: 63, scope: !607)
!624 = !DILocation(line: 65, column: 3, scope: !607)
!625 = !DILocation(line: 67, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !607, file: !499, line: 67, column: 7)
!627 = !DILocation(line: 67, column: 48, scope: !626)
!628 = !DILocation(line: 67, column: 7, scope: !607)
!629 = !DILocation(line: 68, column: 5, scope: !626)
!630 = !DILocation(line: 70, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !607, file: !499, line: 70, column: 7)
!632 = !{!633, !633, i64 0}
!633 = !{!"int", !584, i64 0}
!634 = !DILocation(line: 70, column: 14, scope: !631)
!635 = !DILocation(line: 70, column: 7, scope: !607)
!636 = !DILocation(line: 72, column: 20, scope: !637)
!637 = distinct !DILexicalBlock(scope: !631, file: !499, line: 71, column: 5)
!638 = !DILocation(line: 72, column: 55, scope: !637)
!639 = !DILocation(line: 72, column: 50, scope: !637)
!640 = !DILocation(line: 72, column: 43, scope: !637)
!641 = !DILocation(line: 72, column: 7, scope: !637)
!642 = !DILocation(line: 73, column: 7, scope: !637)
!643 = !DILocation(line: 78, column: 8, scope: !607)
!644 = !DILocation(line: 55, column: 9, scope: !607)
!645 = !DILocation(line: 79, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !607, file: !499, line: 79, column: 7)
!647 = !DILocation(line: 79, column: 7, scope: !607)
!648 = !DILocation(line: 80, column: 5, scope: !646)
!649 = !DILocation(line: 82, column: 3, scope: !607)
!650 = !DILocation(line: 83, column: 3, scope: !607)
!651 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !506, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !652)
!652 = !{!653}
!653 = !DILocalVariable(name: "file", arg: 1, scope: !651, file: !16, line: 41, type: !6)
!654 = !DILocation(line: 41, column: 41, scope: !651)
!655 = !DILocation(line: 43, column: 13, scope: !651)
!656 = !DILocation(line: 44, column: 1, scope: !651)
!657 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !658, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !17}
!660 = !{!661}
!661 = !DILocalVariable(name: "ignore", arg: 1, scope: !657, file: !16, line: 78, type: !17)
!662 = !DILocation(line: 78, column: 37, scope: !657)
!663 = !DILocation(line: 80, column: 16, scope: !657)
!664 = !{!665, !665, i64 0}
!665 = !{!"_Bool", !584, i64 0}
!666 = !DILocation(line: 81, column: 1, scope: !657)
!667 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !668, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{null}
!670 = !{!671}
!671 = !DILocalVariable(name: "write_error", scope: !672, file: !16, line: 112, type: !6)
!672 = distinct !DILexicalBlock(scope: !673, file: !16, line: 111, column: 5)
!673 = distinct !DILexicalBlock(scope: !667, file: !16, line: 109, column: 7)
!674 = !DILocation(line: 109, column: 21, scope: !673)
!675 = !DILocation(line: 109, column: 7, scope: !673)
!676 = !DILocation(line: 109, column: 29, scope: !673)
!677 = !DILocation(line: 110, column: 7, scope: !673)
!678 = !DILocation(line: 110, column: 12, scope: !673)
!679 = !{i8 0, i8 2}
!680 = !DILocation(line: 114, column: 19, scope: !681)
!681 = distinct !DILexicalBlock(scope: !672, file: !16, line: 113, column: 11)
!682 = !DILocation(line: 110, column: 25, scope: !673)
!683 = !DILocation(line: 110, column: 28, scope: !673)
!684 = !DILocation(line: 110, column: 34, scope: !673)
!685 = !DILocation(line: 109, column: 7, scope: !667)
!686 = !DILocation(line: 112, column: 33, scope: !672)
!687 = !DILocation(line: 112, column: 19, scope: !672)
!688 = !DILocation(line: 113, column: 11, scope: !681)
!689 = !DILocation(line: 113, column: 11, scope: !672)
!690 = !DILocation(line: 114, column: 36, scope: !681)
!691 = !DILocation(line: 114, column: 9, scope: !681)
!692 = !DILocation(line: 117, column: 9, scope: !681)
!693 = !DILocation(line: 119, column: 14, scope: !672)
!694 = !DILocation(line: 119, column: 7, scope: !672)
!695 = !DILocation(line: 122, column: 22, scope: !696)
!696 = distinct !DILexicalBlock(scope: !667, file: !16, line: 122, column: 8)
!697 = !DILocation(line: 122, column: 8, scope: !696)
!698 = !DILocation(line: 122, column: 30, scope: !696)
!699 = !DILocation(line: 122, column: 8, scope: !667)
!700 = !DILocation(line: 123, column: 13, scope: !696)
!701 = !DILocation(line: 123, column: 6, scope: !696)
!702 = !DILocation(line: 124, column: 1, scope: !667)
!703 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !704, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !707)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !25, !610, !6, !6, !6, !706, null}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716}
!708 = !DILocalVariable(name: "argc", arg: 1, scope: !703, file: !31, line: 44, type: !25)
!709 = !DILocalVariable(name: "argv", arg: 2, scope: !703, file: !31, line: 45, type: !610)
!710 = !DILocalVariable(name: "command_name", arg: 3, scope: !703, file: !31, line: 46, type: !6)
!711 = !DILocalVariable(name: "package", arg: 4, scope: !703, file: !31, line: 47, type: !6)
!712 = !DILocalVariable(name: "version", arg: 5, scope: !703, file: !31, line: 48, type: !6)
!713 = !DILocalVariable(name: "usage_func", arg: 6, scope: !703, file: !31, line: 49, type: !706)
!714 = !DILocalVariable(name: "c", scope: !703, file: !31, line: 52, type: !25)
!715 = !DILocalVariable(name: "saved_opterr", scope: !703, file: !31, line: 53, type: !25)
!716 = !DILocalVariable(name: "authors", scope: !717, file: !31, line: 71, type: !721)
!717 = distinct !DILexicalBlock(scope: !718, file: !31, line: 70, column: 11)
!718 = distinct !DILexicalBlock(scope: !719, file: !31, line: 64, column: 9)
!719 = distinct !DILexicalBlock(scope: !720, file: !31, line: 62, column: 5)
!720 = distinct !DILexicalBlock(scope: !703, file: !31, line: 60, column: 7)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !722, line: 46, baseType: !723)
!722 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !724, line: 48, baseType: !725)
!724 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !726)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 192, elements: !733)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !728)
!728 = !{!729, !730, !731, !732}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !727, file: !29, line: 71, baseType: !113, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !727, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !727, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !727, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!733 = !{!734}
!734 = !DISubrange(count: 1)
!735 = !DILocation(line: 44, column: 25, scope: !703)
!736 = !DILocation(line: 45, column: 28, scope: !703)
!737 = !DILocation(line: 46, column: 33, scope: !703)
!738 = !DILocation(line: 47, column: 33, scope: !703)
!739 = !DILocation(line: 48, column: 33, scope: !703)
!740 = !DILocation(line: 49, column: 28, scope: !703)
!741 = !DILocation(line: 55, column: 18, scope: !703)
!742 = !DILocation(line: 53, column: 7, scope: !703)
!743 = !DILocation(line: 58, column: 10, scope: !703)
!744 = !DILocation(line: 60, column: 12, scope: !720)
!745 = !DILocation(line: 61, column: 7, scope: !720)
!746 = !DILocation(line: 61, column: 15, scope: !720)
!747 = !DILocation(line: 52, column: 7, scope: !703)
!748 = !DILocation(line: 60, column: 7, scope: !703)
!749 = !DILocation(line: 66, column: 11, scope: !718)
!750 = !DILocation(line: 67, column: 11, scope: !718)
!751 = !DILocation(line: 71, column: 13, scope: !717)
!752 = !DILocation(line: 71, column: 21, scope: !717)
!753 = !DILocation(line: 72, column: 13, scope: !717)
!754 = !DILocation(line: 73, column: 29, scope: !717)
!755 = !DILocation(line: 73, column: 13, scope: !717)
!756 = !DILocation(line: 74, column: 13, scope: !717)
!757 = !DILocation(line: 84, column: 10, scope: !703)
!758 = !DILocation(line: 88, column: 10, scope: !703)
!759 = !DILocation(line: 89, column: 1, scope: !703)
!760 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !506, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !761)
!761 = !{!762, !763, !764}
!762 = !DILocalVariable(name: "argv0", arg: 1, scope: !760, file: !52, line: 39, type: !6)
!763 = !DILocalVariable(name: "slash", scope: !760, file: !52, line: 46, type: !6)
!764 = !DILocalVariable(name: "base", scope: !760, file: !52, line: 47, type: !6)
!765 = !DILocation(line: 39, column: 31, scope: !760)
!766 = !DILocation(line: 51, column: 13, scope: !767)
!767 = distinct !DILexicalBlock(scope: !760, file: !52, line: 51, column: 7)
!768 = !DILocation(line: 51, column: 7, scope: !760)
!769 = !DILocation(line: 55, column: 14, scope: !770)
!770 = distinct !DILexicalBlock(scope: !767, file: !52, line: 52, column: 5)
!771 = !DILocation(line: 54, column: 7, scope: !770)
!772 = !DILocation(line: 56, column: 7, scope: !770)
!773 = !DILocation(line: 59, column: 11, scope: !760)
!774 = !DILocation(line: 46, column: 15, scope: !760)
!775 = !DILocation(line: 60, column: 17, scope: !760)
!776 = !DILocation(line: 60, column: 33, scope: !760)
!777 = !DILocation(line: 60, column: 11, scope: !760)
!778 = !DILocation(line: 47, column: 15, scope: !760)
!779 = !DILocation(line: 61, column: 12, scope: !780)
!780 = distinct !DILexicalBlock(scope: !760, file: !52, line: 61, column: 7)
!781 = !DILocation(line: 61, column: 20, scope: !780)
!782 = !DILocation(line: 61, column: 25, scope: !780)
!783 = !DILocation(line: 61, column: 42, scope: !780)
!784 = !DILocation(line: 61, column: 28, scope: !780)
!785 = !DILocation(line: 61, column: 61, scope: !780)
!786 = !DILocation(line: 61, column: 7, scope: !760)
!787 = !DILocation(line: 64, column: 11, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !52, line: 64, column: 11)
!789 = distinct !DILexicalBlock(scope: !780, file: !52, line: 62, column: 5)
!790 = !DILocation(line: 64, column: 36, scope: !788)
!791 = !DILocation(line: 64, column: 11, scope: !789)
!792 = !DILocation(line: 66, column: 24, scope: !793)
!793 = distinct !DILexicalBlock(scope: !788, file: !52, line: 65, column: 9)
!794 = !DILocation(line: 70, column: 41, scope: !793)
!795 = !DILocation(line: 72, column: 9, scope: !793)
!796 = !DILocation(line: 84, column: 16, scope: !760)
!797 = !DILocation(line: 90, column: 27, scope: !760)
!798 = !DILocation(line: 92, column: 1, scope: !760)
!799 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !800, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !803)
!800 = !DISubroutineType(types: !801)
!801 = !{!802, !802}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!803 = !{!804, !805, !806}
!804 = !DILocalVariable(name: "o", arg: 1, scope: !799, file: !100, line: 114, type: !802)
!805 = !DILocalVariable(name: "e", scope: !799, file: !100, line: 116, type: !25)
!806 = !DILocalVariable(name: "p", scope: !799, file: !100, line: 117, type: !802)
!807 = !DILocation(line: 114, column: 48, scope: !799)
!808 = !DILocation(line: 116, column: 11, scope: !799)
!809 = !DILocation(line: 116, column: 7, scope: !799)
!810 = !DILocation(line: 117, column: 40, scope: !799)
!811 = !DILocation(line: 117, column: 31, scope: !799)
!812 = !DILocation(line: 117, column: 27, scope: !799)
!813 = !DILocation(line: 119, column: 9, scope: !799)
!814 = !DILocation(line: 120, column: 3, scope: !799)
!815 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !816, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !820)
!816 = !DISubroutineType(types: !817)
!817 = !{!58, !818}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!820 = !{!821}
!821 = !DILocalVariable(name: "o", arg: 1, scope: !815, file: !100, line: 125, type: !818)
!822 = !DILocation(line: 125, column: 50, scope: !815)
!823 = !DILocation(line: 127, column: 11, scope: !815)
!824 = !DILocation(line: 127, column: 46, scope: !815)
!825 = !{!826, !584, i64 0}
!826 = !{!"quoting_options", !584, i64 0, !633, i64 4, !584, i64 8, !583, i64 40, !583, i64 48}
!827 = !DILocation(line: 127, column: 3, scope: !815)
!828 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !829, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !802, !58}
!831 = !{!832, !833}
!832 = !DILocalVariable(name: "o", arg: 1, scope: !828, file: !100, line: 133, type: !802)
!833 = !DILocalVariable(name: "s", arg: 2, scope: !828, file: !100, line: 133, type: !58)
!834 = !DILocation(line: 133, column: 44, scope: !828)
!835 = !DILocation(line: 133, column: 66, scope: !828)
!836 = !DILocation(line: 135, column: 4, scope: !828)
!837 = !DILocation(line: 135, column: 39, scope: !828)
!838 = !DILocation(line: 135, column: 45, scope: !828)
!839 = !DILocation(line: 136, column: 1, scope: !828)
!840 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !841, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{!25, !802, !8, !25}
!843 = !{!844, !845, !846, !847, !848, !850, !851}
!844 = !DILocalVariable(name: "o", arg: 1, scope: !840, file: !100, line: 144, type: !802)
!845 = !DILocalVariable(name: "c", arg: 2, scope: !840, file: !100, line: 144, type: !8)
!846 = !DILocalVariable(name: "i", arg: 3, scope: !840, file: !100, line: 144, type: !25)
!847 = !DILocalVariable(name: "uc", scope: !840, file: !100, line: 146, type: !494)
!848 = !DILocalVariable(name: "p", scope: !840, file: !100, line: 147, type: !849)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!850 = !DILocalVariable(name: "shift", scope: !840, file: !100, line: 149, type: !25)
!851 = !DILocalVariable(name: "r", scope: !840, file: !100, line: 150, type: !25)
!852 = !DILocation(line: 144, column: 43, scope: !840)
!853 = !DILocation(line: 144, column: 51, scope: !840)
!854 = !DILocation(line: 144, column: 58, scope: !840)
!855 = !DILocation(line: 146, column: 17, scope: !840)
!856 = !DILocation(line: 148, column: 6, scope: !840)
!857 = !DILocation(line: 148, column: 62, scope: !840)
!858 = !DILocation(line: 148, column: 57, scope: !840)
!859 = !DILocation(line: 147, column: 17, scope: !840)
!860 = !DILocation(line: 149, column: 18, scope: !840)
!861 = !DILocation(line: 149, column: 15, scope: !840)
!862 = !DILocation(line: 149, column: 7, scope: !840)
!863 = !DILocation(line: 150, column: 12, scope: !840)
!864 = !DILocation(line: 150, column: 15, scope: !840)
!865 = !DILocation(line: 150, column: 25, scope: !840)
!866 = !DILocation(line: 150, column: 7, scope: !840)
!867 = !DILocation(line: 151, column: 13, scope: !840)
!868 = !DILocation(line: 151, column: 18, scope: !840)
!869 = !DILocation(line: 151, column: 23, scope: !840)
!870 = !DILocation(line: 151, column: 6, scope: !840)
!871 = !DILocation(line: 152, column: 3, scope: !840)
!872 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !873, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !875)
!873 = !DISubroutineType(types: !874)
!874 = !{!25, !802, !25}
!875 = !{!876, !877, !878}
!876 = !DILocalVariable(name: "o", arg: 1, scope: !872, file: !100, line: 160, type: !802)
!877 = !DILocalVariable(name: "i", arg: 2, scope: !872, file: !100, line: 160, type: !25)
!878 = !DILocalVariable(name: "r", scope: !872, file: !100, line: 162, type: !25)
!879 = !DILocation(line: 160, column: 44, scope: !872)
!880 = !DILocation(line: 160, column: 51, scope: !872)
!881 = !DILocation(line: 163, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !872, file: !100, line: 163, column: 7)
!883 = !DILocation(line: 163, column: 7, scope: !872)
!884 = !DILocation(line: 165, column: 10, scope: !872)
!885 = !{!826, !633, i64 4}
!886 = !DILocation(line: 162, column: 7, scope: !872)
!887 = !DILocation(line: 166, column: 12, scope: !872)
!888 = !DILocation(line: 167, column: 3, scope: !872)
!889 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !890, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !802, !6, !6}
!892 = !{!893, !894, !895}
!893 = !DILocalVariable(name: "o", arg: 1, scope: !889, file: !100, line: 171, type: !802)
!894 = !DILocalVariable(name: "left_quote", arg: 2, scope: !889, file: !100, line: 172, type: !6)
!895 = !DILocalVariable(name: "right_quote", arg: 3, scope: !889, file: !100, line: 172, type: !6)
!896 = !DILocation(line: 171, column: 45, scope: !889)
!897 = !DILocation(line: 172, column: 33, scope: !889)
!898 = !DILocation(line: 172, column: 57, scope: !889)
!899 = !DILocation(line: 174, column: 8, scope: !900)
!900 = distinct !DILexicalBlock(scope: !889, file: !100, line: 174, column: 7)
!901 = !DILocation(line: 174, column: 7, scope: !889)
!902 = !DILocation(line: 176, column: 6, scope: !889)
!903 = !DILocation(line: 176, column: 12, scope: !889)
!904 = !DILocation(line: 177, column: 8, scope: !905)
!905 = distinct !DILexicalBlock(scope: !889, file: !100, line: 177, column: 7)
!906 = !DILocation(line: 177, column: 23, scope: !905)
!907 = !DILocation(line: 177, column: 19, scope: !905)
!908 = !DILocation(line: 178, column: 5, scope: !905)
!909 = !DILocation(line: 179, column: 6, scope: !889)
!910 = !DILocation(line: 179, column: 17, scope: !889)
!911 = !{!826, !583, i64 40}
!912 = !DILocation(line: 180, column: 6, scope: !889)
!913 = !DILocation(line: 180, column: 18, scope: !889)
!914 = !{!826, !583, i64 48}
!915 = !DILocation(line: 181, column: 1, scope: !889)
!916 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !917, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !919)
!917 = !DISubroutineType(types: !918)
!918 = !{!94, !50, !94, !6, !94, !818}
!919 = !{!920, !921, !922, !923, !924, !925, !926, !927}
!920 = !DILocalVariable(name: "buffer", arg: 1, scope: !916, file: !100, line: 776, type: !50)
!921 = !DILocalVariable(name: "buffersize", arg: 2, scope: !916, file: !100, line: 776, type: !94)
!922 = !DILocalVariable(name: "arg", arg: 3, scope: !916, file: !100, line: 777, type: !6)
!923 = !DILocalVariable(name: "argsize", arg: 4, scope: !916, file: !100, line: 777, type: !94)
!924 = !DILocalVariable(name: "o", arg: 5, scope: !916, file: !100, line: 778, type: !818)
!925 = !DILocalVariable(name: "p", scope: !916, file: !100, line: 780, type: !818)
!926 = !DILocalVariable(name: "e", scope: !916, file: !100, line: 781, type: !25)
!927 = !DILocalVariable(name: "r", scope: !916, file: !100, line: 782, type: !94)
!928 = !DILocation(line: 776, column: 24, scope: !916)
!929 = !DILocation(line: 776, column: 39, scope: !916)
!930 = !DILocation(line: 777, column: 30, scope: !916)
!931 = !DILocation(line: 777, column: 42, scope: !916)
!932 = !DILocation(line: 778, column: 48, scope: !916)
!933 = !DILocation(line: 780, column: 37, scope: !916)
!934 = !DILocation(line: 780, column: 33, scope: !916)
!935 = !DILocation(line: 781, column: 11, scope: !916)
!936 = !DILocation(line: 781, column: 7, scope: !916)
!937 = !DILocation(line: 783, column: 43, scope: !916)
!938 = !DILocation(line: 783, column: 53, scope: !916)
!939 = !DILocation(line: 783, column: 60, scope: !916)
!940 = !DILocation(line: 784, column: 43, scope: !916)
!941 = !DILocation(line: 784, column: 58, scope: !916)
!942 = !DILocation(line: 782, column: 14, scope: !916)
!943 = !DILocation(line: 782, column: 10, scope: !916)
!944 = !DILocation(line: 785, column: 9, scope: !916)
!945 = !DILocation(line: 786, column: 3, scope: !916)
!946 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !947, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !951)
!947 = !DISubroutineType(types: !948)
!948 = !{!94, !50, !94, !6, !94, !58, !25, !949, !6, !6}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!951 = !{!952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !976, !977, !978, !979, !980, !983, !984, !1002, !1005, !1006, !1013}
!952 = !DILocalVariable(name: "buffer", arg: 1, scope: !946, file: !100, line: 248, type: !50)
!953 = !DILocalVariable(name: "buffersize", arg: 2, scope: !946, file: !100, line: 248, type: !94)
!954 = !DILocalVariable(name: "arg", arg: 3, scope: !946, file: !100, line: 249, type: !6)
!955 = !DILocalVariable(name: "argsize", arg: 4, scope: !946, file: !100, line: 249, type: !94)
!956 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !946, file: !100, line: 250, type: !58)
!957 = !DILocalVariable(name: "flags", arg: 6, scope: !946, file: !100, line: 250, type: !25)
!958 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !946, file: !100, line: 251, type: !949)
!959 = !DILocalVariable(name: "left_quote", arg: 8, scope: !946, file: !100, line: 252, type: !6)
!960 = !DILocalVariable(name: "right_quote", arg: 9, scope: !946, file: !100, line: 253, type: !6)
!961 = !DILocalVariable(name: "i", scope: !946, file: !100, line: 255, type: !94)
!962 = !DILocalVariable(name: "len", scope: !946, file: !100, line: 256, type: !94)
!963 = !DILocalVariable(name: "orig_buffersize", scope: !946, file: !100, line: 257, type: !94)
!964 = !DILocalVariable(name: "quote_string", scope: !946, file: !100, line: 258, type: !6)
!965 = !DILocalVariable(name: "quote_string_len", scope: !946, file: !100, line: 259, type: !94)
!966 = !DILocalVariable(name: "backslash_escapes", scope: !946, file: !100, line: 260, type: !17)
!967 = !DILocalVariable(name: "unibyte_locale", scope: !946, file: !100, line: 261, type: !17)
!968 = !DILocalVariable(name: "elide_outer_quotes", scope: !946, file: !100, line: 262, type: !17)
!969 = !DILocalVariable(name: "pending_shell_escape_end", scope: !946, file: !100, line: 263, type: !17)
!970 = !DILocalVariable(name: "encountered_single_quote", scope: !946, file: !100, line: 264, type: !17)
!971 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !946, file: !100, line: 265, type: !17)
!972 = !DILocalVariable(name: "c", scope: !973, file: !100, line: 394, type: !494)
!973 = distinct !DILexicalBlock(scope: !974, file: !100, line: 393, column: 5)
!974 = distinct !DILexicalBlock(scope: !975, file: !100, line: 392, column: 3)
!975 = distinct !DILexicalBlock(scope: !946, file: !100, line: 392, column: 3)
!976 = !DILocalVariable(name: "esc", scope: !973, file: !100, line: 395, type: !494)
!977 = !DILocalVariable(name: "is_right_quote", scope: !973, file: !100, line: 396, type: !17)
!978 = !DILocalVariable(name: "escaping", scope: !973, file: !100, line: 397, type: !17)
!979 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !973, file: !100, line: 398, type: !17)
!980 = !DILocalVariable(name: "m", scope: !981, file: !100, line: 602, type: !94)
!981 = distinct !DILexicalBlock(scope: !982, file: !100, line: 600, column: 11)
!982 = distinct !DILexicalBlock(scope: !973, file: !100, line: 418, column: 9)
!983 = !DILocalVariable(name: "printable", scope: !981, file: !100, line: 604, type: !17)
!984 = !DILocalVariable(name: "mbstate", scope: !985, file: !100, line: 613, type: !987)
!985 = distinct !DILexicalBlock(scope: !986, file: !100, line: 612, column: 15)
!986 = distinct !DILexicalBlock(scope: !981, file: !100, line: 606, column: 17)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !988, line: 6, baseType: !989)
!988 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !990, line: 21, baseType: !991)
!990 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !990, line: 13, size: 64, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !991, file: !990, line: 15, baseType: !25, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !991, file: !990, line: 20, baseType: !995, size: 32, offset: 32)
!995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !991, file: !990, line: 16, size: 32, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !995, file: !990, line: 18, baseType: !113, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !995, file: !990, line: 19, baseType: !999, size: 32)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 4)
!1002 = !DILocalVariable(name: "w", scope: !1003, file: !100, line: 623, type: !1004)
!1003 = distinct !DILexicalBlock(scope: !985, file: !100, line: 622, column: 19)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1005 = !DILocalVariable(name: "bytes", scope: !1003, file: !100, line: 624, type: !94)
!1006 = !DILocalVariable(name: "j", scope: !1007, file: !100, line: 649, type: !94)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !100, line: 648, column: 27)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !100, line: 646, column: 29)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 641, column: 23)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !100, line: 633, column: 30)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 628, column: 30)
!1012 = distinct !DILexicalBlock(scope: !1003, file: !100, line: 626, column: 25)
!1013 = !DILocalVariable(name: "ilim", scope: !1014, file: !100, line: 676, type: !94)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !100, line: 673, column: 15)
!1015 = distinct !DILexicalBlock(scope: !981, file: !100, line: 672, column: 17)
!1016 = !DILocation(line: 248, column: 33, scope: !946)
!1017 = !DILocation(line: 248, column: 48, scope: !946)
!1018 = !DILocation(line: 249, column: 39, scope: !946)
!1019 = !DILocation(line: 249, column: 51, scope: !946)
!1020 = !DILocation(line: 250, column: 46, scope: !946)
!1021 = !DILocation(line: 250, column: 65, scope: !946)
!1022 = !DILocation(line: 251, column: 47, scope: !946)
!1023 = !DILocation(line: 252, column: 39, scope: !946)
!1024 = !DILocation(line: 253, column: 39, scope: !946)
!1025 = !DILocation(line: 256, column: 10, scope: !946)
!1026 = !DILocation(line: 257, column: 10, scope: !946)
!1027 = !DILocation(line: 258, column: 15, scope: !946)
!1028 = !DILocation(line: 259, column: 10, scope: !946)
!1029 = !DILocation(line: 260, column: 8, scope: !946)
!1030 = !DILocation(line: 261, column: 25, scope: !946)
!1031 = !DILocation(line: 261, column: 36, scope: !946)
!1032 = !DILocation(line: 262, column: 8, scope: !946)
!1033 = !DILocation(line: 263, column: 8, scope: !946)
!1034 = !DILocation(line: 264, column: 8, scope: !946)
!1035 = !DILocation(line: 265, column: 8, scope: !946)
!1036 = !DILocation(line: 265, column: 3, scope: !946)
!1037 = !DILocation(line: 308, column: 3, scope: !946)
!1038 = !DILocation(line: 315, column: 11, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !946, file: !100, line: 309, column: 5)
!1040 = !DILocation(line: 315, column: 12, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1039, file: !100, line: 315, column: 11)
!1042 = !DILocation(line: 316, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !100, line: 316, column: 9)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !100, line: 316, column: 9)
!1045 = !DILocation(line: 316, column: 9, scope: !1044)
!1046 = !{!584, !584, i64 0}
!1047 = !DILocation(line: 354, column: 26, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !100, line: 332, column: 11)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !100, line: 331, column: 13)
!1050 = distinct !DILexicalBlock(scope: !1039, file: !100, line: 330, column: 7)
!1051 = !DILocation(line: 355, column: 27, scope: !1048)
!1052 = !DILocation(line: 356, column: 11, scope: !1048)
!1053 = !DILocation(line: 357, column: 14, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !100, line: 357, column: 13)
!1055 = !DILocation(line: 357, column: 13, scope: !1050)
!1056 = !DILocation(line: 358, column: 43, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !100, line: 358, column: 11)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !100, line: 358, column: 11)
!1059 = !DILocation(line: 358, column: 11, scope: !1058)
!1060 = !DILocation(line: 359, column: 13, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !100, line: 359, column: 13)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !100, line: 359, column: 13)
!1063 = !DILocation(line: 359, column: 13, scope: !1062)
!1064 = !DILocation(line: 358, column: 70, scope: !1057)
!1065 = distinct !{!1065, !1059, !1066}
!1066 = !DILocation(line: 359, column: 13, scope: !1058)
!1067 = !DILocation(line: 362, column: 28, scope: !1050)
!1068 = !DILocation(line: 364, column: 7, scope: !1039)
!1069 = !DILocation(line: 367, column: 7, scope: !1039)
!1070 = !DILocation(line: 370, column: 7, scope: !1039)
!1071 = !DILocation(line: 373, column: 12, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1039, file: !100, line: 373, column: 11)
!1073 = !DILocation(line: 373, column: 11, scope: !1039)
!1074 = !DILocation(line: 378, column: 12, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1039, file: !100, line: 378, column: 11)
!1076 = !DILocation(line: 378, column: 11, scope: !1039)
!1077 = !DILocation(line: 379, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !100, line: 379, column: 9)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !100, line: 379, column: 9)
!1080 = !DILocation(line: 379, column: 9, scope: !1079)
!1081 = !DILocation(line: 386, column: 7, scope: !1039)
!1082 = !DILocation(line: 389, column: 7, scope: !1039)
!1083 = !DILocation(line: 255, column: 10, scope: !946)
!1084 = !DILocation(line: 392, column: 8, scope: !975)
!1085 = !DILocation(line: 392, column: 27, scope: !974)
!1086 = !DILocation(line: 392, column: 19, scope: !974)
!1087 = !DILocation(line: 392, column: 60, scope: !974)
!1088 = !DILocation(line: 392, column: 3, scope: !975)
!1089 = !DILocation(line: 392, column: 41, scope: !974)
!1090 = !DILocation(line: 392, column: 48, scope: !974)
!1091 = !DILocation(line: 396, column: 12, scope: !973)
!1092 = !DILocation(line: 397, column: 12, scope: !973)
!1093 = !DILocation(line: 398, column: 12, scope: !973)
!1094 = !DILocation(line: 401, column: 11, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !973, file: !100, line: 400, column: 11)
!1096 = !DILocation(line: 403, column: 17, scope: !1095)
!1097 = !DILocation(line: 404, column: 39, scope: !1095)
!1098 = !DILocation(line: 408, column: 32, scope: !1095)
!1099 = !DILocation(line: 404, column: 19, scope: !1095)
!1100 = !DILocation(line: 404, column: 15, scope: !1095)
!1101 = !DILocation(line: 409, column: 11, scope: !1095)
!1102 = !DILocation(line: 409, column: 26, scope: !1095)
!1103 = !DILocation(line: 409, column: 14, scope: !1095)
!1104 = !DILocation(line: 409, column: 63, scope: !1095)
!1105 = !DILocation(line: 400, column: 11, scope: !973)
!1106 = !DILocation(line: 416, column: 11, scope: !973)
!1107 = !DILocation(line: 394, column: 21, scope: !973)
!1108 = !DILocation(line: 417, column: 7, scope: !973)
!1109 = !DILocation(line: 420, column: 15, scope: !982)
!1110 = !DILocation(line: 422, column: 15, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !100, line: 422, column: 15)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !100, line: 421, column: 13)
!1113 = distinct !DILexicalBlock(scope: !982, file: !100, line: 420, column: 15)
!1114 = !DILocation(line: 422, column: 15, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !100, line: 422, column: 15)
!1116 = !DILocation(line: 422, column: 15, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !100, line: 422, column: 15)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !100, line: 422, column: 15)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !100, line: 422, column: 15)
!1120 = !DILocation(line: 422, column: 15, scope: !1118)
!1121 = !DILocation(line: 422, column: 15, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !100, line: 422, column: 15)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !100, line: 422, column: 15)
!1124 = !DILocation(line: 422, column: 15, scope: !1123)
!1125 = !DILocation(line: 422, column: 15, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !100, line: 422, column: 15)
!1127 = distinct !DILexicalBlock(scope: !1119, file: !100, line: 422, column: 15)
!1128 = !DILocation(line: 422, column: 15, scope: !1127)
!1129 = !DILocation(line: 422, column: 15, scope: !1119)
!1130 = !DILocation(line: 422, column: 15, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !100, line: 422, column: 15)
!1132 = distinct !DILexicalBlock(scope: !1111, file: !100, line: 422, column: 15)
!1133 = !DILocation(line: 422, column: 15, scope: !1132)
!1134 = !DILocation(line: 430, column: 19, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1112, file: !100, line: 429, column: 19)
!1136 = !DILocation(line: 430, column: 24, scope: !1135)
!1137 = !DILocation(line: 430, column: 28, scope: !1135)
!1138 = !DILocation(line: 430, column: 38, scope: !1135)
!1139 = !DILocation(line: 430, column: 48, scope: !1135)
!1140 = !DILocation(line: 430, column: 59, scope: !1135)
!1141 = !DILocation(line: 432, column: 19, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !100, line: 432, column: 19)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !100, line: 432, column: 19)
!1144 = distinct !DILexicalBlock(scope: !1135, file: !100, line: 431, column: 17)
!1145 = !DILocation(line: 432, column: 19, scope: !1143)
!1146 = !DILocation(line: 433, column: 19, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !100, line: 433, column: 19)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !100, line: 433, column: 19)
!1149 = !DILocation(line: 433, column: 19, scope: !1148)
!1150 = !DILocation(line: 434, column: 17, scope: !1144)
!1151 = !DILocation(line: 441, column: 20, scope: !1113)
!1152 = !DILocation(line: 446, column: 11, scope: !982)
!1153 = !DILocation(line: 449, column: 19, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !982, file: !100, line: 447, column: 13)
!1155 = !DILocation(line: 455, column: 19, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1154, file: !100, line: 454, column: 19)
!1157 = !DILocation(line: 455, column: 24, scope: !1156)
!1158 = !DILocation(line: 455, column: 28, scope: !1156)
!1159 = !DILocation(line: 455, column: 38, scope: !1156)
!1160 = !DILocation(line: 455, column: 47, scope: !1156)
!1161 = !DILocation(line: 455, column: 41, scope: !1156)
!1162 = !DILocation(line: 455, column: 52, scope: !1156)
!1163 = !DILocation(line: 454, column: 19, scope: !1154)
!1164 = !DILocation(line: 456, column: 25, scope: !1156)
!1165 = !DILocation(line: 456, column: 17, scope: !1156)
!1166 = !DILocation(line: 463, column: 25, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1156, file: !100, line: 457, column: 19)
!1168 = !DILocation(line: 467, column: 21, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !100, line: 467, column: 21)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !100, line: 467, column: 21)
!1171 = !DILocation(line: 467, column: 21, scope: !1170)
!1172 = !DILocation(line: 468, column: 21, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !100, line: 468, column: 21)
!1174 = distinct !DILexicalBlock(scope: !1167, file: !100, line: 468, column: 21)
!1175 = !DILocation(line: 468, column: 21, scope: !1174)
!1176 = !DILocation(line: 469, column: 21, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !100, line: 469, column: 21)
!1178 = distinct !DILexicalBlock(scope: !1167, file: !100, line: 469, column: 21)
!1179 = !DILocation(line: 469, column: 21, scope: !1178)
!1180 = !DILocation(line: 470, column: 21, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !100, line: 470, column: 21)
!1182 = distinct !DILexicalBlock(scope: !1167, file: !100, line: 470, column: 21)
!1183 = !DILocation(line: 470, column: 21, scope: !1182)
!1184 = !DILocation(line: 471, column: 21, scope: !1167)
!1185 = !DILocation(line: 395, column: 21, scope: !973)
!1186 = !DILocation(line: 484, column: 31, scope: !982)
!1187 = !DILocation(line: 485, column: 31, scope: !982)
!1188 = !DILocation(line: 487, column: 31, scope: !982)
!1189 = !DILocation(line: 488, column: 31, scope: !982)
!1190 = !DILocation(line: 489, column: 31, scope: !982)
!1191 = !DILocation(line: 492, column: 15, scope: !982)
!1192 = !DILocation(line: 494, column: 19, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !100, line: 493, column: 13)
!1194 = distinct !DILexicalBlock(scope: !982, file: !100, line: 492, column: 15)
!1195 = !DILocation(line: 501, column: 33, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !982, file: !100, line: 501, column: 15)
!1197 = !DILocation(line: 506, column: 15, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !982, file: !100, line: 505, column: 15)
!1199 = !DILocation(line: 510, column: 15, scope: !982)
!1200 = !DILocation(line: 518, column: 26, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !982, file: !100, line: 518, column: 15)
!1202 = !DILocation(line: 518, column: 15, scope: !982)
!1203 = !DILocation(line: 518, column: 40, scope: !1201)
!1204 = !DILocation(line: 518, column: 47, scope: !1201)
!1205 = !DILocation(line: 522, column: 17, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !982, file: !100, line: 522, column: 15)
!1207 = !DILocation(line: 518, column: 18, scope: !1201)
!1208 = !DILocation(line: 518, column: 65, scope: !1201)
!1209 = !DILocation(line: 522, column: 15, scope: !982)
!1210 = !DILocation(line: 526, column: 11, scope: !982)
!1211 = !DILocation(line: 541, column: 15, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !982, file: !100, line: 540, column: 15)
!1213 = !DILocation(line: 548, column: 15, scope: !982)
!1214 = !DILocation(line: 550, column: 19, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !100, line: 549, column: 13)
!1216 = distinct !DILexicalBlock(scope: !982, file: !100, line: 548, column: 15)
!1217 = !DILocation(line: 553, column: 19, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !100, line: 553, column: 19)
!1219 = !DILocation(line: 553, column: 35, scope: !1218)
!1220 = !DILocation(line: 553, column: 30, scope: !1218)
!1221 = !DILocation(line: 562, column: 15, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !100, line: 562, column: 15)
!1223 = distinct !DILexicalBlock(scope: !1215, file: !100, line: 562, column: 15)
!1224 = !DILocation(line: 562, column: 15, scope: !1223)
!1225 = !DILocation(line: 563, column: 15, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !100, line: 563, column: 15)
!1227 = distinct !DILexicalBlock(scope: !1215, file: !100, line: 563, column: 15)
!1228 = !DILocation(line: 563, column: 15, scope: !1227)
!1229 = !DILocation(line: 564, column: 15, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !100, line: 564, column: 15)
!1231 = distinct !DILexicalBlock(scope: !1215, file: !100, line: 564, column: 15)
!1232 = !DILocation(line: 564, column: 15, scope: !1231)
!1233 = !DILocation(line: 566, column: 13, scope: !1215)
!1234 = !DILocation(line: 606, column: 17, scope: !981)
!1235 = !DILocation(line: 602, column: 20, scope: !981)
!1236 = !DILocation(line: 609, column: 29, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !986, file: !100, line: 607, column: 15)
!1238 = !{!1239, !1239, i64 0}
!1239 = !{!"short", !584, i64 0}
!1240 = !DILocation(line: 609, column: 27, scope: !1237)
!1241 = !DILocation(line: 604, column: 18, scope: !981)
!1242 = !DILocation(line: 610, column: 15, scope: !1237)
!1243 = !DILocation(line: 613, column: 17, scope: !985)
!1244 = !DILocation(line: 614, column: 17, scope: !985)
!1245 = !DILocation(line: 618, column: 29, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !985, file: !100, line: 618, column: 21)
!1247 = !DILocation(line: 618, column: 21, scope: !985)
!1248 = !DILocation(line: 619, column: 29, scope: !1246)
!1249 = !DILocation(line: 619, column: 19, scope: !1246)
!1250 = !DILocation(line: 621, column: 17, scope: !985)
!1251 = distinct !{!1251, !1250, !1252}
!1252 = !DILocation(line: 667, column: 44, scope: !985)
!1253 = !DILocation(line: 623, column: 21, scope: !1003)
!1254 = !DILocation(line: 624, column: 56, scope: !1003)
!1255 = !DILocation(line: 624, column: 50, scope: !1003)
!1256 = !DILocation(line: 625, column: 53, scope: !1003)
!1257 = !DILocation(line: 613, column: 27, scope: !985)
!1258 = !DILocation(line: 623, column: 29, scope: !1003)
!1259 = !DILocation(line: 624, column: 36, scope: !1003)
!1260 = !DILocation(line: 624, column: 28, scope: !1003)
!1261 = !DILocation(line: 626, column: 25, scope: !1003)
!1262 = !DILocation(line: 636, column: 38, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 634, column: 23)
!1264 = !DILocation(line: 636, column: 48, scope: !1263)
!1265 = !DILocation(line: 636, column: 51, scope: !1263)
!1266 = !DILocation(line: 636, column: 25, scope: !1263)
!1267 = !DILocation(line: 637, column: 28, scope: !1263)
!1268 = !DILocation(line: 636, column: 34, scope: !1263)
!1269 = distinct !{!1269, !1266, !1267}
!1270 = !DILocation(line: 650, column: 43, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !100, line: 650, column: 29)
!1272 = distinct !DILexicalBlock(scope: !1007, file: !100, line: 650, column: 29)
!1273 = !DILocation(line: 647, column: 29, scope: !1008)
!1274 = !DILocation(line: 649, column: 36, scope: !1007)
!1275 = !DILocation(line: 651, column: 49, scope: !1271)
!1276 = !DILocation(line: 651, column: 39, scope: !1271)
!1277 = !DILocation(line: 651, column: 31, scope: !1271)
!1278 = !DILocation(line: 650, column: 53, scope: !1271)
!1279 = !DILocation(line: 650, column: 29, scope: !1272)
!1280 = distinct !{!1280, !1279, !1281}
!1281 = !DILocation(line: 659, column: 33, scope: !1272)
!1282 = !DILocation(line: 666, column: 19, scope: !985)
!1283 = !DILocation(line: 662, column: 41, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1009, file: !100, line: 662, column: 29)
!1285 = !DILocation(line: 662, column: 31, scope: !1284)
!1286 = !DILocation(line: 662, column: 29, scope: !1009)
!1287 = !DILocation(line: 664, column: 27, scope: !1009)
!1288 = !DILocation(line: 667, column: 26, scope: !985)
!1289 = !DILocation(line: 667, column: 24, scope: !985)
!1290 = !DILocation(line: 666, column: 19, scope: !1003)
!1291 = !DILocation(line: 668, column: 15, scope: !986)
!1292 = !DILocation(line: 670, column: 40, scope: !981)
!1293 = !DILocation(line: 672, column: 19, scope: !1015)
!1294 = !DILocation(line: 672, column: 45, scope: !1015)
!1295 = !DILocation(line: 672, column: 23, scope: !1015)
!1296 = !DILocation(line: 676, column: 33, scope: !1014)
!1297 = !DILocation(line: 676, column: 24, scope: !1014)
!1298 = !DILocation(line: 678, column: 17, scope: !1014)
!1299 = !DILocation(line: 680, column: 43, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 680, column: 25)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !100, line: 679, column: 19)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !100, line: 678, column: 17)
!1303 = distinct !DILexicalBlock(scope: !1014, file: !100, line: 678, column: 17)
!1304 = !DILocation(line: 682, column: 25, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !100, line: 682, column: 25)
!1306 = distinct !DILexicalBlock(scope: !1300, file: !100, line: 681, column: 23)
!1307 = !DILocation(line: 682, column: 25, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1305, file: !100, line: 682, column: 25)
!1309 = !DILocation(line: 682, column: 25, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !100, line: 682, column: 25)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !100, line: 682, column: 25)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !100, line: 682, column: 25)
!1313 = !DILocation(line: 682, column: 25, scope: !1311)
!1314 = !DILocation(line: 682, column: 25, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !100, line: 682, column: 25)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !100, line: 682, column: 25)
!1317 = !DILocation(line: 682, column: 25, scope: !1316)
!1318 = !DILocation(line: 682, column: 25, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !100, line: 682, column: 25)
!1320 = distinct !DILexicalBlock(scope: !1312, file: !100, line: 682, column: 25)
!1321 = !DILocation(line: 682, column: 25, scope: !1320)
!1322 = !DILocation(line: 682, column: 25, scope: !1312)
!1323 = !DILocation(line: 682, column: 25, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !100, line: 682, column: 25)
!1325 = distinct !DILexicalBlock(scope: !1305, file: !100, line: 682, column: 25)
!1326 = !DILocation(line: 682, column: 25, scope: !1325)
!1327 = !DILocation(line: 683, column: 25, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !100, line: 683, column: 25)
!1329 = distinct !DILexicalBlock(scope: !1306, file: !100, line: 683, column: 25)
!1330 = !DILocation(line: 683, column: 25, scope: !1329)
!1331 = !DILocation(line: 684, column: 25, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !100, line: 684, column: 25)
!1333 = distinct !DILexicalBlock(scope: !1306, file: !100, line: 684, column: 25)
!1334 = !DILocation(line: 684, column: 25, scope: !1333)
!1335 = !DILocation(line: 685, column: 38, scope: !1306)
!1336 = !DILocation(line: 685, column: 33, scope: !1306)
!1337 = !DILocation(line: 686, column: 23, scope: !1306)
!1338 = !DILocation(line: 687, column: 30, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1300, file: !100, line: 687, column: 30)
!1340 = !DILocation(line: 687, column: 30, scope: !1300)
!1341 = !DILocation(line: 689, column: 25, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !100, line: 689, column: 25)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !100, line: 689, column: 25)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !100, line: 688, column: 23)
!1345 = !DILocation(line: 689, column: 25, scope: !1343)
!1346 = !DILocation(line: 691, column: 23, scope: !1344)
!1347 = !DILocation(line: 692, column: 35, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 692, column: 25)
!1349 = !DILocation(line: 692, column: 30, scope: !1348)
!1350 = !DILocation(line: 692, column: 25, scope: !1301)
!1351 = !DILocation(line: 694, column: 21, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !100, line: 694, column: 21)
!1353 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 694, column: 21)
!1354 = !DILocation(line: 694, column: 21, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !100, line: 694, column: 21)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !100, line: 694, column: 21)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !100, line: 694, column: 21)
!1358 = !DILocation(line: 694, column: 21, scope: !1356)
!1359 = !DILocation(line: 694, column: 21, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !100, line: 694, column: 21)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !100, line: 694, column: 21)
!1362 = !DILocation(line: 694, column: 21, scope: !1361)
!1363 = !DILocation(line: 694, column: 21, scope: !1357)
!1364 = !DILocation(line: 695, column: 21, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !100, line: 695, column: 21)
!1366 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 695, column: 21)
!1367 = !DILocation(line: 695, column: 21, scope: !1366)
!1368 = !DILocation(line: 696, column: 25, scope: !1301)
!1369 = !DILocation(line: 678, column: 17, scope: !1302)
!1370 = distinct !{!1370, !1371, !1372}
!1371 = !DILocation(line: 678, column: 17, scope: !1303)
!1372 = !DILocation(line: 697, column: 19, scope: !1303)
!1373 = !DILocation(line: 704, column: 34, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !973, file: !100, line: 704, column: 11)
!1375 = !DILocation(line: 706, column: 14, scope: !1374)
!1376 = !DILocation(line: 707, column: 14, scope: !1374)
!1377 = !DILocation(line: 707, column: 35, scope: !1374)
!1378 = !DILocation(line: 707, column: 17, scope: !1374)
!1379 = !DILocation(line: 707, column: 53, scope: !1374)
!1380 = !DILocation(line: 707, column: 47, scope: !1374)
!1381 = !DILocation(line: 707, column: 65, scope: !1374)
!1382 = !DILocation(line: 708, column: 15, scope: !1374)
!1383 = !DILocation(line: 708, column: 11, scope: !1374)
!1384 = !DILocation(line: 704, column: 11, scope: !973)
!1385 = !DILocation(line: 712, column: 7, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !973, file: !100, line: 712, column: 7)
!1387 = !DILocation(line: 712, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1386, file: !100, line: 712, column: 7)
!1389 = !DILocation(line: 712, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !100, line: 712, column: 7)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !100, line: 712, column: 7)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !100, line: 712, column: 7)
!1393 = !DILocation(line: 712, column: 7, scope: !1391)
!1394 = !DILocation(line: 712, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !100, line: 712, column: 7)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !100, line: 712, column: 7)
!1397 = !DILocation(line: 712, column: 7, scope: !1396)
!1398 = !DILocation(line: 712, column: 7, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !100, line: 712, column: 7)
!1400 = distinct !DILexicalBlock(scope: !1392, file: !100, line: 712, column: 7)
!1401 = !DILocation(line: 712, column: 7, scope: !1400)
!1402 = !DILocation(line: 712, column: 7, scope: !1392)
!1403 = !DILocation(line: 712, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !100, line: 712, column: 7)
!1405 = distinct !DILexicalBlock(scope: !1386, file: !100, line: 712, column: 7)
!1406 = !DILocation(line: 712, column: 7, scope: !1405)
!1407 = !DILocation(line: 715, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !100, line: 715, column: 7)
!1409 = distinct !DILexicalBlock(scope: !973, file: !100, line: 715, column: 7)
!1410 = !DILocation(line: 715, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !100, line: 715, column: 7)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !100, line: 715, column: 7)
!1413 = distinct !DILexicalBlock(scope: !1408, file: !100, line: 715, column: 7)
!1414 = !DILocation(line: 715, column: 7, scope: !1412)
!1415 = !DILocation(line: 715, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !100, line: 715, column: 7)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !100, line: 715, column: 7)
!1418 = !DILocation(line: 715, column: 7, scope: !1417)
!1419 = !DILocation(line: 715, column: 7, scope: !1413)
!1420 = !DILocation(line: 716, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !100, line: 716, column: 7)
!1422 = distinct !DILexicalBlock(scope: !973, file: !100, line: 716, column: 7)
!1423 = !DILocation(line: 716, column: 7, scope: !1422)
!1424 = !DILocation(line: 718, column: 13, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !973, file: !100, line: 718, column: 11)
!1426 = !DILocation(line: 718, column: 11, scope: !973)
!1427 = !DILocation(line: 720, column: 5, scope: !974)
!1428 = !DILocation(line: 392, column: 75, scope: !974)
!1429 = !DILocation(line: 392, column: 3, scope: !974)
!1430 = distinct !{!1430, !1088, !1431}
!1431 = !DILocation(line: 720, column: 5, scope: !975)
!1432 = !DILocation(line: 722, column: 11, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !946, file: !100, line: 722, column: 7)
!1434 = !DILocation(line: 722, column: 16, scope: !1433)
!1435 = !DILocation(line: 730, column: 51, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !946, file: !100, line: 730, column: 7)
!1437 = !DILocation(line: 731, column: 10, scope: !1436)
!1438 = !DILocation(line: 733, column: 11, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !100, line: 733, column: 11)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !100, line: 732, column: 5)
!1441 = !DILocation(line: 733, column: 11, scope: !1440)
!1442 = !DILocation(line: 734, column: 16, scope: !1439)
!1443 = !DILocation(line: 734, column: 9, scope: !1439)
!1444 = !DILocation(line: 738, column: 18, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1439, file: !100, line: 738, column: 16)
!1446 = !DILocation(line: 738, column: 32, scope: !1445)
!1447 = !DILocation(line: 738, column: 29, scope: !1445)
!1448 = !DILocation(line: 747, column: 7, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !946, file: !100, line: 747, column: 7)
!1450 = !DILocation(line: 747, column: 20, scope: !1449)
!1451 = !DILocation(line: 748, column: 12, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !100, line: 748, column: 5)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !100, line: 748, column: 5)
!1454 = !DILocation(line: 748, column: 5, scope: !1453)
!1455 = !DILocation(line: 749, column: 7, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !100, line: 749, column: 7)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !100, line: 749, column: 7)
!1458 = !DILocation(line: 749, column: 7, scope: !1457)
!1459 = !DILocation(line: 748, column: 39, scope: !1452)
!1460 = distinct !{!1460, !1454, !1461}
!1461 = !DILocation(line: 749, column: 7, scope: !1453)
!1462 = !DILocation(line: 751, column: 11, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !946, file: !100, line: 751, column: 7)
!1464 = !DILocation(line: 751, column: 7, scope: !946)
!1465 = !DILocation(line: 752, column: 5, scope: !1463)
!1466 = !DILocation(line: 752, column: 17, scope: !1463)
!1467 = !DILocation(line: 758, column: 21, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !946, file: !100, line: 758, column: 7)
!1469 = !DILocation(line: 758, column: 54, scope: !1468)
!1470 = !DILocation(line: 758, column: 51, scope: !1468)
!1471 = !DILocation(line: 762, column: 42, scope: !946)
!1472 = !DILocation(line: 760, column: 10, scope: !946)
!1473 = !DILocation(line: 760, column: 3, scope: !946)
!1474 = !DILocation(line: 764, column: 1, scope: !946)
!1475 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1476, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!6, !6, !58}
!1478 = !{!1479, !1480, !1481, !1482}
!1479 = !DILocalVariable(name: "msgid", arg: 1, scope: !1475, file: !100, line: 199, type: !6)
!1480 = !DILocalVariable(name: "s", arg: 2, scope: !1475, file: !100, line: 199, type: !58)
!1481 = !DILocalVariable(name: "translation", scope: !1475, file: !100, line: 201, type: !6)
!1482 = !DILocalVariable(name: "locale_code", scope: !1475, file: !100, line: 202, type: !6)
!1483 = !DILocation(line: 199, column: 28, scope: !1475)
!1484 = !DILocation(line: 199, column: 54, scope: !1475)
!1485 = !DILocation(line: 201, column: 29, scope: !1475)
!1486 = !DILocation(line: 201, column: 15, scope: !1475)
!1487 = !DILocation(line: 204, column: 19, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1475, file: !100, line: 204, column: 7)
!1489 = !DILocation(line: 204, column: 7, scope: !1475)
!1490 = !DILocation(line: 225, column: 17, scope: !1475)
!1491 = !DILocation(line: 202, column: 15, scope: !1475)
!1492 = !DILocalVariable(name: "s2", arg: 2, scope: !1493, file: !1494, line: 160, type: !6)
!1493 = distinct !DISubprogram(name: "strcaseeq0", scope: !1494, file: !1494, line: 160, type: !1495, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1497)
!1494 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1497 = !{!1498, !1492, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507}
!1498 = !DILocalVariable(name: "s1", arg: 1, scope: !1493, file: !1494, line: 160, type: !6)
!1499 = !DILocalVariable(name: "s20", arg: 3, scope: !1493, file: !1494, line: 160, type: !8)
!1500 = !DILocalVariable(name: "s21", arg: 4, scope: !1493, file: !1494, line: 160, type: !8)
!1501 = !DILocalVariable(name: "s22", arg: 5, scope: !1493, file: !1494, line: 160, type: !8)
!1502 = !DILocalVariable(name: "s23", arg: 6, scope: !1493, file: !1494, line: 160, type: !8)
!1503 = !DILocalVariable(name: "s24", arg: 7, scope: !1493, file: !1494, line: 160, type: !8)
!1504 = !DILocalVariable(name: "s25", arg: 8, scope: !1493, file: !1494, line: 160, type: !8)
!1505 = !DILocalVariable(name: "s26", arg: 9, scope: !1493, file: !1494, line: 160, type: !8)
!1506 = !DILocalVariable(name: "s27", arg: 10, scope: !1493, file: !1494, line: 160, type: !8)
!1507 = !DILocalVariable(name: "s28", arg: 11, scope: !1493, file: !1494, line: 160, type: !8)
!1508 = !DILocation(line: 160, column: 41, scope: !1493, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 226, column: 7, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1475, file: !100, line: 226, column: 7)
!1511 = !DILocation(line: 160, column: 120, scope: !1493, inlinedAt: !1509)
!1512 = !DILocation(line: 160, column: 130, scope: !1493, inlinedAt: !1509)
!1513 = !DILocation(line: 162, column: 7, scope: !1514, inlinedAt: !1509)
!1514 = distinct !DILexicalBlock(scope: !1493, file: !1494, line: 162, column: 7)
!1515 = !DILocalVariable(name: "s2", arg: 2, scope: !1516, file: !1494, line: 146, type: !6)
!1516 = distinct !DISubprogram(name: "strcaseeq1", scope: !1494, file: !1494, line: 146, type: !1517, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1519 = !{!1520, !1515, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1520 = !DILocalVariable(name: "s1", arg: 1, scope: !1516, file: !1494, line: 146, type: !6)
!1521 = !DILocalVariable(name: "s21", arg: 3, scope: !1516, file: !1494, line: 146, type: !8)
!1522 = !DILocalVariable(name: "s22", arg: 4, scope: !1516, file: !1494, line: 146, type: !8)
!1523 = !DILocalVariable(name: "s23", arg: 5, scope: !1516, file: !1494, line: 146, type: !8)
!1524 = !DILocalVariable(name: "s24", arg: 6, scope: !1516, file: !1494, line: 146, type: !8)
!1525 = !DILocalVariable(name: "s25", arg: 7, scope: !1516, file: !1494, line: 146, type: !8)
!1526 = !DILocalVariable(name: "s26", arg: 8, scope: !1516, file: !1494, line: 146, type: !8)
!1527 = !DILocalVariable(name: "s27", arg: 9, scope: !1516, file: !1494, line: 146, type: !8)
!1528 = !DILocalVariable(name: "s28", arg: 10, scope: !1516, file: !1494, line: 146, type: !8)
!1529 = !DILocation(line: 146, column: 41, scope: !1516, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 167, column: 16, scope: !1531, inlinedAt: !1509)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !1494, line: 164, column: 11)
!1532 = distinct !DILexicalBlock(scope: !1514, file: !1494, line: 163, column: 5)
!1533 = !DILocation(line: 146, column: 110, scope: !1516, inlinedAt: !1530)
!1534 = !DILocation(line: 146, column: 120, scope: !1516, inlinedAt: !1530)
!1535 = !DILocation(line: 148, column: 7, scope: !1536, inlinedAt: !1530)
!1536 = distinct !DILexicalBlock(scope: !1516, file: !1494, line: 148, column: 7)
!1537 = !DILocalVariable(name: "s2", arg: 2, scope: !1538, file: !1494, line: 132, type: !6)
!1538 = distinct !DISubprogram(name: "strcaseeq2", scope: !1494, file: !1494, line: 132, type: !1539, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1541 = !{!1542, !1537, !1543, !1544, !1545, !1546, !1547, !1548, !1549}
!1542 = !DILocalVariable(name: "s1", arg: 1, scope: !1538, file: !1494, line: 132, type: !6)
!1543 = !DILocalVariable(name: "s22", arg: 3, scope: !1538, file: !1494, line: 132, type: !8)
!1544 = !DILocalVariable(name: "s23", arg: 4, scope: !1538, file: !1494, line: 132, type: !8)
!1545 = !DILocalVariable(name: "s24", arg: 5, scope: !1538, file: !1494, line: 132, type: !8)
!1546 = !DILocalVariable(name: "s25", arg: 6, scope: !1538, file: !1494, line: 132, type: !8)
!1547 = !DILocalVariable(name: "s26", arg: 7, scope: !1538, file: !1494, line: 132, type: !8)
!1548 = !DILocalVariable(name: "s27", arg: 8, scope: !1538, file: !1494, line: 132, type: !8)
!1549 = !DILocalVariable(name: "s28", arg: 9, scope: !1538, file: !1494, line: 132, type: !8)
!1550 = !DILocation(line: 132, column: 41, scope: !1538, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 153, column: 16, scope: !1552, inlinedAt: !1530)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !1494, line: 150, column: 11)
!1553 = distinct !DILexicalBlock(scope: !1536, file: !1494, line: 149, column: 5)
!1554 = !DILocation(line: 132, column: 100, scope: !1538, inlinedAt: !1551)
!1555 = !DILocation(line: 132, column: 110, scope: !1538, inlinedAt: !1551)
!1556 = !DILocation(line: 134, column: 7, scope: !1557, inlinedAt: !1551)
!1557 = distinct !DILexicalBlock(scope: !1538, file: !1494, line: 134, column: 7)
!1558 = !DILocalVariable(name: "s2", arg: 2, scope: !1559, file: !1494, line: 118, type: !6)
!1559 = distinct !DISubprogram(name: "strcaseeq3", scope: !1494, file: !1494, line: 118, type: !1560, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1562)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1562 = !{!1563, !1558, !1564, !1565, !1566, !1567, !1568, !1569}
!1563 = !DILocalVariable(name: "s1", arg: 1, scope: !1559, file: !1494, line: 118, type: !6)
!1564 = !DILocalVariable(name: "s23", arg: 3, scope: !1559, file: !1494, line: 118, type: !8)
!1565 = !DILocalVariable(name: "s24", arg: 4, scope: !1559, file: !1494, line: 118, type: !8)
!1566 = !DILocalVariable(name: "s25", arg: 5, scope: !1559, file: !1494, line: 118, type: !8)
!1567 = !DILocalVariable(name: "s26", arg: 6, scope: !1559, file: !1494, line: 118, type: !8)
!1568 = !DILocalVariable(name: "s27", arg: 7, scope: !1559, file: !1494, line: 118, type: !8)
!1569 = !DILocalVariable(name: "s28", arg: 8, scope: !1559, file: !1494, line: 118, type: !8)
!1570 = !DILocation(line: 118, column: 41, scope: !1559, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 139, column: 16, scope: !1572, inlinedAt: !1551)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !1494, line: 136, column: 11)
!1573 = distinct !DILexicalBlock(scope: !1557, file: !1494, line: 135, column: 5)
!1574 = !DILocation(line: 118, column: 90, scope: !1559, inlinedAt: !1571)
!1575 = !DILocation(line: 118, column: 100, scope: !1559, inlinedAt: !1571)
!1576 = !DILocation(line: 120, column: 7, scope: !1577, inlinedAt: !1571)
!1577 = distinct !DILexicalBlock(scope: !1559, file: !1494, line: 120, column: 7)
!1578 = !DILocation(line: 120, column: 7, scope: !1559, inlinedAt: !1571)
!1579 = !DILocalVariable(name: "s2", arg: 2, scope: !1580, file: !1494, line: 104, type: !6)
!1580 = distinct !DISubprogram(name: "strcaseeq4", scope: !1494, file: !1494, line: 104, type: !1581, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1583 = !{!1584, !1579, !1585, !1586, !1587, !1588, !1589}
!1584 = !DILocalVariable(name: "s1", arg: 1, scope: !1580, file: !1494, line: 104, type: !6)
!1585 = !DILocalVariable(name: "s24", arg: 3, scope: !1580, file: !1494, line: 104, type: !8)
!1586 = !DILocalVariable(name: "s25", arg: 4, scope: !1580, file: !1494, line: 104, type: !8)
!1587 = !DILocalVariable(name: "s26", arg: 5, scope: !1580, file: !1494, line: 104, type: !8)
!1588 = !DILocalVariable(name: "s27", arg: 6, scope: !1580, file: !1494, line: 104, type: !8)
!1589 = !DILocalVariable(name: "s28", arg: 7, scope: !1580, file: !1494, line: 104, type: !8)
!1590 = !DILocation(line: 104, column: 41, scope: !1580, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 125, column: 16, scope: !1592, inlinedAt: !1571)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !1494, line: 122, column: 11)
!1593 = distinct !DILexicalBlock(scope: !1577, file: !1494, line: 121, column: 5)
!1594 = !DILocation(line: 104, column: 80, scope: !1580, inlinedAt: !1591)
!1595 = !DILocation(line: 104, column: 90, scope: !1580, inlinedAt: !1591)
!1596 = !DILocation(line: 106, column: 7, scope: !1597, inlinedAt: !1591)
!1597 = distinct !DILexicalBlock(scope: !1580, file: !1494, line: 106, column: 7)
!1598 = !DILocation(line: 106, column: 7, scope: !1580, inlinedAt: !1591)
!1599 = !DILocalVariable(name: "s2", arg: 2, scope: !1600, file: !1494, line: 90, type: !6)
!1600 = distinct !DISubprogram(name: "strcaseeq5", scope: !1494, file: !1494, line: 90, type: !1601, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1603)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!25, !6, !6, !8, !8, !8, !8}
!1603 = !{!1604, !1599, !1605, !1606, !1607, !1608}
!1604 = !DILocalVariable(name: "s1", arg: 1, scope: !1600, file: !1494, line: 90, type: !6)
!1605 = !DILocalVariable(name: "s25", arg: 3, scope: !1600, file: !1494, line: 90, type: !8)
!1606 = !DILocalVariable(name: "s26", arg: 4, scope: !1600, file: !1494, line: 90, type: !8)
!1607 = !DILocalVariable(name: "s27", arg: 5, scope: !1600, file: !1494, line: 90, type: !8)
!1608 = !DILocalVariable(name: "s28", arg: 6, scope: !1600, file: !1494, line: 90, type: !8)
!1609 = !DILocation(line: 90, column: 41, scope: !1600, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 111, column: 16, scope: !1611, inlinedAt: !1591)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !1494, line: 108, column: 11)
!1612 = distinct !DILexicalBlock(scope: !1597, file: !1494, line: 107, column: 5)
!1613 = !DILocation(line: 90, column: 70, scope: !1600, inlinedAt: !1610)
!1614 = !DILocation(line: 90, column: 80, scope: !1600, inlinedAt: !1610)
!1615 = !DILocation(line: 92, column: 7, scope: !1616, inlinedAt: !1610)
!1616 = distinct !DILexicalBlock(scope: !1600, file: !1494, line: 92, column: 7)
!1617 = !DILocation(line: 92, column: 7, scope: !1600, inlinedAt: !1610)
!1618 = !DILocation(line: 227, column: 12, scope: !1510)
!1619 = !DILocation(line: 227, column: 21, scope: !1510)
!1620 = !DILocation(line: 227, column: 5, scope: !1510)
!1621 = !DILocation(line: 146, column: 41, scope: !1516, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 167, column: 16, scope: !1531, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 228, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1475, file: !100, line: 228, column: 7)
!1625 = !DILocation(line: 146, column: 110, scope: !1516, inlinedAt: !1622)
!1626 = !DILocation(line: 146, column: 120, scope: !1516, inlinedAt: !1622)
!1627 = !DILocation(line: 148, column: 7, scope: !1536, inlinedAt: !1622)
!1628 = !DILocation(line: 132, column: 41, scope: !1538, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 153, column: 16, scope: !1552, inlinedAt: !1622)
!1630 = !DILocation(line: 132, column: 100, scope: !1538, inlinedAt: !1629)
!1631 = !DILocation(line: 132, column: 110, scope: !1538, inlinedAt: !1629)
!1632 = !DILocation(line: 134, column: 7, scope: !1557, inlinedAt: !1629)
!1633 = !DILocation(line: 134, column: 7, scope: !1538, inlinedAt: !1629)
!1634 = !DILocation(line: 118, column: 41, scope: !1559, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 139, column: 16, scope: !1572, inlinedAt: !1629)
!1636 = !DILocation(line: 118, column: 90, scope: !1559, inlinedAt: !1635)
!1637 = !DILocation(line: 118, column: 100, scope: !1559, inlinedAt: !1635)
!1638 = !DILocation(line: 120, column: 7, scope: !1577, inlinedAt: !1635)
!1639 = !DILocation(line: 120, column: 7, scope: !1559, inlinedAt: !1635)
!1640 = !DILocation(line: 104, column: 41, scope: !1580, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 125, column: 16, scope: !1592, inlinedAt: !1635)
!1642 = !DILocation(line: 104, column: 80, scope: !1580, inlinedAt: !1641)
!1643 = !DILocation(line: 104, column: 90, scope: !1580, inlinedAt: !1641)
!1644 = !DILocation(line: 106, column: 7, scope: !1597, inlinedAt: !1641)
!1645 = !DILocation(line: 106, column: 7, scope: !1580, inlinedAt: !1641)
!1646 = !DILocation(line: 90, column: 41, scope: !1600, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 111, column: 16, scope: !1611, inlinedAt: !1641)
!1648 = !DILocation(line: 90, column: 70, scope: !1600, inlinedAt: !1647)
!1649 = !DILocation(line: 90, column: 80, scope: !1600, inlinedAt: !1647)
!1650 = !DILocation(line: 92, column: 7, scope: !1616, inlinedAt: !1647)
!1651 = !DILocation(line: 92, column: 7, scope: !1600, inlinedAt: !1647)
!1652 = !DILocalVariable(name: "s2", arg: 2, scope: !1653, file: !1494, line: 76, type: !6)
!1653 = distinct !DISubprogram(name: "strcaseeq6", scope: !1494, file: !1494, line: 76, type: !1654, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!25, !6, !6, !8, !8, !8}
!1656 = !{!1657, !1652, !1658, !1659, !1660}
!1657 = !DILocalVariable(name: "s1", arg: 1, scope: !1653, file: !1494, line: 76, type: !6)
!1658 = !DILocalVariable(name: "s26", arg: 3, scope: !1653, file: !1494, line: 76, type: !8)
!1659 = !DILocalVariable(name: "s27", arg: 4, scope: !1653, file: !1494, line: 76, type: !8)
!1660 = !DILocalVariable(name: "s28", arg: 5, scope: !1653, file: !1494, line: 76, type: !8)
!1661 = !DILocation(line: 76, column: 41, scope: !1653, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 97, column: 16, scope: !1663, inlinedAt: !1647)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !1494, line: 94, column: 11)
!1664 = distinct !DILexicalBlock(scope: !1616, file: !1494, line: 93, column: 5)
!1665 = !DILocation(line: 76, column: 60, scope: !1653, inlinedAt: !1662)
!1666 = !DILocation(line: 76, column: 70, scope: !1653, inlinedAt: !1662)
!1667 = !DILocation(line: 78, column: 7, scope: !1668, inlinedAt: !1662)
!1668 = distinct !DILexicalBlock(scope: !1653, file: !1494, line: 78, column: 7)
!1669 = !DILocation(line: 78, column: 7, scope: !1653, inlinedAt: !1662)
!1670 = !DILocalVariable(name: "s2", arg: 2, scope: !1671, file: !1494, line: 62, type: !6)
!1671 = distinct !DISubprogram(name: "strcaseeq7", scope: !1494, file: !1494, line: 62, type: !1672, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!25, !6, !6, !8, !8}
!1674 = !{!1675, !1670, !1676, !1677}
!1675 = !DILocalVariable(name: "s1", arg: 1, scope: !1671, file: !1494, line: 62, type: !6)
!1676 = !DILocalVariable(name: "s27", arg: 3, scope: !1671, file: !1494, line: 62, type: !8)
!1677 = !DILocalVariable(name: "s28", arg: 4, scope: !1671, file: !1494, line: 62, type: !8)
!1678 = !DILocation(line: 62, column: 41, scope: !1671, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 83, column: 16, scope: !1680, inlinedAt: !1662)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !1494, line: 80, column: 11)
!1681 = distinct !DILexicalBlock(scope: !1668, file: !1494, line: 79, column: 5)
!1682 = !DILocation(line: 62, column: 50, scope: !1671, inlinedAt: !1679)
!1683 = !DILocation(line: 62, column: 60, scope: !1671, inlinedAt: !1679)
!1684 = !DILocation(line: 64, column: 7, scope: !1685, inlinedAt: !1679)
!1685 = distinct !DILexicalBlock(scope: !1671, file: !1494, line: 64, column: 7)
!1686 = !DILocation(line: 228, column: 7, scope: !1475)
!1687 = !DILocation(line: 229, column: 12, scope: !1624)
!1688 = !DILocation(line: 229, column: 21, scope: !1624)
!1689 = !DILocation(line: 229, column: 5, scope: !1624)
!1690 = !DILocation(line: 231, column: 13, scope: !1475)
!1691 = !DILocation(line: 231, column: 11, scope: !1475)
!1692 = !DILocation(line: 231, column: 3, scope: !1475)
!1693 = !DILocation(line: 232, column: 1, scope: !1475)
!1694 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !1695, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!50, !6, !94, !818}
!1697 = !{!1698, !1699, !1700}
!1698 = !DILocalVariable(name: "arg", arg: 1, scope: !1694, file: !100, line: 791, type: !6)
!1699 = !DILocalVariable(name: "argsize", arg: 2, scope: !1694, file: !100, line: 791, type: !94)
!1700 = !DILocalVariable(name: "o", arg: 3, scope: !1694, file: !100, line: 792, type: !818)
!1701 = !DILocation(line: 791, column: 29, scope: !1694)
!1702 = !DILocation(line: 791, column: 41, scope: !1694)
!1703 = !DILocation(line: 792, column: 47, scope: !1694)
!1704 = !DILocalVariable(name: "arg", arg: 1, scope: !1705, file: !100, line: 804, type: !6)
!1705 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !1706, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1708)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!50, !6, !94, !538, !818}
!1708 = !{!1704, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716}
!1709 = !DILocalVariable(name: "argsize", arg: 2, scope: !1705, file: !100, line: 804, type: !94)
!1710 = !DILocalVariable(name: "size", arg: 3, scope: !1705, file: !100, line: 804, type: !538)
!1711 = !DILocalVariable(name: "o", arg: 4, scope: !1705, file: !100, line: 805, type: !818)
!1712 = !DILocalVariable(name: "p", scope: !1705, file: !100, line: 807, type: !818)
!1713 = !DILocalVariable(name: "e", scope: !1705, file: !100, line: 808, type: !25)
!1714 = !DILocalVariable(name: "flags", scope: !1705, file: !100, line: 810, type: !25)
!1715 = !DILocalVariable(name: "bufsize", scope: !1705, file: !100, line: 811, type: !94)
!1716 = !DILocalVariable(name: "buf", scope: !1705, file: !100, line: 815, type: !50)
!1717 = !DILocation(line: 804, column: 33, scope: !1705, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 794, column: 10, scope: !1694)
!1719 = !DILocation(line: 804, column: 45, scope: !1705, inlinedAt: !1718)
!1720 = !DILocation(line: 804, column: 62, scope: !1705, inlinedAt: !1718)
!1721 = !DILocation(line: 805, column: 51, scope: !1705, inlinedAt: !1718)
!1722 = !DILocation(line: 807, column: 37, scope: !1705, inlinedAt: !1718)
!1723 = !DILocation(line: 807, column: 33, scope: !1705, inlinedAt: !1718)
!1724 = !DILocation(line: 808, column: 11, scope: !1705, inlinedAt: !1718)
!1725 = !DILocation(line: 808, column: 7, scope: !1705, inlinedAt: !1718)
!1726 = !DILocation(line: 810, column: 18, scope: !1705, inlinedAt: !1718)
!1727 = !DILocation(line: 810, column: 24, scope: !1705, inlinedAt: !1718)
!1728 = !DILocation(line: 810, column: 7, scope: !1705, inlinedAt: !1718)
!1729 = !DILocation(line: 811, column: 69, scope: !1705, inlinedAt: !1718)
!1730 = !DILocation(line: 812, column: 53, scope: !1705, inlinedAt: !1718)
!1731 = !DILocation(line: 813, column: 49, scope: !1705, inlinedAt: !1718)
!1732 = !DILocation(line: 814, column: 49, scope: !1705, inlinedAt: !1718)
!1733 = !DILocation(line: 811, column: 20, scope: !1705, inlinedAt: !1718)
!1734 = !DILocation(line: 814, column: 62, scope: !1705, inlinedAt: !1718)
!1735 = !DILocation(line: 811, column: 10, scope: !1705, inlinedAt: !1718)
!1736 = !DILocalVariable(name: "n", arg: 1, scope: !1737, file: !534, line: 220, type: !94)
!1737 = distinct !DISubprogram(name: "xcharalloc", scope: !534, file: !534, line: 220, type: !1738, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!50, !94}
!1740 = !{!1736}
!1741 = !DILocation(line: 220, column: 20, scope: !1737, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 815, column: 15, scope: !1705, inlinedAt: !1718)
!1743 = !DILocation(line: 222, column: 10, scope: !1737, inlinedAt: !1742)
!1744 = !DILocation(line: 815, column: 9, scope: !1705, inlinedAt: !1718)
!1745 = !DILocation(line: 816, column: 60, scope: !1705, inlinedAt: !1718)
!1746 = !DILocation(line: 818, column: 32, scope: !1705, inlinedAt: !1718)
!1747 = !DILocation(line: 818, column: 47, scope: !1705, inlinedAt: !1718)
!1748 = !DILocation(line: 816, column: 3, scope: !1705, inlinedAt: !1718)
!1749 = !DILocation(line: 819, column: 9, scope: !1705, inlinedAt: !1718)
!1750 = !DILocation(line: 794, column: 3, scope: !1694)
!1751 = !DILocation(line: 804, column: 33, scope: !1705)
!1752 = !DILocation(line: 804, column: 45, scope: !1705)
!1753 = !DILocation(line: 804, column: 62, scope: !1705)
!1754 = !DILocation(line: 805, column: 51, scope: !1705)
!1755 = !DILocation(line: 807, column: 37, scope: !1705)
!1756 = !DILocation(line: 807, column: 33, scope: !1705)
!1757 = !DILocation(line: 808, column: 11, scope: !1705)
!1758 = !DILocation(line: 808, column: 7, scope: !1705)
!1759 = !DILocation(line: 810, column: 18, scope: !1705)
!1760 = !DILocation(line: 810, column: 27, scope: !1705)
!1761 = !DILocation(line: 810, column: 24, scope: !1705)
!1762 = !DILocation(line: 810, column: 7, scope: !1705)
!1763 = !DILocation(line: 811, column: 69, scope: !1705)
!1764 = !DILocation(line: 812, column: 53, scope: !1705)
!1765 = !DILocation(line: 813, column: 49, scope: !1705)
!1766 = !DILocation(line: 814, column: 49, scope: !1705)
!1767 = !DILocation(line: 811, column: 20, scope: !1705)
!1768 = !DILocation(line: 814, column: 62, scope: !1705)
!1769 = !DILocation(line: 811, column: 10, scope: !1705)
!1770 = !DILocation(line: 220, column: 20, scope: !1737, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 815, column: 15, scope: !1705)
!1772 = !DILocation(line: 222, column: 10, scope: !1737, inlinedAt: !1771)
!1773 = !DILocation(line: 815, column: 9, scope: !1705)
!1774 = !DILocation(line: 816, column: 60, scope: !1705)
!1775 = !DILocation(line: 818, column: 32, scope: !1705)
!1776 = !DILocation(line: 818, column: 47, scope: !1705)
!1777 = !DILocation(line: 816, column: 3, scope: !1705)
!1778 = !DILocation(line: 819, column: 9, scope: !1705)
!1779 = !DILocation(line: 820, column: 7, scope: !1705)
!1780 = !DILocation(line: 821, column: 11, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1705, file: !100, line: 820, column: 7)
!1782 = !{!1783, !1783, i64 0}
!1783 = !{!"long", !584, i64 0}
!1784 = !DILocation(line: 821, column: 5, scope: !1781)
!1785 = !DILocation(line: 822, column: 3, scope: !1705)
!1786 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !668, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1787)
!1787 = !{!1788, !1789}
!1788 = !DILocalVariable(name: "sv", scope: !1786, file: !100, line: 842, type: !127)
!1789 = !DILocalVariable(name: "i", scope: !1786, file: !100, line: 843, type: !25)
!1790 = !DILocation(line: 842, column: 24, scope: !1786)
!1791 = !DILocation(line: 842, column: 19, scope: !1786)
!1792 = !DILocation(line: 843, column: 7, scope: !1786)
!1793 = !DILocation(line: 844, column: 19, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !100, line: 844, column: 3)
!1795 = distinct !DILexicalBlock(scope: !1786, file: !100, line: 844, column: 3)
!1796 = !DILocation(line: 844, column: 17, scope: !1794)
!1797 = !DILocation(line: 844, column: 3, scope: !1795)
!1798 = !DILocation(line: 845, column: 17, scope: !1794)
!1799 = !{!1800, !583, i64 8}
!1800 = !{!"slotvec", !1783, i64 0, !583, i64 8}
!1801 = !DILocation(line: 845, column: 5, scope: !1794)
!1802 = !DILocation(line: 844, column: 28, scope: !1794)
!1803 = distinct !{!1803, !1797, !1804}
!1804 = !DILocation(line: 845, column: 20, scope: !1795)
!1805 = !DILocation(line: 846, column: 13, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1786, file: !100, line: 846, column: 7)
!1807 = !DILocation(line: 846, column: 17, scope: !1806)
!1808 = !DILocation(line: 846, column: 7, scope: !1786)
!1809 = !DILocation(line: 848, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !100, line: 847, column: 5)
!1811 = !DILocation(line: 849, column: 21, scope: !1810)
!1812 = !{!1800, !1783, i64 0}
!1813 = !DILocation(line: 850, column: 20, scope: !1810)
!1814 = !DILocation(line: 851, column: 5, scope: !1810)
!1815 = !DILocation(line: 852, column: 10, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1786, file: !100, line: 852, column: 7)
!1817 = !DILocation(line: 852, column: 7, scope: !1786)
!1818 = !DILocation(line: 854, column: 13, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !100, line: 853, column: 5)
!1820 = !DILocation(line: 854, column: 7, scope: !1819)
!1821 = !DILocation(line: 855, column: 15, scope: !1819)
!1822 = !DILocation(line: 856, column: 5, scope: !1819)
!1823 = !DILocation(line: 857, column: 10, scope: !1786)
!1824 = !DILocation(line: 858, column: 1, scope: !1786)
!1825 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !1826, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1828)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!50, !25, !6}
!1828 = !{!1829, !1830}
!1829 = !DILocalVariable(name: "n", arg: 1, scope: !1825, file: !100, line: 922, type: !25)
!1830 = !DILocalVariable(name: "arg", arg: 2, scope: !1825, file: !100, line: 922, type: !6)
!1831 = !DILocation(line: 922, column: 17, scope: !1825)
!1832 = !DILocation(line: 922, column: 32, scope: !1825)
!1833 = !DILocation(line: 924, column: 10, scope: !1825)
!1834 = !DILocation(line: 924, column: 3, scope: !1825)
!1835 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !1836, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1838)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!50, !25, !6, !94, !818}
!1838 = !{!1839, !1840, !1841, !1842, !1843, !1844, !1845, !1848, !1850, !1851, !1852}
!1839 = !DILocalVariable(name: "n", arg: 1, scope: !1835, file: !100, line: 869, type: !25)
!1840 = !DILocalVariable(name: "arg", arg: 2, scope: !1835, file: !100, line: 869, type: !6)
!1841 = !DILocalVariable(name: "argsize", arg: 3, scope: !1835, file: !100, line: 869, type: !94)
!1842 = !DILocalVariable(name: "options", arg: 4, scope: !1835, file: !100, line: 870, type: !818)
!1843 = !DILocalVariable(name: "e", scope: !1835, file: !100, line: 872, type: !25)
!1844 = !DILocalVariable(name: "sv", scope: !1835, file: !100, line: 874, type: !127)
!1845 = !DILocalVariable(name: "preallocated", scope: !1846, file: !100, line: 881, type: !17)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !100, line: 880, column: 5)
!1847 = distinct !DILexicalBlock(scope: !1835, file: !100, line: 879, column: 7)
!1848 = !DILocalVariable(name: "size", scope: !1849, file: !100, line: 894, type: !94)
!1849 = distinct !DILexicalBlock(scope: !1835, file: !100, line: 893, column: 3)
!1850 = !DILocalVariable(name: "val", scope: !1849, file: !100, line: 895, type: !50)
!1851 = !DILocalVariable(name: "flags", scope: !1849, file: !100, line: 897, type: !25)
!1852 = !DILocalVariable(name: "qsize", scope: !1849, file: !100, line: 898, type: !94)
!1853 = !DILocation(line: 869, column: 25, scope: !1835)
!1854 = !DILocation(line: 869, column: 40, scope: !1835)
!1855 = !DILocation(line: 869, column: 52, scope: !1835)
!1856 = !DILocation(line: 870, column: 51, scope: !1835)
!1857 = !DILocation(line: 872, column: 11, scope: !1835)
!1858 = !DILocation(line: 872, column: 7, scope: !1835)
!1859 = !DILocation(line: 874, column: 24, scope: !1835)
!1860 = !DILocation(line: 874, column: 19, scope: !1835)
!1861 = !DILocation(line: 876, column: 9, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1835, file: !100, line: 876, column: 7)
!1863 = !DILocation(line: 876, column: 7, scope: !1835)
!1864 = !DILocation(line: 877, column: 5, scope: !1862)
!1865 = !DILocation(line: 879, column: 7, scope: !1847)
!1866 = !DILocation(line: 879, column: 14, scope: !1847)
!1867 = !DILocation(line: 879, column: 7, scope: !1835)
!1868 = !DILocation(line: 881, column: 31, scope: !1846)
!1869 = !DILocation(line: 883, column: 67, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1846, file: !100, line: 883, column: 11)
!1871 = !DILocation(line: 883, column: 11, scope: !1846)
!1872 = !DILocation(line: 884, column: 9, scope: !1870)
!1873 = !DILocation(line: 886, column: 32, scope: !1846)
!1874 = !DILocation(line: 886, column: 61, scope: !1846)
!1875 = !DILocation(line: 886, column: 58, scope: !1846)
!1876 = !DILocation(line: 886, column: 66, scope: !1846)
!1877 = !DILocation(line: 886, column: 22, scope: !1846)
!1878 = !DILocation(line: 886, column: 15, scope: !1846)
!1879 = !DILocation(line: 887, column: 11, scope: !1846)
!1880 = !DILocation(line: 888, column: 15, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1846, file: !100, line: 887, column: 11)
!1882 = !{i64 0, i64 8, !1782, i64 8, i64 8, !582}
!1883 = !DILocation(line: 888, column: 9, scope: !1881)
!1884 = !DILocation(line: 889, column: 20, scope: !1846)
!1885 = !DILocation(line: 889, column: 18, scope: !1846)
!1886 = !DILocation(line: 889, column: 7, scope: !1846)
!1887 = !DILocation(line: 889, column: 38, scope: !1846)
!1888 = !DILocation(line: 889, column: 31, scope: !1846)
!1889 = !DILocation(line: 889, column: 48, scope: !1846)
!1890 = !DILocation(line: 890, column: 14, scope: !1846)
!1891 = !DILocation(line: 891, column: 5, scope: !1846)
!1892 = !DILocation(line: 894, column: 19, scope: !1849)
!1893 = !DILocation(line: 894, column: 25, scope: !1849)
!1894 = !DILocation(line: 894, column: 12, scope: !1849)
!1895 = !DILocation(line: 895, column: 23, scope: !1849)
!1896 = !DILocation(line: 895, column: 11, scope: !1849)
!1897 = !DILocation(line: 897, column: 26, scope: !1849)
!1898 = !DILocation(line: 897, column: 32, scope: !1849)
!1899 = !DILocation(line: 897, column: 9, scope: !1849)
!1900 = !DILocation(line: 899, column: 55, scope: !1849)
!1901 = !DILocation(line: 900, column: 46, scope: !1849)
!1902 = !DILocation(line: 901, column: 55, scope: !1849)
!1903 = !DILocation(line: 902, column: 55, scope: !1849)
!1904 = !DILocation(line: 898, column: 20, scope: !1849)
!1905 = !DILocation(line: 898, column: 12, scope: !1849)
!1906 = !DILocation(line: 904, column: 14, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1849, file: !100, line: 904, column: 9)
!1908 = !DILocation(line: 904, column: 9, scope: !1849)
!1909 = !DILocation(line: 906, column: 35, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1907, file: !100, line: 905, column: 7)
!1911 = !DILocation(line: 906, column: 20, scope: !1910)
!1912 = !DILocation(line: 907, column: 17, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !100, line: 907, column: 13)
!1914 = !DILocation(line: 907, column: 13, scope: !1910)
!1915 = !DILocation(line: 908, column: 11, scope: !1913)
!1916 = !DILocation(line: 220, column: 20, scope: !1737, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 909, column: 27, scope: !1910)
!1918 = !DILocation(line: 222, column: 10, scope: !1737, inlinedAt: !1917)
!1919 = !DILocation(line: 909, column: 19, scope: !1910)
!1920 = !DILocation(line: 910, column: 69, scope: !1910)
!1921 = !DILocation(line: 912, column: 44, scope: !1910)
!1922 = !DILocation(line: 913, column: 44, scope: !1910)
!1923 = !DILocation(line: 910, column: 9, scope: !1910)
!1924 = !DILocation(line: 914, column: 7, scope: !1910)
!1925 = !DILocation(line: 916, column: 11, scope: !1849)
!1926 = !DILocation(line: 917, column: 5, scope: !1849)
!1927 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !1928, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!50, !25, !6, !94}
!1930 = !{!1931, !1932, !1933}
!1931 = !DILocalVariable(name: "n", arg: 1, scope: !1927, file: !100, line: 928, type: !25)
!1932 = !DILocalVariable(name: "arg", arg: 2, scope: !1927, file: !100, line: 928, type: !6)
!1933 = !DILocalVariable(name: "argsize", arg: 3, scope: !1927, file: !100, line: 928, type: !94)
!1934 = !DILocation(line: 928, column: 21, scope: !1927)
!1935 = !DILocation(line: 928, column: 36, scope: !1927)
!1936 = !DILocation(line: 928, column: 48, scope: !1927)
!1937 = !DILocation(line: 930, column: 10, scope: !1927)
!1938 = !DILocation(line: 930, column: 3, scope: !1927)
!1939 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !1940, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!50, !6}
!1942 = !{!1943}
!1943 = !DILocalVariable(name: "arg", arg: 1, scope: !1939, file: !100, line: 934, type: !6)
!1944 = !DILocation(line: 934, column: 23, scope: !1939)
!1945 = !DILocation(line: 922, column: 17, scope: !1825, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 936, column: 10, scope: !1939)
!1947 = !DILocation(line: 922, column: 32, scope: !1825, inlinedAt: !1946)
!1948 = !DILocation(line: 924, column: 10, scope: !1825, inlinedAt: !1946)
!1949 = !DILocation(line: 936, column: 3, scope: !1939)
!1950 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !1951, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!50, !6, !94}
!1953 = !{!1954, !1955}
!1954 = !DILocalVariable(name: "arg", arg: 1, scope: !1950, file: !100, line: 940, type: !6)
!1955 = !DILocalVariable(name: "argsize", arg: 2, scope: !1950, file: !100, line: 940, type: !94)
!1956 = !DILocation(line: 940, column: 27, scope: !1950)
!1957 = !DILocation(line: 940, column: 39, scope: !1950)
!1958 = !DILocation(line: 928, column: 21, scope: !1927, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 942, column: 10, scope: !1950)
!1960 = !DILocation(line: 928, column: 36, scope: !1927, inlinedAt: !1959)
!1961 = !DILocation(line: 928, column: 48, scope: !1927, inlinedAt: !1959)
!1962 = !DILocation(line: 930, column: 10, scope: !1927, inlinedAt: !1959)
!1963 = !DILocation(line: 942, column: 3, scope: !1950)
!1964 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !1965, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!50, !25, !58, !6}
!1967 = !{!1968, !1969, !1970, !1971}
!1968 = !DILocalVariable(name: "n", arg: 1, scope: !1964, file: !100, line: 946, type: !25)
!1969 = !DILocalVariable(name: "s", arg: 2, scope: !1964, file: !100, line: 946, type: !58)
!1970 = !DILocalVariable(name: "arg", arg: 3, scope: !1964, file: !100, line: 946, type: !6)
!1971 = !DILocalVariable(name: "o", scope: !1964, file: !100, line: 948, type: !819)
!1972 = !DILocalVariable(name: "o", scope: !1973, file: !100, line: 187, type: !107)
!1973 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !1974, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1976)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!107, !58}
!1976 = !{!1977, !1972}
!1977 = !DILocalVariable(name: "style", arg: 1, scope: !1973, file: !100, line: 185, type: !58)
!1978 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!1979 = !DILocation(line: 187, column: 26, scope: !1973, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 948, column: 36, scope: !1964)
!1981 = !DILocation(line: 946, column: 23, scope: !1964)
!1982 = !DILocation(line: 946, column: 45, scope: !1964)
!1983 = !DILocation(line: 946, column: 60, scope: !1964)
!1984 = !DILocation(line: 948, column: 3, scope: !1964)
!1985 = !DILocation(line: 948, column: 32, scope: !1964)
!1986 = !DILocation(line: 185, column: 48, scope: !1973, inlinedAt: !1980)
!1987 = !DILocation(line: 187, column: 3, scope: !1973, inlinedAt: !1980)
!1988 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!1989 = !DILocation(line: 188, column: 13, scope: !1990, inlinedAt: !1980)
!1990 = distinct !DILexicalBlock(scope: !1973, file: !100, line: 188, column: 7)
!1991 = !DILocation(line: 188, column: 7, scope: !1973, inlinedAt: !1980)
!1992 = !DILocation(line: 189, column: 5, scope: !1990, inlinedAt: !1980)
!1993 = !{!1994}
!1994 = distinct !{!1994, !1995, !"quoting_options_from_style: argument 0"}
!1995 = distinct !{!1995, !"quoting_options_from_style"}
!1996 = !DILocation(line: 191, column: 10, scope: !1973, inlinedAt: !1980)
!1997 = !DILocation(line: 192, column: 1, scope: !1973, inlinedAt: !1980)
!1998 = !DILocation(line: 949, column: 10, scope: !1964)
!1999 = !DILocation(line: 950, column: 1, scope: !1964)
!2000 = !DILocation(line: 949, column: 3, scope: !1964)
!2001 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2002, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!50, !25, !58, !6, !94}
!2004 = !{!2005, !2006, !2007, !2008, !2009}
!2005 = !DILocalVariable(name: "n", arg: 1, scope: !2001, file: !100, line: 953, type: !25)
!2006 = !DILocalVariable(name: "s", arg: 2, scope: !2001, file: !100, line: 953, type: !58)
!2007 = !DILocalVariable(name: "arg", arg: 3, scope: !2001, file: !100, line: 954, type: !6)
!2008 = !DILocalVariable(name: "argsize", arg: 4, scope: !2001, file: !100, line: 954, type: !94)
!2009 = !DILocalVariable(name: "o", scope: !2001, file: !100, line: 956, type: !819)
!2010 = !DILocation(line: 187, column: 26, scope: !1973, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 956, column: 36, scope: !2001)
!2012 = !DILocation(line: 953, column: 27, scope: !2001)
!2013 = !DILocation(line: 953, column: 49, scope: !2001)
!2014 = !DILocation(line: 954, column: 35, scope: !2001)
!2015 = !DILocation(line: 954, column: 47, scope: !2001)
!2016 = !DILocation(line: 956, column: 3, scope: !2001)
!2017 = !DILocation(line: 956, column: 32, scope: !2001)
!2018 = !DILocation(line: 185, column: 48, scope: !1973, inlinedAt: !2011)
!2019 = !DILocation(line: 187, column: 3, scope: !1973, inlinedAt: !2011)
!2020 = !DILocation(line: 188, column: 13, scope: !1990, inlinedAt: !2011)
!2021 = !DILocation(line: 188, column: 7, scope: !1973, inlinedAt: !2011)
!2022 = !DILocation(line: 189, column: 5, scope: !1990, inlinedAt: !2011)
!2023 = !{!2024}
!2024 = distinct !{!2024, !2025, !"quoting_options_from_style: argument 0"}
!2025 = distinct !{!2025, !"quoting_options_from_style"}
!2026 = !DILocation(line: 191, column: 10, scope: !1973, inlinedAt: !2011)
!2027 = !DILocation(line: 192, column: 1, scope: !1973, inlinedAt: !2011)
!2028 = !DILocation(line: 957, column: 10, scope: !2001)
!2029 = !DILocation(line: 958, column: 1, scope: !2001)
!2030 = !DILocation(line: 957, column: 3, scope: !2001)
!2031 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2032, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!50, !58, !6}
!2034 = !{!2035, !2036}
!2035 = !DILocalVariable(name: "s", arg: 1, scope: !2031, file: !100, line: 961, type: !58)
!2036 = !DILocalVariable(name: "arg", arg: 2, scope: !2031, file: !100, line: 961, type: !6)
!2037 = !DILocation(line: 187, column: 26, scope: !1973, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 948, column: 36, scope: !1964, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 963, column: 10, scope: !2031)
!2040 = !DILocation(line: 961, column: 36, scope: !2031)
!2041 = !DILocation(line: 961, column: 51, scope: !2031)
!2042 = !DILocation(line: 946, column: 23, scope: !1964, inlinedAt: !2039)
!2043 = !DILocation(line: 946, column: 45, scope: !1964, inlinedAt: !2039)
!2044 = !DILocation(line: 946, column: 60, scope: !1964, inlinedAt: !2039)
!2045 = !DILocation(line: 948, column: 3, scope: !1964, inlinedAt: !2039)
!2046 = !DILocation(line: 948, column: 32, scope: !1964, inlinedAt: !2039)
!2047 = !DILocation(line: 185, column: 48, scope: !1973, inlinedAt: !2038)
!2048 = !DILocation(line: 187, column: 3, scope: !1973, inlinedAt: !2038)
!2049 = !DILocation(line: 188, column: 13, scope: !1990, inlinedAt: !2038)
!2050 = !DILocation(line: 188, column: 7, scope: !1973, inlinedAt: !2038)
!2051 = !DILocation(line: 189, column: 5, scope: !1990, inlinedAt: !2038)
!2052 = !{!2053}
!2053 = distinct !{!2053, !2054, !"quoting_options_from_style: argument 0"}
!2054 = distinct !{!2054, !"quoting_options_from_style"}
!2055 = !DILocation(line: 191, column: 10, scope: !1973, inlinedAt: !2038)
!2056 = !DILocation(line: 192, column: 1, scope: !1973, inlinedAt: !2038)
!2057 = !DILocation(line: 949, column: 10, scope: !1964, inlinedAt: !2039)
!2058 = !DILocation(line: 950, column: 1, scope: !1964, inlinedAt: !2039)
!2059 = !DILocation(line: 963, column: 3, scope: !2031)
!2060 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2061, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!50, !58, !6, !94}
!2063 = !{!2064, !2065, !2066}
!2064 = !DILocalVariable(name: "s", arg: 1, scope: !2060, file: !100, line: 967, type: !58)
!2065 = !DILocalVariable(name: "arg", arg: 2, scope: !2060, file: !100, line: 967, type: !6)
!2066 = !DILocalVariable(name: "argsize", arg: 3, scope: !2060, file: !100, line: 967, type: !94)
!2067 = !DILocation(line: 187, column: 26, scope: !1973, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 956, column: 36, scope: !2001, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 969, column: 10, scope: !2060)
!2070 = !DILocation(line: 967, column: 40, scope: !2060)
!2071 = !DILocation(line: 967, column: 55, scope: !2060)
!2072 = !DILocation(line: 967, column: 67, scope: !2060)
!2073 = !DILocation(line: 953, column: 27, scope: !2001, inlinedAt: !2069)
!2074 = !DILocation(line: 953, column: 49, scope: !2001, inlinedAt: !2069)
!2075 = !DILocation(line: 954, column: 35, scope: !2001, inlinedAt: !2069)
!2076 = !DILocation(line: 954, column: 47, scope: !2001, inlinedAt: !2069)
!2077 = !DILocation(line: 956, column: 3, scope: !2001, inlinedAt: !2069)
!2078 = !DILocation(line: 956, column: 32, scope: !2001, inlinedAt: !2069)
!2079 = !DILocation(line: 185, column: 48, scope: !1973, inlinedAt: !2068)
!2080 = !DILocation(line: 187, column: 3, scope: !1973, inlinedAt: !2068)
!2081 = !DILocation(line: 188, column: 13, scope: !1990, inlinedAt: !2068)
!2082 = !DILocation(line: 188, column: 7, scope: !1973, inlinedAt: !2068)
!2083 = !DILocation(line: 189, column: 5, scope: !1990, inlinedAt: !2068)
!2084 = !{!2085}
!2085 = distinct !{!2085, !2086, !"quoting_options_from_style: argument 0"}
!2086 = distinct !{!2086, !"quoting_options_from_style"}
!2087 = !DILocation(line: 191, column: 10, scope: !1973, inlinedAt: !2068)
!2088 = !DILocation(line: 192, column: 1, scope: !1973, inlinedAt: !2068)
!2089 = !DILocation(line: 957, column: 10, scope: !2001, inlinedAt: !2069)
!2090 = !DILocation(line: 958, column: 1, scope: !2001, inlinedAt: !2069)
!2091 = !DILocation(line: 969, column: 3, scope: !2060)
!2092 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2093, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2095)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!50, !6, !94, !8}
!2095 = !{!2096, !2097, !2098, !2099}
!2096 = !DILocalVariable(name: "arg", arg: 1, scope: !2092, file: !100, line: 973, type: !6)
!2097 = !DILocalVariable(name: "argsize", arg: 2, scope: !2092, file: !100, line: 973, type: !94)
!2098 = !DILocalVariable(name: "ch", arg: 3, scope: !2092, file: !100, line: 973, type: !8)
!2099 = !DILocalVariable(name: "options", scope: !2092, file: !100, line: 975, type: !107)
!2100 = !DILocation(line: 973, column: 32, scope: !2092)
!2101 = !DILocation(line: 973, column: 44, scope: !2092)
!2102 = !DILocation(line: 973, column: 58, scope: !2092)
!2103 = !DILocation(line: 975, column: 3, scope: !2092)
!2104 = !DILocation(line: 976, column: 13, scope: !2092)
!2105 = !{i64 0, i64 4, !1046, i64 4, i64 4, !632, i64 8, i64 32, !1046, i64 40, i64 8, !582, i64 48, i64 8, !582}
!2106 = !DILocation(line: 975, column: 26, scope: !2092)
!2107 = !DILocation(line: 144, column: 43, scope: !840, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 977, column: 3, scope: !2092)
!2109 = !DILocation(line: 144, column: 51, scope: !840, inlinedAt: !2108)
!2110 = !DILocation(line: 144, column: 58, scope: !840, inlinedAt: !2108)
!2111 = !DILocation(line: 146, column: 17, scope: !840, inlinedAt: !2108)
!2112 = !DILocation(line: 148, column: 62, scope: !840, inlinedAt: !2108)
!2113 = !DILocation(line: 148, column: 57, scope: !840, inlinedAt: !2108)
!2114 = !DILocation(line: 147, column: 17, scope: !840, inlinedAt: !2108)
!2115 = !DILocation(line: 149, column: 18, scope: !840, inlinedAt: !2108)
!2116 = !DILocation(line: 149, column: 15, scope: !840, inlinedAt: !2108)
!2117 = !DILocation(line: 149, column: 7, scope: !840, inlinedAt: !2108)
!2118 = !DILocation(line: 150, column: 12, scope: !840, inlinedAt: !2108)
!2119 = !DILocation(line: 150, column: 15, scope: !840, inlinedAt: !2108)
!2120 = !DILocation(line: 150, column: 25, scope: !840, inlinedAt: !2108)
!2121 = !DILocation(line: 150, column: 7, scope: !840, inlinedAt: !2108)
!2122 = !DILocation(line: 151, column: 18, scope: !840, inlinedAt: !2108)
!2123 = !DILocation(line: 151, column: 23, scope: !840, inlinedAt: !2108)
!2124 = !DILocation(line: 151, column: 6, scope: !840, inlinedAt: !2108)
!2125 = !DILocation(line: 978, column: 10, scope: !2092)
!2126 = !DILocation(line: 979, column: 1, scope: !2092)
!2127 = !DILocation(line: 978, column: 3, scope: !2092)
!2128 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2129, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2131)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!50, !6, !8}
!2131 = !{!2132, !2133}
!2132 = !DILocalVariable(name: "arg", arg: 1, scope: !2128, file: !100, line: 982, type: !6)
!2133 = !DILocalVariable(name: "ch", arg: 2, scope: !2128, file: !100, line: 982, type: !8)
!2134 = !DILocation(line: 982, column: 28, scope: !2128)
!2135 = !DILocation(line: 982, column: 38, scope: !2128)
!2136 = !DILocation(line: 973, column: 32, scope: !2092, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 984, column: 10, scope: !2128)
!2138 = !DILocation(line: 973, column: 44, scope: !2092, inlinedAt: !2137)
!2139 = !DILocation(line: 973, column: 58, scope: !2092, inlinedAt: !2137)
!2140 = !DILocation(line: 975, column: 3, scope: !2092, inlinedAt: !2137)
!2141 = !DILocation(line: 976, column: 13, scope: !2092, inlinedAt: !2137)
!2142 = !DILocation(line: 975, column: 26, scope: !2092, inlinedAt: !2137)
!2143 = !DILocation(line: 144, column: 43, scope: !840, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 977, column: 3, scope: !2092, inlinedAt: !2137)
!2145 = !DILocation(line: 144, column: 51, scope: !840, inlinedAt: !2144)
!2146 = !DILocation(line: 144, column: 58, scope: !840, inlinedAt: !2144)
!2147 = !DILocation(line: 146, column: 17, scope: !840, inlinedAt: !2144)
!2148 = !DILocation(line: 148, column: 62, scope: !840, inlinedAt: !2144)
!2149 = !DILocation(line: 148, column: 57, scope: !840, inlinedAt: !2144)
!2150 = !DILocation(line: 147, column: 17, scope: !840, inlinedAt: !2144)
!2151 = !DILocation(line: 149, column: 18, scope: !840, inlinedAt: !2144)
!2152 = !DILocation(line: 149, column: 15, scope: !840, inlinedAt: !2144)
!2153 = !DILocation(line: 149, column: 7, scope: !840, inlinedAt: !2144)
!2154 = !DILocation(line: 150, column: 12, scope: !840, inlinedAt: !2144)
!2155 = !DILocation(line: 150, column: 15, scope: !840, inlinedAt: !2144)
!2156 = !DILocation(line: 150, column: 25, scope: !840, inlinedAt: !2144)
!2157 = !DILocation(line: 150, column: 7, scope: !840, inlinedAt: !2144)
!2158 = !DILocation(line: 151, column: 18, scope: !840, inlinedAt: !2144)
!2159 = !DILocation(line: 151, column: 23, scope: !840, inlinedAt: !2144)
!2160 = !DILocation(line: 151, column: 6, scope: !840, inlinedAt: !2144)
!2161 = !DILocation(line: 978, column: 10, scope: !2092, inlinedAt: !2137)
!2162 = !DILocation(line: 979, column: 1, scope: !2092, inlinedAt: !2137)
!2163 = !DILocation(line: 984, column: 3, scope: !2128)
!2164 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !1940, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2165)
!2165 = !{!2166}
!2166 = !DILocalVariable(name: "arg", arg: 1, scope: !2164, file: !100, line: 988, type: !6)
!2167 = !DILocation(line: 988, column: 29, scope: !2164)
!2168 = !DILocation(line: 982, column: 28, scope: !2128, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 990, column: 10, scope: !2164)
!2170 = !DILocation(line: 982, column: 38, scope: !2128, inlinedAt: !2169)
!2171 = !DILocation(line: 973, column: 32, scope: !2092, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 984, column: 10, scope: !2128, inlinedAt: !2169)
!2173 = !DILocation(line: 973, column: 44, scope: !2092, inlinedAt: !2172)
!2174 = !DILocation(line: 973, column: 58, scope: !2092, inlinedAt: !2172)
!2175 = !DILocation(line: 975, column: 3, scope: !2092, inlinedAt: !2172)
!2176 = !DILocation(line: 976, column: 13, scope: !2092, inlinedAt: !2172)
!2177 = !DILocation(line: 975, column: 26, scope: !2092, inlinedAt: !2172)
!2178 = !DILocation(line: 144, column: 43, scope: !840, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 977, column: 3, scope: !2092, inlinedAt: !2172)
!2180 = !DILocation(line: 144, column: 51, scope: !840, inlinedAt: !2179)
!2181 = !DILocation(line: 144, column: 58, scope: !840, inlinedAt: !2179)
!2182 = !DILocation(line: 146, column: 17, scope: !840, inlinedAt: !2179)
!2183 = !DILocation(line: 148, column: 57, scope: !840, inlinedAt: !2179)
!2184 = !DILocation(line: 147, column: 17, scope: !840, inlinedAt: !2179)
!2185 = !DILocation(line: 149, column: 7, scope: !840, inlinedAt: !2179)
!2186 = !DILocation(line: 150, column: 12, scope: !840, inlinedAt: !2179)
!2187 = !DILocation(line: 151, column: 6, scope: !840, inlinedAt: !2179)
!2188 = !DILocation(line: 978, column: 10, scope: !2092, inlinedAt: !2172)
!2189 = !DILocation(line: 979, column: 1, scope: !2092, inlinedAt: !2172)
!2190 = !DILocation(line: 990, column: 3, scope: !2164)
!2191 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !1951, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2192)
!2192 = !{!2193, !2194}
!2193 = !DILocalVariable(name: "arg", arg: 1, scope: !2191, file: !100, line: 994, type: !6)
!2194 = !DILocalVariable(name: "argsize", arg: 2, scope: !2191, file: !100, line: 994, type: !94)
!2195 = !DILocation(line: 994, column: 33, scope: !2191)
!2196 = !DILocation(line: 994, column: 45, scope: !2191)
!2197 = !DILocation(line: 973, column: 32, scope: !2092, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 996, column: 10, scope: !2191)
!2199 = !DILocation(line: 973, column: 44, scope: !2092, inlinedAt: !2198)
!2200 = !DILocation(line: 973, column: 58, scope: !2092, inlinedAt: !2198)
!2201 = !DILocation(line: 975, column: 3, scope: !2092, inlinedAt: !2198)
!2202 = !DILocation(line: 976, column: 13, scope: !2092, inlinedAt: !2198)
!2203 = !DILocation(line: 975, column: 26, scope: !2092, inlinedAt: !2198)
!2204 = !DILocation(line: 144, column: 43, scope: !840, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 977, column: 3, scope: !2092, inlinedAt: !2198)
!2206 = !DILocation(line: 144, column: 51, scope: !840, inlinedAt: !2205)
!2207 = !DILocation(line: 144, column: 58, scope: !840, inlinedAt: !2205)
!2208 = !DILocation(line: 146, column: 17, scope: !840, inlinedAt: !2205)
!2209 = !DILocation(line: 148, column: 57, scope: !840, inlinedAt: !2205)
!2210 = !DILocation(line: 147, column: 17, scope: !840, inlinedAt: !2205)
!2211 = !DILocation(line: 149, column: 7, scope: !840, inlinedAt: !2205)
!2212 = !DILocation(line: 150, column: 12, scope: !840, inlinedAt: !2205)
!2213 = !DILocation(line: 151, column: 6, scope: !840, inlinedAt: !2205)
!2214 = !DILocation(line: 978, column: 10, scope: !2092, inlinedAt: !2198)
!2215 = !DILocation(line: 979, column: 1, scope: !2092, inlinedAt: !2198)
!2216 = !DILocation(line: 996, column: 3, scope: !2191)
!2217 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !1965, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2218)
!2218 = !{!2219, !2220, !2221, !2222}
!2219 = !DILocalVariable(name: "n", arg: 1, scope: !2217, file: !100, line: 1000, type: !25)
!2220 = !DILocalVariable(name: "s", arg: 2, scope: !2217, file: !100, line: 1000, type: !58)
!2221 = !DILocalVariable(name: "arg", arg: 3, scope: !2217, file: !100, line: 1000, type: !6)
!2222 = !DILocalVariable(name: "options", scope: !2217, file: !100, line: 1002, type: !107)
!2223 = !DILocation(line: 187, column: 26, scope: !1973, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 1003, column: 13, scope: !2217)
!2225 = !DILocation(line: 1000, column: 29, scope: !2217)
!2226 = !DILocation(line: 1000, column: 51, scope: !2217)
!2227 = !DILocation(line: 1000, column: 66, scope: !2217)
!2228 = !DILocation(line: 1002, column: 3, scope: !2217)
!2229 = !DILocation(line: 185, column: 48, scope: !1973, inlinedAt: !2224)
!2230 = !DILocation(line: 187, column: 3, scope: !1973, inlinedAt: !2224)
!2231 = !DILocation(line: 188, column: 13, scope: !1990, inlinedAt: !2224)
!2232 = !DILocation(line: 188, column: 7, scope: !1973, inlinedAt: !2224)
!2233 = !DILocation(line: 189, column: 5, scope: !1990, inlinedAt: !2224)
!2234 = !{!2235}
!2235 = distinct !{!2235, !2236, !"quoting_options_from_style: argument 0"}
!2236 = distinct !{!2236, !"quoting_options_from_style"}
!2237 = !DILocation(line: 191, column: 10, scope: !1973, inlinedAt: !2224)
!2238 = !DILocation(line: 192, column: 1, scope: !1973, inlinedAt: !2224)
!2239 = !DILocation(line: 1003, column: 13, scope: !2217)
!2240 = !DILocation(line: 1002, column: 26, scope: !2217)
!2241 = !DILocation(line: 144, column: 43, scope: !840, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 1004, column: 3, scope: !2217)
!2243 = !DILocation(line: 144, column: 51, scope: !840, inlinedAt: !2242)
!2244 = !DILocation(line: 144, column: 58, scope: !840, inlinedAt: !2242)
!2245 = !DILocation(line: 146, column: 17, scope: !840, inlinedAt: !2242)
!2246 = !DILocation(line: 148, column: 57, scope: !840, inlinedAt: !2242)
!2247 = !DILocation(line: 147, column: 17, scope: !840, inlinedAt: !2242)
!2248 = !DILocation(line: 149, column: 7, scope: !840, inlinedAt: !2242)
!2249 = !DILocation(line: 150, column: 12, scope: !840, inlinedAt: !2242)
!2250 = !DILocation(line: 151, column: 6, scope: !840, inlinedAt: !2242)
!2251 = !DILocation(line: 1005, column: 10, scope: !2217)
!2252 = !DILocation(line: 1006, column: 1, scope: !2217)
!2253 = !DILocation(line: 1005, column: 3, scope: !2217)
!2254 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2255, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!50, !25, !6, !6, !6}
!2257 = !{!2258, !2259, !2260, !2261}
!2258 = !DILocalVariable(name: "n", arg: 1, scope: !2254, file: !100, line: 1009, type: !25)
!2259 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2254, file: !100, line: 1009, type: !6)
!2260 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2254, file: !100, line: 1010, type: !6)
!2261 = !DILocalVariable(name: "arg", arg: 4, scope: !2254, file: !100, line: 1010, type: !6)
!2262 = !DILocation(line: 1009, column: 24, scope: !2254)
!2263 = !DILocation(line: 1009, column: 39, scope: !2254)
!2264 = !DILocation(line: 1010, column: 32, scope: !2254)
!2265 = !DILocation(line: 1010, column: 57, scope: !2254)
!2266 = !DILocalVariable(name: "n", arg: 1, scope: !2267, file: !100, line: 1017, type: !25)
!2267 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2268, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!50, !25, !6, !6, !6, !94}
!2270 = !{!2266, !2271, !2272, !2273, !2274, !2275}
!2271 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2267, file: !100, line: 1017, type: !6)
!2272 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2267, file: !100, line: 1018, type: !6)
!2273 = !DILocalVariable(name: "arg", arg: 4, scope: !2267, file: !100, line: 1019, type: !6)
!2274 = !DILocalVariable(name: "argsize", arg: 5, scope: !2267, file: !100, line: 1019, type: !94)
!2275 = !DILocalVariable(name: "o", scope: !2267, file: !100, line: 1021, type: !107)
!2276 = !DILocation(line: 1017, column: 28, scope: !2267, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 1012, column: 10, scope: !2254)
!2278 = !DILocation(line: 1017, column: 43, scope: !2267, inlinedAt: !2277)
!2279 = !DILocation(line: 1018, column: 36, scope: !2267, inlinedAt: !2277)
!2280 = !DILocation(line: 1019, column: 36, scope: !2267, inlinedAt: !2277)
!2281 = !DILocation(line: 1019, column: 48, scope: !2267, inlinedAt: !2277)
!2282 = !DILocation(line: 1021, column: 3, scope: !2267, inlinedAt: !2277)
!2283 = !DILocation(line: 1021, column: 30, scope: !2267, inlinedAt: !2277)
!2284 = !DILocation(line: 1021, column: 26, scope: !2267, inlinedAt: !2277)
!2285 = !DILocation(line: 171, column: 45, scope: !889, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 1022, column: 3, scope: !2267, inlinedAt: !2277)
!2287 = !DILocation(line: 172, column: 33, scope: !889, inlinedAt: !2286)
!2288 = !DILocation(line: 172, column: 57, scope: !889, inlinedAt: !2286)
!2289 = !DILocation(line: 176, column: 6, scope: !889, inlinedAt: !2286)
!2290 = !DILocation(line: 176, column: 12, scope: !889, inlinedAt: !2286)
!2291 = !DILocation(line: 177, column: 8, scope: !905, inlinedAt: !2286)
!2292 = !DILocation(line: 177, column: 23, scope: !905, inlinedAt: !2286)
!2293 = !DILocation(line: 177, column: 19, scope: !905, inlinedAt: !2286)
!2294 = !DILocation(line: 178, column: 5, scope: !905, inlinedAt: !2286)
!2295 = !DILocation(line: 179, column: 6, scope: !889, inlinedAt: !2286)
!2296 = !DILocation(line: 179, column: 17, scope: !889, inlinedAt: !2286)
!2297 = !DILocation(line: 180, column: 6, scope: !889, inlinedAt: !2286)
!2298 = !DILocation(line: 180, column: 18, scope: !889, inlinedAt: !2286)
!2299 = !DILocation(line: 1023, column: 10, scope: !2267, inlinedAt: !2277)
!2300 = !DILocation(line: 1024, column: 1, scope: !2267, inlinedAt: !2277)
!2301 = !DILocation(line: 1012, column: 3, scope: !2254)
!2302 = !DILocation(line: 1017, column: 28, scope: !2267)
!2303 = !DILocation(line: 1017, column: 43, scope: !2267)
!2304 = !DILocation(line: 1018, column: 36, scope: !2267)
!2305 = !DILocation(line: 1019, column: 36, scope: !2267)
!2306 = !DILocation(line: 1019, column: 48, scope: !2267)
!2307 = !DILocation(line: 1021, column: 3, scope: !2267)
!2308 = !DILocation(line: 1021, column: 30, scope: !2267)
!2309 = !DILocation(line: 1021, column: 26, scope: !2267)
!2310 = !DILocation(line: 171, column: 45, scope: !889, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 1022, column: 3, scope: !2267)
!2312 = !DILocation(line: 172, column: 33, scope: !889, inlinedAt: !2311)
!2313 = !DILocation(line: 172, column: 57, scope: !889, inlinedAt: !2311)
!2314 = !DILocation(line: 176, column: 6, scope: !889, inlinedAt: !2311)
!2315 = !DILocation(line: 176, column: 12, scope: !889, inlinedAt: !2311)
!2316 = !DILocation(line: 177, column: 8, scope: !905, inlinedAt: !2311)
!2317 = !DILocation(line: 177, column: 23, scope: !905, inlinedAt: !2311)
!2318 = !DILocation(line: 177, column: 19, scope: !905, inlinedAt: !2311)
!2319 = !DILocation(line: 178, column: 5, scope: !905, inlinedAt: !2311)
!2320 = !DILocation(line: 179, column: 6, scope: !889, inlinedAt: !2311)
!2321 = !DILocation(line: 179, column: 17, scope: !889, inlinedAt: !2311)
!2322 = !DILocation(line: 180, column: 6, scope: !889, inlinedAt: !2311)
!2323 = !DILocation(line: 180, column: 18, scope: !889, inlinedAt: !2311)
!2324 = !DILocation(line: 1023, column: 10, scope: !2267)
!2325 = !DILocation(line: 1024, column: 1, scope: !2267)
!2326 = !DILocation(line: 1023, column: 3, scope: !2267)
!2327 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2328, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!50, !6, !6, !6}
!2330 = !{!2331, !2332, !2333}
!2331 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2327, file: !100, line: 1027, type: !6)
!2332 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2327, file: !100, line: 1027, type: !6)
!2333 = !DILocalVariable(name: "arg", arg: 3, scope: !2327, file: !100, line: 1028, type: !6)
!2334 = !DILocation(line: 1027, column: 30, scope: !2327)
!2335 = !DILocation(line: 1027, column: 54, scope: !2327)
!2336 = !DILocation(line: 1028, column: 30, scope: !2327)
!2337 = !DILocation(line: 1009, column: 24, scope: !2254, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 1030, column: 10, scope: !2327)
!2339 = !DILocation(line: 1009, column: 39, scope: !2254, inlinedAt: !2338)
!2340 = !DILocation(line: 1010, column: 32, scope: !2254, inlinedAt: !2338)
!2341 = !DILocation(line: 1010, column: 57, scope: !2254, inlinedAt: !2338)
!2342 = !DILocation(line: 1017, column: 28, scope: !2267, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 1012, column: 10, scope: !2254, inlinedAt: !2338)
!2344 = !DILocation(line: 1017, column: 43, scope: !2267, inlinedAt: !2343)
!2345 = !DILocation(line: 1018, column: 36, scope: !2267, inlinedAt: !2343)
!2346 = !DILocation(line: 1019, column: 36, scope: !2267, inlinedAt: !2343)
!2347 = !DILocation(line: 1019, column: 48, scope: !2267, inlinedAt: !2343)
!2348 = !DILocation(line: 1021, column: 3, scope: !2267, inlinedAt: !2343)
!2349 = !DILocation(line: 1021, column: 30, scope: !2267, inlinedAt: !2343)
!2350 = !DILocation(line: 1021, column: 26, scope: !2267, inlinedAt: !2343)
!2351 = !DILocation(line: 171, column: 45, scope: !889, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 1022, column: 3, scope: !2267, inlinedAt: !2343)
!2353 = !DILocation(line: 172, column: 33, scope: !889, inlinedAt: !2352)
!2354 = !DILocation(line: 172, column: 57, scope: !889, inlinedAt: !2352)
!2355 = !DILocation(line: 176, column: 6, scope: !889, inlinedAt: !2352)
!2356 = !DILocation(line: 176, column: 12, scope: !889, inlinedAt: !2352)
!2357 = !DILocation(line: 177, column: 8, scope: !905, inlinedAt: !2352)
!2358 = !DILocation(line: 177, column: 23, scope: !905, inlinedAt: !2352)
!2359 = !DILocation(line: 177, column: 19, scope: !905, inlinedAt: !2352)
!2360 = !DILocation(line: 178, column: 5, scope: !905, inlinedAt: !2352)
!2361 = !DILocation(line: 179, column: 6, scope: !889, inlinedAt: !2352)
!2362 = !DILocation(line: 179, column: 17, scope: !889, inlinedAt: !2352)
!2363 = !DILocation(line: 180, column: 6, scope: !889, inlinedAt: !2352)
!2364 = !DILocation(line: 180, column: 18, scope: !889, inlinedAt: !2352)
!2365 = !DILocation(line: 1023, column: 10, scope: !2267, inlinedAt: !2343)
!2366 = !DILocation(line: 1024, column: 1, scope: !2267, inlinedAt: !2343)
!2367 = !DILocation(line: 1030, column: 3, scope: !2327)
!2368 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2369, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!50, !6, !6, !6, !94}
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2368, file: !100, line: 1034, type: !6)
!2373 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2368, file: !100, line: 1034, type: !6)
!2374 = !DILocalVariable(name: "arg", arg: 3, scope: !2368, file: !100, line: 1035, type: !6)
!2375 = !DILocalVariable(name: "argsize", arg: 4, scope: !2368, file: !100, line: 1035, type: !94)
!2376 = !DILocation(line: 1034, column: 34, scope: !2368)
!2377 = !DILocation(line: 1034, column: 58, scope: !2368)
!2378 = !DILocation(line: 1035, column: 34, scope: !2368)
!2379 = !DILocation(line: 1035, column: 46, scope: !2368)
!2380 = !DILocation(line: 1017, column: 28, scope: !2267, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 1037, column: 10, scope: !2368)
!2382 = !DILocation(line: 1017, column: 43, scope: !2267, inlinedAt: !2381)
!2383 = !DILocation(line: 1018, column: 36, scope: !2267, inlinedAt: !2381)
!2384 = !DILocation(line: 1019, column: 36, scope: !2267, inlinedAt: !2381)
!2385 = !DILocation(line: 1019, column: 48, scope: !2267, inlinedAt: !2381)
!2386 = !DILocation(line: 1021, column: 3, scope: !2267, inlinedAt: !2381)
!2387 = !DILocation(line: 1021, column: 30, scope: !2267, inlinedAt: !2381)
!2388 = !DILocation(line: 1021, column: 26, scope: !2267, inlinedAt: !2381)
!2389 = !DILocation(line: 171, column: 45, scope: !889, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 1022, column: 3, scope: !2267, inlinedAt: !2381)
!2391 = !DILocation(line: 172, column: 33, scope: !889, inlinedAt: !2390)
!2392 = !DILocation(line: 172, column: 57, scope: !889, inlinedAt: !2390)
!2393 = !DILocation(line: 176, column: 6, scope: !889, inlinedAt: !2390)
!2394 = !DILocation(line: 176, column: 12, scope: !889, inlinedAt: !2390)
!2395 = !DILocation(line: 177, column: 8, scope: !905, inlinedAt: !2390)
!2396 = !DILocation(line: 177, column: 23, scope: !905, inlinedAt: !2390)
!2397 = !DILocation(line: 177, column: 19, scope: !905, inlinedAt: !2390)
!2398 = !DILocation(line: 178, column: 5, scope: !905, inlinedAt: !2390)
!2399 = !DILocation(line: 179, column: 6, scope: !889, inlinedAt: !2390)
!2400 = !DILocation(line: 179, column: 17, scope: !889, inlinedAt: !2390)
!2401 = !DILocation(line: 180, column: 6, scope: !889, inlinedAt: !2390)
!2402 = !DILocation(line: 180, column: 18, scope: !889, inlinedAt: !2390)
!2403 = !DILocation(line: 1023, column: 10, scope: !2267, inlinedAt: !2381)
!2404 = !DILocation(line: 1024, column: 1, scope: !2267, inlinedAt: !2381)
!2405 = !DILocation(line: 1037, column: 3, scope: !2368)
!2406 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2407, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!6, !25, !6, !94}
!2409 = !{!2410, !2411, !2412}
!2410 = !DILocalVariable(name: "n", arg: 1, scope: !2406, file: !100, line: 1052, type: !25)
!2411 = !DILocalVariable(name: "arg", arg: 2, scope: !2406, file: !100, line: 1052, type: !6)
!2412 = !DILocalVariable(name: "argsize", arg: 3, scope: !2406, file: !100, line: 1052, type: !94)
!2413 = !DILocation(line: 1052, column: 18, scope: !2406)
!2414 = !DILocation(line: 1052, column: 33, scope: !2406)
!2415 = !DILocation(line: 1052, column: 45, scope: !2406)
!2416 = !DILocation(line: 1054, column: 10, scope: !2406)
!2417 = !DILocation(line: 1054, column: 3, scope: !2406)
!2418 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2419, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!6, !6, !94}
!2421 = !{!2422, !2423}
!2422 = !DILocalVariable(name: "arg", arg: 1, scope: !2418, file: !100, line: 1058, type: !6)
!2423 = !DILocalVariable(name: "argsize", arg: 2, scope: !2418, file: !100, line: 1058, type: !94)
!2424 = !DILocation(line: 1058, column: 24, scope: !2418)
!2425 = !DILocation(line: 1058, column: 36, scope: !2418)
!2426 = !DILocation(line: 1052, column: 18, scope: !2406, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 1060, column: 10, scope: !2418)
!2428 = !DILocation(line: 1052, column: 33, scope: !2406, inlinedAt: !2427)
!2429 = !DILocation(line: 1052, column: 45, scope: !2406, inlinedAt: !2427)
!2430 = !DILocation(line: 1054, column: 10, scope: !2406, inlinedAt: !2427)
!2431 = !DILocation(line: 1060, column: 3, scope: !2418)
!2432 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2433, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!6, !25, !6}
!2435 = !{!2436, !2437}
!2436 = !DILocalVariable(name: "n", arg: 1, scope: !2432, file: !100, line: 1064, type: !25)
!2437 = !DILocalVariable(name: "arg", arg: 2, scope: !2432, file: !100, line: 1064, type: !6)
!2438 = !DILocation(line: 1064, column: 14, scope: !2432)
!2439 = !DILocation(line: 1064, column: 29, scope: !2432)
!2440 = !DILocation(line: 1052, column: 18, scope: !2406, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 1066, column: 10, scope: !2432)
!2442 = !DILocation(line: 1052, column: 33, scope: !2406, inlinedAt: !2441)
!2443 = !DILocation(line: 1052, column: 45, scope: !2406, inlinedAt: !2441)
!2444 = !DILocation(line: 1054, column: 10, scope: !2406, inlinedAt: !2441)
!2445 = !DILocation(line: 1066, column: 3, scope: !2432)
!2446 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2447, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!6, !6}
!2449 = !{!2450}
!2450 = !DILocalVariable(name: "arg", arg: 1, scope: !2446, file: !100, line: 1070, type: !6)
!2451 = !DILocation(line: 1070, column: 20, scope: !2446)
!2452 = !DILocation(line: 1064, column: 14, scope: !2432, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 1072, column: 10, scope: !2446)
!2454 = !DILocation(line: 1064, column: 29, scope: !2432, inlinedAt: !2453)
!2455 = !DILocation(line: 1052, column: 18, scope: !2406, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 1066, column: 10, scope: !2432, inlinedAt: !2453)
!2457 = !DILocation(line: 1052, column: 33, scope: !2406, inlinedAt: !2456)
!2458 = !DILocation(line: 1052, column: 45, scope: !2406, inlinedAt: !2456)
!2459 = !DILocation(line: 1054, column: 10, scope: !2406, inlinedAt: !2456)
!2460 = !DILocation(line: 1072, column: 3, scope: !2446)
!2461 = distinct !DISubprogram(name: "version_etc_arn", scope: !526, file: !526, line: 62, type: !2462, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2518)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{null, !2464, !6, !6, !6, !2517, !94}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2466, line: 7, baseType: !2467)
!2466 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2468, line: 241, size: 1728, elements: !2469)
!2468 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2490, !2491, !2492, !2493, !2497, !2498, !2500, !2502, !2505, !2507, !2508, !2509, !2510, !2511, !2512, !2513}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2467, file: !2468, line: 242, baseType: !25, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2467, file: !2468, line: 247, baseType: !50, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2467, file: !2468, line: 248, baseType: !50, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2467, file: !2468, line: 249, baseType: !50, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2467, file: !2468, line: 250, baseType: !50, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2467, file: !2468, line: 251, baseType: !50, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2467, file: !2468, line: 252, baseType: !50, size: 64, offset: 384)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2467, file: !2468, line: 253, baseType: !50, size: 64, offset: 448)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2467, file: !2468, line: 254, baseType: !50, size: 64, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2467, file: !2468, line: 256, baseType: !50, size: 64, offset: 576)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2467, file: !2468, line: 257, baseType: !50, size: 64, offset: 640)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2467, file: !2468, line: 258, baseType: !50, size: 64, offset: 704)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2467, file: !2468, line: 260, baseType: !2483, size: 64, offset: 768)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2468, line: 156, size: 192, elements: !2485)
!2485 = !{!2486, !2487, !2489}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2484, file: !2468, line: 157, baseType: !2483, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2484, file: !2468, line: 158, baseType: !2488, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2484, file: !2468, line: 162, baseType: !25, size: 32, offset: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2467, file: !2468, line: 262, baseType: !2488, size: 64, offset: 832)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2467, file: !2468, line: 264, baseType: !25, size: 32, offset: 896)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2467, file: !2468, line: 268, baseType: !25, size: 32, offset: 928)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2467, file: !2468, line: 270, baseType: !2494, size: 64, offset: 960)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2495, line: 140, baseType: !2496)
!2495 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2496 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2467, file: !2468, line: 274, baseType: !93, size: 16, offset: 1024)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2467, file: !2468, line: 275, baseType: !2499, size: 8, offset: 1040)
!2499 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2467, file: !2468, line: 276, baseType: !2501, size: 8, offset: 1048)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !733)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2467, file: !2468, line: 280, baseType: !2503, size: 64, offset: 1088)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2468, line: 150, baseType: null)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2467, file: !2468, line: 289, baseType: !2506, size: 64, offset: 1152)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2495, line: 141, baseType: !2496)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2467, file: !2468, line: 297, baseType: !49, size: 64, offset: 1216)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2467, file: !2468, line: 298, baseType: !49, size: 64, offset: 1280)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2467, file: !2468, line: 299, baseType: !49, size: 64, offset: 1344)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2467, file: !2468, line: 300, baseType: !49, size: 64, offset: 1408)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2467, file: !2468, line: 302, baseType: !94, size: 64, offset: 1472)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2467, file: !2468, line: 303, baseType: !25, size: 32, offset: 1536)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2467, file: !2468, line: 305, baseType: !2514, size: 160, offset: 1568)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2515)
!2515 = !{!2516}
!2516 = !DISubrange(count: 20)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2518 = !{!2519, !2520, !2521, !2522, !2523, !2524}
!2519 = !DILocalVariable(name: "stream", arg: 1, scope: !2461, file: !526, line: 62, type: !2464)
!2520 = !DILocalVariable(name: "command_name", arg: 2, scope: !2461, file: !526, line: 63, type: !6)
!2521 = !DILocalVariable(name: "package", arg: 3, scope: !2461, file: !526, line: 63, type: !6)
!2522 = !DILocalVariable(name: "version", arg: 4, scope: !2461, file: !526, line: 64, type: !6)
!2523 = !DILocalVariable(name: "authors", arg: 5, scope: !2461, file: !526, line: 65, type: !2517)
!2524 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2461, file: !526, line: 65, type: !94)
!2525 = !DILocation(line: 62, column: 24, scope: !2461)
!2526 = !DILocation(line: 63, column: 30, scope: !2461)
!2527 = !DILocation(line: 63, column: 56, scope: !2461)
!2528 = !DILocation(line: 64, column: 30, scope: !2461)
!2529 = !DILocation(line: 65, column: 39, scope: !2461)
!2530 = !DILocation(line: 65, column: 55, scope: !2461)
!2531 = !DILocation(line: 67, column: 7, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2461, file: !526, line: 67, column: 7)
!2533 = !DILocation(line: 67, column: 7, scope: !2461)
!2534 = !DILocation(line: 68, column: 5, scope: !2532)
!2535 = !DILocation(line: 70, column: 5, scope: !2532)
!2536 = !DILocation(line: 84, column: 3, scope: !2461)
!2537 = !DILocation(line: 86, column: 3, scope: !2461)
!2538 = !DILocation(line: 95, column: 3, scope: !2461)
!2539 = !DILocation(line: 99, column: 7, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2461, file: !526, line: 96, column: 5)
!2541 = !DILocation(line: 102, column: 7, scope: !2540)
!2542 = !DILocation(line: 103, column: 7, scope: !2540)
!2543 = !DILocation(line: 106, column: 7, scope: !2540)
!2544 = !DILocation(line: 107, column: 7, scope: !2540)
!2545 = !DILocation(line: 110, column: 7, scope: !2540)
!2546 = !DILocation(line: 112, column: 7, scope: !2540)
!2547 = !DILocation(line: 117, column: 7, scope: !2540)
!2548 = !DILocation(line: 119, column: 7, scope: !2540)
!2549 = !DILocation(line: 124, column: 7, scope: !2540)
!2550 = !DILocation(line: 126, column: 7, scope: !2540)
!2551 = !DILocation(line: 131, column: 7, scope: !2540)
!2552 = !DILocation(line: 134, column: 7, scope: !2540)
!2553 = !DILocation(line: 139, column: 7, scope: !2540)
!2554 = !DILocation(line: 142, column: 7, scope: !2540)
!2555 = !DILocation(line: 147, column: 7, scope: !2540)
!2556 = !DILocation(line: 151, column: 7, scope: !2540)
!2557 = !DILocation(line: 156, column: 7, scope: !2540)
!2558 = !DILocation(line: 160, column: 7, scope: !2540)
!2559 = !DILocation(line: 167, column: 7, scope: !2540)
!2560 = !DILocation(line: 171, column: 7, scope: !2540)
!2561 = !DILocation(line: 173, column: 1, scope: !2461)
!2562 = distinct !DISubprogram(name: "version_etc_ar", scope: !526, file: !526, line: 180, type: !2563, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !2464, !6, !6, !6, !2517}
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2571}
!2566 = !DILocalVariable(name: "stream", arg: 1, scope: !2562, file: !526, line: 180, type: !2464)
!2567 = !DILocalVariable(name: "command_name", arg: 2, scope: !2562, file: !526, line: 181, type: !6)
!2568 = !DILocalVariable(name: "package", arg: 3, scope: !2562, file: !526, line: 181, type: !6)
!2569 = !DILocalVariable(name: "version", arg: 4, scope: !2562, file: !526, line: 182, type: !6)
!2570 = !DILocalVariable(name: "authors", arg: 5, scope: !2562, file: !526, line: 182, type: !2517)
!2571 = !DILocalVariable(name: "n_authors", scope: !2562, file: !526, line: 184, type: !94)
!2572 = !DILocation(line: 180, column: 23, scope: !2562)
!2573 = !DILocation(line: 181, column: 29, scope: !2562)
!2574 = !DILocation(line: 181, column: 55, scope: !2562)
!2575 = !DILocation(line: 182, column: 29, scope: !2562)
!2576 = !DILocation(line: 182, column: 59, scope: !2562)
!2577 = !DILocation(line: 184, column: 10, scope: !2562)
!2578 = !DILocation(line: 186, column: 8, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2562, file: !526, line: 186, column: 3)
!2580 = !DILocation(line: 186, column: 23, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2579, file: !526, line: 186, column: 3)
!2582 = !DILocation(line: 186, column: 3, scope: !2579)
!2583 = !DILocation(line: 186, column: 52, scope: !2581)
!2584 = distinct !{!2584, !2582, !2585}
!2585 = !DILocation(line: 187, column: 5, scope: !2579)
!2586 = !DILocation(line: 188, column: 3, scope: !2562)
!2587 = !DILocation(line: 189, column: 1, scope: !2562)
!2588 = distinct !DISubprogram(name: "version_etc_va", scope: !526, file: !526, line: 196, type: !2589, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2598)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{null, !2464, !6, !6, !6, !2591}
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !523, line: 189, size: 192, elements: !2593)
!2593 = !{!2594, !2595, !2596, !2597}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2592, file: !523, line: 189, baseType: !113, size: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2592, file: !523, line: 189, baseType: !113, size: 32, offset: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2592, file: !523, line: 189, baseType: !49, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2592, file: !523, line: 189, baseType: !49, size: 64, offset: 128)
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604, !2605}
!2599 = !DILocalVariable(name: "stream", arg: 1, scope: !2588, file: !526, line: 196, type: !2464)
!2600 = !DILocalVariable(name: "command_name", arg: 2, scope: !2588, file: !526, line: 197, type: !6)
!2601 = !DILocalVariable(name: "package", arg: 3, scope: !2588, file: !526, line: 197, type: !6)
!2602 = !DILocalVariable(name: "version", arg: 4, scope: !2588, file: !526, line: 198, type: !6)
!2603 = !DILocalVariable(name: "authors", arg: 5, scope: !2588, file: !526, line: 198, type: !2591)
!2604 = !DILocalVariable(name: "n_authors", scope: !2588, file: !526, line: 200, type: !94)
!2605 = !DILocalVariable(name: "authtab", scope: !2588, file: !526, line: 201, type: !2606)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2607 = !DILocation(line: 196, column: 23, scope: !2588)
!2608 = !DILocation(line: 197, column: 29, scope: !2588)
!2609 = !DILocation(line: 197, column: 55, scope: !2588)
!2610 = !DILocation(line: 198, column: 29, scope: !2588)
!2611 = !DILocation(line: 198, column: 46, scope: !2588)
!2612 = !DILocation(line: 201, column: 3, scope: !2588)
!2613 = !DILocation(line: 201, column: 15, scope: !2588)
!2614 = !DILocation(line: 200, column: 10, scope: !2588)
!2615 = !DILocation(line: 205, column: 35, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !526, line: 203, column: 3)
!2617 = distinct !DILexicalBlock(scope: !2588, file: !526, line: 203, column: 3)
!2618 = !DILocation(line: 205, column: 14, scope: !2616)
!2619 = !DILocation(line: 205, column: 33, scope: !2616)
!2620 = !DILocation(line: 205, column: 67, scope: !2616)
!2621 = !DILocation(line: 203, column: 3, scope: !2617)
!2622 = !DILocation(line: 208, column: 3, scope: !2588)
!2623 = !DILocation(line: 210, column: 1, scope: !2588)
!2624 = distinct !DISubprogram(name: "version_etc", scope: !526, file: !526, line: 227, type: !2625, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{null, !2464, !6, !6, !6, null}
!2627 = !{!2628, !2629, !2630, !2631, !2632}
!2628 = !DILocalVariable(name: "stream", arg: 1, scope: !2624, file: !526, line: 227, type: !2464)
!2629 = !DILocalVariable(name: "command_name", arg: 2, scope: !2624, file: !526, line: 228, type: !6)
!2630 = !DILocalVariable(name: "package", arg: 3, scope: !2624, file: !526, line: 228, type: !6)
!2631 = !DILocalVariable(name: "version", arg: 4, scope: !2624, file: !526, line: 229, type: !6)
!2632 = !DILocalVariable(name: "authors", scope: !2624, file: !526, line: 231, type: !2633)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !722, line: 46, baseType: !2634)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !724, line: 48, baseType: !2635)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !523, line: 231, baseType: !2636)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2592, size: 192, elements: !733)
!2637 = !DILocation(line: 227, column: 20, scope: !2624)
!2638 = !DILocation(line: 228, column: 26, scope: !2624)
!2639 = !DILocation(line: 228, column: 52, scope: !2624)
!2640 = !DILocation(line: 229, column: 26, scope: !2624)
!2641 = !DILocation(line: 231, column: 3, scope: !2624)
!2642 = !DILocation(line: 231, column: 11, scope: !2624)
!2643 = !DILocation(line: 233, column: 3, scope: !2624)
!2644 = !DILocation(line: 234, column: 3, scope: !2624)
!2645 = !DILocation(line: 235, column: 3, scope: !2624)
!2646 = !DILocation(line: 236, column: 1, scope: !2624)
!2647 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !526, file: !526, line: 239, type: !668, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !4)
!2648 = !DILocation(line: 245, column: 3, scope: !2647)
!2649 = !DILocation(line: 251, column: 3, scope: !2647)
!2650 = !DILocation(line: 256, column: 3, scope: !2647)
!2651 = !DILocation(line: 258, column: 1, scope: !2647)
!2652 = distinct !DISubprogram(name: "xnmalloc", scope: !534, file: !534, line: 105, type: !2653, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!49, !94, !94}
!2655 = !{!2656, !2657}
!2656 = !DILocalVariable(name: "n", arg: 1, scope: !2652, file: !534, line: 105, type: !94)
!2657 = !DILocalVariable(name: "s", arg: 2, scope: !2652, file: !534, line: 105, type: !94)
!2658 = !DILocation(line: 105, column: 18, scope: !2652)
!2659 = !DILocation(line: 105, column: 28, scope: !2652)
!2660 = !DILocation(line: 107, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2652, file: !534, line: 107, column: 7)
!2662 = !DILocation(line: 107, column: 7, scope: !2652)
!2663 = !DILocation(line: 108, column: 5, scope: !2661)
!2664 = !DILocation(line: 109, column: 21, scope: !2652)
!2665 = !DILocalVariable(name: "n", arg: 1, scope: !2666, file: !2667, line: 39, type: !94)
!2666 = distinct !DISubprogram(name: "xmalloc", scope: !2667, file: !2667, line: 39, type: !2668, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2670)
!2667 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!49, !94}
!2670 = !{!2665, !2671}
!2671 = !DILocalVariable(name: "p", scope: !2666, file: !2667, line: 41, type: !49)
!2672 = !DILocation(line: 39, column: 17, scope: !2666, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 109, column: 10, scope: !2652)
!2674 = !DILocation(line: 41, column: 13, scope: !2666, inlinedAt: !2673)
!2675 = !DILocation(line: 41, column: 9, scope: !2666, inlinedAt: !2673)
!2676 = !DILocation(line: 42, column: 8, scope: !2677, inlinedAt: !2673)
!2677 = distinct !DILexicalBlock(scope: !2666, file: !2667, line: 42, column: 7)
!2678 = !DILocation(line: 42, column: 15, scope: !2677, inlinedAt: !2673)
!2679 = !DILocation(line: 42, column: 10, scope: !2677, inlinedAt: !2673)
!2680 = !DILocation(line: 43, column: 5, scope: !2677, inlinedAt: !2673)
!2681 = !DILocation(line: 109, column: 3, scope: !2652)
!2682 = !DILocation(line: 39, column: 17, scope: !2666)
!2683 = !DILocation(line: 41, column: 13, scope: !2666)
!2684 = !DILocation(line: 41, column: 9, scope: !2666)
!2685 = !DILocation(line: 42, column: 8, scope: !2677)
!2686 = !DILocation(line: 42, column: 15, scope: !2677)
!2687 = !DILocation(line: 42, column: 10, scope: !2677)
!2688 = !DILocation(line: 43, column: 5, scope: !2677)
!2689 = !DILocation(line: 44, column: 3, scope: !2666)
!2690 = distinct !DISubprogram(name: "xnrealloc", scope: !534, file: !534, line: 118, type: !2691, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!49, !49, !94, !94}
!2693 = !{!2694, !2695, !2696}
!2694 = !DILocalVariable(name: "p", arg: 1, scope: !2690, file: !534, line: 118, type: !49)
!2695 = !DILocalVariable(name: "n", arg: 2, scope: !2690, file: !534, line: 118, type: !94)
!2696 = !DILocalVariable(name: "s", arg: 3, scope: !2690, file: !534, line: 118, type: !94)
!2697 = !DILocation(line: 118, column: 18, scope: !2690)
!2698 = !DILocation(line: 118, column: 28, scope: !2690)
!2699 = !DILocation(line: 118, column: 38, scope: !2690)
!2700 = !DILocation(line: 120, column: 7, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2690, file: !534, line: 120, column: 7)
!2702 = !DILocation(line: 120, column: 7, scope: !2690)
!2703 = !DILocation(line: 121, column: 5, scope: !2701)
!2704 = !DILocation(line: 122, column: 25, scope: !2690)
!2705 = !DILocalVariable(name: "p", arg: 1, scope: !2706, file: !2667, line: 51, type: !49)
!2706 = distinct !DISubprogram(name: "xrealloc", scope: !2667, file: !2667, line: 51, type: !2707, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2709)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!49, !49, !94}
!2709 = !{!2705, !2710}
!2710 = !DILocalVariable(name: "n", arg: 2, scope: !2706, file: !2667, line: 51, type: !94)
!2711 = !DILocation(line: 51, column: 17, scope: !2706, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 122, column: 10, scope: !2690)
!2713 = !DILocation(line: 51, column: 27, scope: !2706, inlinedAt: !2712)
!2714 = !DILocation(line: 53, column: 8, scope: !2715, inlinedAt: !2712)
!2715 = distinct !DILexicalBlock(scope: !2706, file: !2667, line: 53, column: 7)
!2716 = !DILocation(line: 53, column: 13, scope: !2715, inlinedAt: !2712)
!2717 = !DILocation(line: 53, column: 10, scope: !2715, inlinedAt: !2712)
!2718 = !DILocation(line: 57, column: 7, scope: !2719, inlinedAt: !2712)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !2667, line: 54, column: 5)
!2720 = !DILocation(line: 58, column: 7, scope: !2719, inlinedAt: !2712)
!2721 = !DILocation(line: 61, column: 7, scope: !2706, inlinedAt: !2712)
!2722 = !DILocation(line: 62, column: 8, scope: !2723, inlinedAt: !2712)
!2723 = distinct !DILexicalBlock(scope: !2706, file: !2667, line: 62, column: 7)
!2724 = !DILocation(line: 62, column: 13, scope: !2723, inlinedAt: !2712)
!2725 = !DILocation(line: 62, column: 10, scope: !2723, inlinedAt: !2712)
!2726 = !DILocation(line: 63, column: 5, scope: !2723, inlinedAt: !2712)
!2727 = !DILocation(line: 122, column: 3, scope: !2690)
!2728 = !DILocation(line: 51, column: 17, scope: !2706)
!2729 = !DILocation(line: 51, column: 27, scope: !2706)
!2730 = !DILocation(line: 53, column: 8, scope: !2715)
!2731 = !DILocation(line: 53, column: 13, scope: !2715)
!2732 = !DILocation(line: 53, column: 10, scope: !2715)
!2733 = !DILocation(line: 57, column: 7, scope: !2719)
!2734 = !DILocation(line: 58, column: 7, scope: !2719)
!2735 = !DILocation(line: 61, column: 7, scope: !2706)
!2736 = !DILocation(line: 62, column: 8, scope: !2723)
!2737 = !DILocation(line: 62, column: 13, scope: !2723)
!2738 = !DILocation(line: 62, column: 10, scope: !2723)
!2739 = !DILocation(line: 63, column: 5, scope: !2723)
!2740 = !DILocation(line: 65, column: 1, scope: !2706)
!2741 = !DILocation(line: 180, column: 19, scope: !535)
!2742 = !DILocation(line: 180, column: 30, scope: !535)
!2743 = !DILocation(line: 180, column: 41, scope: !535)
!2744 = !DILocation(line: 182, column: 14, scope: !535)
!2745 = !DILocation(line: 182, column: 10, scope: !535)
!2746 = !DILocation(line: 184, column: 9, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !535, file: !534, line: 184, column: 7)
!2748 = !DILocation(line: 184, column: 7, scope: !535)
!2749 = !DILocation(line: 186, column: 13, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !534, line: 186, column: 11)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !534, line: 185, column: 5)
!2752 = !DILocation(line: 186, column: 11, scope: !2751)
!2753 = !DILocation(line: 194, column: 30, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2750, file: !534, line: 187, column: 9)
!2755 = !DILocation(line: 195, column: 16, scope: !2754)
!2756 = !DILocation(line: 195, column: 13, scope: !2754)
!2757 = !DILocation(line: 196, column: 9, scope: !2754)
!2758 = !DILocation(line: 204, column: 69, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !534, line: 204, column: 11)
!2760 = distinct !DILexicalBlock(scope: !2747, file: !534, line: 199, column: 5)
!2761 = !DILocation(line: 205, column: 11, scope: !2759)
!2762 = !DILocation(line: 204, column: 11, scope: !2760)
!2763 = !DILocation(line: 206, column: 9, scope: !2759)
!2764 = !DILocation(line: 210, column: 7, scope: !535)
!2765 = !DILocation(line: 211, column: 25, scope: !535)
!2766 = !DILocation(line: 51, column: 17, scope: !2706, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 211, column: 10, scope: !535)
!2768 = !DILocation(line: 51, column: 27, scope: !2706, inlinedAt: !2767)
!2769 = !DILocation(line: 53, column: 10, scope: !2715, inlinedAt: !2767)
!2770 = !DILocation(line: 207, column: 14, scope: !2760)
!2771 = !DILocation(line: 207, column: 18, scope: !2760)
!2772 = !DILocation(line: 207, column: 9, scope: !2760)
!2773 = !DILocation(line: 53, column: 8, scope: !2715, inlinedAt: !2767)
!2774 = !DILocation(line: 57, column: 7, scope: !2719, inlinedAt: !2767)
!2775 = !DILocation(line: 58, column: 7, scope: !2719, inlinedAt: !2767)
!2776 = !DILocation(line: 61, column: 7, scope: !2706, inlinedAt: !2767)
!2777 = !DILocation(line: 62, column: 8, scope: !2723, inlinedAt: !2767)
!2778 = !DILocation(line: 62, column: 13, scope: !2723, inlinedAt: !2767)
!2779 = !DILocation(line: 62, column: 10, scope: !2723, inlinedAt: !2767)
!2780 = !DILocation(line: 63, column: 5, scope: !2723, inlinedAt: !2767)
!2781 = !DILocation(line: 211, column: 3, scope: !535)
!2782 = distinct !DISubprogram(name: "xcharalloc", scope: !534, file: !534, line: 220, type: !1738, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2783)
!2783 = !{!2784}
!2784 = !DILocalVariable(name: "n", arg: 1, scope: !2782, file: !534, line: 220, type: !94)
!2785 = !DILocation(line: 220, column: 20, scope: !2782)
!2786 = !DILocation(line: 39, column: 17, scope: !2666, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 222, column: 10, scope: !2782)
!2788 = !DILocation(line: 41, column: 13, scope: !2666, inlinedAt: !2787)
!2789 = !DILocation(line: 41, column: 9, scope: !2666, inlinedAt: !2787)
!2790 = !DILocation(line: 42, column: 8, scope: !2677, inlinedAt: !2787)
!2791 = !DILocation(line: 42, column: 15, scope: !2677, inlinedAt: !2787)
!2792 = !DILocation(line: 42, column: 10, scope: !2677, inlinedAt: !2787)
!2793 = !DILocation(line: 43, column: 5, scope: !2677, inlinedAt: !2787)
!2794 = !DILocation(line: 222, column: 3, scope: !2782)
!2795 = distinct !DISubprogram(name: "x2realloc", scope: !2667, file: !2667, line: 74, type: !2796, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2798)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!49, !49, !538}
!2798 = !{!2799, !2800}
!2799 = !DILocalVariable(name: "p", arg: 1, scope: !2795, file: !2667, line: 74, type: !49)
!2800 = !DILocalVariable(name: "pn", arg: 2, scope: !2795, file: !2667, line: 74, type: !538)
!2801 = !DILocation(line: 74, column: 18, scope: !2795)
!2802 = !DILocation(line: 74, column: 29, scope: !2795)
!2803 = !DILocation(line: 180, column: 19, scope: !535, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 76, column: 10, scope: !2795)
!2805 = !DILocation(line: 180, column: 30, scope: !535, inlinedAt: !2804)
!2806 = !DILocation(line: 180, column: 41, scope: !535, inlinedAt: !2804)
!2807 = !DILocation(line: 182, column: 14, scope: !535, inlinedAt: !2804)
!2808 = !DILocation(line: 182, column: 10, scope: !535, inlinedAt: !2804)
!2809 = !DILocation(line: 184, column: 9, scope: !2747, inlinedAt: !2804)
!2810 = !DILocation(line: 184, column: 7, scope: !535, inlinedAt: !2804)
!2811 = !DILocation(line: 186, column: 13, scope: !2750, inlinedAt: !2804)
!2812 = !DILocation(line: 186, column: 11, scope: !2751, inlinedAt: !2804)
!2813 = !DILocation(line: 210, column: 7, scope: !535, inlinedAt: !2804)
!2814 = !DILocation(line: 51, column: 17, scope: !2706, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 211, column: 10, scope: !535, inlinedAt: !2804)
!2816 = !DILocation(line: 51, column: 27, scope: !2706, inlinedAt: !2815)
!2817 = !DILocation(line: 53, column: 10, scope: !2715, inlinedAt: !2815)
!2818 = !DILocation(line: 205, column: 11, scope: !2759, inlinedAt: !2804)
!2819 = !DILocation(line: 204, column: 11, scope: !2760, inlinedAt: !2804)
!2820 = !DILocation(line: 206, column: 9, scope: !2759, inlinedAt: !2804)
!2821 = !DILocation(line: 207, column: 14, scope: !2760, inlinedAt: !2804)
!2822 = !DILocation(line: 207, column: 18, scope: !2760, inlinedAt: !2804)
!2823 = !DILocation(line: 207, column: 9, scope: !2760, inlinedAt: !2804)
!2824 = !DILocation(line: 53, column: 8, scope: !2715, inlinedAt: !2815)
!2825 = !DILocation(line: 57, column: 7, scope: !2719, inlinedAt: !2815)
!2826 = !DILocation(line: 58, column: 7, scope: !2719, inlinedAt: !2815)
!2827 = !DILocation(line: 61, column: 7, scope: !2706, inlinedAt: !2815)
!2828 = !DILocation(line: 62, column: 8, scope: !2723, inlinedAt: !2815)
!2829 = !DILocation(line: 62, column: 13, scope: !2723, inlinedAt: !2815)
!2830 = !DILocation(line: 62, column: 10, scope: !2723, inlinedAt: !2815)
!2831 = !DILocation(line: 63, column: 5, scope: !2723, inlinedAt: !2815)
!2832 = !DILocation(line: 76, column: 3, scope: !2795)
!2833 = distinct !DISubprogram(name: "xzalloc", scope: !2667, file: !2667, line: 84, type: !2668, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2834)
!2834 = !{!2835}
!2835 = !DILocalVariable(name: "s", arg: 1, scope: !2833, file: !2667, line: 84, type: !94)
!2836 = !DILocation(line: 84, column: 17, scope: !2833)
!2837 = !DILocation(line: 39, column: 17, scope: !2666, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 86, column: 18, scope: !2833)
!2839 = !DILocation(line: 41, column: 13, scope: !2666, inlinedAt: !2838)
!2840 = !DILocation(line: 41, column: 9, scope: !2666, inlinedAt: !2838)
!2841 = !DILocation(line: 42, column: 8, scope: !2677, inlinedAt: !2838)
!2842 = !DILocation(line: 42, column: 15, scope: !2677, inlinedAt: !2838)
!2843 = !DILocation(line: 42, column: 10, scope: !2677, inlinedAt: !2838)
!2844 = !DILocation(line: 43, column: 5, scope: !2677, inlinedAt: !2838)
!2845 = !DILocation(line: 86, column: 10, scope: !2833)
!2846 = !DILocation(line: 86, column: 3, scope: !2833)
!2847 = distinct !DISubprogram(name: "xcalloc", scope: !2667, file: !2667, line: 93, type: !2653, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2848)
!2848 = !{!2849, !2850, !2851}
!2849 = !DILocalVariable(name: "n", arg: 1, scope: !2847, file: !2667, line: 93, type: !94)
!2850 = !DILocalVariable(name: "s", arg: 2, scope: !2847, file: !2667, line: 93, type: !94)
!2851 = !DILocalVariable(name: "p", scope: !2847, file: !2667, line: 95, type: !49)
!2852 = !DILocation(line: 93, column: 17, scope: !2847)
!2853 = !DILocation(line: 93, column: 27, scope: !2847)
!2854 = !DILocation(line: 100, column: 7, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2847, file: !2667, line: 100, column: 7)
!2856 = !DILocation(line: 101, column: 7, scope: !2855)
!2857 = !DILocation(line: 101, column: 18, scope: !2855)
!2858 = !DILocation(line: 95, column: 9, scope: !2847)
!2859 = !DILocation(line: 101, column: 16, scope: !2855)
!2860 = !DILocation(line: 100, column: 7, scope: !2847)
!2861 = !DILocation(line: 102, column: 5, scope: !2855)
!2862 = !DILocation(line: 103, column: 3, scope: !2847)
!2863 = distinct !DISubprogram(name: "xmemdup", scope: !2667, file: !2667, line: 111, type: !2864, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2868)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!49, !2866, !94}
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2868 = !{!2869, !2870}
!2869 = !DILocalVariable(name: "p", arg: 1, scope: !2863, file: !2667, line: 111, type: !2866)
!2870 = !DILocalVariable(name: "s", arg: 2, scope: !2863, file: !2667, line: 111, type: !94)
!2871 = !DILocation(line: 111, column: 22, scope: !2863)
!2872 = !DILocation(line: 111, column: 32, scope: !2863)
!2873 = !DILocation(line: 39, column: 17, scope: !2666, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 113, column: 18, scope: !2863)
!2875 = !DILocation(line: 41, column: 13, scope: !2666, inlinedAt: !2874)
!2876 = !DILocation(line: 41, column: 9, scope: !2666, inlinedAt: !2874)
!2877 = !DILocation(line: 42, column: 8, scope: !2677, inlinedAt: !2874)
!2878 = !DILocation(line: 42, column: 15, scope: !2677, inlinedAt: !2874)
!2879 = !DILocation(line: 42, column: 10, scope: !2677, inlinedAt: !2874)
!2880 = !DILocation(line: 43, column: 5, scope: !2677, inlinedAt: !2874)
!2881 = !DILocation(line: 113, column: 10, scope: !2863)
!2882 = !DILocation(line: 113, column: 3, scope: !2863)
!2883 = distinct !DISubprogram(name: "xstrdup", scope: !2667, file: !2667, line: 119, type: !1940, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2884)
!2884 = !{!2885}
!2885 = !DILocalVariable(name: "string", arg: 1, scope: !2883, file: !2667, line: 119, type: !6)
!2886 = !DILocation(line: 119, column: 22, scope: !2883)
!2887 = !DILocation(line: 121, column: 27, scope: !2883)
!2888 = !DILocation(line: 121, column: 43, scope: !2883)
!2889 = !DILocation(line: 111, column: 22, scope: !2863, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 121, column: 10, scope: !2883)
!2891 = !DILocation(line: 111, column: 32, scope: !2863, inlinedAt: !2890)
!2892 = !DILocation(line: 39, column: 17, scope: !2666, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 113, column: 18, scope: !2863, inlinedAt: !2890)
!2894 = !DILocation(line: 41, column: 13, scope: !2666, inlinedAt: !2893)
!2895 = !DILocation(line: 41, column: 9, scope: !2666, inlinedAt: !2893)
!2896 = !DILocation(line: 42, column: 8, scope: !2677, inlinedAt: !2893)
!2897 = !DILocation(line: 42, column: 15, scope: !2677, inlinedAt: !2893)
!2898 = !DILocation(line: 42, column: 10, scope: !2677, inlinedAt: !2893)
!2899 = !DILocation(line: 43, column: 5, scope: !2677, inlinedAt: !2893)
!2900 = !DILocation(line: 113, column: 10, scope: !2863, inlinedAt: !2890)
!2901 = !DILocation(line: 121, column: 3, scope: !2883)
!2902 = distinct !DISubprogram(name: "xalloc_die", scope: !2903, file: !2903, line: 32, type: !668, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !547, variables: !4)
!2903 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2904 = !DILocation(line: 34, column: 10, scope: !2902)
!2905 = !DILocation(line: 34, column: 33, scope: !2902)
!2906 = !DILocation(line: 34, column: 3, scope: !2902)
!2907 = !DILocation(line: 40, column: 3, scope: !2902)
!2908 = distinct !DISubprogram(name: "rpl_calloc", scope: !2909, file: !2909, line: 42, type: !2653, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !2910)
!2909 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2910 = !{!2911, !2912, !2913, !2914}
!2911 = !DILocalVariable(name: "n", arg: 1, scope: !2908, file: !2909, line: 42, type: !94)
!2912 = !DILocalVariable(name: "s", arg: 2, scope: !2908, file: !2909, line: 42, type: !94)
!2913 = !DILocalVariable(name: "result", scope: !2908, file: !2909, line: 44, type: !49)
!2914 = !DILocalVariable(name: "bytes", scope: !2915, file: !2909, line: 56, type: !94)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !2909, line: 53, column: 5)
!2916 = distinct !DILexicalBlock(scope: !2908, file: !2909, line: 47, column: 7)
!2917 = !DILocation(line: 42, column: 20, scope: !2908)
!2918 = !DILocation(line: 42, column: 30, scope: !2908)
!2919 = !DILocation(line: 47, column: 9, scope: !2916)
!2920 = !DILocation(line: 47, column: 19, scope: !2916)
!2921 = !DILocation(line: 47, column: 14, scope: !2916)
!2922 = !DILocation(line: 56, column: 24, scope: !2915)
!2923 = !DILocation(line: 56, column: 14, scope: !2915)
!2924 = !DILocation(line: 57, column: 17, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2915, file: !2909, line: 57, column: 11)
!2926 = !DILocation(line: 57, column: 21, scope: !2925)
!2927 = !DILocation(line: 57, column: 11, scope: !2915)
!2928 = !DILocation(line: 59, column: 11, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2925, file: !2909, line: 58, column: 9)
!2930 = !DILocation(line: 59, column: 17, scope: !2929)
!2931 = !DILocation(line: 65, column: 12, scope: !2908)
!2932 = !DILocation(line: 44, column: 9, scope: !2908)
!2933 = !DILocation(line: 72, column: 3, scope: !2908)
!2934 = !DILocation(line: 73, column: 1, scope: !2908)
!2935 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !2936, file: !2936, line: 334, type: !2937, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !2951)
!2936 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!94, !2939, !6, !94, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !988, line: 6, baseType: !2942)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !990, line: 21, baseType: !2943)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !990, line: 13, size: 64, elements: !2944)
!2944 = !{!2945, !2946}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2943, file: !990, line: 15, baseType: !25, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2943, file: !990, line: 20, baseType: !2947, size: 32, offset: 32)
!2947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2943, file: !990, line: 16, size: 32, elements: !2948)
!2948 = !{!2949, !2950}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2947, file: !990, line: 18, baseType: !113, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2947, file: !990, line: 19, baseType: !999, size: 32)
!2951 = !{!2952, !2953, !2954, !2955, !2956, !2957, !2958}
!2952 = !DILocalVariable(name: "pwc", arg: 1, scope: !2935, file: !2936, line: 334, type: !2939)
!2953 = !DILocalVariable(name: "s", arg: 2, scope: !2935, file: !2936, line: 334, type: !6)
!2954 = !DILocalVariable(name: "n", arg: 3, scope: !2935, file: !2936, line: 334, type: !94)
!2955 = !DILocalVariable(name: "ps", arg: 4, scope: !2935, file: !2936, line: 334, type: !2940)
!2956 = !DILocalVariable(name: "ret", scope: !2935, file: !2936, line: 336, type: !94)
!2957 = !DILocalVariable(name: "wc", scope: !2935, file: !2936, line: 337, type: !1004)
!2958 = !DILocalVariable(name: "uc", scope: !2959, file: !2936, line: 398, type: !494)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !2936, line: 397, column: 5)
!2960 = distinct !DILexicalBlock(scope: !2935, file: !2936, line: 396, column: 7)
!2961 = !DILocation(line: 334, column: 23, scope: !2935)
!2962 = !DILocation(line: 334, column: 40, scope: !2935)
!2963 = !DILocation(line: 334, column: 50, scope: !2935)
!2964 = !DILocation(line: 334, column: 64, scope: !2935)
!2965 = !DILocation(line: 337, column: 3, scope: !2935)
!2966 = !DILocation(line: 353, column: 9, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2935, file: !2936, line: 353, column: 7)
!2968 = !DILocation(line: 353, column: 7, scope: !2935)
!2969 = !DILocation(line: 388, column: 9, scope: !2935)
!2970 = !DILocation(line: 336, column: 10, scope: !2935)
!2971 = !DILocation(line: 396, column: 19, scope: !2960)
!2972 = !DILocation(line: 396, column: 31, scope: !2960)
!2973 = !DILocation(line: 396, column: 26, scope: !2960)
!2974 = !DILocation(line: 396, column: 41, scope: !2960)
!2975 = !DILocation(line: 396, column: 7, scope: !2935)
!2976 = !DILocation(line: 398, column: 26, scope: !2959)
!2977 = !DILocation(line: 398, column: 21, scope: !2959)
!2978 = !DILocation(line: 399, column: 14, scope: !2959)
!2979 = !DILocation(line: 399, column: 12, scope: !2959)
!2980 = !DILocation(line: 405, column: 1, scope: !2935)
!2981 = distinct !DISubprogram(name: "close_stream", scope: !2982, file: !2982, line: 56, type: !2983, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3025)
!2982 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!25, !2985}
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2466, line: 7, baseType: !2987)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2468, line: 241, size: 1728, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2987, file: !2468, line: 242, baseType: !25, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2987, file: !2468, line: 247, baseType: !50, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2987, file: !2468, line: 248, baseType: !50, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2987, file: !2468, line: 249, baseType: !50, size: 64, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2987, file: !2468, line: 250, baseType: !50, size: 64, offset: 256)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2987, file: !2468, line: 251, baseType: !50, size: 64, offset: 320)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2987, file: !2468, line: 252, baseType: !50, size: 64, offset: 384)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2987, file: !2468, line: 253, baseType: !50, size: 64, offset: 448)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2987, file: !2468, line: 254, baseType: !50, size: 64, offset: 512)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2987, file: !2468, line: 256, baseType: !50, size: 64, offset: 576)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2987, file: !2468, line: 257, baseType: !50, size: 64, offset: 640)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2987, file: !2468, line: 258, baseType: !50, size: 64, offset: 704)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2987, file: !2468, line: 260, baseType: !3002, size: 64, offset: 768)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2468, line: 156, size: 192, elements: !3004)
!3004 = !{!3005, !3006, !3008}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3003, file: !2468, line: 157, baseType: !3002, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3003, file: !2468, line: 158, baseType: !3007, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3003, file: !2468, line: 162, baseType: !25, size: 32, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2987, file: !2468, line: 262, baseType: !3007, size: 64, offset: 832)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2987, file: !2468, line: 264, baseType: !25, size: 32, offset: 896)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2987, file: !2468, line: 268, baseType: !25, size: 32, offset: 928)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2987, file: !2468, line: 270, baseType: !2494, size: 64, offset: 960)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2987, file: !2468, line: 274, baseType: !93, size: 16, offset: 1024)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2987, file: !2468, line: 275, baseType: !2499, size: 8, offset: 1040)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2987, file: !2468, line: 276, baseType: !2501, size: 8, offset: 1048)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2987, file: !2468, line: 280, baseType: !2503, size: 64, offset: 1088)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2987, file: !2468, line: 289, baseType: !2506, size: 64, offset: 1152)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2987, file: !2468, line: 297, baseType: !49, size: 64, offset: 1216)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2987, file: !2468, line: 298, baseType: !49, size: 64, offset: 1280)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2987, file: !2468, line: 299, baseType: !49, size: 64, offset: 1344)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2987, file: !2468, line: 300, baseType: !49, size: 64, offset: 1408)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2987, file: !2468, line: 302, baseType: !94, size: 64, offset: 1472)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2987, file: !2468, line: 303, baseType: !25, size: 32, offset: 1536)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2987, file: !2468, line: 305, baseType: !2514, size: 160, offset: 1568)
!3025 = !{!3026, !3027, !3029, !3030}
!3026 = !DILocalVariable(name: "stream", arg: 1, scope: !2981, file: !2982, line: 56, type: !2985)
!3027 = !DILocalVariable(name: "some_pending", scope: !2981, file: !2982, line: 58, type: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3029 = !DILocalVariable(name: "prev_fail", scope: !2981, file: !2982, line: 59, type: !3028)
!3030 = !DILocalVariable(name: "fclose_fail", scope: !2981, file: !2982, line: 60, type: !3028)
!3031 = !DILocation(line: 56, column: 21, scope: !2981)
!3032 = !DILocation(line: 58, column: 30, scope: !2981)
!3033 = !DILocalVariable(name: "__stream", arg: 1, scope: !3034, file: !3035, line: 132, type: !2985)
!3034 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3035, file: !3035, line: 132, type: !2983, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3036)
!3035 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3036 = !{!3033}
!3037 = !DILocation(line: 132, column: 1, scope: !3034, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 59, column: 27, scope: !2981)
!3039 = !DILocation(line: 134, column: 10, scope: !3034, inlinedAt: !3038)
!3040 = !{!3041, !633, i64 0}
!3041 = !{!"_IO_FILE", !633, i64 0, !583, i64 8, !583, i64 16, !583, i64 24, !583, i64 32, !583, i64 40, !583, i64 48, !583, i64 56, !583, i64 64, !583, i64 72, !583, i64 80, !583, i64 88, !583, i64 96, !583, i64 104, !633, i64 112, !633, i64 116, !1783, i64 120, !1239, i64 128, !584, i64 130, !584, i64 131, !583, i64 136, !1783, i64 144, !583, i64 152, !583, i64 160, !583, i64 168, !583, i64 176, !1783, i64 184, !633, i64 192, !584, i64 196}
!3042 = !DILocation(line: 59, column: 43, scope: !2981)
!3043 = !DILocation(line: 60, column: 29, scope: !2981)
!3044 = !DILocation(line: 60, column: 45, scope: !2981)
!3045 = !DILocation(line: 70, column: 17, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2981, file: !2982, line: 70, column: 7)
!3047 = !DILocation(line: 58, column: 50, scope: !2981)
!3048 = !DILocation(line: 70, column: 33, scope: !3046)
!3049 = !DILocation(line: 70, column: 53, scope: !3046)
!3050 = !DILocation(line: 70, column: 59, scope: !3046)
!3051 = !DILocation(line: 70, column: 7, scope: !2981)
!3052 = !DILocation(line: 72, column: 11, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3046, file: !2982, line: 71, column: 5)
!3054 = !DILocation(line: 73, column: 9, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3053, file: !2982, line: 72, column: 11)
!3056 = !DILocation(line: 73, column: 15, scope: !3055)
!3057 = !DILocation(line: 78, column: 1, scope: !2981)
!3058 = distinct !DISubprogram(name: "hard_locale", scope: !3059, file: !3059, line: 38, type: !3060, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3062)
!3059 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!17, !25}
!3062 = !{!3063, !3064, !3065}
!3063 = !DILocalVariable(name: "category", arg: 1, scope: !3058, file: !3059, line: 38, type: !25)
!3064 = !DILocalVariable(name: "hard", scope: !3058, file: !3059, line: 40, type: !17)
!3065 = !DILocalVariable(name: "p", scope: !3058, file: !3059, line: 41, type: !6)
!3066 = !DILocation(line: 38, column: 18, scope: !3058)
!3067 = !DILocation(line: 40, column: 8, scope: !3058)
!3068 = !DILocation(line: 41, column: 19, scope: !3058)
!3069 = !DILocation(line: 41, column: 15, scope: !3058)
!3070 = !DILocation(line: 43, column: 7, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3058, file: !3059, line: 43, column: 7)
!3072 = !DILocation(line: 43, column: 7, scope: !3058)
!3073 = !DILocation(line: 47, column: 15, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !3059, line: 47, column: 15)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3059, line: 46, column: 9)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !3059, line: 45, column: 11)
!3077 = distinct !DILexicalBlock(scope: !3071, file: !3059, line: 44, column: 5)
!3078 = !DILocation(line: 47, column: 31, scope: !3074)
!3079 = !DILocation(line: 47, column: 36, scope: !3074)
!3080 = !DILocation(line: 47, column: 39, scope: !3074)
!3081 = !DILocation(line: 47, column: 59, scope: !3074)
!3082 = !DILocation(line: 47, column: 15, scope: !3075)
!3083 = !DILocation(line: 48, column: 13, scope: !3074)
!3084 = !DILocation(line: 71, column: 3, scope: !3058)
!3085 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3086, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!6}
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "codeset", scope: !3085, file: !496, line: 395, type: !6)
!3090 = !DILocalVariable(name: "aliases", scope: !3085, file: !496, line: 396, type: !6)
!3091 = !DILocalVariable(name: "buf1", scope: !3092, file: !496, line: 196, type: !3159)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !496, line: 194, column: 21)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !496, line: 193, column: 19)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !496, line: 193, column: 19)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !496, line: 188, column: 17)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !496, line: 181, column: 19)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !496, line: 177, column: 13)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !496, line: 173, column: 15)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !496, line: 161, column: 9)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !496, line: 157, column: 11)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !496, line: 130, column: 5)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !496, line: 129, column: 7)
!3103 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3086, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3111, !3112, !3113, !3114, !3155, !3156, !3157, !3091, !3158, !3162, !3163, !3164}
!3105 = !DILocalVariable(name: "cp", scope: !3103, file: !496, line: 126, type: !6)
!3106 = !DILocalVariable(name: "dir", scope: !3101, file: !496, line: 132, type: !6)
!3107 = !DILocalVariable(name: "base", scope: !3101, file: !496, line: 133, type: !6)
!3108 = !DILocalVariable(name: "file_name", scope: !3101, file: !496, line: 134, type: !50)
!3109 = !DILocalVariable(name: "dir_len", scope: !3110, file: !496, line: 144, type: !94)
!3110 = distinct !DILexicalBlock(scope: !3101, file: !496, line: 143, column: 7)
!3111 = !DILocalVariable(name: "base_len", scope: !3110, file: !496, line: 145, type: !94)
!3112 = !DILocalVariable(name: "add_slash", scope: !3110, file: !496, line: 146, type: !25)
!3113 = !DILocalVariable(name: "fd", scope: !3099, file: !496, line: 162, type: !25)
!3114 = !DILocalVariable(name: "fp", scope: !3097, file: !496, line: 178, type: !3115)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2466, line: 7, baseType: !3117)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2468, line: 241, size: 1728, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3117, file: !2468, line: 242, baseType: !25, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3117, file: !2468, line: 247, baseType: !50, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3117, file: !2468, line: 248, baseType: !50, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3117, file: !2468, line: 249, baseType: !50, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3117, file: !2468, line: 250, baseType: !50, size: 64, offset: 256)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3117, file: !2468, line: 251, baseType: !50, size: 64, offset: 320)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3117, file: !2468, line: 252, baseType: !50, size: 64, offset: 384)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3117, file: !2468, line: 253, baseType: !50, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3117, file: !2468, line: 254, baseType: !50, size: 64, offset: 512)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3117, file: !2468, line: 256, baseType: !50, size: 64, offset: 576)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3117, file: !2468, line: 257, baseType: !50, size: 64, offset: 640)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3117, file: !2468, line: 258, baseType: !50, size: 64, offset: 704)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3117, file: !2468, line: 260, baseType: !3132, size: 64, offset: 768)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2468, line: 156, size: 192, elements: !3134)
!3134 = !{!3135, !3136, !3138}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3133, file: !2468, line: 157, baseType: !3132, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3133, file: !2468, line: 158, baseType: !3137, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3133, file: !2468, line: 162, baseType: !25, size: 32, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3117, file: !2468, line: 262, baseType: !3137, size: 64, offset: 832)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3117, file: !2468, line: 264, baseType: !25, size: 32, offset: 896)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3117, file: !2468, line: 268, baseType: !25, size: 32, offset: 928)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3117, file: !2468, line: 270, baseType: !2494, size: 64, offset: 960)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3117, file: !2468, line: 274, baseType: !93, size: 16, offset: 1024)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3117, file: !2468, line: 275, baseType: !2499, size: 8, offset: 1040)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3117, file: !2468, line: 276, baseType: !2501, size: 8, offset: 1048)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3117, file: !2468, line: 280, baseType: !2503, size: 64, offset: 1088)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3117, file: !2468, line: 289, baseType: !2506, size: 64, offset: 1152)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3117, file: !2468, line: 297, baseType: !49, size: 64, offset: 1216)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3117, file: !2468, line: 298, baseType: !49, size: 64, offset: 1280)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3117, file: !2468, line: 299, baseType: !49, size: 64, offset: 1344)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3117, file: !2468, line: 300, baseType: !49, size: 64, offset: 1408)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3117, file: !2468, line: 302, baseType: !94, size: 64, offset: 1472)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3117, file: !2468, line: 303, baseType: !25, size: 32, offset: 1536)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3117, file: !2468, line: 305, baseType: !2514, size: 160, offset: 1568)
!3155 = !DILocalVariable(name: "res_ptr", scope: !3095, file: !496, line: 190, type: !50)
!3156 = !DILocalVariable(name: "res_size", scope: !3095, file: !496, line: 191, type: !94)
!3157 = !DILocalVariable(name: "c", scope: !3092, file: !496, line: 195, type: !25)
!3158 = !DILocalVariable(name: "buf2", scope: !3092, file: !496, line: 197, type: !3159)
!3159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3160)
!3160 = !{!3161}
!3161 = !DISubrange(count: 51)
!3162 = !DILocalVariable(name: "l1", scope: !3092, file: !496, line: 198, type: !94)
!3163 = !DILocalVariable(name: "l2", scope: !3092, file: !496, line: 198, type: !94)
!3164 = !DILocalVariable(name: "old_res_ptr", scope: !3092, file: !496, line: 199, type: !50)
!3165 = !DILocation(line: 196, column: 28, scope: !3092, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 589, column: 18, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3085, file: !496, line: 589, column: 3)
!3168 = !DILocation(line: 197, column: 28, scope: !3092, inlinedAt: !3166)
!3169 = !DILocation(line: 403, column: 13, scope: !3085)
!3170 = !DILocation(line: 395, column: 15, scope: !3085)
!3171 = !DILocation(line: 584, column: 15, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3085, file: !496, line: 584, column: 7)
!3173 = !DILocation(line: 584, column: 7, scope: !3085)
!3174 = !DILocation(line: 128, column: 8, scope: !3103, inlinedAt: !3166)
!3175 = !DILocation(line: 126, column: 15, scope: !3103, inlinedAt: !3166)
!3176 = !DILocation(line: 129, column: 10, scope: !3102, inlinedAt: !3166)
!3177 = !DILocation(line: 129, column: 7, scope: !3103, inlinedAt: !3166)
!3178 = !DILocation(line: 138, column: 13, scope: !3101, inlinedAt: !3166)
!3179 = !DILocation(line: 132, column: 19, scope: !3101, inlinedAt: !3166)
!3180 = !DILocation(line: 139, column: 15, scope: !3181, inlinedAt: !3166)
!3181 = distinct !DILexicalBlock(scope: !3101, file: !496, line: 139, column: 11)
!3182 = !DILocation(line: 139, column: 23, scope: !3181, inlinedAt: !3166)
!3183 = !DILocation(line: 139, column: 26, scope: !3181, inlinedAt: !3166)
!3184 = !DILocation(line: 139, column: 33, scope: !3181, inlinedAt: !3166)
!3185 = !DILocation(line: 139, column: 11, scope: !3101, inlinedAt: !3166)
!3186 = !DILocation(line: 140, column: 9, scope: !3181, inlinedAt: !3166)
!3187 = !DILocation(line: 144, column: 26, scope: !3110, inlinedAt: !3166)
!3188 = !DILocation(line: 144, column: 16, scope: !3110, inlinedAt: !3166)
!3189 = !DILocation(line: 145, column: 16, scope: !3110, inlinedAt: !3166)
!3190 = !DILocation(line: 146, column: 34, scope: !3110, inlinedAt: !3166)
!3191 = !DILocation(line: 146, column: 38, scope: !3110, inlinedAt: !3166)
!3192 = !DILocation(line: 146, column: 42, scope: !3110, inlinedAt: !3166)
!3193 = !DILocation(line: 147, column: 48, scope: !3110, inlinedAt: !3166)
!3194 = !DILocation(line: 147, column: 46, scope: !3110, inlinedAt: !3166)
!3195 = !DILocation(line: 147, column: 69, scope: !3110, inlinedAt: !3166)
!3196 = !DILocation(line: 147, column: 30, scope: !3110, inlinedAt: !3166)
!3197 = !DILocation(line: 134, column: 13, scope: !3101, inlinedAt: !3166)
!3198 = !DILocation(line: 148, column: 13, scope: !3110, inlinedAt: !3166)
!3199 = !DILocation(line: 150, column: 13, scope: !3200, inlinedAt: !3166)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !496, line: 149, column: 11)
!3201 = distinct !DILexicalBlock(scope: !3110, file: !496, line: 148, column: 13)
!3202 = !DILocation(line: 151, column: 17, scope: !3200, inlinedAt: !3166)
!3203 = !DILocation(line: 152, column: 34, scope: !3204, inlinedAt: !3166)
!3204 = distinct !DILexicalBlock(scope: !3200, file: !496, line: 151, column: 17)
!3205 = !DILocation(line: 153, column: 41, scope: !3200, inlinedAt: !3166)
!3206 = !DILocation(line: 153, column: 13, scope: !3200, inlinedAt: !3166)
!3207 = !DILocation(line: 157, column: 11, scope: !3101, inlinedAt: !3166)
!3208 = !DILocation(line: 171, column: 16, scope: !3099, inlinedAt: !3166)
!3209 = !DILocation(line: 162, column: 15, scope: !3099, inlinedAt: !3166)
!3210 = !DILocation(line: 173, column: 18, scope: !3098, inlinedAt: !3166)
!3211 = !DILocation(line: 173, column: 15, scope: !3099, inlinedAt: !3166)
!3212 = !DILocation(line: 180, column: 20, scope: !3097, inlinedAt: !3166)
!3213 = !DILocation(line: 178, column: 21, scope: !3097, inlinedAt: !3166)
!3214 = !DILocation(line: 181, column: 22, scope: !3096, inlinedAt: !3166)
!3215 = !DILocation(line: 181, column: 19, scope: !3097, inlinedAt: !3166)
!3216 = !DILocation(line: 184, column: 19, scope: !3217, inlinedAt: !3166)
!3217 = distinct !DILexicalBlock(scope: !3096, file: !496, line: 182, column: 17)
!3218 = !DILocation(line: 186, column: 17, scope: !3217, inlinedAt: !3166)
!3219 = !DILocation(line: 190, column: 25, scope: !3095, inlinedAt: !3166)
!3220 = !DILocation(line: 191, column: 26, scope: !3095, inlinedAt: !3166)
!3221 = !DILocation(line: 193, column: 19, scope: !3095, inlinedAt: !3166)
!3222 = !DILocation(line: 196, column: 23, scope: !3092, inlinedAt: !3166)
!3223 = !DILocation(line: 197, column: 23, scope: !3092, inlinedAt: !3166)
!3224 = !DILocalVariable(name: "__fp", arg: 1, scope: !3225, file: !3035, line: 63, type: !3115)
!3225 = distinct !DISubprogram(name: "getc_unlocked", scope: !3035, file: !3035, line: 63, type: !3226, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!25, !3115}
!3228 = !{!3224}
!3229 = !DILocation(line: 63, column: 22, scope: !3225, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 201, column: 27, scope: !3092, inlinedAt: !3166)
!3231 = !DILocation(line: 65, column: 10, scope: !3225, inlinedAt: !3230)
!3232 = !{!3041, !583, i64 8}
!3233 = !{!3041, !583, i64 16}
!3234 = !{!"branch_weights", i32 2000, i32 1}
!3235 = !DILocation(line: 195, column: 27, scope: !3092, inlinedAt: !3166)
!3236 = !DILocation(line: 202, column: 27, scope: !3092, inlinedAt: !3166)
!3237 = distinct !{!3237, !3238, !3241}
!3238 = !DILocation(line: 209, column: 27, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !496, line: 207, column: 25)
!3240 = distinct !DILexicalBlock(scope: !3092, file: !496, line: 206, column: 27)
!3241 = !DILocation(line: 211, column: 58, scope: !3239)
!3242 = !DILocation(line: 65, column: 10, scope: !3225, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 210, column: 33, scope: !3239, inlinedAt: !3166)
!3244 = !DILocation(line: 63, column: 22, scope: !3225, inlinedAt: !3243)
!3245 = !DILocation(line: 210, column: 29, scope: !3239, inlinedAt: !3166)
!3246 = distinct !{!3246, !3247, !3248}
!3247 = !DILocation(line: 193, column: 19, scope: !3094)
!3248 = !DILocation(line: 241, column: 21, scope: !3094)
!3249 = !DILocation(line: 216, column: 23, scope: !3092, inlinedAt: !3166)
!3250 = !DILocation(line: 217, column: 27, scope: !3251, inlinedAt: !3166)
!3251 = distinct !DILexicalBlock(scope: !3092, file: !496, line: 217, column: 27)
!3252 = !DILocation(line: 217, column: 64, scope: !3251, inlinedAt: !3166)
!3253 = !DILocation(line: 217, column: 27, scope: !3092, inlinedAt: !3166)
!3254 = !DILocation(line: 219, column: 28, scope: !3092, inlinedAt: !3166)
!3255 = !DILocation(line: 198, column: 30, scope: !3092, inlinedAt: !3166)
!3256 = !DILocation(line: 220, column: 28, scope: !3092, inlinedAt: !3166)
!3257 = !DILocation(line: 198, column: 34, scope: !3092, inlinedAt: !3166)
!3258 = !DILocation(line: 199, column: 29, scope: !3092, inlinedAt: !3166)
!3259 = !DILocation(line: 222, column: 36, scope: !3260, inlinedAt: !3166)
!3260 = distinct !DILexicalBlock(scope: !3092, file: !496, line: 222, column: 27)
!3261 = !DILocation(line: 222, column: 27, scope: !3092, inlinedAt: !3166)
!3262 = !DILocation(line: 225, column: 63, scope: !3263, inlinedAt: !3166)
!3263 = distinct !DILexicalBlock(scope: !3260, file: !496, line: 223, column: 25)
!3264 = !DILocation(line: 225, column: 46, scope: !3263, inlinedAt: !3166)
!3265 = !DILocation(line: 226, column: 25, scope: !3263, inlinedAt: !3166)
!3266 = !DILocation(line: 229, column: 36, scope: !3267, inlinedAt: !3166)
!3267 = distinct !DILexicalBlock(scope: !3260, file: !496, line: 228, column: 25)
!3268 = !DILocation(line: 230, column: 73, scope: !3267, inlinedAt: !3166)
!3269 = !DILocation(line: 230, column: 46, scope: !3267, inlinedAt: !3166)
!3270 = !DILocation(line: 232, column: 35, scope: !3271, inlinedAt: !3166)
!3271 = distinct !DILexicalBlock(scope: !3092, file: !496, line: 232, column: 27)
!3272 = !DILocation(line: 232, column: 27, scope: !3092, inlinedAt: !3166)
!3273 = !DILocation(line: 236, column: 27, scope: !3274, inlinedAt: !3166)
!3274 = distinct !DILexicalBlock(scope: !3271, file: !496, line: 233, column: 25)
!3275 = !DILocation(line: 237, column: 27, scope: !3274, inlinedAt: !3166)
!3276 = !DILocation(line: 241, column: 21, scope: !3093, inlinedAt: !3166)
!3277 = !DILocation(line: 239, column: 39, scope: !3092, inlinedAt: !3166)
!3278 = !DILocation(line: 239, column: 50, scope: !3092, inlinedAt: !3166)
!3279 = !DILocation(line: 239, column: 61, scope: !3092, inlinedAt: !3166)
!3280 = !DILocalVariable(name: "__dest", arg: 1, scope: !3281, file: !3282, line: 88, type: !3285)
!3281 = distinct !DISubprogram(name: "strcpy", scope: !3282, file: !3282, line: 88, type: !3283, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3287)
!3282 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!50, !3285, !3286}
!3285 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3286 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3287 = !{!3280, !3288}
!3288 = !DILocalVariable(name: "__src", arg: 2, scope: !3281, file: !3282, line: 88, type: !3286)
!3289 = !DILocation(line: 88, column: 1, scope: !3281, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 239, column: 23, scope: !3092, inlinedAt: !3166)
!3291 = !DILocation(line: 90, column: 49, scope: !3281, inlinedAt: !3290)
!3292 = !DILocation(line: 90, column: 10, scope: !3281, inlinedAt: !3290)
!3293 = !DILocation(line: 88, column: 1, scope: !3281, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 240, column: 23, scope: !3092, inlinedAt: !3166)
!3295 = !DILocation(line: 90, column: 49, scope: !3281, inlinedAt: !3294)
!3296 = !DILocation(line: 90, column: 10, scope: !3281, inlinedAt: !3294)
!3297 = !DILocation(line: 193, column: 19, scope: !3093, inlinedAt: !3166)
!3298 = !DILocation(line: 242, column: 19, scope: !3095, inlinedAt: !3166)
!3299 = !DILocation(line: 243, column: 32, scope: !3300, inlinedAt: !3166)
!3300 = distinct !DILexicalBlock(scope: !3095, file: !496, line: 243, column: 23)
!3301 = !DILocation(line: 243, column: 23, scope: !3095, inlinedAt: !3166)
!3302 = !DILocation(line: 247, column: 33, scope: !3303, inlinedAt: !3166)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !496, line: 246, column: 21)
!3304 = !DILocation(line: 247, column: 45, scope: !3303, inlinedAt: !3166)
!3305 = !DILocation(line: 253, column: 11, scope: !3099, inlinedAt: !3166)
!3306 = !DILocation(line: 377, column: 23, scope: !3101, inlinedAt: !3166)
!3307 = !DILocation(line: 378, column: 5, scope: !3101, inlinedAt: !3166)
!3308 = !DILocation(line: 396, column: 15, scope: !3085)
!3309 = !DILocation(line: 590, column: 8, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3167, file: !496, line: 589, column: 3)
!3311 = !DILocation(line: 590, column: 17, scope: !3310)
!3312 = !DILocation(line: 589, column: 3, scope: !3167)
!3313 = !DILocation(line: 592, column: 9, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3310, file: !496, line: 592, column: 9)
!3315 = !DILocation(line: 592, column: 35, scope: !3314)
!3316 = !DILocation(line: 593, column: 9, scope: !3314)
!3317 = !DILocation(line: 593, column: 24, scope: !3314)
!3318 = !DILocation(line: 593, column: 31, scope: !3314)
!3319 = !DILocation(line: 593, column: 34, scope: !3314)
!3320 = !DILocation(line: 593, column: 45, scope: !3314)
!3321 = !DILocation(line: 592, column: 9, scope: !3310)
!3322 = !DILocation(line: 595, column: 29, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3314, file: !496, line: 594, column: 7)
!3324 = !DILocation(line: 595, column: 27, scope: !3323)
!3325 = !DILocation(line: 595, column: 46, scope: !3323)
!3326 = !DILocation(line: 596, column: 9, scope: !3323)
!3327 = !DILocation(line: 591, column: 19, scope: !3310)
!3328 = !DILocation(line: 591, column: 36, scope: !3310)
!3329 = !DILocation(line: 591, column: 16, scope: !3310)
!3330 = !DILocation(line: 591, column: 52, scope: !3310)
!3331 = !DILocation(line: 591, column: 69, scope: !3310)
!3332 = !DILocation(line: 591, column: 49, scope: !3310)
!3333 = distinct !{!3333, !3312, !3334}
!3334 = !DILocation(line: 597, column: 7, scope: !3167)
!3335 = !DILocation(line: 602, column: 7, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3085, file: !496, line: 602, column: 7)
!3337 = !DILocation(line: 602, column: 18, scope: !3336)
!3338 = !DILocation(line: 602, column: 7, scope: !3085)
!3339 = !DILocation(line: 612, column: 3, scope: !3085)
!3340 = distinct !DISubprogram(name: "rpl_fclose", scope: !3341, file: !3341, line: 56, type: !3342, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3384)
!3341 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!25, !3344}
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2466, line: 7, baseType: !3346)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2468, line: 241, size: 1728, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3346, file: !2468, line: 242, baseType: !25, size: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3346, file: !2468, line: 247, baseType: !50, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3346, file: !2468, line: 248, baseType: !50, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3346, file: !2468, line: 249, baseType: !50, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3346, file: !2468, line: 250, baseType: !50, size: 64, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3346, file: !2468, line: 251, baseType: !50, size: 64, offset: 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3346, file: !2468, line: 252, baseType: !50, size: 64, offset: 384)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3346, file: !2468, line: 253, baseType: !50, size: 64, offset: 448)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3346, file: !2468, line: 254, baseType: !50, size: 64, offset: 512)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3346, file: !2468, line: 256, baseType: !50, size: 64, offset: 576)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3346, file: !2468, line: 257, baseType: !50, size: 64, offset: 640)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3346, file: !2468, line: 258, baseType: !50, size: 64, offset: 704)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3346, file: !2468, line: 260, baseType: !3361, size: 64, offset: 768)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2468, line: 156, size: 192, elements: !3363)
!3363 = !{!3364, !3365, !3367}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3362, file: !2468, line: 157, baseType: !3361, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3362, file: !2468, line: 158, baseType: !3366, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3362, file: !2468, line: 162, baseType: !25, size: 32, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3346, file: !2468, line: 262, baseType: !3366, size: 64, offset: 832)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3346, file: !2468, line: 264, baseType: !25, size: 32, offset: 896)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3346, file: !2468, line: 268, baseType: !25, size: 32, offset: 928)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3346, file: !2468, line: 270, baseType: !2494, size: 64, offset: 960)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3346, file: !2468, line: 274, baseType: !93, size: 16, offset: 1024)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3346, file: !2468, line: 275, baseType: !2499, size: 8, offset: 1040)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3346, file: !2468, line: 276, baseType: !2501, size: 8, offset: 1048)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3346, file: !2468, line: 280, baseType: !2503, size: 64, offset: 1088)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3346, file: !2468, line: 289, baseType: !2506, size: 64, offset: 1152)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3346, file: !2468, line: 297, baseType: !49, size: 64, offset: 1216)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3346, file: !2468, line: 298, baseType: !49, size: 64, offset: 1280)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3346, file: !2468, line: 299, baseType: !49, size: 64, offset: 1344)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3346, file: !2468, line: 300, baseType: !49, size: 64, offset: 1408)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3346, file: !2468, line: 302, baseType: !94, size: 64, offset: 1472)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3346, file: !2468, line: 303, baseType: !25, size: 32, offset: 1536)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3346, file: !2468, line: 305, baseType: !2514, size: 160, offset: 1568)
!3384 = !{!3385, !3386, !3387, !3388}
!3385 = !DILocalVariable(name: "fp", arg: 1, scope: !3340, file: !3341, line: 56, type: !3344)
!3386 = !DILocalVariable(name: "saved_errno", scope: !3340, file: !3341, line: 58, type: !25)
!3387 = !DILocalVariable(name: "fd", scope: !3340, file: !3341, line: 59, type: !25)
!3388 = !DILocalVariable(name: "result", scope: !3340, file: !3341, line: 60, type: !25)
!3389 = !DILocation(line: 56, column: 19, scope: !3340)
!3390 = !DILocation(line: 58, column: 7, scope: !3340)
!3391 = !DILocation(line: 60, column: 7, scope: !3340)
!3392 = !DILocation(line: 63, column: 8, scope: !3340)
!3393 = !DILocation(line: 59, column: 7, scope: !3340)
!3394 = !DILocation(line: 64, column: 10, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3340, file: !3341, line: 64, column: 7)
!3396 = !DILocation(line: 64, column: 7, scope: !3340)
!3397 = !DILocation(line: 65, column: 12, scope: !3395)
!3398 = !DILocation(line: 65, column: 5, scope: !3395)
!3399 = !DILocation(line: 70, column: 9, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3340, file: !3341, line: 70, column: 7)
!3401 = !DILocation(line: 70, column: 23, scope: !3400)
!3402 = !DILocation(line: 70, column: 33, scope: !3400)
!3403 = !DILocation(line: 70, column: 26, scope: !3400)
!3404 = !DILocation(line: 70, column: 59, scope: !3400)
!3405 = !DILocation(line: 71, column: 7, scope: !3400)
!3406 = !DILocation(line: 71, column: 10, scope: !3400)
!3407 = !DILocation(line: 70, column: 7, scope: !3340)
!3408 = !DILocation(line: 98, column: 12, scope: !3340)
!3409 = !DILocation(line: 103, column: 7, scope: !3340)
!3410 = !DILocation(line: 72, column: 19, scope: !3400)
!3411 = !DILocation(line: 103, column: 19, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3340, file: !3341, line: 103, column: 7)
!3413 = !DILocation(line: 105, column: 13, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3412, file: !3341, line: 104, column: 5)
!3415 = !DILocation(line: 107, column: 5, scope: !3414)
!3416 = !DILocation(line: 110, column: 1, scope: !3340)
!3417 = distinct !DISubprogram(name: "rpl_fflush", scope: !3418, file: !3418, line: 127, type: !3419, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3461)
!3418 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!25, !3421}
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2466, line: 7, baseType: !3423)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2468, line: 241, size: 1728, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3423, file: !2468, line: 242, baseType: !25, size: 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3423, file: !2468, line: 247, baseType: !50, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3423, file: !2468, line: 248, baseType: !50, size: 64, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3423, file: !2468, line: 249, baseType: !50, size: 64, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3423, file: !2468, line: 250, baseType: !50, size: 64, offset: 256)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3423, file: !2468, line: 251, baseType: !50, size: 64, offset: 320)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3423, file: !2468, line: 252, baseType: !50, size: 64, offset: 384)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3423, file: !2468, line: 253, baseType: !50, size: 64, offset: 448)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3423, file: !2468, line: 254, baseType: !50, size: 64, offset: 512)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3423, file: !2468, line: 256, baseType: !50, size: 64, offset: 576)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3423, file: !2468, line: 257, baseType: !50, size: 64, offset: 640)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3423, file: !2468, line: 258, baseType: !50, size: 64, offset: 704)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3423, file: !2468, line: 260, baseType: !3438, size: 64, offset: 768)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2468, line: 156, size: 192, elements: !3440)
!3440 = !{!3441, !3442, !3444}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3439, file: !2468, line: 157, baseType: !3438, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3439, file: !2468, line: 158, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3439, file: !2468, line: 162, baseType: !25, size: 32, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3423, file: !2468, line: 262, baseType: !3443, size: 64, offset: 832)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3423, file: !2468, line: 264, baseType: !25, size: 32, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3423, file: !2468, line: 268, baseType: !25, size: 32, offset: 928)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3423, file: !2468, line: 270, baseType: !2494, size: 64, offset: 960)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3423, file: !2468, line: 274, baseType: !93, size: 16, offset: 1024)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3423, file: !2468, line: 275, baseType: !2499, size: 8, offset: 1040)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3423, file: !2468, line: 276, baseType: !2501, size: 8, offset: 1048)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3423, file: !2468, line: 280, baseType: !2503, size: 64, offset: 1088)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3423, file: !2468, line: 289, baseType: !2506, size: 64, offset: 1152)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3423, file: !2468, line: 297, baseType: !49, size: 64, offset: 1216)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3423, file: !2468, line: 298, baseType: !49, size: 64, offset: 1280)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3423, file: !2468, line: 299, baseType: !49, size: 64, offset: 1344)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3423, file: !2468, line: 300, baseType: !49, size: 64, offset: 1408)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3423, file: !2468, line: 302, baseType: !94, size: 64, offset: 1472)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3423, file: !2468, line: 303, baseType: !25, size: 32, offset: 1536)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3423, file: !2468, line: 305, baseType: !2514, size: 160, offset: 1568)
!3461 = !{!3462}
!3462 = !DILocalVariable(name: "stream", arg: 1, scope: !3417, file: !3418, line: 127, type: !3421)
!3463 = !DILocation(line: 127, column: 19, scope: !3417)
!3464 = !DILocation(line: 148, column: 14, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3417, file: !3418, line: 148, column: 7)
!3466 = !DILocation(line: 148, column: 22, scope: !3465)
!3467 = !DILocation(line: 148, column: 27, scope: !3465)
!3468 = !DILocation(line: 148, column: 7, scope: !3417)
!3469 = !DILocation(line: 149, column: 12, scope: !3465)
!3470 = !DILocation(line: 149, column: 5, scope: !3465)
!3471 = !DILocalVariable(name: "fp", arg: 1, scope: !3472, file: !3418, line: 40, type: !3421)
!3472 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3418, file: !3418, line: 40, type: !3473, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !3421}
!3475 = !{!3471}
!3476 = !DILocation(line: 40, column: 48, scope: !3472, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 153, column: 3, scope: !3417)
!3478 = !DILocation(line: 42, column: 11, scope: !3479, inlinedAt: !3477)
!3479 = distinct !DILexicalBlock(scope: !3472, file: !3418, line: 42, column: 7)
!3480 = !DILocation(line: 42, column: 18, scope: !3479, inlinedAt: !3477)
!3481 = !DILocation(line: 42, column: 7, scope: !3472, inlinedAt: !3477)
!3482 = !DILocation(line: 44, column: 5, scope: !3479, inlinedAt: !3477)
!3483 = !DILocation(line: 155, column: 10, scope: !3417)
!3484 = !DILocation(line: 155, column: 3, scope: !3417)
!3485 = !DILocation(line: 229, column: 1, scope: !3417)
!3486 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3487, file: !3487, line: 28, type: !3488, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3531)
!3487 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!25, !3490, !3530, !25}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2466, line: 7, baseType: !3492)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2468, line: 241, size: 1728, elements: !3493)
!3493 = !{!3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3492, file: !2468, line: 242, baseType: !25, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3492, file: !2468, line: 247, baseType: !50, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3492, file: !2468, line: 248, baseType: !50, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3492, file: !2468, line: 249, baseType: !50, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3492, file: !2468, line: 250, baseType: !50, size: 64, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3492, file: !2468, line: 251, baseType: !50, size: 64, offset: 320)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3492, file: !2468, line: 252, baseType: !50, size: 64, offset: 384)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3492, file: !2468, line: 253, baseType: !50, size: 64, offset: 448)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3492, file: !2468, line: 254, baseType: !50, size: 64, offset: 512)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3492, file: !2468, line: 256, baseType: !50, size: 64, offset: 576)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3492, file: !2468, line: 257, baseType: !50, size: 64, offset: 640)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3492, file: !2468, line: 258, baseType: !50, size: 64, offset: 704)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3492, file: !2468, line: 260, baseType: !3507, size: 64, offset: 768)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2468, line: 156, size: 192, elements: !3509)
!3509 = !{!3510, !3511, !3513}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3508, file: !2468, line: 157, baseType: !3507, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3508, file: !2468, line: 158, baseType: !3512, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3508, file: !2468, line: 162, baseType: !25, size: 32, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3492, file: !2468, line: 262, baseType: !3512, size: 64, offset: 832)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3492, file: !2468, line: 264, baseType: !25, size: 32, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3492, file: !2468, line: 268, baseType: !25, size: 32, offset: 928)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3492, file: !2468, line: 270, baseType: !2494, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3492, file: !2468, line: 274, baseType: !93, size: 16, offset: 1024)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3492, file: !2468, line: 275, baseType: !2499, size: 8, offset: 1040)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3492, file: !2468, line: 276, baseType: !2501, size: 8, offset: 1048)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3492, file: !2468, line: 280, baseType: !2503, size: 64, offset: 1088)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3492, file: !2468, line: 289, baseType: !2506, size: 64, offset: 1152)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3492, file: !2468, line: 297, baseType: !49, size: 64, offset: 1216)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3492, file: !2468, line: 298, baseType: !49, size: 64, offset: 1280)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3492, file: !2468, line: 299, baseType: !49, size: 64, offset: 1344)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3492, file: !2468, line: 300, baseType: !49, size: 64, offset: 1408)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3492, file: !2468, line: 302, baseType: !94, size: 64, offset: 1472)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3492, file: !2468, line: 303, baseType: !25, size: 32, offset: 1536)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3492, file: !2468, line: 305, baseType: !2514, size: 160, offset: 1568)
!3530 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !722, line: 57, baseType: !2494)
!3531 = !{!3532, !3533, !3534, !3535}
!3532 = !DILocalVariable(name: "fp", arg: 1, scope: !3486, file: !3487, line: 28, type: !3490)
!3533 = !DILocalVariable(name: "offset", arg: 2, scope: !3486, file: !3487, line: 28, type: !3530)
!3534 = !DILocalVariable(name: "whence", arg: 3, scope: !3486, file: !3487, line: 28, type: !25)
!3535 = !DILocalVariable(name: "pos", scope: !3536, file: !3487, line: 116, type: !3530)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !3487, line: 112, column: 5)
!3537 = distinct !DILexicalBlock(scope: !3486, file: !3487, line: 51, column: 7)
!3538 = !DILocation(line: 28, column: 15, scope: !3486)
!3539 = !DILocation(line: 28, column: 25, scope: !3486)
!3540 = !DILocation(line: 28, column: 37, scope: !3486)
!3541 = !DILocation(line: 51, column: 11, scope: !3537)
!3542 = !DILocation(line: 51, column: 31, scope: !3537)
!3543 = !DILocation(line: 51, column: 24, scope: !3537)
!3544 = !DILocation(line: 52, column: 7, scope: !3537)
!3545 = !DILocation(line: 52, column: 14, scope: !3537)
!3546 = !{!3041, !583, i64 40}
!3547 = !DILocation(line: 52, column: 35, scope: !3537)
!3548 = !{!3041, !583, i64 32}
!3549 = !DILocation(line: 52, column: 28, scope: !3537)
!3550 = !DILocation(line: 53, column: 7, scope: !3537)
!3551 = !DILocation(line: 53, column: 14, scope: !3537)
!3552 = !{!3041, !583, i64 72}
!3553 = !DILocation(line: 53, column: 28, scope: !3537)
!3554 = !DILocation(line: 51, column: 7, scope: !3486)
!3555 = !DILocation(line: 116, column: 26, scope: !3536)
!3556 = !DILocation(line: 116, column: 19, scope: !3536)
!3557 = !DILocation(line: 116, column: 13, scope: !3536)
!3558 = !DILocation(line: 117, column: 15, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3536, file: !3487, line: 117, column: 11)
!3560 = !DILocation(line: 117, column: 11, scope: !3536)
!3561 = !DILocation(line: 127, column: 11, scope: !3536)
!3562 = !DILocation(line: 127, column: 18, scope: !3536)
!3563 = !DILocation(line: 128, column: 11, scope: !3536)
!3564 = !DILocation(line: 128, column: 19, scope: !3536)
!3565 = !{!3041, !1783, i64 144}
!3566 = !DILocation(line: 159, column: 7, scope: !3536)
!3567 = !DILocation(line: 161, column: 10, scope: !3486)
!3568 = !DILocation(line: 161, column: 3, scope: !3486)
!3569 = !DILocation(line: 162, column: 1, scope: !3486)
