; ModuleID = 'coreutils-8.27/src/hostid.bc'
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
@.str.1 = private unnamed_addr constant [89 x i8] c"Usage: %s [OPTION]\0APrint the numeric identifier (in hexadecimal) for the current host.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"hostid\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), align 8, !dbg !0
@.str.12 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.15 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.16 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@opterr = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.28, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.29, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !26
@.str.1.28 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.29 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !44
@.str.34 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.35 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.36 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.40, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.46, i32 0, i32 0), i8* null], align 16, !dbg !53
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !98
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !105
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !118
@.str.11.47 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.48 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.49 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.50 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
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
@.str.13 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.70 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.71 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.72 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.73 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !140
@.str.1.84 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.95 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.98 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !149
@.str.3.99 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.100 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.101 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.102 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.103 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.104 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

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
  br label %33, !dbg !580

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !586
  %10 = load i8*, i8** @program_name, align 8, !dbg !586, !tbaa !582
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !586
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !588
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !588, !tbaa !582
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !588
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !589
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !582
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !589
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !510, metadata !575) #10, !dbg !590
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 0, metadata !510, metadata !575) #10, !dbg !590
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !592
  %19 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !592
  %20 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !593
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !518, metadata !575) #10, !dbg !594
  %21 = icmp eq i8* %20, null, !dbg !595
  br i1 %21, label %28, label %22, !dbg !597

; <label>:22:                                     ; preds = %8
  %23 = tail call i32 @strncmp(i8* nonnull %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 3) #14, !dbg !598
  %24 = icmp eq i32 %23, 0, !dbg !598
  br i1 %24, label %28, label %25, !dbg !599

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !600
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !600
  br label %28, !dbg !602

; <label>:28:                                     ; preds = %8, %22, %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !603
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !603
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !604
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !604
  br label %33

; <label>:33:                                     ; preds = %28, %3
  tail call void @exit(i32 %0) #15, !dbg !605
  unreachable, !dbg !605
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !606 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !611, metadata !575), !dbg !614
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !612, metadata !575), !dbg !615
  %3 = load i8*, i8** %1, align 8, !dbg !616, !tbaa !582
  tail call void @set_program_name(i8* %3) #10, !dbg !617
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !618
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !619
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !620
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !621
  %8 = load i8*, i8** @Version, align 8, !dbg !622, !tbaa !582
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* null) #10, !dbg !623
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !624
  %10 = icmp eq i32 %9, -1, !dbg !626
  br i1 %10, label %12, label %11, !dbg !627

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !628
  unreachable, !dbg !628

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !629, !tbaa !631
  %14 = icmp slt i32 %13, %0, !dbg !633
  br i1 %14, label %15, label %22, !dbg !634

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !635
  %17 = load i32, i32* @optind, align 4, !dbg !637, !tbaa !631
  %18 = sext i32 %17 to i64, !dbg !638
  %19 = getelementptr inbounds i8*, i8** %1, i64 %18, !dbg !638
  %20 = load i8*, i8** %19, align 8, !dbg !638, !tbaa !582
  %21 = tail call i8* @quote(i8* %20) #10, !dbg !639
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %21) #10, !dbg !640
  tail call void @usage(i32 1) #16, !dbg !641
  unreachable, !dbg !641

; <label>:22:                                     ; preds = %12
  %23 = tail call i64 @gethostid() #10, !dbg !642
  %24 = trunc i64 %23 to i32, !dbg !642
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !613, metadata !575), !dbg !643
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !613, metadata !575), !dbg !643
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %24) #10, !dbg !644
  ret i32 0, !dbg !645
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

declare i64 @gethostid() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !646 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !648, metadata !575), !dbg !649
  store i8* %0, i8** @file_name, align 8, !dbg !650, !tbaa !582
  ret void, !dbg !651
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !652 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !656, metadata !575), !dbg !657
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !658, !tbaa !659
  ret void, !dbg !661
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !662 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !582
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !670
  %3 = icmp eq i32 %2, 0, !dbg !671
  br i1 %3, label %21, label %4, !dbg !672

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !673, !tbaa !659, !range !674
  %6 = icmp eq i8 %5, 0, !dbg !673
  %7 = tail call i32* @__errno_location() #17, !dbg !675
  br i1 %6, label %11, label %8, !dbg !677

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !678, !tbaa !631
  %10 = icmp eq i32 %9, 32, !dbg !679
  br i1 %10, label %21, label %11, !dbg !680

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !681
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !666, metadata !575), !dbg !682
  %13 = load i8*, i8** @file_name, align 8, !dbg !683, !tbaa !582
  %14 = icmp eq i8* %13, null, !dbg !683
  %15 = load i32, i32* %7, align 4, !tbaa !631
  br i1 %14, label %18, label %16, !dbg !684

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !685
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.16, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !686
  br label %19, !dbg !686

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.17, i64 0, i64 0), i8* %12) #10, !dbg !687
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !688, !tbaa !631
  tail call void @_exit(i32 %20) #15, !dbg !689
  unreachable, !dbg !689

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !690, !tbaa !582
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !692
  %24 = icmp eq i32 %23, 0, !dbg !693
  br i1 %24, label %27, label %25, !dbg !694

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !695, !tbaa !631
  tail call void @_exit(i32 %26) #15, !dbg !696
  unreachable, !dbg !696

; <label>:27:                                     ; preds = %21
  ret void, !dbg !697
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !698 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !703, metadata !575), !dbg !730
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !704, metadata !575), !dbg !731
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !705, metadata !575), !dbg !732
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !706, metadata !575), !dbg !733
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !707, metadata !575), !dbg !734
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !708, metadata !575), !dbg !735
  %8 = load i32, i32* @opterr, align 4, !dbg !736, !tbaa !631
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !710, metadata !575), !dbg !737
  store i32 0, i32* @opterr, align 4, !dbg !738, !tbaa !631
  %9 = icmp eq i32 %0, 2, !dbg !739
  br i1 %9, label %10, label %17, !dbg !740

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !741
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !709, metadata !575), !dbg !742
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !743

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !744
  br label %17, !dbg !745

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !746
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !746
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !711, metadata !575), !dbg !747
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !748
  call void @llvm.va_start(i8* nonnull %14), !dbg !748
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !582
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !750
  call void @exit(i32 0) #15, !dbg !751
  unreachable, !dbg !751

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !752, !tbaa !631
  store i32 0, i32* @optind, align 4, !dbg !753, !tbaa !631
  ret void, !dbg !754
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !755 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !757, metadata !575), !dbg !760
  %2 = icmp eq i8* %0, null, !dbg !761
  br i1 %2, label %3, label %6, !dbg !763

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !764, !tbaa !582
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !766
  tail call void @abort() #15, !dbg !767
  unreachable, !dbg !767

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !768
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !758, metadata !575), !dbg !769
  %8 = icmp eq i8* %7, null, !dbg !770
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !771
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !772
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !759, metadata !575), !dbg !773
  %11 = ptrtoint i8* %10 to i64, !dbg !774
  %12 = ptrtoint i8* %0 to i64, !dbg !774
  %13 = sub i64 %11, %12, !dbg !774
  %14 = icmp sgt i64 %13, 6, !dbg !776
  br i1 %14, label %15, label %24, !dbg !777

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !778
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.35, i64 0, i64 0), i64 7) #14, !dbg !779
  %18 = icmp eq i32 %17, 0, !dbg !780
  br i1 %18, label %19, label %24, !dbg !781

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !757, metadata !575), !dbg !760
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.36, i64 0, i64 0), i64 3) #14, !dbg !782
  %21 = icmp eq i32 %20, 0, !dbg !785
  br i1 %21, label %22, label %24, !dbg !786

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !787
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !757, metadata !575), !dbg !760
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !789, !tbaa !582
  br label %24, !dbg !790

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !757, metadata !575), !dbg !760
  store i8* %25, i8** @program_name, align 8, !dbg !791, !tbaa !582
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !792, !tbaa !582
  ret void, !dbg !793
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !794 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !799, metadata !575), !dbg !802
  %2 = tail call i32* @__errno_location() #17, !dbg !803
  %3 = load i32, i32* %2, align 4, !dbg !803, !tbaa !631
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !800, metadata !575), !dbg !804
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !805
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !805
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !805
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !806
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !806
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !801, metadata !575), !dbg !807
  store i32 %3, i32* %2, align 4, !dbg !808, !tbaa !631
  ret %struct.quoting_options* %8, !dbg !809
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !810 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !816, metadata !575), !dbg !817
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !818
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !818
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !819
  %5 = load i32, i32* %4, align 8, !dbg !819, !tbaa !820
  ret i32 %5, !dbg !822
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !823 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !827, metadata !575), !dbg !829
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !828, metadata !575), !dbg !830
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !831
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !831
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !832
  store i32 %1, i32* %5, align 8, !dbg !833, !tbaa !820
  ret void, !dbg !834
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !835 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !839, metadata !575), !dbg !847
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !840, metadata !575), !dbg !848
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !841, metadata !575), !dbg !849
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !842, metadata !575), !dbg !850
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !851
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !851
  %6 = lshr i8 %1, 5, !dbg !852
  %7 = zext i8 %6 to i64, !dbg !852
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !853
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !843, metadata !575), !dbg !854
  %9 = and i8 %1, 31, !dbg !855
  %10 = zext i8 %9 to i32, !dbg !856
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !845, metadata !575), !dbg !857
  %11 = load i32, i32* %8, align 4, !dbg !858, !tbaa !631
  %12 = lshr i32 %11, %10, !dbg !859
  %13 = and i32 %12, 1, !dbg !860
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !846, metadata !575), !dbg !861
  %14 = and i32 %2, 1, !dbg !862
  %15 = xor i32 %13, %14, !dbg !863
  %16 = shl i32 %15, %10, !dbg !864
  %17 = xor i32 %16, %11, !dbg !865
  store i32 %17, i32* %8, align 4, !dbg !865, !tbaa !631
  ret i32 %13, !dbg !866
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !867 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !871, metadata !575), !dbg !874
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !872, metadata !575), !dbg !875
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !876
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !871, metadata !575), !dbg !874
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !878
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !871, metadata !575), !dbg !874
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !879
  %6 = load i32, i32* %5, align 4, !dbg !879, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !873, metadata !575), !dbg !881
  store i32 %1, i32* %5, align 4, !dbg !882, !tbaa !880
  ret i32 %6, !dbg !883
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !884 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !888, metadata !575), !dbg !891
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !889, metadata !575), !dbg !892
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !890, metadata !575), !dbg !893
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !894
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !888, metadata !575), !dbg !891
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !896
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !888, metadata !575), !dbg !891
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !897
  store i32 10, i32* %6, align 8, !dbg !898, !tbaa !820
  %7 = icmp ne i8* %1, null, !dbg !899
  %8 = icmp ne i8* %2, null, !dbg !901
  %9 = and i1 %7, %8, !dbg !902
  br i1 %9, label %11, label %10, !dbg !902

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !903
  unreachable, !dbg !903

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !904
  store i8* %1, i8** %12, align 8, !dbg !905, !tbaa !906
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !907
  store i8* %2, i8** %13, align 8, !dbg !908, !tbaa !909
  ret void, !dbg !910
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !911 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !915, metadata !575), !dbg !923
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !916, metadata !575), !dbg !924
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !917, metadata !575), !dbg !925
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !918, metadata !575), !dbg !926
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !919, metadata !575), !dbg !927
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !928
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !928
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !920, metadata !575), !dbg !929
  %8 = tail call i32* @__errno_location() #17, !dbg !930
  %9 = load i32, i32* %8, align 4, !dbg !930, !tbaa !631
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !921, metadata !575), !dbg !931
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !932
  %11 = load i32, i32* %10, align 8, !dbg !932, !tbaa !820
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !933
  %13 = load i32, i32* %12, align 4, !dbg !933, !tbaa !880
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !934
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !935
  %16 = load i8*, i8** %15, align 8, !dbg !935, !tbaa !906
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !936
  %18 = load i8*, i8** %17, align 8, !dbg !936, !tbaa !909
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !937
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !922, metadata !575), !dbg !938
  store i32 %9, i32* %8, align 4, !dbg !939, !tbaa !631
  ret i64 %19, !dbg !940
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !941 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !947, metadata !575), !dbg !1011
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !948, metadata !575), !dbg !1012
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !949, metadata !575), !dbg !1013
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !950, metadata !575), !dbg !1014
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !951, metadata !575), !dbg !1015
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !952, metadata !575), !dbg !1016
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !953, metadata !575), !dbg !1017
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !954, metadata !575), !dbg !1018
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !955, metadata !575), !dbg !1019
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !957, metadata !575), !dbg !1020
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !958, metadata !575), !dbg !1021
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !959, metadata !575), !dbg !1022
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !960, metadata !575), !dbg !1023
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !961, metadata !575), !dbg !1024
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1025
  %14 = icmp eq i64 %13, 1, !dbg !1026
  %15 = lshr i32 %5, 1, !dbg !1027
  %16 = trunc i32 %15 to i8, !dbg !1027
  %17 = and i8 %16, 1, !dbg !1027
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !963, metadata !575), !dbg !1027
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !964, metadata !575), !dbg !1028
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !965, metadata !575), !dbg !1029
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !966, metadata !575), !dbg !1030
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1031

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !948, metadata !575), !dbg !1012
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !966, metadata !575), !dbg !1030
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !965, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !963, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !950, metadata !575), !dbg !1014
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !961, metadata !575), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !960, metadata !575), !dbg !1023
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !959, metadata !575), !dbg !1022
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !958, metadata !575), !dbg !1021
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !955, metadata !575), !dbg !1019
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !954, metadata !575), !dbg !1018
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !951, metadata !575), !dbg !1015
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
  ], !dbg !1032

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !951, metadata !575), !dbg !1015
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !963, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !963, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !951, metadata !575), !dbg !1015
  br label %94, !dbg !1033

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !963, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !951, metadata !575), !dbg !1015
  %43 = and i8 %36, 1, !dbg !1035
  %44 = icmp eq i8 %43, 0, !dbg !1035
  br i1 %44, label %45, label %94, !dbg !1033

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1037
  br i1 %46, label %94, label %47, !dbg !1040

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1037, !tbaa !1041
  br label %94, !dbg !1037

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.47, i64 0, i64 0), i32 %28), !dbg !1042
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !954, metadata !575), !dbg !1018
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), i32 %28), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !955, metadata !575), !dbg !1019
  br label %51, !dbg !1047

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !955, metadata !575), !dbg !1019
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !954, metadata !575), !dbg !1018
  %54 = and i8 %36, 1, !dbg !1048
  %55 = icmp eq i8 %54, 0, !dbg !1048
  br i1 %55, label %56, label %72, !dbg !1050

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !959, metadata !575), !dbg !1022
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !959, metadata !575), !dbg !1022
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !957, metadata !575), !dbg !1020
  %57 = load i8, i8* %52, align 1, !dbg !1051, !tbaa !1041
  %58 = icmp eq i8 %57, 0, !dbg !1054
  br i1 %58, label %72, label %59, !dbg !1054

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1055

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !959, metadata !575), !dbg !1022
  %64 = icmp ult i64 %63, %40, !dbg !1055
  br i1 %64, label %65, label %67, !dbg !1058

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1055
  store i8 %61, i8* %66, align 1, !dbg !1055, !tbaa !1041
  br label %67, !dbg !1055

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1058
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !957, metadata !575), !dbg !1020
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1059
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !959, metadata !575), !dbg !1022
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !959, metadata !575), !dbg !1022
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !957, metadata !575), !dbg !1020
  %70 = load i8, i8* %69, align 1, !dbg !1051, !tbaa !1041
  %71 = icmp eq i8 %70, 0, !dbg !1054
  br i1 %71, label %72, label %60, !dbg !1054, !llvm.loop !1060

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !961, metadata !575), !dbg !1024
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !959, metadata !575), !dbg !1022
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1062
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !960, metadata !575), !dbg !1023
  br label %94, !dbg !1063

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !961, metadata !575), !dbg !1024
  br label %76, !dbg !1064

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !961, metadata !575), !dbg !1024
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !963, metadata !575), !dbg !1027
  br label %78, !dbg !1065

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !963, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !961, metadata !575), !dbg !1024
  %81 = and i8 %80, 1, !dbg !1066
  %82 = icmp eq i8 %81, 0, !dbg !1066
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !961, metadata !575), !dbg !1024
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1068
  br label %84, !dbg !1068

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !963, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !961, metadata !575), !dbg !1024
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !951, metadata !575), !dbg !1015
  %87 = and i8 %86, 1, !dbg !1069
  %88 = icmp eq i8 %87, 0, !dbg !1069
  br i1 %88, label %89, label %94, !dbg !1071

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1072
  br i1 %90, label %94, label %91, !dbg !1075

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1072, !tbaa !1041
  br label %94, !dbg !1072

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !963, metadata !575), !dbg !1027
  br label %94, !dbg !1076

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1077
  unreachable, !dbg !1077

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !963, metadata !575), !dbg !1027
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !961, metadata !575), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !960, metadata !575), !dbg !1023
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !959, metadata !575), !dbg !1022
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !955, metadata !575), !dbg !1019
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !954, metadata !575), !dbg !1018
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !951, metadata !575), !dbg !1015
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !956, metadata !575), !dbg !1078
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
  br label %122, !dbg !1079

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !948, metadata !575), !dbg !1012
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !966, metadata !575), !dbg !1030
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !965, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !950, metadata !575), !dbg !1014
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !958, metadata !575), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !956, metadata !575), !dbg !1078
  %131 = icmp eq i64 %126, -1, !dbg !1080
  br i1 %131, label %134, label %132, !dbg !1081

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1082
  br i1 %133, label %590, label %138, !dbg !1083

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1084
  %136 = load i8, i8* %135, align 1, !dbg !1084, !tbaa !1041
  %137 = icmp eq i8 %136, 0, !dbg !1085
  br i1 %137, label %590, label %138, !dbg !1083

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !972, metadata !575), !dbg !1086
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !973, metadata !575), !dbg !1087
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !974, metadata !575), !dbg !1088
  br i1 %108, label %139, label %154, !dbg !1089

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1091
  %141 = and i1 %109, %131, !dbg !1092
  br i1 %141, label %142, label %144, !dbg !1092

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !950, metadata !575), !dbg !1014
  br label %144, !dbg !1094

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !950, metadata !575), !dbg !1014
  %146 = icmp ugt i64 %140, %145, !dbg !1095
  br i1 %146, label %154, label %147, !dbg !1096

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1097
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1098
  %150 = icmp ne i32 %149, 0, !dbg !1099
  %151 = or i1 %150, %111, !dbg !1100
  %152 = xor i1 %150, true, !dbg !1100
  %153 = zext i1 %152 to i8, !dbg !1100
  br i1 %151, label %154, label %635, !dbg !1100

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !972, metadata !575), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !950, metadata !575), !dbg !1014
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1101
  %158 = load i8, i8* %157, align 1, !dbg !1101, !tbaa !1041
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !967, metadata !575), !dbg !1102
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
  ], !dbg !1103

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1104

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1105

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !973, metadata !575), !dbg !1087
  %162 = and i8 %127, 1, !dbg !1109
  %163 = icmp eq i8 %162, 0, !dbg !1109
  %164 = and i1 %113, %163, !dbg !1109
  br i1 %164, label %165, label %181, !dbg !1109

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1111
  br i1 %166, label %167, label %169, !dbg !1115

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1111
  store i8 39, i8* %168, align 1, !dbg !1111, !tbaa !1041
  br label %169, !dbg !1111

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !957, metadata !575), !dbg !1020
  %171 = icmp ult i64 %170, %130, !dbg !1116
  br i1 %171, label %172, label %174, !dbg !1119

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1116
  store i8 36, i8* %173, align 1, !dbg !1116, !tbaa !1041
  br label %174, !dbg !1116

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !957, metadata !575), !dbg !1020
  %176 = icmp ult i64 %175, %130, !dbg !1120
  br i1 %176, label %177, label %179, !dbg !1123

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1120
  store i8 39, i8* %178, align 1, !dbg !1120, !tbaa !1041
  br label %179, !dbg !1120

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !964, metadata !575), !dbg !1028
  br label %181, !dbg !1124

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !957, metadata !575), !dbg !1020
  %184 = icmp ult i64 %182, %130, !dbg !1125
  br i1 %184, label %185, label %187, !dbg !1128

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1125
  store i8 92, i8* %186, align 1, !dbg !1125, !tbaa !1041
  br label %187, !dbg !1125

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !957, metadata !575), !dbg !1020
  br i1 %105, label %189, label %470, !dbg !1129

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1131
  %191 = icmp ult i64 %190, %155, !dbg !1132
  br i1 %191, label %192, label %470, !dbg !1133

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1134
  %194 = load i8, i8* %193, align 1, !dbg !1134, !tbaa !1041
  %195 = add i8 %194, -48, !dbg !1135
  %196 = icmp ult i8 %195, 10, !dbg !1135
  br i1 %196, label %197, label %470, !dbg !1135

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1136
  br i1 %198, label %199, label %201, !dbg !1140

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1136
  store i8 48, i8* %200, align 1, !dbg !1136, !tbaa !1041
  br label %201, !dbg !1136

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !957, metadata !575), !dbg !1020
  %203 = icmp ult i64 %202, %130, !dbg !1141
  br i1 %203, label %204, label %206, !dbg !1144

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1141
  store i8 48, i8* %205, align 1, !dbg !1141, !tbaa !1041
  br label %206, !dbg !1141

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !957, metadata !575), !dbg !1020
  br label %470, !dbg !1145

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1146

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1147

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1148

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1150

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1152
  %214 = icmp ult i64 %213, %155, !dbg !1153
  br i1 %214, label %215, label %470, !dbg !1154

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1155
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1156
  %218 = load i8, i8* %217, align 1, !dbg !1156, !tbaa !1041
  %219 = icmp eq i8 %218, 63, !dbg !1157
  br i1 %219, label %220, label %470, !dbg !1158

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1159
  %222 = load i8, i8* %221, align 1, !dbg !1159, !tbaa !1041
  %223 = sext i8 %222 to i32, !dbg !1159
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
  ], !dbg !1160

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1161

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !967, metadata !575), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !956, metadata !575), !dbg !1078
  %226 = icmp ult i64 %124, %130, !dbg !1163
  br i1 %226, label %227, label %229, !dbg !1166

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1163
  store i8 63, i8* %228, align 1, !dbg !1163, !tbaa !1041
  br label %229, !dbg !1163

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !957, metadata !575), !dbg !1020
  %231 = icmp ult i64 %230, %130, !dbg !1167
  br i1 %231, label %232, label %234, !dbg !1170

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1167
  store i8 34, i8* %233, align 1, !dbg !1167, !tbaa !1041
  br label %234, !dbg !1167

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1170
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !957, metadata !575), !dbg !1020
  %236 = icmp ult i64 %235, %130, !dbg !1171
  br i1 %236, label %237, label %239, !dbg !1174

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1171
  store i8 34, i8* %238, align 1, !dbg !1171, !tbaa !1041
  br label %239, !dbg !1171

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !957, metadata !575), !dbg !1020
  %241 = icmp ult i64 %240, %130, !dbg !1175
  br i1 %241, label %242, label %244, !dbg !1178

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1175
  store i8 63, i8* %243, align 1, !dbg !1175, !tbaa !1041
  br label %244, !dbg !1175

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1178
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !957, metadata !575), !dbg !1020
  br label %470, !dbg !1179

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !971, metadata !575), !dbg !1180
  br label %256, !dbg !1181

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !971, metadata !575), !dbg !1180
  br label %256, !dbg !1182

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !971, metadata !575), !dbg !1180
  br label %254, !dbg !1183

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !971, metadata !575), !dbg !1180
  br label %254, !dbg !1184

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !971, metadata !575), !dbg !1180
  br label %256, !dbg !1185

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !971, metadata !575), !dbg !1180
  br i1 %113, label %252, label %253, !dbg !1186

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1187

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1190

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !971, metadata !575), !dbg !1180
  br i1 %117, label %256, label %635, !dbg !1192

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !971, metadata !575), !dbg !1180
  br i1 %104, label %497, label %470, !dbg !1194

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1195
  br i1 %259, label %260, label %265, !dbg !1197

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1198, !tbaa !1041
  %262 = icmp ne i8 %261, 0, !dbg !1199
  %263 = icmp ne i64 %123, 0, !dbg !1200
  %264 = or i1 %263, %262, !dbg !1202
  br i1 %264, label %470, label %271, !dbg !1202

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1203
  %267 = icmp ne i64 %123, 0, !dbg !1200
  %268 = or i1 %267, %266, !dbg !1197
  br i1 %268, label %470, label %271, !dbg !1197

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1200
  br i1 %270, label %271, label %470, !dbg !1204

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !974, metadata !575), !dbg !1088
  br label %272, !dbg !1205

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !974, metadata !575), !dbg !1088
  br i1 %117, label %470, label %635, !dbg !1206

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !965, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !974, metadata !575), !dbg !1088
  br i1 %113, label %275, label %470, !dbg !1208

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1209

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1212
  %278 = icmp ne i64 %125, 0, !dbg !1214
  %279 = or i1 %278, %277, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !958, metadata !575), !dbg !1021
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !948, metadata !575), !dbg !1012
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1215
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !948, metadata !575), !dbg !1012
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !958, metadata !575), !dbg !1021
  %282 = icmp ult i64 %124, %281, !dbg !1216
  br i1 %282, label %283, label %285, !dbg !1219

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1216
  store i8 39, i8* %284, align 1, !dbg !1216, !tbaa !1041
  br label %285, !dbg !1216

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1219
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !957, metadata !575), !dbg !1020
  %287 = icmp ult i64 %286, %281, !dbg !1220
  br i1 %287, label %288, label %290, !dbg !1223

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1220
  store i8 92, i8* %289, align 1, !dbg !1220, !tbaa !1041
  br label %290, !dbg !1220

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1223
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !957, metadata !575), !dbg !1020
  %292 = icmp ult i64 %291, %281, !dbg !1224
  br i1 %292, label %293, label %295, !dbg !1227

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1224
  store i8 39, i8* %294, align 1, !dbg !1224, !tbaa !1041
  br label %295, !dbg !1224

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !964, metadata !575), !dbg !1028
  br label %470, !dbg !1228

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1229

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !975, metadata !575), !dbg !1230
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1231
  %300 = load i16*, i16** %299, align 8, !dbg !1231, !tbaa !582
  %301 = zext i8 %158 to i64, !dbg !1231
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1231
  %303 = load i16, i16* %302, align 2, !dbg !1231, !tbaa !1233
  %304 = lshr i16 %303, 14, !dbg !1235
  %305 = trunc i16 %304 to i8, !dbg !1235
  %306 = and i8 %305, 1, !dbg !1235
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !978, metadata !575), !dbg !1236
  br label %362, !dbg !1237

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1238
  store i64 0, i64* %10, align 8, !dbg !1239
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !975, metadata !575), !dbg !1230
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !978, metadata !575), !dbg !1236
  %308 = icmp eq i64 %155, -1, !dbg !1240
  br i1 %308, label %309, label %311, !dbg !1242

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !950, metadata !575), !dbg !1014
  br label %311, !dbg !1244

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !950, metadata !575), !dbg !1014
  br label %313, !dbg !1245, !llvm.loop !1246

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !978, metadata !575), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !975, metadata !575), !dbg !1230
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1248
  %316 = add i64 %314, %123, !dbg !1249
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1250
  %318 = sub i64 %312, %316, !dbg !1251
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !979, metadata !575), !dbg !1252
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !997, metadata !575), !dbg !1253
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1000, metadata !575), !dbg !1255
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1256

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !978, metadata !575), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !975, metadata !575), !dbg !1230
  %321 = icmp ugt i64 %312, %316, !dbg !1257
  br i1 %321, label %322, label %347, !dbg !1259

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1260

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !975, metadata !575), !dbg !1230
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1260
  %327 = load i8, i8* %326, align 1, !dbg !1260, !tbaa !1041
  %328 = icmp eq i8 %327, 0, !dbg !1259
  br i1 %328, label %347, label %329, !dbg !1261

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !975, metadata !575), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !975, metadata !575), !dbg !1230
  %331 = add i64 %330, %123, !dbg !1263
  %332 = icmp ult i64 %331, %312, !dbg !1257
  br i1 %332, label %323, label %347, !dbg !1259, !llvm.loop !1264

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1265
  %335 = and i1 %115, %334, !dbg !1268
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1001, metadata !575), !dbg !1269
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1001, metadata !575), !dbg !1269
  br i1 %335, label %336, label %350, !dbg !1268

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1270

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1001, metadata !575), !dbg !1269
  %339 = add i64 %338, %316, !dbg !1270
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1271
  %341 = load i8, i8* %340, align 1, !dbg !1271, !tbaa !1041
  %342 = sext i8 %341 to i32, !dbg !1271
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1272

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1001, metadata !575), !dbg !1269
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1001, metadata !575), !dbg !1269
  %345 = icmp ult i64 %344, %319, !dbg !1265
  br i1 %345, label %337, label %350, !dbg !1274, !llvm.loop !1275

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1277

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !978, metadata !575), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !975, metadata !575), !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1277
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1278, !tbaa !631
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !997, metadata !575), !dbg !1253
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1280
  %353 = icmp eq i32 %352, 0, !dbg !1280
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !978, metadata !575), !dbg !1236
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1281
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !978, metadata !575), !dbg !1236
  %355 = add i64 %319, %314, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !975, metadata !575), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !978, metadata !575), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !975, metadata !575), !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1277
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !979, metadata !575), !dbg !1252
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1283
  %357 = icmp eq i32 %356, 0, !dbg !1284
  br i1 %357, label %313, label %358, !dbg !1285, !llvm.loop !1246

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1286
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !978, metadata !575), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !975, metadata !575), !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1277
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1286
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !978, metadata !575), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !975, metadata !575), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !950, metadata !575), !dbg !1014
  %366 = and i8 %365, 1, !dbg !1287
  %367 = icmp ne i8 %366, 0, !dbg !1287
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !974, metadata !575), !dbg !1088
  %368 = icmp ult i64 %364, 2, !dbg !1288
  %369 = or i1 %367, %112, !dbg !1289
  %370 = and i1 %368, %369, !dbg !1290
  br i1 %370, label %470, label %371, !dbg !1290

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1008, metadata !575), !dbg !1292
  br label %373, !dbg !1293

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !973, metadata !575), !dbg !1087
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !972, metadata !575), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !967, metadata !575), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !956, metadata !575), !dbg !1078
  br i1 %369, label %426, label %380, !dbg !1294

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1299

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !973, metadata !575), !dbg !1087
  %382 = and i8 %376, 1, !dbg !1302
  %383 = icmp eq i8 %382, 0, !dbg !1302
  %384 = and i1 %113, %383, !dbg !1302
  br i1 %384, label %385, label %401, !dbg !1302

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1304
  br i1 %386, label %387, label %389, !dbg !1308

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1304
  store i8 39, i8* %388, align 1, !dbg !1304, !tbaa !1041
  br label %389, !dbg !1304

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !957, metadata !575), !dbg !1020
  %391 = icmp ult i64 %390, %130, !dbg !1309
  br i1 %391, label %392, label %394, !dbg !1312

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1309
  store i8 36, i8* %393, align 1, !dbg !1309, !tbaa !1041
  br label %394, !dbg !1309

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !957, metadata !575), !dbg !1020
  %396 = icmp ult i64 %395, %130, !dbg !1313
  br i1 %396, label %397, label %399, !dbg !1316

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1313
  store i8 39, i8* %398, align 1, !dbg !1313, !tbaa !1041
  br label %399, !dbg !1313

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !964, metadata !575), !dbg !1028
  br label %401, !dbg !1317

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !957, metadata !575), !dbg !1020
  %404 = icmp ult i64 %402, %130, !dbg !1318
  br i1 %404, label %405, label %407, !dbg !1321

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1318
  store i8 92, i8* %406, align 1, !dbg !1318, !tbaa !1041
  br label %407, !dbg !1318

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1321
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !957, metadata !575), !dbg !1020
  %409 = icmp ult i64 %408, %130, !dbg !1322
  br i1 %409, label %410, label %414, !dbg !1325

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1322
  %412 = or i8 %411, 48, !dbg !1322
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1322
  store i8 %412, i8* %413, align 1, !dbg !1322, !tbaa !1041
  br label %414, !dbg !1322

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !957, metadata !575), !dbg !1020
  %416 = icmp ult i64 %415, %130, !dbg !1326
  br i1 %416, label %417, label %422, !dbg !1329

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1326
  %419 = and i8 %418, 7, !dbg !1326
  %420 = or i8 %419, 48, !dbg !1326
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1326
  store i8 %420, i8* %421, align 1, !dbg !1326, !tbaa !1041
  br label %422, !dbg !1326

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !957, metadata !575), !dbg !1020
  %424 = and i8 %377, 7, !dbg !1330
  %425 = or i8 %424, 48, !dbg !1331
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !967, metadata !575), !dbg !1102
  br label %435, !dbg !1332

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1333
  %428 = icmp eq i8 %427, 0, !dbg !1333
  br i1 %428, label %435, label %429, !dbg !1335

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1336
  br i1 %430, label %431, label %433, !dbg !1340

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1336
  store i8 92, i8* %432, align 1, !dbg !1336, !tbaa !1041
  br label %433, !dbg !1336

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !972, metadata !575), !dbg !1086
  br label %435, !dbg !1341

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !973, metadata !575), !dbg !1087
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !972, metadata !575), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !967, metadata !575), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !957, metadata !575), !dbg !1020
  %441 = add i64 %374, 1, !dbg !1342
  %442 = icmp ugt i64 %372, %441, !dbg !1344
  br i1 %442, label %443, label %535, !dbg !1345

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1346
  %445 = icmp ne i8 %444, 0, !dbg !1346
  %446 = and i8 %440, 1, !dbg !1346
  %447 = icmp eq i8 %446, 0, !dbg !1346
  %448 = and i1 %445, %447, !dbg !1346
  br i1 %448, label %449, label %460, !dbg !1346

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1349
  br i1 %450, label %451, label %453, !dbg !1353

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1349
  store i8 39, i8* %452, align 1, !dbg !1349, !tbaa !1041
  br label %453, !dbg !1349

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !957, metadata !575), !dbg !1020
  %455 = icmp ult i64 %454, %130, !dbg !1354
  br i1 %455, label %456, label %458, !dbg !1357

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1354
  store i8 39, i8* %457, align 1, !dbg !1354, !tbaa !1041
  br label %458, !dbg !1354

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !964, metadata !575), !dbg !1028
  br label %460, !dbg !1358

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !957, metadata !575), !dbg !1020
  %463 = icmp ult i64 %461, %130, !dbg !1359
  br i1 %463, label %464, label %466, !dbg !1362

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1359
  store i8 %438, i8* %465, align 1, !dbg !1359, !tbaa !1041
  br label %466, !dbg !1359

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !956, metadata !575), !dbg !1078
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1363
  %469 = load i8, i8* %468, align 1, !dbg !1363, !tbaa !1041
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !967, metadata !575), !dbg !1102
  br label %373, !dbg !1364, !llvm.loop !1365

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !948, metadata !575), !dbg !1012
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !974, metadata !575), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !973, metadata !575), !dbg !1087
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !972, metadata !575), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !967, metadata !575), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !965, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !950, metadata !575), !dbg !1014
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !958, metadata !575), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !956, metadata !575), !dbg !1078
  br i1 %106, label %482, label %481, !dbg !1368

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1370

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1371

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1372
  %485 = zext i8 %484 to i64, !dbg !1372
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1373
  %487 = load i32, i32* %486, align 4, !dbg !1373, !tbaa !631
  %488 = and i8 %477, 31, !dbg !1374
  %489 = zext i8 %488 to i32, !dbg !1375
  %490 = shl i32 1, %489, !dbg !1376
  %491 = and i32 %487, %490, !dbg !1376
  %492 = icmp eq i32 %491, 0, !dbg !1376
  %493 = icmp eq i8 %156, 0, !dbg !1377
  %494 = and i1 %493, %492, !dbg !1378
  br i1 %494, label %535, label %497, !dbg !1378

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1377
  br i1 %496, label %535, label %497, !dbg !1379

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !948, metadata !575), !dbg !1012
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !974, metadata !575), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !967, metadata !575), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !965, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !950, metadata !575), !dbg !1014
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !958, metadata !575), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !956, metadata !575), !dbg !1078
  br i1 %111, label %507, label %635, !dbg !1380

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !973, metadata !575), !dbg !1087
  %508 = and i8 %502, 1, !dbg !1382
  %509 = icmp eq i8 %508, 0, !dbg !1382
  %510 = and i1 %113, %509, !dbg !1382
  br i1 %510, label %511, label %527, !dbg !1382

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1384
  br i1 %512, label %513, label %515, !dbg !1388

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1384
  store i8 39, i8* %514, align 1, !dbg !1384, !tbaa !1041
  br label %515, !dbg !1384

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !957, metadata !575), !dbg !1020
  %517 = icmp ult i64 %516, %506, !dbg !1389
  br i1 %517, label %518, label %520, !dbg !1392

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1389
  store i8 36, i8* %519, align 1, !dbg !1389, !tbaa !1041
  br label %520, !dbg !1389

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !957, metadata !575), !dbg !1020
  %522 = icmp ult i64 %521, %506, !dbg !1393
  br i1 %522, label %523, label %525, !dbg !1396

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1393
  store i8 39, i8* %524, align 1, !dbg !1393, !tbaa !1041
  br label %525, !dbg !1393

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !964, metadata !575), !dbg !1028
  br label %527, !dbg !1397

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !957, metadata !575), !dbg !1020
  %530 = icmp ult i64 %528, %506, !dbg !1398
  br i1 %530, label %531, label %533, !dbg !1401

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1398
  store i8 92, i8* %532, align 1, !dbg !1398, !tbaa !1041
  br label %533, !dbg !1398

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !948, metadata !575), !dbg !1012
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !974, metadata !575), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !973, metadata !575), !dbg !1087
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !967, metadata !575), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !965, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !950, metadata !575), !dbg !1014
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !958, metadata !575), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !956, metadata !575), !dbg !1078
  br label %562, !dbg !1402

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !948, metadata !575), !dbg !1012
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !974, metadata !575), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !973, metadata !575), !dbg !1087
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !967, metadata !575), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !965, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !950, metadata !575), !dbg !1014
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !958, metadata !575), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !956, metadata !575), !dbg !1078
  %546 = and i8 %540, 1, !dbg !1402
  %547 = icmp ne i8 %546, 0, !dbg !1402
  %548 = and i8 %543, 1, !dbg !1402
  %549 = icmp eq i8 %548, 0, !dbg !1402
  %550 = and i1 %547, %549, !dbg !1402
  br i1 %550, label %551, label %562, !dbg !1402

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1405
  br i1 %552, label %553, label %555, !dbg !1409

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1405
  store i8 39, i8* %554, align 1, !dbg !1405, !tbaa !1041
  br label %555, !dbg !1405

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !957, metadata !575), !dbg !1020
  %557 = icmp ult i64 %556, %545, !dbg !1410
  br i1 %557, label %558, label %560, !dbg !1413

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1410
  store i8 39, i8* %559, align 1, !dbg !1410, !tbaa !1041
  br label %560, !dbg !1410

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !964, metadata !575), !dbg !1028
  br label %562, !dbg !1414

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !957, metadata !575), !dbg !1020
  %572 = icmp ult i64 %570, %563, !dbg !1415
  br i1 %572, label %573, label %575, !dbg !1418

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1415
  store i8 %565, i8* %574, align 1, !dbg !1415, !tbaa !1041
  br label %575, !dbg !1415

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !957, metadata !575), !dbg !1020
  %577 = and i8 %564, 1, !dbg !1419
  %578 = icmp eq i8 %577, 0, !dbg !1419
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !966, metadata !575), !dbg !1030
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1421
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !966, metadata !575), !dbg !1030
  br label %580, !dbg !1422

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !948, metadata !575), !dbg !1012
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !966, metadata !575), !dbg !1030
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !965, metadata !575), !dbg !1029
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !964, metadata !575), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !950, metadata !575), !dbg !1014
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !958, metadata !575), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !956, metadata !575), !dbg !1078
  %589 = add i64 %581, 1, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !956, metadata !575), !dbg !1078
  br label %122, !dbg !1424, !llvm.loop !1425

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1427
  %593 = and i1 %113, %592, !dbg !1429
  %594 = xor i1 %593, true, !dbg !1429
  %595 = or i1 %111, %594, !dbg !1429
  br i1 %595, label %596, label %635, !dbg !1429

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1430
  %598 = xor i1 %597, true, !dbg !1430
  %599 = and i8 %128, 1, !dbg !1432
  %600 = icmp eq i8 %599, 0, !dbg !1432
  %601 = or i1 %600, %598, !dbg !1430
  br i1 %601, label %611, label %602, !dbg !1430

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1433
  %604 = icmp eq i8 %603, 0, !dbg !1433
  br i1 %604, label %607, label %605, !dbg !1436

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1437
  br label %645, !dbg !1438

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1439
  %609 = icmp ne i64 %125, 0, !dbg !1441
  %610 = and i1 %609, %608, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !948, metadata !575), !dbg !1012
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !957, metadata !575), !dbg !1020
  br i1 %610, label %27, label %611, !dbg !1442

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1443
  %613 = and i1 %612, %111, !dbg !1445
  br i1 %613, label %614, label %630, !dbg !1445

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !959, metadata !575), !dbg !1022
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !957, metadata !575), !dbg !1020
  %615 = load i8, i8* %99, align 1, !dbg !1446, !tbaa !1041
  %616 = icmp eq i8 %615, 0, !dbg !1449
  br i1 %616, label %630, label %617, !dbg !1449

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1450

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !957, metadata !575), !dbg !1020
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !959, metadata !575), !dbg !1022
  %622 = icmp ult i64 %621, %130, !dbg !1450
  br i1 %622, label %623, label %625, !dbg !1453

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1450
  store i8 %619, i8* %624, align 1, !dbg !1450, !tbaa !1041
  br label %625, !dbg !1450

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !957, metadata !575), !dbg !1020
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !959, metadata !575), !dbg !1022
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !959, metadata !575), !dbg !1022
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !957, metadata !575), !dbg !1020
  %628 = load i8, i8* %627, align 1, !dbg !1446, !tbaa !1041
  %629 = icmp eq i8 %628, 0, !dbg !1449
  br i1 %629, label %630, label %618, !dbg !1449, !llvm.loop !1455

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !957, metadata !575), !dbg !1020
  %632 = icmp ult i64 %631, %130, !dbg !1457
  br i1 %632, label %633, label %645, !dbg !1459

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1460
  store i8 0, i8* %634, align 1, !dbg !1461, !tbaa !1041
  br label %645, !dbg !1460

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !948, metadata !575), !dbg !1012
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !950, metadata !575), !dbg !1014
  %639 = icmp ne i32 %636, 2, !dbg !1462
  %640 = icmp eq i8 %103, 0, !dbg !1464
  %641 = or i1 %639, %640, !dbg !1465
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !951, metadata !575), !dbg !1015
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1465
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !951, metadata !575), !dbg !1015
  %643 = and i32 %5, -3, !dbg !1466
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1467
  br label %645, !dbg !1468

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1469
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1470 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1474, metadata !575), !dbg !1478
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1475, metadata !575), !dbg !1479
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1480
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1476, metadata !575), !dbg !1481
  %4 = icmp eq i8* %3, %0, !dbg !1482
  br i1 %4, label %5, label %75, !dbg !1484

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1485
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1477, metadata !575), !dbg !1486
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1487, metadata !575), !dbg !1503
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1501, metadata !575), !dbg !1506
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1502, metadata !575), !dbg !1507
  %7 = load i8, i8* %6, align 1, !dbg !1508, !tbaa !1041
  %8 = sext i8 %7 to i32, !dbg !1508
  %9 = and i32 %8, -33, !dbg !1508
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1508

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1510, metadata !575), !dbg !1524
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1522, metadata !575), !dbg !1528
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1523, metadata !575), !dbg !1529
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1530
  %12 = load i8, i8* %11, align 1, !dbg !1530, !tbaa !1041
  %13 = sext i8 %12 to i32, !dbg !1530
  %14 = and i32 %13, -33, !dbg !1530
  %15 = icmp eq i32 %14, 84, !dbg !1530
  br i1 %15, label %16, label %72, !dbg !1530

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1532, metadata !575), !dbg !1545
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1543, metadata !575), !dbg !1549
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1544, metadata !575), !dbg !1550
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1551
  %18 = load i8, i8* %17, align 1, !dbg !1551, !tbaa !1041
  %19 = sext i8 %18 to i32, !dbg !1551
  %20 = and i32 %19, -33, !dbg !1551
  %21 = icmp eq i32 %20, 70, !dbg !1551
  br i1 %21, label %22, label %72, !dbg !1551

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1553, metadata !575), !dbg !1565
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1563, metadata !575), !dbg !1569
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1564, metadata !575), !dbg !1570
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1571
  %24 = load i8, i8* %23, align 1, !dbg !1571, !tbaa !1041
  %25 = icmp eq i8 %24, 45, !dbg !1571
  br i1 %25, label %26, label %72, !dbg !1573

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1574, metadata !575), !dbg !1585
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1583, metadata !575), !dbg !1589
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1584, metadata !575), !dbg !1590
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1591
  %28 = load i8, i8* %27, align 1, !dbg !1591, !tbaa !1041
  %29 = icmp eq i8 %28, 56, !dbg !1591
  br i1 %29, label %30, label %72, !dbg !1593

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1594, metadata !575), !dbg !1604
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1602, metadata !575), !dbg !1608
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1603, metadata !575), !dbg !1609
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1610
  %32 = load i8, i8* %31, align 1, !dbg !1610, !tbaa !1041
  %33 = icmp eq i8 %32, 0, !dbg !1610
  br i1 %33, label %34, label %72, !dbg !1612

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1613, !tbaa !1041
  %36 = icmp eq i8 %35, 96, !dbg !1614
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.50, i64 0, i64 0), !dbg !1613
  br label %75, !dbg !1615

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1510, metadata !575), !dbg !1616
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1522, metadata !575), !dbg !1620
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1523, metadata !575), !dbg !1621
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1622
  %40 = load i8, i8* %39, align 1, !dbg !1622, !tbaa !1041
  %41 = sext i8 %40 to i32, !dbg !1622
  %42 = and i32 %41, -33, !dbg !1622
  %43 = icmp eq i32 %42, 66, !dbg !1622
  br i1 %43, label %44, label %72, !dbg !1622

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1532, metadata !575), !dbg !1623
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1543, metadata !575), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1544, metadata !575), !dbg !1626
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1627
  %46 = load i8, i8* %45, align 1, !dbg !1627, !tbaa !1041
  %47 = icmp eq i8 %46, 49, !dbg !1627
  br i1 %47, label %48, label %72, !dbg !1628

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1553, metadata !575), !dbg !1629
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1563, metadata !575), !dbg !1631
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1564, metadata !575), !dbg !1632
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1633
  %50 = load i8, i8* %49, align 1, !dbg !1633, !tbaa !1041
  %51 = icmp eq i8 %50, 56, !dbg !1633
  br i1 %51, label %52, label %72, !dbg !1634

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1574, metadata !575), !dbg !1635
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1583, metadata !575), !dbg !1637
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1584, metadata !575), !dbg !1638
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1639
  %54 = load i8, i8* %53, align 1, !dbg !1639, !tbaa !1041
  %55 = icmp eq i8 %54, 48, !dbg !1639
  br i1 %55, label %56, label %72, !dbg !1640

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1594, metadata !575), !dbg !1641
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1602, metadata !575), !dbg !1643
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1603, metadata !575), !dbg !1644
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1645
  %58 = load i8, i8* %57, align 1, !dbg !1645, !tbaa !1041
  %59 = icmp eq i8 %58, 51, !dbg !1645
  br i1 %59, label %60, label %72, !dbg !1646

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1647, metadata !575), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !575), !dbg !1660
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1655, metadata !575), !dbg !1661
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1662
  %62 = load i8, i8* %61, align 1, !dbg !1662, !tbaa !1041
  %63 = icmp eq i8 %62, 48, !dbg !1662
  br i1 %63, label %64, label %72, !dbg !1664

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1665, metadata !575), !dbg !1673
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1671, metadata !575), !dbg !1677
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1672, metadata !575), !dbg !1678
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1679
  %66 = load i8, i8* %65, align 1, !dbg !1679, !tbaa !1041
  %67 = icmp eq i8 %66, 0, !dbg !1679
  br i1 %67, label %68, label %72, !dbg !1681

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1682, !tbaa !1041
  %70 = icmp eq i8 %69, 96, !dbg !1683
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1682
  br label %75, !dbg !1684

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1685
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.49, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.48, i64 0, i64 0), !dbg !1686
  br label %75, !dbg !1687

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1688
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1689 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1693, metadata !575), !dbg !1696
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1694, metadata !575), !dbg !1697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1695, metadata !575), !dbg !1698
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1699, metadata !575) #10, !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1704, metadata !575) #10, !dbg !1714
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1705, metadata !575) #10, !dbg !1715
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1706, metadata !575) #10, !dbg !1716
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1717
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1707, metadata !575) #10, !dbg !1718
  %6 = tail call i32* @__errno_location() #17, !dbg !1719
  %7 = load i32, i32* %6, align 4, !dbg !1719, !tbaa !631
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1708, metadata !575) #10, !dbg !1720
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1721
  %9 = load i32, i32* %8, align 4, !dbg !1721, !tbaa !880
  %10 = or i32 %9, 1, !dbg !1722
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1709, metadata !575) #10, !dbg !1723
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1724
  %12 = load i32, i32* %11, align 8, !dbg !1724, !tbaa !820
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1725
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1726
  %15 = load i8*, i8** %14, align 8, !dbg !1726, !tbaa !906
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1727
  %17 = load i8*, i8** %16, align 8, !dbg !1727, !tbaa !909
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !1728
  %19 = add i64 %18, 1, !dbg !1729
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1710, metadata !575) #10, !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1731, metadata !575) #10, !dbg !1736
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1738
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1711, metadata !575) #10, !dbg !1739
  %21 = load i32, i32* %11, align 8, !dbg !1740, !tbaa !820
  %22 = load i8*, i8** %14, align 8, !dbg !1741, !tbaa !906
  %23 = load i8*, i8** %16, align 8, !dbg !1742, !tbaa !909
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !1743
  store i32 %7, i32* %6, align 4, !dbg !1744, !tbaa !631
  ret i8* %20, !dbg !1745
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1700 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1699, metadata !575), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1704, metadata !575), !dbg !1747
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1705, metadata !575), !dbg !1748
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1706, metadata !575), !dbg !1749
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1750
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1750
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1707, metadata !575), !dbg !1751
  %7 = tail call i32* @__errno_location() #17, !dbg !1752
  %8 = load i32, i32* %7, align 4, !dbg !1752, !tbaa !631
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1708, metadata !575), !dbg !1753
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1754
  %10 = load i32, i32* %9, align 4, !dbg !1754, !tbaa !880
  %11 = icmp ne i64* %2, null, !dbg !1755
  %12 = xor i1 %11, true, !dbg !1755
  %13 = zext i1 %12 to i32, !dbg !1755
  %14 = or i32 %10, %13, !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1709, metadata !575), !dbg !1757
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1758
  %16 = load i32, i32* %15, align 8, !dbg !1758, !tbaa !820
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1759
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1760
  %19 = load i8*, i8** %18, align 8, !dbg !1760, !tbaa !906
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1761
  %21 = load i8*, i8** %20, align 8, !dbg !1761, !tbaa !909
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1762
  %23 = add i64 %22, 1, !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1710, metadata !575), !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1731, metadata !575) #10, !dbg !1765
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1767
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1711, metadata !575), !dbg !1768
  %25 = load i32, i32* %15, align 8, !dbg !1769, !tbaa !820
  %26 = load i8*, i8** %18, align 8, !dbg !1770, !tbaa !906
  %27 = load i8*, i8** %20, align 8, !dbg !1771, !tbaa !909
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1772
  store i32 %8, i32* %7, align 4, !dbg !1773, !tbaa !631
  br i1 %11, label %29, label %30, !dbg !1774

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1775, !tbaa !1777
  br label %30, !dbg !1779

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1780
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1781 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1785, !tbaa !582
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1783, metadata !575), !dbg !1786
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1784, metadata !575), !dbg !1787
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1784, metadata !575), !dbg !1787
  %2 = load i32, i32* @nslots, align 4, !dbg !1788, !tbaa !631
  %3 = icmp sgt i32 %2, 1, !dbg !1791
  br i1 %3, label %4, label %13, !dbg !1792

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1793

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1784, metadata !575), !dbg !1787
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1793
  %8 = load i8*, i8** %7, align 8, !dbg !1793, !tbaa !1794
  tail call void @free(i8* %8) #10, !dbg !1796
  %9 = add nuw i64 %6, 1, !dbg !1797
  %10 = load i32, i32* @nslots, align 4, !dbg !1788, !tbaa !631
  %11 = sext i32 %10 to i64, !dbg !1791
  %12 = icmp slt i64 %9, %11, !dbg !1791
  br i1 %12, label %5, label %13, !dbg !1792, !llvm.loop !1798

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1800
  %15 = load i8*, i8** %14, align 8, !dbg !1800, !tbaa !1794
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1802
  br i1 %16, label %18, label %17, !dbg !1803

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !1804
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1806, !tbaa !1807
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1808, !tbaa !1794
  br label %18, !dbg !1809

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1810
  br i1 %19, label %22, label %20, !dbg !1812

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1813
  tail call void @free(i8* %21) #10, !dbg !1815
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1816, !tbaa !582
  br label %22, !dbg !1817

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1818, !tbaa !631
  ret void, !dbg !1819
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1820 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1824, metadata !575), !dbg !1826
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1825, metadata !575), !dbg !1827
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1828
  ret i8* %3, !dbg !1829
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1830 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1834, metadata !575), !dbg !1848
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1835, metadata !575), !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1836, metadata !575), !dbg !1850
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1837, metadata !575), !dbg !1851
  %5 = tail call i32* @__errno_location() #17, !dbg !1852
  %6 = load i32, i32* %5, align 4, !dbg !1852, !tbaa !631
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1838, metadata !575), !dbg !1853
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1854, !tbaa !582
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1839, metadata !575), !dbg !1855
  %8 = icmp slt i32 %0, 0, !dbg !1856
  br i1 %8, label %9, label %10, !dbg !1858

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1859
  unreachable, !dbg !1859

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1860, !tbaa !631
  %12 = icmp sgt i32 %11, %0, !dbg !1861
  br i1 %12, label %34, label %13, !dbg !1862

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1863
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1864
  br i1 %15, label %16, label %17, !dbg !1866

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1867
  unreachable, !dbg !1867

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1868
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1868
  %20 = add nsw i32 %0, 1, !dbg !1869
  %21 = sext i32 %20 to i64, !dbg !1870
  %22 = shl nsw i64 %21, 4, !dbg !1871
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !1872
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1872
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1839, metadata !575), !dbg !1855
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1873, !tbaa !582
  br i1 %14, label %25, label %26, !dbg !1874

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1875, !tbaa.struct !1877
  br label %26, !dbg !1878

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1879, !tbaa !631
  %28 = sext i32 %27 to i64, !dbg !1880
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1880
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1881
  %31 = sub nsw i32 %20, %27, !dbg !1882
  %32 = sext i32 %31 to i64, !dbg !1883
  %33 = shl nsw i64 %32, 4, !dbg !1884
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1881
  store i32 %20, i32* @nslots, align 4, !dbg !1885, !tbaa !631
  br label %34, !dbg !1886

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1839, metadata !575), !dbg !1855
  %36 = sext i32 %0 to i64, !dbg !1887
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1888
  %38 = load i64, i64* %37, align 8, !dbg !1888, !tbaa !1807
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1843, metadata !575), !dbg !1889
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1890
  %40 = load i8*, i8** %39, align 8, !dbg !1890, !tbaa !1794
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1845, metadata !575), !dbg !1891
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1892
  %42 = load i32, i32* %41, align 4, !dbg !1892, !tbaa !880
  %43 = or i32 %42, 1, !dbg !1893
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1846, metadata !575), !dbg !1894
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1895
  %45 = load i32, i32* %44, align 8, !dbg !1895, !tbaa !820
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1896
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1897
  %48 = load i8*, i8** %47, align 8, !dbg !1897, !tbaa !906
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1898
  %50 = load i8*, i8** %49, align 8, !dbg !1898, !tbaa !909
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1847, metadata !575), !dbg !1900
  %52 = icmp ugt i64 %38, %51, !dbg !1901
  br i1 %52, label %63, label %53, !dbg !1903

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1904
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1843, metadata !575), !dbg !1889
  store i64 %54, i64* %37, align 8, !dbg !1906, !tbaa !1807
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1907
  br i1 %55, label %57, label %56, !dbg !1909

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !1910
  br label %57, !dbg !1910

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1731, metadata !575) #10, !dbg !1911
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !1913
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1845, metadata !575), !dbg !1891
  store i8* %58, i8** %39, align 8, !dbg !1914, !tbaa !1794
  %59 = load i32, i32* %44, align 8, !dbg !1915, !tbaa !820
  %60 = load i8*, i8** %47, align 8, !dbg !1916, !tbaa !906
  %61 = load i8*, i8** %49, align 8, !dbg !1917, !tbaa !909
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !1918
  br label %63, !dbg !1919

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1845, metadata !575), !dbg !1891
  store i32 %6, i32* %5, align 4, !dbg !1920, !tbaa !631
  ret i8* %64, !dbg !1921
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1922 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1926, metadata !575), !dbg !1929
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1927, metadata !575), !dbg !1930
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1928, metadata !575), !dbg !1931
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1932
  ret i8* %4, !dbg !1933
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !1934 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1938, metadata !575), !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1824, metadata !575) #10, !dbg !1940
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1825, metadata !575) #10, !dbg !1942
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1943
  ret i8* %2, !dbg !1944
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !1945 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1949, metadata !575), !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1950, metadata !575), !dbg !1952
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1926, metadata !575) #10, !dbg !1953
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1927, metadata !575) #10, !dbg !1955
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1928, metadata !575) #10, !dbg !1956
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1957
  ret i8* %3, !dbg !1958
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !1959 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1967, metadata !1973), !dbg !1974
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1963, metadata !575), !dbg !1976
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1964, metadata !575), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1965, metadata !575), !dbg !1978
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1979
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !1979
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1966, metadata !575), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1972, metadata !575) #10, !dbg !1981
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !1982
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !1982
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1967, metadata !575) #10, !dbg !1974
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1967, metadata !1983) #10, !dbg !1974
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !1974
  %8 = icmp eq i32 %1, 10, !dbg !1984
  br i1 %8, label %9, label %10, !dbg !1986

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !1987, !noalias !1988
  unreachable, !dbg !1987

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1967, metadata !1983) #10, !dbg !1974
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1991
  store i32 %1, i32* %11, align 8, !dbg !1991, !alias.scope !1988
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1991
  %13 = bitcast i32* %12 to i8*, !dbg !1991
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !1991
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !1992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1966, metadata !575), !dbg !1980
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !1993
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !1994
  ret i8* %14, !dbg !1995
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !1996 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !1967, metadata !1973), !dbg !2005
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2000, metadata !575), !dbg !2007
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2001, metadata !575), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2002, metadata !575), !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2003, metadata !575), !dbg !2010
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2011
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2011
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2004, metadata !575), !dbg !2012
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1972, metadata !575) #10, !dbg !2013
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2014
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2014
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1967, metadata !575) #10, !dbg !2005
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1967, metadata !1983) #10, !dbg !2005
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2005
  %9 = icmp eq i32 %1, 10, !dbg !2015
  br i1 %9, label %10, label %11, !dbg !2016

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2017, !noalias !2018
  unreachable, !dbg !2017

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1967, metadata !1983) #10, !dbg !2005
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2021
  store i32 %1, i32* %12, align 8, !dbg !2021, !alias.scope !2018
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2021
  %14 = bitcast i32* %13 to i8*, !dbg !2021
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2021
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2022
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2004, metadata !575), !dbg !2012
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2023
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2024
  ret i8* %15, !dbg !2025
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2026 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !1967, metadata !1973), !dbg !2032
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2030, metadata !575), !dbg !2035
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2031, metadata !575), !dbg !2036
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1963, metadata !575) #10, !dbg !2037
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1964, metadata !575) #10, !dbg !2038
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1965, metadata !575) #10, !dbg !2039
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2040
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2040
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1966, metadata !575) #10, !dbg !2041
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1972, metadata !575) #10, !dbg !2042
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2043
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2043
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1967, metadata !575) #10, !dbg !2032
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1967, metadata !1983) #10, !dbg !2032
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2032
  %7 = icmp eq i32 %0, 10, !dbg !2044
  br i1 %7, label %8, label %9, !dbg !2045

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2046, !noalias !2047
  unreachable, !dbg !2046

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1967, metadata !1983) #10, !dbg !2032
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2050
  store i32 %0, i32* %10, align 8, !dbg !2050, !alias.scope !2047
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2050
  %12 = bitcast i32* %11 to i8*, !dbg !2050
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2050
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2051
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1966, metadata !575) #10, !dbg !2041
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2052
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2053
  ret i8* %13, !dbg !2054
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2055 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1967, metadata !1973), !dbg !2062
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2059, metadata !575), !dbg !2065
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2060, metadata !575), !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2061, metadata !575), !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2000, metadata !575) #10, !dbg !2068
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2001, metadata !575) #10, !dbg !2069
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2002, metadata !575) #10, !dbg !2070
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2003, metadata !575) #10, !dbg !2071
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2072
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2004, metadata !575) #10, !dbg !2073
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1972, metadata !575) #10, !dbg !2074
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2075
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2075
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1967, metadata !575) #10, !dbg !2062
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1967, metadata !1983) #10, !dbg !2062
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2062
  %8 = icmp eq i32 %0, 10, !dbg !2076
  br i1 %8, label %9, label %10, !dbg !2077

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2078, !noalias !2079
  unreachable, !dbg !2078

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1967, metadata !1983) #10, !dbg !2062
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2082
  store i32 %0, i32* %11, align 8, !dbg !2082, !alias.scope !2079
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2082
  %13 = bitcast i32* %12 to i8*, !dbg !2082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2082
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2083
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2004, metadata !575) #10, !dbg !2073
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2084
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2085
  ret i8* %14, !dbg !2086
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2087 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2091, metadata !575), !dbg !2095
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2092, metadata !575), !dbg !2096
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2093, metadata !575), !dbg !2097
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2098
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2098
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2099, !tbaa.struct !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2094, metadata !575), !dbg !2101
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !839, metadata !575), !dbg !2102
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !840, metadata !575), !dbg !2104
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !841, metadata !575), !dbg !2105
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !842, metadata !575), !dbg !2106
  %6 = lshr i8 %2, 5, !dbg !2107
  %7 = zext i8 %6 to i64, !dbg !2107
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2108
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !843, metadata !575), !dbg !2109
  %9 = and i8 %2, 31, !dbg !2110
  %10 = zext i8 %9 to i32, !dbg !2111
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !845, metadata !575), !dbg !2112
  %11 = load i32, i32* %8, align 4, !dbg !2113, !tbaa !631
  %12 = lshr i32 %11, %10, !dbg !2114
  %13 = and i32 %12, 1, !dbg !2115
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !846, metadata !575), !dbg !2116
  %14 = xor i32 %13, 1, !dbg !2117
  %15 = shl i32 %14, %10, !dbg !2118
  %16 = xor i32 %15, %11, !dbg !2119
  store i32 %16, i32* %8, align 4, !dbg !2119, !tbaa !631
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2094, metadata !575), !dbg !2101
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2120
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2121
  ret i8* %17, !dbg !2122
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2123 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2127, metadata !575), !dbg !2129
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2128, metadata !575), !dbg !2130
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2091, metadata !575) #10, !dbg !2131
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2092, metadata !575) #10, !dbg !2133
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2093, metadata !575) #10, !dbg !2134
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2135
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2136, !tbaa.struct !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2094, metadata !575) #10, !dbg !2137
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !839, metadata !575) #10, !dbg !2138
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !840, metadata !575) #10, !dbg !2140
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !841, metadata !575) #10, !dbg !2141
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !842, metadata !575) #10, !dbg !2142
  %5 = lshr i8 %1, 5, !dbg !2143
  %6 = zext i8 %5 to i64, !dbg !2143
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2144
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !843, metadata !575) #10, !dbg !2145
  %8 = and i8 %1, 31, !dbg !2146
  %9 = zext i8 %8 to i32, !dbg !2147
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !845, metadata !575) #10, !dbg !2148
  %10 = load i32, i32* %7, align 4, !dbg !2149, !tbaa !631
  %11 = lshr i32 %10, %9, !dbg !2150
  %12 = and i32 %11, 1, !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !846, metadata !575) #10, !dbg !2152
  %13 = xor i32 %12, 1, !dbg !2153
  %14 = shl i32 %13, %9, !dbg !2154
  %15 = xor i32 %14, %10, !dbg !2155
  store i32 %15, i32* %7, align 4, !dbg !2155, !tbaa !631
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2094, metadata !575) #10, !dbg !2137
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2156
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2157
  ret i8* %16, !dbg !2158
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2159 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2161, metadata !575), !dbg !2162
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2127, metadata !575) #10, !dbg !2163
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2128, metadata !575) #10, !dbg !2165
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2091, metadata !575) #10, !dbg !2166
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2092, metadata !575) #10, !dbg !2168
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2093, metadata !575) #10, !dbg !2169
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2170
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2171, !tbaa.struct !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2094, metadata !575) #10, !dbg !2172
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !839, metadata !575) #10, !dbg !2173
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !840, metadata !575) #10, !dbg !2175
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !841, metadata !575) #10, !dbg !2176
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !842, metadata !575) #10, !dbg !2177
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2178
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !843, metadata !575) #10, !dbg !2179
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !845, metadata !575) #10, !dbg !2180
  %5 = load i32, i32* %4, align 4, !dbg !2181, !tbaa !631
  %6 = or i32 %5, 67108864, !dbg !2182
  store i32 %6, i32* %4, align 4, !dbg !2182, !tbaa !631
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2094, metadata !575) #10, !dbg !2172
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2183
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2184
  ret i8* %7, !dbg !2185
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2186 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2188, metadata !575), !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2189, metadata !575), !dbg !2191
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2091, metadata !575) #10, !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2092, metadata !575) #10, !dbg !2194
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2093, metadata !575) #10, !dbg !2195
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2196
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2197, !tbaa.struct !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2094, metadata !575) #10, !dbg !2198
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !839, metadata !575) #10, !dbg !2199
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !840, metadata !575) #10, !dbg !2201
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !841, metadata !575) #10, !dbg !2202
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !842, metadata !575) #10, !dbg !2203
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2204
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !843, metadata !575) #10, !dbg !2205
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !845, metadata !575) #10, !dbg !2206
  %6 = load i32, i32* %5, align 4, !dbg !2207, !tbaa !631
  %7 = or i32 %6, 67108864, !dbg !2208
  store i32 %7, i32* %5, align 4, !dbg !2208, !tbaa !631
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2094, metadata !575) #10, !dbg !2198
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2210
  ret i8* %8, !dbg !2211
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2212 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1967, metadata !1973), !dbg !2218
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2214, metadata !575), !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2215, metadata !575), !dbg !2221
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2216, metadata !575), !dbg !2222
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1972, metadata !575) #10, !dbg !2224
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2225
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2225
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1967, metadata !575) #10, !dbg !2218
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1967, metadata !1983) #10, !dbg !2218
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2218
  %9 = icmp eq i32 %1, 10, !dbg !2226
  br i1 %9, label %10, label %11, !dbg !2227

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2228, !noalias !2229
  unreachable, !dbg !2228

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1967, metadata !1983) #10, !dbg !2218
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2232
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2233
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2234
  store i32 %1, i32* %13, align 8, !dbg !2234
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2234
  %15 = bitcast i32* %14 to i8*, !dbg !2234
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2234
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2217, metadata !575), !dbg !2235
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !839, metadata !575), !dbg !2236
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !840, metadata !575), !dbg !2238
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !841, metadata !575), !dbg !2239
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !842, metadata !575), !dbg !2240
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2241
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !843, metadata !575), !dbg !2242
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !845, metadata !575), !dbg !2243
  %17 = load i32, i32* %16, align 4, !dbg !2244, !tbaa !631
  %18 = or i32 %17, 67108864, !dbg !2245
  store i32 %18, i32* %16, align 4, !dbg !2245, !tbaa !631
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2217, metadata !575), !dbg !2235
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2246
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2247
  ret i8* %19, !dbg !2248
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2249 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2253, metadata !575), !dbg !2257
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2254, metadata !575), !dbg !2258
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2255, metadata !575), !dbg !2259
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2256, metadata !575), !dbg !2260
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2261, metadata !575) #10, !dbg !2271
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2266, metadata !575) #10, !dbg !2273
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2267, metadata !575) #10, !dbg !2274
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2268, metadata !575) #10, !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2269, metadata !575) #10, !dbg !2276
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2277
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2277
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2278, !tbaa.struct !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2270, metadata !575) #10, !dbg !2279
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !888, metadata !575) #10, !dbg !2280
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !889, metadata !575) #10, !dbg !2282
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !890, metadata !575) #10, !dbg !2283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !888, metadata !575) #10, !dbg !2280
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !888, metadata !575) #10, !dbg !2280
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2284
  store i32 10, i32* %7, align 8, !dbg !2285, !tbaa !820
  %8 = icmp ne i8* %1, null, !dbg !2286
  %9 = icmp ne i8* %2, null, !dbg !2287
  %10 = and i1 %8, %9, !dbg !2288
  br i1 %10, label %12, label %11, !dbg !2288

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2289
  unreachable, !dbg !2289

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2290
  store i8* %1, i8** %13, align 8, !dbg !2291, !tbaa !906
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2292
  store i8* %2, i8** %14, align 8, !dbg !2293, !tbaa !909
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2270, metadata !575) #10, !dbg !2279
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2294
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2295
  ret i8* %15, !dbg !2296
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2262 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2261, metadata !575), !dbg !2297
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2266, metadata !575), !dbg !2298
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2267, metadata !575), !dbg !2299
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2268, metadata !575), !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2269, metadata !575), !dbg !2301
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2302
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2302
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2303, !tbaa.struct !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2270, metadata !575), !dbg !2304
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !888, metadata !575) #10, !dbg !2305
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !889, metadata !575) #10, !dbg !2307
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !890, metadata !575) #10, !dbg !2308
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !888, metadata !575) #10, !dbg !2305
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !888, metadata !575) #10, !dbg !2305
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2309
  store i32 10, i32* %8, align 8, !dbg !2310, !tbaa !820
  %9 = icmp ne i8* %1, null, !dbg !2311
  %10 = icmp ne i8* %2, null, !dbg !2312
  %11 = and i1 %9, %10, !dbg !2313
  br i1 %11, label %13, label %12, !dbg !2313

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2314
  unreachable, !dbg !2314

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2315
  store i8* %1, i8** %14, align 8, !dbg !2316, !tbaa !906
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2317
  store i8* %2, i8** %15, align 8, !dbg !2318, !tbaa !909
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2270, metadata !575), !dbg !2304
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2319
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2320
  ret i8* %16, !dbg !2321
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2322 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2326, metadata !575), !dbg !2329
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2327, metadata !575), !dbg !2330
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2328, metadata !575), !dbg !2331
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2253, metadata !575) #10, !dbg !2332
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2254, metadata !575) #10, !dbg !2334
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2255, metadata !575) #10, !dbg !2335
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2256, metadata !575) #10, !dbg !2336
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2261, metadata !575) #10, !dbg !2337
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2266, metadata !575) #10, !dbg !2339
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2267, metadata !575) #10, !dbg !2340
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2268, metadata !575) #10, !dbg !2341
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2269, metadata !575) #10, !dbg !2342
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2343
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2344, !tbaa.struct !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2270, metadata !575) #10, !dbg !2345
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !888, metadata !575) #10, !dbg !2346
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !889, metadata !575) #10, !dbg !2348
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !890, metadata !575) #10, !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !888, metadata !575) #10, !dbg !2346
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !888, metadata !575) #10, !dbg !2346
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2350
  store i32 10, i32* %6, align 8, !dbg !2351, !tbaa !820
  %7 = icmp ne i8* %0, null, !dbg !2352
  %8 = icmp ne i8* %1, null, !dbg !2353
  %9 = and i1 %7, %8, !dbg !2354
  br i1 %9, label %11, label %10, !dbg !2354

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2355
  unreachable, !dbg !2355

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2356
  store i8* %0, i8** %12, align 8, !dbg !2357, !tbaa !906
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2358
  store i8* %1, i8** %13, align 8, !dbg !2359, !tbaa !909
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2270, metadata !575) #10, !dbg !2345
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2360
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2361
  ret i8* %14, !dbg !2362
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2363 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2367, metadata !575), !dbg !2371
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2368, metadata !575), !dbg !2372
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2369, metadata !575), !dbg !2373
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2370, metadata !575), !dbg !2374
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2261, metadata !575) #10, !dbg !2375
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2266, metadata !575) #10, !dbg !2377
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2267, metadata !575) #10, !dbg !2378
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2268, metadata !575) #10, !dbg !2379
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2269, metadata !575) #10, !dbg !2380
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2381
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2381
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2382, !tbaa.struct !2100
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2270, metadata !575) #10, !dbg !2383
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !888, metadata !575) #10, !dbg !2384
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !889, metadata !575) #10, !dbg !2386
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !890, metadata !575) #10, !dbg !2387
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !888, metadata !575) #10, !dbg !2384
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !888, metadata !575) #10, !dbg !2384
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2388
  store i32 10, i32* %7, align 8, !dbg !2389, !tbaa !820
  %8 = icmp ne i8* %0, null, !dbg !2390
  %9 = icmp ne i8* %1, null, !dbg !2391
  %10 = and i1 %8, %9, !dbg !2392
  br i1 %10, label %12, label %11, !dbg !2392

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2393
  unreachable, !dbg !2393

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2394
  store i8* %0, i8** %13, align 8, !dbg !2395, !tbaa !906
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2396
  store i8* %1, i8** %14, align 8, !dbg !2397, !tbaa !909
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2270, metadata !575) #10, !dbg !2383
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2398
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2399
  ret i8* %15, !dbg !2400
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2401 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2405, metadata !575), !dbg !2408
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2406, metadata !575), !dbg !2409
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2407, metadata !575), !dbg !2410
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2411
  ret i8* %4, !dbg !2412
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2413 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2417, metadata !575), !dbg !2419
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2418, metadata !575), !dbg !2420
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2405, metadata !575) #10, !dbg !2421
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2406, metadata !575) #10, !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2407, metadata !575) #10, !dbg !2424
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2425
  ret i8* %3, !dbg !2426
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2427 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2431, metadata !575), !dbg !2433
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2432, metadata !575), !dbg !2434
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2405, metadata !575) #10, !dbg !2435
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2406, metadata !575) #10, !dbg !2437
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2407, metadata !575) #10, !dbg !2438
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2439
  ret i8* %3, !dbg !2440
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2441 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2445, metadata !575), !dbg !2446
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2431, metadata !575) #10, !dbg !2447
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2432, metadata !575) #10, !dbg !2449
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2405, metadata !575) #10, !dbg !2450
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2406, metadata !575) #10, !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2407, metadata !575) #10, !dbg !2453
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2454
  ret i8* %2, !dbg !2455
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2456 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2514, metadata !575), !dbg !2520
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2515, metadata !575), !dbg !2521
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2516, metadata !575), !dbg !2522
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2517, metadata !575), !dbg !2523
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2518, metadata !575), !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2519, metadata !575), !dbg !2525
  %7 = icmp eq i8* %1, null, !dbg !2526
  br i1 %7, label %10, label %8, !dbg !2528

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2529
  br label %12, !dbg !2529

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2530
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i32 5) #10, !dbg !2531
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2531
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.58, i64 0, i64 0), i32 5) #10, !dbg !2532
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2532
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
  ], !dbg !2533

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2534
  unreachable, !dbg !2534

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.59, i64 0, i64 0), i32 5) #10, !dbg !2536
  %20 = load i8*, i8** %4, align 8, !dbg !2536, !tbaa !582
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2536
  br label %146, !dbg !2537

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.60, i64 0, i64 0), i32 5) #10, !dbg !2538
  %24 = load i8*, i8** %4, align 8, !dbg !2538, !tbaa !582
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2538
  %26 = load i8*, i8** %25, align 8, !dbg !2538, !tbaa !582
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2538
  br label %146, !dbg !2539

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.61, i64 0, i64 0), i32 5) #10, !dbg !2540
  %30 = load i8*, i8** %4, align 8, !dbg !2540, !tbaa !582
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2540
  %32 = load i8*, i8** %31, align 8, !dbg !2540, !tbaa !582
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2540
  %34 = load i8*, i8** %33, align 8, !dbg !2540, !tbaa !582
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2540
  br label %146, !dbg !2541

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.62, i64 0, i64 0), i32 5) #10, !dbg !2542
  %38 = load i8*, i8** %4, align 8, !dbg !2542, !tbaa !582
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2542
  %40 = load i8*, i8** %39, align 8, !dbg !2542, !tbaa !582
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2542
  %42 = load i8*, i8** %41, align 8, !dbg !2542, !tbaa !582
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2542
  %44 = load i8*, i8** %43, align 8, !dbg !2542, !tbaa !582
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2542
  br label %146, !dbg !2543

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.63, i64 0, i64 0), i32 5) #10, !dbg !2544
  %48 = load i8*, i8** %4, align 8, !dbg !2544, !tbaa !582
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2544
  %50 = load i8*, i8** %49, align 8, !dbg !2544, !tbaa !582
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2544
  %52 = load i8*, i8** %51, align 8, !dbg !2544, !tbaa !582
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2544
  %54 = load i8*, i8** %53, align 8, !dbg !2544, !tbaa !582
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2544
  %56 = load i8*, i8** %55, align 8, !dbg !2544, !tbaa !582
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2544
  br label %146, !dbg !2545

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.64, i64 0, i64 0), i32 5) #10, !dbg !2546
  %60 = load i8*, i8** %4, align 8, !dbg !2546, !tbaa !582
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2546
  %62 = load i8*, i8** %61, align 8, !dbg !2546, !tbaa !582
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2546
  %64 = load i8*, i8** %63, align 8, !dbg !2546, !tbaa !582
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2546
  %66 = load i8*, i8** %65, align 8, !dbg !2546, !tbaa !582
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2546
  %68 = load i8*, i8** %67, align 8, !dbg !2546, !tbaa !582
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2546
  %70 = load i8*, i8** %69, align 8, !dbg !2546, !tbaa !582
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2546
  br label %146, !dbg !2547

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.65, i64 0, i64 0), i32 5) #10, !dbg !2548
  %74 = load i8*, i8** %4, align 8, !dbg !2548, !tbaa !582
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2548
  %76 = load i8*, i8** %75, align 8, !dbg !2548, !tbaa !582
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2548
  %78 = load i8*, i8** %77, align 8, !dbg !2548, !tbaa !582
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2548
  %80 = load i8*, i8** %79, align 8, !dbg !2548, !tbaa !582
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2548
  %82 = load i8*, i8** %81, align 8, !dbg !2548, !tbaa !582
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2548
  %84 = load i8*, i8** %83, align 8, !dbg !2548, !tbaa !582
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2548
  %86 = load i8*, i8** %85, align 8, !dbg !2548, !tbaa !582
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2548
  br label %146, !dbg !2549

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.66, i64 0, i64 0), i32 5) #10, !dbg !2550
  %90 = load i8*, i8** %4, align 8, !dbg !2550, !tbaa !582
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2550
  %92 = load i8*, i8** %91, align 8, !dbg !2550, !tbaa !582
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2550
  %94 = load i8*, i8** %93, align 8, !dbg !2550, !tbaa !582
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2550
  %96 = load i8*, i8** %95, align 8, !dbg !2550, !tbaa !582
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2550
  %98 = load i8*, i8** %97, align 8, !dbg !2550, !tbaa !582
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2550
  %100 = load i8*, i8** %99, align 8, !dbg !2550, !tbaa !582
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2550
  %102 = load i8*, i8** %101, align 8, !dbg !2550, !tbaa !582
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2550
  %104 = load i8*, i8** %103, align 8, !dbg !2550, !tbaa !582
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2550
  br label %146, !dbg !2551

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.67, i64 0, i64 0), i32 5) #10, !dbg !2552
  %108 = load i8*, i8** %4, align 8, !dbg !2552, !tbaa !582
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2552
  %110 = load i8*, i8** %109, align 8, !dbg !2552, !tbaa !582
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2552
  %112 = load i8*, i8** %111, align 8, !dbg !2552, !tbaa !582
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2552
  %114 = load i8*, i8** %113, align 8, !dbg !2552, !tbaa !582
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2552
  %116 = load i8*, i8** %115, align 8, !dbg !2552, !tbaa !582
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2552
  %118 = load i8*, i8** %117, align 8, !dbg !2552, !tbaa !582
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2552
  %120 = load i8*, i8** %119, align 8, !dbg !2552, !tbaa !582
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2552
  %122 = load i8*, i8** %121, align 8, !dbg !2552, !tbaa !582
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2552
  %124 = load i8*, i8** %123, align 8, !dbg !2552, !tbaa !582
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2552
  br label %146, !dbg !2553

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !2554
  %128 = load i8*, i8** %4, align 8, !dbg !2554, !tbaa !582
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2554
  %130 = load i8*, i8** %129, align 8, !dbg !2554, !tbaa !582
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2554
  %132 = load i8*, i8** %131, align 8, !dbg !2554, !tbaa !582
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2554
  %134 = load i8*, i8** %133, align 8, !dbg !2554, !tbaa !582
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2554
  %136 = load i8*, i8** %135, align 8, !dbg !2554, !tbaa !582
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2554
  %138 = load i8*, i8** %137, align 8, !dbg !2554, !tbaa !582
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2554
  %140 = load i8*, i8** %139, align 8, !dbg !2554, !tbaa !582
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2554
  %142 = load i8*, i8** %141, align 8, !dbg !2554, !tbaa !582
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2554
  %144 = load i8*, i8** %143, align 8, !dbg !2554, !tbaa !582
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2554
  br label %146, !dbg !2555

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2556
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2557 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2561, metadata !575), !dbg !2567
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2562, metadata !575), !dbg !2568
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2563, metadata !575), !dbg !2569
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2564, metadata !575), !dbg !2570
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2565, metadata !575), !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2566, metadata !575), !dbg !2572
  br label %6, !dbg !2573

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2566, metadata !575), !dbg !2572
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2575
  %9 = load i8*, i8** %8, align 8, !dbg !2575, !tbaa !582
  %10 = icmp eq i8* %9, null, !dbg !2577
  %11 = add i64 %7, 1, !dbg !2578
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2566, metadata !575), !dbg !2572
  br i1 %10, label %12, label %6, !dbg !2577, !llvm.loop !2579

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2581
  ret void, !dbg !2582
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2583 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2594, metadata !575), !dbg !2602
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2595, metadata !575), !dbg !2603
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2596, metadata !575), !dbg !2604
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2597, metadata !575), !dbg !2605
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2598, metadata !575), !dbg !2606
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2607
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2607
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2600, metadata !575), !dbg !2608
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  %11 = load i32, i32* %8, align 8, !dbg !2610
  %12 = icmp ult i32 %11, 41, !dbg !2610
  br i1 %12, label %13, label %18, !dbg !2610

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2610
  %15 = sext i32 %11 to i64, !dbg !2610
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2610
  %17 = add i32 %11, 8, !dbg !2610
  store i32 %17, i32* %8, align 8, !dbg !2610
  br label %21, !dbg !2610

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2610
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2610
  store i8* %20, i8** %10, align 8, !dbg !2610
  br label %21, !dbg !2610

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2610
  %25 = load i8*, i8** %24, align 8, !dbg !2610
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2613
  store i8* %25, i8** %26, align 16, !dbg !2614, !tbaa !582
  %27 = icmp eq i8* %25, null, !dbg !2615
  br i1 %27, label %30, label %28, !dbg !2616

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  %29 = icmp ult i32 %22, 41, !dbg !2610
  br i1 %29, label %35, label %32, !dbg !2610

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2617
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2618
  ret void, !dbg !2618

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2610
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2610
  store i8* %34, i8** %10, align 8, !dbg !2610
  br label %40, !dbg !2610

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2610
  %37 = sext i32 %22 to i64, !dbg !2610
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2610
  %39 = add i32 %22, 8, !dbg !2610
  store i32 %39, i32* %8, align 8, !dbg !2610
  br label %40, !dbg !2610

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2610
  %44 = load i8*, i8** %43, align 8, !dbg !2610
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2613
  store i8* %44, i8** %45, align 8, !dbg !2614, !tbaa !582
  %46 = icmp eq i8* %44, null, !dbg !2615
  br i1 %46, label %30, label %47, !dbg !2616

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  %48 = icmp ult i32 %41, 41, !dbg !2610
  br i1 %48, label %52, label %49, !dbg !2610

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2610
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2610
  store i8* %51, i8** %10, align 8, !dbg !2610
  br label %57, !dbg !2610

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2610
  %54 = sext i32 %41 to i64, !dbg !2610
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2610
  %56 = add i32 %41, 8, !dbg !2610
  store i32 %56, i32* %8, align 8, !dbg !2610
  br label %57, !dbg !2610

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2610
  %61 = load i8*, i8** %60, align 8, !dbg !2610
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2613
  store i8* %61, i8** %62, align 16, !dbg !2614, !tbaa !582
  %63 = icmp eq i8* %61, null, !dbg !2615
  br i1 %63, label %30, label %64, !dbg !2616

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  %65 = icmp ult i32 %58, 41, !dbg !2610
  br i1 %65, label %69, label %66, !dbg !2610

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2610
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2610
  store i8* %68, i8** %10, align 8, !dbg !2610
  br label %74, !dbg !2610

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2610
  %71 = sext i32 %58 to i64, !dbg !2610
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2610
  %73 = add i32 %58, 8, !dbg !2610
  store i32 %73, i32* %8, align 8, !dbg !2610
  br label %74, !dbg !2610

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2610
  %78 = load i8*, i8** %77, align 8, !dbg !2610
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2613
  store i8* %78, i8** %79, align 8, !dbg !2614, !tbaa !582
  %80 = icmp eq i8* %78, null, !dbg !2615
  br i1 %80, label %30, label %81, !dbg !2616

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  %82 = icmp ult i32 %75, 41, !dbg !2610
  br i1 %82, label %86, label %83, !dbg !2610

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2610
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2610
  store i8* %85, i8** %10, align 8, !dbg !2610
  br label %91, !dbg !2610

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2610
  %88 = sext i32 %75 to i64, !dbg !2610
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2610
  %90 = add i32 %75, 8, !dbg !2610
  store i32 %90, i32* %8, align 8, !dbg !2610
  br label %91, !dbg !2610

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2610
  %95 = load i8*, i8** %94, align 8, !dbg !2610
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2613
  store i8* %95, i8** %96, align 16, !dbg !2614, !tbaa !582
  %97 = icmp eq i8* %95, null, !dbg !2615
  br i1 %97, label %30, label %98, !dbg !2616

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  %99 = icmp ult i32 %92, 41, !dbg !2610
  br i1 %99, label %103, label %100, !dbg !2610

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2610
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2610
  store i8* %102, i8** %10, align 8, !dbg !2610
  br label %108, !dbg !2610

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2610
  %105 = sext i32 %92 to i64, !dbg !2610
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2610
  %107 = add i32 %92, 8, !dbg !2610
  store i32 %107, i32* %8, align 8, !dbg !2610
  br label %108, !dbg !2610

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2610
  %111 = load i8*, i8** %110, align 8, !dbg !2610
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2613
  store i8* %111, i8** %112, align 8, !dbg !2614, !tbaa !582
  %113 = icmp eq i8* %111, null, !dbg !2615
  br i1 %113, label %30, label %114, !dbg !2616

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  %115 = load i8*, i8** %10, align 8, !dbg !2610
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2610
  store i8* %116, i8** %10, align 8, !dbg !2610
  %117 = bitcast i8* %115 to i8**, !dbg !2610
  %118 = load i8*, i8** %117, align 8, !dbg !2610
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2613
  store i8* %118, i8** %119, align 16, !dbg !2614, !tbaa !582
  %120 = icmp eq i8* %118, null, !dbg !2615
  br i1 %120, label %30, label %121, !dbg !2616

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  %122 = load i8*, i8** %10, align 8, !dbg !2610
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2610
  store i8* %123, i8** %10, align 8, !dbg !2610
  %124 = bitcast i8* %122 to i8**, !dbg !2610
  %125 = load i8*, i8** %124, align 8, !dbg !2610
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2613
  store i8* %125, i8** %126, align 8, !dbg !2614, !tbaa !582
  %127 = icmp eq i8* %125, null, !dbg !2615
  br i1 %127, label %30, label %128, !dbg !2616

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  %129 = load i8*, i8** %10, align 8, !dbg !2610
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2610
  store i8* %130, i8** %10, align 8, !dbg !2610
  %131 = bitcast i8* %129 to i8**, !dbg !2610
  %132 = load i8*, i8** %131, align 8, !dbg !2610
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2613
  store i8* %132, i8** %133, align 16, !dbg !2614, !tbaa !582
  %134 = icmp eq i8* %132, null, !dbg !2615
  br i1 %134, label %30, label %135, !dbg !2616

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2599, metadata !575), !dbg !2609
  %136 = load i8*, i8** %10, align 8, !dbg !2610
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2610
  store i8* %137, i8** %10, align 8, !dbg !2610
  %138 = bitcast i8* %136 to i8**, !dbg !2610
  %139 = load i8*, i8** %138, align 8, !dbg !2610
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2613
  store i8* %139, i8** %140, align 8, !dbg !2614, !tbaa !582
  %141 = icmp eq i8* %139, null, !dbg !2615
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2599, metadata !575), !dbg !2609
  %142 = select i1 %141, i64 9, i64 10, !dbg !2616
  br label %30, !dbg !2616
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2619 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2623, metadata !575), !dbg !2632
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2624, metadata !575), !dbg !2633
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2625, metadata !575), !dbg !2634
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2626, metadata !575), !dbg !2635
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2636
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2636
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2627, metadata !575), !dbg !2637
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2638
  call void @llvm.va_start(i8* nonnull %6), !dbg !2638
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2639
  call void @llvm.va_end(i8* nonnull %6), !dbg !2640
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2641
  ret void, !dbg !2641
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2642 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.70, i64 0, i64 0), i32 5) #10, !dbg !2643
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.71, i64 0, i64 0)) #10, !dbg !2643
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !2644
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.73, i64 0, i64 0)) #10, !dbg !2644
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !2645
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2645, !tbaa !582
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2645
  ret void, !dbg !2646
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2647 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2651, metadata !575), !dbg !2653
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2652, metadata !575), !dbg !2654
  %3 = udiv i64 9223372036854775807, %1, !dbg !2655
  %4 = icmp ult i64 %3, %0, !dbg !2655
  br i1 %4, label %5, label %6, !dbg !2657

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2658
  unreachable, !dbg !2658

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2659
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2660, metadata !575) #10, !dbg !2667
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2669
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2666, metadata !575) #10, !dbg !2670
  %9 = icmp eq i8* %8, null, !dbg !2671
  %10 = icmp ne i64 %7, 0, !dbg !2673
  %11 = and i1 %10, %9, !dbg !2674
  br i1 %11, label %12, label %13, !dbg !2674

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2675
  unreachable, !dbg !2675

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2676
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2661 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2660, metadata !575), !dbg !2677
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2678
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2666, metadata !575), !dbg !2679
  %3 = icmp eq i8* %2, null, !dbg !2680
  %4 = icmp ne i64 %0, 0, !dbg !2681
  %5 = and i1 %4, %3, !dbg !2682
  br i1 %5, label %6, label %7, !dbg !2682

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2683
  unreachable, !dbg !2683

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2684
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2685 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2689, metadata !575), !dbg !2692
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2690, metadata !575), !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2691, metadata !575), !dbg !2694
  %4 = udiv i64 9223372036854775807, %2, !dbg !2695
  %5 = icmp ult i64 %4, %1, !dbg !2695
  br i1 %5, label %6, label %7, !dbg !2697

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2698
  unreachable, !dbg !2698

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2699
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2700, metadata !575) #10, !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2705, metadata !575) #10, !dbg !2708
  %9 = icmp eq i64 %8, 0, !dbg !2709
  %10 = icmp ne i8* %0, null, !dbg !2711
  %11 = and i1 %10, %9, !dbg !2712
  br i1 %11, label %12, label %13, !dbg !2712

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2713
  br label %19, !dbg !2715

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2716
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2700, metadata !575) #10, !dbg !2706
  %15 = icmp eq i8* %14, null, !dbg !2717
  %16 = icmp ne i64 %8, 0, !dbg !2719
  %17 = and i1 %16, %15, !dbg !2720
  br i1 %17, label %18, label %19, !dbg !2720

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2721
  unreachable, !dbg !2721

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2722
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2701 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2700, metadata !575), !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2705, metadata !575), !dbg !2724
  %3 = icmp eq i64 %1, 0, !dbg !2725
  %4 = icmp ne i8* %0, null, !dbg !2726
  %5 = and i1 %4, %3, !dbg !2727
  br i1 %5, label %6, label %7, !dbg !2727

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2728
  br label %13, !dbg !2729

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2730
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2700, metadata !575), !dbg !2723
  %9 = icmp eq i8* %8, null, !dbg !2731
  %10 = icmp ne i64 %1, 0, !dbg !2732
  %11 = and i1 %10, %9, !dbg !2733
  br i1 %11, label %12, label %13, !dbg !2733

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2734
  unreachable, !dbg !2734

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2735
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !535 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !540, metadata !575), !dbg !2736
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !541, metadata !575), !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !542, metadata !575), !dbg !2738
  %4 = load i64, i64* %1, align 8, !dbg !2739, !tbaa !1777
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !543, metadata !575), !dbg !2740
  %5 = icmp eq i8* %0, null, !dbg !2741
  br i1 %5, label %6, label %13, !dbg !2743

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2744
  br i1 %7, label %8, label %17, !dbg !2747

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !543, metadata !575), !dbg !2740
  %10 = icmp ugt i64 %2, 128, !dbg !2750
  %11 = zext i1 %10 to i64, !dbg !2750
  %12 = add nuw nsw i64 %9, %11, !dbg !2751
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !543, metadata !575), !dbg !2740
  br label %17, !dbg !2752

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2753
  %15 = icmp ugt i64 %14, %4, !dbg !2756
  br i1 %15, label %20, label %16, !dbg !2757

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2758
  unreachable, !dbg !2758

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2740
  store i64 %18, i64* %1, align 8, !dbg !2759, !tbaa !1777
  %19 = mul i64 %18, %2, !dbg !2760
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2700, metadata !575) #10, !dbg !2761
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2705, metadata !575) #10, !dbg !2763
  br label %27, !dbg !2764

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2765
  %22 = add i64 %4, 1, !dbg !2766
  %23 = add i64 %22, %21, !dbg !2767
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2740
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2740
  store i64 %23, i64* %1, align 8, !dbg !2759, !tbaa !1777
  %24 = mul i64 %23, %2, !dbg !2760
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2700, metadata !575) #10, !dbg !2761
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2705, metadata !575) #10, !dbg !2763
  %25 = icmp eq i64 %24, 0, !dbg !2768
  br i1 %25, label %26, label %27, !dbg !2764

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !2769
  br label %34, !dbg !2770

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !2771
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2700, metadata !575) #10, !dbg !2761
  %30 = icmp eq i8* %29, null, !dbg !2772
  %31 = icmp ne i64 %28, 0, !dbg !2773
  %32 = and i1 %31, %30, !dbg !2774
  br i1 %32, label %33, label %34, !dbg !2774

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2775
  unreachable, !dbg !2775

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2776
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2777 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2779, metadata !575), !dbg !2780
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2660, metadata !575) #10, !dbg !2781
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2783
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2666, metadata !575) #10, !dbg !2784
  %3 = icmp eq i8* %2, null, !dbg !2785
  %4 = icmp ne i64 %0, 0, !dbg !2786
  %5 = and i1 %4, %3, !dbg !2787
  br i1 %5, label %6, label %7, !dbg !2787

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2788
  unreachable, !dbg !2788

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2789
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2790 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2794, metadata !575), !dbg !2796
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2795, metadata !575), !dbg !2797
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !540, metadata !575) #10, !dbg !2798
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !541, metadata !575) #10, !dbg !2800
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !542, metadata !575) #10, !dbg !2801
  %3 = load i64, i64* %1, align 8, !dbg !2802, !tbaa !1777
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !543, metadata !575) #10, !dbg !2803
  %4 = icmp eq i8* %0, null, !dbg !2804
  br i1 %4, label %5, label %8, !dbg !2805

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2806
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !543, metadata !575) #10, !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !543, metadata !575) #10, !dbg !2803
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2807
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #10, !dbg !2803
  store i64 %7, i64* %1, align 8, !dbg !2808, !tbaa !1777
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2700, metadata !575) #10, !dbg !2809
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2705, metadata !575) #10, !dbg !2811
  br label %17, !dbg !2812

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2813
  br i1 %9, label %11, label %10, !dbg !2814

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2815
  unreachable, !dbg !2815

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2816
  %13 = add i64 %3, 1, !dbg !2817
  %14 = add i64 %13, %12, !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #10, !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #10, !dbg !2803
  store i64 %14, i64* %1, align 8, !dbg !2808, !tbaa !1777
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2700, metadata !575) #10, !dbg !2809
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2705, metadata !575) #10, !dbg !2811
  %15 = icmp eq i64 %14, 0, !dbg !2819
  br i1 %15, label %16, label %17, !dbg !2812

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !2820
  br label %24, !dbg !2821

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !2822
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2700, metadata !575) #10, !dbg !2809
  %20 = icmp eq i8* %19, null, !dbg !2823
  %21 = icmp ne i64 %18, 0, !dbg !2824
  %22 = and i1 %21, %20, !dbg !2825
  br i1 %22, label %23, label %24, !dbg !2825

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2826
  unreachable, !dbg !2826

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2827
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2828 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2830, metadata !575), !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2660, metadata !575) #10, !dbg !2832
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2834
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2666, metadata !575) #10, !dbg !2835
  %3 = icmp eq i8* %2, null, !dbg !2836
  %4 = icmp ne i64 %0, 0, !dbg !2837
  %5 = and i1 %4, %3, !dbg !2838
  br i1 %5, label %6, label %7, !dbg !2838

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2839
  unreachable, !dbg !2839

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2840
  ret i8* %2, !dbg !2841
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2842 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2844, metadata !575), !dbg !2847
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2845, metadata !575), !dbg !2848
  %3 = udiv i64 9223372036854775807, %1, !dbg !2849
  %4 = icmp ult i64 %3, %0, !dbg !2849
  br i1 %4, label %8, label %5, !dbg !2851

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !2852
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2846, metadata !575), !dbg !2853
  %7 = icmp eq i8* %6, null, !dbg !2854
  br i1 %7, label %8, label %9, !dbg !2855

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2856
  unreachable, !dbg !2856

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2857
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2858 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2864, metadata !575), !dbg !2866
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2865, metadata !575), !dbg !2867
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2660, metadata !575) #10, !dbg !2868
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !2870
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2666, metadata !575) #10, !dbg !2871
  %4 = icmp eq i8* %3, null, !dbg !2872
  %5 = icmp ne i64 %1, 0, !dbg !2873
  %6 = and i1 %5, %4, !dbg !2874
  br i1 %6, label %7, label %8, !dbg !2874

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2875
  unreachable, !dbg !2875

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2876
  ret i8* %3, !dbg !2877
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2878 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2880, metadata !575), !dbg !2881
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2882
  %3 = add i64 %2, 1, !dbg !2883
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2864, metadata !575) #10, !dbg !2884
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2865, metadata !575) #10, !dbg !2886
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2660, metadata !575) #10, !dbg !2887
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !2889
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2666, metadata !575) #10, !dbg !2890
  %5 = icmp eq i8* %4, null, !dbg !2891
  %6 = icmp ne i64 %3, 0, !dbg !2892
  %7 = and i1 %6, %5, !dbg !2893
  br i1 %7, label %8, label %9, !dbg !2893

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2894
  unreachable, !dbg !2894

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !2895
  ret i8* %4, !dbg !2896
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2897 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2899, !tbaa !631
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.84, i64 0, i64 0), i32 5) #10, !dbg !2900
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i8* %2) #10, !dbg !2901
  tail call void @abort() #15, !dbg !2902
  unreachable, !dbg !2902
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2903 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2906, metadata !575), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2907, metadata !575), !dbg !2913
  %3 = icmp eq i64 %0, 0, !dbg !2914
  %4 = icmp eq i64 %1, 0, !dbg !2915
  %5 = or i1 %3, %4, !dbg !2916
  br i1 %5, label %12, label %6, !dbg !2916

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2909, metadata !575), !dbg !2918
  %8 = udiv i64 %7, %1, !dbg !2919
  %9 = icmp eq i64 %8, %0, !dbg !2921
  br i1 %9, label %12, label %10, !dbg !2922

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2923
  store i32 12, i32* %11, align 4, !dbg !2925, !tbaa !631
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2906, metadata !575), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2907, metadata !575), !dbg !2913
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !2926
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2908, metadata !575), !dbg !2927
  br label %16, !dbg !2928

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !2929
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !2930 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !2947, metadata !575), !dbg !2956
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2948, metadata !575), !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2949, metadata !575), !dbg !2958
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !2950, metadata !575), !dbg !2959
  %6 = bitcast i32* %5 to i8*, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !2960
  %7 = icmp eq i32* %0, null, !dbg !2961
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2947, metadata !575), !dbg !2956
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2963
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2947, metadata !575), !dbg !2956
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2951, metadata !575), !dbg !2965
  %10 = icmp ugt i64 %9, -3, !dbg !2966
  %11 = icmp ne i64 %2, 0, !dbg !2967
  %12 = and i1 %11, %10, !dbg !2968
  br i1 %12, label %13, label %18, !dbg !2968

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !2969
  br i1 %14, label %18, label %15, !dbg !2970

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2971, !tbaa !1041
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !2953, metadata !575), !dbg !2972
  %17 = zext i8 %16 to i32, !dbg !2973
  store i32 %17, i32* %8, align 4, !dbg !2974, !tbaa !631
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !2975
  ret i64 %19, !dbg !2975
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !2976 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3021, metadata !575), !dbg !3026
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3027
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3028, metadata !575), !dbg !3032
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3034
  %4 = load i32, i32* %3, align 8, !dbg !3034, !tbaa !3035
  %5 = and i32 %4, 32, !dbg !3034
  %6 = icmp eq i32 %5, 0, !dbg !3037
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3038
  %8 = icmp ne i32 %7, 0, !dbg !3039
  br i1 %6, label %9, label %19, !dbg !3040

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3042
  %11 = xor i1 %8, true, !dbg !3043
  %12 = or i1 %10, %11, !dbg !3043
  %13 = sext i1 %8 to i32, !dbg !3043
  br i1 %12, label %22, label %14, !dbg !3043

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3044
  %16 = load i32, i32* %15, align 4, !dbg !3044, !tbaa !631
  %17 = icmp ne i32 %16, 9, !dbg !3045
  %18 = sext i1 %17 to i32, !dbg !3046
  br label %22, !dbg !3046

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3047

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3049
  store i32 0, i32* %21, align 4, !dbg !3051, !tbaa !631
  br label %22, !dbg !3049

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3052
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3053 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3058, metadata !575), !dbg !3061
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3059, metadata !575), !dbg !3062
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3063
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3060, metadata !575), !dbg !3064
  %3 = icmp eq i8* %2, null, !dbg !3065
  br i1 %3, label %11, label %4, !dbg !3067

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i64 0, i64 0)) #14, !dbg !3068
  %6 = icmp eq i32 %5, 0, !dbg !3073
  br i1 %6, label %10, label %7, !dbg !3074

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.95, i64 0, i64 0)) #14, !dbg !3075
  %9 = icmp eq i32 %8, 0, !dbg !3076
  br i1 %9, label %10, label %11, !dbg !3077

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3059, metadata !575), !dbg !3062
  br label %11, !dbg !3078

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3079
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3080 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3086, metadata !575), !dbg !3160
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3153, metadata !575), !dbg !3163
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3164
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3084, metadata !575), !dbg !3165
  %4 = icmp eq i8* %3, null, !dbg !3166
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), i8* %3, !dbg !3168
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3084, metadata !575), !dbg !3165
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3169, !tbaa !582
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3100, metadata !575) #10, !dbg !3170
  %7 = icmp eq i8* %6, null, !dbg !3171
  br i1 %7, label %8, label %123, !dbg !3172

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.99, i64 0, i64 0)) #10, !dbg !3173
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3101, metadata !575) #10, !dbg !3174
  %10 = icmp eq i8* %9, null, !dbg !3175
  br i1 %10, label %14, label %11, !dbg !3177

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3178, !tbaa !1041
  %13 = icmp eq i8 %12, 0, !dbg !3179
  br i1 %13, label %14, label %15, !dbg !3180

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3181

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.100, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3101, metadata !575) #10, !dbg !3174
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3104, metadata !575) #10, !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3106, metadata !575) #10, !dbg !3184
  %18 = icmp eq i64 %17, 0, !dbg !3185
  br i1 %18, label %24, label %19, !dbg !3186

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3187
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3187
  %22 = load i8, i8* %21, align 1, !dbg !3187, !tbaa !1041
  %23 = icmp ne i8 %22, 47, !dbg !3187
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3188
  %27 = add i64 %17, 14, !dbg !3189
  %28 = add i64 %27, %26, !dbg !3190
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3191
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3103, metadata !575) #10, !dbg !3192
  %30 = icmp eq i8* %29, null, !dbg !3193
  br i1 %30, label %121, label %31, !dbg !3193

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3194
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3197

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3198, !tbaa !1041
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3200
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.101, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3201
  br label %37, !dbg !3202

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3200
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.101, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3201
  br label %37, !dbg !3202

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3203
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3108, metadata !575) #10, !dbg !3204
  %39 = icmp slt i32 %38, 0, !dbg !3205
  br i1 %39, label %119, label %40, !dbg !3206

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i64 0, i64 0)) #10, !dbg !3207
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3109, metadata !575) #10, !dbg !3208
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3209
  br i1 %42, label %43, label %45, !dbg !3210

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3211
  br label %119, !dbg !3213

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3150, metadata !575) #10, !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3151, metadata !575) #10, !dbg !3215
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3216

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3217

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3150, metadata !575) #10, !dbg !3214
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3151, metadata !575) #10, !dbg !3215
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3217
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3218
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3219, metadata !575) #10, !dbg !3224
  %54 = load i8*, i8** %48, align 8, !dbg !3226, !tbaa !3227
  %55 = load i8*, i8** %49, align 8, !dbg !3226, !tbaa !3228
  %56 = icmp ult i8* %54, %55, !dbg !3226
  br i1 %56, label %59, label %57, !dbg !3226, !prof !3229

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3226
  br label %63, !dbg !3226

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3226
  store i8* %60, i8** %48, align 8, !dbg !3226, !tbaa !3227
  %61 = load i8, i8* %54, align 1, !dbg !3226, !tbaa !1041
  %62 = zext i8 %61 to i32, !dbg !3226
  br label %63, !dbg !3226

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3226
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3152, metadata !575) #10, !dbg !3230
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3231, !llvm.loop !3232

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3237

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3219, metadata !575) #10, !dbg !3239
  %67 = load i8*, i8** %48, align 8, !dbg !3237, !tbaa !3227
  %68 = load i8*, i8** %49, align 8, !dbg !3237, !tbaa !3228
  %69 = icmp ult i8* %67, %68, !dbg !3237
  br i1 %69, label %72, label %70, !dbg !3237, !prof !3229

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3237
  br label %76, !dbg !3237

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3237
  store i8* %73, i8** %48, align 8, !dbg !3237, !tbaa !3227
  %74 = load i8, i8* %67, align 1, !dbg !3237, !tbaa !1041
  %75 = zext i8 %74 to i32, !dbg !3237
  br label %76, !dbg !3237

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3237
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3152, metadata !575) #10, !dbg !3230
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3240, !llvm.loop !3241

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3244
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.103, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3245
  %81 = icmp slt i32 %80, 2, !dbg !3247
  br i1 %81, label %112, label %82, !dbg !3248

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3249
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3157, metadata !575) #10, !dbg !3250
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3158, metadata !575) #10, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3159, metadata !575) #10, !dbg !3253
  %85 = icmp eq i64 %51, 0, !dbg !3254
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3256

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3151, metadata !575) #10, !dbg !3215
  %90 = add i64 %87, 2, !dbg !3257
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3259
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3150, metadata !575) #10, !dbg !3214
  br label %96, !dbg !3260

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3261
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3151, metadata !575) #10, !dbg !3215
  %94 = add i64 %93, 1, !dbg !3263
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3150, metadata !575) #10, !dbg !3214
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3150, metadata !575) #10, !dbg !3214
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3151, metadata !575) #10, !dbg !3215
  %99 = icmp eq i8* %98, null, !dbg !3265
  br i1 %99, label %100, label %102, !dbg !3267

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3151, metadata !575) #10, !dbg !3215
  call void @free(i8* %52) #10, !dbg !3268
  br label %112, !dbg !3270

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3271
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3272
  %104 = xor i64 %84, -1, !dbg !3273
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3273
  %106 = xor i64 %83, -1, !dbg !3274
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3274
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3275, metadata !575) #10, !dbg !3284
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3283, metadata !575) #10, !dbg !3284
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3286
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3287
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3275, metadata !575) #10, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3283, metadata !575) #10, !dbg !3288
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3290
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3150, metadata !575) #10, !dbg !3214
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3151, metadata !575) #10, !dbg !3215
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3271
  br label %50, !dbg !3292, !llvm.loop !3241

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3271
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3293
  %116 = icmp eq i64 %113, 0, !dbg !3294
  br i1 %116, label %119, label %117, !dbg !3296

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3297
  store i8 0, i8* %118, align 1, !dbg !3299, !tbaa !1041
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3100, metadata !575) #10, !dbg !3170
  call void @free(i8* %29) #10, !dbg !3300
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3100, metadata !575) #10, !dbg !3170
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3301, !tbaa !582
  br label %123, !dbg !3302

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3100, metadata !575) #10, !dbg !3170
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3085, metadata !575), !dbg !3303
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3085, metadata !575), !dbg !3303
  %125 = load i8, i8* %124, align 1, !dbg !3304, !tbaa !1041
  %126 = icmp eq i8 %125, 0, !dbg !3306
  br i1 %126, label %152, label %127, !dbg !3307

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3308

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3085, metadata !575), !dbg !3303
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3308
  %132 = icmp eq i32 %131, 0, !dbg !3310
  br i1 %132, label %139, label %133, !dbg !3311

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3312
  br i1 %134, label %135, label %143, !dbg !3313

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3314
  %137 = load i8, i8* %136, align 1, !dbg !3314, !tbaa !1041
  %138 = icmp eq i8 %137, 0, !dbg !3315
  br i1 %138, label %139, label %143, !dbg !3316

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3317
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3319
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3320
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3084, metadata !575), !dbg !3165
  br label %152, !dbg !3321

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3322
  %145 = add i64 %144, 1, !dbg !3323
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3324
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3085, metadata !575), !dbg !3303
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3325
  %148 = add i64 %147, 1, !dbg !3326
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3085, metadata !575), !dbg !3303
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3085, metadata !575), !dbg !3303
  %150 = load i8, i8* %149, align 1, !dbg !3304, !tbaa !1041
  %151 = icmp eq i8 %150, 0, !dbg !3306
  br i1 %151, label %152, label %128, !dbg !3307, !llvm.loop !3328

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3084, metadata !575), !dbg !3165
  %154 = load i8, i8* %153, align 1, !dbg !3330, !tbaa !1041
  %155 = icmp eq i8 %154, 0, !dbg !3332
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.104, i64 0, i64 0), i8* %153, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3084, metadata !575), !dbg !3165
  ret i8* %156, !dbg !3334
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3335 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3380, metadata !575), !dbg !3384
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3381, metadata !575), !dbg !3385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3383, metadata !575), !dbg !3386
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3387
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3382, metadata !575), !dbg !3388
  %3 = icmp slt i32 %2, 0, !dbg !3389
  br i1 %3, label %4, label %6, !dbg !3391

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3392
  br label %24, !dbg !3393

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3394
  %8 = icmp eq i32 %7, 0, !dbg !3394
  br i1 %8, label %13, label %9, !dbg !3396

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3397
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3398
  %12 = icmp eq i64 %11, -1, !dbg !3399
  br i1 %12, label %16, label %13, !dbg !3400

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3401
  %15 = icmp eq i32 %14, 0, !dbg !3401
  br i1 %15, label %16, label %18, !dbg !3402

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3381, metadata !575), !dbg !3385
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3403
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3383, metadata !575), !dbg !3386
  br label %24, !dbg !3404

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3405
  %20 = load i32, i32* %19, align 4, !dbg !3405, !tbaa !631
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3381, metadata !575), !dbg !3385
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3381, metadata !575), !dbg !3385
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3403
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3383, metadata !575), !dbg !3386
  %22 = icmp eq i32 %20, 0, !dbg !3406
  br i1 %22, label %24, label %23, !dbg !3404

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3408, !tbaa !631
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3383, metadata !575), !dbg !3386
  br label %24, !dbg !3410

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3411
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3412 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3457, metadata !575), !dbg !3458
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3459
  br i1 %2, label %6, label %3, !dbg !3461

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3462
  %5 = icmp eq i32 %4, 0, !dbg !3462
  br i1 %5, label %6, label %8, !dbg !3463

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3464
  br label %17, !dbg !3465

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3466, metadata !575) #10, !dbg !3471
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3473
  %10 = load i32, i32* %9, align 8, !dbg !3473, !tbaa !3035
  %11 = and i32 %10, 256, !dbg !3475
  %12 = icmp eq i32 %11, 0, !dbg !3475
  br i1 %12, label %15, label %13, !dbg !3476

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3477
  br label %15, !dbg !3477

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3478
  br label %17, !dbg !3479

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3480
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3481 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3527, metadata !575), !dbg !3533
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3528, metadata !575), !dbg !3534
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3529, metadata !575), !dbg !3535
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3536
  %5 = load i8*, i8** %4, align 8, !dbg !3536, !tbaa !3228
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3537
  %7 = load i8*, i8** %6, align 8, !dbg !3537, !tbaa !3227
  %8 = icmp eq i8* %5, %7, !dbg !3538
  br i1 %8, label %9, label %28, !dbg !3539

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3540
  %11 = load i8*, i8** %10, align 8, !dbg !3540, !tbaa !3541
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3542
  %13 = load i8*, i8** %12, align 8, !dbg !3542, !tbaa !3543
  %14 = icmp eq i8* %11, %13, !dbg !3544
  br i1 %14, label %15, label %28, !dbg !3545

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3546
  %17 = load i8*, i8** %16, align 8, !dbg !3546, !tbaa !3547
  %18 = icmp eq i8* %17, null, !dbg !3548
  br i1 %18, label %19, label %28, !dbg !3549

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3550
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3530, metadata !575), !dbg !3552
  %22 = icmp eq i64 %21, -1, !dbg !3553
  br i1 %22, label %30, label %23, !dbg !3555

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3556
  %25 = load i32, i32* %24, align 8, !dbg !3557, !tbaa !3035
  %26 = and i32 %25, -17, !dbg !3557
  store i32 %26, i32* %24, align 8, !dbg !3557, !tbaa !3035
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3558
  store i64 %21, i64* %27, align 8, !dbg !3559, !tbaa !3560
  br label %30, !dbg !3561

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3562
  br label %30, !dbg !3563

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3564
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
!499 = !DIFile(filename: "src/hostid.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!570 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 36, type: !571, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !25}
!573 = !{!574}
!574 = !DILocalVariable(name: "status", arg: 1, scope: !570, file: !499, line: 36, type: !25)
!575 = !DIExpression()
!576 = !DILocation(line: 36, column: 12, scope: !570)
!577 = !DILocation(line: 38, column: 14, scope: !578)
!578 = distinct !DILexicalBlock(scope: !570, file: !499, line: 38, column: 7)
!579 = !DILocation(line: 38, column: 7, scope: !570)
!580 = !DILocation(line: 39, column: 5, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !499, line: 39, column: 5)
!582 = !{!583, !583, i64 0}
!583 = !{!"any pointer", !584, i64 0}
!584 = !{!"omnipotent char", !585, i64 0}
!585 = !{!"Simple C/C++ TBAA"}
!586 = !DILocation(line: 42, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !578, file: !499, line: 41, column: 5)
!588 = !DILocation(line: 47, column: 7, scope: !587)
!589 = !DILocation(line: 48, column: 7, scope: !587)
!590 = !DILocation(line: 642, column: 15, scope: !504, inlinedAt: !591)
!591 = distinct !DILocation(line: 49, column: 7, scope: !587)
!592 = !DILocation(line: 651, column: 3, scope: !504, inlinedAt: !591)
!593 = !DILocation(line: 655, column: 29, scope: !504, inlinedAt: !591)
!594 = !DILocation(line: 655, column: 15, scope: !504, inlinedAt: !591)
!595 = !DILocation(line: 656, column: 7, scope: !596, inlinedAt: !591)
!596 = distinct !DILexicalBlock(scope: !504, file: !505, line: 656, column: 7)
!597 = !DILocation(line: 656, column: 19, scope: !596, inlinedAt: !591)
!598 = !DILocation(line: 656, column: 22, scope: !596, inlinedAt: !591)
!599 = !DILocation(line: 656, column: 7, scope: !504, inlinedAt: !591)
!600 = !DILocation(line: 662, column: 7, scope: !601, inlinedAt: !591)
!601 = distinct !DILexicalBlock(scope: !596, file: !505, line: 657, column: 5)
!602 = !DILocation(line: 664, column: 5, scope: !601, inlinedAt: !591)
!603 = !DILocation(line: 665, column: 3, scope: !504, inlinedAt: !591)
!604 = !DILocation(line: 667, column: 3, scope: !504, inlinedAt: !591)
!605 = !DILocation(line: 51, column: 3, scope: !570)
!606 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 55, type: !607, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !610)
!607 = !DISubroutineType(types: !608)
!608 = !{!25, !25, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!610 = !{!611, !612, !613}
!611 = !DILocalVariable(name: "argc", arg: 1, scope: !606, file: !499, line: 55, type: !25)
!612 = !DILocalVariable(name: "argv", arg: 2, scope: !606, file: !499, line: 55, type: !609)
!613 = !DILocalVariable(name: "id", scope: !606, file: !499, line: 57, type: !113)
!614 = !DILocation(line: 55, column: 11, scope: !606)
!615 = !DILocation(line: 55, column: 24, scope: !606)
!616 = !DILocation(line: 60, column: 21, scope: !606)
!617 = !DILocation(line: 60, column: 3, scope: !606)
!618 = !DILocation(line: 61, column: 3, scope: !606)
!619 = !DILocation(line: 62, column: 3, scope: !606)
!620 = !DILocation(line: 63, column: 3, scope: !606)
!621 = !DILocation(line: 65, column: 3, scope: !606)
!622 = !DILocation(line: 67, column: 63, scope: !606)
!623 = !DILocation(line: 67, column: 3, scope: !606)
!624 = !DILocation(line: 69, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !606, file: !499, line: 69, column: 7)
!626 = !DILocation(line: 69, column: 48, scope: !625)
!627 = !DILocation(line: 69, column: 7, scope: !606)
!628 = !DILocation(line: 70, column: 5, scope: !625)
!629 = !DILocation(line: 72, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !606, file: !499, line: 72, column: 7)
!631 = !{!632, !632, i64 0}
!632 = !{!"int", !584, i64 0}
!633 = !DILocation(line: 72, column: 14, scope: !630)
!634 = !DILocation(line: 72, column: 7, scope: !606)
!635 = !DILocation(line: 74, column: 20, scope: !636)
!636 = distinct !DILexicalBlock(scope: !630, file: !499, line: 73, column: 5)
!637 = !DILocation(line: 74, column: 55, scope: !636)
!638 = !DILocation(line: 74, column: 50, scope: !636)
!639 = !DILocation(line: 74, column: 43, scope: !636)
!640 = !DILocation(line: 74, column: 7, scope: !636)
!641 = !DILocation(line: 75, column: 7, scope: !636)
!642 = !DILocation(line: 78, column: 8, scope: !606)
!643 = !DILocation(line: 57, column: 16, scope: !606)
!644 = !DILocation(line: 85, column: 3, scope: !606)
!645 = !DILocation(line: 87, column: 3, scope: !606)
!646 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !506, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !647)
!647 = !{!648}
!648 = !DILocalVariable(name: "file", arg: 1, scope: !646, file: !16, line: 41, type: !6)
!649 = !DILocation(line: 41, column: 41, scope: !646)
!650 = !DILocation(line: 43, column: 13, scope: !646)
!651 = !DILocation(line: 44, column: 1, scope: !646)
!652 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !653, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !17}
!655 = !{!656}
!656 = !DILocalVariable(name: "ignore", arg: 1, scope: !652, file: !16, line: 78, type: !17)
!657 = !DILocation(line: 78, column: 37, scope: !652)
!658 = !DILocation(line: 80, column: 16, scope: !652)
!659 = !{!660, !660, i64 0}
!660 = !{!"_Bool", !584, i64 0}
!661 = !DILocation(line: 81, column: 1, scope: !652)
!662 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !663, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{null}
!665 = !{!666}
!666 = !DILocalVariable(name: "write_error", scope: !667, file: !16, line: 112, type: !6)
!667 = distinct !DILexicalBlock(scope: !668, file: !16, line: 111, column: 5)
!668 = distinct !DILexicalBlock(scope: !662, file: !16, line: 109, column: 7)
!669 = !DILocation(line: 109, column: 21, scope: !668)
!670 = !DILocation(line: 109, column: 7, scope: !668)
!671 = !DILocation(line: 109, column: 29, scope: !668)
!672 = !DILocation(line: 110, column: 7, scope: !668)
!673 = !DILocation(line: 110, column: 12, scope: !668)
!674 = !{i8 0, i8 2}
!675 = !DILocation(line: 114, column: 19, scope: !676)
!676 = distinct !DILexicalBlock(scope: !667, file: !16, line: 113, column: 11)
!677 = !DILocation(line: 110, column: 25, scope: !668)
!678 = !DILocation(line: 110, column: 28, scope: !668)
!679 = !DILocation(line: 110, column: 34, scope: !668)
!680 = !DILocation(line: 109, column: 7, scope: !662)
!681 = !DILocation(line: 112, column: 33, scope: !667)
!682 = !DILocation(line: 112, column: 19, scope: !667)
!683 = !DILocation(line: 113, column: 11, scope: !676)
!684 = !DILocation(line: 113, column: 11, scope: !667)
!685 = !DILocation(line: 114, column: 36, scope: !676)
!686 = !DILocation(line: 114, column: 9, scope: !676)
!687 = !DILocation(line: 117, column: 9, scope: !676)
!688 = !DILocation(line: 119, column: 14, scope: !667)
!689 = !DILocation(line: 119, column: 7, scope: !667)
!690 = !DILocation(line: 122, column: 22, scope: !691)
!691 = distinct !DILexicalBlock(scope: !662, file: !16, line: 122, column: 8)
!692 = !DILocation(line: 122, column: 8, scope: !691)
!693 = !DILocation(line: 122, column: 30, scope: !691)
!694 = !DILocation(line: 122, column: 8, scope: !662)
!695 = !DILocation(line: 123, column: 13, scope: !691)
!696 = !DILocation(line: 123, column: 6, scope: !691)
!697 = !DILocation(line: 124, column: 1, scope: !662)
!698 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !699, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !702)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !25, !609, !6, !6, !6, !701, null}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711}
!703 = !DILocalVariable(name: "argc", arg: 1, scope: !698, file: !31, line: 44, type: !25)
!704 = !DILocalVariable(name: "argv", arg: 2, scope: !698, file: !31, line: 45, type: !609)
!705 = !DILocalVariable(name: "command_name", arg: 3, scope: !698, file: !31, line: 46, type: !6)
!706 = !DILocalVariable(name: "package", arg: 4, scope: !698, file: !31, line: 47, type: !6)
!707 = !DILocalVariable(name: "version", arg: 5, scope: !698, file: !31, line: 48, type: !6)
!708 = !DILocalVariable(name: "usage_func", arg: 6, scope: !698, file: !31, line: 49, type: !701)
!709 = !DILocalVariable(name: "c", scope: !698, file: !31, line: 52, type: !25)
!710 = !DILocalVariable(name: "saved_opterr", scope: !698, file: !31, line: 53, type: !25)
!711 = !DILocalVariable(name: "authors", scope: !712, file: !31, line: 71, type: !716)
!712 = distinct !DILexicalBlock(scope: !713, file: !31, line: 70, column: 11)
!713 = distinct !DILexicalBlock(scope: !714, file: !31, line: 64, column: 9)
!714 = distinct !DILexicalBlock(scope: !715, file: !31, line: 62, column: 5)
!715 = distinct !DILexicalBlock(scope: !698, file: !31, line: 60, column: 7)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !717, line: 46, baseType: !718)
!717 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !719, line: 48, baseType: !720)
!719 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !721)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 192, elements: !728)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !723)
!723 = !{!724, !725, !726, !727}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !722, file: !29, line: 71, baseType: !113, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !722, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !722, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !722, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!728 = !{!729}
!729 = !DISubrange(count: 1)
!730 = !DILocation(line: 44, column: 25, scope: !698)
!731 = !DILocation(line: 45, column: 28, scope: !698)
!732 = !DILocation(line: 46, column: 33, scope: !698)
!733 = !DILocation(line: 47, column: 33, scope: !698)
!734 = !DILocation(line: 48, column: 33, scope: !698)
!735 = !DILocation(line: 49, column: 28, scope: !698)
!736 = !DILocation(line: 55, column: 18, scope: !698)
!737 = !DILocation(line: 53, column: 7, scope: !698)
!738 = !DILocation(line: 58, column: 10, scope: !698)
!739 = !DILocation(line: 60, column: 12, scope: !715)
!740 = !DILocation(line: 61, column: 7, scope: !715)
!741 = !DILocation(line: 61, column: 15, scope: !715)
!742 = !DILocation(line: 52, column: 7, scope: !698)
!743 = !DILocation(line: 60, column: 7, scope: !698)
!744 = !DILocation(line: 66, column: 11, scope: !713)
!745 = !DILocation(line: 67, column: 11, scope: !713)
!746 = !DILocation(line: 71, column: 13, scope: !712)
!747 = !DILocation(line: 71, column: 21, scope: !712)
!748 = !DILocation(line: 72, column: 13, scope: !712)
!749 = !DILocation(line: 73, column: 29, scope: !712)
!750 = !DILocation(line: 73, column: 13, scope: !712)
!751 = !DILocation(line: 74, column: 13, scope: !712)
!752 = !DILocation(line: 84, column: 10, scope: !698)
!753 = !DILocation(line: 88, column: 10, scope: !698)
!754 = !DILocation(line: 89, column: 1, scope: !698)
!755 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !506, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !756)
!756 = !{!757, !758, !759}
!757 = !DILocalVariable(name: "argv0", arg: 1, scope: !755, file: !52, line: 39, type: !6)
!758 = !DILocalVariable(name: "slash", scope: !755, file: !52, line: 46, type: !6)
!759 = !DILocalVariable(name: "base", scope: !755, file: !52, line: 47, type: !6)
!760 = !DILocation(line: 39, column: 31, scope: !755)
!761 = !DILocation(line: 51, column: 13, scope: !762)
!762 = distinct !DILexicalBlock(scope: !755, file: !52, line: 51, column: 7)
!763 = !DILocation(line: 51, column: 7, scope: !755)
!764 = !DILocation(line: 55, column: 14, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !52, line: 52, column: 5)
!766 = !DILocation(line: 54, column: 7, scope: !765)
!767 = !DILocation(line: 56, column: 7, scope: !765)
!768 = !DILocation(line: 59, column: 11, scope: !755)
!769 = !DILocation(line: 46, column: 15, scope: !755)
!770 = !DILocation(line: 60, column: 17, scope: !755)
!771 = !DILocation(line: 60, column: 33, scope: !755)
!772 = !DILocation(line: 60, column: 11, scope: !755)
!773 = !DILocation(line: 47, column: 15, scope: !755)
!774 = !DILocation(line: 61, column: 12, scope: !775)
!775 = distinct !DILexicalBlock(scope: !755, file: !52, line: 61, column: 7)
!776 = !DILocation(line: 61, column: 20, scope: !775)
!777 = !DILocation(line: 61, column: 25, scope: !775)
!778 = !DILocation(line: 61, column: 42, scope: !775)
!779 = !DILocation(line: 61, column: 28, scope: !775)
!780 = !DILocation(line: 61, column: 61, scope: !775)
!781 = !DILocation(line: 61, column: 7, scope: !755)
!782 = !DILocation(line: 64, column: 11, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !52, line: 64, column: 11)
!784 = distinct !DILexicalBlock(scope: !775, file: !52, line: 62, column: 5)
!785 = !DILocation(line: 64, column: 36, scope: !783)
!786 = !DILocation(line: 64, column: 11, scope: !784)
!787 = !DILocation(line: 66, column: 24, scope: !788)
!788 = distinct !DILexicalBlock(scope: !783, file: !52, line: 65, column: 9)
!789 = !DILocation(line: 70, column: 41, scope: !788)
!790 = !DILocation(line: 72, column: 9, scope: !788)
!791 = !DILocation(line: 84, column: 16, scope: !755)
!792 = !DILocation(line: 90, column: 27, scope: !755)
!793 = !DILocation(line: 92, column: 1, scope: !755)
!794 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !795, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !798)
!795 = !DISubroutineType(types: !796)
!796 = !{!797, !797}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!798 = !{!799, !800, !801}
!799 = !DILocalVariable(name: "o", arg: 1, scope: !794, file: !100, line: 114, type: !797)
!800 = !DILocalVariable(name: "e", scope: !794, file: !100, line: 116, type: !25)
!801 = !DILocalVariable(name: "p", scope: !794, file: !100, line: 117, type: !797)
!802 = !DILocation(line: 114, column: 48, scope: !794)
!803 = !DILocation(line: 116, column: 11, scope: !794)
!804 = !DILocation(line: 116, column: 7, scope: !794)
!805 = !DILocation(line: 117, column: 40, scope: !794)
!806 = !DILocation(line: 117, column: 31, scope: !794)
!807 = !DILocation(line: 117, column: 27, scope: !794)
!808 = !DILocation(line: 119, column: 9, scope: !794)
!809 = !DILocation(line: 120, column: 3, scope: !794)
!810 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !811, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !815)
!811 = !DISubroutineType(types: !812)
!812 = !{!58, !813}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!815 = !{!816}
!816 = !DILocalVariable(name: "o", arg: 1, scope: !810, file: !100, line: 125, type: !813)
!817 = !DILocation(line: 125, column: 50, scope: !810)
!818 = !DILocation(line: 127, column: 11, scope: !810)
!819 = !DILocation(line: 127, column: 46, scope: !810)
!820 = !{!821, !584, i64 0}
!821 = !{!"quoting_options", !584, i64 0, !632, i64 4, !584, i64 8, !583, i64 40, !583, i64 48}
!822 = !DILocation(line: 127, column: 3, scope: !810)
!823 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !824, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !797, !58}
!826 = !{!827, !828}
!827 = !DILocalVariable(name: "o", arg: 1, scope: !823, file: !100, line: 133, type: !797)
!828 = !DILocalVariable(name: "s", arg: 2, scope: !823, file: !100, line: 133, type: !58)
!829 = !DILocation(line: 133, column: 44, scope: !823)
!830 = !DILocation(line: 133, column: 66, scope: !823)
!831 = !DILocation(line: 135, column: 4, scope: !823)
!832 = !DILocation(line: 135, column: 39, scope: !823)
!833 = !DILocation(line: 135, column: 45, scope: !823)
!834 = !DILocation(line: 136, column: 1, scope: !823)
!835 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !836, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{!25, !797, !8, !25}
!838 = !{!839, !840, !841, !842, !843, !845, !846}
!839 = !DILocalVariable(name: "o", arg: 1, scope: !835, file: !100, line: 144, type: !797)
!840 = !DILocalVariable(name: "c", arg: 2, scope: !835, file: !100, line: 144, type: !8)
!841 = !DILocalVariable(name: "i", arg: 3, scope: !835, file: !100, line: 144, type: !25)
!842 = !DILocalVariable(name: "uc", scope: !835, file: !100, line: 146, type: !494)
!843 = !DILocalVariable(name: "p", scope: !835, file: !100, line: 147, type: !844)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!845 = !DILocalVariable(name: "shift", scope: !835, file: !100, line: 149, type: !25)
!846 = !DILocalVariable(name: "r", scope: !835, file: !100, line: 150, type: !25)
!847 = !DILocation(line: 144, column: 43, scope: !835)
!848 = !DILocation(line: 144, column: 51, scope: !835)
!849 = !DILocation(line: 144, column: 58, scope: !835)
!850 = !DILocation(line: 146, column: 17, scope: !835)
!851 = !DILocation(line: 148, column: 6, scope: !835)
!852 = !DILocation(line: 148, column: 62, scope: !835)
!853 = !DILocation(line: 148, column: 57, scope: !835)
!854 = !DILocation(line: 147, column: 17, scope: !835)
!855 = !DILocation(line: 149, column: 18, scope: !835)
!856 = !DILocation(line: 149, column: 15, scope: !835)
!857 = !DILocation(line: 149, column: 7, scope: !835)
!858 = !DILocation(line: 150, column: 12, scope: !835)
!859 = !DILocation(line: 150, column: 15, scope: !835)
!860 = !DILocation(line: 150, column: 25, scope: !835)
!861 = !DILocation(line: 150, column: 7, scope: !835)
!862 = !DILocation(line: 151, column: 13, scope: !835)
!863 = !DILocation(line: 151, column: 18, scope: !835)
!864 = !DILocation(line: 151, column: 23, scope: !835)
!865 = !DILocation(line: 151, column: 6, scope: !835)
!866 = !DILocation(line: 152, column: 3, scope: !835)
!867 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !868, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{!25, !797, !25}
!870 = !{!871, !872, !873}
!871 = !DILocalVariable(name: "o", arg: 1, scope: !867, file: !100, line: 160, type: !797)
!872 = !DILocalVariable(name: "i", arg: 2, scope: !867, file: !100, line: 160, type: !25)
!873 = !DILocalVariable(name: "r", scope: !867, file: !100, line: 162, type: !25)
!874 = !DILocation(line: 160, column: 44, scope: !867)
!875 = !DILocation(line: 160, column: 51, scope: !867)
!876 = !DILocation(line: 163, column: 8, scope: !877)
!877 = distinct !DILexicalBlock(scope: !867, file: !100, line: 163, column: 7)
!878 = !DILocation(line: 163, column: 7, scope: !867)
!879 = !DILocation(line: 165, column: 10, scope: !867)
!880 = !{!821, !632, i64 4}
!881 = !DILocation(line: 162, column: 7, scope: !867)
!882 = !DILocation(line: 166, column: 12, scope: !867)
!883 = !DILocation(line: 167, column: 3, scope: !867)
!884 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !885, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !797, !6, !6}
!887 = !{!888, !889, !890}
!888 = !DILocalVariable(name: "o", arg: 1, scope: !884, file: !100, line: 171, type: !797)
!889 = !DILocalVariable(name: "left_quote", arg: 2, scope: !884, file: !100, line: 172, type: !6)
!890 = !DILocalVariable(name: "right_quote", arg: 3, scope: !884, file: !100, line: 172, type: !6)
!891 = !DILocation(line: 171, column: 45, scope: !884)
!892 = !DILocation(line: 172, column: 33, scope: !884)
!893 = !DILocation(line: 172, column: 57, scope: !884)
!894 = !DILocation(line: 174, column: 8, scope: !895)
!895 = distinct !DILexicalBlock(scope: !884, file: !100, line: 174, column: 7)
!896 = !DILocation(line: 174, column: 7, scope: !884)
!897 = !DILocation(line: 176, column: 6, scope: !884)
!898 = !DILocation(line: 176, column: 12, scope: !884)
!899 = !DILocation(line: 177, column: 8, scope: !900)
!900 = distinct !DILexicalBlock(scope: !884, file: !100, line: 177, column: 7)
!901 = !DILocation(line: 177, column: 23, scope: !900)
!902 = !DILocation(line: 177, column: 19, scope: !900)
!903 = !DILocation(line: 178, column: 5, scope: !900)
!904 = !DILocation(line: 179, column: 6, scope: !884)
!905 = !DILocation(line: 179, column: 17, scope: !884)
!906 = !{!821, !583, i64 40}
!907 = !DILocation(line: 180, column: 6, scope: !884)
!908 = !DILocation(line: 180, column: 18, scope: !884)
!909 = !{!821, !583, i64 48}
!910 = !DILocation(line: 181, column: 1, scope: !884)
!911 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !912, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{!94, !50, !94, !6, !94, !813}
!914 = !{!915, !916, !917, !918, !919, !920, !921, !922}
!915 = !DILocalVariable(name: "buffer", arg: 1, scope: !911, file: !100, line: 776, type: !50)
!916 = !DILocalVariable(name: "buffersize", arg: 2, scope: !911, file: !100, line: 776, type: !94)
!917 = !DILocalVariable(name: "arg", arg: 3, scope: !911, file: !100, line: 777, type: !6)
!918 = !DILocalVariable(name: "argsize", arg: 4, scope: !911, file: !100, line: 777, type: !94)
!919 = !DILocalVariable(name: "o", arg: 5, scope: !911, file: !100, line: 778, type: !813)
!920 = !DILocalVariable(name: "p", scope: !911, file: !100, line: 780, type: !813)
!921 = !DILocalVariable(name: "e", scope: !911, file: !100, line: 781, type: !25)
!922 = !DILocalVariable(name: "r", scope: !911, file: !100, line: 782, type: !94)
!923 = !DILocation(line: 776, column: 24, scope: !911)
!924 = !DILocation(line: 776, column: 39, scope: !911)
!925 = !DILocation(line: 777, column: 30, scope: !911)
!926 = !DILocation(line: 777, column: 42, scope: !911)
!927 = !DILocation(line: 778, column: 48, scope: !911)
!928 = !DILocation(line: 780, column: 37, scope: !911)
!929 = !DILocation(line: 780, column: 33, scope: !911)
!930 = !DILocation(line: 781, column: 11, scope: !911)
!931 = !DILocation(line: 781, column: 7, scope: !911)
!932 = !DILocation(line: 783, column: 43, scope: !911)
!933 = !DILocation(line: 783, column: 53, scope: !911)
!934 = !DILocation(line: 783, column: 60, scope: !911)
!935 = !DILocation(line: 784, column: 43, scope: !911)
!936 = !DILocation(line: 784, column: 58, scope: !911)
!937 = !DILocation(line: 782, column: 14, scope: !911)
!938 = !DILocation(line: 782, column: 10, scope: !911)
!939 = !DILocation(line: 785, column: 9, scope: !911)
!940 = !DILocation(line: 786, column: 3, scope: !911)
!941 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !942, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !946)
!942 = !DISubroutineType(types: !943)
!943 = !{!94, !50, !94, !6, !94, !58, !25, !944, !6, !6}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!946 = !{!947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !971, !972, !973, !974, !975, !978, !979, !997, !1000, !1001, !1008}
!947 = !DILocalVariable(name: "buffer", arg: 1, scope: !941, file: !100, line: 248, type: !50)
!948 = !DILocalVariable(name: "buffersize", arg: 2, scope: !941, file: !100, line: 248, type: !94)
!949 = !DILocalVariable(name: "arg", arg: 3, scope: !941, file: !100, line: 249, type: !6)
!950 = !DILocalVariable(name: "argsize", arg: 4, scope: !941, file: !100, line: 249, type: !94)
!951 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !941, file: !100, line: 250, type: !58)
!952 = !DILocalVariable(name: "flags", arg: 6, scope: !941, file: !100, line: 250, type: !25)
!953 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !941, file: !100, line: 251, type: !944)
!954 = !DILocalVariable(name: "left_quote", arg: 8, scope: !941, file: !100, line: 252, type: !6)
!955 = !DILocalVariable(name: "right_quote", arg: 9, scope: !941, file: !100, line: 253, type: !6)
!956 = !DILocalVariable(name: "i", scope: !941, file: !100, line: 255, type: !94)
!957 = !DILocalVariable(name: "len", scope: !941, file: !100, line: 256, type: !94)
!958 = !DILocalVariable(name: "orig_buffersize", scope: !941, file: !100, line: 257, type: !94)
!959 = !DILocalVariable(name: "quote_string", scope: !941, file: !100, line: 258, type: !6)
!960 = !DILocalVariable(name: "quote_string_len", scope: !941, file: !100, line: 259, type: !94)
!961 = !DILocalVariable(name: "backslash_escapes", scope: !941, file: !100, line: 260, type: !17)
!962 = !DILocalVariable(name: "unibyte_locale", scope: !941, file: !100, line: 261, type: !17)
!963 = !DILocalVariable(name: "elide_outer_quotes", scope: !941, file: !100, line: 262, type: !17)
!964 = !DILocalVariable(name: "pending_shell_escape_end", scope: !941, file: !100, line: 263, type: !17)
!965 = !DILocalVariable(name: "encountered_single_quote", scope: !941, file: !100, line: 264, type: !17)
!966 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !941, file: !100, line: 265, type: !17)
!967 = !DILocalVariable(name: "c", scope: !968, file: !100, line: 394, type: !494)
!968 = distinct !DILexicalBlock(scope: !969, file: !100, line: 393, column: 5)
!969 = distinct !DILexicalBlock(scope: !970, file: !100, line: 392, column: 3)
!970 = distinct !DILexicalBlock(scope: !941, file: !100, line: 392, column: 3)
!971 = !DILocalVariable(name: "esc", scope: !968, file: !100, line: 395, type: !494)
!972 = !DILocalVariable(name: "is_right_quote", scope: !968, file: !100, line: 396, type: !17)
!973 = !DILocalVariable(name: "escaping", scope: !968, file: !100, line: 397, type: !17)
!974 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !968, file: !100, line: 398, type: !17)
!975 = !DILocalVariable(name: "m", scope: !976, file: !100, line: 602, type: !94)
!976 = distinct !DILexicalBlock(scope: !977, file: !100, line: 600, column: 11)
!977 = distinct !DILexicalBlock(scope: !968, file: !100, line: 418, column: 9)
!978 = !DILocalVariable(name: "printable", scope: !976, file: !100, line: 604, type: !17)
!979 = !DILocalVariable(name: "mbstate", scope: !980, file: !100, line: 613, type: !982)
!980 = distinct !DILexicalBlock(scope: !981, file: !100, line: 612, column: 15)
!981 = distinct !DILexicalBlock(scope: !976, file: !100, line: 606, column: 17)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !983, line: 6, baseType: !984)
!983 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !985, line: 21, baseType: !986)
!985 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !985, line: 13, size: 64, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !986, file: !985, line: 15, baseType: !25, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !986, file: !985, line: 20, baseType: !990, size: 32, offset: 32)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !985, line: 16, size: 32, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !990, file: !985, line: 18, baseType: !113, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !990, file: !985, line: 19, baseType: !994, size: 32)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !995)
!995 = !{!996}
!996 = !DISubrange(count: 4)
!997 = !DILocalVariable(name: "w", scope: !998, file: !100, line: 623, type: !999)
!998 = distinct !DILexicalBlock(scope: !980, file: !100, line: 622, column: 19)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1000 = !DILocalVariable(name: "bytes", scope: !998, file: !100, line: 624, type: !94)
!1001 = !DILocalVariable(name: "j", scope: !1002, file: !100, line: 649, type: !94)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !100, line: 648, column: 27)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !100, line: 646, column: 29)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !100, line: 641, column: 23)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !100, line: 633, column: 30)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !100, line: 628, column: 30)
!1007 = distinct !DILexicalBlock(scope: !998, file: !100, line: 626, column: 25)
!1008 = !DILocalVariable(name: "ilim", scope: !1009, file: !100, line: 676, type: !94)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !100, line: 673, column: 15)
!1010 = distinct !DILexicalBlock(scope: !976, file: !100, line: 672, column: 17)
!1011 = !DILocation(line: 248, column: 33, scope: !941)
!1012 = !DILocation(line: 248, column: 48, scope: !941)
!1013 = !DILocation(line: 249, column: 39, scope: !941)
!1014 = !DILocation(line: 249, column: 51, scope: !941)
!1015 = !DILocation(line: 250, column: 46, scope: !941)
!1016 = !DILocation(line: 250, column: 65, scope: !941)
!1017 = !DILocation(line: 251, column: 47, scope: !941)
!1018 = !DILocation(line: 252, column: 39, scope: !941)
!1019 = !DILocation(line: 253, column: 39, scope: !941)
!1020 = !DILocation(line: 256, column: 10, scope: !941)
!1021 = !DILocation(line: 257, column: 10, scope: !941)
!1022 = !DILocation(line: 258, column: 15, scope: !941)
!1023 = !DILocation(line: 259, column: 10, scope: !941)
!1024 = !DILocation(line: 260, column: 8, scope: !941)
!1025 = !DILocation(line: 261, column: 25, scope: !941)
!1026 = !DILocation(line: 261, column: 36, scope: !941)
!1027 = !DILocation(line: 262, column: 8, scope: !941)
!1028 = !DILocation(line: 263, column: 8, scope: !941)
!1029 = !DILocation(line: 264, column: 8, scope: !941)
!1030 = !DILocation(line: 265, column: 8, scope: !941)
!1031 = !DILocation(line: 265, column: 3, scope: !941)
!1032 = !DILocation(line: 308, column: 3, scope: !941)
!1033 = !DILocation(line: 315, column: 11, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !941, file: !100, line: 309, column: 5)
!1035 = !DILocation(line: 315, column: 12, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1034, file: !100, line: 315, column: 11)
!1037 = !DILocation(line: 316, column: 9, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !100, line: 316, column: 9)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !100, line: 316, column: 9)
!1040 = !DILocation(line: 316, column: 9, scope: !1039)
!1041 = !{!584, !584, i64 0}
!1042 = !DILocation(line: 354, column: 26, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !100, line: 332, column: 11)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !100, line: 331, column: 13)
!1045 = distinct !DILexicalBlock(scope: !1034, file: !100, line: 330, column: 7)
!1046 = !DILocation(line: 355, column: 27, scope: !1043)
!1047 = !DILocation(line: 356, column: 11, scope: !1043)
!1048 = !DILocation(line: 357, column: 14, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !100, line: 357, column: 13)
!1050 = !DILocation(line: 357, column: 13, scope: !1045)
!1051 = !DILocation(line: 358, column: 43, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !100, line: 358, column: 11)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !100, line: 358, column: 11)
!1054 = !DILocation(line: 358, column: 11, scope: !1053)
!1055 = !DILocation(line: 359, column: 13, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !100, line: 359, column: 13)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !100, line: 359, column: 13)
!1058 = !DILocation(line: 359, column: 13, scope: !1057)
!1059 = !DILocation(line: 358, column: 70, scope: !1052)
!1060 = distinct !{!1060, !1054, !1061}
!1061 = !DILocation(line: 359, column: 13, scope: !1053)
!1062 = !DILocation(line: 362, column: 28, scope: !1045)
!1063 = !DILocation(line: 364, column: 7, scope: !1034)
!1064 = !DILocation(line: 367, column: 7, scope: !1034)
!1065 = !DILocation(line: 370, column: 7, scope: !1034)
!1066 = !DILocation(line: 373, column: 12, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1034, file: !100, line: 373, column: 11)
!1068 = !DILocation(line: 373, column: 11, scope: !1034)
!1069 = !DILocation(line: 378, column: 12, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1034, file: !100, line: 378, column: 11)
!1071 = !DILocation(line: 378, column: 11, scope: !1034)
!1072 = !DILocation(line: 379, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !100, line: 379, column: 9)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !100, line: 379, column: 9)
!1075 = !DILocation(line: 379, column: 9, scope: !1074)
!1076 = !DILocation(line: 386, column: 7, scope: !1034)
!1077 = !DILocation(line: 389, column: 7, scope: !1034)
!1078 = !DILocation(line: 255, column: 10, scope: !941)
!1079 = !DILocation(line: 392, column: 8, scope: !970)
!1080 = !DILocation(line: 392, column: 27, scope: !969)
!1081 = !DILocation(line: 392, column: 19, scope: !969)
!1082 = !DILocation(line: 392, column: 60, scope: !969)
!1083 = !DILocation(line: 392, column: 3, scope: !970)
!1084 = !DILocation(line: 392, column: 41, scope: !969)
!1085 = !DILocation(line: 392, column: 48, scope: !969)
!1086 = !DILocation(line: 396, column: 12, scope: !968)
!1087 = !DILocation(line: 397, column: 12, scope: !968)
!1088 = !DILocation(line: 398, column: 12, scope: !968)
!1089 = !DILocation(line: 401, column: 11, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !968, file: !100, line: 400, column: 11)
!1091 = !DILocation(line: 403, column: 17, scope: !1090)
!1092 = !DILocation(line: 404, column: 39, scope: !1090)
!1093 = !DILocation(line: 408, column: 32, scope: !1090)
!1094 = !DILocation(line: 404, column: 19, scope: !1090)
!1095 = !DILocation(line: 404, column: 15, scope: !1090)
!1096 = !DILocation(line: 409, column: 11, scope: !1090)
!1097 = !DILocation(line: 409, column: 26, scope: !1090)
!1098 = !DILocation(line: 409, column: 14, scope: !1090)
!1099 = !DILocation(line: 409, column: 63, scope: !1090)
!1100 = !DILocation(line: 400, column: 11, scope: !968)
!1101 = !DILocation(line: 416, column: 11, scope: !968)
!1102 = !DILocation(line: 394, column: 21, scope: !968)
!1103 = !DILocation(line: 417, column: 7, scope: !968)
!1104 = !DILocation(line: 420, column: 15, scope: !977)
!1105 = !DILocation(line: 422, column: 15, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !100, line: 422, column: 15)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !100, line: 421, column: 13)
!1108 = distinct !DILexicalBlock(scope: !977, file: !100, line: 420, column: 15)
!1109 = !DILocation(line: 422, column: 15, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !100, line: 422, column: 15)
!1111 = !DILocation(line: 422, column: 15, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !100, line: 422, column: 15)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !100, line: 422, column: 15)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !100, line: 422, column: 15)
!1115 = !DILocation(line: 422, column: 15, scope: !1113)
!1116 = !DILocation(line: 422, column: 15, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !100, line: 422, column: 15)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !100, line: 422, column: 15)
!1119 = !DILocation(line: 422, column: 15, scope: !1118)
!1120 = !DILocation(line: 422, column: 15, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !100, line: 422, column: 15)
!1122 = distinct !DILexicalBlock(scope: !1114, file: !100, line: 422, column: 15)
!1123 = !DILocation(line: 422, column: 15, scope: !1122)
!1124 = !DILocation(line: 422, column: 15, scope: !1114)
!1125 = !DILocation(line: 422, column: 15, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !100, line: 422, column: 15)
!1127 = distinct !DILexicalBlock(scope: !1106, file: !100, line: 422, column: 15)
!1128 = !DILocation(line: 422, column: 15, scope: !1127)
!1129 = !DILocation(line: 430, column: 19, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1107, file: !100, line: 429, column: 19)
!1131 = !DILocation(line: 430, column: 24, scope: !1130)
!1132 = !DILocation(line: 430, column: 28, scope: !1130)
!1133 = !DILocation(line: 430, column: 38, scope: !1130)
!1134 = !DILocation(line: 430, column: 48, scope: !1130)
!1135 = !DILocation(line: 430, column: 59, scope: !1130)
!1136 = !DILocation(line: 432, column: 19, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !100, line: 432, column: 19)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !100, line: 432, column: 19)
!1139 = distinct !DILexicalBlock(scope: !1130, file: !100, line: 431, column: 17)
!1140 = !DILocation(line: 432, column: 19, scope: !1138)
!1141 = !DILocation(line: 433, column: 19, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !100, line: 433, column: 19)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !100, line: 433, column: 19)
!1144 = !DILocation(line: 433, column: 19, scope: !1143)
!1145 = !DILocation(line: 434, column: 17, scope: !1139)
!1146 = !DILocation(line: 441, column: 20, scope: !1108)
!1147 = !DILocation(line: 446, column: 11, scope: !977)
!1148 = !DILocation(line: 449, column: 19, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !977, file: !100, line: 447, column: 13)
!1150 = !DILocation(line: 455, column: 19, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1149, file: !100, line: 454, column: 19)
!1152 = !DILocation(line: 455, column: 24, scope: !1151)
!1153 = !DILocation(line: 455, column: 28, scope: !1151)
!1154 = !DILocation(line: 455, column: 38, scope: !1151)
!1155 = !DILocation(line: 455, column: 47, scope: !1151)
!1156 = !DILocation(line: 455, column: 41, scope: !1151)
!1157 = !DILocation(line: 455, column: 52, scope: !1151)
!1158 = !DILocation(line: 454, column: 19, scope: !1149)
!1159 = !DILocation(line: 456, column: 25, scope: !1151)
!1160 = !DILocation(line: 456, column: 17, scope: !1151)
!1161 = !DILocation(line: 463, column: 25, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1151, file: !100, line: 457, column: 19)
!1163 = !DILocation(line: 467, column: 21, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !100, line: 467, column: 21)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !100, line: 467, column: 21)
!1166 = !DILocation(line: 467, column: 21, scope: !1165)
!1167 = !DILocation(line: 468, column: 21, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !100, line: 468, column: 21)
!1169 = distinct !DILexicalBlock(scope: !1162, file: !100, line: 468, column: 21)
!1170 = !DILocation(line: 468, column: 21, scope: !1169)
!1171 = !DILocation(line: 469, column: 21, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !100, line: 469, column: 21)
!1173 = distinct !DILexicalBlock(scope: !1162, file: !100, line: 469, column: 21)
!1174 = !DILocation(line: 469, column: 21, scope: !1173)
!1175 = !DILocation(line: 470, column: 21, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !100, line: 470, column: 21)
!1177 = distinct !DILexicalBlock(scope: !1162, file: !100, line: 470, column: 21)
!1178 = !DILocation(line: 470, column: 21, scope: !1177)
!1179 = !DILocation(line: 471, column: 21, scope: !1162)
!1180 = !DILocation(line: 395, column: 21, scope: !968)
!1181 = !DILocation(line: 484, column: 31, scope: !977)
!1182 = !DILocation(line: 485, column: 31, scope: !977)
!1183 = !DILocation(line: 487, column: 31, scope: !977)
!1184 = !DILocation(line: 488, column: 31, scope: !977)
!1185 = !DILocation(line: 489, column: 31, scope: !977)
!1186 = !DILocation(line: 492, column: 15, scope: !977)
!1187 = !DILocation(line: 494, column: 19, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !100, line: 493, column: 13)
!1189 = distinct !DILexicalBlock(scope: !977, file: !100, line: 492, column: 15)
!1190 = !DILocation(line: 501, column: 33, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !977, file: !100, line: 501, column: 15)
!1192 = !DILocation(line: 506, column: 15, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !977, file: !100, line: 505, column: 15)
!1194 = !DILocation(line: 510, column: 15, scope: !977)
!1195 = !DILocation(line: 518, column: 26, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !977, file: !100, line: 518, column: 15)
!1197 = !DILocation(line: 518, column: 15, scope: !977)
!1198 = !DILocation(line: 518, column: 40, scope: !1196)
!1199 = !DILocation(line: 518, column: 47, scope: !1196)
!1200 = !DILocation(line: 522, column: 17, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !977, file: !100, line: 522, column: 15)
!1202 = !DILocation(line: 518, column: 18, scope: !1196)
!1203 = !DILocation(line: 518, column: 65, scope: !1196)
!1204 = !DILocation(line: 522, column: 15, scope: !977)
!1205 = !DILocation(line: 526, column: 11, scope: !977)
!1206 = !DILocation(line: 541, column: 15, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !977, file: !100, line: 540, column: 15)
!1208 = !DILocation(line: 548, column: 15, scope: !977)
!1209 = !DILocation(line: 550, column: 19, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !100, line: 549, column: 13)
!1211 = distinct !DILexicalBlock(scope: !977, file: !100, line: 548, column: 15)
!1212 = !DILocation(line: 553, column: 19, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !100, line: 553, column: 19)
!1214 = !DILocation(line: 553, column: 35, scope: !1213)
!1215 = !DILocation(line: 553, column: 30, scope: !1213)
!1216 = !DILocation(line: 562, column: 15, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !100, line: 562, column: 15)
!1218 = distinct !DILexicalBlock(scope: !1210, file: !100, line: 562, column: 15)
!1219 = !DILocation(line: 562, column: 15, scope: !1218)
!1220 = !DILocation(line: 563, column: 15, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !100, line: 563, column: 15)
!1222 = distinct !DILexicalBlock(scope: !1210, file: !100, line: 563, column: 15)
!1223 = !DILocation(line: 563, column: 15, scope: !1222)
!1224 = !DILocation(line: 564, column: 15, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !100, line: 564, column: 15)
!1226 = distinct !DILexicalBlock(scope: !1210, file: !100, line: 564, column: 15)
!1227 = !DILocation(line: 564, column: 15, scope: !1226)
!1228 = !DILocation(line: 566, column: 13, scope: !1210)
!1229 = !DILocation(line: 606, column: 17, scope: !976)
!1230 = !DILocation(line: 602, column: 20, scope: !976)
!1231 = !DILocation(line: 609, column: 29, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !981, file: !100, line: 607, column: 15)
!1233 = !{!1234, !1234, i64 0}
!1234 = !{!"short", !584, i64 0}
!1235 = !DILocation(line: 609, column: 27, scope: !1232)
!1236 = !DILocation(line: 604, column: 18, scope: !976)
!1237 = !DILocation(line: 610, column: 15, scope: !1232)
!1238 = !DILocation(line: 613, column: 17, scope: !980)
!1239 = !DILocation(line: 614, column: 17, scope: !980)
!1240 = !DILocation(line: 618, column: 29, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !980, file: !100, line: 618, column: 21)
!1242 = !DILocation(line: 618, column: 21, scope: !980)
!1243 = !DILocation(line: 619, column: 29, scope: !1241)
!1244 = !DILocation(line: 619, column: 19, scope: !1241)
!1245 = !DILocation(line: 621, column: 17, scope: !980)
!1246 = distinct !{!1246, !1245, !1247}
!1247 = !DILocation(line: 667, column: 44, scope: !980)
!1248 = !DILocation(line: 623, column: 21, scope: !998)
!1249 = !DILocation(line: 624, column: 56, scope: !998)
!1250 = !DILocation(line: 624, column: 50, scope: !998)
!1251 = !DILocation(line: 625, column: 53, scope: !998)
!1252 = !DILocation(line: 613, column: 27, scope: !980)
!1253 = !DILocation(line: 623, column: 29, scope: !998)
!1254 = !DILocation(line: 624, column: 36, scope: !998)
!1255 = !DILocation(line: 624, column: 28, scope: !998)
!1256 = !DILocation(line: 626, column: 25, scope: !998)
!1257 = !DILocation(line: 636, column: 38, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1005, file: !100, line: 634, column: 23)
!1259 = !DILocation(line: 636, column: 48, scope: !1258)
!1260 = !DILocation(line: 636, column: 51, scope: !1258)
!1261 = !DILocation(line: 636, column: 25, scope: !1258)
!1262 = !DILocation(line: 637, column: 28, scope: !1258)
!1263 = !DILocation(line: 636, column: 34, scope: !1258)
!1264 = distinct !{!1264, !1261, !1262}
!1265 = !DILocation(line: 650, column: 43, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !100, line: 650, column: 29)
!1267 = distinct !DILexicalBlock(scope: !1002, file: !100, line: 650, column: 29)
!1268 = !DILocation(line: 647, column: 29, scope: !1003)
!1269 = !DILocation(line: 649, column: 36, scope: !1002)
!1270 = !DILocation(line: 651, column: 49, scope: !1266)
!1271 = !DILocation(line: 651, column: 39, scope: !1266)
!1272 = !DILocation(line: 651, column: 31, scope: !1266)
!1273 = !DILocation(line: 650, column: 53, scope: !1266)
!1274 = !DILocation(line: 650, column: 29, scope: !1267)
!1275 = distinct !{!1275, !1274, !1276}
!1276 = !DILocation(line: 659, column: 33, scope: !1267)
!1277 = !DILocation(line: 666, column: 19, scope: !980)
!1278 = !DILocation(line: 662, column: 41, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1004, file: !100, line: 662, column: 29)
!1280 = !DILocation(line: 662, column: 31, scope: !1279)
!1281 = !DILocation(line: 662, column: 29, scope: !1004)
!1282 = !DILocation(line: 664, column: 27, scope: !1004)
!1283 = !DILocation(line: 667, column: 26, scope: !980)
!1284 = !DILocation(line: 667, column: 24, scope: !980)
!1285 = !DILocation(line: 666, column: 19, scope: !998)
!1286 = !DILocation(line: 668, column: 15, scope: !981)
!1287 = !DILocation(line: 670, column: 40, scope: !976)
!1288 = !DILocation(line: 672, column: 19, scope: !1010)
!1289 = !DILocation(line: 672, column: 45, scope: !1010)
!1290 = !DILocation(line: 672, column: 23, scope: !1010)
!1291 = !DILocation(line: 676, column: 33, scope: !1009)
!1292 = !DILocation(line: 676, column: 24, scope: !1009)
!1293 = !DILocation(line: 678, column: 17, scope: !1009)
!1294 = !DILocation(line: 680, column: 43, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !100, line: 680, column: 25)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !100, line: 679, column: 19)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !100, line: 678, column: 17)
!1298 = distinct !DILexicalBlock(scope: !1009, file: !100, line: 678, column: 17)
!1299 = !DILocation(line: 682, column: 25, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 682, column: 25)
!1301 = distinct !DILexicalBlock(scope: !1295, file: !100, line: 681, column: 23)
!1302 = !DILocation(line: 682, column: 25, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !100, line: 682, column: 25)
!1304 = !DILocation(line: 682, column: 25, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !100, line: 682, column: 25)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !100, line: 682, column: 25)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !100, line: 682, column: 25)
!1308 = !DILocation(line: 682, column: 25, scope: !1306)
!1309 = !DILocation(line: 682, column: 25, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !100, line: 682, column: 25)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !100, line: 682, column: 25)
!1312 = !DILocation(line: 682, column: 25, scope: !1311)
!1313 = !DILocation(line: 682, column: 25, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !100, line: 682, column: 25)
!1315 = distinct !DILexicalBlock(scope: !1307, file: !100, line: 682, column: 25)
!1316 = !DILocation(line: 682, column: 25, scope: !1315)
!1317 = !DILocation(line: 682, column: 25, scope: !1307)
!1318 = !DILocation(line: 682, column: 25, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !100, line: 682, column: 25)
!1320 = distinct !DILexicalBlock(scope: !1300, file: !100, line: 682, column: 25)
!1321 = !DILocation(line: 682, column: 25, scope: !1320)
!1322 = !DILocation(line: 683, column: 25, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !100, line: 683, column: 25)
!1324 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 683, column: 25)
!1325 = !DILocation(line: 683, column: 25, scope: !1324)
!1326 = !DILocation(line: 684, column: 25, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !100, line: 684, column: 25)
!1328 = distinct !DILexicalBlock(scope: !1301, file: !100, line: 684, column: 25)
!1329 = !DILocation(line: 684, column: 25, scope: !1328)
!1330 = !DILocation(line: 685, column: 38, scope: !1301)
!1331 = !DILocation(line: 685, column: 33, scope: !1301)
!1332 = !DILocation(line: 686, column: 23, scope: !1301)
!1333 = !DILocation(line: 687, column: 30, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1295, file: !100, line: 687, column: 30)
!1335 = !DILocation(line: 687, column: 30, scope: !1295)
!1336 = !DILocation(line: 689, column: 25, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !100, line: 689, column: 25)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !100, line: 689, column: 25)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !100, line: 688, column: 23)
!1340 = !DILocation(line: 689, column: 25, scope: !1338)
!1341 = !DILocation(line: 691, column: 23, scope: !1339)
!1342 = !DILocation(line: 692, column: 35, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1296, file: !100, line: 692, column: 25)
!1344 = !DILocation(line: 692, column: 30, scope: !1343)
!1345 = !DILocation(line: 692, column: 25, scope: !1296)
!1346 = !DILocation(line: 694, column: 21, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !100, line: 694, column: 21)
!1348 = distinct !DILexicalBlock(scope: !1296, file: !100, line: 694, column: 21)
!1349 = !DILocation(line: 694, column: 21, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !100, line: 694, column: 21)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !100, line: 694, column: 21)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !100, line: 694, column: 21)
!1353 = !DILocation(line: 694, column: 21, scope: !1351)
!1354 = !DILocation(line: 694, column: 21, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !100, line: 694, column: 21)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !100, line: 694, column: 21)
!1357 = !DILocation(line: 694, column: 21, scope: !1356)
!1358 = !DILocation(line: 694, column: 21, scope: !1352)
!1359 = !DILocation(line: 695, column: 21, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !100, line: 695, column: 21)
!1361 = distinct !DILexicalBlock(scope: !1296, file: !100, line: 695, column: 21)
!1362 = !DILocation(line: 695, column: 21, scope: !1361)
!1363 = !DILocation(line: 696, column: 25, scope: !1296)
!1364 = !DILocation(line: 678, column: 17, scope: !1297)
!1365 = distinct !{!1365, !1366, !1367}
!1366 = !DILocation(line: 678, column: 17, scope: !1298)
!1367 = !DILocation(line: 697, column: 19, scope: !1298)
!1368 = !DILocation(line: 704, column: 34, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !968, file: !100, line: 704, column: 11)
!1370 = !DILocation(line: 706, column: 14, scope: !1369)
!1371 = !DILocation(line: 707, column: 14, scope: !1369)
!1372 = !DILocation(line: 707, column: 35, scope: !1369)
!1373 = !DILocation(line: 707, column: 17, scope: !1369)
!1374 = !DILocation(line: 707, column: 53, scope: !1369)
!1375 = !DILocation(line: 707, column: 47, scope: !1369)
!1376 = !DILocation(line: 707, column: 65, scope: !1369)
!1377 = !DILocation(line: 708, column: 15, scope: !1369)
!1378 = !DILocation(line: 708, column: 11, scope: !1369)
!1379 = !DILocation(line: 704, column: 11, scope: !968)
!1380 = !DILocation(line: 712, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !968, file: !100, line: 712, column: 7)
!1382 = !DILocation(line: 712, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1381, file: !100, line: 712, column: 7)
!1384 = !DILocation(line: 712, column: 7, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !100, line: 712, column: 7)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !100, line: 712, column: 7)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !100, line: 712, column: 7)
!1388 = !DILocation(line: 712, column: 7, scope: !1386)
!1389 = !DILocation(line: 712, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !100, line: 712, column: 7)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !100, line: 712, column: 7)
!1392 = !DILocation(line: 712, column: 7, scope: !1391)
!1393 = !DILocation(line: 712, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !100, line: 712, column: 7)
!1395 = distinct !DILexicalBlock(scope: !1387, file: !100, line: 712, column: 7)
!1396 = !DILocation(line: 712, column: 7, scope: !1395)
!1397 = !DILocation(line: 712, column: 7, scope: !1387)
!1398 = !DILocation(line: 712, column: 7, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !100, line: 712, column: 7)
!1400 = distinct !DILexicalBlock(scope: !1381, file: !100, line: 712, column: 7)
!1401 = !DILocation(line: 712, column: 7, scope: !1400)
!1402 = !DILocation(line: 715, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !100, line: 715, column: 7)
!1404 = distinct !DILexicalBlock(scope: !968, file: !100, line: 715, column: 7)
!1405 = !DILocation(line: 715, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !100, line: 715, column: 7)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !100, line: 715, column: 7)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !100, line: 715, column: 7)
!1409 = !DILocation(line: 715, column: 7, scope: !1407)
!1410 = !DILocation(line: 715, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !100, line: 715, column: 7)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !100, line: 715, column: 7)
!1413 = !DILocation(line: 715, column: 7, scope: !1412)
!1414 = !DILocation(line: 715, column: 7, scope: !1408)
!1415 = !DILocation(line: 716, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !100, line: 716, column: 7)
!1417 = distinct !DILexicalBlock(scope: !968, file: !100, line: 716, column: 7)
!1418 = !DILocation(line: 716, column: 7, scope: !1417)
!1419 = !DILocation(line: 718, column: 13, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !968, file: !100, line: 718, column: 11)
!1421 = !DILocation(line: 718, column: 11, scope: !968)
!1422 = !DILocation(line: 720, column: 5, scope: !969)
!1423 = !DILocation(line: 392, column: 75, scope: !969)
!1424 = !DILocation(line: 392, column: 3, scope: !969)
!1425 = distinct !{!1425, !1083, !1426}
!1426 = !DILocation(line: 720, column: 5, scope: !970)
!1427 = !DILocation(line: 722, column: 11, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !941, file: !100, line: 722, column: 7)
!1429 = !DILocation(line: 722, column: 16, scope: !1428)
!1430 = !DILocation(line: 730, column: 51, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !941, file: !100, line: 730, column: 7)
!1432 = !DILocation(line: 731, column: 10, scope: !1431)
!1433 = !DILocation(line: 733, column: 11, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !100, line: 733, column: 11)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !100, line: 732, column: 5)
!1436 = !DILocation(line: 733, column: 11, scope: !1435)
!1437 = !DILocation(line: 734, column: 16, scope: !1434)
!1438 = !DILocation(line: 734, column: 9, scope: !1434)
!1439 = !DILocation(line: 738, column: 18, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1434, file: !100, line: 738, column: 16)
!1441 = !DILocation(line: 738, column: 32, scope: !1440)
!1442 = !DILocation(line: 738, column: 29, scope: !1440)
!1443 = !DILocation(line: 747, column: 7, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !941, file: !100, line: 747, column: 7)
!1445 = !DILocation(line: 747, column: 20, scope: !1444)
!1446 = !DILocation(line: 748, column: 12, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !100, line: 748, column: 5)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !100, line: 748, column: 5)
!1449 = !DILocation(line: 748, column: 5, scope: !1448)
!1450 = !DILocation(line: 749, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !100, line: 749, column: 7)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !100, line: 749, column: 7)
!1453 = !DILocation(line: 749, column: 7, scope: !1452)
!1454 = !DILocation(line: 748, column: 39, scope: !1447)
!1455 = distinct !{!1455, !1449, !1456}
!1456 = !DILocation(line: 749, column: 7, scope: !1448)
!1457 = !DILocation(line: 751, column: 11, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !941, file: !100, line: 751, column: 7)
!1459 = !DILocation(line: 751, column: 7, scope: !941)
!1460 = !DILocation(line: 752, column: 5, scope: !1458)
!1461 = !DILocation(line: 752, column: 17, scope: !1458)
!1462 = !DILocation(line: 758, column: 21, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !941, file: !100, line: 758, column: 7)
!1464 = !DILocation(line: 758, column: 54, scope: !1463)
!1465 = !DILocation(line: 758, column: 51, scope: !1463)
!1466 = !DILocation(line: 762, column: 42, scope: !941)
!1467 = !DILocation(line: 760, column: 10, scope: !941)
!1468 = !DILocation(line: 760, column: 3, scope: !941)
!1469 = !DILocation(line: 764, column: 1, scope: !941)
!1470 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1471, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1473)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!6, !6, !58}
!1473 = !{!1474, !1475, !1476, !1477}
!1474 = !DILocalVariable(name: "msgid", arg: 1, scope: !1470, file: !100, line: 199, type: !6)
!1475 = !DILocalVariable(name: "s", arg: 2, scope: !1470, file: !100, line: 199, type: !58)
!1476 = !DILocalVariable(name: "translation", scope: !1470, file: !100, line: 201, type: !6)
!1477 = !DILocalVariable(name: "locale_code", scope: !1470, file: !100, line: 202, type: !6)
!1478 = !DILocation(line: 199, column: 28, scope: !1470)
!1479 = !DILocation(line: 199, column: 54, scope: !1470)
!1480 = !DILocation(line: 201, column: 29, scope: !1470)
!1481 = !DILocation(line: 201, column: 15, scope: !1470)
!1482 = !DILocation(line: 204, column: 19, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1470, file: !100, line: 204, column: 7)
!1484 = !DILocation(line: 204, column: 7, scope: !1470)
!1485 = !DILocation(line: 225, column: 17, scope: !1470)
!1486 = !DILocation(line: 202, column: 15, scope: !1470)
!1487 = !DILocalVariable(name: "s2", arg: 2, scope: !1488, file: !1489, line: 160, type: !6)
!1488 = distinct !DISubprogram(name: "strcaseeq0", scope: !1489, file: !1489, line: 160, type: !1490, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1492)
!1489 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1492 = !{!1493, !1487, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1493 = !DILocalVariable(name: "s1", arg: 1, scope: !1488, file: !1489, line: 160, type: !6)
!1494 = !DILocalVariable(name: "s20", arg: 3, scope: !1488, file: !1489, line: 160, type: !8)
!1495 = !DILocalVariable(name: "s21", arg: 4, scope: !1488, file: !1489, line: 160, type: !8)
!1496 = !DILocalVariable(name: "s22", arg: 5, scope: !1488, file: !1489, line: 160, type: !8)
!1497 = !DILocalVariable(name: "s23", arg: 6, scope: !1488, file: !1489, line: 160, type: !8)
!1498 = !DILocalVariable(name: "s24", arg: 7, scope: !1488, file: !1489, line: 160, type: !8)
!1499 = !DILocalVariable(name: "s25", arg: 8, scope: !1488, file: !1489, line: 160, type: !8)
!1500 = !DILocalVariable(name: "s26", arg: 9, scope: !1488, file: !1489, line: 160, type: !8)
!1501 = !DILocalVariable(name: "s27", arg: 10, scope: !1488, file: !1489, line: 160, type: !8)
!1502 = !DILocalVariable(name: "s28", arg: 11, scope: !1488, file: !1489, line: 160, type: !8)
!1503 = !DILocation(line: 160, column: 41, scope: !1488, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 226, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1470, file: !100, line: 226, column: 7)
!1506 = !DILocation(line: 160, column: 120, scope: !1488, inlinedAt: !1504)
!1507 = !DILocation(line: 160, column: 130, scope: !1488, inlinedAt: !1504)
!1508 = !DILocation(line: 162, column: 7, scope: !1509, inlinedAt: !1504)
!1509 = distinct !DILexicalBlock(scope: !1488, file: !1489, line: 162, column: 7)
!1510 = !DILocalVariable(name: "s2", arg: 2, scope: !1511, file: !1489, line: 146, type: !6)
!1511 = distinct !DISubprogram(name: "strcaseeq1", scope: !1489, file: !1489, line: 146, type: !1512, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1514 = !{!1515, !1510, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523}
!1515 = !DILocalVariable(name: "s1", arg: 1, scope: !1511, file: !1489, line: 146, type: !6)
!1516 = !DILocalVariable(name: "s21", arg: 3, scope: !1511, file: !1489, line: 146, type: !8)
!1517 = !DILocalVariable(name: "s22", arg: 4, scope: !1511, file: !1489, line: 146, type: !8)
!1518 = !DILocalVariable(name: "s23", arg: 5, scope: !1511, file: !1489, line: 146, type: !8)
!1519 = !DILocalVariable(name: "s24", arg: 6, scope: !1511, file: !1489, line: 146, type: !8)
!1520 = !DILocalVariable(name: "s25", arg: 7, scope: !1511, file: !1489, line: 146, type: !8)
!1521 = !DILocalVariable(name: "s26", arg: 8, scope: !1511, file: !1489, line: 146, type: !8)
!1522 = !DILocalVariable(name: "s27", arg: 9, scope: !1511, file: !1489, line: 146, type: !8)
!1523 = !DILocalVariable(name: "s28", arg: 10, scope: !1511, file: !1489, line: 146, type: !8)
!1524 = !DILocation(line: 146, column: 41, scope: !1511, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 167, column: 16, scope: !1526, inlinedAt: !1504)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !1489, line: 164, column: 11)
!1527 = distinct !DILexicalBlock(scope: !1509, file: !1489, line: 163, column: 5)
!1528 = !DILocation(line: 146, column: 110, scope: !1511, inlinedAt: !1525)
!1529 = !DILocation(line: 146, column: 120, scope: !1511, inlinedAt: !1525)
!1530 = !DILocation(line: 148, column: 7, scope: !1531, inlinedAt: !1525)
!1531 = distinct !DILexicalBlock(scope: !1511, file: !1489, line: 148, column: 7)
!1532 = !DILocalVariable(name: "s2", arg: 2, scope: !1533, file: !1489, line: 132, type: !6)
!1533 = distinct !DISubprogram(name: "strcaseeq2", scope: !1489, file: !1489, line: 132, type: !1534, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1536 = !{!1537, !1532, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1537 = !DILocalVariable(name: "s1", arg: 1, scope: !1533, file: !1489, line: 132, type: !6)
!1538 = !DILocalVariable(name: "s22", arg: 3, scope: !1533, file: !1489, line: 132, type: !8)
!1539 = !DILocalVariable(name: "s23", arg: 4, scope: !1533, file: !1489, line: 132, type: !8)
!1540 = !DILocalVariable(name: "s24", arg: 5, scope: !1533, file: !1489, line: 132, type: !8)
!1541 = !DILocalVariable(name: "s25", arg: 6, scope: !1533, file: !1489, line: 132, type: !8)
!1542 = !DILocalVariable(name: "s26", arg: 7, scope: !1533, file: !1489, line: 132, type: !8)
!1543 = !DILocalVariable(name: "s27", arg: 8, scope: !1533, file: !1489, line: 132, type: !8)
!1544 = !DILocalVariable(name: "s28", arg: 9, scope: !1533, file: !1489, line: 132, type: !8)
!1545 = !DILocation(line: 132, column: 41, scope: !1533, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 153, column: 16, scope: !1547, inlinedAt: !1525)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !1489, line: 150, column: 11)
!1548 = distinct !DILexicalBlock(scope: !1531, file: !1489, line: 149, column: 5)
!1549 = !DILocation(line: 132, column: 100, scope: !1533, inlinedAt: !1546)
!1550 = !DILocation(line: 132, column: 110, scope: !1533, inlinedAt: !1546)
!1551 = !DILocation(line: 134, column: 7, scope: !1552, inlinedAt: !1546)
!1552 = distinct !DILexicalBlock(scope: !1533, file: !1489, line: 134, column: 7)
!1553 = !DILocalVariable(name: "s2", arg: 2, scope: !1554, file: !1489, line: 118, type: !6)
!1554 = distinct !DISubprogram(name: "strcaseeq3", scope: !1489, file: !1489, line: 118, type: !1555, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1557)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1557 = !{!1558, !1553, !1559, !1560, !1561, !1562, !1563, !1564}
!1558 = !DILocalVariable(name: "s1", arg: 1, scope: !1554, file: !1489, line: 118, type: !6)
!1559 = !DILocalVariable(name: "s23", arg: 3, scope: !1554, file: !1489, line: 118, type: !8)
!1560 = !DILocalVariable(name: "s24", arg: 4, scope: !1554, file: !1489, line: 118, type: !8)
!1561 = !DILocalVariable(name: "s25", arg: 5, scope: !1554, file: !1489, line: 118, type: !8)
!1562 = !DILocalVariable(name: "s26", arg: 6, scope: !1554, file: !1489, line: 118, type: !8)
!1563 = !DILocalVariable(name: "s27", arg: 7, scope: !1554, file: !1489, line: 118, type: !8)
!1564 = !DILocalVariable(name: "s28", arg: 8, scope: !1554, file: !1489, line: 118, type: !8)
!1565 = !DILocation(line: 118, column: 41, scope: !1554, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 139, column: 16, scope: !1567, inlinedAt: !1546)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !1489, line: 136, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1552, file: !1489, line: 135, column: 5)
!1569 = !DILocation(line: 118, column: 90, scope: !1554, inlinedAt: !1566)
!1570 = !DILocation(line: 118, column: 100, scope: !1554, inlinedAt: !1566)
!1571 = !DILocation(line: 120, column: 7, scope: !1572, inlinedAt: !1566)
!1572 = distinct !DILexicalBlock(scope: !1554, file: !1489, line: 120, column: 7)
!1573 = !DILocation(line: 120, column: 7, scope: !1554, inlinedAt: !1566)
!1574 = !DILocalVariable(name: "s2", arg: 2, scope: !1575, file: !1489, line: 104, type: !6)
!1575 = distinct !DISubprogram(name: "strcaseeq4", scope: !1489, file: !1489, line: 104, type: !1576, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1578 = !{!1579, !1574, !1580, !1581, !1582, !1583, !1584}
!1579 = !DILocalVariable(name: "s1", arg: 1, scope: !1575, file: !1489, line: 104, type: !6)
!1580 = !DILocalVariable(name: "s24", arg: 3, scope: !1575, file: !1489, line: 104, type: !8)
!1581 = !DILocalVariable(name: "s25", arg: 4, scope: !1575, file: !1489, line: 104, type: !8)
!1582 = !DILocalVariable(name: "s26", arg: 5, scope: !1575, file: !1489, line: 104, type: !8)
!1583 = !DILocalVariable(name: "s27", arg: 6, scope: !1575, file: !1489, line: 104, type: !8)
!1584 = !DILocalVariable(name: "s28", arg: 7, scope: !1575, file: !1489, line: 104, type: !8)
!1585 = !DILocation(line: 104, column: 41, scope: !1575, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 125, column: 16, scope: !1587, inlinedAt: !1566)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !1489, line: 122, column: 11)
!1588 = distinct !DILexicalBlock(scope: !1572, file: !1489, line: 121, column: 5)
!1589 = !DILocation(line: 104, column: 80, scope: !1575, inlinedAt: !1586)
!1590 = !DILocation(line: 104, column: 90, scope: !1575, inlinedAt: !1586)
!1591 = !DILocation(line: 106, column: 7, scope: !1592, inlinedAt: !1586)
!1592 = distinct !DILexicalBlock(scope: !1575, file: !1489, line: 106, column: 7)
!1593 = !DILocation(line: 106, column: 7, scope: !1575, inlinedAt: !1586)
!1594 = !DILocalVariable(name: "s2", arg: 2, scope: !1595, file: !1489, line: 90, type: !6)
!1595 = distinct !DISubprogram(name: "strcaseeq5", scope: !1489, file: !1489, line: 90, type: !1596, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!25, !6, !6, !8, !8, !8, !8}
!1598 = !{!1599, !1594, !1600, !1601, !1602, !1603}
!1599 = !DILocalVariable(name: "s1", arg: 1, scope: !1595, file: !1489, line: 90, type: !6)
!1600 = !DILocalVariable(name: "s25", arg: 3, scope: !1595, file: !1489, line: 90, type: !8)
!1601 = !DILocalVariable(name: "s26", arg: 4, scope: !1595, file: !1489, line: 90, type: !8)
!1602 = !DILocalVariable(name: "s27", arg: 5, scope: !1595, file: !1489, line: 90, type: !8)
!1603 = !DILocalVariable(name: "s28", arg: 6, scope: !1595, file: !1489, line: 90, type: !8)
!1604 = !DILocation(line: 90, column: 41, scope: !1595, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 111, column: 16, scope: !1606, inlinedAt: !1586)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !1489, line: 108, column: 11)
!1607 = distinct !DILexicalBlock(scope: !1592, file: !1489, line: 107, column: 5)
!1608 = !DILocation(line: 90, column: 70, scope: !1595, inlinedAt: !1605)
!1609 = !DILocation(line: 90, column: 80, scope: !1595, inlinedAt: !1605)
!1610 = !DILocation(line: 92, column: 7, scope: !1611, inlinedAt: !1605)
!1611 = distinct !DILexicalBlock(scope: !1595, file: !1489, line: 92, column: 7)
!1612 = !DILocation(line: 92, column: 7, scope: !1595, inlinedAt: !1605)
!1613 = !DILocation(line: 227, column: 12, scope: !1505)
!1614 = !DILocation(line: 227, column: 21, scope: !1505)
!1615 = !DILocation(line: 227, column: 5, scope: !1505)
!1616 = !DILocation(line: 146, column: 41, scope: !1511, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 167, column: 16, scope: !1526, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 228, column: 7, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1470, file: !100, line: 228, column: 7)
!1620 = !DILocation(line: 146, column: 110, scope: !1511, inlinedAt: !1617)
!1621 = !DILocation(line: 146, column: 120, scope: !1511, inlinedAt: !1617)
!1622 = !DILocation(line: 148, column: 7, scope: !1531, inlinedAt: !1617)
!1623 = !DILocation(line: 132, column: 41, scope: !1533, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 153, column: 16, scope: !1547, inlinedAt: !1617)
!1625 = !DILocation(line: 132, column: 100, scope: !1533, inlinedAt: !1624)
!1626 = !DILocation(line: 132, column: 110, scope: !1533, inlinedAt: !1624)
!1627 = !DILocation(line: 134, column: 7, scope: !1552, inlinedAt: !1624)
!1628 = !DILocation(line: 134, column: 7, scope: !1533, inlinedAt: !1624)
!1629 = !DILocation(line: 118, column: 41, scope: !1554, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 139, column: 16, scope: !1567, inlinedAt: !1624)
!1631 = !DILocation(line: 118, column: 90, scope: !1554, inlinedAt: !1630)
!1632 = !DILocation(line: 118, column: 100, scope: !1554, inlinedAt: !1630)
!1633 = !DILocation(line: 120, column: 7, scope: !1572, inlinedAt: !1630)
!1634 = !DILocation(line: 120, column: 7, scope: !1554, inlinedAt: !1630)
!1635 = !DILocation(line: 104, column: 41, scope: !1575, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 125, column: 16, scope: !1587, inlinedAt: !1630)
!1637 = !DILocation(line: 104, column: 80, scope: !1575, inlinedAt: !1636)
!1638 = !DILocation(line: 104, column: 90, scope: !1575, inlinedAt: !1636)
!1639 = !DILocation(line: 106, column: 7, scope: !1592, inlinedAt: !1636)
!1640 = !DILocation(line: 106, column: 7, scope: !1575, inlinedAt: !1636)
!1641 = !DILocation(line: 90, column: 41, scope: !1595, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 111, column: 16, scope: !1606, inlinedAt: !1636)
!1643 = !DILocation(line: 90, column: 70, scope: !1595, inlinedAt: !1642)
!1644 = !DILocation(line: 90, column: 80, scope: !1595, inlinedAt: !1642)
!1645 = !DILocation(line: 92, column: 7, scope: !1611, inlinedAt: !1642)
!1646 = !DILocation(line: 92, column: 7, scope: !1595, inlinedAt: !1642)
!1647 = !DILocalVariable(name: "s2", arg: 2, scope: !1648, file: !1489, line: 76, type: !6)
!1648 = distinct !DISubprogram(name: "strcaseeq6", scope: !1489, file: !1489, line: 76, type: !1649, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1651)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!25, !6, !6, !8, !8, !8}
!1651 = !{!1652, !1647, !1653, !1654, !1655}
!1652 = !DILocalVariable(name: "s1", arg: 1, scope: !1648, file: !1489, line: 76, type: !6)
!1653 = !DILocalVariable(name: "s26", arg: 3, scope: !1648, file: !1489, line: 76, type: !8)
!1654 = !DILocalVariable(name: "s27", arg: 4, scope: !1648, file: !1489, line: 76, type: !8)
!1655 = !DILocalVariable(name: "s28", arg: 5, scope: !1648, file: !1489, line: 76, type: !8)
!1656 = !DILocation(line: 76, column: 41, scope: !1648, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 97, column: 16, scope: !1658, inlinedAt: !1642)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !1489, line: 94, column: 11)
!1659 = distinct !DILexicalBlock(scope: !1611, file: !1489, line: 93, column: 5)
!1660 = !DILocation(line: 76, column: 60, scope: !1648, inlinedAt: !1657)
!1661 = !DILocation(line: 76, column: 70, scope: !1648, inlinedAt: !1657)
!1662 = !DILocation(line: 78, column: 7, scope: !1663, inlinedAt: !1657)
!1663 = distinct !DILexicalBlock(scope: !1648, file: !1489, line: 78, column: 7)
!1664 = !DILocation(line: 78, column: 7, scope: !1648, inlinedAt: !1657)
!1665 = !DILocalVariable(name: "s2", arg: 2, scope: !1666, file: !1489, line: 62, type: !6)
!1666 = distinct !DISubprogram(name: "strcaseeq7", scope: !1489, file: !1489, line: 62, type: !1667, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!25, !6, !6, !8, !8}
!1669 = !{!1670, !1665, !1671, !1672}
!1670 = !DILocalVariable(name: "s1", arg: 1, scope: !1666, file: !1489, line: 62, type: !6)
!1671 = !DILocalVariable(name: "s27", arg: 3, scope: !1666, file: !1489, line: 62, type: !8)
!1672 = !DILocalVariable(name: "s28", arg: 4, scope: !1666, file: !1489, line: 62, type: !8)
!1673 = !DILocation(line: 62, column: 41, scope: !1666, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 83, column: 16, scope: !1675, inlinedAt: !1657)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !1489, line: 80, column: 11)
!1676 = distinct !DILexicalBlock(scope: !1663, file: !1489, line: 79, column: 5)
!1677 = !DILocation(line: 62, column: 50, scope: !1666, inlinedAt: !1674)
!1678 = !DILocation(line: 62, column: 60, scope: !1666, inlinedAt: !1674)
!1679 = !DILocation(line: 64, column: 7, scope: !1680, inlinedAt: !1674)
!1680 = distinct !DILexicalBlock(scope: !1666, file: !1489, line: 64, column: 7)
!1681 = !DILocation(line: 228, column: 7, scope: !1470)
!1682 = !DILocation(line: 229, column: 12, scope: !1619)
!1683 = !DILocation(line: 229, column: 21, scope: !1619)
!1684 = !DILocation(line: 229, column: 5, scope: !1619)
!1685 = !DILocation(line: 231, column: 13, scope: !1470)
!1686 = !DILocation(line: 231, column: 11, scope: !1470)
!1687 = !DILocation(line: 231, column: 3, scope: !1470)
!1688 = !DILocation(line: 232, column: 1, scope: !1470)
!1689 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !1690, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!50, !6, !94, !813}
!1692 = !{!1693, !1694, !1695}
!1693 = !DILocalVariable(name: "arg", arg: 1, scope: !1689, file: !100, line: 791, type: !6)
!1694 = !DILocalVariable(name: "argsize", arg: 2, scope: !1689, file: !100, line: 791, type: !94)
!1695 = !DILocalVariable(name: "o", arg: 3, scope: !1689, file: !100, line: 792, type: !813)
!1696 = !DILocation(line: 791, column: 29, scope: !1689)
!1697 = !DILocation(line: 791, column: 41, scope: !1689)
!1698 = !DILocation(line: 792, column: 47, scope: !1689)
!1699 = !DILocalVariable(name: "arg", arg: 1, scope: !1700, file: !100, line: 804, type: !6)
!1700 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !1701, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!50, !6, !94, !538, !813}
!1703 = !{!1699, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711}
!1704 = !DILocalVariable(name: "argsize", arg: 2, scope: !1700, file: !100, line: 804, type: !94)
!1705 = !DILocalVariable(name: "size", arg: 3, scope: !1700, file: !100, line: 804, type: !538)
!1706 = !DILocalVariable(name: "o", arg: 4, scope: !1700, file: !100, line: 805, type: !813)
!1707 = !DILocalVariable(name: "p", scope: !1700, file: !100, line: 807, type: !813)
!1708 = !DILocalVariable(name: "e", scope: !1700, file: !100, line: 808, type: !25)
!1709 = !DILocalVariable(name: "flags", scope: !1700, file: !100, line: 810, type: !25)
!1710 = !DILocalVariable(name: "bufsize", scope: !1700, file: !100, line: 811, type: !94)
!1711 = !DILocalVariable(name: "buf", scope: !1700, file: !100, line: 815, type: !50)
!1712 = !DILocation(line: 804, column: 33, scope: !1700, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 794, column: 10, scope: !1689)
!1714 = !DILocation(line: 804, column: 45, scope: !1700, inlinedAt: !1713)
!1715 = !DILocation(line: 804, column: 62, scope: !1700, inlinedAt: !1713)
!1716 = !DILocation(line: 805, column: 51, scope: !1700, inlinedAt: !1713)
!1717 = !DILocation(line: 807, column: 37, scope: !1700, inlinedAt: !1713)
!1718 = !DILocation(line: 807, column: 33, scope: !1700, inlinedAt: !1713)
!1719 = !DILocation(line: 808, column: 11, scope: !1700, inlinedAt: !1713)
!1720 = !DILocation(line: 808, column: 7, scope: !1700, inlinedAt: !1713)
!1721 = !DILocation(line: 810, column: 18, scope: !1700, inlinedAt: !1713)
!1722 = !DILocation(line: 810, column: 24, scope: !1700, inlinedAt: !1713)
!1723 = !DILocation(line: 810, column: 7, scope: !1700, inlinedAt: !1713)
!1724 = !DILocation(line: 811, column: 69, scope: !1700, inlinedAt: !1713)
!1725 = !DILocation(line: 812, column: 53, scope: !1700, inlinedAt: !1713)
!1726 = !DILocation(line: 813, column: 49, scope: !1700, inlinedAt: !1713)
!1727 = !DILocation(line: 814, column: 49, scope: !1700, inlinedAt: !1713)
!1728 = !DILocation(line: 811, column: 20, scope: !1700, inlinedAt: !1713)
!1729 = !DILocation(line: 814, column: 62, scope: !1700, inlinedAt: !1713)
!1730 = !DILocation(line: 811, column: 10, scope: !1700, inlinedAt: !1713)
!1731 = !DILocalVariable(name: "n", arg: 1, scope: !1732, file: !534, line: 220, type: !94)
!1732 = distinct !DISubprogram(name: "xcharalloc", scope: !534, file: !534, line: 220, type: !1733, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!50, !94}
!1735 = !{!1731}
!1736 = !DILocation(line: 220, column: 20, scope: !1732, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 815, column: 15, scope: !1700, inlinedAt: !1713)
!1738 = !DILocation(line: 222, column: 10, scope: !1732, inlinedAt: !1737)
!1739 = !DILocation(line: 815, column: 9, scope: !1700, inlinedAt: !1713)
!1740 = !DILocation(line: 816, column: 60, scope: !1700, inlinedAt: !1713)
!1741 = !DILocation(line: 818, column: 32, scope: !1700, inlinedAt: !1713)
!1742 = !DILocation(line: 818, column: 47, scope: !1700, inlinedAt: !1713)
!1743 = !DILocation(line: 816, column: 3, scope: !1700, inlinedAt: !1713)
!1744 = !DILocation(line: 819, column: 9, scope: !1700, inlinedAt: !1713)
!1745 = !DILocation(line: 794, column: 3, scope: !1689)
!1746 = !DILocation(line: 804, column: 33, scope: !1700)
!1747 = !DILocation(line: 804, column: 45, scope: !1700)
!1748 = !DILocation(line: 804, column: 62, scope: !1700)
!1749 = !DILocation(line: 805, column: 51, scope: !1700)
!1750 = !DILocation(line: 807, column: 37, scope: !1700)
!1751 = !DILocation(line: 807, column: 33, scope: !1700)
!1752 = !DILocation(line: 808, column: 11, scope: !1700)
!1753 = !DILocation(line: 808, column: 7, scope: !1700)
!1754 = !DILocation(line: 810, column: 18, scope: !1700)
!1755 = !DILocation(line: 810, column: 27, scope: !1700)
!1756 = !DILocation(line: 810, column: 24, scope: !1700)
!1757 = !DILocation(line: 810, column: 7, scope: !1700)
!1758 = !DILocation(line: 811, column: 69, scope: !1700)
!1759 = !DILocation(line: 812, column: 53, scope: !1700)
!1760 = !DILocation(line: 813, column: 49, scope: !1700)
!1761 = !DILocation(line: 814, column: 49, scope: !1700)
!1762 = !DILocation(line: 811, column: 20, scope: !1700)
!1763 = !DILocation(line: 814, column: 62, scope: !1700)
!1764 = !DILocation(line: 811, column: 10, scope: !1700)
!1765 = !DILocation(line: 220, column: 20, scope: !1732, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 815, column: 15, scope: !1700)
!1767 = !DILocation(line: 222, column: 10, scope: !1732, inlinedAt: !1766)
!1768 = !DILocation(line: 815, column: 9, scope: !1700)
!1769 = !DILocation(line: 816, column: 60, scope: !1700)
!1770 = !DILocation(line: 818, column: 32, scope: !1700)
!1771 = !DILocation(line: 818, column: 47, scope: !1700)
!1772 = !DILocation(line: 816, column: 3, scope: !1700)
!1773 = !DILocation(line: 819, column: 9, scope: !1700)
!1774 = !DILocation(line: 820, column: 7, scope: !1700)
!1775 = !DILocation(line: 821, column: 11, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1700, file: !100, line: 820, column: 7)
!1777 = !{!1778, !1778, i64 0}
!1778 = !{!"long", !584, i64 0}
!1779 = !DILocation(line: 821, column: 5, scope: !1776)
!1780 = !DILocation(line: 822, column: 3, scope: !1700)
!1781 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !663, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1782)
!1782 = !{!1783, !1784}
!1783 = !DILocalVariable(name: "sv", scope: !1781, file: !100, line: 842, type: !127)
!1784 = !DILocalVariable(name: "i", scope: !1781, file: !100, line: 843, type: !25)
!1785 = !DILocation(line: 842, column: 24, scope: !1781)
!1786 = !DILocation(line: 842, column: 19, scope: !1781)
!1787 = !DILocation(line: 843, column: 7, scope: !1781)
!1788 = !DILocation(line: 844, column: 19, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !100, line: 844, column: 3)
!1790 = distinct !DILexicalBlock(scope: !1781, file: !100, line: 844, column: 3)
!1791 = !DILocation(line: 844, column: 17, scope: !1789)
!1792 = !DILocation(line: 844, column: 3, scope: !1790)
!1793 = !DILocation(line: 845, column: 17, scope: !1789)
!1794 = !{!1795, !583, i64 8}
!1795 = !{!"slotvec", !1778, i64 0, !583, i64 8}
!1796 = !DILocation(line: 845, column: 5, scope: !1789)
!1797 = !DILocation(line: 844, column: 28, scope: !1789)
!1798 = distinct !{!1798, !1792, !1799}
!1799 = !DILocation(line: 845, column: 20, scope: !1790)
!1800 = !DILocation(line: 846, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1781, file: !100, line: 846, column: 7)
!1802 = !DILocation(line: 846, column: 17, scope: !1801)
!1803 = !DILocation(line: 846, column: 7, scope: !1781)
!1804 = !DILocation(line: 848, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !100, line: 847, column: 5)
!1806 = !DILocation(line: 849, column: 21, scope: !1805)
!1807 = !{!1795, !1778, i64 0}
!1808 = !DILocation(line: 850, column: 20, scope: !1805)
!1809 = !DILocation(line: 851, column: 5, scope: !1805)
!1810 = !DILocation(line: 852, column: 10, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1781, file: !100, line: 852, column: 7)
!1812 = !DILocation(line: 852, column: 7, scope: !1781)
!1813 = !DILocation(line: 854, column: 13, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !100, line: 853, column: 5)
!1815 = !DILocation(line: 854, column: 7, scope: !1814)
!1816 = !DILocation(line: 855, column: 15, scope: !1814)
!1817 = !DILocation(line: 856, column: 5, scope: !1814)
!1818 = !DILocation(line: 857, column: 10, scope: !1781)
!1819 = !DILocation(line: 858, column: 1, scope: !1781)
!1820 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !1821, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1823)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!50, !25, !6}
!1823 = !{!1824, !1825}
!1824 = !DILocalVariable(name: "n", arg: 1, scope: !1820, file: !100, line: 922, type: !25)
!1825 = !DILocalVariable(name: "arg", arg: 2, scope: !1820, file: !100, line: 922, type: !6)
!1826 = !DILocation(line: 922, column: 17, scope: !1820)
!1827 = !DILocation(line: 922, column: 32, scope: !1820)
!1828 = !DILocation(line: 924, column: 10, scope: !1820)
!1829 = !DILocation(line: 924, column: 3, scope: !1820)
!1830 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !1831, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1833)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!50, !25, !6, !94, !813}
!1833 = !{!1834, !1835, !1836, !1837, !1838, !1839, !1840, !1843, !1845, !1846, !1847}
!1834 = !DILocalVariable(name: "n", arg: 1, scope: !1830, file: !100, line: 869, type: !25)
!1835 = !DILocalVariable(name: "arg", arg: 2, scope: !1830, file: !100, line: 869, type: !6)
!1836 = !DILocalVariable(name: "argsize", arg: 3, scope: !1830, file: !100, line: 869, type: !94)
!1837 = !DILocalVariable(name: "options", arg: 4, scope: !1830, file: !100, line: 870, type: !813)
!1838 = !DILocalVariable(name: "e", scope: !1830, file: !100, line: 872, type: !25)
!1839 = !DILocalVariable(name: "sv", scope: !1830, file: !100, line: 874, type: !127)
!1840 = !DILocalVariable(name: "preallocated", scope: !1841, file: !100, line: 881, type: !17)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !100, line: 880, column: 5)
!1842 = distinct !DILexicalBlock(scope: !1830, file: !100, line: 879, column: 7)
!1843 = !DILocalVariable(name: "size", scope: !1844, file: !100, line: 894, type: !94)
!1844 = distinct !DILexicalBlock(scope: !1830, file: !100, line: 893, column: 3)
!1845 = !DILocalVariable(name: "val", scope: !1844, file: !100, line: 895, type: !50)
!1846 = !DILocalVariable(name: "flags", scope: !1844, file: !100, line: 897, type: !25)
!1847 = !DILocalVariable(name: "qsize", scope: !1844, file: !100, line: 898, type: !94)
!1848 = !DILocation(line: 869, column: 25, scope: !1830)
!1849 = !DILocation(line: 869, column: 40, scope: !1830)
!1850 = !DILocation(line: 869, column: 52, scope: !1830)
!1851 = !DILocation(line: 870, column: 51, scope: !1830)
!1852 = !DILocation(line: 872, column: 11, scope: !1830)
!1853 = !DILocation(line: 872, column: 7, scope: !1830)
!1854 = !DILocation(line: 874, column: 24, scope: !1830)
!1855 = !DILocation(line: 874, column: 19, scope: !1830)
!1856 = !DILocation(line: 876, column: 9, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1830, file: !100, line: 876, column: 7)
!1858 = !DILocation(line: 876, column: 7, scope: !1830)
!1859 = !DILocation(line: 877, column: 5, scope: !1857)
!1860 = !DILocation(line: 879, column: 7, scope: !1842)
!1861 = !DILocation(line: 879, column: 14, scope: !1842)
!1862 = !DILocation(line: 879, column: 7, scope: !1830)
!1863 = !DILocation(line: 881, column: 31, scope: !1841)
!1864 = !DILocation(line: 883, column: 67, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1841, file: !100, line: 883, column: 11)
!1866 = !DILocation(line: 883, column: 11, scope: !1841)
!1867 = !DILocation(line: 884, column: 9, scope: !1865)
!1868 = !DILocation(line: 886, column: 32, scope: !1841)
!1869 = !DILocation(line: 886, column: 61, scope: !1841)
!1870 = !DILocation(line: 886, column: 58, scope: !1841)
!1871 = !DILocation(line: 886, column: 66, scope: !1841)
!1872 = !DILocation(line: 886, column: 22, scope: !1841)
!1873 = !DILocation(line: 886, column: 15, scope: !1841)
!1874 = !DILocation(line: 887, column: 11, scope: !1841)
!1875 = !DILocation(line: 888, column: 15, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1841, file: !100, line: 887, column: 11)
!1877 = !{i64 0, i64 8, !1777, i64 8, i64 8, !582}
!1878 = !DILocation(line: 888, column: 9, scope: !1876)
!1879 = !DILocation(line: 889, column: 20, scope: !1841)
!1880 = !DILocation(line: 889, column: 18, scope: !1841)
!1881 = !DILocation(line: 889, column: 7, scope: !1841)
!1882 = !DILocation(line: 889, column: 38, scope: !1841)
!1883 = !DILocation(line: 889, column: 31, scope: !1841)
!1884 = !DILocation(line: 889, column: 48, scope: !1841)
!1885 = !DILocation(line: 890, column: 14, scope: !1841)
!1886 = !DILocation(line: 891, column: 5, scope: !1841)
!1887 = !DILocation(line: 894, column: 19, scope: !1844)
!1888 = !DILocation(line: 894, column: 25, scope: !1844)
!1889 = !DILocation(line: 894, column: 12, scope: !1844)
!1890 = !DILocation(line: 895, column: 23, scope: !1844)
!1891 = !DILocation(line: 895, column: 11, scope: !1844)
!1892 = !DILocation(line: 897, column: 26, scope: !1844)
!1893 = !DILocation(line: 897, column: 32, scope: !1844)
!1894 = !DILocation(line: 897, column: 9, scope: !1844)
!1895 = !DILocation(line: 899, column: 55, scope: !1844)
!1896 = !DILocation(line: 900, column: 46, scope: !1844)
!1897 = !DILocation(line: 901, column: 55, scope: !1844)
!1898 = !DILocation(line: 902, column: 55, scope: !1844)
!1899 = !DILocation(line: 898, column: 20, scope: !1844)
!1900 = !DILocation(line: 898, column: 12, scope: !1844)
!1901 = !DILocation(line: 904, column: 14, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1844, file: !100, line: 904, column: 9)
!1903 = !DILocation(line: 904, column: 9, scope: !1844)
!1904 = !DILocation(line: 906, column: 35, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !100, line: 905, column: 7)
!1906 = !DILocation(line: 906, column: 20, scope: !1905)
!1907 = !DILocation(line: 907, column: 17, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !100, line: 907, column: 13)
!1909 = !DILocation(line: 907, column: 13, scope: !1905)
!1910 = !DILocation(line: 908, column: 11, scope: !1908)
!1911 = !DILocation(line: 220, column: 20, scope: !1732, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 909, column: 27, scope: !1905)
!1913 = !DILocation(line: 222, column: 10, scope: !1732, inlinedAt: !1912)
!1914 = !DILocation(line: 909, column: 19, scope: !1905)
!1915 = !DILocation(line: 910, column: 69, scope: !1905)
!1916 = !DILocation(line: 912, column: 44, scope: !1905)
!1917 = !DILocation(line: 913, column: 44, scope: !1905)
!1918 = !DILocation(line: 910, column: 9, scope: !1905)
!1919 = !DILocation(line: 914, column: 7, scope: !1905)
!1920 = !DILocation(line: 916, column: 11, scope: !1844)
!1921 = !DILocation(line: 917, column: 5, scope: !1844)
!1922 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !1923, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1925)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!50, !25, !6, !94}
!1925 = !{!1926, !1927, !1928}
!1926 = !DILocalVariable(name: "n", arg: 1, scope: !1922, file: !100, line: 928, type: !25)
!1927 = !DILocalVariable(name: "arg", arg: 2, scope: !1922, file: !100, line: 928, type: !6)
!1928 = !DILocalVariable(name: "argsize", arg: 3, scope: !1922, file: !100, line: 928, type: !94)
!1929 = !DILocation(line: 928, column: 21, scope: !1922)
!1930 = !DILocation(line: 928, column: 36, scope: !1922)
!1931 = !DILocation(line: 928, column: 48, scope: !1922)
!1932 = !DILocation(line: 930, column: 10, scope: !1922)
!1933 = !DILocation(line: 930, column: 3, scope: !1922)
!1934 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !1935, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!50, !6}
!1937 = !{!1938}
!1938 = !DILocalVariable(name: "arg", arg: 1, scope: !1934, file: !100, line: 934, type: !6)
!1939 = !DILocation(line: 934, column: 23, scope: !1934)
!1940 = !DILocation(line: 922, column: 17, scope: !1820, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 936, column: 10, scope: !1934)
!1942 = !DILocation(line: 922, column: 32, scope: !1820, inlinedAt: !1941)
!1943 = !DILocation(line: 924, column: 10, scope: !1820, inlinedAt: !1941)
!1944 = !DILocation(line: 936, column: 3, scope: !1934)
!1945 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !1946, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1948)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!50, !6, !94}
!1948 = !{!1949, !1950}
!1949 = !DILocalVariable(name: "arg", arg: 1, scope: !1945, file: !100, line: 940, type: !6)
!1950 = !DILocalVariable(name: "argsize", arg: 2, scope: !1945, file: !100, line: 940, type: !94)
!1951 = !DILocation(line: 940, column: 27, scope: !1945)
!1952 = !DILocation(line: 940, column: 39, scope: !1945)
!1953 = !DILocation(line: 928, column: 21, scope: !1922, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 942, column: 10, scope: !1945)
!1955 = !DILocation(line: 928, column: 36, scope: !1922, inlinedAt: !1954)
!1956 = !DILocation(line: 928, column: 48, scope: !1922, inlinedAt: !1954)
!1957 = !DILocation(line: 930, column: 10, scope: !1922, inlinedAt: !1954)
!1958 = !DILocation(line: 942, column: 3, scope: !1945)
!1959 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !1960, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!50, !25, !58, !6}
!1962 = !{!1963, !1964, !1965, !1966}
!1963 = !DILocalVariable(name: "n", arg: 1, scope: !1959, file: !100, line: 946, type: !25)
!1964 = !DILocalVariable(name: "s", arg: 2, scope: !1959, file: !100, line: 946, type: !58)
!1965 = !DILocalVariable(name: "arg", arg: 3, scope: !1959, file: !100, line: 946, type: !6)
!1966 = !DILocalVariable(name: "o", scope: !1959, file: !100, line: 948, type: !814)
!1967 = !DILocalVariable(name: "o", scope: !1968, file: !100, line: 187, type: !107)
!1968 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !1969, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!107, !58}
!1971 = !{!1972, !1967}
!1972 = !DILocalVariable(name: "style", arg: 1, scope: !1968, file: !100, line: 185, type: !58)
!1973 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!1974 = !DILocation(line: 187, column: 26, scope: !1968, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 948, column: 36, scope: !1959)
!1976 = !DILocation(line: 946, column: 23, scope: !1959)
!1977 = !DILocation(line: 946, column: 45, scope: !1959)
!1978 = !DILocation(line: 946, column: 60, scope: !1959)
!1979 = !DILocation(line: 948, column: 3, scope: !1959)
!1980 = !DILocation(line: 948, column: 32, scope: !1959)
!1981 = !DILocation(line: 185, column: 48, scope: !1968, inlinedAt: !1975)
!1982 = !DILocation(line: 187, column: 3, scope: !1968, inlinedAt: !1975)
!1983 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!1984 = !DILocation(line: 188, column: 13, scope: !1985, inlinedAt: !1975)
!1985 = distinct !DILexicalBlock(scope: !1968, file: !100, line: 188, column: 7)
!1986 = !DILocation(line: 188, column: 7, scope: !1968, inlinedAt: !1975)
!1987 = !DILocation(line: 189, column: 5, scope: !1985, inlinedAt: !1975)
!1988 = !{!1989}
!1989 = distinct !{!1989, !1990, !"quoting_options_from_style: argument 0"}
!1990 = distinct !{!1990, !"quoting_options_from_style"}
!1991 = !DILocation(line: 191, column: 10, scope: !1968, inlinedAt: !1975)
!1992 = !DILocation(line: 192, column: 1, scope: !1968, inlinedAt: !1975)
!1993 = !DILocation(line: 949, column: 10, scope: !1959)
!1994 = !DILocation(line: 950, column: 1, scope: !1959)
!1995 = !DILocation(line: 949, column: 3, scope: !1959)
!1996 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !1997, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!50, !25, !58, !6, !94}
!1999 = !{!2000, !2001, !2002, !2003, !2004}
!2000 = !DILocalVariable(name: "n", arg: 1, scope: !1996, file: !100, line: 953, type: !25)
!2001 = !DILocalVariable(name: "s", arg: 2, scope: !1996, file: !100, line: 953, type: !58)
!2002 = !DILocalVariable(name: "arg", arg: 3, scope: !1996, file: !100, line: 954, type: !6)
!2003 = !DILocalVariable(name: "argsize", arg: 4, scope: !1996, file: !100, line: 954, type: !94)
!2004 = !DILocalVariable(name: "o", scope: !1996, file: !100, line: 956, type: !814)
!2005 = !DILocation(line: 187, column: 26, scope: !1968, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 956, column: 36, scope: !1996)
!2007 = !DILocation(line: 953, column: 27, scope: !1996)
!2008 = !DILocation(line: 953, column: 49, scope: !1996)
!2009 = !DILocation(line: 954, column: 35, scope: !1996)
!2010 = !DILocation(line: 954, column: 47, scope: !1996)
!2011 = !DILocation(line: 956, column: 3, scope: !1996)
!2012 = !DILocation(line: 956, column: 32, scope: !1996)
!2013 = !DILocation(line: 185, column: 48, scope: !1968, inlinedAt: !2006)
!2014 = !DILocation(line: 187, column: 3, scope: !1968, inlinedAt: !2006)
!2015 = !DILocation(line: 188, column: 13, scope: !1985, inlinedAt: !2006)
!2016 = !DILocation(line: 188, column: 7, scope: !1968, inlinedAt: !2006)
!2017 = !DILocation(line: 189, column: 5, scope: !1985, inlinedAt: !2006)
!2018 = !{!2019}
!2019 = distinct !{!2019, !2020, !"quoting_options_from_style: argument 0"}
!2020 = distinct !{!2020, !"quoting_options_from_style"}
!2021 = !DILocation(line: 191, column: 10, scope: !1968, inlinedAt: !2006)
!2022 = !DILocation(line: 192, column: 1, scope: !1968, inlinedAt: !2006)
!2023 = !DILocation(line: 957, column: 10, scope: !1996)
!2024 = !DILocation(line: 958, column: 1, scope: !1996)
!2025 = !DILocation(line: 957, column: 3, scope: !1996)
!2026 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2027, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!50, !58, !6}
!2029 = !{!2030, !2031}
!2030 = !DILocalVariable(name: "s", arg: 1, scope: !2026, file: !100, line: 961, type: !58)
!2031 = !DILocalVariable(name: "arg", arg: 2, scope: !2026, file: !100, line: 961, type: !6)
!2032 = !DILocation(line: 187, column: 26, scope: !1968, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 948, column: 36, scope: !1959, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 963, column: 10, scope: !2026)
!2035 = !DILocation(line: 961, column: 36, scope: !2026)
!2036 = !DILocation(line: 961, column: 51, scope: !2026)
!2037 = !DILocation(line: 946, column: 23, scope: !1959, inlinedAt: !2034)
!2038 = !DILocation(line: 946, column: 45, scope: !1959, inlinedAt: !2034)
!2039 = !DILocation(line: 946, column: 60, scope: !1959, inlinedAt: !2034)
!2040 = !DILocation(line: 948, column: 3, scope: !1959, inlinedAt: !2034)
!2041 = !DILocation(line: 948, column: 32, scope: !1959, inlinedAt: !2034)
!2042 = !DILocation(line: 185, column: 48, scope: !1968, inlinedAt: !2033)
!2043 = !DILocation(line: 187, column: 3, scope: !1968, inlinedAt: !2033)
!2044 = !DILocation(line: 188, column: 13, scope: !1985, inlinedAt: !2033)
!2045 = !DILocation(line: 188, column: 7, scope: !1968, inlinedAt: !2033)
!2046 = !DILocation(line: 189, column: 5, scope: !1985, inlinedAt: !2033)
!2047 = !{!2048}
!2048 = distinct !{!2048, !2049, !"quoting_options_from_style: argument 0"}
!2049 = distinct !{!2049, !"quoting_options_from_style"}
!2050 = !DILocation(line: 191, column: 10, scope: !1968, inlinedAt: !2033)
!2051 = !DILocation(line: 192, column: 1, scope: !1968, inlinedAt: !2033)
!2052 = !DILocation(line: 949, column: 10, scope: !1959, inlinedAt: !2034)
!2053 = !DILocation(line: 950, column: 1, scope: !1959, inlinedAt: !2034)
!2054 = !DILocation(line: 963, column: 3, scope: !2026)
!2055 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2056, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!50, !58, !6, !94}
!2058 = !{!2059, !2060, !2061}
!2059 = !DILocalVariable(name: "s", arg: 1, scope: !2055, file: !100, line: 967, type: !58)
!2060 = !DILocalVariable(name: "arg", arg: 2, scope: !2055, file: !100, line: 967, type: !6)
!2061 = !DILocalVariable(name: "argsize", arg: 3, scope: !2055, file: !100, line: 967, type: !94)
!2062 = !DILocation(line: 187, column: 26, scope: !1968, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 956, column: 36, scope: !1996, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 969, column: 10, scope: !2055)
!2065 = !DILocation(line: 967, column: 40, scope: !2055)
!2066 = !DILocation(line: 967, column: 55, scope: !2055)
!2067 = !DILocation(line: 967, column: 67, scope: !2055)
!2068 = !DILocation(line: 953, column: 27, scope: !1996, inlinedAt: !2064)
!2069 = !DILocation(line: 953, column: 49, scope: !1996, inlinedAt: !2064)
!2070 = !DILocation(line: 954, column: 35, scope: !1996, inlinedAt: !2064)
!2071 = !DILocation(line: 954, column: 47, scope: !1996, inlinedAt: !2064)
!2072 = !DILocation(line: 956, column: 3, scope: !1996, inlinedAt: !2064)
!2073 = !DILocation(line: 956, column: 32, scope: !1996, inlinedAt: !2064)
!2074 = !DILocation(line: 185, column: 48, scope: !1968, inlinedAt: !2063)
!2075 = !DILocation(line: 187, column: 3, scope: !1968, inlinedAt: !2063)
!2076 = !DILocation(line: 188, column: 13, scope: !1985, inlinedAt: !2063)
!2077 = !DILocation(line: 188, column: 7, scope: !1968, inlinedAt: !2063)
!2078 = !DILocation(line: 189, column: 5, scope: !1985, inlinedAt: !2063)
!2079 = !{!2080}
!2080 = distinct !{!2080, !2081, !"quoting_options_from_style: argument 0"}
!2081 = distinct !{!2081, !"quoting_options_from_style"}
!2082 = !DILocation(line: 191, column: 10, scope: !1968, inlinedAt: !2063)
!2083 = !DILocation(line: 192, column: 1, scope: !1968, inlinedAt: !2063)
!2084 = !DILocation(line: 957, column: 10, scope: !1996, inlinedAt: !2064)
!2085 = !DILocation(line: 958, column: 1, scope: !1996, inlinedAt: !2064)
!2086 = !DILocation(line: 969, column: 3, scope: !2055)
!2087 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2088, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!50, !6, !94, !8}
!2090 = !{!2091, !2092, !2093, !2094}
!2091 = !DILocalVariable(name: "arg", arg: 1, scope: !2087, file: !100, line: 973, type: !6)
!2092 = !DILocalVariable(name: "argsize", arg: 2, scope: !2087, file: !100, line: 973, type: !94)
!2093 = !DILocalVariable(name: "ch", arg: 3, scope: !2087, file: !100, line: 973, type: !8)
!2094 = !DILocalVariable(name: "options", scope: !2087, file: !100, line: 975, type: !107)
!2095 = !DILocation(line: 973, column: 32, scope: !2087)
!2096 = !DILocation(line: 973, column: 44, scope: !2087)
!2097 = !DILocation(line: 973, column: 58, scope: !2087)
!2098 = !DILocation(line: 975, column: 3, scope: !2087)
!2099 = !DILocation(line: 976, column: 13, scope: !2087)
!2100 = !{i64 0, i64 4, !1041, i64 4, i64 4, !631, i64 8, i64 32, !1041, i64 40, i64 8, !582, i64 48, i64 8, !582}
!2101 = !DILocation(line: 975, column: 26, scope: !2087)
!2102 = !DILocation(line: 144, column: 43, scope: !835, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 977, column: 3, scope: !2087)
!2104 = !DILocation(line: 144, column: 51, scope: !835, inlinedAt: !2103)
!2105 = !DILocation(line: 144, column: 58, scope: !835, inlinedAt: !2103)
!2106 = !DILocation(line: 146, column: 17, scope: !835, inlinedAt: !2103)
!2107 = !DILocation(line: 148, column: 62, scope: !835, inlinedAt: !2103)
!2108 = !DILocation(line: 148, column: 57, scope: !835, inlinedAt: !2103)
!2109 = !DILocation(line: 147, column: 17, scope: !835, inlinedAt: !2103)
!2110 = !DILocation(line: 149, column: 18, scope: !835, inlinedAt: !2103)
!2111 = !DILocation(line: 149, column: 15, scope: !835, inlinedAt: !2103)
!2112 = !DILocation(line: 149, column: 7, scope: !835, inlinedAt: !2103)
!2113 = !DILocation(line: 150, column: 12, scope: !835, inlinedAt: !2103)
!2114 = !DILocation(line: 150, column: 15, scope: !835, inlinedAt: !2103)
!2115 = !DILocation(line: 150, column: 25, scope: !835, inlinedAt: !2103)
!2116 = !DILocation(line: 150, column: 7, scope: !835, inlinedAt: !2103)
!2117 = !DILocation(line: 151, column: 18, scope: !835, inlinedAt: !2103)
!2118 = !DILocation(line: 151, column: 23, scope: !835, inlinedAt: !2103)
!2119 = !DILocation(line: 151, column: 6, scope: !835, inlinedAt: !2103)
!2120 = !DILocation(line: 978, column: 10, scope: !2087)
!2121 = !DILocation(line: 979, column: 1, scope: !2087)
!2122 = !DILocation(line: 978, column: 3, scope: !2087)
!2123 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2124, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!50, !6, !8}
!2126 = !{!2127, !2128}
!2127 = !DILocalVariable(name: "arg", arg: 1, scope: !2123, file: !100, line: 982, type: !6)
!2128 = !DILocalVariable(name: "ch", arg: 2, scope: !2123, file: !100, line: 982, type: !8)
!2129 = !DILocation(line: 982, column: 28, scope: !2123)
!2130 = !DILocation(line: 982, column: 38, scope: !2123)
!2131 = !DILocation(line: 973, column: 32, scope: !2087, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 984, column: 10, scope: !2123)
!2133 = !DILocation(line: 973, column: 44, scope: !2087, inlinedAt: !2132)
!2134 = !DILocation(line: 973, column: 58, scope: !2087, inlinedAt: !2132)
!2135 = !DILocation(line: 975, column: 3, scope: !2087, inlinedAt: !2132)
!2136 = !DILocation(line: 976, column: 13, scope: !2087, inlinedAt: !2132)
!2137 = !DILocation(line: 975, column: 26, scope: !2087, inlinedAt: !2132)
!2138 = !DILocation(line: 144, column: 43, scope: !835, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 977, column: 3, scope: !2087, inlinedAt: !2132)
!2140 = !DILocation(line: 144, column: 51, scope: !835, inlinedAt: !2139)
!2141 = !DILocation(line: 144, column: 58, scope: !835, inlinedAt: !2139)
!2142 = !DILocation(line: 146, column: 17, scope: !835, inlinedAt: !2139)
!2143 = !DILocation(line: 148, column: 62, scope: !835, inlinedAt: !2139)
!2144 = !DILocation(line: 148, column: 57, scope: !835, inlinedAt: !2139)
!2145 = !DILocation(line: 147, column: 17, scope: !835, inlinedAt: !2139)
!2146 = !DILocation(line: 149, column: 18, scope: !835, inlinedAt: !2139)
!2147 = !DILocation(line: 149, column: 15, scope: !835, inlinedAt: !2139)
!2148 = !DILocation(line: 149, column: 7, scope: !835, inlinedAt: !2139)
!2149 = !DILocation(line: 150, column: 12, scope: !835, inlinedAt: !2139)
!2150 = !DILocation(line: 150, column: 15, scope: !835, inlinedAt: !2139)
!2151 = !DILocation(line: 150, column: 25, scope: !835, inlinedAt: !2139)
!2152 = !DILocation(line: 150, column: 7, scope: !835, inlinedAt: !2139)
!2153 = !DILocation(line: 151, column: 18, scope: !835, inlinedAt: !2139)
!2154 = !DILocation(line: 151, column: 23, scope: !835, inlinedAt: !2139)
!2155 = !DILocation(line: 151, column: 6, scope: !835, inlinedAt: !2139)
!2156 = !DILocation(line: 978, column: 10, scope: !2087, inlinedAt: !2132)
!2157 = !DILocation(line: 979, column: 1, scope: !2087, inlinedAt: !2132)
!2158 = !DILocation(line: 984, column: 3, scope: !2123)
!2159 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !1935, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2160)
!2160 = !{!2161}
!2161 = !DILocalVariable(name: "arg", arg: 1, scope: !2159, file: !100, line: 988, type: !6)
!2162 = !DILocation(line: 988, column: 29, scope: !2159)
!2163 = !DILocation(line: 982, column: 28, scope: !2123, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 990, column: 10, scope: !2159)
!2165 = !DILocation(line: 982, column: 38, scope: !2123, inlinedAt: !2164)
!2166 = !DILocation(line: 973, column: 32, scope: !2087, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 984, column: 10, scope: !2123, inlinedAt: !2164)
!2168 = !DILocation(line: 973, column: 44, scope: !2087, inlinedAt: !2167)
!2169 = !DILocation(line: 973, column: 58, scope: !2087, inlinedAt: !2167)
!2170 = !DILocation(line: 975, column: 3, scope: !2087, inlinedAt: !2167)
!2171 = !DILocation(line: 976, column: 13, scope: !2087, inlinedAt: !2167)
!2172 = !DILocation(line: 975, column: 26, scope: !2087, inlinedAt: !2167)
!2173 = !DILocation(line: 144, column: 43, scope: !835, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 977, column: 3, scope: !2087, inlinedAt: !2167)
!2175 = !DILocation(line: 144, column: 51, scope: !835, inlinedAt: !2174)
!2176 = !DILocation(line: 144, column: 58, scope: !835, inlinedAt: !2174)
!2177 = !DILocation(line: 146, column: 17, scope: !835, inlinedAt: !2174)
!2178 = !DILocation(line: 148, column: 57, scope: !835, inlinedAt: !2174)
!2179 = !DILocation(line: 147, column: 17, scope: !835, inlinedAt: !2174)
!2180 = !DILocation(line: 149, column: 7, scope: !835, inlinedAt: !2174)
!2181 = !DILocation(line: 150, column: 12, scope: !835, inlinedAt: !2174)
!2182 = !DILocation(line: 151, column: 6, scope: !835, inlinedAt: !2174)
!2183 = !DILocation(line: 978, column: 10, scope: !2087, inlinedAt: !2167)
!2184 = !DILocation(line: 979, column: 1, scope: !2087, inlinedAt: !2167)
!2185 = !DILocation(line: 990, column: 3, scope: !2159)
!2186 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !1946, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2187)
!2187 = !{!2188, !2189}
!2188 = !DILocalVariable(name: "arg", arg: 1, scope: !2186, file: !100, line: 994, type: !6)
!2189 = !DILocalVariable(name: "argsize", arg: 2, scope: !2186, file: !100, line: 994, type: !94)
!2190 = !DILocation(line: 994, column: 33, scope: !2186)
!2191 = !DILocation(line: 994, column: 45, scope: !2186)
!2192 = !DILocation(line: 973, column: 32, scope: !2087, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 996, column: 10, scope: !2186)
!2194 = !DILocation(line: 973, column: 44, scope: !2087, inlinedAt: !2193)
!2195 = !DILocation(line: 973, column: 58, scope: !2087, inlinedAt: !2193)
!2196 = !DILocation(line: 975, column: 3, scope: !2087, inlinedAt: !2193)
!2197 = !DILocation(line: 976, column: 13, scope: !2087, inlinedAt: !2193)
!2198 = !DILocation(line: 975, column: 26, scope: !2087, inlinedAt: !2193)
!2199 = !DILocation(line: 144, column: 43, scope: !835, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 977, column: 3, scope: !2087, inlinedAt: !2193)
!2201 = !DILocation(line: 144, column: 51, scope: !835, inlinedAt: !2200)
!2202 = !DILocation(line: 144, column: 58, scope: !835, inlinedAt: !2200)
!2203 = !DILocation(line: 146, column: 17, scope: !835, inlinedAt: !2200)
!2204 = !DILocation(line: 148, column: 57, scope: !835, inlinedAt: !2200)
!2205 = !DILocation(line: 147, column: 17, scope: !835, inlinedAt: !2200)
!2206 = !DILocation(line: 149, column: 7, scope: !835, inlinedAt: !2200)
!2207 = !DILocation(line: 150, column: 12, scope: !835, inlinedAt: !2200)
!2208 = !DILocation(line: 151, column: 6, scope: !835, inlinedAt: !2200)
!2209 = !DILocation(line: 978, column: 10, scope: !2087, inlinedAt: !2193)
!2210 = !DILocation(line: 979, column: 1, scope: !2087, inlinedAt: !2193)
!2211 = !DILocation(line: 996, column: 3, scope: !2186)
!2212 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !1960, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2213)
!2213 = !{!2214, !2215, !2216, !2217}
!2214 = !DILocalVariable(name: "n", arg: 1, scope: !2212, file: !100, line: 1000, type: !25)
!2215 = !DILocalVariable(name: "s", arg: 2, scope: !2212, file: !100, line: 1000, type: !58)
!2216 = !DILocalVariable(name: "arg", arg: 3, scope: !2212, file: !100, line: 1000, type: !6)
!2217 = !DILocalVariable(name: "options", scope: !2212, file: !100, line: 1002, type: !107)
!2218 = !DILocation(line: 187, column: 26, scope: !1968, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 1003, column: 13, scope: !2212)
!2220 = !DILocation(line: 1000, column: 29, scope: !2212)
!2221 = !DILocation(line: 1000, column: 51, scope: !2212)
!2222 = !DILocation(line: 1000, column: 66, scope: !2212)
!2223 = !DILocation(line: 1002, column: 3, scope: !2212)
!2224 = !DILocation(line: 185, column: 48, scope: !1968, inlinedAt: !2219)
!2225 = !DILocation(line: 187, column: 3, scope: !1968, inlinedAt: !2219)
!2226 = !DILocation(line: 188, column: 13, scope: !1985, inlinedAt: !2219)
!2227 = !DILocation(line: 188, column: 7, scope: !1968, inlinedAt: !2219)
!2228 = !DILocation(line: 189, column: 5, scope: !1985, inlinedAt: !2219)
!2229 = !{!2230}
!2230 = distinct !{!2230, !2231, !"quoting_options_from_style: argument 0"}
!2231 = distinct !{!2231, !"quoting_options_from_style"}
!2232 = !DILocation(line: 191, column: 10, scope: !1968, inlinedAt: !2219)
!2233 = !DILocation(line: 192, column: 1, scope: !1968, inlinedAt: !2219)
!2234 = !DILocation(line: 1003, column: 13, scope: !2212)
!2235 = !DILocation(line: 1002, column: 26, scope: !2212)
!2236 = !DILocation(line: 144, column: 43, scope: !835, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 1004, column: 3, scope: !2212)
!2238 = !DILocation(line: 144, column: 51, scope: !835, inlinedAt: !2237)
!2239 = !DILocation(line: 144, column: 58, scope: !835, inlinedAt: !2237)
!2240 = !DILocation(line: 146, column: 17, scope: !835, inlinedAt: !2237)
!2241 = !DILocation(line: 148, column: 57, scope: !835, inlinedAt: !2237)
!2242 = !DILocation(line: 147, column: 17, scope: !835, inlinedAt: !2237)
!2243 = !DILocation(line: 149, column: 7, scope: !835, inlinedAt: !2237)
!2244 = !DILocation(line: 150, column: 12, scope: !835, inlinedAt: !2237)
!2245 = !DILocation(line: 151, column: 6, scope: !835, inlinedAt: !2237)
!2246 = !DILocation(line: 1005, column: 10, scope: !2212)
!2247 = !DILocation(line: 1006, column: 1, scope: !2212)
!2248 = !DILocation(line: 1005, column: 3, scope: !2212)
!2249 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2250, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!50, !25, !6, !6, !6}
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DILocalVariable(name: "n", arg: 1, scope: !2249, file: !100, line: 1009, type: !25)
!2254 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2249, file: !100, line: 1009, type: !6)
!2255 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2249, file: !100, line: 1010, type: !6)
!2256 = !DILocalVariable(name: "arg", arg: 4, scope: !2249, file: !100, line: 1010, type: !6)
!2257 = !DILocation(line: 1009, column: 24, scope: !2249)
!2258 = !DILocation(line: 1009, column: 39, scope: !2249)
!2259 = !DILocation(line: 1010, column: 32, scope: !2249)
!2260 = !DILocation(line: 1010, column: 57, scope: !2249)
!2261 = !DILocalVariable(name: "n", arg: 1, scope: !2262, file: !100, line: 1017, type: !25)
!2262 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2263, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2265)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!50, !25, !6, !6, !6, !94}
!2265 = !{!2261, !2266, !2267, !2268, !2269, !2270}
!2266 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2262, file: !100, line: 1017, type: !6)
!2267 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2262, file: !100, line: 1018, type: !6)
!2268 = !DILocalVariable(name: "arg", arg: 4, scope: !2262, file: !100, line: 1019, type: !6)
!2269 = !DILocalVariable(name: "argsize", arg: 5, scope: !2262, file: !100, line: 1019, type: !94)
!2270 = !DILocalVariable(name: "o", scope: !2262, file: !100, line: 1021, type: !107)
!2271 = !DILocation(line: 1017, column: 28, scope: !2262, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 1012, column: 10, scope: !2249)
!2273 = !DILocation(line: 1017, column: 43, scope: !2262, inlinedAt: !2272)
!2274 = !DILocation(line: 1018, column: 36, scope: !2262, inlinedAt: !2272)
!2275 = !DILocation(line: 1019, column: 36, scope: !2262, inlinedAt: !2272)
!2276 = !DILocation(line: 1019, column: 48, scope: !2262, inlinedAt: !2272)
!2277 = !DILocation(line: 1021, column: 3, scope: !2262, inlinedAt: !2272)
!2278 = !DILocation(line: 1021, column: 30, scope: !2262, inlinedAt: !2272)
!2279 = !DILocation(line: 1021, column: 26, scope: !2262, inlinedAt: !2272)
!2280 = !DILocation(line: 171, column: 45, scope: !884, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 1022, column: 3, scope: !2262, inlinedAt: !2272)
!2282 = !DILocation(line: 172, column: 33, scope: !884, inlinedAt: !2281)
!2283 = !DILocation(line: 172, column: 57, scope: !884, inlinedAt: !2281)
!2284 = !DILocation(line: 176, column: 6, scope: !884, inlinedAt: !2281)
!2285 = !DILocation(line: 176, column: 12, scope: !884, inlinedAt: !2281)
!2286 = !DILocation(line: 177, column: 8, scope: !900, inlinedAt: !2281)
!2287 = !DILocation(line: 177, column: 23, scope: !900, inlinedAt: !2281)
!2288 = !DILocation(line: 177, column: 19, scope: !900, inlinedAt: !2281)
!2289 = !DILocation(line: 178, column: 5, scope: !900, inlinedAt: !2281)
!2290 = !DILocation(line: 179, column: 6, scope: !884, inlinedAt: !2281)
!2291 = !DILocation(line: 179, column: 17, scope: !884, inlinedAt: !2281)
!2292 = !DILocation(line: 180, column: 6, scope: !884, inlinedAt: !2281)
!2293 = !DILocation(line: 180, column: 18, scope: !884, inlinedAt: !2281)
!2294 = !DILocation(line: 1023, column: 10, scope: !2262, inlinedAt: !2272)
!2295 = !DILocation(line: 1024, column: 1, scope: !2262, inlinedAt: !2272)
!2296 = !DILocation(line: 1012, column: 3, scope: !2249)
!2297 = !DILocation(line: 1017, column: 28, scope: !2262)
!2298 = !DILocation(line: 1017, column: 43, scope: !2262)
!2299 = !DILocation(line: 1018, column: 36, scope: !2262)
!2300 = !DILocation(line: 1019, column: 36, scope: !2262)
!2301 = !DILocation(line: 1019, column: 48, scope: !2262)
!2302 = !DILocation(line: 1021, column: 3, scope: !2262)
!2303 = !DILocation(line: 1021, column: 30, scope: !2262)
!2304 = !DILocation(line: 1021, column: 26, scope: !2262)
!2305 = !DILocation(line: 171, column: 45, scope: !884, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 1022, column: 3, scope: !2262)
!2307 = !DILocation(line: 172, column: 33, scope: !884, inlinedAt: !2306)
!2308 = !DILocation(line: 172, column: 57, scope: !884, inlinedAt: !2306)
!2309 = !DILocation(line: 176, column: 6, scope: !884, inlinedAt: !2306)
!2310 = !DILocation(line: 176, column: 12, scope: !884, inlinedAt: !2306)
!2311 = !DILocation(line: 177, column: 8, scope: !900, inlinedAt: !2306)
!2312 = !DILocation(line: 177, column: 23, scope: !900, inlinedAt: !2306)
!2313 = !DILocation(line: 177, column: 19, scope: !900, inlinedAt: !2306)
!2314 = !DILocation(line: 178, column: 5, scope: !900, inlinedAt: !2306)
!2315 = !DILocation(line: 179, column: 6, scope: !884, inlinedAt: !2306)
!2316 = !DILocation(line: 179, column: 17, scope: !884, inlinedAt: !2306)
!2317 = !DILocation(line: 180, column: 6, scope: !884, inlinedAt: !2306)
!2318 = !DILocation(line: 180, column: 18, scope: !884, inlinedAt: !2306)
!2319 = !DILocation(line: 1023, column: 10, scope: !2262)
!2320 = !DILocation(line: 1024, column: 1, scope: !2262)
!2321 = !DILocation(line: 1023, column: 3, scope: !2262)
!2322 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2323, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2325)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!50, !6, !6, !6}
!2325 = !{!2326, !2327, !2328}
!2326 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2322, file: !100, line: 1027, type: !6)
!2327 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2322, file: !100, line: 1027, type: !6)
!2328 = !DILocalVariable(name: "arg", arg: 3, scope: !2322, file: !100, line: 1028, type: !6)
!2329 = !DILocation(line: 1027, column: 30, scope: !2322)
!2330 = !DILocation(line: 1027, column: 54, scope: !2322)
!2331 = !DILocation(line: 1028, column: 30, scope: !2322)
!2332 = !DILocation(line: 1009, column: 24, scope: !2249, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 1030, column: 10, scope: !2322)
!2334 = !DILocation(line: 1009, column: 39, scope: !2249, inlinedAt: !2333)
!2335 = !DILocation(line: 1010, column: 32, scope: !2249, inlinedAt: !2333)
!2336 = !DILocation(line: 1010, column: 57, scope: !2249, inlinedAt: !2333)
!2337 = !DILocation(line: 1017, column: 28, scope: !2262, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 1012, column: 10, scope: !2249, inlinedAt: !2333)
!2339 = !DILocation(line: 1017, column: 43, scope: !2262, inlinedAt: !2338)
!2340 = !DILocation(line: 1018, column: 36, scope: !2262, inlinedAt: !2338)
!2341 = !DILocation(line: 1019, column: 36, scope: !2262, inlinedAt: !2338)
!2342 = !DILocation(line: 1019, column: 48, scope: !2262, inlinedAt: !2338)
!2343 = !DILocation(line: 1021, column: 3, scope: !2262, inlinedAt: !2338)
!2344 = !DILocation(line: 1021, column: 30, scope: !2262, inlinedAt: !2338)
!2345 = !DILocation(line: 1021, column: 26, scope: !2262, inlinedAt: !2338)
!2346 = !DILocation(line: 171, column: 45, scope: !884, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 1022, column: 3, scope: !2262, inlinedAt: !2338)
!2348 = !DILocation(line: 172, column: 33, scope: !884, inlinedAt: !2347)
!2349 = !DILocation(line: 172, column: 57, scope: !884, inlinedAt: !2347)
!2350 = !DILocation(line: 176, column: 6, scope: !884, inlinedAt: !2347)
!2351 = !DILocation(line: 176, column: 12, scope: !884, inlinedAt: !2347)
!2352 = !DILocation(line: 177, column: 8, scope: !900, inlinedAt: !2347)
!2353 = !DILocation(line: 177, column: 23, scope: !900, inlinedAt: !2347)
!2354 = !DILocation(line: 177, column: 19, scope: !900, inlinedAt: !2347)
!2355 = !DILocation(line: 178, column: 5, scope: !900, inlinedAt: !2347)
!2356 = !DILocation(line: 179, column: 6, scope: !884, inlinedAt: !2347)
!2357 = !DILocation(line: 179, column: 17, scope: !884, inlinedAt: !2347)
!2358 = !DILocation(line: 180, column: 6, scope: !884, inlinedAt: !2347)
!2359 = !DILocation(line: 180, column: 18, scope: !884, inlinedAt: !2347)
!2360 = !DILocation(line: 1023, column: 10, scope: !2262, inlinedAt: !2338)
!2361 = !DILocation(line: 1024, column: 1, scope: !2262, inlinedAt: !2338)
!2362 = !DILocation(line: 1030, column: 3, scope: !2322)
!2363 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2364, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!50, !6, !6, !6, !94}
!2366 = !{!2367, !2368, !2369, !2370}
!2367 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2363, file: !100, line: 1034, type: !6)
!2368 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2363, file: !100, line: 1034, type: !6)
!2369 = !DILocalVariable(name: "arg", arg: 3, scope: !2363, file: !100, line: 1035, type: !6)
!2370 = !DILocalVariable(name: "argsize", arg: 4, scope: !2363, file: !100, line: 1035, type: !94)
!2371 = !DILocation(line: 1034, column: 34, scope: !2363)
!2372 = !DILocation(line: 1034, column: 58, scope: !2363)
!2373 = !DILocation(line: 1035, column: 34, scope: !2363)
!2374 = !DILocation(line: 1035, column: 46, scope: !2363)
!2375 = !DILocation(line: 1017, column: 28, scope: !2262, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 1037, column: 10, scope: !2363)
!2377 = !DILocation(line: 1017, column: 43, scope: !2262, inlinedAt: !2376)
!2378 = !DILocation(line: 1018, column: 36, scope: !2262, inlinedAt: !2376)
!2379 = !DILocation(line: 1019, column: 36, scope: !2262, inlinedAt: !2376)
!2380 = !DILocation(line: 1019, column: 48, scope: !2262, inlinedAt: !2376)
!2381 = !DILocation(line: 1021, column: 3, scope: !2262, inlinedAt: !2376)
!2382 = !DILocation(line: 1021, column: 30, scope: !2262, inlinedAt: !2376)
!2383 = !DILocation(line: 1021, column: 26, scope: !2262, inlinedAt: !2376)
!2384 = !DILocation(line: 171, column: 45, scope: !884, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 1022, column: 3, scope: !2262, inlinedAt: !2376)
!2386 = !DILocation(line: 172, column: 33, scope: !884, inlinedAt: !2385)
!2387 = !DILocation(line: 172, column: 57, scope: !884, inlinedAt: !2385)
!2388 = !DILocation(line: 176, column: 6, scope: !884, inlinedAt: !2385)
!2389 = !DILocation(line: 176, column: 12, scope: !884, inlinedAt: !2385)
!2390 = !DILocation(line: 177, column: 8, scope: !900, inlinedAt: !2385)
!2391 = !DILocation(line: 177, column: 23, scope: !900, inlinedAt: !2385)
!2392 = !DILocation(line: 177, column: 19, scope: !900, inlinedAt: !2385)
!2393 = !DILocation(line: 178, column: 5, scope: !900, inlinedAt: !2385)
!2394 = !DILocation(line: 179, column: 6, scope: !884, inlinedAt: !2385)
!2395 = !DILocation(line: 179, column: 17, scope: !884, inlinedAt: !2385)
!2396 = !DILocation(line: 180, column: 6, scope: !884, inlinedAt: !2385)
!2397 = !DILocation(line: 180, column: 18, scope: !884, inlinedAt: !2385)
!2398 = !DILocation(line: 1023, column: 10, scope: !2262, inlinedAt: !2376)
!2399 = !DILocation(line: 1024, column: 1, scope: !2262, inlinedAt: !2376)
!2400 = !DILocation(line: 1037, column: 3, scope: !2363)
!2401 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2402, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!6, !25, !6, !94}
!2404 = !{!2405, !2406, !2407}
!2405 = !DILocalVariable(name: "n", arg: 1, scope: !2401, file: !100, line: 1052, type: !25)
!2406 = !DILocalVariable(name: "arg", arg: 2, scope: !2401, file: !100, line: 1052, type: !6)
!2407 = !DILocalVariable(name: "argsize", arg: 3, scope: !2401, file: !100, line: 1052, type: !94)
!2408 = !DILocation(line: 1052, column: 18, scope: !2401)
!2409 = !DILocation(line: 1052, column: 33, scope: !2401)
!2410 = !DILocation(line: 1052, column: 45, scope: !2401)
!2411 = !DILocation(line: 1054, column: 10, scope: !2401)
!2412 = !DILocation(line: 1054, column: 3, scope: !2401)
!2413 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2414, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!6, !6, !94}
!2416 = !{!2417, !2418}
!2417 = !DILocalVariable(name: "arg", arg: 1, scope: !2413, file: !100, line: 1058, type: !6)
!2418 = !DILocalVariable(name: "argsize", arg: 2, scope: !2413, file: !100, line: 1058, type: !94)
!2419 = !DILocation(line: 1058, column: 24, scope: !2413)
!2420 = !DILocation(line: 1058, column: 36, scope: !2413)
!2421 = !DILocation(line: 1052, column: 18, scope: !2401, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 1060, column: 10, scope: !2413)
!2423 = !DILocation(line: 1052, column: 33, scope: !2401, inlinedAt: !2422)
!2424 = !DILocation(line: 1052, column: 45, scope: !2401, inlinedAt: !2422)
!2425 = !DILocation(line: 1054, column: 10, scope: !2401, inlinedAt: !2422)
!2426 = !DILocation(line: 1060, column: 3, scope: !2413)
!2427 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2428, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!6, !25, !6}
!2430 = !{!2431, !2432}
!2431 = !DILocalVariable(name: "n", arg: 1, scope: !2427, file: !100, line: 1064, type: !25)
!2432 = !DILocalVariable(name: "arg", arg: 2, scope: !2427, file: !100, line: 1064, type: !6)
!2433 = !DILocation(line: 1064, column: 14, scope: !2427)
!2434 = !DILocation(line: 1064, column: 29, scope: !2427)
!2435 = !DILocation(line: 1052, column: 18, scope: !2401, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 1066, column: 10, scope: !2427)
!2437 = !DILocation(line: 1052, column: 33, scope: !2401, inlinedAt: !2436)
!2438 = !DILocation(line: 1052, column: 45, scope: !2401, inlinedAt: !2436)
!2439 = !DILocation(line: 1054, column: 10, scope: !2401, inlinedAt: !2436)
!2440 = !DILocation(line: 1066, column: 3, scope: !2427)
!2441 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2442, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!6, !6}
!2444 = !{!2445}
!2445 = !DILocalVariable(name: "arg", arg: 1, scope: !2441, file: !100, line: 1070, type: !6)
!2446 = !DILocation(line: 1070, column: 20, scope: !2441)
!2447 = !DILocation(line: 1064, column: 14, scope: !2427, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 1072, column: 10, scope: !2441)
!2449 = !DILocation(line: 1064, column: 29, scope: !2427, inlinedAt: !2448)
!2450 = !DILocation(line: 1052, column: 18, scope: !2401, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 1066, column: 10, scope: !2427, inlinedAt: !2448)
!2452 = !DILocation(line: 1052, column: 33, scope: !2401, inlinedAt: !2451)
!2453 = !DILocation(line: 1052, column: 45, scope: !2401, inlinedAt: !2451)
!2454 = !DILocation(line: 1054, column: 10, scope: !2401, inlinedAt: !2451)
!2455 = !DILocation(line: 1072, column: 3, scope: !2441)
!2456 = distinct !DISubprogram(name: "version_etc_arn", scope: !526, file: !526, line: 62, type: !2457, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2513)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2459, !6, !6, !6, !2512, !94}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2461, line: 7, baseType: !2462)
!2461 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2463, line: 241, size: 1728, elements: !2464)
!2463 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2485, !2486, !2487, !2488, !2492, !2493, !2495, !2497, !2500, !2502, !2503, !2504, !2505, !2506, !2507, !2508}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2462, file: !2463, line: 242, baseType: !25, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2462, file: !2463, line: 247, baseType: !50, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2462, file: !2463, line: 248, baseType: !50, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2462, file: !2463, line: 249, baseType: !50, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2462, file: !2463, line: 250, baseType: !50, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2462, file: !2463, line: 251, baseType: !50, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2462, file: !2463, line: 252, baseType: !50, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2462, file: !2463, line: 253, baseType: !50, size: 64, offset: 448)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2462, file: !2463, line: 254, baseType: !50, size: 64, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2462, file: !2463, line: 256, baseType: !50, size: 64, offset: 576)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2462, file: !2463, line: 257, baseType: !50, size: 64, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2462, file: !2463, line: 258, baseType: !50, size: 64, offset: 704)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2462, file: !2463, line: 260, baseType: !2478, size: 64, offset: 768)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2463, line: 156, size: 192, elements: !2480)
!2480 = !{!2481, !2482, !2484}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2479, file: !2463, line: 157, baseType: !2478, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2479, file: !2463, line: 158, baseType: !2483, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2479, file: !2463, line: 162, baseType: !25, size: 32, offset: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2462, file: !2463, line: 262, baseType: !2483, size: 64, offset: 832)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2462, file: !2463, line: 264, baseType: !25, size: 32, offset: 896)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2462, file: !2463, line: 268, baseType: !25, size: 32, offset: 928)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2462, file: !2463, line: 270, baseType: !2489, size: 64, offset: 960)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2490, line: 140, baseType: !2491)
!2490 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2491 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2462, file: !2463, line: 274, baseType: !93, size: 16, offset: 1024)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2462, file: !2463, line: 275, baseType: !2494, size: 8, offset: 1040)
!2494 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2462, file: !2463, line: 276, baseType: !2496, size: 8, offset: 1048)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !728)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2462, file: !2463, line: 280, baseType: !2498, size: 64, offset: 1088)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2463, line: 150, baseType: null)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2462, file: !2463, line: 289, baseType: !2501, size: 64, offset: 1152)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2490, line: 141, baseType: !2491)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2462, file: !2463, line: 297, baseType: !49, size: 64, offset: 1216)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2462, file: !2463, line: 298, baseType: !49, size: 64, offset: 1280)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2462, file: !2463, line: 299, baseType: !49, size: 64, offset: 1344)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2462, file: !2463, line: 300, baseType: !49, size: 64, offset: 1408)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2462, file: !2463, line: 302, baseType: !94, size: 64, offset: 1472)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2462, file: !2463, line: 303, baseType: !25, size: 32, offset: 1536)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2462, file: !2463, line: 305, baseType: !2509, size: 160, offset: 1568)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2510)
!2510 = !{!2511}
!2511 = !DISubrange(count: 20)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2513 = !{!2514, !2515, !2516, !2517, !2518, !2519}
!2514 = !DILocalVariable(name: "stream", arg: 1, scope: !2456, file: !526, line: 62, type: !2459)
!2515 = !DILocalVariable(name: "command_name", arg: 2, scope: !2456, file: !526, line: 63, type: !6)
!2516 = !DILocalVariable(name: "package", arg: 3, scope: !2456, file: !526, line: 63, type: !6)
!2517 = !DILocalVariable(name: "version", arg: 4, scope: !2456, file: !526, line: 64, type: !6)
!2518 = !DILocalVariable(name: "authors", arg: 5, scope: !2456, file: !526, line: 65, type: !2512)
!2519 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2456, file: !526, line: 65, type: !94)
!2520 = !DILocation(line: 62, column: 24, scope: !2456)
!2521 = !DILocation(line: 63, column: 30, scope: !2456)
!2522 = !DILocation(line: 63, column: 56, scope: !2456)
!2523 = !DILocation(line: 64, column: 30, scope: !2456)
!2524 = !DILocation(line: 65, column: 39, scope: !2456)
!2525 = !DILocation(line: 65, column: 55, scope: !2456)
!2526 = !DILocation(line: 67, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2456, file: !526, line: 67, column: 7)
!2528 = !DILocation(line: 67, column: 7, scope: !2456)
!2529 = !DILocation(line: 68, column: 5, scope: !2527)
!2530 = !DILocation(line: 70, column: 5, scope: !2527)
!2531 = !DILocation(line: 84, column: 3, scope: !2456)
!2532 = !DILocation(line: 86, column: 3, scope: !2456)
!2533 = !DILocation(line: 95, column: 3, scope: !2456)
!2534 = !DILocation(line: 99, column: 7, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2456, file: !526, line: 96, column: 5)
!2536 = !DILocation(line: 102, column: 7, scope: !2535)
!2537 = !DILocation(line: 103, column: 7, scope: !2535)
!2538 = !DILocation(line: 106, column: 7, scope: !2535)
!2539 = !DILocation(line: 107, column: 7, scope: !2535)
!2540 = !DILocation(line: 110, column: 7, scope: !2535)
!2541 = !DILocation(line: 112, column: 7, scope: !2535)
!2542 = !DILocation(line: 117, column: 7, scope: !2535)
!2543 = !DILocation(line: 119, column: 7, scope: !2535)
!2544 = !DILocation(line: 124, column: 7, scope: !2535)
!2545 = !DILocation(line: 126, column: 7, scope: !2535)
!2546 = !DILocation(line: 131, column: 7, scope: !2535)
!2547 = !DILocation(line: 134, column: 7, scope: !2535)
!2548 = !DILocation(line: 139, column: 7, scope: !2535)
!2549 = !DILocation(line: 142, column: 7, scope: !2535)
!2550 = !DILocation(line: 147, column: 7, scope: !2535)
!2551 = !DILocation(line: 151, column: 7, scope: !2535)
!2552 = !DILocation(line: 156, column: 7, scope: !2535)
!2553 = !DILocation(line: 160, column: 7, scope: !2535)
!2554 = !DILocation(line: 167, column: 7, scope: !2535)
!2555 = !DILocation(line: 171, column: 7, scope: !2535)
!2556 = !DILocation(line: 173, column: 1, scope: !2456)
!2557 = distinct !DISubprogram(name: "version_etc_ar", scope: !526, file: !526, line: 180, type: !2558, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{null, !2459, !6, !6, !6, !2512}
!2560 = !{!2561, !2562, !2563, !2564, !2565, !2566}
!2561 = !DILocalVariable(name: "stream", arg: 1, scope: !2557, file: !526, line: 180, type: !2459)
!2562 = !DILocalVariable(name: "command_name", arg: 2, scope: !2557, file: !526, line: 181, type: !6)
!2563 = !DILocalVariable(name: "package", arg: 3, scope: !2557, file: !526, line: 181, type: !6)
!2564 = !DILocalVariable(name: "version", arg: 4, scope: !2557, file: !526, line: 182, type: !6)
!2565 = !DILocalVariable(name: "authors", arg: 5, scope: !2557, file: !526, line: 182, type: !2512)
!2566 = !DILocalVariable(name: "n_authors", scope: !2557, file: !526, line: 184, type: !94)
!2567 = !DILocation(line: 180, column: 23, scope: !2557)
!2568 = !DILocation(line: 181, column: 29, scope: !2557)
!2569 = !DILocation(line: 181, column: 55, scope: !2557)
!2570 = !DILocation(line: 182, column: 29, scope: !2557)
!2571 = !DILocation(line: 182, column: 59, scope: !2557)
!2572 = !DILocation(line: 184, column: 10, scope: !2557)
!2573 = !DILocation(line: 186, column: 8, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2557, file: !526, line: 186, column: 3)
!2575 = !DILocation(line: 186, column: 23, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2574, file: !526, line: 186, column: 3)
!2577 = !DILocation(line: 186, column: 3, scope: !2574)
!2578 = !DILocation(line: 186, column: 52, scope: !2576)
!2579 = distinct !{!2579, !2577, !2580}
!2580 = !DILocation(line: 187, column: 5, scope: !2574)
!2581 = !DILocation(line: 188, column: 3, scope: !2557)
!2582 = !DILocation(line: 189, column: 1, scope: !2557)
!2583 = distinct !DISubprogram(name: "version_etc_va", scope: !526, file: !526, line: 196, type: !2584, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2593)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !2459, !6, !6, !6, !2586}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !523, line: 189, size: 192, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2592}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2587, file: !523, line: 189, baseType: !113, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2587, file: !523, line: 189, baseType: !113, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2587, file: !523, line: 189, baseType: !49, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2587, file: !523, line: 189, baseType: !49, size: 64, offset: 128)
!2593 = !{!2594, !2595, !2596, !2597, !2598, !2599, !2600}
!2594 = !DILocalVariable(name: "stream", arg: 1, scope: !2583, file: !526, line: 196, type: !2459)
!2595 = !DILocalVariable(name: "command_name", arg: 2, scope: !2583, file: !526, line: 197, type: !6)
!2596 = !DILocalVariable(name: "package", arg: 3, scope: !2583, file: !526, line: 197, type: !6)
!2597 = !DILocalVariable(name: "version", arg: 4, scope: !2583, file: !526, line: 198, type: !6)
!2598 = !DILocalVariable(name: "authors", arg: 5, scope: !2583, file: !526, line: 198, type: !2586)
!2599 = !DILocalVariable(name: "n_authors", scope: !2583, file: !526, line: 200, type: !94)
!2600 = !DILocalVariable(name: "authtab", scope: !2583, file: !526, line: 201, type: !2601)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2602 = !DILocation(line: 196, column: 23, scope: !2583)
!2603 = !DILocation(line: 197, column: 29, scope: !2583)
!2604 = !DILocation(line: 197, column: 55, scope: !2583)
!2605 = !DILocation(line: 198, column: 29, scope: !2583)
!2606 = !DILocation(line: 198, column: 46, scope: !2583)
!2607 = !DILocation(line: 201, column: 3, scope: !2583)
!2608 = !DILocation(line: 201, column: 15, scope: !2583)
!2609 = !DILocation(line: 200, column: 10, scope: !2583)
!2610 = !DILocation(line: 205, column: 35, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !526, line: 203, column: 3)
!2612 = distinct !DILexicalBlock(scope: !2583, file: !526, line: 203, column: 3)
!2613 = !DILocation(line: 205, column: 14, scope: !2611)
!2614 = !DILocation(line: 205, column: 33, scope: !2611)
!2615 = !DILocation(line: 205, column: 67, scope: !2611)
!2616 = !DILocation(line: 203, column: 3, scope: !2612)
!2617 = !DILocation(line: 208, column: 3, scope: !2583)
!2618 = !DILocation(line: 210, column: 1, scope: !2583)
!2619 = distinct !DISubprogram(name: "version_etc", scope: !526, file: !526, line: 227, type: !2620, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{null, !2459, !6, !6, !6, null}
!2622 = !{!2623, !2624, !2625, !2626, !2627}
!2623 = !DILocalVariable(name: "stream", arg: 1, scope: !2619, file: !526, line: 227, type: !2459)
!2624 = !DILocalVariable(name: "command_name", arg: 2, scope: !2619, file: !526, line: 228, type: !6)
!2625 = !DILocalVariable(name: "package", arg: 3, scope: !2619, file: !526, line: 228, type: !6)
!2626 = !DILocalVariable(name: "version", arg: 4, scope: !2619, file: !526, line: 229, type: !6)
!2627 = !DILocalVariable(name: "authors", scope: !2619, file: !526, line: 231, type: !2628)
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !717, line: 46, baseType: !2629)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !719, line: 48, baseType: !2630)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !523, line: 231, baseType: !2631)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2587, size: 192, elements: !728)
!2632 = !DILocation(line: 227, column: 20, scope: !2619)
!2633 = !DILocation(line: 228, column: 26, scope: !2619)
!2634 = !DILocation(line: 228, column: 52, scope: !2619)
!2635 = !DILocation(line: 229, column: 26, scope: !2619)
!2636 = !DILocation(line: 231, column: 3, scope: !2619)
!2637 = !DILocation(line: 231, column: 11, scope: !2619)
!2638 = !DILocation(line: 233, column: 3, scope: !2619)
!2639 = !DILocation(line: 234, column: 3, scope: !2619)
!2640 = !DILocation(line: 235, column: 3, scope: !2619)
!2641 = !DILocation(line: 236, column: 1, scope: !2619)
!2642 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !526, file: !526, line: 239, type: !663, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !4)
!2643 = !DILocation(line: 245, column: 3, scope: !2642)
!2644 = !DILocation(line: 251, column: 3, scope: !2642)
!2645 = !DILocation(line: 256, column: 3, scope: !2642)
!2646 = !DILocation(line: 258, column: 1, scope: !2642)
!2647 = distinct !DISubprogram(name: "xnmalloc", scope: !534, file: !534, line: 105, type: !2648, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!49, !94, !94}
!2650 = !{!2651, !2652}
!2651 = !DILocalVariable(name: "n", arg: 1, scope: !2647, file: !534, line: 105, type: !94)
!2652 = !DILocalVariable(name: "s", arg: 2, scope: !2647, file: !534, line: 105, type: !94)
!2653 = !DILocation(line: 105, column: 18, scope: !2647)
!2654 = !DILocation(line: 105, column: 28, scope: !2647)
!2655 = !DILocation(line: 107, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2647, file: !534, line: 107, column: 7)
!2657 = !DILocation(line: 107, column: 7, scope: !2647)
!2658 = !DILocation(line: 108, column: 5, scope: !2656)
!2659 = !DILocation(line: 109, column: 21, scope: !2647)
!2660 = !DILocalVariable(name: "n", arg: 1, scope: !2661, file: !2662, line: 39, type: !94)
!2661 = distinct !DISubprogram(name: "xmalloc", scope: !2662, file: !2662, line: 39, type: !2663, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2665)
!2662 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!49, !94}
!2665 = !{!2660, !2666}
!2666 = !DILocalVariable(name: "p", scope: !2661, file: !2662, line: 41, type: !49)
!2667 = !DILocation(line: 39, column: 17, scope: !2661, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 109, column: 10, scope: !2647)
!2669 = !DILocation(line: 41, column: 13, scope: !2661, inlinedAt: !2668)
!2670 = !DILocation(line: 41, column: 9, scope: !2661, inlinedAt: !2668)
!2671 = !DILocation(line: 42, column: 8, scope: !2672, inlinedAt: !2668)
!2672 = distinct !DILexicalBlock(scope: !2661, file: !2662, line: 42, column: 7)
!2673 = !DILocation(line: 42, column: 15, scope: !2672, inlinedAt: !2668)
!2674 = !DILocation(line: 42, column: 10, scope: !2672, inlinedAt: !2668)
!2675 = !DILocation(line: 43, column: 5, scope: !2672, inlinedAt: !2668)
!2676 = !DILocation(line: 109, column: 3, scope: !2647)
!2677 = !DILocation(line: 39, column: 17, scope: !2661)
!2678 = !DILocation(line: 41, column: 13, scope: !2661)
!2679 = !DILocation(line: 41, column: 9, scope: !2661)
!2680 = !DILocation(line: 42, column: 8, scope: !2672)
!2681 = !DILocation(line: 42, column: 15, scope: !2672)
!2682 = !DILocation(line: 42, column: 10, scope: !2672)
!2683 = !DILocation(line: 43, column: 5, scope: !2672)
!2684 = !DILocation(line: 44, column: 3, scope: !2661)
!2685 = distinct !DISubprogram(name: "xnrealloc", scope: !534, file: !534, line: 118, type: !2686, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!49, !49, !94, !94}
!2688 = !{!2689, !2690, !2691}
!2689 = !DILocalVariable(name: "p", arg: 1, scope: !2685, file: !534, line: 118, type: !49)
!2690 = !DILocalVariable(name: "n", arg: 2, scope: !2685, file: !534, line: 118, type: !94)
!2691 = !DILocalVariable(name: "s", arg: 3, scope: !2685, file: !534, line: 118, type: !94)
!2692 = !DILocation(line: 118, column: 18, scope: !2685)
!2693 = !DILocation(line: 118, column: 28, scope: !2685)
!2694 = !DILocation(line: 118, column: 38, scope: !2685)
!2695 = !DILocation(line: 120, column: 7, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2685, file: !534, line: 120, column: 7)
!2697 = !DILocation(line: 120, column: 7, scope: !2685)
!2698 = !DILocation(line: 121, column: 5, scope: !2696)
!2699 = !DILocation(line: 122, column: 25, scope: !2685)
!2700 = !DILocalVariable(name: "p", arg: 1, scope: !2701, file: !2662, line: 51, type: !49)
!2701 = distinct !DISubprogram(name: "xrealloc", scope: !2662, file: !2662, line: 51, type: !2702, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2704)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!49, !49, !94}
!2704 = !{!2700, !2705}
!2705 = !DILocalVariable(name: "n", arg: 2, scope: !2701, file: !2662, line: 51, type: !94)
!2706 = !DILocation(line: 51, column: 17, scope: !2701, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 122, column: 10, scope: !2685)
!2708 = !DILocation(line: 51, column: 27, scope: !2701, inlinedAt: !2707)
!2709 = !DILocation(line: 53, column: 8, scope: !2710, inlinedAt: !2707)
!2710 = distinct !DILexicalBlock(scope: !2701, file: !2662, line: 53, column: 7)
!2711 = !DILocation(line: 53, column: 13, scope: !2710, inlinedAt: !2707)
!2712 = !DILocation(line: 53, column: 10, scope: !2710, inlinedAt: !2707)
!2713 = !DILocation(line: 57, column: 7, scope: !2714, inlinedAt: !2707)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !2662, line: 54, column: 5)
!2715 = !DILocation(line: 58, column: 7, scope: !2714, inlinedAt: !2707)
!2716 = !DILocation(line: 61, column: 7, scope: !2701, inlinedAt: !2707)
!2717 = !DILocation(line: 62, column: 8, scope: !2718, inlinedAt: !2707)
!2718 = distinct !DILexicalBlock(scope: !2701, file: !2662, line: 62, column: 7)
!2719 = !DILocation(line: 62, column: 13, scope: !2718, inlinedAt: !2707)
!2720 = !DILocation(line: 62, column: 10, scope: !2718, inlinedAt: !2707)
!2721 = !DILocation(line: 63, column: 5, scope: !2718, inlinedAt: !2707)
!2722 = !DILocation(line: 122, column: 3, scope: !2685)
!2723 = !DILocation(line: 51, column: 17, scope: !2701)
!2724 = !DILocation(line: 51, column: 27, scope: !2701)
!2725 = !DILocation(line: 53, column: 8, scope: !2710)
!2726 = !DILocation(line: 53, column: 13, scope: !2710)
!2727 = !DILocation(line: 53, column: 10, scope: !2710)
!2728 = !DILocation(line: 57, column: 7, scope: !2714)
!2729 = !DILocation(line: 58, column: 7, scope: !2714)
!2730 = !DILocation(line: 61, column: 7, scope: !2701)
!2731 = !DILocation(line: 62, column: 8, scope: !2718)
!2732 = !DILocation(line: 62, column: 13, scope: !2718)
!2733 = !DILocation(line: 62, column: 10, scope: !2718)
!2734 = !DILocation(line: 63, column: 5, scope: !2718)
!2735 = !DILocation(line: 65, column: 1, scope: !2701)
!2736 = !DILocation(line: 180, column: 19, scope: !535)
!2737 = !DILocation(line: 180, column: 30, scope: !535)
!2738 = !DILocation(line: 180, column: 41, scope: !535)
!2739 = !DILocation(line: 182, column: 14, scope: !535)
!2740 = !DILocation(line: 182, column: 10, scope: !535)
!2741 = !DILocation(line: 184, column: 9, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !535, file: !534, line: 184, column: 7)
!2743 = !DILocation(line: 184, column: 7, scope: !535)
!2744 = !DILocation(line: 186, column: 13, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !534, line: 186, column: 11)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !534, line: 185, column: 5)
!2747 = !DILocation(line: 186, column: 11, scope: !2746)
!2748 = !DILocation(line: 194, column: 30, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !534, line: 187, column: 9)
!2750 = !DILocation(line: 195, column: 16, scope: !2749)
!2751 = !DILocation(line: 195, column: 13, scope: !2749)
!2752 = !DILocation(line: 196, column: 9, scope: !2749)
!2753 = !DILocation(line: 204, column: 69, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !534, line: 204, column: 11)
!2755 = distinct !DILexicalBlock(scope: !2742, file: !534, line: 199, column: 5)
!2756 = !DILocation(line: 205, column: 11, scope: !2754)
!2757 = !DILocation(line: 204, column: 11, scope: !2755)
!2758 = !DILocation(line: 206, column: 9, scope: !2754)
!2759 = !DILocation(line: 210, column: 7, scope: !535)
!2760 = !DILocation(line: 211, column: 25, scope: !535)
!2761 = !DILocation(line: 51, column: 17, scope: !2701, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 211, column: 10, scope: !535)
!2763 = !DILocation(line: 51, column: 27, scope: !2701, inlinedAt: !2762)
!2764 = !DILocation(line: 53, column: 10, scope: !2710, inlinedAt: !2762)
!2765 = !DILocation(line: 207, column: 14, scope: !2755)
!2766 = !DILocation(line: 207, column: 18, scope: !2755)
!2767 = !DILocation(line: 207, column: 9, scope: !2755)
!2768 = !DILocation(line: 53, column: 8, scope: !2710, inlinedAt: !2762)
!2769 = !DILocation(line: 57, column: 7, scope: !2714, inlinedAt: !2762)
!2770 = !DILocation(line: 58, column: 7, scope: !2714, inlinedAt: !2762)
!2771 = !DILocation(line: 61, column: 7, scope: !2701, inlinedAt: !2762)
!2772 = !DILocation(line: 62, column: 8, scope: !2718, inlinedAt: !2762)
!2773 = !DILocation(line: 62, column: 13, scope: !2718, inlinedAt: !2762)
!2774 = !DILocation(line: 62, column: 10, scope: !2718, inlinedAt: !2762)
!2775 = !DILocation(line: 63, column: 5, scope: !2718, inlinedAt: !2762)
!2776 = !DILocation(line: 211, column: 3, scope: !535)
!2777 = distinct !DISubprogram(name: "xcharalloc", scope: !534, file: !534, line: 220, type: !1733, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2778)
!2778 = !{!2779}
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2777, file: !534, line: 220, type: !94)
!2780 = !DILocation(line: 220, column: 20, scope: !2777)
!2781 = !DILocation(line: 39, column: 17, scope: !2661, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 222, column: 10, scope: !2777)
!2783 = !DILocation(line: 41, column: 13, scope: !2661, inlinedAt: !2782)
!2784 = !DILocation(line: 41, column: 9, scope: !2661, inlinedAt: !2782)
!2785 = !DILocation(line: 42, column: 8, scope: !2672, inlinedAt: !2782)
!2786 = !DILocation(line: 42, column: 15, scope: !2672, inlinedAt: !2782)
!2787 = !DILocation(line: 42, column: 10, scope: !2672, inlinedAt: !2782)
!2788 = !DILocation(line: 43, column: 5, scope: !2672, inlinedAt: !2782)
!2789 = !DILocation(line: 222, column: 3, scope: !2777)
!2790 = distinct !DISubprogram(name: "x2realloc", scope: !2662, file: !2662, line: 74, type: !2791, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!49, !49, !538}
!2793 = !{!2794, !2795}
!2794 = !DILocalVariable(name: "p", arg: 1, scope: !2790, file: !2662, line: 74, type: !49)
!2795 = !DILocalVariable(name: "pn", arg: 2, scope: !2790, file: !2662, line: 74, type: !538)
!2796 = !DILocation(line: 74, column: 18, scope: !2790)
!2797 = !DILocation(line: 74, column: 29, scope: !2790)
!2798 = !DILocation(line: 180, column: 19, scope: !535, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 76, column: 10, scope: !2790)
!2800 = !DILocation(line: 180, column: 30, scope: !535, inlinedAt: !2799)
!2801 = !DILocation(line: 180, column: 41, scope: !535, inlinedAt: !2799)
!2802 = !DILocation(line: 182, column: 14, scope: !535, inlinedAt: !2799)
!2803 = !DILocation(line: 182, column: 10, scope: !535, inlinedAt: !2799)
!2804 = !DILocation(line: 184, column: 9, scope: !2742, inlinedAt: !2799)
!2805 = !DILocation(line: 184, column: 7, scope: !535, inlinedAt: !2799)
!2806 = !DILocation(line: 186, column: 13, scope: !2745, inlinedAt: !2799)
!2807 = !DILocation(line: 186, column: 11, scope: !2746, inlinedAt: !2799)
!2808 = !DILocation(line: 210, column: 7, scope: !535, inlinedAt: !2799)
!2809 = !DILocation(line: 51, column: 17, scope: !2701, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 211, column: 10, scope: !535, inlinedAt: !2799)
!2811 = !DILocation(line: 51, column: 27, scope: !2701, inlinedAt: !2810)
!2812 = !DILocation(line: 53, column: 10, scope: !2710, inlinedAt: !2810)
!2813 = !DILocation(line: 205, column: 11, scope: !2754, inlinedAt: !2799)
!2814 = !DILocation(line: 204, column: 11, scope: !2755, inlinedAt: !2799)
!2815 = !DILocation(line: 206, column: 9, scope: !2754, inlinedAt: !2799)
!2816 = !DILocation(line: 207, column: 14, scope: !2755, inlinedAt: !2799)
!2817 = !DILocation(line: 207, column: 18, scope: !2755, inlinedAt: !2799)
!2818 = !DILocation(line: 207, column: 9, scope: !2755, inlinedAt: !2799)
!2819 = !DILocation(line: 53, column: 8, scope: !2710, inlinedAt: !2810)
!2820 = !DILocation(line: 57, column: 7, scope: !2714, inlinedAt: !2810)
!2821 = !DILocation(line: 58, column: 7, scope: !2714, inlinedAt: !2810)
!2822 = !DILocation(line: 61, column: 7, scope: !2701, inlinedAt: !2810)
!2823 = !DILocation(line: 62, column: 8, scope: !2718, inlinedAt: !2810)
!2824 = !DILocation(line: 62, column: 13, scope: !2718, inlinedAt: !2810)
!2825 = !DILocation(line: 62, column: 10, scope: !2718, inlinedAt: !2810)
!2826 = !DILocation(line: 63, column: 5, scope: !2718, inlinedAt: !2810)
!2827 = !DILocation(line: 76, column: 3, scope: !2790)
!2828 = distinct !DISubprogram(name: "xzalloc", scope: !2662, file: !2662, line: 84, type: !2663, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2829)
!2829 = !{!2830}
!2830 = !DILocalVariable(name: "s", arg: 1, scope: !2828, file: !2662, line: 84, type: !94)
!2831 = !DILocation(line: 84, column: 17, scope: !2828)
!2832 = !DILocation(line: 39, column: 17, scope: !2661, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 86, column: 18, scope: !2828)
!2834 = !DILocation(line: 41, column: 13, scope: !2661, inlinedAt: !2833)
!2835 = !DILocation(line: 41, column: 9, scope: !2661, inlinedAt: !2833)
!2836 = !DILocation(line: 42, column: 8, scope: !2672, inlinedAt: !2833)
!2837 = !DILocation(line: 42, column: 15, scope: !2672, inlinedAt: !2833)
!2838 = !DILocation(line: 42, column: 10, scope: !2672, inlinedAt: !2833)
!2839 = !DILocation(line: 43, column: 5, scope: !2672, inlinedAt: !2833)
!2840 = !DILocation(line: 86, column: 10, scope: !2828)
!2841 = !DILocation(line: 86, column: 3, scope: !2828)
!2842 = distinct !DISubprogram(name: "xcalloc", scope: !2662, file: !2662, line: 93, type: !2648, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2843)
!2843 = !{!2844, !2845, !2846}
!2844 = !DILocalVariable(name: "n", arg: 1, scope: !2842, file: !2662, line: 93, type: !94)
!2845 = !DILocalVariable(name: "s", arg: 2, scope: !2842, file: !2662, line: 93, type: !94)
!2846 = !DILocalVariable(name: "p", scope: !2842, file: !2662, line: 95, type: !49)
!2847 = !DILocation(line: 93, column: 17, scope: !2842)
!2848 = !DILocation(line: 93, column: 27, scope: !2842)
!2849 = !DILocation(line: 100, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2842, file: !2662, line: 100, column: 7)
!2851 = !DILocation(line: 101, column: 7, scope: !2850)
!2852 = !DILocation(line: 101, column: 18, scope: !2850)
!2853 = !DILocation(line: 95, column: 9, scope: !2842)
!2854 = !DILocation(line: 101, column: 16, scope: !2850)
!2855 = !DILocation(line: 100, column: 7, scope: !2842)
!2856 = !DILocation(line: 102, column: 5, scope: !2850)
!2857 = !DILocation(line: 103, column: 3, scope: !2842)
!2858 = distinct !DISubprogram(name: "xmemdup", scope: !2662, file: !2662, line: 111, type: !2859, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2863)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!49, !2861, !94}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2863 = !{!2864, !2865}
!2864 = !DILocalVariable(name: "p", arg: 1, scope: !2858, file: !2662, line: 111, type: !2861)
!2865 = !DILocalVariable(name: "s", arg: 2, scope: !2858, file: !2662, line: 111, type: !94)
!2866 = !DILocation(line: 111, column: 22, scope: !2858)
!2867 = !DILocation(line: 111, column: 32, scope: !2858)
!2868 = !DILocation(line: 39, column: 17, scope: !2661, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 113, column: 18, scope: !2858)
!2870 = !DILocation(line: 41, column: 13, scope: !2661, inlinedAt: !2869)
!2871 = !DILocation(line: 41, column: 9, scope: !2661, inlinedAt: !2869)
!2872 = !DILocation(line: 42, column: 8, scope: !2672, inlinedAt: !2869)
!2873 = !DILocation(line: 42, column: 15, scope: !2672, inlinedAt: !2869)
!2874 = !DILocation(line: 42, column: 10, scope: !2672, inlinedAt: !2869)
!2875 = !DILocation(line: 43, column: 5, scope: !2672, inlinedAt: !2869)
!2876 = !DILocation(line: 113, column: 10, scope: !2858)
!2877 = !DILocation(line: 113, column: 3, scope: !2858)
!2878 = distinct !DISubprogram(name: "xstrdup", scope: !2662, file: !2662, line: 119, type: !1935, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2879)
!2879 = !{!2880}
!2880 = !DILocalVariable(name: "string", arg: 1, scope: !2878, file: !2662, line: 119, type: !6)
!2881 = !DILocation(line: 119, column: 22, scope: !2878)
!2882 = !DILocation(line: 121, column: 27, scope: !2878)
!2883 = !DILocation(line: 121, column: 43, scope: !2878)
!2884 = !DILocation(line: 111, column: 22, scope: !2858, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 121, column: 10, scope: !2878)
!2886 = !DILocation(line: 111, column: 32, scope: !2858, inlinedAt: !2885)
!2887 = !DILocation(line: 39, column: 17, scope: !2661, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 113, column: 18, scope: !2858, inlinedAt: !2885)
!2889 = !DILocation(line: 41, column: 13, scope: !2661, inlinedAt: !2888)
!2890 = !DILocation(line: 41, column: 9, scope: !2661, inlinedAt: !2888)
!2891 = !DILocation(line: 42, column: 8, scope: !2672, inlinedAt: !2888)
!2892 = !DILocation(line: 42, column: 15, scope: !2672, inlinedAt: !2888)
!2893 = !DILocation(line: 42, column: 10, scope: !2672, inlinedAt: !2888)
!2894 = !DILocation(line: 43, column: 5, scope: !2672, inlinedAt: !2888)
!2895 = !DILocation(line: 113, column: 10, scope: !2858, inlinedAt: !2885)
!2896 = !DILocation(line: 121, column: 3, scope: !2878)
!2897 = distinct !DISubprogram(name: "xalloc_die", scope: !2898, file: !2898, line: 32, type: !663, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !547, variables: !4)
!2898 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2899 = !DILocation(line: 34, column: 10, scope: !2897)
!2900 = !DILocation(line: 34, column: 33, scope: !2897)
!2901 = !DILocation(line: 34, column: 3, scope: !2897)
!2902 = !DILocation(line: 40, column: 3, scope: !2897)
!2903 = distinct !DISubprogram(name: "rpl_calloc", scope: !2904, file: !2904, line: 42, type: !2648, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !2905)
!2904 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2905 = !{!2906, !2907, !2908, !2909}
!2906 = !DILocalVariable(name: "n", arg: 1, scope: !2903, file: !2904, line: 42, type: !94)
!2907 = !DILocalVariable(name: "s", arg: 2, scope: !2903, file: !2904, line: 42, type: !94)
!2908 = !DILocalVariable(name: "result", scope: !2903, file: !2904, line: 44, type: !49)
!2909 = !DILocalVariable(name: "bytes", scope: !2910, file: !2904, line: 56, type: !94)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !2904, line: 53, column: 5)
!2911 = distinct !DILexicalBlock(scope: !2903, file: !2904, line: 47, column: 7)
!2912 = !DILocation(line: 42, column: 20, scope: !2903)
!2913 = !DILocation(line: 42, column: 30, scope: !2903)
!2914 = !DILocation(line: 47, column: 9, scope: !2911)
!2915 = !DILocation(line: 47, column: 19, scope: !2911)
!2916 = !DILocation(line: 47, column: 14, scope: !2911)
!2917 = !DILocation(line: 56, column: 24, scope: !2910)
!2918 = !DILocation(line: 56, column: 14, scope: !2910)
!2919 = !DILocation(line: 57, column: 17, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2910, file: !2904, line: 57, column: 11)
!2921 = !DILocation(line: 57, column: 21, scope: !2920)
!2922 = !DILocation(line: 57, column: 11, scope: !2910)
!2923 = !DILocation(line: 59, column: 11, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2920, file: !2904, line: 58, column: 9)
!2925 = !DILocation(line: 59, column: 17, scope: !2924)
!2926 = !DILocation(line: 65, column: 12, scope: !2903)
!2927 = !DILocation(line: 44, column: 9, scope: !2903)
!2928 = !DILocation(line: 72, column: 3, scope: !2903)
!2929 = !DILocation(line: 73, column: 1, scope: !2903)
!2930 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !2931, file: !2931, line: 334, type: !2932, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !2946)
!2931 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!94, !2934, !6, !94, !2935}
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !983, line: 6, baseType: !2937)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !985, line: 21, baseType: !2938)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !985, line: 13, size: 64, elements: !2939)
!2939 = !{!2940, !2941}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2938, file: !985, line: 15, baseType: !25, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2938, file: !985, line: 20, baseType: !2942, size: 32, offset: 32)
!2942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2938, file: !985, line: 16, size: 32, elements: !2943)
!2943 = !{!2944, !2945}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2942, file: !985, line: 18, baseType: !113, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2942, file: !985, line: 19, baseType: !994, size: 32)
!2946 = !{!2947, !2948, !2949, !2950, !2951, !2952, !2953}
!2947 = !DILocalVariable(name: "pwc", arg: 1, scope: !2930, file: !2931, line: 334, type: !2934)
!2948 = !DILocalVariable(name: "s", arg: 2, scope: !2930, file: !2931, line: 334, type: !6)
!2949 = !DILocalVariable(name: "n", arg: 3, scope: !2930, file: !2931, line: 334, type: !94)
!2950 = !DILocalVariable(name: "ps", arg: 4, scope: !2930, file: !2931, line: 334, type: !2935)
!2951 = !DILocalVariable(name: "ret", scope: !2930, file: !2931, line: 336, type: !94)
!2952 = !DILocalVariable(name: "wc", scope: !2930, file: !2931, line: 337, type: !999)
!2953 = !DILocalVariable(name: "uc", scope: !2954, file: !2931, line: 398, type: !494)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !2931, line: 397, column: 5)
!2955 = distinct !DILexicalBlock(scope: !2930, file: !2931, line: 396, column: 7)
!2956 = !DILocation(line: 334, column: 23, scope: !2930)
!2957 = !DILocation(line: 334, column: 40, scope: !2930)
!2958 = !DILocation(line: 334, column: 50, scope: !2930)
!2959 = !DILocation(line: 334, column: 64, scope: !2930)
!2960 = !DILocation(line: 337, column: 3, scope: !2930)
!2961 = !DILocation(line: 353, column: 9, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2930, file: !2931, line: 353, column: 7)
!2963 = !DILocation(line: 353, column: 7, scope: !2930)
!2964 = !DILocation(line: 388, column: 9, scope: !2930)
!2965 = !DILocation(line: 336, column: 10, scope: !2930)
!2966 = !DILocation(line: 396, column: 19, scope: !2955)
!2967 = !DILocation(line: 396, column: 31, scope: !2955)
!2968 = !DILocation(line: 396, column: 26, scope: !2955)
!2969 = !DILocation(line: 396, column: 41, scope: !2955)
!2970 = !DILocation(line: 396, column: 7, scope: !2930)
!2971 = !DILocation(line: 398, column: 26, scope: !2954)
!2972 = !DILocation(line: 398, column: 21, scope: !2954)
!2973 = !DILocation(line: 399, column: 14, scope: !2954)
!2974 = !DILocation(line: 399, column: 12, scope: !2954)
!2975 = !DILocation(line: 405, column: 1, scope: !2930)
!2976 = distinct !DISubprogram(name: "close_stream", scope: !2977, file: !2977, line: 56, type: !2978, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3020)
!2977 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!25, !2980}
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2461, line: 7, baseType: !2982)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2463, line: 241, size: 1728, elements: !2983)
!2983 = !{!2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2982, file: !2463, line: 242, baseType: !25, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2982, file: !2463, line: 247, baseType: !50, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2982, file: !2463, line: 248, baseType: !50, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2982, file: !2463, line: 249, baseType: !50, size: 64, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2982, file: !2463, line: 250, baseType: !50, size: 64, offset: 256)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2982, file: !2463, line: 251, baseType: !50, size: 64, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2982, file: !2463, line: 252, baseType: !50, size: 64, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2982, file: !2463, line: 253, baseType: !50, size: 64, offset: 448)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2982, file: !2463, line: 254, baseType: !50, size: 64, offset: 512)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2982, file: !2463, line: 256, baseType: !50, size: 64, offset: 576)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2982, file: !2463, line: 257, baseType: !50, size: 64, offset: 640)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2982, file: !2463, line: 258, baseType: !50, size: 64, offset: 704)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2982, file: !2463, line: 260, baseType: !2997, size: 64, offset: 768)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2463, line: 156, size: 192, elements: !2999)
!2999 = !{!3000, !3001, !3003}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2998, file: !2463, line: 157, baseType: !2997, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2998, file: !2463, line: 158, baseType: !3002, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2998, file: !2463, line: 162, baseType: !25, size: 32, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2982, file: !2463, line: 262, baseType: !3002, size: 64, offset: 832)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2982, file: !2463, line: 264, baseType: !25, size: 32, offset: 896)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2982, file: !2463, line: 268, baseType: !25, size: 32, offset: 928)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2982, file: !2463, line: 270, baseType: !2489, size: 64, offset: 960)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2982, file: !2463, line: 274, baseType: !93, size: 16, offset: 1024)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2982, file: !2463, line: 275, baseType: !2494, size: 8, offset: 1040)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2982, file: !2463, line: 276, baseType: !2496, size: 8, offset: 1048)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2982, file: !2463, line: 280, baseType: !2498, size: 64, offset: 1088)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2982, file: !2463, line: 289, baseType: !2501, size: 64, offset: 1152)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2982, file: !2463, line: 297, baseType: !49, size: 64, offset: 1216)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2982, file: !2463, line: 298, baseType: !49, size: 64, offset: 1280)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2982, file: !2463, line: 299, baseType: !49, size: 64, offset: 1344)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2982, file: !2463, line: 300, baseType: !49, size: 64, offset: 1408)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2982, file: !2463, line: 302, baseType: !94, size: 64, offset: 1472)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2982, file: !2463, line: 303, baseType: !25, size: 32, offset: 1536)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2982, file: !2463, line: 305, baseType: !2509, size: 160, offset: 1568)
!3020 = !{!3021, !3022, !3024, !3025}
!3021 = !DILocalVariable(name: "stream", arg: 1, scope: !2976, file: !2977, line: 56, type: !2980)
!3022 = !DILocalVariable(name: "some_pending", scope: !2976, file: !2977, line: 58, type: !3023)
!3023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3024 = !DILocalVariable(name: "prev_fail", scope: !2976, file: !2977, line: 59, type: !3023)
!3025 = !DILocalVariable(name: "fclose_fail", scope: !2976, file: !2977, line: 60, type: !3023)
!3026 = !DILocation(line: 56, column: 21, scope: !2976)
!3027 = !DILocation(line: 58, column: 30, scope: !2976)
!3028 = !DILocalVariable(name: "__stream", arg: 1, scope: !3029, file: !3030, line: 132, type: !2980)
!3029 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3030, file: !3030, line: 132, type: !2978, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3031)
!3030 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3031 = !{!3028}
!3032 = !DILocation(line: 132, column: 1, scope: !3029, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 59, column: 27, scope: !2976)
!3034 = !DILocation(line: 134, column: 10, scope: !3029, inlinedAt: !3033)
!3035 = !{!3036, !632, i64 0}
!3036 = !{!"_IO_FILE", !632, i64 0, !583, i64 8, !583, i64 16, !583, i64 24, !583, i64 32, !583, i64 40, !583, i64 48, !583, i64 56, !583, i64 64, !583, i64 72, !583, i64 80, !583, i64 88, !583, i64 96, !583, i64 104, !632, i64 112, !632, i64 116, !1778, i64 120, !1234, i64 128, !584, i64 130, !584, i64 131, !583, i64 136, !1778, i64 144, !583, i64 152, !583, i64 160, !583, i64 168, !583, i64 176, !1778, i64 184, !632, i64 192, !584, i64 196}
!3037 = !DILocation(line: 59, column: 43, scope: !2976)
!3038 = !DILocation(line: 60, column: 29, scope: !2976)
!3039 = !DILocation(line: 60, column: 45, scope: !2976)
!3040 = !DILocation(line: 70, column: 17, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !2976, file: !2977, line: 70, column: 7)
!3042 = !DILocation(line: 58, column: 50, scope: !2976)
!3043 = !DILocation(line: 70, column: 33, scope: !3041)
!3044 = !DILocation(line: 70, column: 53, scope: !3041)
!3045 = !DILocation(line: 70, column: 59, scope: !3041)
!3046 = !DILocation(line: 70, column: 7, scope: !2976)
!3047 = !DILocation(line: 72, column: 11, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3041, file: !2977, line: 71, column: 5)
!3049 = !DILocation(line: 73, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3048, file: !2977, line: 72, column: 11)
!3051 = !DILocation(line: 73, column: 15, scope: !3050)
!3052 = !DILocation(line: 78, column: 1, scope: !2976)
!3053 = distinct !DISubprogram(name: "hard_locale", scope: !3054, file: !3054, line: 38, type: !3055, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3057)
!3054 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!17, !25}
!3057 = !{!3058, !3059, !3060}
!3058 = !DILocalVariable(name: "category", arg: 1, scope: !3053, file: !3054, line: 38, type: !25)
!3059 = !DILocalVariable(name: "hard", scope: !3053, file: !3054, line: 40, type: !17)
!3060 = !DILocalVariable(name: "p", scope: !3053, file: !3054, line: 41, type: !6)
!3061 = !DILocation(line: 38, column: 18, scope: !3053)
!3062 = !DILocation(line: 40, column: 8, scope: !3053)
!3063 = !DILocation(line: 41, column: 19, scope: !3053)
!3064 = !DILocation(line: 41, column: 15, scope: !3053)
!3065 = !DILocation(line: 43, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3053, file: !3054, line: 43, column: 7)
!3067 = !DILocation(line: 43, column: 7, scope: !3053)
!3068 = !DILocation(line: 47, column: 15, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !3054, line: 47, column: 15)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !3054, line: 46, column: 9)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !3054, line: 45, column: 11)
!3072 = distinct !DILexicalBlock(scope: !3066, file: !3054, line: 44, column: 5)
!3073 = !DILocation(line: 47, column: 31, scope: !3069)
!3074 = !DILocation(line: 47, column: 36, scope: !3069)
!3075 = !DILocation(line: 47, column: 39, scope: !3069)
!3076 = !DILocation(line: 47, column: 59, scope: !3069)
!3077 = !DILocation(line: 47, column: 15, scope: !3070)
!3078 = !DILocation(line: 48, column: 13, scope: !3069)
!3079 = !DILocation(line: 71, column: 3, scope: !3053)
!3080 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3081, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!6}
!3083 = !{!3084, !3085}
!3084 = !DILocalVariable(name: "codeset", scope: !3080, file: !496, line: 395, type: !6)
!3085 = !DILocalVariable(name: "aliases", scope: !3080, file: !496, line: 396, type: !6)
!3086 = !DILocalVariable(name: "buf1", scope: !3087, file: !496, line: 196, type: !3154)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !496, line: 194, column: 21)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !496, line: 193, column: 19)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !496, line: 193, column: 19)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !496, line: 188, column: 17)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !496, line: 181, column: 19)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !496, line: 177, column: 13)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !496, line: 173, column: 15)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !496, line: 161, column: 9)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !496, line: 157, column: 11)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !496, line: 130, column: 5)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !496, line: 129, column: 7)
!3098 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3081, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3099)
!3099 = !{!3100, !3101, !3102, !3103, !3104, !3106, !3107, !3108, !3109, !3150, !3151, !3152, !3086, !3153, !3157, !3158, !3159}
!3100 = !DILocalVariable(name: "cp", scope: !3098, file: !496, line: 126, type: !6)
!3101 = !DILocalVariable(name: "dir", scope: !3096, file: !496, line: 132, type: !6)
!3102 = !DILocalVariable(name: "base", scope: !3096, file: !496, line: 133, type: !6)
!3103 = !DILocalVariable(name: "file_name", scope: !3096, file: !496, line: 134, type: !50)
!3104 = !DILocalVariable(name: "dir_len", scope: !3105, file: !496, line: 144, type: !94)
!3105 = distinct !DILexicalBlock(scope: !3096, file: !496, line: 143, column: 7)
!3106 = !DILocalVariable(name: "base_len", scope: !3105, file: !496, line: 145, type: !94)
!3107 = !DILocalVariable(name: "add_slash", scope: !3105, file: !496, line: 146, type: !25)
!3108 = !DILocalVariable(name: "fd", scope: !3094, file: !496, line: 162, type: !25)
!3109 = !DILocalVariable(name: "fp", scope: !3092, file: !496, line: 178, type: !3110)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2461, line: 7, baseType: !3112)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2463, line: 241, size: 1728, elements: !3113)
!3113 = !{!3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3112, file: !2463, line: 242, baseType: !25, size: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3112, file: !2463, line: 247, baseType: !50, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3112, file: !2463, line: 248, baseType: !50, size: 64, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3112, file: !2463, line: 249, baseType: !50, size: 64, offset: 192)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3112, file: !2463, line: 250, baseType: !50, size: 64, offset: 256)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3112, file: !2463, line: 251, baseType: !50, size: 64, offset: 320)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3112, file: !2463, line: 252, baseType: !50, size: 64, offset: 384)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3112, file: !2463, line: 253, baseType: !50, size: 64, offset: 448)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3112, file: !2463, line: 254, baseType: !50, size: 64, offset: 512)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3112, file: !2463, line: 256, baseType: !50, size: 64, offset: 576)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3112, file: !2463, line: 257, baseType: !50, size: 64, offset: 640)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3112, file: !2463, line: 258, baseType: !50, size: 64, offset: 704)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3112, file: !2463, line: 260, baseType: !3127, size: 64, offset: 768)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2463, line: 156, size: 192, elements: !3129)
!3129 = !{!3130, !3131, !3133}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3128, file: !2463, line: 157, baseType: !3127, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3128, file: !2463, line: 158, baseType: !3132, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3128, file: !2463, line: 162, baseType: !25, size: 32, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3112, file: !2463, line: 262, baseType: !3132, size: 64, offset: 832)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3112, file: !2463, line: 264, baseType: !25, size: 32, offset: 896)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3112, file: !2463, line: 268, baseType: !25, size: 32, offset: 928)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3112, file: !2463, line: 270, baseType: !2489, size: 64, offset: 960)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3112, file: !2463, line: 274, baseType: !93, size: 16, offset: 1024)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3112, file: !2463, line: 275, baseType: !2494, size: 8, offset: 1040)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3112, file: !2463, line: 276, baseType: !2496, size: 8, offset: 1048)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3112, file: !2463, line: 280, baseType: !2498, size: 64, offset: 1088)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3112, file: !2463, line: 289, baseType: !2501, size: 64, offset: 1152)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3112, file: !2463, line: 297, baseType: !49, size: 64, offset: 1216)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3112, file: !2463, line: 298, baseType: !49, size: 64, offset: 1280)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3112, file: !2463, line: 299, baseType: !49, size: 64, offset: 1344)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3112, file: !2463, line: 300, baseType: !49, size: 64, offset: 1408)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3112, file: !2463, line: 302, baseType: !94, size: 64, offset: 1472)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3112, file: !2463, line: 303, baseType: !25, size: 32, offset: 1536)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3112, file: !2463, line: 305, baseType: !2509, size: 160, offset: 1568)
!3150 = !DILocalVariable(name: "res_ptr", scope: !3090, file: !496, line: 190, type: !50)
!3151 = !DILocalVariable(name: "res_size", scope: !3090, file: !496, line: 191, type: !94)
!3152 = !DILocalVariable(name: "c", scope: !3087, file: !496, line: 195, type: !25)
!3153 = !DILocalVariable(name: "buf2", scope: !3087, file: !496, line: 197, type: !3154)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3155)
!3155 = !{!3156}
!3156 = !DISubrange(count: 51)
!3157 = !DILocalVariable(name: "l1", scope: !3087, file: !496, line: 198, type: !94)
!3158 = !DILocalVariable(name: "l2", scope: !3087, file: !496, line: 198, type: !94)
!3159 = !DILocalVariable(name: "old_res_ptr", scope: !3087, file: !496, line: 199, type: !50)
!3160 = !DILocation(line: 196, column: 28, scope: !3087, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 589, column: 18, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3080, file: !496, line: 589, column: 3)
!3163 = !DILocation(line: 197, column: 28, scope: !3087, inlinedAt: !3161)
!3164 = !DILocation(line: 403, column: 13, scope: !3080)
!3165 = !DILocation(line: 395, column: 15, scope: !3080)
!3166 = !DILocation(line: 584, column: 15, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3080, file: !496, line: 584, column: 7)
!3168 = !DILocation(line: 584, column: 7, scope: !3080)
!3169 = !DILocation(line: 128, column: 8, scope: !3098, inlinedAt: !3161)
!3170 = !DILocation(line: 126, column: 15, scope: !3098, inlinedAt: !3161)
!3171 = !DILocation(line: 129, column: 10, scope: !3097, inlinedAt: !3161)
!3172 = !DILocation(line: 129, column: 7, scope: !3098, inlinedAt: !3161)
!3173 = !DILocation(line: 138, column: 13, scope: !3096, inlinedAt: !3161)
!3174 = !DILocation(line: 132, column: 19, scope: !3096, inlinedAt: !3161)
!3175 = !DILocation(line: 139, column: 15, scope: !3176, inlinedAt: !3161)
!3176 = distinct !DILexicalBlock(scope: !3096, file: !496, line: 139, column: 11)
!3177 = !DILocation(line: 139, column: 23, scope: !3176, inlinedAt: !3161)
!3178 = !DILocation(line: 139, column: 26, scope: !3176, inlinedAt: !3161)
!3179 = !DILocation(line: 139, column: 33, scope: !3176, inlinedAt: !3161)
!3180 = !DILocation(line: 139, column: 11, scope: !3096, inlinedAt: !3161)
!3181 = !DILocation(line: 140, column: 9, scope: !3176, inlinedAt: !3161)
!3182 = !DILocation(line: 144, column: 26, scope: !3105, inlinedAt: !3161)
!3183 = !DILocation(line: 144, column: 16, scope: !3105, inlinedAt: !3161)
!3184 = !DILocation(line: 145, column: 16, scope: !3105, inlinedAt: !3161)
!3185 = !DILocation(line: 146, column: 34, scope: !3105, inlinedAt: !3161)
!3186 = !DILocation(line: 146, column: 38, scope: !3105, inlinedAt: !3161)
!3187 = !DILocation(line: 146, column: 42, scope: !3105, inlinedAt: !3161)
!3188 = !DILocation(line: 147, column: 48, scope: !3105, inlinedAt: !3161)
!3189 = !DILocation(line: 147, column: 46, scope: !3105, inlinedAt: !3161)
!3190 = !DILocation(line: 147, column: 69, scope: !3105, inlinedAt: !3161)
!3191 = !DILocation(line: 147, column: 30, scope: !3105, inlinedAt: !3161)
!3192 = !DILocation(line: 134, column: 13, scope: !3096, inlinedAt: !3161)
!3193 = !DILocation(line: 148, column: 13, scope: !3105, inlinedAt: !3161)
!3194 = !DILocation(line: 150, column: 13, scope: !3195, inlinedAt: !3161)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !496, line: 149, column: 11)
!3196 = distinct !DILexicalBlock(scope: !3105, file: !496, line: 148, column: 13)
!3197 = !DILocation(line: 151, column: 17, scope: !3195, inlinedAt: !3161)
!3198 = !DILocation(line: 152, column: 34, scope: !3199, inlinedAt: !3161)
!3199 = distinct !DILexicalBlock(scope: !3195, file: !496, line: 151, column: 17)
!3200 = !DILocation(line: 153, column: 41, scope: !3195, inlinedAt: !3161)
!3201 = !DILocation(line: 153, column: 13, scope: !3195, inlinedAt: !3161)
!3202 = !DILocation(line: 157, column: 11, scope: !3096, inlinedAt: !3161)
!3203 = !DILocation(line: 171, column: 16, scope: !3094, inlinedAt: !3161)
!3204 = !DILocation(line: 162, column: 15, scope: !3094, inlinedAt: !3161)
!3205 = !DILocation(line: 173, column: 18, scope: !3093, inlinedAt: !3161)
!3206 = !DILocation(line: 173, column: 15, scope: !3094, inlinedAt: !3161)
!3207 = !DILocation(line: 180, column: 20, scope: !3092, inlinedAt: !3161)
!3208 = !DILocation(line: 178, column: 21, scope: !3092, inlinedAt: !3161)
!3209 = !DILocation(line: 181, column: 22, scope: !3091, inlinedAt: !3161)
!3210 = !DILocation(line: 181, column: 19, scope: !3092, inlinedAt: !3161)
!3211 = !DILocation(line: 184, column: 19, scope: !3212, inlinedAt: !3161)
!3212 = distinct !DILexicalBlock(scope: !3091, file: !496, line: 182, column: 17)
!3213 = !DILocation(line: 186, column: 17, scope: !3212, inlinedAt: !3161)
!3214 = !DILocation(line: 190, column: 25, scope: !3090, inlinedAt: !3161)
!3215 = !DILocation(line: 191, column: 26, scope: !3090, inlinedAt: !3161)
!3216 = !DILocation(line: 193, column: 19, scope: !3090, inlinedAt: !3161)
!3217 = !DILocation(line: 196, column: 23, scope: !3087, inlinedAt: !3161)
!3218 = !DILocation(line: 197, column: 23, scope: !3087, inlinedAt: !3161)
!3219 = !DILocalVariable(name: "__fp", arg: 1, scope: !3220, file: !3030, line: 63, type: !3110)
!3220 = distinct !DISubprogram(name: "getc_unlocked", scope: !3030, file: !3030, line: 63, type: !3221, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!25, !3110}
!3223 = !{!3219}
!3224 = !DILocation(line: 63, column: 22, scope: !3220, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 201, column: 27, scope: !3087, inlinedAt: !3161)
!3226 = !DILocation(line: 65, column: 10, scope: !3220, inlinedAt: !3225)
!3227 = !{!3036, !583, i64 8}
!3228 = !{!3036, !583, i64 16}
!3229 = !{!"branch_weights", i32 2000, i32 1}
!3230 = !DILocation(line: 195, column: 27, scope: !3087, inlinedAt: !3161)
!3231 = !DILocation(line: 202, column: 27, scope: !3087, inlinedAt: !3161)
!3232 = distinct !{!3232, !3233, !3236}
!3233 = !DILocation(line: 209, column: 27, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !496, line: 207, column: 25)
!3235 = distinct !DILexicalBlock(scope: !3087, file: !496, line: 206, column: 27)
!3236 = !DILocation(line: 211, column: 58, scope: !3234)
!3237 = !DILocation(line: 65, column: 10, scope: !3220, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 210, column: 33, scope: !3234, inlinedAt: !3161)
!3239 = !DILocation(line: 63, column: 22, scope: !3220, inlinedAt: !3238)
!3240 = !DILocation(line: 210, column: 29, scope: !3234, inlinedAt: !3161)
!3241 = distinct !{!3241, !3242, !3243}
!3242 = !DILocation(line: 193, column: 19, scope: !3089)
!3243 = !DILocation(line: 241, column: 21, scope: !3089)
!3244 = !DILocation(line: 216, column: 23, scope: !3087, inlinedAt: !3161)
!3245 = !DILocation(line: 217, column: 27, scope: !3246, inlinedAt: !3161)
!3246 = distinct !DILexicalBlock(scope: !3087, file: !496, line: 217, column: 27)
!3247 = !DILocation(line: 217, column: 64, scope: !3246, inlinedAt: !3161)
!3248 = !DILocation(line: 217, column: 27, scope: !3087, inlinedAt: !3161)
!3249 = !DILocation(line: 219, column: 28, scope: !3087, inlinedAt: !3161)
!3250 = !DILocation(line: 198, column: 30, scope: !3087, inlinedAt: !3161)
!3251 = !DILocation(line: 220, column: 28, scope: !3087, inlinedAt: !3161)
!3252 = !DILocation(line: 198, column: 34, scope: !3087, inlinedAt: !3161)
!3253 = !DILocation(line: 199, column: 29, scope: !3087, inlinedAt: !3161)
!3254 = !DILocation(line: 222, column: 36, scope: !3255, inlinedAt: !3161)
!3255 = distinct !DILexicalBlock(scope: !3087, file: !496, line: 222, column: 27)
!3256 = !DILocation(line: 222, column: 27, scope: !3087, inlinedAt: !3161)
!3257 = !DILocation(line: 225, column: 63, scope: !3258, inlinedAt: !3161)
!3258 = distinct !DILexicalBlock(scope: !3255, file: !496, line: 223, column: 25)
!3259 = !DILocation(line: 225, column: 46, scope: !3258, inlinedAt: !3161)
!3260 = !DILocation(line: 226, column: 25, scope: !3258, inlinedAt: !3161)
!3261 = !DILocation(line: 229, column: 36, scope: !3262, inlinedAt: !3161)
!3262 = distinct !DILexicalBlock(scope: !3255, file: !496, line: 228, column: 25)
!3263 = !DILocation(line: 230, column: 73, scope: !3262, inlinedAt: !3161)
!3264 = !DILocation(line: 230, column: 46, scope: !3262, inlinedAt: !3161)
!3265 = !DILocation(line: 232, column: 35, scope: !3266, inlinedAt: !3161)
!3266 = distinct !DILexicalBlock(scope: !3087, file: !496, line: 232, column: 27)
!3267 = !DILocation(line: 232, column: 27, scope: !3087, inlinedAt: !3161)
!3268 = !DILocation(line: 236, column: 27, scope: !3269, inlinedAt: !3161)
!3269 = distinct !DILexicalBlock(scope: !3266, file: !496, line: 233, column: 25)
!3270 = !DILocation(line: 237, column: 27, scope: !3269, inlinedAt: !3161)
!3271 = !DILocation(line: 241, column: 21, scope: !3088, inlinedAt: !3161)
!3272 = !DILocation(line: 239, column: 39, scope: !3087, inlinedAt: !3161)
!3273 = !DILocation(line: 239, column: 50, scope: !3087, inlinedAt: !3161)
!3274 = !DILocation(line: 239, column: 61, scope: !3087, inlinedAt: !3161)
!3275 = !DILocalVariable(name: "__dest", arg: 1, scope: !3276, file: !3277, line: 88, type: !3280)
!3276 = distinct !DISubprogram(name: "strcpy", scope: !3277, file: !3277, line: 88, type: !3278, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3282)
!3277 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!50, !3280, !3281}
!3280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3281 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3282 = !{!3275, !3283}
!3283 = !DILocalVariable(name: "__src", arg: 2, scope: !3276, file: !3277, line: 88, type: !3281)
!3284 = !DILocation(line: 88, column: 1, scope: !3276, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 239, column: 23, scope: !3087, inlinedAt: !3161)
!3286 = !DILocation(line: 90, column: 49, scope: !3276, inlinedAt: !3285)
!3287 = !DILocation(line: 90, column: 10, scope: !3276, inlinedAt: !3285)
!3288 = !DILocation(line: 88, column: 1, scope: !3276, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 240, column: 23, scope: !3087, inlinedAt: !3161)
!3290 = !DILocation(line: 90, column: 49, scope: !3276, inlinedAt: !3289)
!3291 = !DILocation(line: 90, column: 10, scope: !3276, inlinedAt: !3289)
!3292 = !DILocation(line: 193, column: 19, scope: !3088, inlinedAt: !3161)
!3293 = !DILocation(line: 242, column: 19, scope: !3090, inlinedAt: !3161)
!3294 = !DILocation(line: 243, column: 32, scope: !3295, inlinedAt: !3161)
!3295 = distinct !DILexicalBlock(scope: !3090, file: !496, line: 243, column: 23)
!3296 = !DILocation(line: 243, column: 23, scope: !3090, inlinedAt: !3161)
!3297 = !DILocation(line: 247, column: 33, scope: !3298, inlinedAt: !3161)
!3298 = distinct !DILexicalBlock(scope: !3295, file: !496, line: 246, column: 21)
!3299 = !DILocation(line: 247, column: 45, scope: !3298, inlinedAt: !3161)
!3300 = !DILocation(line: 253, column: 11, scope: !3094, inlinedAt: !3161)
!3301 = !DILocation(line: 377, column: 23, scope: !3096, inlinedAt: !3161)
!3302 = !DILocation(line: 378, column: 5, scope: !3096, inlinedAt: !3161)
!3303 = !DILocation(line: 396, column: 15, scope: !3080)
!3304 = !DILocation(line: 590, column: 8, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3162, file: !496, line: 589, column: 3)
!3306 = !DILocation(line: 590, column: 17, scope: !3305)
!3307 = !DILocation(line: 589, column: 3, scope: !3162)
!3308 = !DILocation(line: 592, column: 9, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !496, line: 592, column: 9)
!3310 = !DILocation(line: 592, column: 35, scope: !3309)
!3311 = !DILocation(line: 593, column: 9, scope: !3309)
!3312 = !DILocation(line: 593, column: 24, scope: !3309)
!3313 = !DILocation(line: 593, column: 31, scope: !3309)
!3314 = !DILocation(line: 593, column: 34, scope: !3309)
!3315 = !DILocation(line: 593, column: 45, scope: !3309)
!3316 = !DILocation(line: 592, column: 9, scope: !3305)
!3317 = !DILocation(line: 595, column: 29, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3309, file: !496, line: 594, column: 7)
!3319 = !DILocation(line: 595, column: 27, scope: !3318)
!3320 = !DILocation(line: 595, column: 46, scope: !3318)
!3321 = !DILocation(line: 596, column: 9, scope: !3318)
!3322 = !DILocation(line: 591, column: 19, scope: !3305)
!3323 = !DILocation(line: 591, column: 36, scope: !3305)
!3324 = !DILocation(line: 591, column: 16, scope: !3305)
!3325 = !DILocation(line: 591, column: 52, scope: !3305)
!3326 = !DILocation(line: 591, column: 69, scope: !3305)
!3327 = !DILocation(line: 591, column: 49, scope: !3305)
!3328 = distinct !{!3328, !3307, !3329}
!3329 = !DILocation(line: 597, column: 7, scope: !3162)
!3330 = !DILocation(line: 602, column: 7, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3080, file: !496, line: 602, column: 7)
!3332 = !DILocation(line: 602, column: 18, scope: !3331)
!3333 = !DILocation(line: 602, column: 7, scope: !3080)
!3334 = !DILocation(line: 612, column: 3, scope: !3080)
!3335 = distinct !DISubprogram(name: "rpl_fclose", scope: !3336, file: !3336, line: 56, type: !3337, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3379)
!3336 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!25, !3339}
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2461, line: 7, baseType: !3341)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2463, line: 241, size: 1728, elements: !3342)
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3341, file: !2463, line: 242, baseType: !25, size: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3341, file: !2463, line: 247, baseType: !50, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3341, file: !2463, line: 248, baseType: !50, size: 64, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3341, file: !2463, line: 249, baseType: !50, size: 64, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3341, file: !2463, line: 250, baseType: !50, size: 64, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3341, file: !2463, line: 251, baseType: !50, size: 64, offset: 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3341, file: !2463, line: 252, baseType: !50, size: 64, offset: 384)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3341, file: !2463, line: 253, baseType: !50, size: 64, offset: 448)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3341, file: !2463, line: 254, baseType: !50, size: 64, offset: 512)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3341, file: !2463, line: 256, baseType: !50, size: 64, offset: 576)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3341, file: !2463, line: 257, baseType: !50, size: 64, offset: 640)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3341, file: !2463, line: 258, baseType: !50, size: 64, offset: 704)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3341, file: !2463, line: 260, baseType: !3356, size: 64, offset: 768)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2463, line: 156, size: 192, elements: !3358)
!3358 = !{!3359, !3360, !3362}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3357, file: !2463, line: 157, baseType: !3356, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3357, file: !2463, line: 158, baseType: !3361, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3357, file: !2463, line: 162, baseType: !25, size: 32, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3341, file: !2463, line: 262, baseType: !3361, size: 64, offset: 832)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3341, file: !2463, line: 264, baseType: !25, size: 32, offset: 896)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3341, file: !2463, line: 268, baseType: !25, size: 32, offset: 928)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3341, file: !2463, line: 270, baseType: !2489, size: 64, offset: 960)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3341, file: !2463, line: 274, baseType: !93, size: 16, offset: 1024)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3341, file: !2463, line: 275, baseType: !2494, size: 8, offset: 1040)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3341, file: !2463, line: 276, baseType: !2496, size: 8, offset: 1048)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3341, file: !2463, line: 280, baseType: !2498, size: 64, offset: 1088)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3341, file: !2463, line: 289, baseType: !2501, size: 64, offset: 1152)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3341, file: !2463, line: 297, baseType: !49, size: 64, offset: 1216)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3341, file: !2463, line: 298, baseType: !49, size: 64, offset: 1280)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3341, file: !2463, line: 299, baseType: !49, size: 64, offset: 1344)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3341, file: !2463, line: 300, baseType: !49, size: 64, offset: 1408)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3341, file: !2463, line: 302, baseType: !94, size: 64, offset: 1472)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3341, file: !2463, line: 303, baseType: !25, size: 32, offset: 1536)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3341, file: !2463, line: 305, baseType: !2509, size: 160, offset: 1568)
!3379 = !{!3380, !3381, !3382, !3383}
!3380 = !DILocalVariable(name: "fp", arg: 1, scope: !3335, file: !3336, line: 56, type: !3339)
!3381 = !DILocalVariable(name: "saved_errno", scope: !3335, file: !3336, line: 58, type: !25)
!3382 = !DILocalVariable(name: "fd", scope: !3335, file: !3336, line: 59, type: !25)
!3383 = !DILocalVariable(name: "result", scope: !3335, file: !3336, line: 60, type: !25)
!3384 = !DILocation(line: 56, column: 19, scope: !3335)
!3385 = !DILocation(line: 58, column: 7, scope: !3335)
!3386 = !DILocation(line: 60, column: 7, scope: !3335)
!3387 = !DILocation(line: 63, column: 8, scope: !3335)
!3388 = !DILocation(line: 59, column: 7, scope: !3335)
!3389 = !DILocation(line: 64, column: 10, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3335, file: !3336, line: 64, column: 7)
!3391 = !DILocation(line: 64, column: 7, scope: !3335)
!3392 = !DILocation(line: 65, column: 12, scope: !3390)
!3393 = !DILocation(line: 65, column: 5, scope: !3390)
!3394 = !DILocation(line: 70, column: 9, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3335, file: !3336, line: 70, column: 7)
!3396 = !DILocation(line: 70, column: 23, scope: !3395)
!3397 = !DILocation(line: 70, column: 33, scope: !3395)
!3398 = !DILocation(line: 70, column: 26, scope: !3395)
!3399 = !DILocation(line: 70, column: 59, scope: !3395)
!3400 = !DILocation(line: 71, column: 7, scope: !3395)
!3401 = !DILocation(line: 71, column: 10, scope: !3395)
!3402 = !DILocation(line: 70, column: 7, scope: !3335)
!3403 = !DILocation(line: 98, column: 12, scope: !3335)
!3404 = !DILocation(line: 103, column: 7, scope: !3335)
!3405 = !DILocation(line: 72, column: 19, scope: !3395)
!3406 = !DILocation(line: 103, column: 19, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3335, file: !3336, line: 103, column: 7)
!3408 = !DILocation(line: 105, column: 13, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3407, file: !3336, line: 104, column: 5)
!3410 = !DILocation(line: 107, column: 5, scope: !3409)
!3411 = !DILocation(line: 110, column: 1, scope: !3335)
!3412 = distinct !DISubprogram(name: "rpl_fflush", scope: !3413, file: !3413, line: 127, type: !3414, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3456)
!3413 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!25, !3416}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2461, line: 7, baseType: !3418)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2463, line: 241, size: 1728, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3418, file: !2463, line: 242, baseType: !25, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3418, file: !2463, line: 247, baseType: !50, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3418, file: !2463, line: 248, baseType: !50, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3418, file: !2463, line: 249, baseType: !50, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3418, file: !2463, line: 250, baseType: !50, size: 64, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3418, file: !2463, line: 251, baseType: !50, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3418, file: !2463, line: 252, baseType: !50, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3418, file: !2463, line: 253, baseType: !50, size: 64, offset: 448)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3418, file: !2463, line: 254, baseType: !50, size: 64, offset: 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3418, file: !2463, line: 256, baseType: !50, size: 64, offset: 576)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3418, file: !2463, line: 257, baseType: !50, size: 64, offset: 640)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3418, file: !2463, line: 258, baseType: !50, size: 64, offset: 704)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3418, file: !2463, line: 260, baseType: !3433, size: 64, offset: 768)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2463, line: 156, size: 192, elements: !3435)
!3435 = !{!3436, !3437, !3439}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3434, file: !2463, line: 157, baseType: !3433, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3434, file: !2463, line: 158, baseType: !3438, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3434, file: !2463, line: 162, baseType: !25, size: 32, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3418, file: !2463, line: 262, baseType: !3438, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3418, file: !2463, line: 264, baseType: !25, size: 32, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3418, file: !2463, line: 268, baseType: !25, size: 32, offset: 928)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3418, file: !2463, line: 270, baseType: !2489, size: 64, offset: 960)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3418, file: !2463, line: 274, baseType: !93, size: 16, offset: 1024)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3418, file: !2463, line: 275, baseType: !2494, size: 8, offset: 1040)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3418, file: !2463, line: 276, baseType: !2496, size: 8, offset: 1048)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3418, file: !2463, line: 280, baseType: !2498, size: 64, offset: 1088)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3418, file: !2463, line: 289, baseType: !2501, size: 64, offset: 1152)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3418, file: !2463, line: 297, baseType: !49, size: 64, offset: 1216)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3418, file: !2463, line: 298, baseType: !49, size: 64, offset: 1280)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3418, file: !2463, line: 299, baseType: !49, size: 64, offset: 1344)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3418, file: !2463, line: 300, baseType: !49, size: 64, offset: 1408)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3418, file: !2463, line: 302, baseType: !94, size: 64, offset: 1472)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3418, file: !2463, line: 303, baseType: !25, size: 32, offset: 1536)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3418, file: !2463, line: 305, baseType: !2509, size: 160, offset: 1568)
!3456 = !{!3457}
!3457 = !DILocalVariable(name: "stream", arg: 1, scope: !3412, file: !3413, line: 127, type: !3416)
!3458 = !DILocation(line: 127, column: 19, scope: !3412)
!3459 = !DILocation(line: 148, column: 14, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3412, file: !3413, line: 148, column: 7)
!3461 = !DILocation(line: 148, column: 22, scope: !3460)
!3462 = !DILocation(line: 148, column: 27, scope: !3460)
!3463 = !DILocation(line: 148, column: 7, scope: !3412)
!3464 = !DILocation(line: 149, column: 12, scope: !3460)
!3465 = !DILocation(line: 149, column: 5, scope: !3460)
!3466 = !DILocalVariable(name: "fp", arg: 1, scope: !3467, file: !3413, line: 40, type: !3416)
!3467 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3413, file: !3413, line: 40, type: !3468, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{null, !3416}
!3470 = !{!3466}
!3471 = !DILocation(line: 40, column: 48, scope: !3467, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 153, column: 3, scope: !3412)
!3473 = !DILocation(line: 42, column: 11, scope: !3474, inlinedAt: !3472)
!3474 = distinct !DILexicalBlock(scope: !3467, file: !3413, line: 42, column: 7)
!3475 = !DILocation(line: 42, column: 18, scope: !3474, inlinedAt: !3472)
!3476 = !DILocation(line: 42, column: 7, scope: !3467, inlinedAt: !3472)
!3477 = !DILocation(line: 44, column: 5, scope: !3474, inlinedAt: !3472)
!3478 = !DILocation(line: 155, column: 10, scope: !3412)
!3479 = !DILocation(line: 155, column: 3, scope: !3412)
!3480 = !DILocation(line: 229, column: 1, scope: !3412)
!3481 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3482, file: !3482, line: 28, type: !3483, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3526)
!3482 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!25, !3485, !3525, !25}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2461, line: 7, baseType: !3487)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2463, line: 241, size: 1728, elements: !3488)
!3488 = !{!3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3487, file: !2463, line: 242, baseType: !25, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3487, file: !2463, line: 247, baseType: !50, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3487, file: !2463, line: 248, baseType: !50, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3487, file: !2463, line: 249, baseType: !50, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3487, file: !2463, line: 250, baseType: !50, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3487, file: !2463, line: 251, baseType: !50, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3487, file: !2463, line: 252, baseType: !50, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3487, file: !2463, line: 253, baseType: !50, size: 64, offset: 448)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3487, file: !2463, line: 254, baseType: !50, size: 64, offset: 512)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3487, file: !2463, line: 256, baseType: !50, size: 64, offset: 576)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3487, file: !2463, line: 257, baseType: !50, size: 64, offset: 640)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3487, file: !2463, line: 258, baseType: !50, size: 64, offset: 704)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3487, file: !2463, line: 260, baseType: !3502, size: 64, offset: 768)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2463, line: 156, size: 192, elements: !3504)
!3504 = !{!3505, !3506, !3508}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3503, file: !2463, line: 157, baseType: !3502, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3503, file: !2463, line: 158, baseType: !3507, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3503, file: !2463, line: 162, baseType: !25, size: 32, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3487, file: !2463, line: 262, baseType: !3507, size: 64, offset: 832)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3487, file: !2463, line: 264, baseType: !25, size: 32, offset: 896)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3487, file: !2463, line: 268, baseType: !25, size: 32, offset: 928)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3487, file: !2463, line: 270, baseType: !2489, size: 64, offset: 960)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3487, file: !2463, line: 274, baseType: !93, size: 16, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3487, file: !2463, line: 275, baseType: !2494, size: 8, offset: 1040)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3487, file: !2463, line: 276, baseType: !2496, size: 8, offset: 1048)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3487, file: !2463, line: 280, baseType: !2498, size: 64, offset: 1088)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3487, file: !2463, line: 289, baseType: !2501, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3487, file: !2463, line: 297, baseType: !49, size: 64, offset: 1216)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3487, file: !2463, line: 298, baseType: !49, size: 64, offset: 1280)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3487, file: !2463, line: 299, baseType: !49, size: 64, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3487, file: !2463, line: 300, baseType: !49, size: 64, offset: 1408)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3487, file: !2463, line: 302, baseType: !94, size: 64, offset: 1472)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3487, file: !2463, line: 303, baseType: !25, size: 32, offset: 1536)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3487, file: !2463, line: 305, baseType: !2509, size: 160, offset: 1568)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !717, line: 57, baseType: !2489)
!3526 = !{!3527, !3528, !3529, !3530}
!3527 = !DILocalVariable(name: "fp", arg: 1, scope: !3481, file: !3482, line: 28, type: !3485)
!3528 = !DILocalVariable(name: "offset", arg: 2, scope: !3481, file: !3482, line: 28, type: !3525)
!3529 = !DILocalVariable(name: "whence", arg: 3, scope: !3481, file: !3482, line: 28, type: !25)
!3530 = !DILocalVariable(name: "pos", scope: !3531, file: !3482, line: 116, type: !3525)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !3482, line: 112, column: 5)
!3532 = distinct !DILexicalBlock(scope: !3481, file: !3482, line: 51, column: 7)
!3533 = !DILocation(line: 28, column: 15, scope: !3481)
!3534 = !DILocation(line: 28, column: 25, scope: !3481)
!3535 = !DILocation(line: 28, column: 37, scope: !3481)
!3536 = !DILocation(line: 51, column: 11, scope: !3532)
!3537 = !DILocation(line: 51, column: 31, scope: !3532)
!3538 = !DILocation(line: 51, column: 24, scope: !3532)
!3539 = !DILocation(line: 52, column: 7, scope: !3532)
!3540 = !DILocation(line: 52, column: 14, scope: !3532)
!3541 = !{!3036, !583, i64 40}
!3542 = !DILocation(line: 52, column: 35, scope: !3532)
!3543 = !{!3036, !583, i64 32}
!3544 = !DILocation(line: 52, column: 28, scope: !3532)
!3545 = !DILocation(line: 53, column: 7, scope: !3532)
!3546 = !DILocation(line: 53, column: 14, scope: !3532)
!3547 = !{!3036, !583, i64 72}
!3548 = !DILocation(line: 53, column: 28, scope: !3532)
!3549 = !DILocation(line: 51, column: 7, scope: !3481)
!3550 = !DILocation(line: 116, column: 26, scope: !3531)
!3551 = !DILocation(line: 116, column: 19, scope: !3531)
!3552 = !DILocation(line: 116, column: 13, scope: !3531)
!3553 = !DILocation(line: 117, column: 15, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3531, file: !3482, line: 117, column: 11)
!3555 = !DILocation(line: 117, column: 11, scope: !3531)
!3556 = !DILocation(line: 127, column: 11, scope: !3531)
!3557 = !DILocation(line: 127, column: 18, scope: !3531)
!3558 = !DILocation(line: 128, column: 11, scope: !3531)
!3559 = !DILocation(line: 128, column: 19, scope: !3531)
!3560 = !{!3036, !1778, i64 144}
!3561 = !DILocation(line: 159, column: 7, scope: !3531)
!3562 = !DILocation(line: 161, column: 10, scope: !3481)
!3563 = !DILocation(line: 161, column: 3, scope: !3481)
!3564 = !DILocation(line: 162, column: 1, scope: !3481)
