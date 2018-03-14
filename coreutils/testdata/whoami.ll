; ModuleID = 'coreutils-8.27/src/whoami.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Print the user name associated with the current effective user ID.\0ASame as id -un.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"whoami\00", align 1
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
@.str.10 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"cannot find name for user ID %lu\00", align 1
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
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !586
  %10 = load i8*, i8** @program_name, align 8, !dbg !586, !tbaa !582
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !586
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !588
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !588, !tbaa !582
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !588
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !589
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !582
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !589
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !590
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590, !tbaa !582
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !590
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !510, metadata !575) #10, !dbg !591
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !510, metadata !575) #10, !dbg !591
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
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !601
  br label %31, !dbg !603

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !604
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !604
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !605
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0)) #10, !dbg !605
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
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !612, metadata !575), !dbg !633
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !613, metadata !575), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !632, metadata !575), !dbg !635
  %3 = load i8*, i8** %1, align 8, !dbg !636, !tbaa !582
  tail call void @set_program_name(i8* %3) #10, !dbg !637
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !638
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !639
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !640
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !641
  %8 = load i8*, i8** @Version, align 8, !dbg !642, !tbaa !582
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !643
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* null, i32* null) #10, !dbg !644
  %10 = icmp eq i32 %9, -1, !dbg !646
  br i1 %10, label %12, label %11, !dbg !647

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !648
  unreachable, !dbg !648

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !649, !tbaa !651
  %14 = icmp eq i32 %13, %0, !dbg !653
  br i1 %14, label %22, label %15, !dbg !654

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !655
  %17 = load i32, i32* @optind, align 4, !dbg !657, !tbaa !651
  %18 = sext i32 %17 to i64, !dbg !658
  %19 = getelementptr inbounds i8*, i8** %1, i64 %18, !dbg !658
  %20 = load i8*, i8** %19, align 8, !dbg !658, !tbaa !582
  %21 = tail call i8* @quote(i8* %20) #10, !dbg !659
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %21) #10, !dbg !660
  tail call void @usage(i32 1) #16, !dbg !661
  unreachable, !dbg !661

; <label>:22:                                     ; preds = %12
  %23 = tail call i32* @__errno_location() #17, !dbg !662
  store i32 0, i32* %23, align 4, !dbg !663, !tbaa !651
  %24 = tail call i32 @geteuid() #10, !dbg !664
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !629, metadata !575), !dbg !665
  %25 = icmp eq i32 %24, -1, !dbg !666
  br i1 %25, label %26, label %29, !dbg !667

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %23, align 4, !dbg !668, !tbaa !651
  %28 = icmp eq i32 %27, 0, !dbg !668
  br i1 %28, label %29, label %34, !dbg !669

; <label>:29:                                     ; preds = %22, %26
  %30 = tail call %struct.passwd* @getpwuid(i32 %24) #10, !dbg !670
  tail call void @llvm.dbg.value(metadata %struct.passwd* %30, i64 0, metadata !614, metadata !575), !dbg !671
  %31 = icmp eq %struct.passwd* %30, null, !dbg !672
  br i1 %31, label %32, label %38, !dbg !674

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %23, align 4, !dbg !675, !tbaa !651
  br label %34, !dbg !674

; <label>:34:                                     ; preds = %32, %26
  %35 = phi i32 [ %33, %32 ], [ %27, %26 ], !dbg !675
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !675
  %37 = zext i32 %24 to i64, !dbg !675
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %35, i8* %36, i64 %37) #10, !dbg !675
  unreachable, !dbg !675

; <label>:38:                                     ; preds = %29
  %39 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i64 0, i32 0, !dbg !676
  %40 = load i8*, i8** %39, align 8, !dbg !676, !tbaa !677
  %41 = tail call i32 @puts(i8* %40), !dbg !679
  ret i32 0, !dbg !680
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

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !681 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !683, metadata !575), !dbg !684
  store i8* %0, i8** @file_name, align 8, !dbg !685, !tbaa !582
  ret void, !dbg !686
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !687 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !691, metadata !575), !dbg !692
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !693, !tbaa !694
  ret void, !dbg !696
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !697 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !582
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !705
  %3 = icmp eq i32 %2, 0, !dbg !706
  br i1 %3, label %21, label %4, !dbg !707

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !708, !tbaa !694, !range !709
  %6 = icmp eq i8 %5, 0, !dbg !708
  %7 = tail call i32* @__errno_location() #17, !dbg !710
  br i1 %6, label %11, label %8, !dbg !712

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !713, !tbaa !651
  %10 = icmp eq i32 %9, 32, !dbg !714
  br i1 %10, label %21, label %11, !dbg !715

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !716
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !701, metadata !575), !dbg !717
  %13 = load i8*, i8** @file_name, align 8, !dbg !718, !tbaa !582
  %14 = icmp eq i8* %13, null, !dbg !718
  %15 = load i32, i32* %7, align 4, !tbaa !651
  br i1 %14, label %18, label %16, !dbg !719

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !720
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.17, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !721
  br label %19, !dbg !721

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.18, i64 0, i64 0), i8* %12) #10, !dbg !722
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !723, !tbaa !651
  tail call void @_exit(i32 %20) #15, !dbg !724
  unreachable, !dbg !724

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !725, !tbaa !582
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !727
  %24 = icmp eq i32 %23, 0, !dbg !728
  br i1 %24, label %27, label %25, !dbg !729

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !730, !tbaa !651
  tail call void @_exit(i32 %26) #15, !dbg !731
  unreachable, !dbg !731

; <label>:27:                                     ; preds = %21
  ret void, !dbg !732
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 !dbg !733 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !738, metadata !575), !dbg !765
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !739, metadata !575), !dbg !766
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !740, metadata !575), !dbg !767
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !741, metadata !575), !dbg !768
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !742, metadata !575), !dbg !769
  tail call void @llvm.dbg.value(metadata void (i32)* %5, i64 0, metadata !743, metadata !575), !dbg !770
  %8 = load i32, i32* @opterr, align 4, !dbg !771, !tbaa !651
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !745, metadata !575), !dbg !772
  store i32 0, i32* @opterr, align 4, !dbg !773, !tbaa !651
  %9 = icmp eq i32 %0, 2, !dbg !774
  br i1 %9, label %10, label %17, !dbg !775

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !776
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !744, metadata !575), !dbg !777
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !778

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !779
  br label %17, !dbg !780

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !781
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !781
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !746, metadata !575), !dbg !782
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !783
  call void @llvm.va_start(i8* nonnull %14), !dbg !783
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !784, !tbaa !582
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !785
  call void @exit(i32 0) #15, !dbg !786
  unreachable, !dbg !786

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !787, !tbaa !651
  store i32 0, i32* @optind, align 4, !dbg !788, !tbaa !651
  ret void, !dbg !789
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #9

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !790 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !792, metadata !575), !dbg !795
  %2 = icmp eq i8* %0, null, !dbg !796
  br i1 %2, label %3, label %6, !dbg !798

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !799, !tbaa !582
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !801
  tail call void @abort() #15, !dbg !802
  unreachable, !dbg !802

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !803
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !793, metadata !575), !dbg !804
  %8 = icmp eq i8* %7, null, !dbg !805
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !806
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !807
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !794, metadata !575), !dbg !808
  %11 = ptrtoint i8* %10 to i64, !dbg !809
  %12 = ptrtoint i8* %0 to i64, !dbg !809
  %13 = sub i64 %11, %12, !dbg !809
  %14 = icmp sgt i64 %13, 6, !dbg !811
  br i1 %14, label %15, label %24, !dbg !812

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !813
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.36, i64 0, i64 0), i64 7) #14, !dbg !814
  %18 = icmp eq i32 %17, 0, !dbg !815
  br i1 %18, label %19, label %24, !dbg !816

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !792, metadata !575), !dbg !795
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.37, i64 0, i64 0), i64 3) #14, !dbg !817
  %21 = icmp eq i32 %20, 0, !dbg !820
  br i1 %21, label %22, label %24, !dbg !821

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !822
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !792, metadata !575), !dbg !795
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !824, !tbaa !582
  br label %24, !dbg !825

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !792, metadata !575), !dbg !795
  store i8* %25, i8** @program_name, align 8, !dbg !826, !tbaa !582
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !827, !tbaa !582
  ret void, !dbg !828
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !829 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !834, metadata !575), !dbg !837
  %2 = tail call i32* @__errno_location() #17, !dbg !838
  %3 = load i32, i32* %2, align 4, !dbg !838, !tbaa !651
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !835, metadata !575), !dbg !839
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !840
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !840
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !840
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !841
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !841
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !836, metadata !575), !dbg !842
  store i32 %3, i32* %2, align 4, !dbg !843, !tbaa !651
  ret %struct.quoting_options* %8, !dbg !844
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !845 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !851, metadata !575), !dbg !852
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !853
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !853
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !854
  %5 = load i32, i32* %4, align 8, !dbg !854, !tbaa !855
  ret i32 %5, !dbg !857
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !858 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !862, metadata !575), !dbg !864
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !863, metadata !575), !dbg !865
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !866
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !866
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !867
  store i32 %1, i32* %5, align 8, !dbg !868, !tbaa !855
  ret void, !dbg !869
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !870 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !874, metadata !575), !dbg !882
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !875, metadata !575), !dbg !883
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !876, metadata !575), !dbg !884
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !877, metadata !575), !dbg !885
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !886
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !886
  %6 = lshr i8 %1, 5, !dbg !887
  %7 = zext i8 %6 to i64, !dbg !887
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !888
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !878, metadata !575), !dbg !889
  %9 = and i8 %1, 31, !dbg !890
  %10 = zext i8 %9 to i32, !dbg !891
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !880, metadata !575), !dbg !892
  %11 = load i32, i32* %8, align 4, !dbg !893, !tbaa !651
  %12 = lshr i32 %11, %10, !dbg !894
  %13 = and i32 %12, 1, !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !881, metadata !575), !dbg !896
  %14 = and i32 %2, 1, !dbg !897
  %15 = xor i32 %13, %14, !dbg !898
  %16 = shl i32 %15, %10, !dbg !899
  %17 = xor i32 %16, %11, !dbg !900
  store i32 %17, i32* %8, align 4, !dbg !900, !tbaa !651
  ret i32 %13, !dbg !901
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !902 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !906, metadata !575), !dbg !909
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !907, metadata !575), !dbg !910
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !911
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !906, metadata !575), !dbg !909
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !906, metadata !575), !dbg !909
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !914
  %6 = load i32, i32* %5, align 4, !dbg !914, !tbaa !915
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !908, metadata !575), !dbg !916
  store i32 %1, i32* %5, align 4, !dbg !917, !tbaa !915
  ret i32 %6, !dbg !918
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !919 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !923, metadata !575), !dbg !926
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !924, metadata !575), !dbg !927
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !925, metadata !575), !dbg !928
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !929
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !923, metadata !575), !dbg !926
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !931
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !923, metadata !575), !dbg !926
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !932
  store i32 10, i32* %6, align 8, !dbg !933, !tbaa !855
  %7 = icmp ne i8* %1, null, !dbg !934
  %8 = icmp ne i8* %2, null, !dbg !936
  %9 = and i1 %7, %8, !dbg !937
  br i1 %9, label %11, label %10, !dbg !937

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !938
  unreachable, !dbg !938

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !939
  store i8* %1, i8** %12, align 8, !dbg !940, !tbaa !941
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !942
  store i8* %2, i8** %13, align 8, !dbg !943, !tbaa !944
  ret void, !dbg !945
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !946 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !950, metadata !575), !dbg !958
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !951, metadata !575), !dbg !959
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !952, metadata !575), !dbg !960
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !953, metadata !575), !dbg !961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !954, metadata !575), !dbg !962
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !963
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !963
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !955, metadata !575), !dbg !964
  %8 = tail call i32* @__errno_location() #17, !dbg !965
  %9 = load i32, i32* %8, align 4, !dbg !965, !tbaa !651
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !956, metadata !575), !dbg !966
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !967
  %11 = load i32, i32* %10, align 8, !dbg !967, !tbaa !855
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !968
  %13 = load i32, i32* %12, align 4, !dbg !968, !tbaa !915
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !969
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !970
  %16 = load i8*, i8** %15, align 8, !dbg !970, !tbaa !941
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !971
  %18 = load i8*, i8** %17, align 8, !dbg !971, !tbaa !944
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !972
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !957, metadata !575), !dbg !973
  store i32 %9, i32* %8, align 4, !dbg !974, !tbaa !651
  ret i64 %19, !dbg !975
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !976 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !982, metadata !575), !dbg !1046
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !983, metadata !575), !dbg !1047
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !984, metadata !575), !dbg !1048
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !985, metadata !575), !dbg !1049
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !986, metadata !575), !dbg !1050
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !987, metadata !575), !dbg !1051
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !988, metadata !575), !dbg !1052
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !989, metadata !575), !dbg !1053
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !990, metadata !575), !dbg !1054
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !992, metadata !575), !dbg !1055
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !993, metadata !575), !dbg !1056
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !994, metadata !575), !dbg !1057
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !995, metadata !575), !dbg !1058
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !996, metadata !575), !dbg !1059
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1060
  %14 = icmp eq i64 %13, 1, !dbg !1061
  %15 = lshr i32 %5, 1, !dbg !1062
  %16 = trunc i32 %15 to i8, !dbg !1062
  %17 = and i8 %16, 1, !dbg !1062
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !998, metadata !575), !dbg !1062
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !999, metadata !575), !dbg !1063
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1000, metadata !575), !dbg !1064
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1001, metadata !575), !dbg !1065
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1066

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !983, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1001, metadata !575), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1000, metadata !575), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !998, metadata !575), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !985, metadata !575), !dbg !1049
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !996, metadata !575), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !995, metadata !575), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !994, metadata !575), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !993, metadata !575), !dbg !1056
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !990, metadata !575), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !989, metadata !575), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !986, metadata !575), !dbg !1050
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
  ], !dbg !1067

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !986, metadata !575), !dbg !1050
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !998, metadata !575), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !998, metadata !575), !dbg !1062
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !986, metadata !575), !dbg !1050
  br label %94, !dbg !1068

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !998, metadata !575), !dbg !1062
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !986, metadata !575), !dbg !1050
  %43 = and i8 %36, 1, !dbg !1070
  %44 = icmp eq i8 %43, 0, !dbg !1070
  br i1 %44, label %45, label %94, !dbg !1068

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1072
  br i1 %46, label %94, label %47, !dbg !1075

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1072, !tbaa !1076
  br label %94, !dbg !1072

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.48, i64 0, i64 0), i32 %28), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !989, metadata !575), !dbg !1053
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), i32 %28), !dbg !1081
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !990, metadata !575), !dbg !1054
  br label %51, !dbg !1082

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !990, metadata !575), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !989, metadata !575), !dbg !1053
  %54 = and i8 %36, 1, !dbg !1083
  %55 = icmp eq i8 %54, 0, !dbg !1083
  br i1 %55, label %56, label %72, !dbg !1085

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !994, metadata !575), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !994, metadata !575), !dbg !1057
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !992, metadata !575), !dbg !1055
  %57 = load i8, i8* %52, align 1, !dbg !1086, !tbaa !1076
  %58 = icmp eq i8 %57, 0, !dbg !1089
  br i1 %58, label %72, label %59, !dbg !1089

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1090

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !994, metadata !575), !dbg !1057
  %64 = icmp ult i64 %63, %40, !dbg !1090
  br i1 %64, label %65, label %67, !dbg !1093

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1090
  store i8 %61, i8* %66, align 1, !dbg !1090, !tbaa !1076
  br label %67, !dbg !1090

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !992, metadata !575), !dbg !1055
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1094
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !994, metadata !575), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !994, metadata !575), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !992, metadata !575), !dbg !1055
  %70 = load i8, i8* %69, align 1, !dbg !1086, !tbaa !1076
  %71 = icmp eq i8 %70, 0, !dbg !1089
  br i1 %71, label %72, label %60, !dbg !1089, !llvm.loop !1095

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !996, metadata !575), !dbg !1059
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !994, metadata !575), !dbg !1057
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !995, metadata !575), !dbg !1058
  br label %94, !dbg !1098

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !996, metadata !575), !dbg !1059
  br label %76, !dbg !1099

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !996, metadata !575), !dbg !1059
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !998, metadata !575), !dbg !1062
  br label %78, !dbg !1100

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !998, metadata !575), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !996, metadata !575), !dbg !1059
  %81 = and i8 %80, 1, !dbg !1101
  %82 = icmp eq i8 %81, 0, !dbg !1101
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !996, metadata !575), !dbg !1059
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1103
  br label %84, !dbg !1103

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !998, metadata !575), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !996, metadata !575), !dbg !1059
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !986, metadata !575), !dbg !1050
  %87 = and i8 %86, 1, !dbg !1104
  %88 = icmp eq i8 %87, 0, !dbg !1104
  br i1 %88, label %89, label %94, !dbg !1106

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1107
  br i1 %90, label %94, label %91, !dbg !1110

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1107, !tbaa !1076
  br label %94, !dbg !1107

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !998, metadata !575), !dbg !1062
  br label %94, !dbg !1111

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1112
  unreachable, !dbg !1112

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !998, metadata !575), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !996, metadata !575), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !995, metadata !575), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !994, metadata !575), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !990, metadata !575), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !989, metadata !575), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !986, metadata !575), !dbg !1050
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !991, metadata !575), !dbg !1113
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
  br label %122, !dbg !1114

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !983, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1001, metadata !575), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1000, metadata !575), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !985, metadata !575), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !993, metadata !575), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !991, metadata !575), !dbg !1113
  %131 = icmp eq i64 %126, -1, !dbg !1115
  br i1 %131, label %134, label %132, !dbg !1116

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1117
  br i1 %133, label %590, label %138, !dbg !1118

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1119
  %136 = load i8, i8* %135, align 1, !dbg !1119, !tbaa !1076
  %137 = icmp eq i8 %136, 0, !dbg !1120
  br i1 %137, label %590, label %138, !dbg !1118

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1007, metadata !575), !dbg !1121
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1008, metadata !575), !dbg !1122
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1009, metadata !575), !dbg !1123
  br i1 %108, label %139, label %154, !dbg !1124

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1126
  %141 = and i1 %109, %131, !dbg !1127
  br i1 %141, label %142, label %144, !dbg !1127

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1128
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !985, metadata !575), !dbg !1049
  br label %144, !dbg !1129

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !985, metadata !575), !dbg !1049
  %146 = icmp ugt i64 %140, %145, !dbg !1130
  br i1 %146, label %154, label %147, !dbg !1131

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1132
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1133
  %150 = icmp ne i32 %149, 0, !dbg !1134
  %151 = or i1 %150, %111, !dbg !1135
  %152 = xor i1 %150, true, !dbg !1135
  %153 = zext i1 %152 to i8, !dbg !1135
  br i1 %151, label %154, label %635, !dbg !1135

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1007, metadata !575), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !985, metadata !575), !dbg !1049
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1136
  %158 = load i8, i8* %157, align 1, !dbg !1136, !tbaa !1076
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1002, metadata !575), !dbg !1137
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
  ], !dbg !1138

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1139

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1140

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1008, metadata !575), !dbg !1122
  %162 = and i8 %127, 1, !dbg !1144
  %163 = icmp eq i8 %162, 0, !dbg !1144
  %164 = and i1 %113, %163, !dbg !1144
  br i1 %164, label %165, label %181, !dbg !1144

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1146
  br i1 %166, label %167, label %169, !dbg !1150

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1146
  store i8 39, i8* %168, align 1, !dbg !1146, !tbaa !1076
  br label %169, !dbg !1146

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1150
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !992, metadata !575), !dbg !1055
  %171 = icmp ult i64 %170, %130, !dbg !1151
  br i1 %171, label %172, label %174, !dbg !1154

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1151
  store i8 36, i8* %173, align 1, !dbg !1151, !tbaa !1076
  br label %174, !dbg !1151

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1154
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !992, metadata !575), !dbg !1055
  %176 = icmp ult i64 %175, %130, !dbg !1155
  br i1 %176, label %177, label %179, !dbg !1158

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1155
  store i8 39, i8* %178, align 1, !dbg !1155, !tbaa !1076
  br label %179, !dbg !1155

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !999, metadata !575), !dbg !1063
  br label %181, !dbg !1159

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !992, metadata !575), !dbg !1055
  %184 = icmp ult i64 %182, %130, !dbg !1160
  br i1 %184, label %185, label %187, !dbg !1163

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1160
  store i8 92, i8* %186, align 1, !dbg !1160, !tbaa !1076
  br label %187, !dbg !1160

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1163
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !992, metadata !575), !dbg !1055
  br i1 %105, label %189, label %470, !dbg !1164

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1166
  %191 = icmp ult i64 %190, %155, !dbg !1167
  br i1 %191, label %192, label %470, !dbg !1168

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1169
  %194 = load i8, i8* %193, align 1, !dbg !1169, !tbaa !1076
  %195 = add i8 %194, -48, !dbg !1170
  %196 = icmp ult i8 %195, 10, !dbg !1170
  br i1 %196, label %197, label %470, !dbg !1170

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1171
  br i1 %198, label %199, label %201, !dbg !1175

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1171
  store i8 48, i8* %200, align 1, !dbg !1171, !tbaa !1076
  br label %201, !dbg !1171

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !992, metadata !575), !dbg !1055
  %203 = icmp ult i64 %202, %130, !dbg !1176
  br i1 %203, label %204, label %206, !dbg !1179

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1176
  store i8 48, i8* %205, align 1, !dbg !1176, !tbaa !1076
  br label %206, !dbg !1176

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !992, metadata !575), !dbg !1055
  br label %470, !dbg !1180

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1181

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1182

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1183

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1185

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1187
  %214 = icmp ult i64 %213, %155, !dbg !1188
  br i1 %214, label %215, label %470, !dbg !1189

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1190
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1191
  %218 = load i8, i8* %217, align 1, !dbg !1191, !tbaa !1076
  %219 = icmp eq i8 %218, 63, !dbg !1192
  br i1 %219, label %220, label %470, !dbg !1193

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1194
  %222 = load i8, i8* %221, align 1, !dbg !1194, !tbaa !1076
  %223 = sext i8 %222 to i32, !dbg !1194
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
  ], !dbg !1195

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1196

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1002, metadata !575), !dbg !1137
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !991, metadata !575), !dbg !1113
  %226 = icmp ult i64 %124, %130, !dbg !1198
  br i1 %226, label %227, label %229, !dbg !1201

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1198
  store i8 63, i8* %228, align 1, !dbg !1198, !tbaa !1076
  br label %229, !dbg !1198

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !992, metadata !575), !dbg !1055
  %231 = icmp ult i64 %230, %130, !dbg !1202
  br i1 %231, label %232, label %234, !dbg !1205

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1202
  store i8 34, i8* %233, align 1, !dbg !1202, !tbaa !1076
  br label %234, !dbg !1202

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !992, metadata !575), !dbg !1055
  %236 = icmp ult i64 %235, %130, !dbg !1206
  br i1 %236, label %237, label %239, !dbg !1209

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1206
  store i8 34, i8* %238, align 1, !dbg !1206, !tbaa !1076
  br label %239, !dbg !1206

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !992, metadata !575), !dbg !1055
  %241 = icmp ult i64 %240, %130, !dbg !1210
  br i1 %241, label %242, label %244, !dbg !1213

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1210
  store i8 63, i8* %243, align 1, !dbg !1210, !tbaa !1076
  br label %244, !dbg !1210

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !992, metadata !575), !dbg !1055
  br label %470, !dbg !1214

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1006, metadata !575), !dbg !1215
  br label %256, !dbg !1216

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1006, metadata !575), !dbg !1215
  br label %256, !dbg !1217

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1006, metadata !575), !dbg !1215
  br label %254, !dbg !1218

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1006, metadata !575), !dbg !1215
  br label %254, !dbg !1219

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1006, metadata !575), !dbg !1215
  br label %256, !dbg !1220

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1006, metadata !575), !dbg !1215
  br i1 %113, label %252, label %253, !dbg !1221

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1222

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1225

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1006, metadata !575), !dbg !1215
  br i1 %117, label %256, label %635, !dbg !1227

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1006, metadata !575), !dbg !1215
  br i1 %104, label %497, label %470, !dbg !1229

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1230
  br i1 %259, label %260, label %265, !dbg !1232

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1233, !tbaa !1076
  %262 = icmp ne i8 %261, 0, !dbg !1234
  %263 = icmp ne i64 %123, 0, !dbg !1235
  %264 = or i1 %263, %262, !dbg !1237
  br i1 %264, label %470, label %271, !dbg !1237

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1238
  %267 = icmp ne i64 %123, 0, !dbg !1235
  %268 = or i1 %267, %266, !dbg !1232
  br i1 %268, label %470, label %271, !dbg !1232

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1235
  br i1 %270, label %271, label %470, !dbg !1239

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1009, metadata !575), !dbg !1123
  br label %272, !dbg !1240

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1009, metadata !575), !dbg !1123
  br i1 %117, label %470, label %635, !dbg !1241

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1000, metadata !575), !dbg !1064
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1009, metadata !575), !dbg !1123
  br i1 %113, label %275, label %470, !dbg !1243

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1244

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1247
  %278 = icmp ne i64 %125, 0, !dbg !1249
  %279 = or i1 %278, %277, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !993, metadata !575), !dbg !1056
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !983, metadata !575), !dbg !1047
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1250
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !983, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !993, metadata !575), !dbg !1056
  %282 = icmp ult i64 %124, %281, !dbg !1251
  br i1 %282, label %283, label %285, !dbg !1254

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1251
  store i8 39, i8* %284, align 1, !dbg !1251, !tbaa !1076
  br label %285, !dbg !1251

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !992, metadata !575), !dbg !1055
  %287 = icmp ult i64 %286, %281, !dbg !1255
  br i1 %287, label %288, label %290, !dbg !1258

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1255
  store i8 92, i8* %289, align 1, !dbg !1255, !tbaa !1076
  br label %290, !dbg !1255

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !992, metadata !575), !dbg !1055
  %292 = icmp ult i64 %291, %281, !dbg !1259
  br i1 %292, label %293, label %295, !dbg !1262

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1259
  store i8 39, i8* %294, align 1, !dbg !1259, !tbaa !1076
  br label %295, !dbg !1259

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !999, metadata !575), !dbg !1063
  br label %470, !dbg !1263

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1264

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1010, metadata !575), !dbg !1265
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1266
  %300 = load i16*, i16** %299, align 8, !dbg !1266, !tbaa !582
  %301 = zext i8 %158 to i64, !dbg !1266
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1266
  %303 = load i16, i16* %302, align 2, !dbg !1266, !tbaa !1268
  %304 = lshr i16 %303, 14, !dbg !1270
  %305 = trunc i16 %304 to i8, !dbg !1270
  %306 = and i8 %305, 1, !dbg !1270
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1013, metadata !575), !dbg !1271
  br label %362, !dbg !1272

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1273
  store i64 0, i64* %10, align 8, !dbg !1274
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1010, metadata !575), !dbg !1265
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1013, metadata !575), !dbg !1271
  %308 = icmp eq i64 %155, -1, !dbg !1275
  br i1 %308, label %309, label %311, !dbg !1277

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !985, metadata !575), !dbg !1049
  br label %311, !dbg !1279

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !985, metadata !575), !dbg !1049
  br label %313, !dbg !1280, !llvm.loop !1281

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1013, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1010, metadata !575), !dbg !1265
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1283
  %316 = add i64 %314, %123, !dbg !1284
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1285
  %318 = sub i64 %312, %316, !dbg !1286
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1014, metadata !575), !dbg !1287
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1032, metadata !575), !dbg !1288
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1035, metadata !575), !dbg !1290
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1291

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1013, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1010, metadata !575), !dbg !1265
  %321 = icmp ugt i64 %312, %316, !dbg !1292
  br i1 %321, label %322, label %347, !dbg !1294

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1295

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1010, metadata !575), !dbg !1265
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1295
  %327 = load i8, i8* %326, align 1, !dbg !1295, !tbaa !1076
  %328 = icmp eq i8 %327, 0, !dbg !1294
  br i1 %328, label %347, label %329, !dbg !1296

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1010, metadata !575), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1010, metadata !575), !dbg !1265
  %331 = add i64 %330, %123, !dbg !1298
  %332 = icmp ult i64 %331, %312, !dbg !1292
  br i1 %332, label %323, label %347, !dbg !1294, !llvm.loop !1299

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1300
  %335 = and i1 %115, %334, !dbg !1303
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1036, metadata !575), !dbg !1304
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1036, metadata !575), !dbg !1304
  br i1 %335, label %336, label %350, !dbg !1303

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1305

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1036, metadata !575), !dbg !1304
  %339 = add i64 %338, %316, !dbg !1305
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1306
  %341 = load i8, i8* %340, align 1, !dbg !1306, !tbaa !1076
  %342 = sext i8 %341 to i32, !dbg !1306
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1307

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1036, metadata !575), !dbg !1304
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1036, metadata !575), !dbg !1304
  %345 = icmp ult i64 %344, %319, !dbg !1300
  br i1 %345, label %337, label %350, !dbg !1309, !llvm.loop !1310

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1312

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1013, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1010, metadata !575), !dbg !1265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1312
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1313, !tbaa !651
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1032, metadata !575), !dbg !1288
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1315
  %353 = icmp eq i32 %352, 0, !dbg !1315
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1013, metadata !575), !dbg !1271
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1316
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1013, metadata !575), !dbg !1271
  %355 = add i64 %319, %314, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1010, metadata !575), !dbg !1265
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1013, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1010, metadata !575), !dbg !1265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1312
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1014, metadata !575), !dbg !1287
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1318
  %357 = icmp eq i32 %356, 0, !dbg !1319
  br i1 %357, label %313, label %358, !dbg !1320, !llvm.loop !1281

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1321
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1013, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1010, metadata !575), !dbg !1265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1312
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1321
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1013, metadata !575), !dbg !1271
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1010, metadata !575), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !985, metadata !575), !dbg !1049
  %366 = and i8 %365, 1, !dbg !1322
  %367 = icmp ne i8 %366, 0, !dbg !1322
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1009, metadata !575), !dbg !1123
  %368 = icmp ult i64 %364, 2, !dbg !1323
  %369 = or i1 %367, %112, !dbg !1324
  %370 = and i1 %368, %369, !dbg !1325
  br i1 %370, label %470, label %371, !dbg !1325

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1043, metadata !575), !dbg !1327
  br label %373, !dbg !1328

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1008, metadata !575), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1007, metadata !575), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1002, metadata !575), !dbg !1137
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !991, metadata !575), !dbg !1113
  br i1 %369, label %426, label %380, !dbg !1329

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1334

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1008, metadata !575), !dbg !1122
  %382 = and i8 %376, 1, !dbg !1337
  %383 = icmp eq i8 %382, 0, !dbg !1337
  %384 = and i1 %113, %383, !dbg !1337
  br i1 %384, label %385, label %401, !dbg !1337

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1339
  br i1 %386, label %387, label %389, !dbg !1343

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1339
  store i8 39, i8* %388, align 1, !dbg !1339, !tbaa !1076
  br label %389, !dbg !1339

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !992, metadata !575), !dbg !1055
  %391 = icmp ult i64 %390, %130, !dbg !1344
  br i1 %391, label %392, label %394, !dbg !1347

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1344
  store i8 36, i8* %393, align 1, !dbg !1344, !tbaa !1076
  br label %394, !dbg !1344

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !992, metadata !575), !dbg !1055
  %396 = icmp ult i64 %395, %130, !dbg !1348
  br i1 %396, label %397, label %399, !dbg !1351

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1348
  store i8 39, i8* %398, align 1, !dbg !1348, !tbaa !1076
  br label %399, !dbg !1348

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !999, metadata !575), !dbg !1063
  br label %401, !dbg !1352

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !992, metadata !575), !dbg !1055
  %404 = icmp ult i64 %402, %130, !dbg !1353
  br i1 %404, label %405, label %407, !dbg !1356

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1353
  store i8 92, i8* %406, align 1, !dbg !1353, !tbaa !1076
  br label %407, !dbg !1353

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !992, metadata !575), !dbg !1055
  %409 = icmp ult i64 %408, %130, !dbg !1357
  br i1 %409, label %410, label %414, !dbg !1360

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1357
  %412 = or i8 %411, 48, !dbg !1357
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1357
  store i8 %412, i8* %413, align 1, !dbg !1357, !tbaa !1076
  br label %414, !dbg !1357

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !992, metadata !575), !dbg !1055
  %416 = icmp ult i64 %415, %130, !dbg !1361
  br i1 %416, label %417, label %422, !dbg !1364

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1361
  %419 = and i8 %418, 7, !dbg !1361
  %420 = or i8 %419, 48, !dbg !1361
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1361
  store i8 %420, i8* %421, align 1, !dbg !1361, !tbaa !1076
  br label %422, !dbg !1361

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !992, metadata !575), !dbg !1055
  %424 = and i8 %377, 7, !dbg !1365
  %425 = or i8 %424, 48, !dbg !1366
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1002, metadata !575), !dbg !1137
  br label %435, !dbg !1367

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1368
  %428 = icmp eq i8 %427, 0, !dbg !1368
  br i1 %428, label %435, label %429, !dbg !1370

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1371
  br i1 %430, label %431, label %433, !dbg !1375

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1371
  store i8 92, i8* %432, align 1, !dbg !1371, !tbaa !1076
  br label %433, !dbg !1371

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1007, metadata !575), !dbg !1121
  br label %435, !dbg !1376

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1008, metadata !575), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1007, metadata !575), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1002, metadata !575), !dbg !1137
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !992, metadata !575), !dbg !1055
  %441 = add i64 %374, 1, !dbg !1377
  %442 = icmp ugt i64 %372, %441, !dbg !1379
  br i1 %442, label %443, label %535, !dbg !1380

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1381
  %445 = icmp ne i8 %444, 0, !dbg !1381
  %446 = and i8 %440, 1, !dbg !1381
  %447 = icmp eq i8 %446, 0, !dbg !1381
  %448 = and i1 %445, %447, !dbg !1381
  br i1 %448, label %449, label %460, !dbg !1381

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1384
  br i1 %450, label %451, label %453, !dbg !1388

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1384
  store i8 39, i8* %452, align 1, !dbg !1384, !tbaa !1076
  br label %453, !dbg !1384

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !992, metadata !575), !dbg !1055
  %455 = icmp ult i64 %454, %130, !dbg !1389
  br i1 %455, label %456, label %458, !dbg !1392

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1389
  store i8 39, i8* %457, align 1, !dbg !1389, !tbaa !1076
  br label %458, !dbg !1389

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !999, metadata !575), !dbg !1063
  br label %460, !dbg !1393

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !992, metadata !575), !dbg !1055
  %463 = icmp ult i64 %461, %130, !dbg !1394
  br i1 %463, label %464, label %466, !dbg !1397

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1394
  store i8 %438, i8* %465, align 1, !dbg !1394, !tbaa !1076
  br label %466, !dbg !1394

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !991, metadata !575), !dbg !1113
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1398
  %469 = load i8, i8* %468, align 1, !dbg !1398, !tbaa !1076
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1002, metadata !575), !dbg !1137
  br label %373, !dbg !1399, !llvm.loop !1400

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !983, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1009, metadata !575), !dbg !1123
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1008, metadata !575), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1007, metadata !575), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1002, metadata !575), !dbg !1137
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1000, metadata !575), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !985, metadata !575), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !993, metadata !575), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !991, metadata !575), !dbg !1113
  br i1 %106, label %482, label %481, !dbg !1403

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1405

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1406

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1407
  %485 = zext i8 %484 to i64, !dbg !1407
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1408
  %487 = load i32, i32* %486, align 4, !dbg !1408, !tbaa !651
  %488 = and i8 %477, 31, !dbg !1409
  %489 = zext i8 %488 to i32, !dbg !1410
  %490 = shl i32 1, %489, !dbg !1411
  %491 = and i32 %487, %490, !dbg !1411
  %492 = icmp eq i32 %491, 0, !dbg !1411
  %493 = icmp eq i8 %156, 0, !dbg !1412
  %494 = and i1 %493, %492, !dbg !1413
  br i1 %494, label %535, label %497, !dbg !1413

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1412
  br i1 %496, label %535, label %497, !dbg !1414

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !983, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1009, metadata !575), !dbg !1123
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1002, metadata !575), !dbg !1137
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1000, metadata !575), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !985, metadata !575), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !993, metadata !575), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !991, metadata !575), !dbg !1113
  br i1 %111, label %507, label %635, !dbg !1415

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1008, metadata !575), !dbg !1122
  %508 = and i8 %502, 1, !dbg !1417
  %509 = icmp eq i8 %508, 0, !dbg !1417
  %510 = and i1 %113, %509, !dbg !1417
  br i1 %510, label %511, label %527, !dbg !1417

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1419
  br i1 %512, label %513, label %515, !dbg !1423

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1419
  store i8 39, i8* %514, align 1, !dbg !1419, !tbaa !1076
  br label %515, !dbg !1419

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !992, metadata !575), !dbg !1055
  %517 = icmp ult i64 %516, %506, !dbg !1424
  br i1 %517, label %518, label %520, !dbg !1427

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1424
  store i8 36, i8* %519, align 1, !dbg !1424, !tbaa !1076
  br label %520, !dbg !1424

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !992, metadata !575), !dbg !1055
  %522 = icmp ult i64 %521, %506, !dbg !1428
  br i1 %522, label %523, label %525, !dbg !1431

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1428
  store i8 39, i8* %524, align 1, !dbg !1428, !tbaa !1076
  br label %525, !dbg !1428

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !999, metadata !575), !dbg !1063
  br label %527, !dbg !1432

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !992, metadata !575), !dbg !1055
  %530 = icmp ult i64 %528, %506, !dbg !1433
  br i1 %530, label %531, label %533, !dbg !1436

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1433
  store i8 92, i8* %532, align 1, !dbg !1433, !tbaa !1076
  br label %533, !dbg !1433

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !983, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1009, metadata !575), !dbg !1123
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1008, metadata !575), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1002, metadata !575), !dbg !1137
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1000, metadata !575), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !985, metadata !575), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !993, metadata !575), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !991, metadata !575), !dbg !1113
  br label %562, !dbg !1437

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !983, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1009, metadata !575), !dbg !1123
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1008, metadata !575), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1002, metadata !575), !dbg !1137
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1000, metadata !575), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !985, metadata !575), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !993, metadata !575), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !991, metadata !575), !dbg !1113
  %546 = and i8 %540, 1, !dbg !1437
  %547 = icmp ne i8 %546, 0, !dbg !1437
  %548 = and i8 %543, 1, !dbg !1437
  %549 = icmp eq i8 %548, 0, !dbg !1437
  %550 = and i1 %547, %549, !dbg !1437
  br i1 %550, label %551, label %562, !dbg !1437

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1440
  br i1 %552, label %553, label %555, !dbg !1444

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1440
  store i8 39, i8* %554, align 1, !dbg !1440, !tbaa !1076
  br label %555, !dbg !1440

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !992, metadata !575), !dbg !1055
  %557 = icmp ult i64 %556, %545, !dbg !1445
  br i1 %557, label %558, label %560, !dbg !1448

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1445
  store i8 39, i8* %559, align 1, !dbg !1445, !tbaa !1076
  br label %560, !dbg !1445

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !999, metadata !575), !dbg !1063
  br label %562, !dbg !1449

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !992, metadata !575), !dbg !1055
  %572 = icmp ult i64 %570, %563, !dbg !1450
  br i1 %572, label %573, label %575, !dbg !1453

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1450
  store i8 %565, i8* %574, align 1, !dbg !1450, !tbaa !1076
  br label %575, !dbg !1450

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !992, metadata !575), !dbg !1055
  %577 = and i8 %564, 1, !dbg !1454
  %578 = icmp eq i8 %577, 0, !dbg !1454
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1001, metadata !575), !dbg !1065
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1456
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1001, metadata !575), !dbg !1065
  br label %580, !dbg !1457

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !983, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1001, metadata !575), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1000, metadata !575), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !999, metadata !575), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !985, metadata !575), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !993, metadata !575), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !991, metadata !575), !dbg !1113
  %589 = add i64 %581, 1, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !991, metadata !575), !dbg !1113
  br label %122, !dbg !1459, !llvm.loop !1460

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1462
  %593 = and i1 %113, %592, !dbg !1464
  %594 = xor i1 %593, true, !dbg !1464
  %595 = or i1 %111, %594, !dbg !1464
  br i1 %595, label %596, label %635, !dbg !1464

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1465
  %598 = xor i1 %597, true, !dbg !1465
  %599 = and i8 %128, 1, !dbg !1467
  %600 = icmp eq i8 %599, 0, !dbg !1467
  %601 = or i1 %600, %598, !dbg !1465
  br i1 %601, label %611, label %602, !dbg !1465

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1468
  %604 = icmp eq i8 %603, 0, !dbg !1468
  br i1 %604, label %607, label %605, !dbg !1471

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1472
  br label %645, !dbg !1473

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1474
  %609 = icmp ne i64 %125, 0, !dbg !1476
  %610 = and i1 %609, %608, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !983, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !992, metadata !575), !dbg !1055
  br i1 %610, label %27, label %611, !dbg !1477

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1478
  %613 = and i1 %612, %111, !dbg !1480
  br i1 %613, label %614, label %630, !dbg !1480

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !994, metadata !575), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !992, metadata !575), !dbg !1055
  %615 = load i8, i8* %99, align 1, !dbg !1481, !tbaa !1076
  %616 = icmp eq i8 %615, 0, !dbg !1484
  br i1 %616, label %630, label %617, !dbg !1484

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1485

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !992, metadata !575), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !994, metadata !575), !dbg !1057
  %622 = icmp ult i64 %621, %130, !dbg !1485
  br i1 %622, label %623, label %625, !dbg !1488

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1485
  store i8 %619, i8* %624, align 1, !dbg !1485, !tbaa !1076
  br label %625, !dbg !1485

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !992, metadata !575), !dbg !1055
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1489
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !994, metadata !575), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !994, metadata !575), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !992, metadata !575), !dbg !1055
  %628 = load i8, i8* %627, align 1, !dbg !1481, !tbaa !1076
  %629 = icmp eq i8 %628, 0, !dbg !1484
  br i1 %629, label %630, label %618, !dbg !1484, !llvm.loop !1490

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !992, metadata !575), !dbg !1055
  %632 = icmp ult i64 %631, %130, !dbg !1492
  br i1 %632, label %633, label %645, !dbg !1494

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1495
  store i8 0, i8* %634, align 1, !dbg !1496, !tbaa !1076
  br label %645, !dbg !1495

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !983, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !985, metadata !575), !dbg !1049
  %639 = icmp ne i32 %636, 2, !dbg !1497
  %640 = icmp eq i8 %103, 0, !dbg !1499
  %641 = or i1 %639, %640, !dbg !1500
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !986, metadata !575), !dbg !1050
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1500
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !986, metadata !575), !dbg !1050
  %643 = and i32 %5, -3, !dbg !1501
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1502
  br label %645, !dbg !1503

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1504
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1505 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1509, metadata !575), !dbg !1513
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1510, metadata !575), !dbg !1514
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1515
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1511, metadata !575), !dbg !1516
  %4 = icmp eq i8* %3, %0, !dbg !1517
  br i1 %4, label %5, label %75, !dbg !1519

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1520
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1512, metadata !575), !dbg !1521
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1522, metadata !575), !dbg !1538
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1536, metadata !575), !dbg !1541
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1537, metadata !575), !dbg !1542
  %7 = load i8, i8* %6, align 1, !dbg !1543, !tbaa !1076
  %8 = sext i8 %7 to i32, !dbg !1543
  %9 = and i32 %8, -33, !dbg !1543
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1543

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1545, metadata !575), !dbg !1559
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1557, metadata !575), !dbg !1563
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1558, metadata !575), !dbg !1564
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1565
  %12 = load i8, i8* %11, align 1, !dbg !1565, !tbaa !1076
  %13 = sext i8 %12 to i32, !dbg !1565
  %14 = and i32 %13, -33, !dbg !1565
  %15 = icmp eq i32 %14, 84, !dbg !1565
  br i1 %15, label %16, label %72, !dbg !1565

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1567, metadata !575), !dbg !1580
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1578, metadata !575), !dbg !1584
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1579, metadata !575), !dbg !1585
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1586
  %18 = load i8, i8* %17, align 1, !dbg !1586, !tbaa !1076
  %19 = sext i8 %18 to i32, !dbg !1586
  %20 = and i32 %19, -33, !dbg !1586
  %21 = icmp eq i32 %20, 70, !dbg !1586
  br i1 %21, label %22, label %72, !dbg !1586

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1588, metadata !575), !dbg !1600
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1598, metadata !575), !dbg !1604
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1599, metadata !575), !dbg !1605
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1606
  %24 = load i8, i8* %23, align 1, !dbg !1606, !tbaa !1076
  %25 = icmp eq i8 %24, 45, !dbg !1606
  br i1 %25, label %26, label %72, !dbg !1608

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1609, metadata !575), !dbg !1620
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1618, metadata !575), !dbg !1624
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1619, metadata !575), !dbg !1625
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1626
  %28 = load i8, i8* %27, align 1, !dbg !1626, !tbaa !1076
  %29 = icmp eq i8 %28, 56, !dbg !1626
  br i1 %29, label %30, label %72, !dbg !1628

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1629, metadata !575), !dbg !1639
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1637, metadata !575), !dbg !1643
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1638, metadata !575), !dbg !1644
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1645
  %32 = load i8, i8* %31, align 1, !dbg !1645, !tbaa !1076
  %33 = icmp eq i8 %32, 0, !dbg !1645
  br i1 %33, label %34, label %72, !dbg !1647

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1648, !tbaa !1076
  %36 = icmp eq i8 %35, 96, !dbg !1649
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), !dbg !1648
  br label %75, !dbg !1650

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1545, metadata !575), !dbg !1651
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1557, metadata !575), !dbg !1655
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1558, metadata !575), !dbg !1656
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1657
  %40 = load i8, i8* %39, align 1, !dbg !1657, !tbaa !1076
  %41 = sext i8 %40 to i32, !dbg !1657
  %42 = and i32 %41, -33, !dbg !1657
  %43 = icmp eq i32 %42, 66, !dbg !1657
  br i1 %43, label %44, label %72, !dbg !1657

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1567, metadata !575), !dbg !1658
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1578, metadata !575), !dbg !1660
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1579, metadata !575), !dbg !1661
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1662
  %46 = load i8, i8* %45, align 1, !dbg !1662, !tbaa !1076
  %47 = icmp eq i8 %46, 49, !dbg !1662
  br i1 %47, label %48, label %72, !dbg !1663

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1588, metadata !575), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1598, metadata !575), !dbg !1666
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1599, metadata !575), !dbg !1667
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1668
  %50 = load i8, i8* %49, align 1, !dbg !1668, !tbaa !1076
  %51 = icmp eq i8 %50, 56, !dbg !1668
  br i1 %51, label %52, label %72, !dbg !1669

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1609, metadata !575), !dbg !1670
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1618, metadata !575), !dbg !1672
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1619, metadata !575), !dbg !1673
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1674
  %54 = load i8, i8* %53, align 1, !dbg !1674, !tbaa !1076
  %55 = icmp eq i8 %54, 48, !dbg !1674
  br i1 %55, label %56, label %72, !dbg !1675

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1629, metadata !575), !dbg !1676
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1637, metadata !575), !dbg !1678
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1638, metadata !575), !dbg !1679
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1680
  %58 = load i8, i8* %57, align 1, !dbg !1680, !tbaa !1076
  %59 = icmp eq i8 %58, 51, !dbg !1680
  br i1 %59, label %60, label %72, !dbg !1681

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1682, metadata !575), !dbg !1691
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1689, metadata !575), !dbg !1695
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1690, metadata !575), !dbg !1696
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1697
  %62 = load i8, i8* %61, align 1, !dbg !1697, !tbaa !1076
  %63 = icmp eq i8 %62, 48, !dbg !1697
  br i1 %63, label %64, label %72, !dbg !1699

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1700, metadata !575), !dbg !1708
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1706, metadata !575), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1707, metadata !575), !dbg !1713
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1714
  %66 = load i8, i8* %65, align 1, !dbg !1714, !tbaa !1076
  %67 = icmp eq i8 %66, 0, !dbg !1714
  br i1 %67, label %68, label %72, !dbg !1716

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1717, !tbaa !1076
  %70 = icmp eq i8 %69, 96, !dbg !1718
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1717
  br label %75, !dbg !1719

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1720
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), !dbg !1721
  br label %75, !dbg !1722

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1723
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1724 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1728, metadata !575), !dbg !1731
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1729, metadata !575), !dbg !1732
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1730, metadata !575), !dbg !1733
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1734, metadata !575) #10, !dbg !1747
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1739, metadata !575) #10, !dbg !1749
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1740, metadata !575) #10, !dbg !1750
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1741, metadata !575) #10, !dbg !1751
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1752
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1752
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1742, metadata !575) #10, !dbg !1753
  %6 = tail call i32* @__errno_location() #17, !dbg !1754
  %7 = load i32, i32* %6, align 4, !dbg !1754, !tbaa !651
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1743, metadata !575) #10, !dbg !1755
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1756
  %9 = load i32, i32* %8, align 4, !dbg !1756, !tbaa !915
  %10 = or i32 %9, 1, !dbg !1757
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1744, metadata !575) #10, !dbg !1758
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1759
  %12 = load i32, i32* %11, align 8, !dbg !1759, !tbaa !855
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1760
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1761
  %15 = load i8*, i8** %14, align 8, !dbg !1761, !tbaa !941
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1762
  %17 = load i8*, i8** %16, align 8, !dbg !1762, !tbaa !944
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !1763
  %19 = add i64 %18, 1, !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1745, metadata !575) #10, !dbg !1765
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1766, metadata !575) #10, !dbg !1771
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1773
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1746, metadata !575) #10, !dbg !1774
  %21 = load i32, i32* %11, align 8, !dbg !1775, !tbaa !855
  %22 = load i8*, i8** %14, align 8, !dbg !1776, !tbaa !941
  %23 = load i8*, i8** %16, align 8, !dbg !1777, !tbaa !944
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !1778
  store i32 %7, i32* %6, align 4, !dbg !1779, !tbaa !651
  ret i8* %20, !dbg !1780
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1735 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1734, metadata !575), !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1739, metadata !575), !dbg !1782
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1740, metadata !575), !dbg !1783
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1741, metadata !575), !dbg !1784
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1785
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1785
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1742, metadata !575), !dbg !1786
  %7 = tail call i32* @__errno_location() #17, !dbg !1787
  %8 = load i32, i32* %7, align 4, !dbg !1787, !tbaa !651
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1743, metadata !575), !dbg !1788
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1789
  %10 = load i32, i32* %9, align 4, !dbg !1789, !tbaa !915
  %11 = icmp ne i64* %2, null, !dbg !1790
  %12 = xor i1 %11, true, !dbg !1790
  %13 = zext i1 %12 to i32, !dbg !1790
  %14 = or i32 %10, %13, !dbg !1791
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1744, metadata !575), !dbg !1792
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1793
  %16 = load i32, i32* %15, align 8, !dbg !1793, !tbaa !855
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1794
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1795
  %19 = load i8*, i8** %18, align 8, !dbg !1795, !tbaa !941
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1796
  %21 = load i8*, i8** %20, align 8, !dbg !1796, !tbaa !944
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1797
  %23 = add i64 %22, 1, !dbg !1798
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1745, metadata !575), !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1766, metadata !575) #10, !dbg !1800
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1802
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1746, metadata !575), !dbg !1803
  %25 = load i32, i32* %15, align 8, !dbg !1804, !tbaa !855
  %26 = load i8*, i8** %18, align 8, !dbg !1805, !tbaa !941
  %27 = load i8*, i8** %20, align 8, !dbg !1806, !tbaa !944
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1807
  store i32 %8, i32* %7, align 4, !dbg !1808, !tbaa !651
  br i1 %11, label %29, label %30, !dbg !1809

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1810, !tbaa !1812
  br label %30, !dbg !1814

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1815
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1816 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1820, !tbaa !582
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1818, metadata !575), !dbg !1821
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1819, metadata !575), !dbg !1822
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1819, metadata !575), !dbg !1822
  %2 = load i32, i32* @nslots, align 4, !dbg !1823, !tbaa !651
  %3 = icmp sgt i32 %2, 1, !dbg !1826
  br i1 %3, label %4, label %13, !dbg !1827

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1828

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1819, metadata !575), !dbg !1822
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1828
  %8 = load i8*, i8** %7, align 8, !dbg !1828, !tbaa !1829
  tail call void @free(i8* %8) #10, !dbg !1831
  %9 = add nuw i64 %6, 1, !dbg !1832
  %10 = load i32, i32* @nslots, align 4, !dbg !1823, !tbaa !651
  %11 = sext i32 %10 to i64, !dbg !1826
  %12 = icmp slt i64 %9, %11, !dbg !1826
  br i1 %12, label %5, label %13, !dbg !1827, !llvm.loop !1833

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1835
  %15 = load i8*, i8** %14, align 8, !dbg !1835, !tbaa !1829
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1837
  br i1 %16, label %18, label %17, !dbg !1838

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !1839
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1841, !tbaa !1842
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1843, !tbaa !1829
  br label %18, !dbg !1844

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1845
  br i1 %19, label %22, label %20, !dbg !1847

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1848
  tail call void @free(i8* %21) #10, !dbg !1850
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1851, !tbaa !582
  br label %22, !dbg !1852

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1853, !tbaa !651
  ret void, !dbg !1854
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1855 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1859, metadata !575), !dbg !1861
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1860, metadata !575), !dbg !1862
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1863
  ret i8* %3, !dbg !1864
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1865 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1869, metadata !575), !dbg !1883
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1870, metadata !575), !dbg !1884
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1871, metadata !575), !dbg !1885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1872, metadata !575), !dbg !1886
  %5 = tail call i32* @__errno_location() #17, !dbg !1887
  %6 = load i32, i32* %5, align 4, !dbg !1887, !tbaa !651
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1873, metadata !575), !dbg !1888
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1889, !tbaa !582
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1874, metadata !575), !dbg !1890
  %8 = icmp slt i32 %0, 0, !dbg !1891
  br i1 %8, label %9, label %10, !dbg !1893

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1894
  unreachable, !dbg !1894

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1895, !tbaa !651
  %12 = icmp sgt i32 %11, %0, !dbg !1896
  br i1 %12, label %34, label %13, !dbg !1897

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1898
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1899
  br i1 %15, label %16, label %17, !dbg !1901

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1902
  unreachable, !dbg !1902

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1903
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1903
  %20 = add nsw i32 %0, 1, !dbg !1904
  %21 = sext i32 %20 to i64, !dbg !1905
  %22 = shl nsw i64 %21, 4, !dbg !1906
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !1907
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1907
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1874, metadata !575), !dbg !1890
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1908, !tbaa !582
  br i1 %14, label %25, label %26, !dbg !1909

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1910, !tbaa.struct !1912
  br label %26, !dbg !1913

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1914, !tbaa !651
  %28 = sext i32 %27 to i64, !dbg !1915
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1915
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1916
  %31 = sub nsw i32 %20, %27, !dbg !1917
  %32 = sext i32 %31 to i64, !dbg !1918
  %33 = shl nsw i64 %32, 4, !dbg !1919
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1916
  store i32 %20, i32* @nslots, align 4, !dbg !1920, !tbaa !651
  br label %34, !dbg !1921

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1874, metadata !575), !dbg !1890
  %36 = sext i32 %0 to i64, !dbg !1922
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1923
  %38 = load i64, i64* %37, align 8, !dbg !1923, !tbaa !1842
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1878, metadata !575), !dbg !1924
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1925
  %40 = load i8*, i8** %39, align 8, !dbg !1925, !tbaa !1829
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1880, metadata !575), !dbg !1926
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1927
  %42 = load i32, i32* %41, align 4, !dbg !1927, !tbaa !915
  %43 = or i32 %42, 1, !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1881, metadata !575), !dbg !1929
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1930
  %45 = load i32, i32* %44, align 8, !dbg !1930, !tbaa !855
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1931
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1932
  %48 = load i8*, i8** %47, align 8, !dbg !1932, !tbaa !941
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1933
  %50 = load i8*, i8** %49, align 8, !dbg !1933, !tbaa !944
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1882, metadata !575), !dbg !1935
  %52 = icmp ugt i64 %38, %51, !dbg !1936
  br i1 %52, label %63, label %53, !dbg !1938

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1878, metadata !575), !dbg !1924
  store i64 %54, i64* %37, align 8, !dbg !1941, !tbaa !1842
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1942
  br i1 %55, label %57, label %56, !dbg !1944

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !1945
  br label %57, !dbg !1945

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1766, metadata !575) #10, !dbg !1946
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !1948
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1880, metadata !575), !dbg !1926
  store i8* %58, i8** %39, align 8, !dbg !1949, !tbaa !1829
  %59 = load i32, i32* %44, align 8, !dbg !1950, !tbaa !855
  %60 = load i8*, i8** %47, align 8, !dbg !1951, !tbaa !941
  %61 = load i8*, i8** %49, align 8, !dbg !1952, !tbaa !944
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !1953
  br label %63, !dbg !1954

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1880, metadata !575), !dbg !1926
  store i32 %6, i32* %5, align 4, !dbg !1955, !tbaa !651
  ret i8* %64, !dbg !1956
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1957 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1961, metadata !575), !dbg !1964
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1962, metadata !575), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1963, metadata !575), !dbg !1966
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1967
  ret i8* %4, !dbg !1968
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !1969 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1973, metadata !575), !dbg !1974
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1859, metadata !575) #10, !dbg !1975
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1860, metadata !575) #10, !dbg !1977
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1978
  ret i8* %2, !dbg !1979
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !1980 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1984, metadata !575), !dbg !1986
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1985, metadata !575), !dbg !1987
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1961, metadata !575) #10, !dbg !1988
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1962, metadata !575) #10, !dbg !1990
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1963, metadata !575) #10, !dbg !1991
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !1992
  ret i8* %3, !dbg !1993
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !1994 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2002, metadata !2008), !dbg !2009
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1998, metadata !575), !dbg !2011
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1999, metadata !575), !dbg !2012
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2000, metadata !575), !dbg !2013
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2014
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2001, metadata !575), !dbg !2015
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2007, metadata !575) #10, !dbg !2016
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2017
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2017
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2002, metadata !575) #10, !dbg !2009
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2002, metadata !2018) #10, !dbg !2009
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2009
  %8 = icmp eq i32 %1, 10, !dbg !2019
  br i1 %8, label %9, label %10, !dbg !2021

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2022, !noalias !2023
  unreachable, !dbg !2022

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2002, metadata !2018) #10, !dbg !2009
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2026
  store i32 %1, i32* %11, align 8, !dbg !2026, !alias.scope !2023
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2026
  %13 = bitcast i32* %12 to i8*, !dbg !2026
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2026
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2027
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2001, metadata !575), !dbg !2015
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2028
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2029
  ret i8* %14, !dbg !2030
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2031 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2002, metadata !2008), !dbg !2040
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2035, metadata !575), !dbg !2042
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2036, metadata !575), !dbg !2043
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2037, metadata !575), !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2038, metadata !575), !dbg !2045
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2046
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2046
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2039, metadata !575), !dbg !2047
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2007, metadata !575) #10, !dbg !2048
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2049
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2049
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2002, metadata !575) #10, !dbg !2040
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2002, metadata !2018) #10, !dbg !2040
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2040
  %9 = icmp eq i32 %1, 10, !dbg !2050
  br i1 %9, label %10, label %11, !dbg !2051

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2052, !noalias !2053
  unreachable, !dbg !2052

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2002, metadata !2018) #10, !dbg !2040
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2056
  store i32 %1, i32* %12, align 8, !dbg !2056, !alias.scope !2053
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2056
  %14 = bitcast i32* %13 to i8*, !dbg !2056
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2056
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2039, metadata !575), !dbg !2047
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2058
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2059
  ret i8* %15, !dbg !2060
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2061 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2002, metadata !2008), !dbg !2067
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2065, metadata !575), !dbg !2070
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2066, metadata !575), !dbg !2071
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1998, metadata !575) #10, !dbg !2072
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1999, metadata !575) #10, !dbg !2073
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2000, metadata !575) #10, !dbg !2074
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2075
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2075
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2001, metadata !575) #10, !dbg !2076
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2007, metadata !575) #10, !dbg !2077
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2078
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2078
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2002, metadata !575) #10, !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2002, metadata !2018) #10, !dbg !2067
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2067
  %7 = icmp eq i32 %0, 10, !dbg !2079
  br i1 %7, label %8, label %9, !dbg !2080

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2081, !noalias !2082
  unreachable, !dbg !2081

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2002, metadata !2018) #10, !dbg !2067
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2085
  store i32 %0, i32* %10, align 8, !dbg !2085, !alias.scope !2082
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2085
  %12 = bitcast i32* %11 to i8*, !dbg !2085
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2085
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2086
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2001, metadata !575) #10, !dbg !2076
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2087
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2088
  ret i8* %13, !dbg !2089
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2090 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2002, metadata !2008), !dbg !2097
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2094, metadata !575), !dbg !2100
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2095, metadata !575), !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2096, metadata !575), !dbg !2102
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2035, metadata !575) #10, !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2036, metadata !575) #10, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2037, metadata !575) #10, !dbg !2105
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2038, metadata !575) #10, !dbg !2106
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2107
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2107
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2039, metadata !575) #10, !dbg !2108
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2007, metadata !575) #10, !dbg !2109
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2110
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2110
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2002, metadata !575) #10, !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2002, metadata !2018) #10, !dbg !2097
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2097
  %8 = icmp eq i32 %0, 10, !dbg !2111
  br i1 %8, label %9, label %10, !dbg !2112

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2113, !noalias !2114
  unreachable, !dbg !2113

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2002, metadata !2018) #10, !dbg !2097
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2117
  store i32 %0, i32* %11, align 8, !dbg !2117, !alias.scope !2114
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2117
  %13 = bitcast i32* %12 to i8*, !dbg !2117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2117
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2039, metadata !575) #10, !dbg !2108
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2119
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2120
  ret i8* %14, !dbg !2121
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2122 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2126, metadata !575), !dbg !2130
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2127, metadata !575), !dbg !2131
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2128, metadata !575), !dbg !2132
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2134, !tbaa.struct !2135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2129, metadata !575), !dbg !2136
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !874, metadata !575), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !875, metadata !575), !dbg !2139
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !876, metadata !575), !dbg !2140
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !877, metadata !575), !dbg !2141
  %6 = lshr i8 %2, 5, !dbg !2142
  %7 = zext i8 %6 to i64, !dbg !2142
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2143
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !878, metadata !575), !dbg !2144
  %9 = and i8 %2, 31, !dbg !2145
  %10 = zext i8 %9 to i32, !dbg !2146
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !880, metadata !575), !dbg !2147
  %11 = load i32, i32* %8, align 4, !dbg !2148, !tbaa !651
  %12 = lshr i32 %11, %10, !dbg !2149
  %13 = and i32 %12, 1, !dbg !2150
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !881, metadata !575), !dbg !2151
  %14 = xor i32 %13, 1, !dbg !2152
  %15 = shl i32 %14, %10, !dbg !2153
  %16 = xor i32 %15, %11, !dbg !2154
  store i32 %16, i32* %8, align 4, !dbg !2154, !tbaa !651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2129, metadata !575), !dbg !2136
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2155
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2156
  ret i8* %17, !dbg !2157
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2158 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2162, metadata !575), !dbg !2164
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2163, metadata !575), !dbg !2165
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2126, metadata !575) #10, !dbg !2166
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2127, metadata !575) #10, !dbg !2168
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2128, metadata !575) #10, !dbg !2169
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2170
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2171, !tbaa.struct !2135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2129, metadata !575) #10, !dbg !2172
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !874, metadata !575) #10, !dbg !2173
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !875, metadata !575) #10, !dbg !2175
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !876, metadata !575) #10, !dbg !2176
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !877, metadata !575) #10, !dbg !2177
  %5 = lshr i8 %1, 5, !dbg !2178
  %6 = zext i8 %5 to i64, !dbg !2178
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2179
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !878, metadata !575) #10, !dbg !2180
  %8 = and i8 %1, 31, !dbg !2181
  %9 = zext i8 %8 to i32, !dbg !2182
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !880, metadata !575) #10, !dbg !2183
  %10 = load i32, i32* %7, align 4, !dbg !2184, !tbaa !651
  %11 = lshr i32 %10, %9, !dbg !2185
  %12 = and i32 %11, 1, !dbg !2186
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !881, metadata !575) #10, !dbg !2187
  %13 = xor i32 %12, 1, !dbg !2188
  %14 = shl i32 %13, %9, !dbg !2189
  %15 = xor i32 %14, %10, !dbg !2190
  store i32 %15, i32* %7, align 4, !dbg !2190, !tbaa !651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2129, metadata !575) #10, !dbg !2172
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2191
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2192
  ret i8* %16, !dbg !2193
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2194 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2196, metadata !575), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2162, metadata !575) #10, !dbg !2198
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2163, metadata !575) #10, !dbg !2200
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2126, metadata !575) #10, !dbg !2201
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2127, metadata !575) #10, !dbg !2203
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2128, metadata !575) #10, !dbg !2204
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2205
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2206, !tbaa.struct !2135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2129, metadata !575) #10, !dbg !2207
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !874, metadata !575) #10, !dbg !2208
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !875, metadata !575) #10, !dbg !2210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !876, metadata !575) #10, !dbg !2211
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !877, metadata !575) #10, !dbg !2212
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2213
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !878, metadata !575) #10, !dbg !2214
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !880, metadata !575) #10, !dbg !2215
  %5 = load i32, i32* %4, align 4, !dbg !2216, !tbaa !651
  %6 = or i32 %5, 67108864, !dbg !2217
  store i32 %6, i32* %4, align 4, !dbg !2217, !tbaa !651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2129, metadata !575) #10, !dbg !2207
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2218
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2219
  ret i8* %7, !dbg !2220
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2221 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2223, metadata !575), !dbg !2225
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2224, metadata !575), !dbg !2226
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2126, metadata !575) #10, !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2127, metadata !575) #10, !dbg !2229
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2128, metadata !575) #10, !dbg !2230
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2231
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2232, !tbaa.struct !2135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2129, metadata !575) #10, !dbg !2233
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !874, metadata !575) #10, !dbg !2234
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !875, metadata !575) #10, !dbg !2236
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !876, metadata !575) #10, !dbg !2237
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !877, metadata !575) #10, !dbg !2238
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2239
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !878, metadata !575) #10, !dbg !2240
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !880, metadata !575) #10, !dbg !2241
  %6 = load i32, i32* %5, align 4, !dbg !2242, !tbaa !651
  %7 = or i32 %6, 67108864, !dbg !2243
  store i32 %7, i32* %5, align 4, !dbg !2243, !tbaa !651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2129, metadata !575) #10, !dbg !2233
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2245
  ret i8* %8, !dbg !2246
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2247 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2002, metadata !2008), !dbg !2253
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2249, metadata !575), !dbg !2255
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2250, metadata !575), !dbg !2256
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2251, metadata !575), !dbg !2257
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2258
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2258
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2007, metadata !575) #10, !dbg !2259
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2260
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2260
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2002, metadata !575) #10, !dbg !2253
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2002, metadata !2018) #10, !dbg !2253
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2253
  %9 = icmp eq i32 %1, 10, !dbg !2261
  br i1 %9, label %10, label %11, !dbg !2262

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2263, !noalias !2264
  unreachable, !dbg !2263

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2002, metadata !2018) #10, !dbg !2253
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2267
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2267
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2268
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2269
  store i32 %1, i32* %13, align 8, !dbg !2269
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2269
  %15 = bitcast i32* %14 to i8*, !dbg !2269
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2269
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2252, metadata !575), !dbg !2270
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !874, metadata !575), !dbg !2271
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !875, metadata !575), !dbg !2273
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !876, metadata !575), !dbg !2274
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !877, metadata !575), !dbg !2275
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2276
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !878, metadata !575), !dbg !2277
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !880, metadata !575), !dbg !2278
  %17 = load i32, i32* %16, align 4, !dbg !2279, !tbaa !651
  %18 = or i32 %17, 67108864, !dbg !2280
  store i32 %18, i32* %16, align 4, !dbg !2280, !tbaa !651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2252, metadata !575), !dbg !2270
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2281
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2282
  ret i8* %19, !dbg !2283
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2284 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2288, metadata !575), !dbg !2292
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2289, metadata !575), !dbg !2293
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2290, metadata !575), !dbg !2294
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2291, metadata !575), !dbg !2295
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2296, metadata !575) #10, !dbg !2306
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2301, metadata !575) #10, !dbg !2308
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2302, metadata !575) #10, !dbg !2309
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2303, metadata !575) #10, !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2304, metadata !575) #10, !dbg !2311
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2312
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2313, !tbaa.struct !2135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2305, metadata !575) #10, !dbg !2314
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !923, metadata !575) #10, !dbg !2315
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !924, metadata !575) #10, !dbg !2317
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !925, metadata !575) #10, !dbg !2318
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !923, metadata !575) #10, !dbg !2315
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !923, metadata !575) #10, !dbg !2315
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2319
  store i32 10, i32* %7, align 8, !dbg !2320, !tbaa !855
  %8 = icmp ne i8* %1, null, !dbg !2321
  %9 = icmp ne i8* %2, null, !dbg !2322
  %10 = and i1 %8, %9, !dbg !2323
  br i1 %10, label %12, label %11, !dbg !2323

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2324
  unreachable, !dbg !2324

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2325
  store i8* %1, i8** %13, align 8, !dbg !2326, !tbaa !941
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2327
  store i8* %2, i8** %14, align 8, !dbg !2328, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2305, metadata !575) #10, !dbg !2314
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2329
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2330
  ret i8* %15, !dbg !2331
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2297 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2296, metadata !575), !dbg !2332
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2301, metadata !575), !dbg !2333
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2302, metadata !575), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2303, metadata !575), !dbg !2335
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2304, metadata !575), !dbg !2336
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2337
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2338, !tbaa.struct !2135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2305, metadata !575), !dbg !2339
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !923, metadata !575) #10, !dbg !2340
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !924, metadata !575) #10, !dbg !2342
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !925, metadata !575) #10, !dbg !2343
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !923, metadata !575) #10, !dbg !2340
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !923, metadata !575) #10, !dbg !2340
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2344
  store i32 10, i32* %8, align 8, !dbg !2345, !tbaa !855
  %9 = icmp ne i8* %1, null, !dbg !2346
  %10 = icmp ne i8* %2, null, !dbg !2347
  %11 = and i1 %9, %10, !dbg !2348
  br i1 %11, label %13, label %12, !dbg !2348

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2349
  unreachable, !dbg !2349

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2350
  store i8* %1, i8** %14, align 8, !dbg !2351, !tbaa !941
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2352
  store i8* %2, i8** %15, align 8, !dbg !2353, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2305, metadata !575), !dbg !2339
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2354
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2355
  ret i8* %16, !dbg !2356
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2357 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2361, metadata !575), !dbg !2364
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2362, metadata !575), !dbg !2365
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2363, metadata !575), !dbg !2366
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2288, metadata !575) #10, !dbg !2367
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2289, metadata !575) #10, !dbg !2369
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2290, metadata !575) #10, !dbg !2370
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2291, metadata !575) #10, !dbg !2371
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2296, metadata !575) #10, !dbg !2372
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2301, metadata !575) #10, !dbg !2374
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2302, metadata !575) #10, !dbg !2375
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2303, metadata !575) #10, !dbg !2376
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2304, metadata !575) #10, !dbg !2377
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2378
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2378
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2379, !tbaa.struct !2135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2305, metadata !575) #10, !dbg !2380
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !923, metadata !575) #10, !dbg !2381
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !924, metadata !575) #10, !dbg !2383
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !925, metadata !575) #10, !dbg !2384
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !923, metadata !575) #10, !dbg !2381
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !923, metadata !575) #10, !dbg !2381
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2385
  store i32 10, i32* %6, align 8, !dbg !2386, !tbaa !855
  %7 = icmp ne i8* %0, null, !dbg !2387
  %8 = icmp ne i8* %1, null, !dbg !2388
  %9 = and i1 %7, %8, !dbg !2389
  br i1 %9, label %11, label %10, !dbg !2389

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2390
  unreachable, !dbg !2390

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2391
  store i8* %0, i8** %12, align 8, !dbg !2392, !tbaa !941
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2393
  store i8* %1, i8** %13, align 8, !dbg !2394, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2305, metadata !575) #10, !dbg !2380
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2395
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2396
  ret i8* %14, !dbg !2397
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2398 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2402, metadata !575), !dbg !2406
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2403, metadata !575), !dbg !2407
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2404, metadata !575), !dbg !2408
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2405, metadata !575), !dbg !2409
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2296, metadata !575) #10, !dbg !2410
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2301, metadata !575) #10, !dbg !2412
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2302, metadata !575) #10, !dbg !2413
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2303, metadata !575) #10, !dbg !2414
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2304, metadata !575) #10, !dbg !2415
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2416
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2417, !tbaa.struct !2135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2305, metadata !575) #10, !dbg !2418
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !923, metadata !575) #10, !dbg !2419
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !924, metadata !575) #10, !dbg !2421
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !925, metadata !575) #10, !dbg !2422
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !923, metadata !575) #10, !dbg !2419
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !923, metadata !575) #10, !dbg !2419
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2423
  store i32 10, i32* %7, align 8, !dbg !2424, !tbaa !855
  %8 = icmp ne i8* %0, null, !dbg !2425
  %9 = icmp ne i8* %1, null, !dbg !2426
  %10 = and i1 %8, %9, !dbg !2427
  br i1 %10, label %12, label %11, !dbg !2427

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2428
  unreachable, !dbg !2428

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2429
  store i8* %0, i8** %13, align 8, !dbg !2430, !tbaa !941
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2431
  store i8* %1, i8** %14, align 8, !dbg !2432, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2305, metadata !575) #10, !dbg !2418
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2433
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2434
  ret i8* %15, !dbg !2435
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2436 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2440, metadata !575), !dbg !2443
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2441, metadata !575), !dbg !2444
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2442, metadata !575), !dbg !2445
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2446
  ret i8* %4, !dbg !2447
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2448 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2452, metadata !575), !dbg !2454
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2453, metadata !575), !dbg !2455
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2440, metadata !575) #10, !dbg !2456
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2441, metadata !575) #10, !dbg !2458
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2442, metadata !575) #10, !dbg !2459
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2460
  ret i8* %3, !dbg !2461
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2462 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2466, metadata !575), !dbg !2468
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2467, metadata !575), !dbg !2469
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2440, metadata !575) #10, !dbg !2470
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2441, metadata !575) #10, !dbg !2472
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2442, metadata !575) #10, !dbg !2473
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2474
  ret i8* %3, !dbg !2475
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2476 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2480, metadata !575), !dbg !2481
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2466, metadata !575) #10, !dbg !2482
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2467, metadata !575) #10, !dbg !2484
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2440, metadata !575) #10, !dbg !2485
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2441, metadata !575) #10, !dbg !2487
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2442, metadata !575) #10, !dbg !2488
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2489
  ret i8* %2, !dbg !2490
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2491 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2548, metadata !575), !dbg !2554
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2549, metadata !575), !dbg !2555
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2550, metadata !575), !dbg !2556
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2551, metadata !575), !dbg !2557
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2552, metadata !575), !dbg !2558
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2553, metadata !575), !dbg !2559
  %7 = icmp eq i8* %1, null, !dbg !2560
  br i1 %7, label %10, label %8, !dbg !2562

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2563
  br label %12, !dbg !2563

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2564
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i32 5) #10, !dbg !2565
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2565
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.58, i64 0, i64 0), i32 5) #10, !dbg !2566
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2566
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
  ], !dbg !2567

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2568
  unreachable, !dbg !2568

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.59, i64 0, i64 0), i32 5) #10, !dbg !2570
  %20 = load i8*, i8** %4, align 8, !dbg !2570, !tbaa !582
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2570
  br label %146, !dbg !2571

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.60, i64 0, i64 0), i32 5) #10, !dbg !2572
  %24 = load i8*, i8** %4, align 8, !dbg !2572, !tbaa !582
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2572
  %26 = load i8*, i8** %25, align 8, !dbg !2572, !tbaa !582
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2572
  br label %146, !dbg !2573

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.61, i64 0, i64 0), i32 5) #10, !dbg !2574
  %30 = load i8*, i8** %4, align 8, !dbg !2574, !tbaa !582
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2574
  %32 = load i8*, i8** %31, align 8, !dbg !2574, !tbaa !582
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2574
  %34 = load i8*, i8** %33, align 8, !dbg !2574, !tbaa !582
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2574
  br label %146, !dbg !2575

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.62, i64 0, i64 0), i32 5) #10, !dbg !2576
  %38 = load i8*, i8** %4, align 8, !dbg !2576, !tbaa !582
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2576
  %40 = load i8*, i8** %39, align 8, !dbg !2576, !tbaa !582
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2576
  %42 = load i8*, i8** %41, align 8, !dbg !2576, !tbaa !582
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2576
  %44 = load i8*, i8** %43, align 8, !dbg !2576, !tbaa !582
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2576
  br label %146, !dbg !2577

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.63, i64 0, i64 0), i32 5) #10, !dbg !2578
  %48 = load i8*, i8** %4, align 8, !dbg !2578, !tbaa !582
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2578
  %50 = load i8*, i8** %49, align 8, !dbg !2578, !tbaa !582
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2578
  %52 = load i8*, i8** %51, align 8, !dbg !2578, !tbaa !582
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2578
  %54 = load i8*, i8** %53, align 8, !dbg !2578, !tbaa !582
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2578
  %56 = load i8*, i8** %55, align 8, !dbg !2578, !tbaa !582
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2578
  br label %146, !dbg !2579

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.64, i64 0, i64 0), i32 5) #10, !dbg !2580
  %60 = load i8*, i8** %4, align 8, !dbg !2580, !tbaa !582
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2580
  %62 = load i8*, i8** %61, align 8, !dbg !2580, !tbaa !582
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2580
  %64 = load i8*, i8** %63, align 8, !dbg !2580, !tbaa !582
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2580
  %66 = load i8*, i8** %65, align 8, !dbg !2580, !tbaa !582
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2580
  %68 = load i8*, i8** %67, align 8, !dbg !2580, !tbaa !582
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2580
  %70 = load i8*, i8** %69, align 8, !dbg !2580, !tbaa !582
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2580
  br label %146, !dbg !2581

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.65, i64 0, i64 0), i32 5) #10, !dbg !2582
  %74 = load i8*, i8** %4, align 8, !dbg !2582, !tbaa !582
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2582
  %76 = load i8*, i8** %75, align 8, !dbg !2582, !tbaa !582
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2582
  %78 = load i8*, i8** %77, align 8, !dbg !2582, !tbaa !582
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2582
  %80 = load i8*, i8** %79, align 8, !dbg !2582, !tbaa !582
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2582
  %82 = load i8*, i8** %81, align 8, !dbg !2582, !tbaa !582
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2582
  %84 = load i8*, i8** %83, align 8, !dbg !2582, !tbaa !582
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2582
  %86 = load i8*, i8** %85, align 8, !dbg !2582, !tbaa !582
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2582
  br label %146, !dbg !2583

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.66, i64 0, i64 0), i32 5) #10, !dbg !2584
  %90 = load i8*, i8** %4, align 8, !dbg !2584, !tbaa !582
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2584
  %92 = load i8*, i8** %91, align 8, !dbg !2584, !tbaa !582
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2584
  %94 = load i8*, i8** %93, align 8, !dbg !2584, !tbaa !582
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2584
  %96 = load i8*, i8** %95, align 8, !dbg !2584, !tbaa !582
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2584
  %98 = load i8*, i8** %97, align 8, !dbg !2584, !tbaa !582
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2584
  %100 = load i8*, i8** %99, align 8, !dbg !2584, !tbaa !582
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2584
  %102 = load i8*, i8** %101, align 8, !dbg !2584, !tbaa !582
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2584
  %104 = load i8*, i8** %103, align 8, !dbg !2584, !tbaa !582
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2584
  br label %146, !dbg !2585

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.67, i64 0, i64 0), i32 5) #10, !dbg !2586
  %108 = load i8*, i8** %4, align 8, !dbg !2586, !tbaa !582
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2586
  %110 = load i8*, i8** %109, align 8, !dbg !2586, !tbaa !582
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2586
  %112 = load i8*, i8** %111, align 8, !dbg !2586, !tbaa !582
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2586
  %114 = load i8*, i8** %113, align 8, !dbg !2586, !tbaa !582
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2586
  %116 = load i8*, i8** %115, align 8, !dbg !2586, !tbaa !582
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2586
  %118 = load i8*, i8** %117, align 8, !dbg !2586, !tbaa !582
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2586
  %120 = load i8*, i8** %119, align 8, !dbg !2586, !tbaa !582
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2586
  %122 = load i8*, i8** %121, align 8, !dbg !2586, !tbaa !582
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2586
  %124 = load i8*, i8** %123, align 8, !dbg !2586, !tbaa !582
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2586
  br label %146, !dbg !2587

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.68, i64 0, i64 0), i32 5) #10, !dbg !2588
  %128 = load i8*, i8** %4, align 8, !dbg !2588, !tbaa !582
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2588
  %130 = load i8*, i8** %129, align 8, !dbg !2588, !tbaa !582
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2588
  %132 = load i8*, i8** %131, align 8, !dbg !2588, !tbaa !582
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2588
  %134 = load i8*, i8** %133, align 8, !dbg !2588, !tbaa !582
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2588
  %136 = load i8*, i8** %135, align 8, !dbg !2588, !tbaa !582
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2588
  %138 = load i8*, i8** %137, align 8, !dbg !2588, !tbaa !582
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2588
  %140 = load i8*, i8** %139, align 8, !dbg !2588, !tbaa !582
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2588
  %142 = load i8*, i8** %141, align 8, !dbg !2588, !tbaa !582
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2588
  %144 = load i8*, i8** %143, align 8, !dbg !2588, !tbaa !582
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2588
  br label %146, !dbg !2589

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2590
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2591 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2595, metadata !575), !dbg !2601
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2596, metadata !575), !dbg !2602
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2597, metadata !575), !dbg !2603
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2598, metadata !575), !dbg !2604
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2599, metadata !575), !dbg !2605
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2600, metadata !575), !dbg !2606
  br label %6, !dbg !2607

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2600, metadata !575), !dbg !2606
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2609
  %9 = load i8*, i8** %8, align 8, !dbg !2609, !tbaa !582
  %10 = icmp eq i8* %9, null, !dbg !2611
  %11 = add i64 %7, 1, !dbg !2612
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2600, metadata !575), !dbg !2606
  br i1 %10, label %12, label %6, !dbg !2611, !llvm.loop !2613

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2615
  ret void, !dbg !2616
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2617 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2628, metadata !575), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2629, metadata !575), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2630, metadata !575), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2631, metadata !575), !dbg !2639
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2632, metadata !575), !dbg !2640
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2641
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2634, metadata !575), !dbg !2642
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  %11 = load i32, i32* %8, align 8, !dbg !2644
  %12 = icmp ult i32 %11, 41, !dbg !2644
  br i1 %12, label %13, label %18, !dbg !2644

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2644
  %15 = sext i32 %11 to i64, !dbg !2644
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2644
  %17 = add i32 %11, 8, !dbg !2644
  store i32 %17, i32* %8, align 8, !dbg !2644
  br label %21, !dbg !2644

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2644
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2644
  store i8* %20, i8** %10, align 8, !dbg !2644
  br label %21, !dbg !2644

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2644
  %25 = load i8*, i8** %24, align 8, !dbg !2644
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2647
  store i8* %25, i8** %26, align 16, !dbg !2648, !tbaa !582
  %27 = icmp eq i8* %25, null, !dbg !2649
  br i1 %27, label %30, label %28, !dbg !2650

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  %29 = icmp ult i32 %22, 41, !dbg !2644
  br i1 %29, label %35, label %32, !dbg !2644

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2651
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2652
  ret void, !dbg !2652

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2644
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2644
  store i8* %34, i8** %10, align 8, !dbg !2644
  br label %40, !dbg !2644

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2644
  %37 = sext i32 %22 to i64, !dbg !2644
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2644
  %39 = add i32 %22, 8, !dbg !2644
  store i32 %39, i32* %8, align 8, !dbg !2644
  br label %40, !dbg !2644

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2644
  %44 = load i8*, i8** %43, align 8, !dbg !2644
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2647
  store i8* %44, i8** %45, align 8, !dbg !2648, !tbaa !582
  %46 = icmp eq i8* %44, null, !dbg !2649
  br i1 %46, label %30, label %47, !dbg !2650

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  %48 = icmp ult i32 %41, 41, !dbg !2644
  br i1 %48, label %52, label %49, !dbg !2644

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2644
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2644
  store i8* %51, i8** %10, align 8, !dbg !2644
  br label %57, !dbg !2644

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2644
  %54 = sext i32 %41 to i64, !dbg !2644
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2644
  %56 = add i32 %41, 8, !dbg !2644
  store i32 %56, i32* %8, align 8, !dbg !2644
  br label %57, !dbg !2644

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2644
  %61 = load i8*, i8** %60, align 8, !dbg !2644
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2647
  store i8* %61, i8** %62, align 16, !dbg !2648, !tbaa !582
  %63 = icmp eq i8* %61, null, !dbg !2649
  br i1 %63, label %30, label %64, !dbg !2650

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  %65 = icmp ult i32 %58, 41, !dbg !2644
  br i1 %65, label %69, label %66, !dbg !2644

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2644
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2644
  store i8* %68, i8** %10, align 8, !dbg !2644
  br label %74, !dbg !2644

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2644
  %71 = sext i32 %58 to i64, !dbg !2644
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2644
  %73 = add i32 %58, 8, !dbg !2644
  store i32 %73, i32* %8, align 8, !dbg !2644
  br label %74, !dbg !2644

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2644
  %78 = load i8*, i8** %77, align 8, !dbg !2644
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2647
  store i8* %78, i8** %79, align 8, !dbg !2648, !tbaa !582
  %80 = icmp eq i8* %78, null, !dbg !2649
  br i1 %80, label %30, label %81, !dbg !2650

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  %82 = icmp ult i32 %75, 41, !dbg !2644
  br i1 %82, label %86, label %83, !dbg !2644

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2644
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2644
  store i8* %85, i8** %10, align 8, !dbg !2644
  br label %91, !dbg !2644

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2644
  %88 = sext i32 %75 to i64, !dbg !2644
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2644
  %90 = add i32 %75, 8, !dbg !2644
  store i32 %90, i32* %8, align 8, !dbg !2644
  br label %91, !dbg !2644

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2644
  %95 = load i8*, i8** %94, align 8, !dbg !2644
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2647
  store i8* %95, i8** %96, align 16, !dbg !2648, !tbaa !582
  %97 = icmp eq i8* %95, null, !dbg !2649
  br i1 %97, label %30, label %98, !dbg !2650

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  %99 = icmp ult i32 %92, 41, !dbg !2644
  br i1 %99, label %103, label %100, !dbg !2644

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2644
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2644
  store i8* %102, i8** %10, align 8, !dbg !2644
  br label %108, !dbg !2644

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2644
  %105 = sext i32 %92 to i64, !dbg !2644
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2644
  %107 = add i32 %92, 8, !dbg !2644
  store i32 %107, i32* %8, align 8, !dbg !2644
  br label %108, !dbg !2644

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2644
  %111 = load i8*, i8** %110, align 8, !dbg !2644
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2647
  store i8* %111, i8** %112, align 8, !dbg !2648, !tbaa !582
  %113 = icmp eq i8* %111, null, !dbg !2649
  br i1 %113, label %30, label %114, !dbg !2650

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  %115 = load i8*, i8** %10, align 8, !dbg !2644
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2644
  store i8* %116, i8** %10, align 8, !dbg !2644
  %117 = bitcast i8* %115 to i8**, !dbg !2644
  %118 = load i8*, i8** %117, align 8, !dbg !2644
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2647
  store i8* %118, i8** %119, align 16, !dbg !2648, !tbaa !582
  %120 = icmp eq i8* %118, null, !dbg !2649
  br i1 %120, label %30, label %121, !dbg !2650

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  %122 = load i8*, i8** %10, align 8, !dbg !2644
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2644
  store i8* %123, i8** %10, align 8, !dbg !2644
  %124 = bitcast i8* %122 to i8**, !dbg !2644
  %125 = load i8*, i8** %124, align 8, !dbg !2644
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2647
  store i8* %125, i8** %126, align 8, !dbg !2648, !tbaa !582
  %127 = icmp eq i8* %125, null, !dbg !2649
  br i1 %127, label %30, label %128, !dbg !2650

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  %129 = load i8*, i8** %10, align 8, !dbg !2644
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2644
  store i8* %130, i8** %10, align 8, !dbg !2644
  %131 = bitcast i8* %129 to i8**, !dbg !2644
  %132 = load i8*, i8** %131, align 8, !dbg !2644
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2647
  store i8* %132, i8** %133, align 16, !dbg !2648, !tbaa !582
  %134 = icmp eq i8* %132, null, !dbg !2649
  br i1 %134, label %30, label %135, !dbg !2650

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !575), !dbg !2643
  %136 = load i8*, i8** %10, align 8, !dbg !2644
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2644
  store i8* %137, i8** %10, align 8, !dbg !2644
  %138 = bitcast i8* %136 to i8**, !dbg !2644
  %139 = load i8*, i8** %138, align 8, !dbg !2644
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2647
  store i8* %139, i8** %140, align 8, !dbg !2648, !tbaa !582
  %141 = icmp eq i8* %139, null, !dbg !2649
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !575), !dbg !2643
  %142 = select i1 %141, i64 9, i64 10, !dbg !2650
  br label %30, !dbg !2650
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2653 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2657, metadata !575), !dbg !2666
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2658, metadata !575), !dbg !2667
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2659, metadata !575), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2660, metadata !575), !dbg !2669
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2670
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2670
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2661, metadata !575), !dbg !2671
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2672
  call void @llvm.va_start(i8* nonnull %6), !dbg !2672
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2673
  call void @llvm.va_end(i8* nonnull %6), !dbg !2674
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2675
  ret void, !dbg !2675
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2676 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.71, i64 0, i64 0), i32 5) #10, !dbg !2677
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.72, i64 0, i64 0)) #10, !dbg !2677
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.73, i64 0, i64 0), i32 5) #10, !dbg !2678
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.75, i64 0, i64 0)) #10, !dbg !2678
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !2679
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2679, !tbaa !582
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2679
  ret void, !dbg !2680
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2681 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2685, metadata !575), !dbg !2687
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2686, metadata !575), !dbg !2688
  %3 = udiv i64 9223372036854775807, %1, !dbg !2689
  %4 = icmp ult i64 %3, %0, !dbg !2689
  br i1 %4, label %5, label %6, !dbg !2691

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2692
  unreachable, !dbg !2692

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2694, metadata !575) #10, !dbg !2701
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2703
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2700, metadata !575) #10, !dbg !2704
  %9 = icmp eq i8* %8, null, !dbg !2705
  %10 = icmp ne i64 %7, 0, !dbg !2707
  %11 = and i1 %10, %9, !dbg !2708
  br i1 %11, label %12, label %13, !dbg !2708

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2709
  unreachable, !dbg !2709

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2710
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2695 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2694, metadata !575), !dbg !2711
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2712
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2700, metadata !575), !dbg !2713
  %3 = icmp eq i8* %2, null, !dbg !2714
  %4 = icmp ne i64 %0, 0, !dbg !2715
  %5 = and i1 %4, %3, !dbg !2716
  br i1 %5, label %6, label %7, !dbg !2716

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2717
  unreachable, !dbg !2717

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2718
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2719 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2723, metadata !575), !dbg !2726
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2724, metadata !575), !dbg !2727
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2725, metadata !575), !dbg !2728
  %4 = udiv i64 9223372036854775807, %2, !dbg !2729
  %5 = icmp ult i64 %4, %1, !dbg !2729
  br i1 %5, label %6, label %7, !dbg !2731

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2732
  unreachable, !dbg !2732

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2733
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2734, metadata !575) #10, !dbg !2740
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2739, metadata !575) #10, !dbg !2742
  %9 = icmp eq i64 %8, 0, !dbg !2743
  %10 = icmp ne i8* %0, null, !dbg !2745
  %11 = and i1 %10, %9, !dbg !2746
  br i1 %11, label %12, label %13, !dbg !2746

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2747
  br label %19, !dbg !2749

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2750
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2734, metadata !575) #10, !dbg !2740
  %15 = icmp eq i8* %14, null, !dbg !2751
  %16 = icmp ne i64 %8, 0, !dbg !2753
  %17 = and i1 %16, %15, !dbg !2754
  br i1 %17, label %18, label %19, !dbg !2754

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2755
  unreachable, !dbg !2755

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2756
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2735 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2734, metadata !575), !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2739, metadata !575), !dbg !2758
  %3 = icmp eq i64 %1, 0, !dbg !2759
  %4 = icmp ne i8* %0, null, !dbg !2760
  %5 = and i1 %4, %3, !dbg !2761
  br i1 %5, label %6, label %7, !dbg !2761

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2762
  br label %13, !dbg !2763

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2764
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2734, metadata !575), !dbg !2757
  %9 = icmp eq i8* %8, null, !dbg !2765
  %10 = icmp ne i64 %1, 0, !dbg !2766
  %11 = and i1 %10, %9, !dbg !2767
  br i1 %11, label %12, label %13, !dbg !2767

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2768
  unreachable, !dbg !2768

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2769
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !535 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !540, metadata !575), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !541, metadata !575), !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !542, metadata !575), !dbg !2772
  %4 = load i64, i64* %1, align 8, !dbg !2773, !tbaa !1812
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !543, metadata !575), !dbg !2774
  %5 = icmp eq i8* %0, null, !dbg !2775
  br i1 %5, label %6, label %13, !dbg !2777

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2778
  br i1 %7, label %8, label %17, !dbg !2781

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2782
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !543, metadata !575), !dbg !2774
  %10 = icmp ugt i64 %2, 128, !dbg !2784
  %11 = zext i1 %10 to i64, !dbg !2784
  %12 = add nuw nsw i64 %9, %11, !dbg !2785
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !543, metadata !575), !dbg !2774
  br label %17, !dbg !2786

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2787
  %15 = icmp ugt i64 %14, %4, !dbg !2790
  br i1 %15, label %20, label %16, !dbg !2791

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2792
  unreachable, !dbg !2792

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2774
  store i64 %18, i64* %1, align 8, !dbg !2793, !tbaa !1812
  %19 = mul i64 %18, %2, !dbg !2794
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2734, metadata !575) #10, !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2739, metadata !575) #10, !dbg !2797
  br label %27, !dbg !2798

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2799
  %22 = add i64 %4, 1, !dbg !2800
  %23 = add i64 %22, %21, !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2774
  store i64 %23, i64* %1, align 8, !dbg !2793, !tbaa !1812
  %24 = mul i64 %23, %2, !dbg !2794
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2734, metadata !575) #10, !dbg !2795
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2739, metadata !575) #10, !dbg !2797
  %25 = icmp eq i64 %24, 0, !dbg !2802
  br i1 %25, label %26, label %27, !dbg !2798

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !2803
  br label %34, !dbg !2804

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !2805
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2734, metadata !575) #10, !dbg !2795
  %30 = icmp eq i8* %29, null, !dbg !2806
  %31 = icmp ne i64 %28, 0, !dbg !2807
  %32 = and i1 %31, %30, !dbg !2808
  br i1 %32, label %33, label %34, !dbg !2808

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2809
  unreachable, !dbg !2809

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2810
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2811 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2813, metadata !575), !dbg !2814
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2694, metadata !575) #10, !dbg !2815
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2817
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2700, metadata !575) #10, !dbg !2818
  %3 = icmp eq i8* %2, null, !dbg !2819
  %4 = icmp ne i64 %0, 0, !dbg !2820
  %5 = and i1 %4, %3, !dbg !2821
  br i1 %5, label %6, label %7, !dbg !2821

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2822
  unreachable, !dbg !2822

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2823
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2824 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2828, metadata !575), !dbg !2830
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2829, metadata !575), !dbg !2831
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !540, metadata !575) #10, !dbg !2832
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !541, metadata !575) #10, !dbg !2834
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !542, metadata !575) #10, !dbg !2835
  %3 = load i64, i64* %1, align 8, !dbg !2836, !tbaa !1812
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !543, metadata !575) #10, !dbg !2837
  %4 = icmp eq i8* %0, null, !dbg !2838
  br i1 %4, label %5, label %8, !dbg !2839

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2840
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !543, metadata !575) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !543, metadata !575) #10, !dbg !2837
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #10, !dbg !2837
  store i64 %7, i64* %1, align 8, !dbg !2842, !tbaa !1812
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2734, metadata !575) #10, !dbg !2843
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2739, metadata !575) #10, !dbg !2845
  br label %17, !dbg !2846

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2847
  br i1 %9, label %11, label %10, !dbg !2848

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2849
  unreachable, !dbg !2849

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2850
  %13 = add i64 %3, 1, !dbg !2851
  %14 = add i64 %13, %12, !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #10, !dbg !2837
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #10, !dbg !2837
  store i64 %14, i64* %1, align 8, !dbg !2842, !tbaa !1812
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2734, metadata !575) #10, !dbg !2843
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2739, metadata !575) #10, !dbg !2845
  %15 = icmp eq i64 %14, 0, !dbg !2853
  br i1 %15, label %16, label %17, !dbg !2846

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !2854
  br label %24, !dbg !2855

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !2856
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2734, metadata !575) #10, !dbg !2843
  %20 = icmp eq i8* %19, null, !dbg !2857
  %21 = icmp ne i64 %18, 0, !dbg !2858
  %22 = and i1 %21, %20, !dbg !2859
  br i1 %22, label %23, label %24, !dbg !2859

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2860
  unreachable, !dbg !2860

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2861
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2862 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2864, metadata !575), !dbg !2865
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2694, metadata !575) #10, !dbg !2866
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2868
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2700, metadata !575) #10, !dbg !2869
  %3 = icmp eq i8* %2, null, !dbg !2870
  %4 = icmp ne i64 %0, 0, !dbg !2871
  %5 = and i1 %4, %3, !dbg !2872
  br i1 %5, label %6, label %7, !dbg !2872

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2873
  unreachable, !dbg !2873

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2874
  ret i8* %2, !dbg !2875
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2876 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2878, metadata !575), !dbg !2881
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2879, metadata !575), !dbg !2882
  %3 = udiv i64 9223372036854775807, %1, !dbg !2883
  %4 = icmp ult i64 %3, %0, !dbg !2883
  br i1 %4, label %8, label %5, !dbg !2885

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !2886
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2880, metadata !575), !dbg !2887
  %7 = icmp eq i8* %6, null, !dbg !2888
  br i1 %7, label %8, label %9, !dbg !2889

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2890
  unreachable, !dbg !2890

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2891
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2892 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2898, metadata !575), !dbg !2900
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2899, metadata !575), !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2694, metadata !575) #10, !dbg !2902
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !2904
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2700, metadata !575) #10, !dbg !2905
  %4 = icmp eq i8* %3, null, !dbg !2906
  %5 = icmp ne i64 %1, 0, !dbg !2907
  %6 = and i1 %5, %4, !dbg !2908
  br i1 %6, label %7, label %8, !dbg !2908

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2909
  unreachable, !dbg !2909

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2910
  ret i8* %3, !dbg !2911
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2912 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2914, metadata !575), !dbg !2915
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2916
  %3 = add i64 %2, 1, !dbg !2917
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2898, metadata !575) #10, !dbg !2918
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2899, metadata !575) #10, !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2694, metadata !575) #10, !dbg !2921
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !2923
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2700, metadata !575) #10, !dbg !2924
  %5 = icmp eq i8* %4, null, !dbg !2925
  %6 = icmp ne i64 %3, 0, !dbg !2926
  %7 = and i1 %6, %5, !dbg !2927
  br i1 %7, label %8, label %9, !dbg !2927

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2928
  unreachable, !dbg !2928

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !2929
  ret i8* %4, !dbg !2930
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2931 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2933, !tbaa !651
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.86, i64 0, i64 0), i32 5) #10, !dbg !2934
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i8* %2) #10, !dbg !2935
  tail call void @abort() #15, !dbg !2936
  unreachable, !dbg !2936
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2937 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2940, metadata !575), !dbg !2946
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2941, metadata !575), !dbg !2947
  %3 = icmp eq i64 %0, 0, !dbg !2948
  %4 = icmp eq i64 %1, 0, !dbg !2949
  %5 = or i1 %3, %4, !dbg !2950
  br i1 %5, label %12, label %6, !dbg !2950

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2951
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2943, metadata !575), !dbg !2952
  %8 = udiv i64 %7, %1, !dbg !2953
  %9 = icmp eq i64 %8, %0, !dbg !2955
  br i1 %9, label %12, label %10, !dbg !2956

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2957
  store i32 12, i32* %11, align 4, !dbg !2959, !tbaa !651
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2940, metadata !575), !dbg !2946
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2941, metadata !575), !dbg !2947
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !2960
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2942, metadata !575), !dbg !2961
  br label %16, !dbg !2962

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !2963
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !2964 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !2981, metadata !575), !dbg !2990
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2982, metadata !575), !dbg !2991
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2983, metadata !575), !dbg !2992
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !2984, metadata !575), !dbg !2993
  %6 = bitcast i32* %5 to i8*, !dbg !2994
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !2994
  %7 = icmp eq i32* %0, null, !dbg !2995
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2981, metadata !575), !dbg !2990
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2997
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2981, metadata !575), !dbg !2990
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2985, metadata !575), !dbg !2999
  %10 = icmp ugt i64 %9, -3, !dbg !3000
  %11 = icmp ne i64 %2, 0, !dbg !3001
  %12 = and i1 %11, %10, !dbg !3002
  br i1 %12, label %13, label %18, !dbg !3002

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3003
  br i1 %14, label %18, label %15, !dbg !3004

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3005, !tbaa !1076
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !2987, metadata !575), !dbg !3006
  %17 = zext i8 %16 to i32, !dbg !3007
  store i32 %17, i32* %8, align 4, !dbg !3008, !tbaa !651
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3009
  ret i64 %19, !dbg !3009
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3010 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3055, metadata !575), !dbg !3060
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3061
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3062, metadata !575), !dbg !3066
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3068
  %4 = load i32, i32* %3, align 8, !dbg !3068, !tbaa !3069
  %5 = and i32 %4, 32, !dbg !3068
  %6 = icmp eq i32 %5, 0, !dbg !3071
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3072
  %8 = icmp ne i32 %7, 0, !dbg !3073
  br i1 %6, label %9, label %19, !dbg !3074

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3076
  %11 = xor i1 %8, true, !dbg !3077
  %12 = or i1 %10, %11, !dbg !3077
  %13 = sext i1 %8 to i32, !dbg !3077
  br i1 %12, label %22, label %14, !dbg !3077

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3078
  %16 = load i32, i32* %15, align 4, !dbg !3078, !tbaa !651
  %17 = icmp ne i32 %16, 9, !dbg !3079
  %18 = sext i1 %17 to i32, !dbg !3080
  br label %22, !dbg !3080

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3081

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3083
  store i32 0, i32* %21, align 4, !dbg !3085, !tbaa !651
  br label %22, !dbg !3083

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3086
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3087 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3092, metadata !575), !dbg !3095
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3093, metadata !575), !dbg !3096
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3097
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3094, metadata !575), !dbg !3098
  %3 = icmp eq i8* %2, null, !dbg !3099
  br i1 %3, label %11, label %4, !dbg !3101

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0)) #14, !dbg !3102
  %6 = icmp eq i32 %5, 0, !dbg !3107
  br i1 %6, label %10, label %7, !dbg !3108

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.97, i64 0, i64 0)) #14, !dbg !3109
  %9 = icmp eq i32 %8, 0, !dbg !3110
  br i1 %9, label %10, label %11, !dbg !3111

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3093, metadata !575), !dbg !3096
  br label %11, !dbg !3112

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3113
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3114 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3120, metadata !575), !dbg !3194
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3187, metadata !575), !dbg !3197
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3198
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3118, metadata !575), !dbg !3199
  %4 = icmp eq i8* %3, null, !dbg !3200
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), i8* %3, !dbg !3202
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3118, metadata !575), !dbg !3199
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3203, !tbaa !582
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3134, metadata !575) #10, !dbg !3204
  %7 = icmp eq i8* %6, null, !dbg !3205
  br i1 %7, label %8, label %123, !dbg !3206

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.101, i64 0, i64 0)) #10, !dbg !3207
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3135, metadata !575) #10, !dbg !3208
  %10 = icmp eq i8* %9, null, !dbg !3209
  br i1 %10, label %14, label %11, !dbg !3211

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3212, !tbaa !1076
  %13 = icmp eq i8 %12, 0, !dbg !3213
  br i1 %13, label %14, label %15, !dbg !3214

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3215

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.102, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3135, metadata !575) #10, !dbg !3208
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3138, metadata !575) #10, !dbg !3217
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3140, metadata !575) #10, !dbg !3218
  %18 = icmp eq i64 %17, 0, !dbg !3219
  br i1 %18, label %24, label %19, !dbg !3220

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3221
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3221
  %22 = load i8, i8* %21, align 1, !dbg !3221, !tbaa !1076
  %23 = icmp ne i8 %22, 47, !dbg !3221
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3222
  %27 = add i64 %17, 14, !dbg !3223
  %28 = add i64 %27, %26, !dbg !3224
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3225
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3137, metadata !575) #10, !dbg !3226
  %30 = icmp eq i8* %29, null, !dbg !3227
  br i1 %30, label %121, label %31, !dbg !3227

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3228
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3231

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3232, !tbaa !1076
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3234
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.103, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3235
  br label %37, !dbg !3236

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3234
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.103, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3235
  br label %37, !dbg !3236

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3237
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3142, metadata !575) #10, !dbg !3238
  %39 = icmp slt i32 %38, 0, !dbg !3239
  br i1 %39, label %119, label %40, !dbg !3240

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.104, i64 0, i64 0)) #10, !dbg !3241
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3143, metadata !575) #10, !dbg !3242
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3243
  br i1 %42, label %43, label %45, !dbg !3244

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3245
  br label %119, !dbg !3247

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3184, metadata !575) #10, !dbg !3248
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3185, metadata !575) #10, !dbg !3249
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3250

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3251

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3184, metadata !575) #10, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3185, metadata !575) #10, !dbg !3249
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3251
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3252
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3253, metadata !575) #10, !dbg !3258
  %54 = load i8*, i8** %48, align 8, !dbg !3260, !tbaa !3261
  %55 = load i8*, i8** %49, align 8, !dbg !3260, !tbaa !3262
  %56 = icmp ult i8* %54, %55, !dbg !3260
  br i1 %56, label %59, label %57, !dbg !3260, !prof !3263

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3260
  br label %63, !dbg !3260

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3260
  store i8* %60, i8** %48, align 8, !dbg !3260, !tbaa !3261
  %61 = load i8, i8* %54, align 1, !dbg !3260, !tbaa !1076
  %62 = zext i8 %61 to i32, !dbg !3260
  br label %63, !dbg !3260

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3260
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3186, metadata !575) #10, !dbg !3264
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3265, !llvm.loop !3266

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3271

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3253, metadata !575) #10, !dbg !3273
  %67 = load i8*, i8** %48, align 8, !dbg !3271, !tbaa !3261
  %68 = load i8*, i8** %49, align 8, !dbg !3271, !tbaa !3262
  %69 = icmp ult i8* %67, %68, !dbg !3271
  br i1 %69, label %72, label %70, !dbg !3271, !prof !3263

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3271
  br label %76, !dbg !3271

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3271
  store i8* %73, i8** %48, align 8, !dbg !3271, !tbaa !3261
  %74 = load i8, i8* %67, align 1, !dbg !3271, !tbaa !1076
  %75 = zext i8 %74 to i32, !dbg !3271
  br label %76, !dbg !3271

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3271
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3186, metadata !575) #10, !dbg !3264
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3274, !llvm.loop !3275

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3278
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.105, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3279
  %81 = icmp slt i32 %80, 2, !dbg !3281
  br i1 %81, label %112, label %82, !dbg !3282

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3191, metadata !575) #10, !dbg !3284
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3192, metadata !575) #10, !dbg !3286
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3193, metadata !575) #10, !dbg !3287
  %85 = icmp eq i64 %51, 0, !dbg !3288
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3290

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3185, metadata !575) #10, !dbg !3249
  %90 = add i64 %87, 2, !dbg !3291
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3184, metadata !575) #10, !dbg !3248
  br label %96, !dbg !3294

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3185, metadata !575) #10, !dbg !3249
  %94 = add i64 %93, 1, !dbg !3297
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3298
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3184, metadata !575) #10, !dbg !3248
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3184, metadata !575) #10, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3185, metadata !575) #10, !dbg !3249
  %99 = icmp eq i8* %98, null, !dbg !3299
  br i1 %99, label %100, label %102, !dbg !3301

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3185, metadata !575) #10, !dbg !3249
  call void @free(i8* %52) #10, !dbg !3302
  br label %112, !dbg !3304

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3305
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3305
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3306
  %104 = xor i64 %84, -1, !dbg !3307
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3307
  %106 = xor i64 %83, -1, !dbg !3308
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3308
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3309, metadata !575) #10, !dbg !3318
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3317, metadata !575) #10, !dbg !3318
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3320
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3321
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3309, metadata !575) #10, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3317, metadata !575) #10, !dbg !3322
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3324
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3325
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3184, metadata !575) #10, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3185, metadata !575) #10, !dbg !3249
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3305
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3305
  br label %50, !dbg !3326, !llvm.loop !3275

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3305
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3305
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3327
  %116 = icmp eq i64 %113, 0, !dbg !3328
  br i1 %116, label %119, label %117, !dbg !3330

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3331
  store i8 0, i8* %118, align 1, !dbg !3333, !tbaa !1076
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3134, metadata !575) #10, !dbg !3204
  call void @free(i8* %29) #10, !dbg !3334
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.100, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3134, metadata !575) #10, !dbg !3204
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3335, !tbaa !582
  br label %123, !dbg !3336

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3134, metadata !575) #10, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3119, metadata !575), !dbg !3337
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3119, metadata !575), !dbg !3337
  %125 = load i8, i8* %124, align 1, !dbg !3338, !tbaa !1076
  %126 = icmp eq i8 %125, 0, !dbg !3340
  br i1 %126, label %152, label %127, !dbg !3341

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3342

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3119, metadata !575), !dbg !3337
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3342
  %132 = icmp eq i32 %131, 0, !dbg !3344
  br i1 %132, label %139, label %133, !dbg !3345

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3346
  br i1 %134, label %135, label %143, !dbg !3347

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3348
  %137 = load i8, i8* %136, align 1, !dbg !3348, !tbaa !1076
  %138 = icmp eq i8 %137, 0, !dbg !3349
  br i1 %138, label %139, label %143, !dbg !3350

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3351
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3353
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3354
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3118, metadata !575), !dbg !3199
  br label %152, !dbg !3355

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3356
  %145 = add i64 %144, 1, !dbg !3357
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3119, metadata !575), !dbg !3337
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3359
  %148 = add i64 %147, 1, !dbg !3360
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3119, metadata !575), !dbg !3337
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3119, metadata !575), !dbg !3337
  %150 = load i8, i8* %149, align 1, !dbg !3338, !tbaa !1076
  %151 = icmp eq i8 %150, 0, !dbg !3340
  br i1 %151, label %152, label %128, !dbg !3341, !llvm.loop !3362

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3118, metadata !575), !dbg !3199
  %154 = load i8, i8* %153, align 1, !dbg !3364, !tbaa !1076
  %155 = icmp eq i8 %154, 0, !dbg !3366
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.106, i64 0, i64 0), i8* %153, !dbg !3367
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3118, metadata !575), !dbg !3199
  ret i8* %156, !dbg !3368
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3369 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3414, metadata !575), !dbg !3418
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3415, metadata !575), !dbg !3419
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3417, metadata !575), !dbg !3420
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3421
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3416, metadata !575), !dbg !3422
  %3 = icmp slt i32 %2, 0, !dbg !3423
  br i1 %3, label %4, label %6, !dbg !3425

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3426
  br label %24, !dbg !3427

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3428
  %8 = icmp eq i32 %7, 0, !dbg !3428
  br i1 %8, label %13, label %9, !dbg !3430

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3431
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3432
  %12 = icmp eq i64 %11, -1, !dbg !3433
  br i1 %12, label %16, label %13, !dbg !3434

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3435
  %15 = icmp eq i32 %14, 0, !dbg !3435
  br i1 %15, label %16, label %18, !dbg !3436

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3415, metadata !575), !dbg !3419
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3437
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3417, metadata !575), !dbg !3420
  br label %24, !dbg !3438

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3439
  %20 = load i32, i32* %19, align 4, !dbg !3439, !tbaa !651
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3415, metadata !575), !dbg !3419
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3415, metadata !575), !dbg !3419
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3437
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3417, metadata !575), !dbg !3420
  %22 = icmp eq i32 %20, 0, !dbg !3440
  br i1 %22, label %24, label %23, !dbg !3438

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3442, !tbaa !651
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3417, metadata !575), !dbg !3420
  br label %24, !dbg !3444

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3445
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3446 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3491, metadata !575), !dbg !3492
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3493
  br i1 %2, label %6, label %3, !dbg !3495

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3496
  %5 = icmp eq i32 %4, 0, !dbg !3496
  br i1 %5, label %6, label %8, !dbg !3497

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3498
  br label %17, !dbg !3499

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3500, metadata !575) #10, !dbg !3505
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3507
  %10 = load i32, i32* %9, align 8, !dbg !3507, !tbaa !3069
  %11 = and i32 %10, 256, !dbg !3509
  %12 = icmp eq i32 %11, 0, !dbg !3509
  br i1 %12, label %15, label %13, !dbg !3510

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3511
  br label %15, !dbg !3511

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3512
  br label %17, !dbg !3513

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3514
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3515 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3561, metadata !575), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3562, metadata !575), !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3563, metadata !575), !dbg !3569
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3570
  %5 = load i8*, i8** %4, align 8, !dbg !3570, !tbaa !3262
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3571
  %7 = load i8*, i8** %6, align 8, !dbg !3571, !tbaa !3261
  %8 = icmp eq i8* %5, %7, !dbg !3572
  br i1 %8, label %9, label %28, !dbg !3573

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3574
  %11 = load i8*, i8** %10, align 8, !dbg !3574, !tbaa !3575
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3576
  %13 = load i8*, i8** %12, align 8, !dbg !3576, !tbaa !3577
  %14 = icmp eq i8* %11, %13, !dbg !3578
  br i1 %14, label %15, label %28, !dbg !3579

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3580
  %17 = load i8*, i8** %16, align 8, !dbg !3580, !tbaa !3581
  %18 = icmp eq i8* %17, null, !dbg !3582
  br i1 %18, label %19, label %28, !dbg !3583

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3584
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3564, metadata !575), !dbg !3586
  %22 = icmp eq i64 %21, -1, !dbg !3587
  br i1 %22, label %30, label %23, !dbg !3589

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3590
  %25 = load i32, i32* %24, align 8, !dbg !3591, !tbaa !3069
  %26 = and i32 %25, -17, !dbg !3591
  store i32 %26, i32* %24, align 8, !dbg !3591, !tbaa !3069
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3592
  store i64 %21, i64* %27, align 8, !dbg !3593, !tbaa !3594
  br label %30, !dbg !3595

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3596
  br label %30, !dbg !3597

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3598
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
!499 = !DIFile(filename: "src/whoami.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!500 = !{!6, !49, !96}
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
!570 = distinct !DISubprogram(name: "usage", scope: !499, file: !499, line: 39, type: !571, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !498, variables: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !25}
!573 = !{!574}
!574 = !DILocalVariable(name: "status", arg: 1, scope: !570, file: !499, line: 39, type: !25)
!575 = !DIExpression()
!576 = !DILocation(line: 39, column: 12, scope: !570)
!577 = !DILocation(line: 41, column: 14, scope: !578)
!578 = distinct !DILexicalBlock(scope: !570, file: !499, line: 41, column: 7)
!579 = !DILocation(line: 41, column: 7, scope: !570)
!580 = !DILocation(line: 42, column: 5, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !499, line: 42, column: 5)
!582 = !{!583, !583, i64 0}
!583 = !{!"any pointer", !584, i64 0}
!584 = !{!"omnipotent char", !585, i64 0}
!585 = !{!"Simple C/C++ TBAA"}
!586 = !DILocation(line: 45, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !578, file: !499, line: 44, column: 5)
!588 = !DILocation(line: 46, column: 7, scope: !587)
!589 = !DILocation(line: 51, column: 7, scope: !587)
!590 = !DILocation(line: 52, column: 7, scope: !587)
!591 = !DILocation(line: 642, column: 15, scope: !504, inlinedAt: !592)
!592 = distinct !DILocation(line: 53, column: 7, scope: !587)
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
!606 = !DILocation(line: 55, column: 3, scope: !570)
!607 = distinct !DISubprogram(name: "main", scope: !499, file: !499, line: 59, type: !608, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !498, variables: !611)
!608 = !DISubroutineType(types: !609)
!609 = !{!25, !25, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!611 = !{!612, !613, !614, !629, !632}
!612 = !DILocalVariable(name: "argc", arg: 1, scope: !607, file: !499, line: 59, type: !25)
!613 = !DILocalVariable(name: "argv", arg: 2, scope: !607, file: !499, line: 59, type: !610)
!614 = !DILocalVariable(name: "pw", scope: !607, file: !499, line: 61, type: !615)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !617, line: 49, size: 384, elements: !618)
!617 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = !{!619, !620, !621, !624, !626, !627, !628}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !616, file: !617, line: 51, baseType: !50, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !616, file: !617, line: 52, baseType: !50, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !616, file: !617, line: 53, baseType: !622, size: 32, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !623, line: 134, baseType: !113)
!623 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !616, file: !617, line: 54, baseType: !625, size: 32, offset: 160)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !623, line: 135, baseType: !113)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !616, file: !617, line: 55, baseType: !50, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !616, file: !617, line: 56, baseType: !50, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !616, file: !617, line: 57, baseType: !50, size: 64, offset: 320)
!629 = !DILocalVariable(name: "uid", scope: !607, file: !499, line: 62, type: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !631, line: 80, baseType: !622)
!631 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!632 = !DILocalVariable(name: "NO_UID", scope: !607, file: !499, line: 63, type: !630)
!633 = !DILocation(line: 59, column: 11, scope: !607)
!634 = !DILocation(line: 59, column: 24, scope: !607)
!635 = !DILocation(line: 63, column: 9, scope: !607)
!636 = !DILocation(line: 66, column: 21, scope: !607)
!637 = !DILocation(line: 66, column: 3, scope: !607)
!638 = !DILocation(line: 67, column: 3, scope: !607)
!639 = !DILocation(line: 68, column: 3, scope: !607)
!640 = !DILocation(line: 69, column: 3, scope: !607)
!641 = !DILocation(line: 71, column: 3, scope: !607)
!642 = !DILocation(line: 73, column: 63, scope: !607)
!643 = !DILocation(line: 73, column: 3, scope: !607)
!644 = !DILocation(line: 75, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !607, file: !499, line: 75, column: 7)
!646 = !DILocation(line: 75, column: 48, scope: !645)
!647 = !DILocation(line: 75, column: 7, scope: !607)
!648 = !DILocation(line: 76, column: 5, scope: !645)
!649 = !DILocation(line: 78, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !607, file: !499, line: 78, column: 7)
!651 = !{!652, !652, i64 0}
!652 = !{!"int", !584, i64 0}
!653 = !DILocation(line: 78, column: 14, scope: !650)
!654 = !DILocation(line: 78, column: 7, scope: !607)
!655 = !DILocation(line: 80, column: 20, scope: !656)
!656 = distinct !DILexicalBlock(scope: !650, file: !499, line: 79, column: 5)
!657 = !DILocation(line: 80, column: 55, scope: !656)
!658 = !DILocation(line: 80, column: 50, scope: !656)
!659 = !DILocation(line: 80, column: 43, scope: !656)
!660 = !DILocation(line: 80, column: 7, scope: !656)
!661 = !DILocation(line: 81, column: 7, scope: !656)
!662 = !DILocation(line: 84, column: 3, scope: !607)
!663 = !DILocation(line: 84, column: 9, scope: !607)
!664 = !DILocation(line: 85, column: 9, scope: !607)
!665 = !DILocation(line: 62, column: 9, scope: !607)
!666 = !DILocation(line: 86, column: 13, scope: !607)
!667 = !DILocation(line: 86, column: 23, scope: !607)
!668 = !DILocation(line: 86, column: 26, scope: !607)
!669 = !DILocation(line: 86, column: 9, scope: !607)
!670 = !DILocation(line: 86, column: 41, scope: !607)
!671 = !DILocation(line: 61, column: 18, scope: !607)
!672 = !DILocation(line: 87, column: 8, scope: !673)
!673 = distinct !DILexicalBlock(scope: !607, file: !499, line: 87, column: 7)
!674 = !DILocation(line: 87, column: 7, scope: !607)
!675 = !DILocation(line: 88, column: 5, scope: !673)
!676 = !DILocation(line: 90, column: 13, scope: !607)
!677 = !{!678, !583, i64 0}
!678 = !{!"passwd", !583, i64 0, !583, i64 8, !652, i64 16, !652, i64 20, !583, i64 24, !583, i64 32, !583, i64 40}
!679 = !DILocation(line: 90, column: 3, scope: !607)
!680 = !DILocation(line: 91, column: 3, scope: !607)
!681 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !506, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !682)
!682 = !{!683}
!683 = !DILocalVariable(name: "file", arg: 1, scope: !681, file: !16, line: 41, type: !6)
!684 = !DILocation(line: 41, column: 41, scope: !681)
!685 = !DILocation(line: 43, column: 13, scope: !681)
!686 = !DILocation(line: 44, column: 1, scope: !681)
!687 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !688, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !17}
!690 = !{!691}
!691 = !DILocalVariable(name: "ignore", arg: 1, scope: !687, file: !16, line: 78, type: !17)
!692 = !DILocation(line: 78, column: 37, scope: !687)
!693 = !DILocation(line: 80, column: 16, scope: !687)
!694 = !{!695, !695, i64 0}
!695 = !{!"_Bool", !584, i64 0}
!696 = !DILocation(line: 81, column: 1, scope: !687)
!697 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !698, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{null}
!700 = !{!701}
!701 = !DILocalVariable(name: "write_error", scope: !702, file: !16, line: 112, type: !6)
!702 = distinct !DILexicalBlock(scope: !703, file: !16, line: 111, column: 5)
!703 = distinct !DILexicalBlock(scope: !697, file: !16, line: 109, column: 7)
!704 = !DILocation(line: 109, column: 21, scope: !703)
!705 = !DILocation(line: 109, column: 7, scope: !703)
!706 = !DILocation(line: 109, column: 29, scope: !703)
!707 = !DILocation(line: 110, column: 7, scope: !703)
!708 = !DILocation(line: 110, column: 12, scope: !703)
!709 = !{i8 0, i8 2}
!710 = !DILocation(line: 114, column: 19, scope: !711)
!711 = distinct !DILexicalBlock(scope: !702, file: !16, line: 113, column: 11)
!712 = !DILocation(line: 110, column: 25, scope: !703)
!713 = !DILocation(line: 110, column: 28, scope: !703)
!714 = !DILocation(line: 110, column: 34, scope: !703)
!715 = !DILocation(line: 109, column: 7, scope: !697)
!716 = !DILocation(line: 112, column: 33, scope: !702)
!717 = !DILocation(line: 112, column: 19, scope: !702)
!718 = !DILocation(line: 113, column: 11, scope: !711)
!719 = !DILocation(line: 113, column: 11, scope: !702)
!720 = !DILocation(line: 114, column: 36, scope: !711)
!721 = !DILocation(line: 114, column: 9, scope: !711)
!722 = !DILocation(line: 117, column: 9, scope: !711)
!723 = !DILocation(line: 119, column: 14, scope: !702)
!724 = !DILocation(line: 119, column: 7, scope: !702)
!725 = !DILocation(line: 122, column: 22, scope: !726)
!726 = distinct !DILexicalBlock(scope: !697, file: !16, line: 122, column: 8)
!727 = !DILocation(line: 122, column: 8, scope: !726)
!728 = !DILocation(line: 122, column: 30, scope: !726)
!729 = !DILocation(line: 122, column: 8, scope: !697)
!730 = !DILocation(line: 123, column: 13, scope: !726)
!731 = !DILocation(line: 123, column: 6, scope: !726)
!732 = !DILocation(line: 124, column: 1, scope: !697)
!733 = distinct !DISubprogram(name: "parse_long_options", scope: !31, file: !31, line: 44, type: !734, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !737)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !25, !610, !6, !6, !6, !736, null}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746}
!738 = !DILocalVariable(name: "argc", arg: 1, scope: !733, file: !31, line: 44, type: !25)
!739 = !DILocalVariable(name: "argv", arg: 2, scope: !733, file: !31, line: 45, type: !610)
!740 = !DILocalVariable(name: "command_name", arg: 3, scope: !733, file: !31, line: 46, type: !6)
!741 = !DILocalVariable(name: "package", arg: 4, scope: !733, file: !31, line: 47, type: !6)
!742 = !DILocalVariable(name: "version", arg: 5, scope: !733, file: !31, line: 48, type: !6)
!743 = !DILocalVariable(name: "usage_func", arg: 6, scope: !733, file: !31, line: 49, type: !736)
!744 = !DILocalVariable(name: "c", scope: !733, file: !31, line: 52, type: !25)
!745 = !DILocalVariable(name: "saved_opterr", scope: !733, file: !31, line: 53, type: !25)
!746 = !DILocalVariable(name: "authors", scope: !747, file: !31, line: 71, type: !751)
!747 = distinct !DILexicalBlock(scope: !748, file: !31, line: 70, column: 11)
!748 = distinct !DILexicalBlock(scope: !749, file: !31, line: 64, column: 9)
!749 = distinct !DILexicalBlock(scope: !750, file: !31, line: 62, column: 5)
!750 = distinct !DILexicalBlock(scope: !733, file: !31, line: 60, column: 7)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !752, line: 46, baseType: !753)
!752 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !754, line: 48, baseType: !755)
!754 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !29, line: 71, baseType: !756)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 192, elements: !763)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, line: 71, size: 192, elements: !758)
!758 = !{!759, !760, !761, !762}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !757, file: !29, line: 71, baseType: !113, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !757, file: !29, line: 71, baseType: !113, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !757, file: !29, line: 71, baseType: !49, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !757, file: !29, line: 71, baseType: !49, size: 64, offset: 128)
!763 = !{!764}
!764 = !DISubrange(count: 1)
!765 = !DILocation(line: 44, column: 25, scope: !733)
!766 = !DILocation(line: 45, column: 28, scope: !733)
!767 = !DILocation(line: 46, column: 33, scope: !733)
!768 = !DILocation(line: 47, column: 33, scope: !733)
!769 = !DILocation(line: 48, column: 33, scope: !733)
!770 = !DILocation(line: 49, column: 28, scope: !733)
!771 = !DILocation(line: 55, column: 18, scope: !733)
!772 = !DILocation(line: 53, column: 7, scope: !733)
!773 = !DILocation(line: 58, column: 10, scope: !733)
!774 = !DILocation(line: 60, column: 12, scope: !750)
!775 = !DILocation(line: 61, column: 7, scope: !750)
!776 = !DILocation(line: 61, column: 15, scope: !750)
!777 = !DILocation(line: 52, column: 7, scope: !733)
!778 = !DILocation(line: 60, column: 7, scope: !733)
!779 = !DILocation(line: 66, column: 11, scope: !748)
!780 = !DILocation(line: 67, column: 11, scope: !748)
!781 = !DILocation(line: 71, column: 13, scope: !747)
!782 = !DILocation(line: 71, column: 21, scope: !747)
!783 = !DILocation(line: 72, column: 13, scope: !747)
!784 = !DILocation(line: 73, column: 29, scope: !747)
!785 = !DILocation(line: 73, column: 13, scope: !747)
!786 = !DILocation(line: 74, column: 13, scope: !747)
!787 = !DILocation(line: 84, column: 10, scope: !733)
!788 = !DILocation(line: 88, column: 10, scope: !733)
!789 = !DILocation(line: 89, column: 1, scope: !733)
!790 = distinct !DISubprogram(name: "set_program_name", scope: !52, file: !52, line: 39, type: !506, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !46, variables: !791)
!791 = !{!792, !793, !794}
!792 = !DILocalVariable(name: "argv0", arg: 1, scope: !790, file: !52, line: 39, type: !6)
!793 = !DILocalVariable(name: "slash", scope: !790, file: !52, line: 46, type: !6)
!794 = !DILocalVariable(name: "base", scope: !790, file: !52, line: 47, type: !6)
!795 = !DILocation(line: 39, column: 31, scope: !790)
!796 = !DILocation(line: 51, column: 13, scope: !797)
!797 = distinct !DILexicalBlock(scope: !790, file: !52, line: 51, column: 7)
!798 = !DILocation(line: 51, column: 7, scope: !790)
!799 = !DILocation(line: 55, column: 14, scope: !800)
!800 = distinct !DILexicalBlock(scope: !797, file: !52, line: 52, column: 5)
!801 = !DILocation(line: 54, column: 7, scope: !800)
!802 = !DILocation(line: 56, column: 7, scope: !800)
!803 = !DILocation(line: 59, column: 11, scope: !790)
!804 = !DILocation(line: 46, column: 15, scope: !790)
!805 = !DILocation(line: 60, column: 17, scope: !790)
!806 = !DILocation(line: 60, column: 33, scope: !790)
!807 = !DILocation(line: 60, column: 11, scope: !790)
!808 = !DILocation(line: 47, column: 15, scope: !790)
!809 = !DILocation(line: 61, column: 12, scope: !810)
!810 = distinct !DILexicalBlock(scope: !790, file: !52, line: 61, column: 7)
!811 = !DILocation(line: 61, column: 20, scope: !810)
!812 = !DILocation(line: 61, column: 25, scope: !810)
!813 = !DILocation(line: 61, column: 42, scope: !810)
!814 = !DILocation(line: 61, column: 28, scope: !810)
!815 = !DILocation(line: 61, column: 61, scope: !810)
!816 = !DILocation(line: 61, column: 7, scope: !790)
!817 = !DILocation(line: 64, column: 11, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !52, line: 64, column: 11)
!819 = distinct !DILexicalBlock(scope: !810, file: !52, line: 62, column: 5)
!820 = !DILocation(line: 64, column: 36, scope: !818)
!821 = !DILocation(line: 64, column: 11, scope: !819)
!822 = !DILocation(line: 66, column: 24, scope: !823)
!823 = distinct !DILexicalBlock(scope: !818, file: !52, line: 65, column: 9)
!824 = !DILocation(line: 70, column: 41, scope: !823)
!825 = !DILocation(line: 72, column: 9, scope: !823)
!826 = !DILocation(line: 84, column: 16, scope: !790)
!827 = !DILocation(line: 90, column: 27, scope: !790)
!828 = !DILocation(line: 92, column: 1, scope: !790)
!829 = distinct !DISubprogram(name: "clone_quoting_options", scope: !100, file: !100, line: 114, type: !830, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !833)
!830 = !DISubroutineType(types: !831)
!831 = !{!832, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!833 = !{!834, !835, !836}
!834 = !DILocalVariable(name: "o", arg: 1, scope: !829, file: !100, line: 114, type: !832)
!835 = !DILocalVariable(name: "e", scope: !829, file: !100, line: 116, type: !25)
!836 = !DILocalVariable(name: "p", scope: !829, file: !100, line: 117, type: !832)
!837 = !DILocation(line: 114, column: 48, scope: !829)
!838 = !DILocation(line: 116, column: 11, scope: !829)
!839 = !DILocation(line: 116, column: 7, scope: !829)
!840 = !DILocation(line: 117, column: 40, scope: !829)
!841 = !DILocation(line: 117, column: 31, scope: !829)
!842 = !DILocation(line: 117, column: 27, scope: !829)
!843 = !DILocation(line: 119, column: 9, scope: !829)
!844 = !DILocation(line: 120, column: 3, scope: !829)
!845 = distinct !DISubprogram(name: "get_quoting_style", scope: !100, file: !100, line: 125, type: !846, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !850)
!846 = !DISubroutineType(types: !847)
!847 = !{!58, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!850 = !{!851}
!851 = !DILocalVariable(name: "o", arg: 1, scope: !845, file: !100, line: 125, type: !848)
!852 = !DILocation(line: 125, column: 50, scope: !845)
!853 = !DILocation(line: 127, column: 11, scope: !845)
!854 = !DILocation(line: 127, column: 46, scope: !845)
!855 = !{!856, !584, i64 0}
!856 = !{!"quoting_options", !584, i64 0, !652, i64 4, !584, i64 8, !583, i64 40, !583, i64 48}
!857 = !DILocation(line: 127, column: 3, scope: !845)
!858 = distinct !DISubprogram(name: "set_quoting_style", scope: !100, file: !100, line: 133, type: !859, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !832, !58}
!861 = !{!862, !863}
!862 = !DILocalVariable(name: "o", arg: 1, scope: !858, file: !100, line: 133, type: !832)
!863 = !DILocalVariable(name: "s", arg: 2, scope: !858, file: !100, line: 133, type: !58)
!864 = !DILocation(line: 133, column: 44, scope: !858)
!865 = !DILocation(line: 133, column: 66, scope: !858)
!866 = !DILocation(line: 135, column: 4, scope: !858)
!867 = !DILocation(line: 135, column: 39, scope: !858)
!868 = !DILocation(line: 135, column: 45, scope: !858)
!869 = !DILocation(line: 136, column: 1, scope: !858)
!870 = distinct !DISubprogram(name: "set_char_quoting", scope: !100, file: !100, line: 144, type: !871, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!25, !832, !8, !25}
!873 = !{!874, !875, !876, !877, !878, !880, !881}
!874 = !DILocalVariable(name: "o", arg: 1, scope: !870, file: !100, line: 144, type: !832)
!875 = !DILocalVariable(name: "c", arg: 2, scope: !870, file: !100, line: 144, type: !8)
!876 = !DILocalVariable(name: "i", arg: 3, scope: !870, file: !100, line: 144, type: !25)
!877 = !DILocalVariable(name: "uc", scope: !870, file: !100, line: 146, type: !494)
!878 = !DILocalVariable(name: "p", scope: !870, file: !100, line: 147, type: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!880 = !DILocalVariable(name: "shift", scope: !870, file: !100, line: 149, type: !25)
!881 = !DILocalVariable(name: "r", scope: !870, file: !100, line: 150, type: !25)
!882 = !DILocation(line: 144, column: 43, scope: !870)
!883 = !DILocation(line: 144, column: 51, scope: !870)
!884 = !DILocation(line: 144, column: 58, scope: !870)
!885 = !DILocation(line: 146, column: 17, scope: !870)
!886 = !DILocation(line: 148, column: 6, scope: !870)
!887 = !DILocation(line: 148, column: 62, scope: !870)
!888 = !DILocation(line: 148, column: 57, scope: !870)
!889 = !DILocation(line: 147, column: 17, scope: !870)
!890 = !DILocation(line: 149, column: 18, scope: !870)
!891 = !DILocation(line: 149, column: 15, scope: !870)
!892 = !DILocation(line: 149, column: 7, scope: !870)
!893 = !DILocation(line: 150, column: 12, scope: !870)
!894 = !DILocation(line: 150, column: 15, scope: !870)
!895 = !DILocation(line: 150, column: 25, scope: !870)
!896 = !DILocation(line: 150, column: 7, scope: !870)
!897 = !DILocation(line: 151, column: 13, scope: !870)
!898 = !DILocation(line: 151, column: 18, scope: !870)
!899 = !DILocation(line: 151, column: 23, scope: !870)
!900 = !DILocation(line: 151, column: 6, scope: !870)
!901 = !DILocation(line: 152, column: 3, scope: !870)
!902 = distinct !DISubprogram(name: "set_quoting_flags", scope: !100, file: !100, line: 160, type: !903, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!25, !832, !25}
!905 = !{!906, !907, !908}
!906 = !DILocalVariable(name: "o", arg: 1, scope: !902, file: !100, line: 160, type: !832)
!907 = !DILocalVariable(name: "i", arg: 2, scope: !902, file: !100, line: 160, type: !25)
!908 = !DILocalVariable(name: "r", scope: !902, file: !100, line: 162, type: !25)
!909 = !DILocation(line: 160, column: 44, scope: !902)
!910 = !DILocation(line: 160, column: 51, scope: !902)
!911 = !DILocation(line: 163, column: 8, scope: !912)
!912 = distinct !DILexicalBlock(scope: !902, file: !100, line: 163, column: 7)
!913 = !DILocation(line: 163, column: 7, scope: !902)
!914 = !DILocation(line: 165, column: 10, scope: !902)
!915 = !{!856, !652, i64 4}
!916 = !DILocation(line: 162, column: 7, scope: !902)
!917 = !DILocation(line: 166, column: 12, scope: !902)
!918 = !DILocation(line: 167, column: 3, scope: !902)
!919 = distinct !DISubprogram(name: "set_custom_quoting", scope: !100, file: !100, line: 171, type: !920, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !922)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !832, !6, !6}
!922 = !{!923, !924, !925}
!923 = !DILocalVariable(name: "o", arg: 1, scope: !919, file: !100, line: 171, type: !832)
!924 = !DILocalVariable(name: "left_quote", arg: 2, scope: !919, file: !100, line: 172, type: !6)
!925 = !DILocalVariable(name: "right_quote", arg: 3, scope: !919, file: !100, line: 172, type: !6)
!926 = !DILocation(line: 171, column: 45, scope: !919)
!927 = !DILocation(line: 172, column: 33, scope: !919)
!928 = !DILocation(line: 172, column: 57, scope: !919)
!929 = !DILocation(line: 174, column: 8, scope: !930)
!930 = distinct !DILexicalBlock(scope: !919, file: !100, line: 174, column: 7)
!931 = !DILocation(line: 174, column: 7, scope: !919)
!932 = !DILocation(line: 176, column: 6, scope: !919)
!933 = !DILocation(line: 176, column: 12, scope: !919)
!934 = !DILocation(line: 177, column: 8, scope: !935)
!935 = distinct !DILexicalBlock(scope: !919, file: !100, line: 177, column: 7)
!936 = !DILocation(line: 177, column: 23, scope: !935)
!937 = !DILocation(line: 177, column: 19, scope: !935)
!938 = !DILocation(line: 178, column: 5, scope: !935)
!939 = !DILocation(line: 179, column: 6, scope: !919)
!940 = !DILocation(line: 179, column: 17, scope: !919)
!941 = !{!856, !583, i64 40}
!942 = !DILocation(line: 180, column: 6, scope: !919)
!943 = !DILocation(line: 180, column: 18, scope: !919)
!944 = !{!856, !583, i64 48}
!945 = !DILocation(line: 181, column: 1, scope: !919)
!946 = distinct !DISubprogram(name: "quotearg_buffer", scope: !100, file: !100, line: 776, type: !947, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{!94, !50, !94, !6, !94, !848}
!949 = !{!950, !951, !952, !953, !954, !955, !956, !957}
!950 = !DILocalVariable(name: "buffer", arg: 1, scope: !946, file: !100, line: 776, type: !50)
!951 = !DILocalVariable(name: "buffersize", arg: 2, scope: !946, file: !100, line: 776, type: !94)
!952 = !DILocalVariable(name: "arg", arg: 3, scope: !946, file: !100, line: 777, type: !6)
!953 = !DILocalVariable(name: "argsize", arg: 4, scope: !946, file: !100, line: 777, type: !94)
!954 = !DILocalVariable(name: "o", arg: 5, scope: !946, file: !100, line: 778, type: !848)
!955 = !DILocalVariable(name: "p", scope: !946, file: !100, line: 780, type: !848)
!956 = !DILocalVariable(name: "e", scope: !946, file: !100, line: 781, type: !25)
!957 = !DILocalVariable(name: "r", scope: !946, file: !100, line: 782, type: !94)
!958 = !DILocation(line: 776, column: 24, scope: !946)
!959 = !DILocation(line: 776, column: 39, scope: !946)
!960 = !DILocation(line: 777, column: 30, scope: !946)
!961 = !DILocation(line: 777, column: 42, scope: !946)
!962 = !DILocation(line: 778, column: 48, scope: !946)
!963 = !DILocation(line: 780, column: 37, scope: !946)
!964 = !DILocation(line: 780, column: 33, scope: !946)
!965 = !DILocation(line: 781, column: 11, scope: !946)
!966 = !DILocation(line: 781, column: 7, scope: !946)
!967 = !DILocation(line: 783, column: 43, scope: !946)
!968 = !DILocation(line: 783, column: 53, scope: !946)
!969 = !DILocation(line: 783, column: 60, scope: !946)
!970 = !DILocation(line: 784, column: 43, scope: !946)
!971 = !DILocation(line: 784, column: 58, scope: !946)
!972 = !DILocation(line: 782, column: 14, scope: !946)
!973 = !DILocation(line: 782, column: 10, scope: !946)
!974 = !DILocation(line: 785, column: 9, scope: !946)
!975 = !DILocation(line: 786, column: 3, scope: !946)
!976 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !100, file: !100, line: 248, type: !977, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !981)
!977 = !DISubroutineType(types: !978)
!978 = !{!94, !50, !94, !6, !94, !58, !25, !979, !6, !6}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1006, !1007, !1008, !1009, !1010, !1013, !1014, !1032, !1035, !1036, !1043}
!982 = !DILocalVariable(name: "buffer", arg: 1, scope: !976, file: !100, line: 248, type: !50)
!983 = !DILocalVariable(name: "buffersize", arg: 2, scope: !976, file: !100, line: 248, type: !94)
!984 = !DILocalVariable(name: "arg", arg: 3, scope: !976, file: !100, line: 249, type: !6)
!985 = !DILocalVariable(name: "argsize", arg: 4, scope: !976, file: !100, line: 249, type: !94)
!986 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !976, file: !100, line: 250, type: !58)
!987 = !DILocalVariable(name: "flags", arg: 6, scope: !976, file: !100, line: 250, type: !25)
!988 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !976, file: !100, line: 251, type: !979)
!989 = !DILocalVariable(name: "left_quote", arg: 8, scope: !976, file: !100, line: 252, type: !6)
!990 = !DILocalVariable(name: "right_quote", arg: 9, scope: !976, file: !100, line: 253, type: !6)
!991 = !DILocalVariable(name: "i", scope: !976, file: !100, line: 255, type: !94)
!992 = !DILocalVariable(name: "len", scope: !976, file: !100, line: 256, type: !94)
!993 = !DILocalVariable(name: "orig_buffersize", scope: !976, file: !100, line: 257, type: !94)
!994 = !DILocalVariable(name: "quote_string", scope: !976, file: !100, line: 258, type: !6)
!995 = !DILocalVariable(name: "quote_string_len", scope: !976, file: !100, line: 259, type: !94)
!996 = !DILocalVariable(name: "backslash_escapes", scope: !976, file: !100, line: 260, type: !17)
!997 = !DILocalVariable(name: "unibyte_locale", scope: !976, file: !100, line: 261, type: !17)
!998 = !DILocalVariable(name: "elide_outer_quotes", scope: !976, file: !100, line: 262, type: !17)
!999 = !DILocalVariable(name: "pending_shell_escape_end", scope: !976, file: !100, line: 263, type: !17)
!1000 = !DILocalVariable(name: "encountered_single_quote", scope: !976, file: !100, line: 264, type: !17)
!1001 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !976, file: !100, line: 265, type: !17)
!1002 = !DILocalVariable(name: "c", scope: !1003, file: !100, line: 394, type: !494)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !100, line: 393, column: 5)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !100, line: 392, column: 3)
!1005 = distinct !DILexicalBlock(scope: !976, file: !100, line: 392, column: 3)
!1006 = !DILocalVariable(name: "esc", scope: !1003, file: !100, line: 395, type: !494)
!1007 = !DILocalVariable(name: "is_right_quote", scope: !1003, file: !100, line: 396, type: !17)
!1008 = !DILocalVariable(name: "escaping", scope: !1003, file: !100, line: 397, type: !17)
!1009 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1003, file: !100, line: 398, type: !17)
!1010 = !DILocalVariable(name: "m", scope: !1011, file: !100, line: 602, type: !94)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 600, column: 11)
!1012 = distinct !DILexicalBlock(scope: !1003, file: !100, line: 418, column: 9)
!1013 = !DILocalVariable(name: "printable", scope: !1011, file: !100, line: 604, type: !17)
!1014 = !DILocalVariable(name: "mbstate", scope: !1015, file: !100, line: 613, type: !1017)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !100, line: 612, column: 15)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !100, line: 606, column: 17)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1018, line: 6, baseType: !1019)
!1018 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1020, line: 21, baseType: !1021)
!1020 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 13, size: 64, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1021, file: !1020, line: 15, baseType: !25, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1021, file: !1020, line: 20, baseType: !1025, size: 32, offset: 32)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !1020, line: 16, size: 32, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1025, file: !1020, line: 18, baseType: !113, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1025, file: !1020, line: 19, baseType: !1029, size: 32)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 4)
!1032 = !DILocalVariable(name: "w", scope: !1033, file: !100, line: 623, type: !1034)
!1033 = distinct !DILexicalBlock(scope: !1015, file: !100, line: 622, column: 19)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !25)
!1035 = !DILocalVariable(name: "bytes", scope: !1033, file: !100, line: 624, type: !94)
!1036 = !DILocalVariable(name: "j", scope: !1037, file: !100, line: 649, type: !94)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !100, line: 648, column: 27)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !100, line: 646, column: 29)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !100, line: 641, column: 23)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !100, line: 633, column: 30)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !100, line: 628, column: 30)
!1042 = distinct !DILexicalBlock(scope: !1033, file: !100, line: 626, column: 25)
!1043 = !DILocalVariable(name: "ilim", scope: !1044, file: !100, line: 676, type: !94)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !100, line: 673, column: 15)
!1045 = distinct !DILexicalBlock(scope: !1011, file: !100, line: 672, column: 17)
!1046 = !DILocation(line: 248, column: 33, scope: !976)
!1047 = !DILocation(line: 248, column: 48, scope: !976)
!1048 = !DILocation(line: 249, column: 39, scope: !976)
!1049 = !DILocation(line: 249, column: 51, scope: !976)
!1050 = !DILocation(line: 250, column: 46, scope: !976)
!1051 = !DILocation(line: 250, column: 65, scope: !976)
!1052 = !DILocation(line: 251, column: 47, scope: !976)
!1053 = !DILocation(line: 252, column: 39, scope: !976)
!1054 = !DILocation(line: 253, column: 39, scope: !976)
!1055 = !DILocation(line: 256, column: 10, scope: !976)
!1056 = !DILocation(line: 257, column: 10, scope: !976)
!1057 = !DILocation(line: 258, column: 15, scope: !976)
!1058 = !DILocation(line: 259, column: 10, scope: !976)
!1059 = !DILocation(line: 260, column: 8, scope: !976)
!1060 = !DILocation(line: 261, column: 25, scope: !976)
!1061 = !DILocation(line: 261, column: 36, scope: !976)
!1062 = !DILocation(line: 262, column: 8, scope: !976)
!1063 = !DILocation(line: 263, column: 8, scope: !976)
!1064 = !DILocation(line: 264, column: 8, scope: !976)
!1065 = !DILocation(line: 265, column: 8, scope: !976)
!1066 = !DILocation(line: 265, column: 3, scope: !976)
!1067 = !DILocation(line: 308, column: 3, scope: !976)
!1068 = !DILocation(line: 315, column: 11, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !976, file: !100, line: 309, column: 5)
!1070 = !DILocation(line: 315, column: 12, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1069, file: !100, line: 315, column: 11)
!1072 = !DILocation(line: 316, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !100, line: 316, column: 9)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !100, line: 316, column: 9)
!1075 = !DILocation(line: 316, column: 9, scope: !1074)
!1076 = !{!584, !584, i64 0}
!1077 = !DILocation(line: 354, column: 26, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !100, line: 332, column: 11)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !100, line: 331, column: 13)
!1080 = distinct !DILexicalBlock(scope: !1069, file: !100, line: 330, column: 7)
!1081 = !DILocation(line: 355, column: 27, scope: !1078)
!1082 = !DILocation(line: 356, column: 11, scope: !1078)
!1083 = !DILocation(line: 357, column: 14, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !100, line: 357, column: 13)
!1085 = !DILocation(line: 357, column: 13, scope: !1080)
!1086 = !DILocation(line: 358, column: 43, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !100, line: 358, column: 11)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !100, line: 358, column: 11)
!1089 = !DILocation(line: 358, column: 11, scope: !1088)
!1090 = !DILocation(line: 359, column: 13, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !100, line: 359, column: 13)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !100, line: 359, column: 13)
!1093 = !DILocation(line: 359, column: 13, scope: !1092)
!1094 = !DILocation(line: 358, column: 70, scope: !1087)
!1095 = distinct !{!1095, !1089, !1096}
!1096 = !DILocation(line: 359, column: 13, scope: !1088)
!1097 = !DILocation(line: 362, column: 28, scope: !1080)
!1098 = !DILocation(line: 364, column: 7, scope: !1069)
!1099 = !DILocation(line: 367, column: 7, scope: !1069)
!1100 = !DILocation(line: 370, column: 7, scope: !1069)
!1101 = !DILocation(line: 373, column: 12, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1069, file: !100, line: 373, column: 11)
!1103 = !DILocation(line: 373, column: 11, scope: !1069)
!1104 = !DILocation(line: 378, column: 12, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1069, file: !100, line: 378, column: 11)
!1106 = !DILocation(line: 378, column: 11, scope: !1069)
!1107 = !DILocation(line: 379, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !100, line: 379, column: 9)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !100, line: 379, column: 9)
!1110 = !DILocation(line: 379, column: 9, scope: !1109)
!1111 = !DILocation(line: 386, column: 7, scope: !1069)
!1112 = !DILocation(line: 389, column: 7, scope: !1069)
!1113 = !DILocation(line: 255, column: 10, scope: !976)
!1114 = !DILocation(line: 392, column: 8, scope: !1005)
!1115 = !DILocation(line: 392, column: 27, scope: !1004)
!1116 = !DILocation(line: 392, column: 19, scope: !1004)
!1117 = !DILocation(line: 392, column: 60, scope: !1004)
!1118 = !DILocation(line: 392, column: 3, scope: !1005)
!1119 = !DILocation(line: 392, column: 41, scope: !1004)
!1120 = !DILocation(line: 392, column: 48, scope: !1004)
!1121 = !DILocation(line: 396, column: 12, scope: !1003)
!1122 = !DILocation(line: 397, column: 12, scope: !1003)
!1123 = !DILocation(line: 398, column: 12, scope: !1003)
!1124 = !DILocation(line: 401, column: 11, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1003, file: !100, line: 400, column: 11)
!1126 = !DILocation(line: 403, column: 17, scope: !1125)
!1127 = !DILocation(line: 404, column: 39, scope: !1125)
!1128 = !DILocation(line: 408, column: 32, scope: !1125)
!1129 = !DILocation(line: 404, column: 19, scope: !1125)
!1130 = !DILocation(line: 404, column: 15, scope: !1125)
!1131 = !DILocation(line: 409, column: 11, scope: !1125)
!1132 = !DILocation(line: 409, column: 26, scope: !1125)
!1133 = !DILocation(line: 409, column: 14, scope: !1125)
!1134 = !DILocation(line: 409, column: 63, scope: !1125)
!1135 = !DILocation(line: 400, column: 11, scope: !1003)
!1136 = !DILocation(line: 416, column: 11, scope: !1003)
!1137 = !DILocation(line: 394, column: 21, scope: !1003)
!1138 = !DILocation(line: 417, column: 7, scope: !1003)
!1139 = !DILocation(line: 420, column: 15, scope: !1012)
!1140 = !DILocation(line: 422, column: 15, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !100, line: 422, column: 15)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !100, line: 421, column: 13)
!1143 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 420, column: 15)
!1144 = !DILocation(line: 422, column: 15, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !100, line: 422, column: 15)
!1146 = !DILocation(line: 422, column: 15, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !100, line: 422, column: 15)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !100, line: 422, column: 15)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !100, line: 422, column: 15)
!1150 = !DILocation(line: 422, column: 15, scope: !1148)
!1151 = !DILocation(line: 422, column: 15, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !100, line: 422, column: 15)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !100, line: 422, column: 15)
!1154 = !DILocation(line: 422, column: 15, scope: !1153)
!1155 = !DILocation(line: 422, column: 15, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !100, line: 422, column: 15)
!1157 = distinct !DILexicalBlock(scope: !1149, file: !100, line: 422, column: 15)
!1158 = !DILocation(line: 422, column: 15, scope: !1157)
!1159 = !DILocation(line: 422, column: 15, scope: !1149)
!1160 = !DILocation(line: 422, column: 15, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !100, line: 422, column: 15)
!1162 = distinct !DILexicalBlock(scope: !1141, file: !100, line: 422, column: 15)
!1163 = !DILocation(line: 422, column: 15, scope: !1162)
!1164 = !DILocation(line: 430, column: 19, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1142, file: !100, line: 429, column: 19)
!1166 = !DILocation(line: 430, column: 24, scope: !1165)
!1167 = !DILocation(line: 430, column: 28, scope: !1165)
!1168 = !DILocation(line: 430, column: 38, scope: !1165)
!1169 = !DILocation(line: 430, column: 48, scope: !1165)
!1170 = !DILocation(line: 430, column: 59, scope: !1165)
!1171 = !DILocation(line: 432, column: 19, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !100, line: 432, column: 19)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !100, line: 432, column: 19)
!1174 = distinct !DILexicalBlock(scope: !1165, file: !100, line: 431, column: 17)
!1175 = !DILocation(line: 432, column: 19, scope: !1173)
!1176 = !DILocation(line: 433, column: 19, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !100, line: 433, column: 19)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !100, line: 433, column: 19)
!1179 = !DILocation(line: 433, column: 19, scope: !1178)
!1180 = !DILocation(line: 434, column: 17, scope: !1174)
!1181 = !DILocation(line: 441, column: 20, scope: !1143)
!1182 = !DILocation(line: 446, column: 11, scope: !1012)
!1183 = !DILocation(line: 449, column: 19, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 447, column: 13)
!1185 = !DILocation(line: 455, column: 19, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1184, file: !100, line: 454, column: 19)
!1187 = !DILocation(line: 455, column: 24, scope: !1186)
!1188 = !DILocation(line: 455, column: 28, scope: !1186)
!1189 = !DILocation(line: 455, column: 38, scope: !1186)
!1190 = !DILocation(line: 455, column: 47, scope: !1186)
!1191 = !DILocation(line: 455, column: 41, scope: !1186)
!1192 = !DILocation(line: 455, column: 52, scope: !1186)
!1193 = !DILocation(line: 454, column: 19, scope: !1184)
!1194 = !DILocation(line: 456, column: 25, scope: !1186)
!1195 = !DILocation(line: 456, column: 17, scope: !1186)
!1196 = !DILocation(line: 463, column: 25, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1186, file: !100, line: 457, column: 19)
!1198 = !DILocation(line: 467, column: 21, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !100, line: 467, column: 21)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !100, line: 467, column: 21)
!1201 = !DILocation(line: 467, column: 21, scope: !1200)
!1202 = !DILocation(line: 468, column: 21, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !100, line: 468, column: 21)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !100, line: 468, column: 21)
!1205 = !DILocation(line: 468, column: 21, scope: !1204)
!1206 = !DILocation(line: 469, column: 21, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !100, line: 469, column: 21)
!1208 = distinct !DILexicalBlock(scope: !1197, file: !100, line: 469, column: 21)
!1209 = !DILocation(line: 469, column: 21, scope: !1208)
!1210 = !DILocation(line: 470, column: 21, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !100, line: 470, column: 21)
!1212 = distinct !DILexicalBlock(scope: !1197, file: !100, line: 470, column: 21)
!1213 = !DILocation(line: 470, column: 21, scope: !1212)
!1214 = !DILocation(line: 471, column: 21, scope: !1197)
!1215 = !DILocation(line: 395, column: 21, scope: !1003)
!1216 = !DILocation(line: 484, column: 31, scope: !1012)
!1217 = !DILocation(line: 485, column: 31, scope: !1012)
!1218 = !DILocation(line: 487, column: 31, scope: !1012)
!1219 = !DILocation(line: 488, column: 31, scope: !1012)
!1220 = !DILocation(line: 489, column: 31, scope: !1012)
!1221 = !DILocation(line: 492, column: 15, scope: !1012)
!1222 = !DILocation(line: 494, column: 19, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !100, line: 493, column: 13)
!1224 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 492, column: 15)
!1225 = !DILocation(line: 501, column: 33, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 501, column: 15)
!1227 = !DILocation(line: 506, column: 15, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 505, column: 15)
!1229 = !DILocation(line: 510, column: 15, scope: !1012)
!1230 = !DILocation(line: 518, column: 26, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 518, column: 15)
!1232 = !DILocation(line: 518, column: 15, scope: !1012)
!1233 = !DILocation(line: 518, column: 40, scope: !1231)
!1234 = !DILocation(line: 518, column: 47, scope: !1231)
!1235 = !DILocation(line: 522, column: 17, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 522, column: 15)
!1237 = !DILocation(line: 518, column: 18, scope: !1231)
!1238 = !DILocation(line: 518, column: 65, scope: !1231)
!1239 = !DILocation(line: 522, column: 15, scope: !1012)
!1240 = !DILocation(line: 526, column: 11, scope: !1012)
!1241 = !DILocation(line: 541, column: 15, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 540, column: 15)
!1243 = !DILocation(line: 548, column: 15, scope: !1012)
!1244 = !DILocation(line: 550, column: 19, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !100, line: 549, column: 13)
!1246 = distinct !DILexicalBlock(scope: !1012, file: !100, line: 548, column: 15)
!1247 = !DILocation(line: 553, column: 19, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !100, line: 553, column: 19)
!1249 = !DILocation(line: 553, column: 35, scope: !1248)
!1250 = !DILocation(line: 553, column: 30, scope: !1248)
!1251 = !DILocation(line: 562, column: 15, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !100, line: 562, column: 15)
!1253 = distinct !DILexicalBlock(scope: !1245, file: !100, line: 562, column: 15)
!1254 = !DILocation(line: 562, column: 15, scope: !1253)
!1255 = !DILocation(line: 563, column: 15, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !100, line: 563, column: 15)
!1257 = distinct !DILexicalBlock(scope: !1245, file: !100, line: 563, column: 15)
!1258 = !DILocation(line: 563, column: 15, scope: !1257)
!1259 = !DILocation(line: 564, column: 15, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !100, line: 564, column: 15)
!1261 = distinct !DILexicalBlock(scope: !1245, file: !100, line: 564, column: 15)
!1262 = !DILocation(line: 564, column: 15, scope: !1261)
!1263 = !DILocation(line: 566, column: 13, scope: !1245)
!1264 = !DILocation(line: 606, column: 17, scope: !1011)
!1265 = !DILocation(line: 602, column: 20, scope: !1011)
!1266 = !DILocation(line: 609, column: 29, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1016, file: !100, line: 607, column: 15)
!1268 = !{!1269, !1269, i64 0}
!1269 = !{!"short", !584, i64 0}
!1270 = !DILocation(line: 609, column: 27, scope: !1267)
!1271 = !DILocation(line: 604, column: 18, scope: !1011)
!1272 = !DILocation(line: 610, column: 15, scope: !1267)
!1273 = !DILocation(line: 613, column: 17, scope: !1015)
!1274 = !DILocation(line: 614, column: 17, scope: !1015)
!1275 = !DILocation(line: 618, column: 29, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1015, file: !100, line: 618, column: 21)
!1277 = !DILocation(line: 618, column: 21, scope: !1015)
!1278 = !DILocation(line: 619, column: 29, scope: !1276)
!1279 = !DILocation(line: 619, column: 19, scope: !1276)
!1280 = !DILocation(line: 621, column: 17, scope: !1015)
!1281 = distinct !{!1281, !1280, !1282}
!1282 = !DILocation(line: 667, column: 44, scope: !1015)
!1283 = !DILocation(line: 623, column: 21, scope: !1033)
!1284 = !DILocation(line: 624, column: 56, scope: !1033)
!1285 = !DILocation(line: 624, column: 50, scope: !1033)
!1286 = !DILocation(line: 625, column: 53, scope: !1033)
!1287 = !DILocation(line: 613, column: 27, scope: !1015)
!1288 = !DILocation(line: 623, column: 29, scope: !1033)
!1289 = !DILocation(line: 624, column: 36, scope: !1033)
!1290 = !DILocation(line: 624, column: 28, scope: !1033)
!1291 = !DILocation(line: 626, column: 25, scope: !1033)
!1292 = !DILocation(line: 636, column: 38, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1040, file: !100, line: 634, column: 23)
!1294 = !DILocation(line: 636, column: 48, scope: !1293)
!1295 = !DILocation(line: 636, column: 51, scope: !1293)
!1296 = !DILocation(line: 636, column: 25, scope: !1293)
!1297 = !DILocation(line: 637, column: 28, scope: !1293)
!1298 = !DILocation(line: 636, column: 34, scope: !1293)
!1299 = distinct !{!1299, !1296, !1297}
!1300 = !DILocation(line: 650, column: 43, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !100, line: 650, column: 29)
!1302 = distinct !DILexicalBlock(scope: !1037, file: !100, line: 650, column: 29)
!1303 = !DILocation(line: 647, column: 29, scope: !1038)
!1304 = !DILocation(line: 649, column: 36, scope: !1037)
!1305 = !DILocation(line: 651, column: 49, scope: !1301)
!1306 = !DILocation(line: 651, column: 39, scope: !1301)
!1307 = !DILocation(line: 651, column: 31, scope: !1301)
!1308 = !DILocation(line: 650, column: 53, scope: !1301)
!1309 = !DILocation(line: 650, column: 29, scope: !1302)
!1310 = distinct !{!1310, !1309, !1311}
!1311 = !DILocation(line: 659, column: 33, scope: !1302)
!1312 = !DILocation(line: 666, column: 19, scope: !1015)
!1313 = !DILocation(line: 662, column: 41, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1039, file: !100, line: 662, column: 29)
!1315 = !DILocation(line: 662, column: 31, scope: !1314)
!1316 = !DILocation(line: 662, column: 29, scope: !1039)
!1317 = !DILocation(line: 664, column: 27, scope: !1039)
!1318 = !DILocation(line: 667, column: 26, scope: !1015)
!1319 = !DILocation(line: 667, column: 24, scope: !1015)
!1320 = !DILocation(line: 666, column: 19, scope: !1033)
!1321 = !DILocation(line: 668, column: 15, scope: !1016)
!1322 = !DILocation(line: 670, column: 40, scope: !1011)
!1323 = !DILocation(line: 672, column: 19, scope: !1045)
!1324 = !DILocation(line: 672, column: 45, scope: !1045)
!1325 = !DILocation(line: 672, column: 23, scope: !1045)
!1326 = !DILocation(line: 676, column: 33, scope: !1044)
!1327 = !DILocation(line: 676, column: 24, scope: !1044)
!1328 = !DILocation(line: 678, column: 17, scope: !1044)
!1329 = !DILocation(line: 680, column: 43, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !100, line: 680, column: 25)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !100, line: 679, column: 19)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !100, line: 678, column: 17)
!1333 = distinct !DILexicalBlock(scope: !1044, file: !100, line: 678, column: 17)
!1334 = !DILocation(line: 682, column: 25, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !100, line: 682, column: 25)
!1336 = distinct !DILexicalBlock(scope: !1330, file: !100, line: 681, column: 23)
!1337 = !DILocation(line: 682, column: 25, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 682, column: 25)
!1339 = !DILocation(line: 682, column: 25, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !100, line: 682, column: 25)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !100, line: 682, column: 25)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !100, line: 682, column: 25)
!1343 = !DILocation(line: 682, column: 25, scope: !1341)
!1344 = !DILocation(line: 682, column: 25, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !100, line: 682, column: 25)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !100, line: 682, column: 25)
!1347 = !DILocation(line: 682, column: 25, scope: !1346)
!1348 = !DILocation(line: 682, column: 25, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !100, line: 682, column: 25)
!1350 = distinct !DILexicalBlock(scope: !1342, file: !100, line: 682, column: 25)
!1351 = !DILocation(line: 682, column: 25, scope: !1350)
!1352 = !DILocation(line: 682, column: 25, scope: !1342)
!1353 = !DILocation(line: 682, column: 25, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !100, line: 682, column: 25)
!1355 = distinct !DILexicalBlock(scope: !1335, file: !100, line: 682, column: 25)
!1356 = !DILocation(line: 682, column: 25, scope: !1355)
!1357 = !DILocation(line: 683, column: 25, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !100, line: 683, column: 25)
!1359 = distinct !DILexicalBlock(scope: !1336, file: !100, line: 683, column: 25)
!1360 = !DILocation(line: 683, column: 25, scope: !1359)
!1361 = !DILocation(line: 684, column: 25, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !100, line: 684, column: 25)
!1363 = distinct !DILexicalBlock(scope: !1336, file: !100, line: 684, column: 25)
!1364 = !DILocation(line: 684, column: 25, scope: !1363)
!1365 = !DILocation(line: 685, column: 38, scope: !1336)
!1366 = !DILocation(line: 685, column: 33, scope: !1336)
!1367 = !DILocation(line: 686, column: 23, scope: !1336)
!1368 = !DILocation(line: 687, column: 30, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1330, file: !100, line: 687, column: 30)
!1370 = !DILocation(line: 687, column: 30, scope: !1330)
!1371 = !DILocation(line: 689, column: 25, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !100, line: 689, column: 25)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !100, line: 689, column: 25)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !100, line: 688, column: 23)
!1375 = !DILocation(line: 689, column: 25, scope: !1373)
!1376 = !DILocation(line: 691, column: 23, scope: !1374)
!1377 = !DILocation(line: 692, column: 35, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1331, file: !100, line: 692, column: 25)
!1379 = !DILocation(line: 692, column: 30, scope: !1378)
!1380 = !DILocation(line: 692, column: 25, scope: !1331)
!1381 = !DILocation(line: 694, column: 21, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !100, line: 694, column: 21)
!1383 = distinct !DILexicalBlock(scope: !1331, file: !100, line: 694, column: 21)
!1384 = !DILocation(line: 694, column: 21, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !100, line: 694, column: 21)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !100, line: 694, column: 21)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !100, line: 694, column: 21)
!1388 = !DILocation(line: 694, column: 21, scope: !1386)
!1389 = !DILocation(line: 694, column: 21, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !100, line: 694, column: 21)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !100, line: 694, column: 21)
!1392 = !DILocation(line: 694, column: 21, scope: !1391)
!1393 = !DILocation(line: 694, column: 21, scope: !1387)
!1394 = !DILocation(line: 695, column: 21, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !100, line: 695, column: 21)
!1396 = distinct !DILexicalBlock(scope: !1331, file: !100, line: 695, column: 21)
!1397 = !DILocation(line: 695, column: 21, scope: !1396)
!1398 = !DILocation(line: 696, column: 25, scope: !1331)
!1399 = !DILocation(line: 678, column: 17, scope: !1332)
!1400 = distinct !{!1400, !1401, !1402}
!1401 = !DILocation(line: 678, column: 17, scope: !1333)
!1402 = !DILocation(line: 697, column: 19, scope: !1333)
!1403 = !DILocation(line: 704, column: 34, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1003, file: !100, line: 704, column: 11)
!1405 = !DILocation(line: 706, column: 14, scope: !1404)
!1406 = !DILocation(line: 707, column: 14, scope: !1404)
!1407 = !DILocation(line: 707, column: 35, scope: !1404)
!1408 = !DILocation(line: 707, column: 17, scope: !1404)
!1409 = !DILocation(line: 707, column: 53, scope: !1404)
!1410 = !DILocation(line: 707, column: 47, scope: !1404)
!1411 = !DILocation(line: 707, column: 65, scope: !1404)
!1412 = !DILocation(line: 708, column: 15, scope: !1404)
!1413 = !DILocation(line: 708, column: 11, scope: !1404)
!1414 = !DILocation(line: 704, column: 11, scope: !1003)
!1415 = !DILocation(line: 712, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1003, file: !100, line: 712, column: 7)
!1417 = !DILocation(line: 712, column: 7, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1416, file: !100, line: 712, column: 7)
!1419 = !DILocation(line: 712, column: 7, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !100, line: 712, column: 7)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !100, line: 712, column: 7)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !100, line: 712, column: 7)
!1423 = !DILocation(line: 712, column: 7, scope: !1421)
!1424 = !DILocation(line: 712, column: 7, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !100, line: 712, column: 7)
!1426 = distinct !DILexicalBlock(scope: !1422, file: !100, line: 712, column: 7)
!1427 = !DILocation(line: 712, column: 7, scope: !1426)
!1428 = !DILocation(line: 712, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !100, line: 712, column: 7)
!1430 = distinct !DILexicalBlock(scope: !1422, file: !100, line: 712, column: 7)
!1431 = !DILocation(line: 712, column: 7, scope: !1430)
!1432 = !DILocation(line: 712, column: 7, scope: !1422)
!1433 = !DILocation(line: 712, column: 7, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !100, line: 712, column: 7)
!1435 = distinct !DILexicalBlock(scope: !1416, file: !100, line: 712, column: 7)
!1436 = !DILocation(line: 712, column: 7, scope: !1435)
!1437 = !DILocation(line: 715, column: 7, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !100, line: 715, column: 7)
!1439 = distinct !DILexicalBlock(scope: !1003, file: !100, line: 715, column: 7)
!1440 = !DILocation(line: 715, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !100, line: 715, column: 7)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !100, line: 715, column: 7)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !100, line: 715, column: 7)
!1444 = !DILocation(line: 715, column: 7, scope: !1442)
!1445 = !DILocation(line: 715, column: 7, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !100, line: 715, column: 7)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !100, line: 715, column: 7)
!1448 = !DILocation(line: 715, column: 7, scope: !1447)
!1449 = !DILocation(line: 715, column: 7, scope: !1443)
!1450 = !DILocation(line: 716, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !100, line: 716, column: 7)
!1452 = distinct !DILexicalBlock(scope: !1003, file: !100, line: 716, column: 7)
!1453 = !DILocation(line: 716, column: 7, scope: !1452)
!1454 = !DILocation(line: 718, column: 13, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1003, file: !100, line: 718, column: 11)
!1456 = !DILocation(line: 718, column: 11, scope: !1003)
!1457 = !DILocation(line: 720, column: 5, scope: !1004)
!1458 = !DILocation(line: 392, column: 75, scope: !1004)
!1459 = !DILocation(line: 392, column: 3, scope: !1004)
!1460 = distinct !{!1460, !1118, !1461}
!1461 = !DILocation(line: 720, column: 5, scope: !1005)
!1462 = !DILocation(line: 722, column: 11, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !976, file: !100, line: 722, column: 7)
!1464 = !DILocation(line: 722, column: 16, scope: !1463)
!1465 = !DILocation(line: 730, column: 51, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !976, file: !100, line: 730, column: 7)
!1467 = !DILocation(line: 731, column: 10, scope: !1466)
!1468 = !DILocation(line: 733, column: 11, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !100, line: 733, column: 11)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !100, line: 732, column: 5)
!1471 = !DILocation(line: 733, column: 11, scope: !1470)
!1472 = !DILocation(line: 734, column: 16, scope: !1469)
!1473 = !DILocation(line: 734, column: 9, scope: !1469)
!1474 = !DILocation(line: 738, column: 18, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1469, file: !100, line: 738, column: 16)
!1476 = !DILocation(line: 738, column: 32, scope: !1475)
!1477 = !DILocation(line: 738, column: 29, scope: !1475)
!1478 = !DILocation(line: 747, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !976, file: !100, line: 747, column: 7)
!1480 = !DILocation(line: 747, column: 20, scope: !1479)
!1481 = !DILocation(line: 748, column: 12, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !100, line: 748, column: 5)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !100, line: 748, column: 5)
!1484 = !DILocation(line: 748, column: 5, scope: !1483)
!1485 = !DILocation(line: 749, column: 7, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !100, line: 749, column: 7)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !100, line: 749, column: 7)
!1488 = !DILocation(line: 749, column: 7, scope: !1487)
!1489 = !DILocation(line: 748, column: 39, scope: !1482)
!1490 = distinct !{!1490, !1484, !1491}
!1491 = !DILocation(line: 749, column: 7, scope: !1483)
!1492 = !DILocation(line: 751, column: 11, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !976, file: !100, line: 751, column: 7)
!1494 = !DILocation(line: 751, column: 7, scope: !976)
!1495 = !DILocation(line: 752, column: 5, scope: !1493)
!1496 = !DILocation(line: 752, column: 17, scope: !1493)
!1497 = !DILocation(line: 758, column: 21, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !976, file: !100, line: 758, column: 7)
!1499 = !DILocation(line: 758, column: 54, scope: !1498)
!1500 = !DILocation(line: 758, column: 51, scope: !1498)
!1501 = !DILocation(line: 762, column: 42, scope: !976)
!1502 = !DILocation(line: 760, column: 10, scope: !976)
!1503 = !DILocation(line: 760, column: 3, scope: !976)
!1504 = !DILocation(line: 764, column: 1, scope: !976)
!1505 = distinct !DISubprogram(name: "gettext_quote", scope: !100, file: !100, line: 199, type: !1506, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!6, !6, !58}
!1508 = !{!1509, !1510, !1511, !1512}
!1509 = !DILocalVariable(name: "msgid", arg: 1, scope: !1505, file: !100, line: 199, type: !6)
!1510 = !DILocalVariable(name: "s", arg: 2, scope: !1505, file: !100, line: 199, type: !58)
!1511 = !DILocalVariable(name: "translation", scope: !1505, file: !100, line: 201, type: !6)
!1512 = !DILocalVariable(name: "locale_code", scope: !1505, file: !100, line: 202, type: !6)
!1513 = !DILocation(line: 199, column: 28, scope: !1505)
!1514 = !DILocation(line: 199, column: 54, scope: !1505)
!1515 = !DILocation(line: 201, column: 29, scope: !1505)
!1516 = !DILocation(line: 201, column: 15, scope: !1505)
!1517 = !DILocation(line: 204, column: 19, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1505, file: !100, line: 204, column: 7)
!1519 = !DILocation(line: 204, column: 7, scope: !1505)
!1520 = !DILocation(line: 225, column: 17, scope: !1505)
!1521 = !DILocation(line: 202, column: 15, scope: !1505)
!1522 = !DILocalVariable(name: "s2", arg: 2, scope: !1523, file: !1524, line: 160, type: !6)
!1523 = distinct !DISubprogram(name: "strcaseeq0", scope: !1524, file: !1524, line: 160, type: !1525, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1527)
!1524 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1527 = !{!1528, !1522, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1528 = !DILocalVariable(name: "s1", arg: 1, scope: !1523, file: !1524, line: 160, type: !6)
!1529 = !DILocalVariable(name: "s20", arg: 3, scope: !1523, file: !1524, line: 160, type: !8)
!1530 = !DILocalVariable(name: "s21", arg: 4, scope: !1523, file: !1524, line: 160, type: !8)
!1531 = !DILocalVariable(name: "s22", arg: 5, scope: !1523, file: !1524, line: 160, type: !8)
!1532 = !DILocalVariable(name: "s23", arg: 6, scope: !1523, file: !1524, line: 160, type: !8)
!1533 = !DILocalVariable(name: "s24", arg: 7, scope: !1523, file: !1524, line: 160, type: !8)
!1534 = !DILocalVariable(name: "s25", arg: 8, scope: !1523, file: !1524, line: 160, type: !8)
!1535 = !DILocalVariable(name: "s26", arg: 9, scope: !1523, file: !1524, line: 160, type: !8)
!1536 = !DILocalVariable(name: "s27", arg: 10, scope: !1523, file: !1524, line: 160, type: !8)
!1537 = !DILocalVariable(name: "s28", arg: 11, scope: !1523, file: !1524, line: 160, type: !8)
!1538 = !DILocation(line: 160, column: 41, scope: !1523, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 226, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1505, file: !100, line: 226, column: 7)
!1541 = !DILocation(line: 160, column: 120, scope: !1523, inlinedAt: !1539)
!1542 = !DILocation(line: 160, column: 130, scope: !1523, inlinedAt: !1539)
!1543 = !DILocation(line: 162, column: 7, scope: !1544, inlinedAt: !1539)
!1544 = distinct !DILexicalBlock(scope: !1523, file: !1524, line: 162, column: 7)
!1545 = !DILocalVariable(name: "s2", arg: 2, scope: !1546, file: !1524, line: 146, type: !6)
!1546 = distinct !DISubprogram(name: "strcaseeq1", scope: !1524, file: !1524, line: 146, type: !1547, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1549 = !{!1550, !1545, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1550 = !DILocalVariable(name: "s1", arg: 1, scope: !1546, file: !1524, line: 146, type: !6)
!1551 = !DILocalVariable(name: "s21", arg: 3, scope: !1546, file: !1524, line: 146, type: !8)
!1552 = !DILocalVariable(name: "s22", arg: 4, scope: !1546, file: !1524, line: 146, type: !8)
!1553 = !DILocalVariable(name: "s23", arg: 5, scope: !1546, file: !1524, line: 146, type: !8)
!1554 = !DILocalVariable(name: "s24", arg: 6, scope: !1546, file: !1524, line: 146, type: !8)
!1555 = !DILocalVariable(name: "s25", arg: 7, scope: !1546, file: !1524, line: 146, type: !8)
!1556 = !DILocalVariable(name: "s26", arg: 8, scope: !1546, file: !1524, line: 146, type: !8)
!1557 = !DILocalVariable(name: "s27", arg: 9, scope: !1546, file: !1524, line: 146, type: !8)
!1558 = !DILocalVariable(name: "s28", arg: 10, scope: !1546, file: !1524, line: 146, type: !8)
!1559 = !DILocation(line: 146, column: 41, scope: !1546, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 167, column: 16, scope: !1561, inlinedAt: !1539)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !1524, line: 164, column: 11)
!1562 = distinct !DILexicalBlock(scope: !1544, file: !1524, line: 163, column: 5)
!1563 = !DILocation(line: 146, column: 110, scope: !1546, inlinedAt: !1560)
!1564 = !DILocation(line: 146, column: 120, scope: !1546, inlinedAt: !1560)
!1565 = !DILocation(line: 148, column: 7, scope: !1566, inlinedAt: !1560)
!1566 = distinct !DILexicalBlock(scope: !1546, file: !1524, line: 148, column: 7)
!1567 = !DILocalVariable(name: "s2", arg: 2, scope: !1568, file: !1524, line: 132, type: !6)
!1568 = distinct !DISubprogram(name: "strcaseeq2", scope: !1524, file: !1524, line: 132, type: !1569, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1571 = !{!1572, !1567, !1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1572 = !DILocalVariable(name: "s1", arg: 1, scope: !1568, file: !1524, line: 132, type: !6)
!1573 = !DILocalVariable(name: "s22", arg: 3, scope: !1568, file: !1524, line: 132, type: !8)
!1574 = !DILocalVariable(name: "s23", arg: 4, scope: !1568, file: !1524, line: 132, type: !8)
!1575 = !DILocalVariable(name: "s24", arg: 5, scope: !1568, file: !1524, line: 132, type: !8)
!1576 = !DILocalVariable(name: "s25", arg: 6, scope: !1568, file: !1524, line: 132, type: !8)
!1577 = !DILocalVariable(name: "s26", arg: 7, scope: !1568, file: !1524, line: 132, type: !8)
!1578 = !DILocalVariable(name: "s27", arg: 8, scope: !1568, file: !1524, line: 132, type: !8)
!1579 = !DILocalVariable(name: "s28", arg: 9, scope: !1568, file: !1524, line: 132, type: !8)
!1580 = !DILocation(line: 132, column: 41, scope: !1568, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 153, column: 16, scope: !1582, inlinedAt: !1560)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !1524, line: 150, column: 11)
!1583 = distinct !DILexicalBlock(scope: !1566, file: !1524, line: 149, column: 5)
!1584 = !DILocation(line: 132, column: 100, scope: !1568, inlinedAt: !1581)
!1585 = !DILocation(line: 132, column: 110, scope: !1568, inlinedAt: !1581)
!1586 = !DILocation(line: 134, column: 7, scope: !1587, inlinedAt: !1581)
!1587 = distinct !DILexicalBlock(scope: !1568, file: !1524, line: 134, column: 7)
!1588 = !DILocalVariable(name: "s2", arg: 2, scope: !1589, file: !1524, line: 118, type: !6)
!1589 = distinct !DISubprogram(name: "strcaseeq3", scope: !1524, file: !1524, line: 118, type: !1590, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1592 = !{!1593, !1588, !1594, !1595, !1596, !1597, !1598, !1599}
!1593 = !DILocalVariable(name: "s1", arg: 1, scope: !1589, file: !1524, line: 118, type: !6)
!1594 = !DILocalVariable(name: "s23", arg: 3, scope: !1589, file: !1524, line: 118, type: !8)
!1595 = !DILocalVariable(name: "s24", arg: 4, scope: !1589, file: !1524, line: 118, type: !8)
!1596 = !DILocalVariable(name: "s25", arg: 5, scope: !1589, file: !1524, line: 118, type: !8)
!1597 = !DILocalVariable(name: "s26", arg: 6, scope: !1589, file: !1524, line: 118, type: !8)
!1598 = !DILocalVariable(name: "s27", arg: 7, scope: !1589, file: !1524, line: 118, type: !8)
!1599 = !DILocalVariable(name: "s28", arg: 8, scope: !1589, file: !1524, line: 118, type: !8)
!1600 = !DILocation(line: 118, column: 41, scope: !1589, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 139, column: 16, scope: !1602, inlinedAt: !1581)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !1524, line: 136, column: 11)
!1603 = distinct !DILexicalBlock(scope: !1587, file: !1524, line: 135, column: 5)
!1604 = !DILocation(line: 118, column: 90, scope: !1589, inlinedAt: !1601)
!1605 = !DILocation(line: 118, column: 100, scope: !1589, inlinedAt: !1601)
!1606 = !DILocation(line: 120, column: 7, scope: !1607, inlinedAt: !1601)
!1607 = distinct !DILexicalBlock(scope: !1589, file: !1524, line: 120, column: 7)
!1608 = !DILocation(line: 120, column: 7, scope: !1589, inlinedAt: !1601)
!1609 = !DILocalVariable(name: "s2", arg: 2, scope: !1610, file: !1524, line: 104, type: !6)
!1610 = distinct !DISubprogram(name: "strcaseeq4", scope: !1524, file: !1524, line: 104, type: !1611, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1613)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1613 = !{!1614, !1609, !1615, !1616, !1617, !1618, !1619}
!1614 = !DILocalVariable(name: "s1", arg: 1, scope: !1610, file: !1524, line: 104, type: !6)
!1615 = !DILocalVariable(name: "s24", arg: 3, scope: !1610, file: !1524, line: 104, type: !8)
!1616 = !DILocalVariable(name: "s25", arg: 4, scope: !1610, file: !1524, line: 104, type: !8)
!1617 = !DILocalVariable(name: "s26", arg: 5, scope: !1610, file: !1524, line: 104, type: !8)
!1618 = !DILocalVariable(name: "s27", arg: 6, scope: !1610, file: !1524, line: 104, type: !8)
!1619 = !DILocalVariable(name: "s28", arg: 7, scope: !1610, file: !1524, line: 104, type: !8)
!1620 = !DILocation(line: 104, column: 41, scope: !1610, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 125, column: 16, scope: !1622, inlinedAt: !1601)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !1524, line: 122, column: 11)
!1623 = distinct !DILexicalBlock(scope: !1607, file: !1524, line: 121, column: 5)
!1624 = !DILocation(line: 104, column: 80, scope: !1610, inlinedAt: !1621)
!1625 = !DILocation(line: 104, column: 90, scope: !1610, inlinedAt: !1621)
!1626 = !DILocation(line: 106, column: 7, scope: !1627, inlinedAt: !1621)
!1627 = distinct !DILexicalBlock(scope: !1610, file: !1524, line: 106, column: 7)
!1628 = !DILocation(line: 106, column: 7, scope: !1610, inlinedAt: !1621)
!1629 = !DILocalVariable(name: "s2", arg: 2, scope: !1630, file: !1524, line: 90, type: !6)
!1630 = distinct !DISubprogram(name: "strcaseeq5", scope: !1524, file: !1524, line: 90, type: !1631, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1633)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!25, !6, !6, !8, !8, !8, !8}
!1633 = !{!1634, !1629, !1635, !1636, !1637, !1638}
!1634 = !DILocalVariable(name: "s1", arg: 1, scope: !1630, file: !1524, line: 90, type: !6)
!1635 = !DILocalVariable(name: "s25", arg: 3, scope: !1630, file: !1524, line: 90, type: !8)
!1636 = !DILocalVariable(name: "s26", arg: 4, scope: !1630, file: !1524, line: 90, type: !8)
!1637 = !DILocalVariable(name: "s27", arg: 5, scope: !1630, file: !1524, line: 90, type: !8)
!1638 = !DILocalVariable(name: "s28", arg: 6, scope: !1630, file: !1524, line: 90, type: !8)
!1639 = !DILocation(line: 90, column: 41, scope: !1630, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 111, column: 16, scope: !1641, inlinedAt: !1621)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !1524, line: 108, column: 11)
!1642 = distinct !DILexicalBlock(scope: !1627, file: !1524, line: 107, column: 5)
!1643 = !DILocation(line: 90, column: 70, scope: !1630, inlinedAt: !1640)
!1644 = !DILocation(line: 90, column: 80, scope: !1630, inlinedAt: !1640)
!1645 = !DILocation(line: 92, column: 7, scope: !1646, inlinedAt: !1640)
!1646 = distinct !DILexicalBlock(scope: !1630, file: !1524, line: 92, column: 7)
!1647 = !DILocation(line: 92, column: 7, scope: !1630, inlinedAt: !1640)
!1648 = !DILocation(line: 227, column: 12, scope: !1540)
!1649 = !DILocation(line: 227, column: 21, scope: !1540)
!1650 = !DILocation(line: 227, column: 5, scope: !1540)
!1651 = !DILocation(line: 146, column: 41, scope: !1546, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 167, column: 16, scope: !1561, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 228, column: 7, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1505, file: !100, line: 228, column: 7)
!1655 = !DILocation(line: 146, column: 110, scope: !1546, inlinedAt: !1652)
!1656 = !DILocation(line: 146, column: 120, scope: !1546, inlinedAt: !1652)
!1657 = !DILocation(line: 148, column: 7, scope: !1566, inlinedAt: !1652)
!1658 = !DILocation(line: 132, column: 41, scope: !1568, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 153, column: 16, scope: !1582, inlinedAt: !1652)
!1660 = !DILocation(line: 132, column: 100, scope: !1568, inlinedAt: !1659)
!1661 = !DILocation(line: 132, column: 110, scope: !1568, inlinedAt: !1659)
!1662 = !DILocation(line: 134, column: 7, scope: !1587, inlinedAt: !1659)
!1663 = !DILocation(line: 134, column: 7, scope: !1568, inlinedAt: !1659)
!1664 = !DILocation(line: 118, column: 41, scope: !1589, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 139, column: 16, scope: !1602, inlinedAt: !1659)
!1666 = !DILocation(line: 118, column: 90, scope: !1589, inlinedAt: !1665)
!1667 = !DILocation(line: 118, column: 100, scope: !1589, inlinedAt: !1665)
!1668 = !DILocation(line: 120, column: 7, scope: !1607, inlinedAt: !1665)
!1669 = !DILocation(line: 120, column: 7, scope: !1589, inlinedAt: !1665)
!1670 = !DILocation(line: 104, column: 41, scope: !1610, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 125, column: 16, scope: !1622, inlinedAt: !1665)
!1672 = !DILocation(line: 104, column: 80, scope: !1610, inlinedAt: !1671)
!1673 = !DILocation(line: 104, column: 90, scope: !1610, inlinedAt: !1671)
!1674 = !DILocation(line: 106, column: 7, scope: !1627, inlinedAt: !1671)
!1675 = !DILocation(line: 106, column: 7, scope: !1610, inlinedAt: !1671)
!1676 = !DILocation(line: 90, column: 41, scope: !1630, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 111, column: 16, scope: !1641, inlinedAt: !1671)
!1678 = !DILocation(line: 90, column: 70, scope: !1630, inlinedAt: !1677)
!1679 = !DILocation(line: 90, column: 80, scope: !1630, inlinedAt: !1677)
!1680 = !DILocation(line: 92, column: 7, scope: !1646, inlinedAt: !1677)
!1681 = !DILocation(line: 92, column: 7, scope: !1630, inlinedAt: !1677)
!1682 = !DILocalVariable(name: "s2", arg: 2, scope: !1683, file: !1524, line: 76, type: !6)
!1683 = distinct !DISubprogram(name: "strcaseeq6", scope: !1524, file: !1524, line: 76, type: !1684, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!25, !6, !6, !8, !8, !8}
!1686 = !{!1687, !1682, !1688, !1689, !1690}
!1687 = !DILocalVariable(name: "s1", arg: 1, scope: !1683, file: !1524, line: 76, type: !6)
!1688 = !DILocalVariable(name: "s26", arg: 3, scope: !1683, file: !1524, line: 76, type: !8)
!1689 = !DILocalVariable(name: "s27", arg: 4, scope: !1683, file: !1524, line: 76, type: !8)
!1690 = !DILocalVariable(name: "s28", arg: 5, scope: !1683, file: !1524, line: 76, type: !8)
!1691 = !DILocation(line: 76, column: 41, scope: !1683, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 97, column: 16, scope: !1693, inlinedAt: !1677)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !1524, line: 94, column: 11)
!1694 = distinct !DILexicalBlock(scope: !1646, file: !1524, line: 93, column: 5)
!1695 = !DILocation(line: 76, column: 60, scope: !1683, inlinedAt: !1692)
!1696 = !DILocation(line: 76, column: 70, scope: !1683, inlinedAt: !1692)
!1697 = !DILocation(line: 78, column: 7, scope: !1698, inlinedAt: !1692)
!1698 = distinct !DILexicalBlock(scope: !1683, file: !1524, line: 78, column: 7)
!1699 = !DILocation(line: 78, column: 7, scope: !1683, inlinedAt: !1692)
!1700 = !DILocalVariable(name: "s2", arg: 2, scope: !1701, file: !1524, line: 62, type: !6)
!1701 = distinct !DISubprogram(name: "strcaseeq7", scope: !1524, file: !1524, line: 62, type: !1702, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!25, !6, !6, !8, !8}
!1704 = !{!1705, !1700, !1706, !1707}
!1705 = !DILocalVariable(name: "s1", arg: 1, scope: !1701, file: !1524, line: 62, type: !6)
!1706 = !DILocalVariable(name: "s27", arg: 3, scope: !1701, file: !1524, line: 62, type: !8)
!1707 = !DILocalVariable(name: "s28", arg: 4, scope: !1701, file: !1524, line: 62, type: !8)
!1708 = !DILocation(line: 62, column: 41, scope: !1701, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 83, column: 16, scope: !1710, inlinedAt: !1692)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !1524, line: 80, column: 11)
!1711 = distinct !DILexicalBlock(scope: !1698, file: !1524, line: 79, column: 5)
!1712 = !DILocation(line: 62, column: 50, scope: !1701, inlinedAt: !1709)
!1713 = !DILocation(line: 62, column: 60, scope: !1701, inlinedAt: !1709)
!1714 = !DILocation(line: 64, column: 7, scope: !1715, inlinedAt: !1709)
!1715 = distinct !DILexicalBlock(scope: !1701, file: !1524, line: 64, column: 7)
!1716 = !DILocation(line: 228, column: 7, scope: !1505)
!1717 = !DILocation(line: 229, column: 12, scope: !1654)
!1718 = !DILocation(line: 229, column: 21, scope: !1654)
!1719 = !DILocation(line: 229, column: 5, scope: !1654)
!1720 = !DILocation(line: 231, column: 13, scope: !1505)
!1721 = !DILocation(line: 231, column: 11, scope: !1505)
!1722 = !DILocation(line: 231, column: 3, scope: !1505)
!1723 = !DILocation(line: 232, column: 1, scope: !1505)
!1724 = distinct !DISubprogram(name: "quotearg_alloc", scope: !100, file: !100, line: 791, type: !1725, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!50, !6, !94, !848}
!1727 = !{!1728, !1729, !1730}
!1728 = !DILocalVariable(name: "arg", arg: 1, scope: !1724, file: !100, line: 791, type: !6)
!1729 = !DILocalVariable(name: "argsize", arg: 2, scope: !1724, file: !100, line: 791, type: !94)
!1730 = !DILocalVariable(name: "o", arg: 3, scope: !1724, file: !100, line: 792, type: !848)
!1731 = !DILocation(line: 791, column: 29, scope: !1724)
!1732 = !DILocation(line: 791, column: 41, scope: !1724)
!1733 = !DILocation(line: 792, column: 47, scope: !1724)
!1734 = !DILocalVariable(name: "arg", arg: 1, scope: !1735, file: !100, line: 804, type: !6)
!1735 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !100, file: !100, line: 804, type: !1736, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1738)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!50, !6, !94, !538, !848}
!1738 = !{!1734, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1739 = !DILocalVariable(name: "argsize", arg: 2, scope: !1735, file: !100, line: 804, type: !94)
!1740 = !DILocalVariable(name: "size", arg: 3, scope: !1735, file: !100, line: 804, type: !538)
!1741 = !DILocalVariable(name: "o", arg: 4, scope: !1735, file: !100, line: 805, type: !848)
!1742 = !DILocalVariable(name: "p", scope: !1735, file: !100, line: 807, type: !848)
!1743 = !DILocalVariable(name: "e", scope: !1735, file: !100, line: 808, type: !25)
!1744 = !DILocalVariable(name: "flags", scope: !1735, file: !100, line: 810, type: !25)
!1745 = !DILocalVariable(name: "bufsize", scope: !1735, file: !100, line: 811, type: !94)
!1746 = !DILocalVariable(name: "buf", scope: !1735, file: !100, line: 815, type: !50)
!1747 = !DILocation(line: 804, column: 33, scope: !1735, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 794, column: 10, scope: !1724)
!1749 = !DILocation(line: 804, column: 45, scope: !1735, inlinedAt: !1748)
!1750 = !DILocation(line: 804, column: 62, scope: !1735, inlinedAt: !1748)
!1751 = !DILocation(line: 805, column: 51, scope: !1735, inlinedAt: !1748)
!1752 = !DILocation(line: 807, column: 37, scope: !1735, inlinedAt: !1748)
!1753 = !DILocation(line: 807, column: 33, scope: !1735, inlinedAt: !1748)
!1754 = !DILocation(line: 808, column: 11, scope: !1735, inlinedAt: !1748)
!1755 = !DILocation(line: 808, column: 7, scope: !1735, inlinedAt: !1748)
!1756 = !DILocation(line: 810, column: 18, scope: !1735, inlinedAt: !1748)
!1757 = !DILocation(line: 810, column: 24, scope: !1735, inlinedAt: !1748)
!1758 = !DILocation(line: 810, column: 7, scope: !1735, inlinedAt: !1748)
!1759 = !DILocation(line: 811, column: 69, scope: !1735, inlinedAt: !1748)
!1760 = !DILocation(line: 812, column: 53, scope: !1735, inlinedAt: !1748)
!1761 = !DILocation(line: 813, column: 49, scope: !1735, inlinedAt: !1748)
!1762 = !DILocation(line: 814, column: 49, scope: !1735, inlinedAt: !1748)
!1763 = !DILocation(line: 811, column: 20, scope: !1735, inlinedAt: !1748)
!1764 = !DILocation(line: 814, column: 62, scope: !1735, inlinedAt: !1748)
!1765 = !DILocation(line: 811, column: 10, scope: !1735, inlinedAt: !1748)
!1766 = !DILocalVariable(name: "n", arg: 1, scope: !1767, file: !534, line: 220, type: !94)
!1767 = distinct !DISubprogram(name: "xcharalloc", scope: !534, file: !534, line: 220, type: !1768, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1770)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!50, !94}
!1770 = !{!1766}
!1771 = !DILocation(line: 220, column: 20, scope: !1767, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 815, column: 15, scope: !1735, inlinedAt: !1748)
!1773 = !DILocation(line: 222, column: 10, scope: !1767, inlinedAt: !1772)
!1774 = !DILocation(line: 815, column: 9, scope: !1735, inlinedAt: !1748)
!1775 = !DILocation(line: 816, column: 60, scope: !1735, inlinedAt: !1748)
!1776 = !DILocation(line: 818, column: 32, scope: !1735, inlinedAt: !1748)
!1777 = !DILocation(line: 818, column: 47, scope: !1735, inlinedAt: !1748)
!1778 = !DILocation(line: 816, column: 3, scope: !1735, inlinedAt: !1748)
!1779 = !DILocation(line: 819, column: 9, scope: !1735, inlinedAt: !1748)
!1780 = !DILocation(line: 794, column: 3, scope: !1724)
!1781 = !DILocation(line: 804, column: 33, scope: !1735)
!1782 = !DILocation(line: 804, column: 45, scope: !1735)
!1783 = !DILocation(line: 804, column: 62, scope: !1735)
!1784 = !DILocation(line: 805, column: 51, scope: !1735)
!1785 = !DILocation(line: 807, column: 37, scope: !1735)
!1786 = !DILocation(line: 807, column: 33, scope: !1735)
!1787 = !DILocation(line: 808, column: 11, scope: !1735)
!1788 = !DILocation(line: 808, column: 7, scope: !1735)
!1789 = !DILocation(line: 810, column: 18, scope: !1735)
!1790 = !DILocation(line: 810, column: 27, scope: !1735)
!1791 = !DILocation(line: 810, column: 24, scope: !1735)
!1792 = !DILocation(line: 810, column: 7, scope: !1735)
!1793 = !DILocation(line: 811, column: 69, scope: !1735)
!1794 = !DILocation(line: 812, column: 53, scope: !1735)
!1795 = !DILocation(line: 813, column: 49, scope: !1735)
!1796 = !DILocation(line: 814, column: 49, scope: !1735)
!1797 = !DILocation(line: 811, column: 20, scope: !1735)
!1798 = !DILocation(line: 814, column: 62, scope: !1735)
!1799 = !DILocation(line: 811, column: 10, scope: !1735)
!1800 = !DILocation(line: 220, column: 20, scope: !1767, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 815, column: 15, scope: !1735)
!1802 = !DILocation(line: 222, column: 10, scope: !1767, inlinedAt: !1801)
!1803 = !DILocation(line: 815, column: 9, scope: !1735)
!1804 = !DILocation(line: 816, column: 60, scope: !1735)
!1805 = !DILocation(line: 818, column: 32, scope: !1735)
!1806 = !DILocation(line: 818, column: 47, scope: !1735)
!1807 = !DILocation(line: 816, column: 3, scope: !1735)
!1808 = !DILocation(line: 819, column: 9, scope: !1735)
!1809 = !DILocation(line: 820, column: 7, scope: !1735)
!1810 = !DILocation(line: 821, column: 11, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1735, file: !100, line: 820, column: 7)
!1812 = !{!1813, !1813, i64 0}
!1813 = !{!"long", !584, i64 0}
!1814 = !DILocation(line: 821, column: 5, scope: !1811)
!1815 = !DILocation(line: 822, column: 3, scope: !1735)
!1816 = distinct !DISubprogram(name: "quotearg_free", scope: !100, file: !100, line: 840, type: !698, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1817)
!1817 = !{!1818, !1819}
!1818 = !DILocalVariable(name: "sv", scope: !1816, file: !100, line: 842, type: !127)
!1819 = !DILocalVariable(name: "i", scope: !1816, file: !100, line: 843, type: !25)
!1820 = !DILocation(line: 842, column: 24, scope: !1816)
!1821 = !DILocation(line: 842, column: 19, scope: !1816)
!1822 = !DILocation(line: 843, column: 7, scope: !1816)
!1823 = !DILocation(line: 844, column: 19, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !100, line: 844, column: 3)
!1825 = distinct !DILexicalBlock(scope: !1816, file: !100, line: 844, column: 3)
!1826 = !DILocation(line: 844, column: 17, scope: !1824)
!1827 = !DILocation(line: 844, column: 3, scope: !1825)
!1828 = !DILocation(line: 845, column: 17, scope: !1824)
!1829 = !{!1830, !583, i64 8}
!1830 = !{!"slotvec", !1813, i64 0, !583, i64 8}
!1831 = !DILocation(line: 845, column: 5, scope: !1824)
!1832 = !DILocation(line: 844, column: 28, scope: !1824)
!1833 = distinct !{!1833, !1827, !1834}
!1834 = !DILocation(line: 845, column: 20, scope: !1825)
!1835 = !DILocation(line: 846, column: 13, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1816, file: !100, line: 846, column: 7)
!1837 = !DILocation(line: 846, column: 17, scope: !1836)
!1838 = !DILocation(line: 846, column: 7, scope: !1816)
!1839 = !DILocation(line: 848, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !100, line: 847, column: 5)
!1841 = !DILocation(line: 849, column: 21, scope: !1840)
!1842 = !{!1830, !1813, i64 0}
!1843 = !DILocation(line: 850, column: 20, scope: !1840)
!1844 = !DILocation(line: 851, column: 5, scope: !1840)
!1845 = !DILocation(line: 852, column: 10, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1816, file: !100, line: 852, column: 7)
!1847 = !DILocation(line: 852, column: 7, scope: !1816)
!1848 = !DILocation(line: 854, column: 13, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !100, line: 853, column: 5)
!1850 = !DILocation(line: 854, column: 7, scope: !1849)
!1851 = !DILocation(line: 855, column: 15, scope: !1849)
!1852 = !DILocation(line: 856, column: 5, scope: !1849)
!1853 = !DILocation(line: 857, column: 10, scope: !1816)
!1854 = !DILocation(line: 858, column: 1, scope: !1816)
!1855 = distinct !DISubprogram(name: "quotearg_n", scope: !100, file: !100, line: 922, type: !1856, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!50, !25, !6}
!1858 = !{!1859, !1860}
!1859 = !DILocalVariable(name: "n", arg: 1, scope: !1855, file: !100, line: 922, type: !25)
!1860 = !DILocalVariable(name: "arg", arg: 2, scope: !1855, file: !100, line: 922, type: !6)
!1861 = !DILocation(line: 922, column: 17, scope: !1855)
!1862 = !DILocation(line: 922, column: 32, scope: !1855)
!1863 = !DILocation(line: 924, column: 10, scope: !1855)
!1864 = !DILocation(line: 924, column: 3, scope: !1855)
!1865 = distinct !DISubprogram(name: "quotearg_n_options", scope: !100, file: !100, line: 869, type: !1866, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1868)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!50, !25, !6, !94, !848}
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874, !1875, !1878, !1880, !1881, !1882}
!1869 = !DILocalVariable(name: "n", arg: 1, scope: !1865, file: !100, line: 869, type: !25)
!1870 = !DILocalVariable(name: "arg", arg: 2, scope: !1865, file: !100, line: 869, type: !6)
!1871 = !DILocalVariable(name: "argsize", arg: 3, scope: !1865, file: !100, line: 869, type: !94)
!1872 = !DILocalVariable(name: "options", arg: 4, scope: !1865, file: !100, line: 870, type: !848)
!1873 = !DILocalVariable(name: "e", scope: !1865, file: !100, line: 872, type: !25)
!1874 = !DILocalVariable(name: "sv", scope: !1865, file: !100, line: 874, type: !127)
!1875 = !DILocalVariable(name: "preallocated", scope: !1876, file: !100, line: 881, type: !17)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !100, line: 880, column: 5)
!1877 = distinct !DILexicalBlock(scope: !1865, file: !100, line: 879, column: 7)
!1878 = !DILocalVariable(name: "size", scope: !1879, file: !100, line: 894, type: !94)
!1879 = distinct !DILexicalBlock(scope: !1865, file: !100, line: 893, column: 3)
!1880 = !DILocalVariable(name: "val", scope: !1879, file: !100, line: 895, type: !50)
!1881 = !DILocalVariable(name: "flags", scope: !1879, file: !100, line: 897, type: !25)
!1882 = !DILocalVariable(name: "qsize", scope: !1879, file: !100, line: 898, type: !94)
!1883 = !DILocation(line: 869, column: 25, scope: !1865)
!1884 = !DILocation(line: 869, column: 40, scope: !1865)
!1885 = !DILocation(line: 869, column: 52, scope: !1865)
!1886 = !DILocation(line: 870, column: 51, scope: !1865)
!1887 = !DILocation(line: 872, column: 11, scope: !1865)
!1888 = !DILocation(line: 872, column: 7, scope: !1865)
!1889 = !DILocation(line: 874, column: 24, scope: !1865)
!1890 = !DILocation(line: 874, column: 19, scope: !1865)
!1891 = !DILocation(line: 876, column: 9, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1865, file: !100, line: 876, column: 7)
!1893 = !DILocation(line: 876, column: 7, scope: !1865)
!1894 = !DILocation(line: 877, column: 5, scope: !1892)
!1895 = !DILocation(line: 879, column: 7, scope: !1877)
!1896 = !DILocation(line: 879, column: 14, scope: !1877)
!1897 = !DILocation(line: 879, column: 7, scope: !1865)
!1898 = !DILocation(line: 881, column: 31, scope: !1876)
!1899 = !DILocation(line: 883, column: 67, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1876, file: !100, line: 883, column: 11)
!1901 = !DILocation(line: 883, column: 11, scope: !1876)
!1902 = !DILocation(line: 884, column: 9, scope: !1900)
!1903 = !DILocation(line: 886, column: 32, scope: !1876)
!1904 = !DILocation(line: 886, column: 61, scope: !1876)
!1905 = !DILocation(line: 886, column: 58, scope: !1876)
!1906 = !DILocation(line: 886, column: 66, scope: !1876)
!1907 = !DILocation(line: 886, column: 22, scope: !1876)
!1908 = !DILocation(line: 886, column: 15, scope: !1876)
!1909 = !DILocation(line: 887, column: 11, scope: !1876)
!1910 = !DILocation(line: 888, column: 15, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1876, file: !100, line: 887, column: 11)
!1912 = !{i64 0, i64 8, !1812, i64 8, i64 8, !582}
!1913 = !DILocation(line: 888, column: 9, scope: !1911)
!1914 = !DILocation(line: 889, column: 20, scope: !1876)
!1915 = !DILocation(line: 889, column: 18, scope: !1876)
!1916 = !DILocation(line: 889, column: 7, scope: !1876)
!1917 = !DILocation(line: 889, column: 38, scope: !1876)
!1918 = !DILocation(line: 889, column: 31, scope: !1876)
!1919 = !DILocation(line: 889, column: 48, scope: !1876)
!1920 = !DILocation(line: 890, column: 14, scope: !1876)
!1921 = !DILocation(line: 891, column: 5, scope: !1876)
!1922 = !DILocation(line: 894, column: 19, scope: !1879)
!1923 = !DILocation(line: 894, column: 25, scope: !1879)
!1924 = !DILocation(line: 894, column: 12, scope: !1879)
!1925 = !DILocation(line: 895, column: 23, scope: !1879)
!1926 = !DILocation(line: 895, column: 11, scope: !1879)
!1927 = !DILocation(line: 897, column: 26, scope: !1879)
!1928 = !DILocation(line: 897, column: 32, scope: !1879)
!1929 = !DILocation(line: 897, column: 9, scope: !1879)
!1930 = !DILocation(line: 899, column: 55, scope: !1879)
!1931 = !DILocation(line: 900, column: 46, scope: !1879)
!1932 = !DILocation(line: 901, column: 55, scope: !1879)
!1933 = !DILocation(line: 902, column: 55, scope: !1879)
!1934 = !DILocation(line: 898, column: 20, scope: !1879)
!1935 = !DILocation(line: 898, column: 12, scope: !1879)
!1936 = !DILocation(line: 904, column: 14, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1879, file: !100, line: 904, column: 9)
!1938 = !DILocation(line: 904, column: 9, scope: !1879)
!1939 = !DILocation(line: 906, column: 35, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !100, line: 905, column: 7)
!1941 = !DILocation(line: 906, column: 20, scope: !1940)
!1942 = !DILocation(line: 907, column: 17, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1940, file: !100, line: 907, column: 13)
!1944 = !DILocation(line: 907, column: 13, scope: !1940)
!1945 = !DILocation(line: 908, column: 11, scope: !1943)
!1946 = !DILocation(line: 220, column: 20, scope: !1767, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 909, column: 27, scope: !1940)
!1948 = !DILocation(line: 222, column: 10, scope: !1767, inlinedAt: !1947)
!1949 = !DILocation(line: 909, column: 19, scope: !1940)
!1950 = !DILocation(line: 910, column: 69, scope: !1940)
!1951 = !DILocation(line: 912, column: 44, scope: !1940)
!1952 = !DILocation(line: 913, column: 44, scope: !1940)
!1953 = !DILocation(line: 910, column: 9, scope: !1940)
!1954 = !DILocation(line: 914, column: 7, scope: !1940)
!1955 = !DILocation(line: 916, column: 11, scope: !1879)
!1956 = !DILocation(line: 917, column: 5, scope: !1879)
!1957 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !100, file: !100, line: 928, type: !1958, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1960)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!50, !25, !6, !94}
!1960 = !{!1961, !1962, !1963}
!1961 = !DILocalVariable(name: "n", arg: 1, scope: !1957, file: !100, line: 928, type: !25)
!1962 = !DILocalVariable(name: "arg", arg: 2, scope: !1957, file: !100, line: 928, type: !6)
!1963 = !DILocalVariable(name: "argsize", arg: 3, scope: !1957, file: !100, line: 928, type: !94)
!1964 = !DILocation(line: 928, column: 21, scope: !1957)
!1965 = !DILocation(line: 928, column: 36, scope: !1957)
!1966 = !DILocation(line: 928, column: 48, scope: !1957)
!1967 = !DILocation(line: 930, column: 10, scope: !1957)
!1968 = !DILocation(line: 930, column: 3, scope: !1957)
!1969 = distinct !DISubprogram(name: "quotearg", scope: !100, file: !100, line: 934, type: !1970, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!50, !6}
!1972 = !{!1973}
!1973 = !DILocalVariable(name: "arg", arg: 1, scope: !1969, file: !100, line: 934, type: !6)
!1974 = !DILocation(line: 934, column: 23, scope: !1969)
!1975 = !DILocation(line: 922, column: 17, scope: !1855, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 936, column: 10, scope: !1969)
!1977 = !DILocation(line: 922, column: 32, scope: !1855, inlinedAt: !1976)
!1978 = !DILocation(line: 924, column: 10, scope: !1855, inlinedAt: !1976)
!1979 = !DILocation(line: 936, column: 3, scope: !1969)
!1980 = distinct !DISubprogram(name: "quotearg_mem", scope: !100, file: !100, line: 940, type: !1981, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!50, !6, !94}
!1983 = !{!1984, !1985}
!1984 = !DILocalVariable(name: "arg", arg: 1, scope: !1980, file: !100, line: 940, type: !6)
!1985 = !DILocalVariable(name: "argsize", arg: 2, scope: !1980, file: !100, line: 940, type: !94)
!1986 = !DILocation(line: 940, column: 27, scope: !1980)
!1987 = !DILocation(line: 940, column: 39, scope: !1980)
!1988 = !DILocation(line: 928, column: 21, scope: !1957, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 942, column: 10, scope: !1980)
!1990 = !DILocation(line: 928, column: 36, scope: !1957, inlinedAt: !1989)
!1991 = !DILocation(line: 928, column: 48, scope: !1957, inlinedAt: !1989)
!1992 = !DILocation(line: 930, column: 10, scope: !1957, inlinedAt: !1989)
!1993 = !DILocation(line: 942, column: 3, scope: !1980)
!1994 = distinct !DISubprogram(name: "quotearg_n_style", scope: !100, file: !100, line: 946, type: !1995, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!50, !25, !58, !6}
!1997 = !{!1998, !1999, !2000, !2001}
!1998 = !DILocalVariable(name: "n", arg: 1, scope: !1994, file: !100, line: 946, type: !25)
!1999 = !DILocalVariable(name: "s", arg: 2, scope: !1994, file: !100, line: 946, type: !58)
!2000 = !DILocalVariable(name: "arg", arg: 3, scope: !1994, file: !100, line: 946, type: !6)
!2001 = !DILocalVariable(name: "o", scope: !1994, file: !100, line: 948, type: !849)
!2002 = !DILocalVariable(name: "o", scope: !2003, file: !100, line: 187, type: !107)
!2003 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !100, file: !100, line: 185, type: !2004, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!107, !58}
!2006 = !{!2007, !2002}
!2007 = !DILocalVariable(name: "style", arg: 1, scope: !2003, file: !100, line: 185, type: !58)
!2008 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2009 = !DILocation(line: 187, column: 26, scope: !2003, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 948, column: 36, scope: !1994)
!2011 = !DILocation(line: 946, column: 23, scope: !1994)
!2012 = !DILocation(line: 946, column: 45, scope: !1994)
!2013 = !DILocation(line: 946, column: 60, scope: !1994)
!2014 = !DILocation(line: 948, column: 3, scope: !1994)
!2015 = !DILocation(line: 948, column: 32, scope: !1994)
!2016 = !DILocation(line: 185, column: 48, scope: !2003, inlinedAt: !2010)
!2017 = !DILocation(line: 187, column: 3, scope: !2003, inlinedAt: !2010)
!2018 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2019 = !DILocation(line: 188, column: 13, scope: !2020, inlinedAt: !2010)
!2020 = distinct !DILexicalBlock(scope: !2003, file: !100, line: 188, column: 7)
!2021 = !DILocation(line: 188, column: 7, scope: !2003, inlinedAt: !2010)
!2022 = !DILocation(line: 189, column: 5, scope: !2020, inlinedAt: !2010)
!2023 = !{!2024}
!2024 = distinct !{!2024, !2025, !"quoting_options_from_style: argument 0"}
!2025 = distinct !{!2025, !"quoting_options_from_style"}
!2026 = !DILocation(line: 191, column: 10, scope: !2003, inlinedAt: !2010)
!2027 = !DILocation(line: 192, column: 1, scope: !2003, inlinedAt: !2010)
!2028 = !DILocation(line: 949, column: 10, scope: !1994)
!2029 = !DILocation(line: 950, column: 1, scope: !1994)
!2030 = !DILocation(line: 949, column: 3, scope: !1994)
!2031 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !100, file: !100, line: 953, type: !2032, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!50, !25, !58, !6, !94}
!2034 = !{!2035, !2036, !2037, !2038, !2039}
!2035 = !DILocalVariable(name: "n", arg: 1, scope: !2031, file: !100, line: 953, type: !25)
!2036 = !DILocalVariable(name: "s", arg: 2, scope: !2031, file: !100, line: 953, type: !58)
!2037 = !DILocalVariable(name: "arg", arg: 3, scope: !2031, file: !100, line: 954, type: !6)
!2038 = !DILocalVariable(name: "argsize", arg: 4, scope: !2031, file: !100, line: 954, type: !94)
!2039 = !DILocalVariable(name: "o", scope: !2031, file: !100, line: 956, type: !849)
!2040 = !DILocation(line: 187, column: 26, scope: !2003, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 956, column: 36, scope: !2031)
!2042 = !DILocation(line: 953, column: 27, scope: !2031)
!2043 = !DILocation(line: 953, column: 49, scope: !2031)
!2044 = !DILocation(line: 954, column: 35, scope: !2031)
!2045 = !DILocation(line: 954, column: 47, scope: !2031)
!2046 = !DILocation(line: 956, column: 3, scope: !2031)
!2047 = !DILocation(line: 956, column: 32, scope: !2031)
!2048 = !DILocation(line: 185, column: 48, scope: !2003, inlinedAt: !2041)
!2049 = !DILocation(line: 187, column: 3, scope: !2003, inlinedAt: !2041)
!2050 = !DILocation(line: 188, column: 13, scope: !2020, inlinedAt: !2041)
!2051 = !DILocation(line: 188, column: 7, scope: !2003, inlinedAt: !2041)
!2052 = !DILocation(line: 189, column: 5, scope: !2020, inlinedAt: !2041)
!2053 = !{!2054}
!2054 = distinct !{!2054, !2055, !"quoting_options_from_style: argument 0"}
!2055 = distinct !{!2055, !"quoting_options_from_style"}
!2056 = !DILocation(line: 191, column: 10, scope: !2003, inlinedAt: !2041)
!2057 = !DILocation(line: 192, column: 1, scope: !2003, inlinedAt: !2041)
!2058 = !DILocation(line: 957, column: 10, scope: !2031)
!2059 = !DILocation(line: 958, column: 1, scope: !2031)
!2060 = !DILocation(line: 957, column: 3, scope: !2031)
!2061 = distinct !DISubprogram(name: "quotearg_style", scope: !100, file: !100, line: 961, type: !2062, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!50, !58, !6}
!2064 = !{!2065, !2066}
!2065 = !DILocalVariable(name: "s", arg: 1, scope: !2061, file: !100, line: 961, type: !58)
!2066 = !DILocalVariable(name: "arg", arg: 2, scope: !2061, file: !100, line: 961, type: !6)
!2067 = !DILocation(line: 187, column: 26, scope: !2003, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 948, column: 36, scope: !1994, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 963, column: 10, scope: !2061)
!2070 = !DILocation(line: 961, column: 36, scope: !2061)
!2071 = !DILocation(line: 961, column: 51, scope: !2061)
!2072 = !DILocation(line: 946, column: 23, scope: !1994, inlinedAt: !2069)
!2073 = !DILocation(line: 946, column: 45, scope: !1994, inlinedAt: !2069)
!2074 = !DILocation(line: 946, column: 60, scope: !1994, inlinedAt: !2069)
!2075 = !DILocation(line: 948, column: 3, scope: !1994, inlinedAt: !2069)
!2076 = !DILocation(line: 948, column: 32, scope: !1994, inlinedAt: !2069)
!2077 = !DILocation(line: 185, column: 48, scope: !2003, inlinedAt: !2068)
!2078 = !DILocation(line: 187, column: 3, scope: !2003, inlinedAt: !2068)
!2079 = !DILocation(line: 188, column: 13, scope: !2020, inlinedAt: !2068)
!2080 = !DILocation(line: 188, column: 7, scope: !2003, inlinedAt: !2068)
!2081 = !DILocation(line: 189, column: 5, scope: !2020, inlinedAt: !2068)
!2082 = !{!2083}
!2083 = distinct !{!2083, !2084, !"quoting_options_from_style: argument 0"}
!2084 = distinct !{!2084, !"quoting_options_from_style"}
!2085 = !DILocation(line: 191, column: 10, scope: !2003, inlinedAt: !2068)
!2086 = !DILocation(line: 192, column: 1, scope: !2003, inlinedAt: !2068)
!2087 = !DILocation(line: 949, column: 10, scope: !1994, inlinedAt: !2069)
!2088 = !DILocation(line: 950, column: 1, scope: !1994, inlinedAt: !2069)
!2089 = !DILocation(line: 963, column: 3, scope: !2061)
!2090 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !100, file: !100, line: 967, type: !2091, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!50, !58, !6, !94}
!2093 = !{!2094, !2095, !2096}
!2094 = !DILocalVariable(name: "s", arg: 1, scope: !2090, file: !100, line: 967, type: !58)
!2095 = !DILocalVariable(name: "arg", arg: 2, scope: !2090, file: !100, line: 967, type: !6)
!2096 = !DILocalVariable(name: "argsize", arg: 3, scope: !2090, file: !100, line: 967, type: !94)
!2097 = !DILocation(line: 187, column: 26, scope: !2003, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 956, column: 36, scope: !2031, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 969, column: 10, scope: !2090)
!2100 = !DILocation(line: 967, column: 40, scope: !2090)
!2101 = !DILocation(line: 967, column: 55, scope: !2090)
!2102 = !DILocation(line: 967, column: 67, scope: !2090)
!2103 = !DILocation(line: 953, column: 27, scope: !2031, inlinedAt: !2099)
!2104 = !DILocation(line: 953, column: 49, scope: !2031, inlinedAt: !2099)
!2105 = !DILocation(line: 954, column: 35, scope: !2031, inlinedAt: !2099)
!2106 = !DILocation(line: 954, column: 47, scope: !2031, inlinedAt: !2099)
!2107 = !DILocation(line: 956, column: 3, scope: !2031, inlinedAt: !2099)
!2108 = !DILocation(line: 956, column: 32, scope: !2031, inlinedAt: !2099)
!2109 = !DILocation(line: 185, column: 48, scope: !2003, inlinedAt: !2098)
!2110 = !DILocation(line: 187, column: 3, scope: !2003, inlinedAt: !2098)
!2111 = !DILocation(line: 188, column: 13, scope: !2020, inlinedAt: !2098)
!2112 = !DILocation(line: 188, column: 7, scope: !2003, inlinedAt: !2098)
!2113 = !DILocation(line: 189, column: 5, scope: !2020, inlinedAt: !2098)
!2114 = !{!2115}
!2115 = distinct !{!2115, !2116, !"quoting_options_from_style: argument 0"}
!2116 = distinct !{!2116, !"quoting_options_from_style"}
!2117 = !DILocation(line: 191, column: 10, scope: !2003, inlinedAt: !2098)
!2118 = !DILocation(line: 192, column: 1, scope: !2003, inlinedAt: !2098)
!2119 = !DILocation(line: 957, column: 10, scope: !2031, inlinedAt: !2099)
!2120 = !DILocation(line: 958, column: 1, scope: !2031, inlinedAt: !2099)
!2121 = !DILocation(line: 969, column: 3, scope: !2090)
!2122 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !100, file: !100, line: 973, type: !2123, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!50, !6, !94, !8}
!2125 = !{!2126, !2127, !2128, !2129}
!2126 = !DILocalVariable(name: "arg", arg: 1, scope: !2122, file: !100, line: 973, type: !6)
!2127 = !DILocalVariable(name: "argsize", arg: 2, scope: !2122, file: !100, line: 973, type: !94)
!2128 = !DILocalVariable(name: "ch", arg: 3, scope: !2122, file: !100, line: 973, type: !8)
!2129 = !DILocalVariable(name: "options", scope: !2122, file: !100, line: 975, type: !107)
!2130 = !DILocation(line: 973, column: 32, scope: !2122)
!2131 = !DILocation(line: 973, column: 44, scope: !2122)
!2132 = !DILocation(line: 973, column: 58, scope: !2122)
!2133 = !DILocation(line: 975, column: 3, scope: !2122)
!2134 = !DILocation(line: 976, column: 13, scope: !2122)
!2135 = !{i64 0, i64 4, !1076, i64 4, i64 4, !651, i64 8, i64 32, !1076, i64 40, i64 8, !582, i64 48, i64 8, !582}
!2136 = !DILocation(line: 975, column: 26, scope: !2122)
!2137 = !DILocation(line: 144, column: 43, scope: !870, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 977, column: 3, scope: !2122)
!2139 = !DILocation(line: 144, column: 51, scope: !870, inlinedAt: !2138)
!2140 = !DILocation(line: 144, column: 58, scope: !870, inlinedAt: !2138)
!2141 = !DILocation(line: 146, column: 17, scope: !870, inlinedAt: !2138)
!2142 = !DILocation(line: 148, column: 62, scope: !870, inlinedAt: !2138)
!2143 = !DILocation(line: 148, column: 57, scope: !870, inlinedAt: !2138)
!2144 = !DILocation(line: 147, column: 17, scope: !870, inlinedAt: !2138)
!2145 = !DILocation(line: 149, column: 18, scope: !870, inlinedAt: !2138)
!2146 = !DILocation(line: 149, column: 15, scope: !870, inlinedAt: !2138)
!2147 = !DILocation(line: 149, column: 7, scope: !870, inlinedAt: !2138)
!2148 = !DILocation(line: 150, column: 12, scope: !870, inlinedAt: !2138)
!2149 = !DILocation(line: 150, column: 15, scope: !870, inlinedAt: !2138)
!2150 = !DILocation(line: 150, column: 25, scope: !870, inlinedAt: !2138)
!2151 = !DILocation(line: 150, column: 7, scope: !870, inlinedAt: !2138)
!2152 = !DILocation(line: 151, column: 18, scope: !870, inlinedAt: !2138)
!2153 = !DILocation(line: 151, column: 23, scope: !870, inlinedAt: !2138)
!2154 = !DILocation(line: 151, column: 6, scope: !870, inlinedAt: !2138)
!2155 = !DILocation(line: 978, column: 10, scope: !2122)
!2156 = !DILocation(line: 979, column: 1, scope: !2122)
!2157 = !DILocation(line: 978, column: 3, scope: !2122)
!2158 = distinct !DISubprogram(name: "quotearg_char", scope: !100, file: !100, line: 982, type: !2159, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2161)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!50, !6, !8}
!2161 = !{!2162, !2163}
!2162 = !DILocalVariable(name: "arg", arg: 1, scope: !2158, file: !100, line: 982, type: !6)
!2163 = !DILocalVariable(name: "ch", arg: 2, scope: !2158, file: !100, line: 982, type: !8)
!2164 = !DILocation(line: 982, column: 28, scope: !2158)
!2165 = !DILocation(line: 982, column: 38, scope: !2158)
!2166 = !DILocation(line: 973, column: 32, scope: !2122, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 984, column: 10, scope: !2158)
!2168 = !DILocation(line: 973, column: 44, scope: !2122, inlinedAt: !2167)
!2169 = !DILocation(line: 973, column: 58, scope: !2122, inlinedAt: !2167)
!2170 = !DILocation(line: 975, column: 3, scope: !2122, inlinedAt: !2167)
!2171 = !DILocation(line: 976, column: 13, scope: !2122, inlinedAt: !2167)
!2172 = !DILocation(line: 975, column: 26, scope: !2122, inlinedAt: !2167)
!2173 = !DILocation(line: 144, column: 43, scope: !870, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 977, column: 3, scope: !2122, inlinedAt: !2167)
!2175 = !DILocation(line: 144, column: 51, scope: !870, inlinedAt: !2174)
!2176 = !DILocation(line: 144, column: 58, scope: !870, inlinedAt: !2174)
!2177 = !DILocation(line: 146, column: 17, scope: !870, inlinedAt: !2174)
!2178 = !DILocation(line: 148, column: 62, scope: !870, inlinedAt: !2174)
!2179 = !DILocation(line: 148, column: 57, scope: !870, inlinedAt: !2174)
!2180 = !DILocation(line: 147, column: 17, scope: !870, inlinedAt: !2174)
!2181 = !DILocation(line: 149, column: 18, scope: !870, inlinedAt: !2174)
!2182 = !DILocation(line: 149, column: 15, scope: !870, inlinedAt: !2174)
!2183 = !DILocation(line: 149, column: 7, scope: !870, inlinedAt: !2174)
!2184 = !DILocation(line: 150, column: 12, scope: !870, inlinedAt: !2174)
!2185 = !DILocation(line: 150, column: 15, scope: !870, inlinedAt: !2174)
!2186 = !DILocation(line: 150, column: 25, scope: !870, inlinedAt: !2174)
!2187 = !DILocation(line: 150, column: 7, scope: !870, inlinedAt: !2174)
!2188 = !DILocation(line: 151, column: 18, scope: !870, inlinedAt: !2174)
!2189 = !DILocation(line: 151, column: 23, scope: !870, inlinedAt: !2174)
!2190 = !DILocation(line: 151, column: 6, scope: !870, inlinedAt: !2174)
!2191 = !DILocation(line: 978, column: 10, scope: !2122, inlinedAt: !2167)
!2192 = !DILocation(line: 979, column: 1, scope: !2122, inlinedAt: !2167)
!2193 = !DILocation(line: 984, column: 3, scope: !2158)
!2194 = distinct !DISubprogram(name: "quotearg_colon", scope: !100, file: !100, line: 988, type: !1970, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2195)
!2195 = !{!2196}
!2196 = !DILocalVariable(name: "arg", arg: 1, scope: !2194, file: !100, line: 988, type: !6)
!2197 = !DILocation(line: 988, column: 29, scope: !2194)
!2198 = !DILocation(line: 982, column: 28, scope: !2158, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 990, column: 10, scope: !2194)
!2200 = !DILocation(line: 982, column: 38, scope: !2158, inlinedAt: !2199)
!2201 = !DILocation(line: 973, column: 32, scope: !2122, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 984, column: 10, scope: !2158, inlinedAt: !2199)
!2203 = !DILocation(line: 973, column: 44, scope: !2122, inlinedAt: !2202)
!2204 = !DILocation(line: 973, column: 58, scope: !2122, inlinedAt: !2202)
!2205 = !DILocation(line: 975, column: 3, scope: !2122, inlinedAt: !2202)
!2206 = !DILocation(line: 976, column: 13, scope: !2122, inlinedAt: !2202)
!2207 = !DILocation(line: 975, column: 26, scope: !2122, inlinedAt: !2202)
!2208 = !DILocation(line: 144, column: 43, scope: !870, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 977, column: 3, scope: !2122, inlinedAt: !2202)
!2210 = !DILocation(line: 144, column: 51, scope: !870, inlinedAt: !2209)
!2211 = !DILocation(line: 144, column: 58, scope: !870, inlinedAt: !2209)
!2212 = !DILocation(line: 146, column: 17, scope: !870, inlinedAt: !2209)
!2213 = !DILocation(line: 148, column: 57, scope: !870, inlinedAt: !2209)
!2214 = !DILocation(line: 147, column: 17, scope: !870, inlinedAt: !2209)
!2215 = !DILocation(line: 149, column: 7, scope: !870, inlinedAt: !2209)
!2216 = !DILocation(line: 150, column: 12, scope: !870, inlinedAt: !2209)
!2217 = !DILocation(line: 151, column: 6, scope: !870, inlinedAt: !2209)
!2218 = !DILocation(line: 978, column: 10, scope: !2122, inlinedAt: !2202)
!2219 = !DILocation(line: 979, column: 1, scope: !2122, inlinedAt: !2202)
!2220 = !DILocation(line: 990, column: 3, scope: !2194)
!2221 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !100, file: !100, line: 994, type: !1981, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2222)
!2222 = !{!2223, !2224}
!2223 = !DILocalVariable(name: "arg", arg: 1, scope: !2221, file: !100, line: 994, type: !6)
!2224 = !DILocalVariable(name: "argsize", arg: 2, scope: !2221, file: !100, line: 994, type: !94)
!2225 = !DILocation(line: 994, column: 33, scope: !2221)
!2226 = !DILocation(line: 994, column: 45, scope: !2221)
!2227 = !DILocation(line: 973, column: 32, scope: !2122, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 996, column: 10, scope: !2221)
!2229 = !DILocation(line: 973, column: 44, scope: !2122, inlinedAt: !2228)
!2230 = !DILocation(line: 973, column: 58, scope: !2122, inlinedAt: !2228)
!2231 = !DILocation(line: 975, column: 3, scope: !2122, inlinedAt: !2228)
!2232 = !DILocation(line: 976, column: 13, scope: !2122, inlinedAt: !2228)
!2233 = !DILocation(line: 975, column: 26, scope: !2122, inlinedAt: !2228)
!2234 = !DILocation(line: 144, column: 43, scope: !870, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 977, column: 3, scope: !2122, inlinedAt: !2228)
!2236 = !DILocation(line: 144, column: 51, scope: !870, inlinedAt: !2235)
!2237 = !DILocation(line: 144, column: 58, scope: !870, inlinedAt: !2235)
!2238 = !DILocation(line: 146, column: 17, scope: !870, inlinedAt: !2235)
!2239 = !DILocation(line: 148, column: 57, scope: !870, inlinedAt: !2235)
!2240 = !DILocation(line: 147, column: 17, scope: !870, inlinedAt: !2235)
!2241 = !DILocation(line: 149, column: 7, scope: !870, inlinedAt: !2235)
!2242 = !DILocation(line: 150, column: 12, scope: !870, inlinedAt: !2235)
!2243 = !DILocation(line: 151, column: 6, scope: !870, inlinedAt: !2235)
!2244 = !DILocation(line: 978, column: 10, scope: !2122, inlinedAt: !2228)
!2245 = !DILocation(line: 979, column: 1, scope: !2122, inlinedAt: !2228)
!2246 = !DILocation(line: 996, column: 3, scope: !2221)
!2247 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !100, file: !100, line: 1000, type: !1995, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2248)
!2248 = !{!2249, !2250, !2251, !2252}
!2249 = !DILocalVariable(name: "n", arg: 1, scope: !2247, file: !100, line: 1000, type: !25)
!2250 = !DILocalVariable(name: "s", arg: 2, scope: !2247, file: !100, line: 1000, type: !58)
!2251 = !DILocalVariable(name: "arg", arg: 3, scope: !2247, file: !100, line: 1000, type: !6)
!2252 = !DILocalVariable(name: "options", scope: !2247, file: !100, line: 1002, type: !107)
!2253 = !DILocation(line: 187, column: 26, scope: !2003, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 1003, column: 13, scope: !2247)
!2255 = !DILocation(line: 1000, column: 29, scope: !2247)
!2256 = !DILocation(line: 1000, column: 51, scope: !2247)
!2257 = !DILocation(line: 1000, column: 66, scope: !2247)
!2258 = !DILocation(line: 1002, column: 3, scope: !2247)
!2259 = !DILocation(line: 185, column: 48, scope: !2003, inlinedAt: !2254)
!2260 = !DILocation(line: 187, column: 3, scope: !2003, inlinedAt: !2254)
!2261 = !DILocation(line: 188, column: 13, scope: !2020, inlinedAt: !2254)
!2262 = !DILocation(line: 188, column: 7, scope: !2003, inlinedAt: !2254)
!2263 = !DILocation(line: 189, column: 5, scope: !2020, inlinedAt: !2254)
!2264 = !{!2265}
!2265 = distinct !{!2265, !2266, !"quoting_options_from_style: argument 0"}
!2266 = distinct !{!2266, !"quoting_options_from_style"}
!2267 = !DILocation(line: 191, column: 10, scope: !2003, inlinedAt: !2254)
!2268 = !DILocation(line: 192, column: 1, scope: !2003, inlinedAt: !2254)
!2269 = !DILocation(line: 1003, column: 13, scope: !2247)
!2270 = !DILocation(line: 1002, column: 26, scope: !2247)
!2271 = !DILocation(line: 144, column: 43, scope: !870, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 1004, column: 3, scope: !2247)
!2273 = !DILocation(line: 144, column: 51, scope: !870, inlinedAt: !2272)
!2274 = !DILocation(line: 144, column: 58, scope: !870, inlinedAt: !2272)
!2275 = !DILocation(line: 146, column: 17, scope: !870, inlinedAt: !2272)
!2276 = !DILocation(line: 148, column: 57, scope: !870, inlinedAt: !2272)
!2277 = !DILocation(line: 147, column: 17, scope: !870, inlinedAt: !2272)
!2278 = !DILocation(line: 149, column: 7, scope: !870, inlinedAt: !2272)
!2279 = !DILocation(line: 150, column: 12, scope: !870, inlinedAt: !2272)
!2280 = !DILocation(line: 151, column: 6, scope: !870, inlinedAt: !2272)
!2281 = !DILocation(line: 1005, column: 10, scope: !2247)
!2282 = !DILocation(line: 1006, column: 1, scope: !2247)
!2283 = !DILocation(line: 1005, column: 3, scope: !2247)
!2284 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !100, file: !100, line: 1009, type: !2285, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!50, !25, !6, !6, !6}
!2287 = !{!2288, !2289, !2290, !2291}
!2288 = !DILocalVariable(name: "n", arg: 1, scope: !2284, file: !100, line: 1009, type: !25)
!2289 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2284, file: !100, line: 1009, type: !6)
!2290 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2284, file: !100, line: 1010, type: !6)
!2291 = !DILocalVariable(name: "arg", arg: 4, scope: !2284, file: !100, line: 1010, type: !6)
!2292 = !DILocation(line: 1009, column: 24, scope: !2284)
!2293 = !DILocation(line: 1009, column: 39, scope: !2284)
!2294 = !DILocation(line: 1010, column: 32, scope: !2284)
!2295 = !DILocation(line: 1010, column: 57, scope: !2284)
!2296 = !DILocalVariable(name: "n", arg: 1, scope: !2297, file: !100, line: 1017, type: !25)
!2297 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !100, file: !100, line: 1017, type: !2298, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!50, !25, !6, !6, !6, !94}
!2300 = !{!2296, !2301, !2302, !2303, !2304, !2305}
!2301 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2297, file: !100, line: 1017, type: !6)
!2302 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2297, file: !100, line: 1018, type: !6)
!2303 = !DILocalVariable(name: "arg", arg: 4, scope: !2297, file: !100, line: 1019, type: !6)
!2304 = !DILocalVariable(name: "argsize", arg: 5, scope: !2297, file: !100, line: 1019, type: !94)
!2305 = !DILocalVariable(name: "o", scope: !2297, file: !100, line: 1021, type: !107)
!2306 = !DILocation(line: 1017, column: 28, scope: !2297, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 1012, column: 10, scope: !2284)
!2308 = !DILocation(line: 1017, column: 43, scope: !2297, inlinedAt: !2307)
!2309 = !DILocation(line: 1018, column: 36, scope: !2297, inlinedAt: !2307)
!2310 = !DILocation(line: 1019, column: 36, scope: !2297, inlinedAt: !2307)
!2311 = !DILocation(line: 1019, column: 48, scope: !2297, inlinedAt: !2307)
!2312 = !DILocation(line: 1021, column: 3, scope: !2297, inlinedAt: !2307)
!2313 = !DILocation(line: 1021, column: 30, scope: !2297, inlinedAt: !2307)
!2314 = !DILocation(line: 1021, column: 26, scope: !2297, inlinedAt: !2307)
!2315 = !DILocation(line: 171, column: 45, scope: !919, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 1022, column: 3, scope: !2297, inlinedAt: !2307)
!2317 = !DILocation(line: 172, column: 33, scope: !919, inlinedAt: !2316)
!2318 = !DILocation(line: 172, column: 57, scope: !919, inlinedAt: !2316)
!2319 = !DILocation(line: 176, column: 6, scope: !919, inlinedAt: !2316)
!2320 = !DILocation(line: 176, column: 12, scope: !919, inlinedAt: !2316)
!2321 = !DILocation(line: 177, column: 8, scope: !935, inlinedAt: !2316)
!2322 = !DILocation(line: 177, column: 23, scope: !935, inlinedAt: !2316)
!2323 = !DILocation(line: 177, column: 19, scope: !935, inlinedAt: !2316)
!2324 = !DILocation(line: 178, column: 5, scope: !935, inlinedAt: !2316)
!2325 = !DILocation(line: 179, column: 6, scope: !919, inlinedAt: !2316)
!2326 = !DILocation(line: 179, column: 17, scope: !919, inlinedAt: !2316)
!2327 = !DILocation(line: 180, column: 6, scope: !919, inlinedAt: !2316)
!2328 = !DILocation(line: 180, column: 18, scope: !919, inlinedAt: !2316)
!2329 = !DILocation(line: 1023, column: 10, scope: !2297, inlinedAt: !2307)
!2330 = !DILocation(line: 1024, column: 1, scope: !2297, inlinedAt: !2307)
!2331 = !DILocation(line: 1012, column: 3, scope: !2284)
!2332 = !DILocation(line: 1017, column: 28, scope: !2297)
!2333 = !DILocation(line: 1017, column: 43, scope: !2297)
!2334 = !DILocation(line: 1018, column: 36, scope: !2297)
!2335 = !DILocation(line: 1019, column: 36, scope: !2297)
!2336 = !DILocation(line: 1019, column: 48, scope: !2297)
!2337 = !DILocation(line: 1021, column: 3, scope: !2297)
!2338 = !DILocation(line: 1021, column: 30, scope: !2297)
!2339 = !DILocation(line: 1021, column: 26, scope: !2297)
!2340 = !DILocation(line: 171, column: 45, scope: !919, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 1022, column: 3, scope: !2297)
!2342 = !DILocation(line: 172, column: 33, scope: !919, inlinedAt: !2341)
!2343 = !DILocation(line: 172, column: 57, scope: !919, inlinedAt: !2341)
!2344 = !DILocation(line: 176, column: 6, scope: !919, inlinedAt: !2341)
!2345 = !DILocation(line: 176, column: 12, scope: !919, inlinedAt: !2341)
!2346 = !DILocation(line: 177, column: 8, scope: !935, inlinedAt: !2341)
!2347 = !DILocation(line: 177, column: 23, scope: !935, inlinedAt: !2341)
!2348 = !DILocation(line: 177, column: 19, scope: !935, inlinedAt: !2341)
!2349 = !DILocation(line: 178, column: 5, scope: !935, inlinedAt: !2341)
!2350 = !DILocation(line: 179, column: 6, scope: !919, inlinedAt: !2341)
!2351 = !DILocation(line: 179, column: 17, scope: !919, inlinedAt: !2341)
!2352 = !DILocation(line: 180, column: 6, scope: !919, inlinedAt: !2341)
!2353 = !DILocation(line: 180, column: 18, scope: !919, inlinedAt: !2341)
!2354 = !DILocation(line: 1023, column: 10, scope: !2297)
!2355 = !DILocation(line: 1024, column: 1, scope: !2297)
!2356 = !DILocation(line: 1023, column: 3, scope: !2297)
!2357 = distinct !DISubprogram(name: "quotearg_custom", scope: !100, file: !100, line: 1027, type: !2358, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!50, !6, !6, !6}
!2360 = !{!2361, !2362, !2363}
!2361 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2357, file: !100, line: 1027, type: !6)
!2362 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2357, file: !100, line: 1027, type: !6)
!2363 = !DILocalVariable(name: "arg", arg: 3, scope: !2357, file: !100, line: 1028, type: !6)
!2364 = !DILocation(line: 1027, column: 30, scope: !2357)
!2365 = !DILocation(line: 1027, column: 54, scope: !2357)
!2366 = !DILocation(line: 1028, column: 30, scope: !2357)
!2367 = !DILocation(line: 1009, column: 24, scope: !2284, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 1030, column: 10, scope: !2357)
!2369 = !DILocation(line: 1009, column: 39, scope: !2284, inlinedAt: !2368)
!2370 = !DILocation(line: 1010, column: 32, scope: !2284, inlinedAt: !2368)
!2371 = !DILocation(line: 1010, column: 57, scope: !2284, inlinedAt: !2368)
!2372 = !DILocation(line: 1017, column: 28, scope: !2297, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 1012, column: 10, scope: !2284, inlinedAt: !2368)
!2374 = !DILocation(line: 1017, column: 43, scope: !2297, inlinedAt: !2373)
!2375 = !DILocation(line: 1018, column: 36, scope: !2297, inlinedAt: !2373)
!2376 = !DILocation(line: 1019, column: 36, scope: !2297, inlinedAt: !2373)
!2377 = !DILocation(line: 1019, column: 48, scope: !2297, inlinedAt: !2373)
!2378 = !DILocation(line: 1021, column: 3, scope: !2297, inlinedAt: !2373)
!2379 = !DILocation(line: 1021, column: 30, scope: !2297, inlinedAt: !2373)
!2380 = !DILocation(line: 1021, column: 26, scope: !2297, inlinedAt: !2373)
!2381 = !DILocation(line: 171, column: 45, scope: !919, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 1022, column: 3, scope: !2297, inlinedAt: !2373)
!2383 = !DILocation(line: 172, column: 33, scope: !919, inlinedAt: !2382)
!2384 = !DILocation(line: 172, column: 57, scope: !919, inlinedAt: !2382)
!2385 = !DILocation(line: 176, column: 6, scope: !919, inlinedAt: !2382)
!2386 = !DILocation(line: 176, column: 12, scope: !919, inlinedAt: !2382)
!2387 = !DILocation(line: 177, column: 8, scope: !935, inlinedAt: !2382)
!2388 = !DILocation(line: 177, column: 23, scope: !935, inlinedAt: !2382)
!2389 = !DILocation(line: 177, column: 19, scope: !935, inlinedAt: !2382)
!2390 = !DILocation(line: 178, column: 5, scope: !935, inlinedAt: !2382)
!2391 = !DILocation(line: 179, column: 6, scope: !919, inlinedAt: !2382)
!2392 = !DILocation(line: 179, column: 17, scope: !919, inlinedAt: !2382)
!2393 = !DILocation(line: 180, column: 6, scope: !919, inlinedAt: !2382)
!2394 = !DILocation(line: 180, column: 18, scope: !919, inlinedAt: !2382)
!2395 = !DILocation(line: 1023, column: 10, scope: !2297, inlinedAt: !2373)
!2396 = !DILocation(line: 1024, column: 1, scope: !2297, inlinedAt: !2373)
!2397 = !DILocation(line: 1030, column: 3, scope: !2357)
!2398 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !100, file: !100, line: 1034, type: !2399, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!50, !6, !6, !6, !94}
!2401 = !{!2402, !2403, !2404, !2405}
!2402 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2398, file: !100, line: 1034, type: !6)
!2403 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2398, file: !100, line: 1034, type: !6)
!2404 = !DILocalVariable(name: "arg", arg: 3, scope: !2398, file: !100, line: 1035, type: !6)
!2405 = !DILocalVariable(name: "argsize", arg: 4, scope: !2398, file: !100, line: 1035, type: !94)
!2406 = !DILocation(line: 1034, column: 34, scope: !2398)
!2407 = !DILocation(line: 1034, column: 58, scope: !2398)
!2408 = !DILocation(line: 1035, column: 34, scope: !2398)
!2409 = !DILocation(line: 1035, column: 46, scope: !2398)
!2410 = !DILocation(line: 1017, column: 28, scope: !2297, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1037, column: 10, scope: !2398)
!2412 = !DILocation(line: 1017, column: 43, scope: !2297, inlinedAt: !2411)
!2413 = !DILocation(line: 1018, column: 36, scope: !2297, inlinedAt: !2411)
!2414 = !DILocation(line: 1019, column: 36, scope: !2297, inlinedAt: !2411)
!2415 = !DILocation(line: 1019, column: 48, scope: !2297, inlinedAt: !2411)
!2416 = !DILocation(line: 1021, column: 3, scope: !2297, inlinedAt: !2411)
!2417 = !DILocation(line: 1021, column: 30, scope: !2297, inlinedAt: !2411)
!2418 = !DILocation(line: 1021, column: 26, scope: !2297, inlinedAt: !2411)
!2419 = !DILocation(line: 171, column: 45, scope: !919, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 1022, column: 3, scope: !2297, inlinedAt: !2411)
!2421 = !DILocation(line: 172, column: 33, scope: !919, inlinedAt: !2420)
!2422 = !DILocation(line: 172, column: 57, scope: !919, inlinedAt: !2420)
!2423 = !DILocation(line: 176, column: 6, scope: !919, inlinedAt: !2420)
!2424 = !DILocation(line: 176, column: 12, scope: !919, inlinedAt: !2420)
!2425 = !DILocation(line: 177, column: 8, scope: !935, inlinedAt: !2420)
!2426 = !DILocation(line: 177, column: 23, scope: !935, inlinedAt: !2420)
!2427 = !DILocation(line: 177, column: 19, scope: !935, inlinedAt: !2420)
!2428 = !DILocation(line: 178, column: 5, scope: !935, inlinedAt: !2420)
!2429 = !DILocation(line: 179, column: 6, scope: !919, inlinedAt: !2420)
!2430 = !DILocation(line: 179, column: 17, scope: !919, inlinedAt: !2420)
!2431 = !DILocation(line: 180, column: 6, scope: !919, inlinedAt: !2420)
!2432 = !DILocation(line: 180, column: 18, scope: !919, inlinedAt: !2420)
!2433 = !DILocation(line: 1023, column: 10, scope: !2297, inlinedAt: !2411)
!2434 = !DILocation(line: 1024, column: 1, scope: !2297, inlinedAt: !2411)
!2435 = !DILocation(line: 1037, column: 3, scope: !2398)
!2436 = distinct !DISubprogram(name: "quote_n_mem", scope: !100, file: !100, line: 1052, type: !2437, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!6, !25, !6, !94}
!2439 = !{!2440, !2441, !2442}
!2440 = !DILocalVariable(name: "n", arg: 1, scope: !2436, file: !100, line: 1052, type: !25)
!2441 = !DILocalVariable(name: "arg", arg: 2, scope: !2436, file: !100, line: 1052, type: !6)
!2442 = !DILocalVariable(name: "argsize", arg: 3, scope: !2436, file: !100, line: 1052, type: !94)
!2443 = !DILocation(line: 1052, column: 18, scope: !2436)
!2444 = !DILocation(line: 1052, column: 33, scope: !2436)
!2445 = !DILocation(line: 1052, column: 45, scope: !2436)
!2446 = !DILocation(line: 1054, column: 10, scope: !2436)
!2447 = !DILocation(line: 1054, column: 3, scope: !2436)
!2448 = distinct !DISubprogram(name: "quote_mem", scope: !100, file: !100, line: 1058, type: !2449, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!6, !6, !94}
!2451 = !{!2452, !2453}
!2452 = !DILocalVariable(name: "arg", arg: 1, scope: !2448, file: !100, line: 1058, type: !6)
!2453 = !DILocalVariable(name: "argsize", arg: 2, scope: !2448, file: !100, line: 1058, type: !94)
!2454 = !DILocation(line: 1058, column: 24, scope: !2448)
!2455 = !DILocation(line: 1058, column: 36, scope: !2448)
!2456 = !DILocation(line: 1052, column: 18, scope: !2436, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 1060, column: 10, scope: !2448)
!2458 = !DILocation(line: 1052, column: 33, scope: !2436, inlinedAt: !2457)
!2459 = !DILocation(line: 1052, column: 45, scope: !2436, inlinedAt: !2457)
!2460 = !DILocation(line: 1054, column: 10, scope: !2436, inlinedAt: !2457)
!2461 = !DILocation(line: 1060, column: 3, scope: !2448)
!2462 = distinct !DISubprogram(name: "quote_n", scope: !100, file: !100, line: 1064, type: !2463, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!6, !25, !6}
!2465 = !{!2466, !2467}
!2466 = !DILocalVariable(name: "n", arg: 1, scope: !2462, file: !100, line: 1064, type: !25)
!2467 = !DILocalVariable(name: "arg", arg: 2, scope: !2462, file: !100, line: 1064, type: !6)
!2468 = !DILocation(line: 1064, column: 14, scope: !2462)
!2469 = !DILocation(line: 1064, column: 29, scope: !2462)
!2470 = !DILocation(line: 1052, column: 18, scope: !2436, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 1066, column: 10, scope: !2462)
!2472 = !DILocation(line: 1052, column: 33, scope: !2436, inlinedAt: !2471)
!2473 = !DILocation(line: 1052, column: 45, scope: !2436, inlinedAt: !2471)
!2474 = !DILocation(line: 1054, column: 10, scope: !2436, inlinedAt: !2471)
!2475 = !DILocation(line: 1066, column: 3, scope: !2462)
!2476 = distinct !DISubprogram(name: "quote", scope: !100, file: !100, line: 1070, type: !2477, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !55, variables: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!6, !6}
!2479 = !{!2480}
!2480 = !DILocalVariable(name: "arg", arg: 1, scope: !2476, file: !100, line: 1070, type: !6)
!2481 = !DILocation(line: 1070, column: 20, scope: !2476)
!2482 = !DILocation(line: 1064, column: 14, scope: !2462, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 1072, column: 10, scope: !2476)
!2484 = !DILocation(line: 1064, column: 29, scope: !2462, inlinedAt: !2483)
!2485 = !DILocation(line: 1052, column: 18, scope: !2436, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 1066, column: 10, scope: !2462, inlinedAt: !2483)
!2487 = !DILocation(line: 1052, column: 33, scope: !2436, inlinedAt: !2486)
!2488 = !DILocation(line: 1052, column: 45, scope: !2436, inlinedAt: !2486)
!2489 = !DILocation(line: 1054, column: 10, scope: !2436, inlinedAt: !2486)
!2490 = !DILocation(line: 1072, column: 3, scope: !2476)
!2491 = distinct !DISubprogram(name: "version_etc_arn", scope: !526, file: !526, line: 62, type: !2492, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2547)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !2494, !6, !6, !6, !2546, !94}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2496, line: 7, baseType: !2497)
!2496 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2498, line: 241, size: 1728, elements: !2499)
!2498 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2499 = !{!2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2520, !2521, !2522, !2523, !2526, !2527, !2529, !2531, !2534, !2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2497, file: !2498, line: 242, baseType: !25, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2497, file: !2498, line: 247, baseType: !50, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2497, file: !2498, line: 248, baseType: !50, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2497, file: !2498, line: 249, baseType: !50, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2497, file: !2498, line: 250, baseType: !50, size: 64, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2497, file: !2498, line: 251, baseType: !50, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2497, file: !2498, line: 252, baseType: !50, size: 64, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2497, file: !2498, line: 253, baseType: !50, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2497, file: !2498, line: 254, baseType: !50, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2497, file: !2498, line: 256, baseType: !50, size: 64, offset: 576)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2497, file: !2498, line: 257, baseType: !50, size: 64, offset: 640)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2497, file: !2498, line: 258, baseType: !50, size: 64, offset: 704)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2497, file: !2498, line: 260, baseType: !2513, size: 64, offset: 768)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2498, line: 156, size: 192, elements: !2515)
!2515 = !{!2516, !2517, !2519}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2514, file: !2498, line: 157, baseType: !2513, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2514, file: !2498, line: 158, baseType: !2518, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2514, file: !2498, line: 162, baseType: !25, size: 32, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2497, file: !2498, line: 262, baseType: !2518, size: 64, offset: 832)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2497, file: !2498, line: 264, baseType: !25, size: 32, offset: 896)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2497, file: !2498, line: 268, baseType: !25, size: 32, offset: 928)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2497, file: !2498, line: 270, baseType: !2524, size: 64, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !623, line: 140, baseType: !2525)
!2525 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2497, file: !2498, line: 274, baseType: !93, size: 16, offset: 1024)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2497, file: !2498, line: 275, baseType: !2528, size: 8, offset: 1040)
!2528 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2497, file: !2498, line: 276, baseType: !2530, size: 8, offset: 1048)
!2530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !763)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2497, file: !2498, line: 280, baseType: !2532, size: 64, offset: 1088)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2498, line: 150, baseType: null)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2497, file: !2498, line: 289, baseType: !2535, size: 64, offset: 1152)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !623, line: 141, baseType: !2525)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2497, file: !2498, line: 297, baseType: !49, size: 64, offset: 1216)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2497, file: !2498, line: 298, baseType: !49, size: 64, offset: 1280)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2497, file: !2498, line: 299, baseType: !49, size: 64, offset: 1344)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2497, file: !2498, line: 300, baseType: !49, size: 64, offset: 1408)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2497, file: !2498, line: 302, baseType: !94, size: 64, offset: 1472)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2497, file: !2498, line: 303, baseType: !25, size: 32, offset: 1536)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2497, file: !2498, line: 305, baseType: !2543, size: 160, offset: 1568)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2544)
!2544 = !{!2545}
!2545 = !DISubrange(count: 20)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553}
!2548 = !DILocalVariable(name: "stream", arg: 1, scope: !2491, file: !526, line: 62, type: !2494)
!2549 = !DILocalVariable(name: "command_name", arg: 2, scope: !2491, file: !526, line: 63, type: !6)
!2550 = !DILocalVariable(name: "package", arg: 3, scope: !2491, file: !526, line: 63, type: !6)
!2551 = !DILocalVariable(name: "version", arg: 4, scope: !2491, file: !526, line: 64, type: !6)
!2552 = !DILocalVariable(name: "authors", arg: 5, scope: !2491, file: !526, line: 65, type: !2546)
!2553 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2491, file: !526, line: 65, type: !94)
!2554 = !DILocation(line: 62, column: 24, scope: !2491)
!2555 = !DILocation(line: 63, column: 30, scope: !2491)
!2556 = !DILocation(line: 63, column: 56, scope: !2491)
!2557 = !DILocation(line: 64, column: 30, scope: !2491)
!2558 = !DILocation(line: 65, column: 39, scope: !2491)
!2559 = !DILocation(line: 65, column: 55, scope: !2491)
!2560 = !DILocation(line: 67, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2491, file: !526, line: 67, column: 7)
!2562 = !DILocation(line: 67, column: 7, scope: !2491)
!2563 = !DILocation(line: 68, column: 5, scope: !2561)
!2564 = !DILocation(line: 70, column: 5, scope: !2561)
!2565 = !DILocation(line: 84, column: 3, scope: !2491)
!2566 = !DILocation(line: 86, column: 3, scope: !2491)
!2567 = !DILocation(line: 95, column: 3, scope: !2491)
!2568 = !DILocation(line: 99, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2491, file: !526, line: 96, column: 5)
!2570 = !DILocation(line: 102, column: 7, scope: !2569)
!2571 = !DILocation(line: 103, column: 7, scope: !2569)
!2572 = !DILocation(line: 106, column: 7, scope: !2569)
!2573 = !DILocation(line: 107, column: 7, scope: !2569)
!2574 = !DILocation(line: 110, column: 7, scope: !2569)
!2575 = !DILocation(line: 112, column: 7, scope: !2569)
!2576 = !DILocation(line: 117, column: 7, scope: !2569)
!2577 = !DILocation(line: 119, column: 7, scope: !2569)
!2578 = !DILocation(line: 124, column: 7, scope: !2569)
!2579 = !DILocation(line: 126, column: 7, scope: !2569)
!2580 = !DILocation(line: 131, column: 7, scope: !2569)
!2581 = !DILocation(line: 134, column: 7, scope: !2569)
!2582 = !DILocation(line: 139, column: 7, scope: !2569)
!2583 = !DILocation(line: 142, column: 7, scope: !2569)
!2584 = !DILocation(line: 147, column: 7, scope: !2569)
!2585 = !DILocation(line: 151, column: 7, scope: !2569)
!2586 = !DILocation(line: 156, column: 7, scope: !2569)
!2587 = !DILocation(line: 160, column: 7, scope: !2569)
!2588 = !DILocation(line: 167, column: 7, scope: !2569)
!2589 = !DILocation(line: 171, column: 7, scope: !2569)
!2590 = !DILocation(line: 173, column: 1, scope: !2491)
!2591 = distinct !DISubprogram(name: "version_etc_ar", scope: !526, file: !526, line: 180, type: !2592, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !2494, !6, !6, !6, !2546}
!2594 = !{!2595, !2596, !2597, !2598, !2599, !2600}
!2595 = !DILocalVariable(name: "stream", arg: 1, scope: !2591, file: !526, line: 180, type: !2494)
!2596 = !DILocalVariable(name: "command_name", arg: 2, scope: !2591, file: !526, line: 181, type: !6)
!2597 = !DILocalVariable(name: "package", arg: 3, scope: !2591, file: !526, line: 181, type: !6)
!2598 = !DILocalVariable(name: "version", arg: 4, scope: !2591, file: !526, line: 182, type: !6)
!2599 = !DILocalVariable(name: "authors", arg: 5, scope: !2591, file: !526, line: 182, type: !2546)
!2600 = !DILocalVariable(name: "n_authors", scope: !2591, file: !526, line: 184, type: !94)
!2601 = !DILocation(line: 180, column: 23, scope: !2591)
!2602 = !DILocation(line: 181, column: 29, scope: !2591)
!2603 = !DILocation(line: 181, column: 55, scope: !2591)
!2604 = !DILocation(line: 182, column: 29, scope: !2591)
!2605 = !DILocation(line: 182, column: 59, scope: !2591)
!2606 = !DILocation(line: 184, column: 10, scope: !2591)
!2607 = !DILocation(line: 186, column: 8, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2591, file: !526, line: 186, column: 3)
!2609 = !DILocation(line: 186, column: 23, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2608, file: !526, line: 186, column: 3)
!2611 = !DILocation(line: 186, column: 3, scope: !2608)
!2612 = !DILocation(line: 186, column: 52, scope: !2610)
!2613 = distinct !{!2613, !2611, !2614}
!2614 = !DILocation(line: 187, column: 5, scope: !2608)
!2615 = !DILocation(line: 188, column: 3, scope: !2591)
!2616 = !DILocation(line: 189, column: 1, scope: !2591)
!2617 = distinct !DISubprogram(name: "version_etc_va", scope: !526, file: !526, line: 196, type: !2618, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2627)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null, !2494, !6, !6, !6, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !523, line: 189, size: 192, elements: !2622)
!2622 = !{!2623, !2624, !2625, !2626}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2621, file: !523, line: 189, baseType: !113, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2621, file: !523, line: 189, baseType: !113, size: 32, offset: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2621, file: !523, line: 189, baseType: !49, size: 64, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2621, file: !523, line: 189, baseType: !49, size: 64, offset: 128)
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2628 = !DILocalVariable(name: "stream", arg: 1, scope: !2617, file: !526, line: 196, type: !2494)
!2629 = !DILocalVariable(name: "command_name", arg: 2, scope: !2617, file: !526, line: 197, type: !6)
!2630 = !DILocalVariable(name: "package", arg: 3, scope: !2617, file: !526, line: 197, type: !6)
!2631 = !DILocalVariable(name: "version", arg: 4, scope: !2617, file: !526, line: 198, type: !6)
!2632 = !DILocalVariable(name: "authors", arg: 5, scope: !2617, file: !526, line: 198, type: !2620)
!2633 = !DILocalVariable(name: "n_authors", scope: !2617, file: !526, line: 200, type: !94)
!2634 = !DILocalVariable(name: "authtab", scope: !2617, file: !526, line: 201, type: !2635)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !103)
!2636 = !DILocation(line: 196, column: 23, scope: !2617)
!2637 = !DILocation(line: 197, column: 29, scope: !2617)
!2638 = !DILocation(line: 197, column: 55, scope: !2617)
!2639 = !DILocation(line: 198, column: 29, scope: !2617)
!2640 = !DILocation(line: 198, column: 46, scope: !2617)
!2641 = !DILocation(line: 201, column: 3, scope: !2617)
!2642 = !DILocation(line: 201, column: 15, scope: !2617)
!2643 = !DILocation(line: 200, column: 10, scope: !2617)
!2644 = !DILocation(line: 205, column: 35, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !526, line: 203, column: 3)
!2646 = distinct !DILexicalBlock(scope: !2617, file: !526, line: 203, column: 3)
!2647 = !DILocation(line: 205, column: 14, scope: !2645)
!2648 = !DILocation(line: 205, column: 33, scope: !2645)
!2649 = !DILocation(line: 205, column: 67, scope: !2645)
!2650 = !DILocation(line: 203, column: 3, scope: !2646)
!2651 = !DILocation(line: 208, column: 3, scope: !2617)
!2652 = !DILocation(line: 210, column: 1, scope: !2617)
!2653 = distinct !DISubprogram(name: "version_etc", scope: !526, file: !526, line: 227, type: !2654, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !2494, !6, !6, !6, null}
!2656 = !{!2657, !2658, !2659, !2660, !2661}
!2657 = !DILocalVariable(name: "stream", arg: 1, scope: !2653, file: !526, line: 227, type: !2494)
!2658 = !DILocalVariable(name: "command_name", arg: 2, scope: !2653, file: !526, line: 228, type: !6)
!2659 = !DILocalVariable(name: "package", arg: 3, scope: !2653, file: !526, line: 228, type: !6)
!2660 = !DILocalVariable(name: "version", arg: 4, scope: !2653, file: !526, line: 229, type: !6)
!2661 = !DILocalVariable(name: "authors", scope: !2653, file: !526, line: 231, type: !2662)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !752, line: 46, baseType: !2663)
!2663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !754, line: 48, baseType: !2664)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !523, line: 231, baseType: !2665)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2621, size: 192, elements: !763)
!2666 = !DILocation(line: 227, column: 20, scope: !2653)
!2667 = !DILocation(line: 228, column: 26, scope: !2653)
!2668 = !DILocation(line: 228, column: 52, scope: !2653)
!2669 = !DILocation(line: 229, column: 26, scope: !2653)
!2670 = !DILocation(line: 231, column: 3, scope: !2653)
!2671 = !DILocation(line: 231, column: 11, scope: !2653)
!2672 = !DILocation(line: 233, column: 3, scope: !2653)
!2673 = !DILocation(line: 234, column: 3, scope: !2653)
!2674 = !DILocation(line: 235, column: 3, scope: !2653)
!2675 = !DILocation(line: 236, column: 1, scope: !2653)
!2676 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !526, file: !526, line: 239, type: !698, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !4)
!2677 = !DILocation(line: 245, column: 3, scope: !2676)
!2678 = !DILocation(line: 251, column: 3, scope: !2676)
!2679 = !DILocation(line: 256, column: 3, scope: !2676)
!2680 = !DILocation(line: 258, column: 1, scope: !2676)
!2681 = distinct !DISubprogram(name: "xnmalloc", scope: !534, file: !534, line: 105, type: !2682, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2684)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!49, !94, !94}
!2684 = !{!2685, !2686}
!2685 = !DILocalVariable(name: "n", arg: 1, scope: !2681, file: !534, line: 105, type: !94)
!2686 = !DILocalVariable(name: "s", arg: 2, scope: !2681, file: !534, line: 105, type: !94)
!2687 = !DILocation(line: 105, column: 18, scope: !2681)
!2688 = !DILocation(line: 105, column: 28, scope: !2681)
!2689 = !DILocation(line: 107, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2681, file: !534, line: 107, column: 7)
!2691 = !DILocation(line: 107, column: 7, scope: !2681)
!2692 = !DILocation(line: 108, column: 5, scope: !2690)
!2693 = !DILocation(line: 109, column: 21, scope: !2681)
!2694 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !2696, line: 39, type: !94)
!2695 = distinct !DISubprogram(name: "xmalloc", scope: !2696, file: !2696, line: 39, type: !2697, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2699)
!2696 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!49, !94}
!2699 = !{!2694, !2700}
!2700 = !DILocalVariable(name: "p", scope: !2695, file: !2696, line: 41, type: !49)
!2701 = !DILocation(line: 39, column: 17, scope: !2695, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 109, column: 10, scope: !2681)
!2703 = !DILocation(line: 41, column: 13, scope: !2695, inlinedAt: !2702)
!2704 = !DILocation(line: 41, column: 9, scope: !2695, inlinedAt: !2702)
!2705 = !DILocation(line: 42, column: 8, scope: !2706, inlinedAt: !2702)
!2706 = distinct !DILexicalBlock(scope: !2695, file: !2696, line: 42, column: 7)
!2707 = !DILocation(line: 42, column: 15, scope: !2706, inlinedAt: !2702)
!2708 = !DILocation(line: 42, column: 10, scope: !2706, inlinedAt: !2702)
!2709 = !DILocation(line: 43, column: 5, scope: !2706, inlinedAt: !2702)
!2710 = !DILocation(line: 109, column: 3, scope: !2681)
!2711 = !DILocation(line: 39, column: 17, scope: !2695)
!2712 = !DILocation(line: 41, column: 13, scope: !2695)
!2713 = !DILocation(line: 41, column: 9, scope: !2695)
!2714 = !DILocation(line: 42, column: 8, scope: !2706)
!2715 = !DILocation(line: 42, column: 15, scope: !2706)
!2716 = !DILocation(line: 42, column: 10, scope: !2706)
!2717 = !DILocation(line: 43, column: 5, scope: !2706)
!2718 = !DILocation(line: 44, column: 3, scope: !2695)
!2719 = distinct !DISubprogram(name: "xnrealloc", scope: !534, file: !534, line: 118, type: !2720, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!49, !49, !94, !94}
!2722 = !{!2723, !2724, !2725}
!2723 = !DILocalVariable(name: "p", arg: 1, scope: !2719, file: !534, line: 118, type: !49)
!2724 = !DILocalVariable(name: "n", arg: 2, scope: !2719, file: !534, line: 118, type: !94)
!2725 = !DILocalVariable(name: "s", arg: 3, scope: !2719, file: !534, line: 118, type: !94)
!2726 = !DILocation(line: 118, column: 18, scope: !2719)
!2727 = !DILocation(line: 118, column: 28, scope: !2719)
!2728 = !DILocation(line: 118, column: 38, scope: !2719)
!2729 = !DILocation(line: 120, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2719, file: !534, line: 120, column: 7)
!2731 = !DILocation(line: 120, column: 7, scope: !2719)
!2732 = !DILocation(line: 121, column: 5, scope: !2730)
!2733 = !DILocation(line: 122, column: 25, scope: !2719)
!2734 = !DILocalVariable(name: "p", arg: 1, scope: !2735, file: !2696, line: 51, type: !49)
!2735 = distinct !DISubprogram(name: "xrealloc", scope: !2696, file: !2696, line: 51, type: !2736, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!49, !49, !94}
!2738 = !{!2734, !2739}
!2739 = !DILocalVariable(name: "n", arg: 2, scope: !2735, file: !2696, line: 51, type: !94)
!2740 = !DILocation(line: 51, column: 17, scope: !2735, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 122, column: 10, scope: !2719)
!2742 = !DILocation(line: 51, column: 27, scope: !2735, inlinedAt: !2741)
!2743 = !DILocation(line: 53, column: 8, scope: !2744, inlinedAt: !2741)
!2744 = distinct !DILexicalBlock(scope: !2735, file: !2696, line: 53, column: 7)
!2745 = !DILocation(line: 53, column: 13, scope: !2744, inlinedAt: !2741)
!2746 = !DILocation(line: 53, column: 10, scope: !2744, inlinedAt: !2741)
!2747 = !DILocation(line: 57, column: 7, scope: !2748, inlinedAt: !2741)
!2748 = distinct !DILexicalBlock(scope: !2744, file: !2696, line: 54, column: 5)
!2749 = !DILocation(line: 58, column: 7, scope: !2748, inlinedAt: !2741)
!2750 = !DILocation(line: 61, column: 7, scope: !2735, inlinedAt: !2741)
!2751 = !DILocation(line: 62, column: 8, scope: !2752, inlinedAt: !2741)
!2752 = distinct !DILexicalBlock(scope: !2735, file: !2696, line: 62, column: 7)
!2753 = !DILocation(line: 62, column: 13, scope: !2752, inlinedAt: !2741)
!2754 = !DILocation(line: 62, column: 10, scope: !2752, inlinedAt: !2741)
!2755 = !DILocation(line: 63, column: 5, scope: !2752, inlinedAt: !2741)
!2756 = !DILocation(line: 122, column: 3, scope: !2719)
!2757 = !DILocation(line: 51, column: 17, scope: !2735)
!2758 = !DILocation(line: 51, column: 27, scope: !2735)
!2759 = !DILocation(line: 53, column: 8, scope: !2744)
!2760 = !DILocation(line: 53, column: 13, scope: !2744)
!2761 = !DILocation(line: 53, column: 10, scope: !2744)
!2762 = !DILocation(line: 57, column: 7, scope: !2748)
!2763 = !DILocation(line: 58, column: 7, scope: !2748)
!2764 = !DILocation(line: 61, column: 7, scope: !2735)
!2765 = !DILocation(line: 62, column: 8, scope: !2752)
!2766 = !DILocation(line: 62, column: 13, scope: !2752)
!2767 = !DILocation(line: 62, column: 10, scope: !2752)
!2768 = !DILocation(line: 63, column: 5, scope: !2752)
!2769 = !DILocation(line: 65, column: 1, scope: !2735)
!2770 = !DILocation(line: 180, column: 19, scope: !535)
!2771 = !DILocation(line: 180, column: 30, scope: !535)
!2772 = !DILocation(line: 180, column: 41, scope: !535)
!2773 = !DILocation(line: 182, column: 14, scope: !535)
!2774 = !DILocation(line: 182, column: 10, scope: !535)
!2775 = !DILocation(line: 184, column: 9, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !535, file: !534, line: 184, column: 7)
!2777 = !DILocation(line: 184, column: 7, scope: !535)
!2778 = !DILocation(line: 186, column: 13, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !534, line: 186, column: 11)
!2780 = distinct !DILexicalBlock(scope: !2776, file: !534, line: 185, column: 5)
!2781 = !DILocation(line: 186, column: 11, scope: !2780)
!2782 = !DILocation(line: 194, column: 30, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2779, file: !534, line: 187, column: 9)
!2784 = !DILocation(line: 195, column: 16, scope: !2783)
!2785 = !DILocation(line: 195, column: 13, scope: !2783)
!2786 = !DILocation(line: 196, column: 9, scope: !2783)
!2787 = !DILocation(line: 204, column: 69, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !534, line: 204, column: 11)
!2789 = distinct !DILexicalBlock(scope: !2776, file: !534, line: 199, column: 5)
!2790 = !DILocation(line: 205, column: 11, scope: !2788)
!2791 = !DILocation(line: 204, column: 11, scope: !2789)
!2792 = !DILocation(line: 206, column: 9, scope: !2788)
!2793 = !DILocation(line: 210, column: 7, scope: !535)
!2794 = !DILocation(line: 211, column: 25, scope: !535)
!2795 = !DILocation(line: 51, column: 17, scope: !2735, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 211, column: 10, scope: !535)
!2797 = !DILocation(line: 51, column: 27, scope: !2735, inlinedAt: !2796)
!2798 = !DILocation(line: 53, column: 10, scope: !2744, inlinedAt: !2796)
!2799 = !DILocation(line: 207, column: 14, scope: !2789)
!2800 = !DILocation(line: 207, column: 18, scope: !2789)
!2801 = !DILocation(line: 207, column: 9, scope: !2789)
!2802 = !DILocation(line: 53, column: 8, scope: !2744, inlinedAt: !2796)
!2803 = !DILocation(line: 57, column: 7, scope: !2748, inlinedAt: !2796)
!2804 = !DILocation(line: 58, column: 7, scope: !2748, inlinedAt: !2796)
!2805 = !DILocation(line: 61, column: 7, scope: !2735, inlinedAt: !2796)
!2806 = !DILocation(line: 62, column: 8, scope: !2752, inlinedAt: !2796)
!2807 = !DILocation(line: 62, column: 13, scope: !2752, inlinedAt: !2796)
!2808 = !DILocation(line: 62, column: 10, scope: !2752, inlinedAt: !2796)
!2809 = !DILocation(line: 63, column: 5, scope: !2752, inlinedAt: !2796)
!2810 = !DILocation(line: 211, column: 3, scope: !535)
!2811 = distinct !DISubprogram(name: "xcharalloc", scope: !534, file: !534, line: 220, type: !1768, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2812)
!2812 = !{!2813}
!2813 = !DILocalVariable(name: "n", arg: 1, scope: !2811, file: !534, line: 220, type: !94)
!2814 = !DILocation(line: 220, column: 20, scope: !2811)
!2815 = !DILocation(line: 39, column: 17, scope: !2695, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 222, column: 10, scope: !2811)
!2817 = !DILocation(line: 41, column: 13, scope: !2695, inlinedAt: !2816)
!2818 = !DILocation(line: 41, column: 9, scope: !2695, inlinedAt: !2816)
!2819 = !DILocation(line: 42, column: 8, scope: !2706, inlinedAt: !2816)
!2820 = !DILocation(line: 42, column: 15, scope: !2706, inlinedAt: !2816)
!2821 = !DILocation(line: 42, column: 10, scope: !2706, inlinedAt: !2816)
!2822 = !DILocation(line: 43, column: 5, scope: !2706, inlinedAt: !2816)
!2823 = !DILocation(line: 222, column: 3, scope: !2811)
!2824 = distinct !DISubprogram(name: "x2realloc", scope: !2696, file: !2696, line: 74, type: !2825, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!49, !49, !538}
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "p", arg: 1, scope: !2824, file: !2696, line: 74, type: !49)
!2829 = !DILocalVariable(name: "pn", arg: 2, scope: !2824, file: !2696, line: 74, type: !538)
!2830 = !DILocation(line: 74, column: 18, scope: !2824)
!2831 = !DILocation(line: 74, column: 29, scope: !2824)
!2832 = !DILocation(line: 180, column: 19, scope: !535, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 76, column: 10, scope: !2824)
!2834 = !DILocation(line: 180, column: 30, scope: !535, inlinedAt: !2833)
!2835 = !DILocation(line: 180, column: 41, scope: !535, inlinedAt: !2833)
!2836 = !DILocation(line: 182, column: 14, scope: !535, inlinedAt: !2833)
!2837 = !DILocation(line: 182, column: 10, scope: !535, inlinedAt: !2833)
!2838 = !DILocation(line: 184, column: 9, scope: !2776, inlinedAt: !2833)
!2839 = !DILocation(line: 184, column: 7, scope: !535, inlinedAt: !2833)
!2840 = !DILocation(line: 186, column: 13, scope: !2779, inlinedAt: !2833)
!2841 = !DILocation(line: 186, column: 11, scope: !2780, inlinedAt: !2833)
!2842 = !DILocation(line: 210, column: 7, scope: !535, inlinedAt: !2833)
!2843 = !DILocation(line: 51, column: 17, scope: !2735, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 211, column: 10, scope: !535, inlinedAt: !2833)
!2845 = !DILocation(line: 51, column: 27, scope: !2735, inlinedAt: !2844)
!2846 = !DILocation(line: 53, column: 10, scope: !2744, inlinedAt: !2844)
!2847 = !DILocation(line: 205, column: 11, scope: !2788, inlinedAt: !2833)
!2848 = !DILocation(line: 204, column: 11, scope: !2789, inlinedAt: !2833)
!2849 = !DILocation(line: 206, column: 9, scope: !2788, inlinedAt: !2833)
!2850 = !DILocation(line: 207, column: 14, scope: !2789, inlinedAt: !2833)
!2851 = !DILocation(line: 207, column: 18, scope: !2789, inlinedAt: !2833)
!2852 = !DILocation(line: 207, column: 9, scope: !2789, inlinedAt: !2833)
!2853 = !DILocation(line: 53, column: 8, scope: !2744, inlinedAt: !2844)
!2854 = !DILocation(line: 57, column: 7, scope: !2748, inlinedAt: !2844)
!2855 = !DILocation(line: 58, column: 7, scope: !2748, inlinedAt: !2844)
!2856 = !DILocation(line: 61, column: 7, scope: !2735, inlinedAt: !2844)
!2857 = !DILocation(line: 62, column: 8, scope: !2752, inlinedAt: !2844)
!2858 = !DILocation(line: 62, column: 13, scope: !2752, inlinedAt: !2844)
!2859 = !DILocation(line: 62, column: 10, scope: !2752, inlinedAt: !2844)
!2860 = !DILocation(line: 63, column: 5, scope: !2752, inlinedAt: !2844)
!2861 = !DILocation(line: 76, column: 3, scope: !2824)
!2862 = distinct !DISubprogram(name: "xzalloc", scope: !2696, file: !2696, line: 84, type: !2697, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2863)
!2863 = !{!2864}
!2864 = !DILocalVariable(name: "s", arg: 1, scope: !2862, file: !2696, line: 84, type: !94)
!2865 = !DILocation(line: 84, column: 17, scope: !2862)
!2866 = !DILocation(line: 39, column: 17, scope: !2695, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 86, column: 18, scope: !2862)
!2868 = !DILocation(line: 41, column: 13, scope: !2695, inlinedAt: !2867)
!2869 = !DILocation(line: 41, column: 9, scope: !2695, inlinedAt: !2867)
!2870 = !DILocation(line: 42, column: 8, scope: !2706, inlinedAt: !2867)
!2871 = !DILocation(line: 42, column: 15, scope: !2706, inlinedAt: !2867)
!2872 = !DILocation(line: 42, column: 10, scope: !2706, inlinedAt: !2867)
!2873 = !DILocation(line: 43, column: 5, scope: !2706, inlinedAt: !2867)
!2874 = !DILocation(line: 86, column: 10, scope: !2862)
!2875 = !DILocation(line: 86, column: 3, scope: !2862)
!2876 = distinct !DISubprogram(name: "xcalloc", scope: !2696, file: !2696, line: 93, type: !2682, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2877)
!2877 = !{!2878, !2879, !2880}
!2878 = !DILocalVariable(name: "n", arg: 1, scope: !2876, file: !2696, line: 93, type: !94)
!2879 = !DILocalVariable(name: "s", arg: 2, scope: !2876, file: !2696, line: 93, type: !94)
!2880 = !DILocalVariable(name: "p", scope: !2876, file: !2696, line: 95, type: !49)
!2881 = !DILocation(line: 93, column: 17, scope: !2876)
!2882 = !DILocation(line: 93, column: 27, scope: !2876)
!2883 = !DILocation(line: 100, column: 7, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2876, file: !2696, line: 100, column: 7)
!2885 = !DILocation(line: 101, column: 7, scope: !2884)
!2886 = !DILocation(line: 101, column: 18, scope: !2884)
!2887 = !DILocation(line: 95, column: 9, scope: !2876)
!2888 = !DILocation(line: 101, column: 16, scope: !2884)
!2889 = !DILocation(line: 100, column: 7, scope: !2876)
!2890 = !DILocation(line: 102, column: 5, scope: !2884)
!2891 = !DILocation(line: 103, column: 3, scope: !2876)
!2892 = distinct !DISubprogram(name: "xmemdup", scope: !2696, file: !2696, line: 111, type: !2893, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2897)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!49, !2895, !94}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2897 = !{!2898, !2899}
!2898 = !DILocalVariable(name: "p", arg: 1, scope: !2892, file: !2696, line: 111, type: !2895)
!2899 = !DILocalVariable(name: "s", arg: 2, scope: !2892, file: !2696, line: 111, type: !94)
!2900 = !DILocation(line: 111, column: 22, scope: !2892)
!2901 = !DILocation(line: 111, column: 32, scope: !2892)
!2902 = !DILocation(line: 39, column: 17, scope: !2695, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 113, column: 18, scope: !2892)
!2904 = !DILocation(line: 41, column: 13, scope: !2695, inlinedAt: !2903)
!2905 = !DILocation(line: 41, column: 9, scope: !2695, inlinedAt: !2903)
!2906 = !DILocation(line: 42, column: 8, scope: !2706, inlinedAt: !2903)
!2907 = !DILocation(line: 42, column: 15, scope: !2706, inlinedAt: !2903)
!2908 = !DILocation(line: 42, column: 10, scope: !2706, inlinedAt: !2903)
!2909 = !DILocation(line: 43, column: 5, scope: !2706, inlinedAt: !2903)
!2910 = !DILocation(line: 113, column: 10, scope: !2892)
!2911 = !DILocation(line: 113, column: 3, scope: !2892)
!2912 = distinct !DISubprogram(name: "xstrdup", scope: !2696, file: !2696, line: 119, type: !1970, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2913)
!2913 = !{!2914}
!2914 = !DILocalVariable(name: "string", arg: 1, scope: !2912, file: !2696, line: 119, type: !6)
!2915 = !DILocation(line: 119, column: 22, scope: !2912)
!2916 = !DILocation(line: 121, column: 27, scope: !2912)
!2917 = !DILocation(line: 121, column: 43, scope: !2912)
!2918 = !DILocation(line: 111, column: 22, scope: !2892, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 121, column: 10, scope: !2912)
!2920 = !DILocation(line: 111, column: 32, scope: !2892, inlinedAt: !2919)
!2921 = !DILocation(line: 39, column: 17, scope: !2695, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 113, column: 18, scope: !2892, inlinedAt: !2919)
!2923 = !DILocation(line: 41, column: 13, scope: !2695, inlinedAt: !2922)
!2924 = !DILocation(line: 41, column: 9, scope: !2695, inlinedAt: !2922)
!2925 = !DILocation(line: 42, column: 8, scope: !2706, inlinedAt: !2922)
!2926 = !DILocation(line: 42, column: 15, scope: !2706, inlinedAt: !2922)
!2927 = !DILocation(line: 42, column: 10, scope: !2706, inlinedAt: !2922)
!2928 = !DILocation(line: 43, column: 5, scope: !2706, inlinedAt: !2922)
!2929 = !DILocation(line: 113, column: 10, scope: !2892, inlinedAt: !2919)
!2930 = !DILocation(line: 121, column: 3, scope: !2912)
!2931 = distinct !DISubprogram(name: "xalloc_die", scope: !2932, file: !2932, line: 32, type: !698, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !547, variables: !4)
!2932 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2933 = !DILocation(line: 34, column: 10, scope: !2931)
!2934 = !DILocation(line: 34, column: 33, scope: !2931)
!2935 = !DILocation(line: 34, column: 3, scope: !2931)
!2936 = !DILocation(line: 40, column: 3, scope: !2931)
!2937 = distinct !DISubprogram(name: "rpl_calloc", scope: !2938, file: !2938, line: 42, type: !2682, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !2939)
!2938 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2939 = !{!2940, !2941, !2942, !2943}
!2940 = !DILocalVariable(name: "n", arg: 1, scope: !2937, file: !2938, line: 42, type: !94)
!2941 = !DILocalVariable(name: "s", arg: 2, scope: !2937, file: !2938, line: 42, type: !94)
!2942 = !DILocalVariable(name: "result", scope: !2937, file: !2938, line: 44, type: !49)
!2943 = !DILocalVariable(name: "bytes", scope: !2944, file: !2938, line: 56, type: !94)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !2938, line: 53, column: 5)
!2945 = distinct !DILexicalBlock(scope: !2937, file: !2938, line: 47, column: 7)
!2946 = !DILocation(line: 42, column: 20, scope: !2937)
!2947 = !DILocation(line: 42, column: 30, scope: !2937)
!2948 = !DILocation(line: 47, column: 9, scope: !2945)
!2949 = !DILocation(line: 47, column: 19, scope: !2945)
!2950 = !DILocation(line: 47, column: 14, scope: !2945)
!2951 = !DILocation(line: 56, column: 24, scope: !2944)
!2952 = !DILocation(line: 56, column: 14, scope: !2944)
!2953 = !DILocation(line: 57, column: 17, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2944, file: !2938, line: 57, column: 11)
!2955 = !DILocation(line: 57, column: 21, scope: !2954)
!2956 = !DILocation(line: 57, column: 11, scope: !2944)
!2957 = !DILocation(line: 59, column: 11, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2954, file: !2938, line: 58, column: 9)
!2959 = !DILocation(line: 59, column: 17, scope: !2958)
!2960 = !DILocation(line: 65, column: 12, scope: !2937)
!2961 = !DILocation(line: 44, column: 9, scope: !2937)
!2962 = !DILocation(line: 72, column: 3, scope: !2937)
!2963 = !DILocation(line: 73, column: 1, scope: !2937)
!2964 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !2965, file: !2965, line: 334, type: !2966, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !2980)
!2965 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!94, !2968, !6, !94, !2969}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1018, line: 6, baseType: !2971)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1020, line: 21, baseType: !2972)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 13, size: 64, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2972, file: !1020, line: 15, baseType: !25, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2972, file: !1020, line: 20, baseType: !2976, size: 32, offset: 32)
!2976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2972, file: !1020, line: 16, size: 32, elements: !2977)
!2977 = !{!2978, !2979}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2976, file: !1020, line: 18, baseType: !113, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2976, file: !1020, line: 19, baseType: !1029, size: 32)
!2980 = !{!2981, !2982, !2983, !2984, !2985, !2986, !2987}
!2981 = !DILocalVariable(name: "pwc", arg: 1, scope: !2964, file: !2965, line: 334, type: !2968)
!2982 = !DILocalVariable(name: "s", arg: 2, scope: !2964, file: !2965, line: 334, type: !6)
!2983 = !DILocalVariable(name: "n", arg: 3, scope: !2964, file: !2965, line: 334, type: !94)
!2984 = !DILocalVariable(name: "ps", arg: 4, scope: !2964, file: !2965, line: 334, type: !2969)
!2985 = !DILocalVariable(name: "ret", scope: !2964, file: !2965, line: 336, type: !94)
!2986 = !DILocalVariable(name: "wc", scope: !2964, file: !2965, line: 337, type: !1034)
!2987 = !DILocalVariable(name: "uc", scope: !2988, file: !2965, line: 398, type: !494)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !2965, line: 397, column: 5)
!2989 = distinct !DILexicalBlock(scope: !2964, file: !2965, line: 396, column: 7)
!2990 = !DILocation(line: 334, column: 23, scope: !2964)
!2991 = !DILocation(line: 334, column: 40, scope: !2964)
!2992 = !DILocation(line: 334, column: 50, scope: !2964)
!2993 = !DILocation(line: 334, column: 64, scope: !2964)
!2994 = !DILocation(line: 337, column: 3, scope: !2964)
!2995 = !DILocation(line: 353, column: 9, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2964, file: !2965, line: 353, column: 7)
!2997 = !DILocation(line: 353, column: 7, scope: !2964)
!2998 = !DILocation(line: 388, column: 9, scope: !2964)
!2999 = !DILocation(line: 336, column: 10, scope: !2964)
!3000 = !DILocation(line: 396, column: 19, scope: !2989)
!3001 = !DILocation(line: 396, column: 31, scope: !2989)
!3002 = !DILocation(line: 396, column: 26, scope: !2989)
!3003 = !DILocation(line: 396, column: 41, scope: !2989)
!3004 = !DILocation(line: 396, column: 7, scope: !2964)
!3005 = !DILocation(line: 398, column: 26, scope: !2988)
!3006 = !DILocation(line: 398, column: 21, scope: !2988)
!3007 = !DILocation(line: 399, column: 14, scope: !2988)
!3008 = !DILocation(line: 399, column: 12, scope: !2988)
!3009 = !DILocation(line: 405, column: 1, scope: !2964)
!3010 = distinct !DISubprogram(name: "close_stream", scope: !3011, file: !3011, line: 56, type: !3012, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3054)
!3011 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!25, !3014}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2496, line: 7, baseType: !3016)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2498, line: 241, size: 1728, elements: !3017)
!3017 = !{!3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3016, file: !2498, line: 242, baseType: !25, size: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3016, file: !2498, line: 247, baseType: !50, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3016, file: !2498, line: 248, baseType: !50, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3016, file: !2498, line: 249, baseType: !50, size: 64, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3016, file: !2498, line: 250, baseType: !50, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3016, file: !2498, line: 251, baseType: !50, size: 64, offset: 320)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3016, file: !2498, line: 252, baseType: !50, size: 64, offset: 384)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3016, file: !2498, line: 253, baseType: !50, size: 64, offset: 448)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3016, file: !2498, line: 254, baseType: !50, size: 64, offset: 512)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3016, file: !2498, line: 256, baseType: !50, size: 64, offset: 576)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3016, file: !2498, line: 257, baseType: !50, size: 64, offset: 640)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3016, file: !2498, line: 258, baseType: !50, size: 64, offset: 704)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3016, file: !2498, line: 260, baseType: !3031, size: 64, offset: 768)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2498, line: 156, size: 192, elements: !3033)
!3033 = !{!3034, !3035, !3037}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3032, file: !2498, line: 157, baseType: !3031, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3032, file: !2498, line: 158, baseType: !3036, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3032, file: !2498, line: 162, baseType: !25, size: 32, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3016, file: !2498, line: 262, baseType: !3036, size: 64, offset: 832)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3016, file: !2498, line: 264, baseType: !25, size: 32, offset: 896)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3016, file: !2498, line: 268, baseType: !25, size: 32, offset: 928)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3016, file: !2498, line: 270, baseType: !2524, size: 64, offset: 960)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3016, file: !2498, line: 274, baseType: !93, size: 16, offset: 1024)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3016, file: !2498, line: 275, baseType: !2528, size: 8, offset: 1040)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3016, file: !2498, line: 276, baseType: !2530, size: 8, offset: 1048)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3016, file: !2498, line: 280, baseType: !2532, size: 64, offset: 1088)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3016, file: !2498, line: 289, baseType: !2535, size: 64, offset: 1152)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3016, file: !2498, line: 297, baseType: !49, size: 64, offset: 1216)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3016, file: !2498, line: 298, baseType: !49, size: 64, offset: 1280)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3016, file: !2498, line: 299, baseType: !49, size: 64, offset: 1344)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3016, file: !2498, line: 300, baseType: !49, size: 64, offset: 1408)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3016, file: !2498, line: 302, baseType: !94, size: 64, offset: 1472)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3016, file: !2498, line: 303, baseType: !25, size: 32, offset: 1536)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3016, file: !2498, line: 305, baseType: !2543, size: 160, offset: 1568)
!3054 = !{!3055, !3056, !3058, !3059}
!3055 = !DILocalVariable(name: "stream", arg: 1, scope: !3010, file: !3011, line: 56, type: !3014)
!3056 = !DILocalVariable(name: "some_pending", scope: !3010, file: !3011, line: 58, type: !3057)
!3057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3058 = !DILocalVariable(name: "prev_fail", scope: !3010, file: !3011, line: 59, type: !3057)
!3059 = !DILocalVariable(name: "fclose_fail", scope: !3010, file: !3011, line: 60, type: !3057)
!3060 = !DILocation(line: 56, column: 21, scope: !3010)
!3061 = !DILocation(line: 58, column: 30, scope: !3010)
!3062 = !DILocalVariable(name: "__stream", arg: 1, scope: !3063, file: !3064, line: 132, type: !3014)
!3063 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3064, file: !3064, line: 132, type: !3012, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3065)
!3064 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3065 = !{!3062}
!3066 = !DILocation(line: 132, column: 1, scope: !3063, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 59, column: 27, scope: !3010)
!3068 = !DILocation(line: 134, column: 10, scope: !3063, inlinedAt: !3067)
!3069 = !{!3070, !652, i64 0}
!3070 = !{!"_IO_FILE", !652, i64 0, !583, i64 8, !583, i64 16, !583, i64 24, !583, i64 32, !583, i64 40, !583, i64 48, !583, i64 56, !583, i64 64, !583, i64 72, !583, i64 80, !583, i64 88, !583, i64 96, !583, i64 104, !652, i64 112, !652, i64 116, !1813, i64 120, !1269, i64 128, !584, i64 130, !584, i64 131, !583, i64 136, !1813, i64 144, !583, i64 152, !583, i64 160, !583, i64 168, !583, i64 176, !1813, i64 184, !652, i64 192, !584, i64 196}
!3071 = !DILocation(line: 59, column: 43, scope: !3010)
!3072 = !DILocation(line: 60, column: 29, scope: !3010)
!3073 = !DILocation(line: 60, column: 45, scope: !3010)
!3074 = !DILocation(line: 70, column: 17, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3010, file: !3011, line: 70, column: 7)
!3076 = !DILocation(line: 58, column: 50, scope: !3010)
!3077 = !DILocation(line: 70, column: 33, scope: !3075)
!3078 = !DILocation(line: 70, column: 53, scope: !3075)
!3079 = !DILocation(line: 70, column: 59, scope: !3075)
!3080 = !DILocation(line: 70, column: 7, scope: !3010)
!3081 = !DILocation(line: 72, column: 11, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3075, file: !3011, line: 71, column: 5)
!3083 = !DILocation(line: 73, column: 9, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3082, file: !3011, line: 72, column: 11)
!3085 = !DILocation(line: 73, column: 15, scope: !3084)
!3086 = !DILocation(line: 78, column: 1, scope: !3010)
!3087 = distinct !DISubprogram(name: "hard_locale", scope: !3088, file: !3088, line: 38, type: !3089, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3091)
!3088 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!17, !25}
!3091 = !{!3092, !3093, !3094}
!3092 = !DILocalVariable(name: "category", arg: 1, scope: !3087, file: !3088, line: 38, type: !25)
!3093 = !DILocalVariable(name: "hard", scope: !3087, file: !3088, line: 40, type: !17)
!3094 = !DILocalVariable(name: "p", scope: !3087, file: !3088, line: 41, type: !6)
!3095 = !DILocation(line: 38, column: 18, scope: !3087)
!3096 = !DILocation(line: 40, column: 8, scope: !3087)
!3097 = !DILocation(line: 41, column: 19, scope: !3087)
!3098 = !DILocation(line: 41, column: 15, scope: !3087)
!3099 = !DILocation(line: 43, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3087, file: !3088, line: 43, column: 7)
!3101 = !DILocation(line: 43, column: 7, scope: !3087)
!3102 = !DILocation(line: 47, column: 15, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !3088, line: 47, column: 15)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !3088, line: 46, column: 9)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !3088, line: 45, column: 11)
!3106 = distinct !DILexicalBlock(scope: !3100, file: !3088, line: 44, column: 5)
!3107 = !DILocation(line: 47, column: 31, scope: !3103)
!3108 = !DILocation(line: 47, column: 36, scope: !3103)
!3109 = !DILocation(line: 47, column: 39, scope: !3103)
!3110 = !DILocation(line: 47, column: 59, scope: !3103)
!3111 = !DILocation(line: 47, column: 15, scope: !3104)
!3112 = !DILocation(line: 48, column: 13, scope: !3103)
!3113 = !DILocation(line: 71, column: 3, scope: !3087)
!3114 = distinct !DISubprogram(name: "locale_charset", scope: !496, file: !496, line: 393, type: !3115, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!6}
!3117 = !{!3118, !3119}
!3118 = !DILocalVariable(name: "codeset", scope: !3114, file: !496, line: 395, type: !6)
!3119 = !DILocalVariable(name: "aliases", scope: !3114, file: !496, line: 396, type: !6)
!3120 = !DILocalVariable(name: "buf1", scope: !3121, file: !496, line: 196, type: !3188)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !496, line: 194, column: 21)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !496, line: 193, column: 19)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !496, line: 193, column: 19)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !496, line: 188, column: 17)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !496, line: 181, column: 19)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !496, line: 177, column: 13)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !496, line: 173, column: 15)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !496, line: 161, column: 9)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !496, line: 157, column: 11)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !496, line: 130, column: 5)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !496, line: 129, column: 7)
!3132 = distinct !DISubprogram(name: "get_charset_aliases", scope: !496, file: !496, line: 124, type: !3115, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3133)
!3133 = !{!3134, !3135, !3136, !3137, !3138, !3140, !3141, !3142, !3143, !3184, !3185, !3186, !3120, !3187, !3191, !3192, !3193}
!3134 = !DILocalVariable(name: "cp", scope: !3132, file: !496, line: 126, type: !6)
!3135 = !DILocalVariable(name: "dir", scope: !3130, file: !496, line: 132, type: !6)
!3136 = !DILocalVariable(name: "base", scope: !3130, file: !496, line: 133, type: !6)
!3137 = !DILocalVariable(name: "file_name", scope: !3130, file: !496, line: 134, type: !50)
!3138 = !DILocalVariable(name: "dir_len", scope: !3139, file: !496, line: 144, type: !94)
!3139 = distinct !DILexicalBlock(scope: !3130, file: !496, line: 143, column: 7)
!3140 = !DILocalVariable(name: "base_len", scope: !3139, file: !496, line: 145, type: !94)
!3141 = !DILocalVariable(name: "add_slash", scope: !3139, file: !496, line: 146, type: !25)
!3142 = !DILocalVariable(name: "fd", scope: !3128, file: !496, line: 162, type: !25)
!3143 = !DILocalVariable(name: "fp", scope: !3126, file: !496, line: 178, type: !3144)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2496, line: 7, baseType: !3146)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2498, line: 241, size: 1728, elements: !3147)
!3147 = !{!3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3146, file: !2498, line: 242, baseType: !25, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3146, file: !2498, line: 247, baseType: !50, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3146, file: !2498, line: 248, baseType: !50, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3146, file: !2498, line: 249, baseType: !50, size: 64, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3146, file: !2498, line: 250, baseType: !50, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3146, file: !2498, line: 251, baseType: !50, size: 64, offset: 320)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3146, file: !2498, line: 252, baseType: !50, size: 64, offset: 384)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3146, file: !2498, line: 253, baseType: !50, size: 64, offset: 448)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3146, file: !2498, line: 254, baseType: !50, size: 64, offset: 512)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3146, file: !2498, line: 256, baseType: !50, size: 64, offset: 576)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3146, file: !2498, line: 257, baseType: !50, size: 64, offset: 640)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3146, file: !2498, line: 258, baseType: !50, size: 64, offset: 704)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3146, file: !2498, line: 260, baseType: !3161, size: 64, offset: 768)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2498, line: 156, size: 192, elements: !3163)
!3163 = !{!3164, !3165, !3167}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3162, file: !2498, line: 157, baseType: !3161, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3162, file: !2498, line: 158, baseType: !3166, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3162, file: !2498, line: 162, baseType: !25, size: 32, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3146, file: !2498, line: 262, baseType: !3166, size: 64, offset: 832)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3146, file: !2498, line: 264, baseType: !25, size: 32, offset: 896)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3146, file: !2498, line: 268, baseType: !25, size: 32, offset: 928)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3146, file: !2498, line: 270, baseType: !2524, size: 64, offset: 960)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3146, file: !2498, line: 274, baseType: !93, size: 16, offset: 1024)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3146, file: !2498, line: 275, baseType: !2528, size: 8, offset: 1040)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3146, file: !2498, line: 276, baseType: !2530, size: 8, offset: 1048)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3146, file: !2498, line: 280, baseType: !2532, size: 64, offset: 1088)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3146, file: !2498, line: 289, baseType: !2535, size: 64, offset: 1152)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3146, file: !2498, line: 297, baseType: !49, size: 64, offset: 1216)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3146, file: !2498, line: 298, baseType: !49, size: 64, offset: 1280)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3146, file: !2498, line: 299, baseType: !49, size: 64, offset: 1344)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3146, file: !2498, line: 300, baseType: !49, size: 64, offset: 1408)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3146, file: !2498, line: 302, baseType: !94, size: 64, offset: 1472)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3146, file: !2498, line: 303, baseType: !25, size: 32, offset: 1536)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3146, file: !2498, line: 305, baseType: !2543, size: 160, offset: 1568)
!3184 = !DILocalVariable(name: "res_ptr", scope: !3124, file: !496, line: 190, type: !50)
!3185 = !DILocalVariable(name: "res_size", scope: !3124, file: !496, line: 191, type: !94)
!3186 = !DILocalVariable(name: "c", scope: !3121, file: !496, line: 195, type: !25)
!3187 = !DILocalVariable(name: "buf2", scope: !3121, file: !496, line: 197, type: !3188)
!3188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3189)
!3189 = !{!3190}
!3190 = !DISubrange(count: 51)
!3191 = !DILocalVariable(name: "l1", scope: !3121, file: !496, line: 198, type: !94)
!3192 = !DILocalVariable(name: "l2", scope: !3121, file: !496, line: 198, type: !94)
!3193 = !DILocalVariable(name: "old_res_ptr", scope: !3121, file: !496, line: 199, type: !50)
!3194 = !DILocation(line: 196, column: 28, scope: !3121, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 589, column: 18, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3114, file: !496, line: 589, column: 3)
!3197 = !DILocation(line: 197, column: 28, scope: !3121, inlinedAt: !3195)
!3198 = !DILocation(line: 403, column: 13, scope: !3114)
!3199 = !DILocation(line: 395, column: 15, scope: !3114)
!3200 = !DILocation(line: 584, column: 15, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3114, file: !496, line: 584, column: 7)
!3202 = !DILocation(line: 584, column: 7, scope: !3114)
!3203 = !DILocation(line: 128, column: 8, scope: !3132, inlinedAt: !3195)
!3204 = !DILocation(line: 126, column: 15, scope: !3132, inlinedAt: !3195)
!3205 = !DILocation(line: 129, column: 10, scope: !3131, inlinedAt: !3195)
!3206 = !DILocation(line: 129, column: 7, scope: !3132, inlinedAt: !3195)
!3207 = !DILocation(line: 138, column: 13, scope: !3130, inlinedAt: !3195)
!3208 = !DILocation(line: 132, column: 19, scope: !3130, inlinedAt: !3195)
!3209 = !DILocation(line: 139, column: 15, scope: !3210, inlinedAt: !3195)
!3210 = distinct !DILexicalBlock(scope: !3130, file: !496, line: 139, column: 11)
!3211 = !DILocation(line: 139, column: 23, scope: !3210, inlinedAt: !3195)
!3212 = !DILocation(line: 139, column: 26, scope: !3210, inlinedAt: !3195)
!3213 = !DILocation(line: 139, column: 33, scope: !3210, inlinedAt: !3195)
!3214 = !DILocation(line: 139, column: 11, scope: !3130, inlinedAt: !3195)
!3215 = !DILocation(line: 140, column: 9, scope: !3210, inlinedAt: !3195)
!3216 = !DILocation(line: 144, column: 26, scope: !3139, inlinedAt: !3195)
!3217 = !DILocation(line: 144, column: 16, scope: !3139, inlinedAt: !3195)
!3218 = !DILocation(line: 145, column: 16, scope: !3139, inlinedAt: !3195)
!3219 = !DILocation(line: 146, column: 34, scope: !3139, inlinedAt: !3195)
!3220 = !DILocation(line: 146, column: 38, scope: !3139, inlinedAt: !3195)
!3221 = !DILocation(line: 146, column: 42, scope: !3139, inlinedAt: !3195)
!3222 = !DILocation(line: 147, column: 48, scope: !3139, inlinedAt: !3195)
!3223 = !DILocation(line: 147, column: 46, scope: !3139, inlinedAt: !3195)
!3224 = !DILocation(line: 147, column: 69, scope: !3139, inlinedAt: !3195)
!3225 = !DILocation(line: 147, column: 30, scope: !3139, inlinedAt: !3195)
!3226 = !DILocation(line: 134, column: 13, scope: !3130, inlinedAt: !3195)
!3227 = !DILocation(line: 148, column: 13, scope: !3139, inlinedAt: !3195)
!3228 = !DILocation(line: 150, column: 13, scope: !3229, inlinedAt: !3195)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !496, line: 149, column: 11)
!3230 = distinct !DILexicalBlock(scope: !3139, file: !496, line: 148, column: 13)
!3231 = !DILocation(line: 151, column: 17, scope: !3229, inlinedAt: !3195)
!3232 = !DILocation(line: 152, column: 34, scope: !3233, inlinedAt: !3195)
!3233 = distinct !DILexicalBlock(scope: !3229, file: !496, line: 151, column: 17)
!3234 = !DILocation(line: 153, column: 41, scope: !3229, inlinedAt: !3195)
!3235 = !DILocation(line: 153, column: 13, scope: !3229, inlinedAt: !3195)
!3236 = !DILocation(line: 157, column: 11, scope: !3130, inlinedAt: !3195)
!3237 = !DILocation(line: 171, column: 16, scope: !3128, inlinedAt: !3195)
!3238 = !DILocation(line: 162, column: 15, scope: !3128, inlinedAt: !3195)
!3239 = !DILocation(line: 173, column: 18, scope: !3127, inlinedAt: !3195)
!3240 = !DILocation(line: 173, column: 15, scope: !3128, inlinedAt: !3195)
!3241 = !DILocation(line: 180, column: 20, scope: !3126, inlinedAt: !3195)
!3242 = !DILocation(line: 178, column: 21, scope: !3126, inlinedAt: !3195)
!3243 = !DILocation(line: 181, column: 22, scope: !3125, inlinedAt: !3195)
!3244 = !DILocation(line: 181, column: 19, scope: !3126, inlinedAt: !3195)
!3245 = !DILocation(line: 184, column: 19, scope: !3246, inlinedAt: !3195)
!3246 = distinct !DILexicalBlock(scope: !3125, file: !496, line: 182, column: 17)
!3247 = !DILocation(line: 186, column: 17, scope: !3246, inlinedAt: !3195)
!3248 = !DILocation(line: 190, column: 25, scope: !3124, inlinedAt: !3195)
!3249 = !DILocation(line: 191, column: 26, scope: !3124, inlinedAt: !3195)
!3250 = !DILocation(line: 193, column: 19, scope: !3124, inlinedAt: !3195)
!3251 = !DILocation(line: 196, column: 23, scope: !3121, inlinedAt: !3195)
!3252 = !DILocation(line: 197, column: 23, scope: !3121, inlinedAt: !3195)
!3253 = !DILocalVariable(name: "__fp", arg: 1, scope: !3254, file: !3064, line: 63, type: !3144)
!3254 = distinct !DISubprogram(name: "getc_unlocked", scope: !3064, file: !3064, line: 63, type: !3255, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!25, !3144}
!3257 = !{!3253}
!3258 = !DILocation(line: 63, column: 22, scope: !3254, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 201, column: 27, scope: !3121, inlinedAt: !3195)
!3260 = !DILocation(line: 65, column: 10, scope: !3254, inlinedAt: !3259)
!3261 = !{!3070, !583, i64 8}
!3262 = !{!3070, !583, i64 16}
!3263 = !{!"branch_weights", i32 2000, i32 1}
!3264 = !DILocation(line: 195, column: 27, scope: !3121, inlinedAt: !3195)
!3265 = !DILocation(line: 202, column: 27, scope: !3121, inlinedAt: !3195)
!3266 = distinct !{!3266, !3267, !3270}
!3267 = !DILocation(line: 209, column: 27, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !496, line: 207, column: 25)
!3269 = distinct !DILexicalBlock(scope: !3121, file: !496, line: 206, column: 27)
!3270 = !DILocation(line: 211, column: 58, scope: !3268)
!3271 = !DILocation(line: 65, column: 10, scope: !3254, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 210, column: 33, scope: !3268, inlinedAt: !3195)
!3273 = !DILocation(line: 63, column: 22, scope: !3254, inlinedAt: !3272)
!3274 = !DILocation(line: 210, column: 29, scope: !3268, inlinedAt: !3195)
!3275 = distinct !{!3275, !3276, !3277}
!3276 = !DILocation(line: 193, column: 19, scope: !3123)
!3277 = !DILocation(line: 241, column: 21, scope: !3123)
!3278 = !DILocation(line: 216, column: 23, scope: !3121, inlinedAt: !3195)
!3279 = !DILocation(line: 217, column: 27, scope: !3280, inlinedAt: !3195)
!3280 = distinct !DILexicalBlock(scope: !3121, file: !496, line: 217, column: 27)
!3281 = !DILocation(line: 217, column: 64, scope: !3280, inlinedAt: !3195)
!3282 = !DILocation(line: 217, column: 27, scope: !3121, inlinedAt: !3195)
!3283 = !DILocation(line: 219, column: 28, scope: !3121, inlinedAt: !3195)
!3284 = !DILocation(line: 198, column: 30, scope: !3121, inlinedAt: !3195)
!3285 = !DILocation(line: 220, column: 28, scope: !3121, inlinedAt: !3195)
!3286 = !DILocation(line: 198, column: 34, scope: !3121, inlinedAt: !3195)
!3287 = !DILocation(line: 199, column: 29, scope: !3121, inlinedAt: !3195)
!3288 = !DILocation(line: 222, column: 36, scope: !3289, inlinedAt: !3195)
!3289 = distinct !DILexicalBlock(scope: !3121, file: !496, line: 222, column: 27)
!3290 = !DILocation(line: 222, column: 27, scope: !3121, inlinedAt: !3195)
!3291 = !DILocation(line: 225, column: 63, scope: !3292, inlinedAt: !3195)
!3292 = distinct !DILexicalBlock(scope: !3289, file: !496, line: 223, column: 25)
!3293 = !DILocation(line: 225, column: 46, scope: !3292, inlinedAt: !3195)
!3294 = !DILocation(line: 226, column: 25, scope: !3292, inlinedAt: !3195)
!3295 = !DILocation(line: 229, column: 36, scope: !3296, inlinedAt: !3195)
!3296 = distinct !DILexicalBlock(scope: !3289, file: !496, line: 228, column: 25)
!3297 = !DILocation(line: 230, column: 73, scope: !3296, inlinedAt: !3195)
!3298 = !DILocation(line: 230, column: 46, scope: !3296, inlinedAt: !3195)
!3299 = !DILocation(line: 232, column: 35, scope: !3300, inlinedAt: !3195)
!3300 = distinct !DILexicalBlock(scope: !3121, file: !496, line: 232, column: 27)
!3301 = !DILocation(line: 232, column: 27, scope: !3121, inlinedAt: !3195)
!3302 = !DILocation(line: 236, column: 27, scope: !3303, inlinedAt: !3195)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !496, line: 233, column: 25)
!3304 = !DILocation(line: 237, column: 27, scope: !3303, inlinedAt: !3195)
!3305 = !DILocation(line: 241, column: 21, scope: !3122, inlinedAt: !3195)
!3306 = !DILocation(line: 239, column: 39, scope: !3121, inlinedAt: !3195)
!3307 = !DILocation(line: 239, column: 50, scope: !3121, inlinedAt: !3195)
!3308 = !DILocation(line: 239, column: 61, scope: !3121, inlinedAt: !3195)
!3309 = !DILocalVariable(name: "__dest", arg: 1, scope: !3310, file: !3311, line: 88, type: !3314)
!3310 = distinct !DISubprogram(name: "strcpy", scope: !3311, file: !3311, line: 88, type: !3312, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !151, variables: !3316)
!3311 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!50, !3314, !3315}
!3314 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3315 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3316 = !{!3309, !3317}
!3317 = !DILocalVariable(name: "__src", arg: 2, scope: !3310, file: !3311, line: 88, type: !3315)
!3318 = !DILocation(line: 88, column: 1, scope: !3310, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 239, column: 23, scope: !3121, inlinedAt: !3195)
!3320 = !DILocation(line: 90, column: 49, scope: !3310, inlinedAt: !3319)
!3321 = !DILocation(line: 90, column: 10, scope: !3310, inlinedAt: !3319)
!3322 = !DILocation(line: 88, column: 1, scope: !3310, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 240, column: 23, scope: !3121, inlinedAt: !3195)
!3324 = !DILocation(line: 90, column: 49, scope: !3310, inlinedAt: !3323)
!3325 = !DILocation(line: 90, column: 10, scope: !3310, inlinedAt: !3323)
!3326 = !DILocation(line: 193, column: 19, scope: !3122, inlinedAt: !3195)
!3327 = !DILocation(line: 242, column: 19, scope: !3124, inlinedAt: !3195)
!3328 = !DILocation(line: 243, column: 32, scope: !3329, inlinedAt: !3195)
!3329 = distinct !DILexicalBlock(scope: !3124, file: !496, line: 243, column: 23)
!3330 = !DILocation(line: 243, column: 23, scope: !3124, inlinedAt: !3195)
!3331 = !DILocation(line: 247, column: 33, scope: !3332, inlinedAt: !3195)
!3332 = distinct !DILexicalBlock(scope: !3329, file: !496, line: 246, column: 21)
!3333 = !DILocation(line: 247, column: 45, scope: !3332, inlinedAt: !3195)
!3334 = !DILocation(line: 253, column: 11, scope: !3128, inlinedAt: !3195)
!3335 = !DILocation(line: 377, column: 23, scope: !3130, inlinedAt: !3195)
!3336 = !DILocation(line: 378, column: 5, scope: !3130, inlinedAt: !3195)
!3337 = !DILocation(line: 396, column: 15, scope: !3114)
!3338 = !DILocation(line: 590, column: 8, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3196, file: !496, line: 589, column: 3)
!3340 = !DILocation(line: 590, column: 17, scope: !3339)
!3341 = !DILocation(line: 589, column: 3, scope: !3196)
!3342 = !DILocation(line: 592, column: 9, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3339, file: !496, line: 592, column: 9)
!3344 = !DILocation(line: 592, column: 35, scope: !3343)
!3345 = !DILocation(line: 593, column: 9, scope: !3343)
!3346 = !DILocation(line: 593, column: 24, scope: !3343)
!3347 = !DILocation(line: 593, column: 31, scope: !3343)
!3348 = !DILocation(line: 593, column: 34, scope: !3343)
!3349 = !DILocation(line: 593, column: 45, scope: !3343)
!3350 = !DILocation(line: 592, column: 9, scope: !3339)
!3351 = !DILocation(line: 595, column: 29, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3343, file: !496, line: 594, column: 7)
!3353 = !DILocation(line: 595, column: 27, scope: !3352)
!3354 = !DILocation(line: 595, column: 46, scope: !3352)
!3355 = !DILocation(line: 596, column: 9, scope: !3352)
!3356 = !DILocation(line: 591, column: 19, scope: !3339)
!3357 = !DILocation(line: 591, column: 36, scope: !3339)
!3358 = !DILocation(line: 591, column: 16, scope: !3339)
!3359 = !DILocation(line: 591, column: 52, scope: !3339)
!3360 = !DILocation(line: 591, column: 69, scope: !3339)
!3361 = !DILocation(line: 591, column: 49, scope: !3339)
!3362 = distinct !{!3362, !3341, !3363}
!3363 = !DILocation(line: 597, column: 7, scope: !3196)
!3364 = !DILocation(line: 602, column: 7, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3114, file: !496, line: 602, column: 7)
!3366 = !DILocation(line: 602, column: 18, scope: !3365)
!3367 = !DILocation(line: 602, column: 7, scope: !3114)
!3368 = !DILocation(line: 612, column: 3, scope: !3114)
!3369 = distinct !DISubprogram(name: "rpl_fclose", scope: !3370, file: !3370, line: 56, type: !3371, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3413)
!3370 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!25, !3373}
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2496, line: 7, baseType: !3375)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2498, line: 241, size: 1728, elements: !3376)
!3376 = !{!3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3375, file: !2498, line: 242, baseType: !25, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3375, file: !2498, line: 247, baseType: !50, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3375, file: !2498, line: 248, baseType: !50, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3375, file: !2498, line: 249, baseType: !50, size: 64, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3375, file: !2498, line: 250, baseType: !50, size: 64, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3375, file: !2498, line: 251, baseType: !50, size: 64, offset: 320)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3375, file: !2498, line: 252, baseType: !50, size: 64, offset: 384)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3375, file: !2498, line: 253, baseType: !50, size: 64, offset: 448)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3375, file: !2498, line: 254, baseType: !50, size: 64, offset: 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3375, file: !2498, line: 256, baseType: !50, size: 64, offset: 576)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3375, file: !2498, line: 257, baseType: !50, size: 64, offset: 640)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3375, file: !2498, line: 258, baseType: !50, size: 64, offset: 704)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3375, file: !2498, line: 260, baseType: !3390, size: 64, offset: 768)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2498, line: 156, size: 192, elements: !3392)
!3392 = !{!3393, !3394, !3396}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3391, file: !2498, line: 157, baseType: !3390, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3391, file: !2498, line: 158, baseType: !3395, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3391, file: !2498, line: 162, baseType: !25, size: 32, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3375, file: !2498, line: 262, baseType: !3395, size: 64, offset: 832)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3375, file: !2498, line: 264, baseType: !25, size: 32, offset: 896)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3375, file: !2498, line: 268, baseType: !25, size: 32, offset: 928)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3375, file: !2498, line: 270, baseType: !2524, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3375, file: !2498, line: 274, baseType: !93, size: 16, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3375, file: !2498, line: 275, baseType: !2528, size: 8, offset: 1040)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3375, file: !2498, line: 276, baseType: !2530, size: 8, offset: 1048)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3375, file: !2498, line: 280, baseType: !2532, size: 64, offset: 1088)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3375, file: !2498, line: 289, baseType: !2535, size: 64, offset: 1152)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3375, file: !2498, line: 297, baseType: !49, size: 64, offset: 1216)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3375, file: !2498, line: 298, baseType: !49, size: 64, offset: 1280)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3375, file: !2498, line: 299, baseType: !49, size: 64, offset: 1344)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3375, file: !2498, line: 300, baseType: !49, size: 64, offset: 1408)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3375, file: !2498, line: 302, baseType: !94, size: 64, offset: 1472)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3375, file: !2498, line: 303, baseType: !25, size: 32, offset: 1536)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3375, file: !2498, line: 305, baseType: !2543, size: 160, offset: 1568)
!3413 = !{!3414, !3415, !3416, !3417}
!3414 = !DILocalVariable(name: "fp", arg: 1, scope: !3369, file: !3370, line: 56, type: !3373)
!3415 = !DILocalVariable(name: "saved_errno", scope: !3369, file: !3370, line: 58, type: !25)
!3416 = !DILocalVariable(name: "fd", scope: !3369, file: !3370, line: 59, type: !25)
!3417 = !DILocalVariable(name: "result", scope: !3369, file: !3370, line: 60, type: !25)
!3418 = !DILocation(line: 56, column: 19, scope: !3369)
!3419 = !DILocation(line: 58, column: 7, scope: !3369)
!3420 = !DILocation(line: 60, column: 7, scope: !3369)
!3421 = !DILocation(line: 63, column: 8, scope: !3369)
!3422 = !DILocation(line: 59, column: 7, scope: !3369)
!3423 = !DILocation(line: 64, column: 10, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3369, file: !3370, line: 64, column: 7)
!3425 = !DILocation(line: 64, column: 7, scope: !3369)
!3426 = !DILocation(line: 65, column: 12, scope: !3424)
!3427 = !DILocation(line: 65, column: 5, scope: !3424)
!3428 = !DILocation(line: 70, column: 9, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3369, file: !3370, line: 70, column: 7)
!3430 = !DILocation(line: 70, column: 23, scope: !3429)
!3431 = !DILocation(line: 70, column: 33, scope: !3429)
!3432 = !DILocation(line: 70, column: 26, scope: !3429)
!3433 = !DILocation(line: 70, column: 59, scope: !3429)
!3434 = !DILocation(line: 71, column: 7, scope: !3429)
!3435 = !DILocation(line: 71, column: 10, scope: !3429)
!3436 = !DILocation(line: 70, column: 7, scope: !3369)
!3437 = !DILocation(line: 98, column: 12, scope: !3369)
!3438 = !DILocation(line: 103, column: 7, scope: !3369)
!3439 = !DILocation(line: 72, column: 19, scope: !3429)
!3440 = !DILocation(line: 103, column: 19, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3369, file: !3370, line: 103, column: 7)
!3442 = !DILocation(line: 105, column: 13, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3441, file: !3370, line: 104, column: 5)
!3444 = !DILocation(line: 107, column: 5, scope: !3443)
!3445 = !DILocation(line: 110, column: 1, scope: !3369)
!3446 = distinct !DISubprogram(name: "rpl_fflush", scope: !3447, file: !3447, line: 127, type: !3448, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3490)
!3447 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!25, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2496, line: 7, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2498, line: 241, size: 1728, elements: !3453)
!3453 = !{!3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3452, file: !2498, line: 242, baseType: !25, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3452, file: !2498, line: 247, baseType: !50, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3452, file: !2498, line: 248, baseType: !50, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3452, file: !2498, line: 249, baseType: !50, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3452, file: !2498, line: 250, baseType: !50, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3452, file: !2498, line: 251, baseType: !50, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3452, file: !2498, line: 252, baseType: !50, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3452, file: !2498, line: 253, baseType: !50, size: 64, offset: 448)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3452, file: !2498, line: 254, baseType: !50, size: 64, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3452, file: !2498, line: 256, baseType: !50, size: 64, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3452, file: !2498, line: 257, baseType: !50, size: 64, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3452, file: !2498, line: 258, baseType: !50, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3452, file: !2498, line: 260, baseType: !3467, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2498, line: 156, size: 192, elements: !3469)
!3469 = !{!3470, !3471, !3473}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3468, file: !2498, line: 157, baseType: !3467, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3468, file: !2498, line: 158, baseType: !3472, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3468, file: !2498, line: 162, baseType: !25, size: 32, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3452, file: !2498, line: 262, baseType: !3472, size: 64, offset: 832)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3452, file: !2498, line: 264, baseType: !25, size: 32, offset: 896)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3452, file: !2498, line: 268, baseType: !25, size: 32, offset: 928)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3452, file: !2498, line: 270, baseType: !2524, size: 64, offset: 960)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3452, file: !2498, line: 274, baseType: !93, size: 16, offset: 1024)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3452, file: !2498, line: 275, baseType: !2528, size: 8, offset: 1040)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3452, file: !2498, line: 276, baseType: !2530, size: 8, offset: 1048)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3452, file: !2498, line: 280, baseType: !2532, size: 64, offset: 1088)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3452, file: !2498, line: 289, baseType: !2535, size: 64, offset: 1152)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3452, file: !2498, line: 297, baseType: !49, size: 64, offset: 1216)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3452, file: !2498, line: 298, baseType: !49, size: 64, offset: 1280)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3452, file: !2498, line: 299, baseType: !49, size: 64, offset: 1344)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3452, file: !2498, line: 300, baseType: !49, size: 64, offset: 1408)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3452, file: !2498, line: 302, baseType: !94, size: 64, offset: 1472)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3452, file: !2498, line: 303, baseType: !25, size: 32, offset: 1536)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3452, file: !2498, line: 305, baseType: !2543, size: 160, offset: 1568)
!3490 = !{!3491}
!3491 = !DILocalVariable(name: "stream", arg: 1, scope: !3446, file: !3447, line: 127, type: !3450)
!3492 = !DILocation(line: 127, column: 19, scope: !3446)
!3493 = !DILocation(line: 148, column: 14, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3446, file: !3447, line: 148, column: 7)
!3495 = !DILocation(line: 148, column: 22, scope: !3494)
!3496 = !DILocation(line: 148, column: 27, scope: !3494)
!3497 = !DILocation(line: 148, column: 7, scope: !3446)
!3498 = !DILocation(line: 149, column: 12, scope: !3494)
!3499 = !DILocation(line: 149, column: 5, scope: !3494)
!3500 = !DILocalVariable(name: "fp", arg: 1, scope: !3501, file: !3447, line: 40, type: !3450)
!3501 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3447, file: !3447, line: 40, type: !3502, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{null, !3450}
!3504 = !{!3500}
!3505 = !DILocation(line: 40, column: 48, scope: !3501, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 153, column: 3, scope: !3446)
!3507 = !DILocation(line: 42, column: 11, scope: !3508, inlinedAt: !3506)
!3508 = distinct !DILexicalBlock(scope: !3501, file: !3447, line: 42, column: 7)
!3509 = !DILocation(line: 42, column: 18, scope: !3508, inlinedAt: !3506)
!3510 = !DILocation(line: 42, column: 7, scope: !3501, inlinedAt: !3506)
!3511 = !DILocation(line: 44, column: 5, scope: !3508, inlinedAt: !3506)
!3512 = !DILocation(line: 155, column: 10, scope: !3446)
!3513 = !DILocation(line: 155, column: 3, scope: !3446)
!3514 = !DILocation(line: 229, column: 1, scope: !3446)
!3515 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3516, file: !3516, line: 28, type: !3517, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3560)
!3516 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!25, !3519, !3559, !25}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2496, line: 7, baseType: !3521)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2498, line: 241, size: 1728, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3521, file: !2498, line: 242, baseType: !25, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3521, file: !2498, line: 247, baseType: !50, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3521, file: !2498, line: 248, baseType: !50, size: 64, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3521, file: !2498, line: 249, baseType: !50, size: 64, offset: 192)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3521, file: !2498, line: 250, baseType: !50, size: 64, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3521, file: !2498, line: 251, baseType: !50, size: 64, offset: 320)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3521, file: !2498, line: 252, baseType: !50, size: 64, offset: 384)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3521, file: !2498, line: 253, baseType: !50, size: 64, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3521, file: !2498, line: 254, baseType: !50, size: 64, offset: 512)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3521, file: !2498, line: 256, baseType: !50, size: 64, offset: 576)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3521, file: !2498, line: 257, baseType: !50, size: 64, offset: 640)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3521, file: !2498, line: 258, baseType: !50, size: 64, offset: 704)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3521, file: !2498, line: 260, baseType: !3536, size: 64, offset: 768)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2498, line: 156, size: 192, elements: !3538)
!3538 = !{!3539, !3540, !3542}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3537, file: !2498, line: 157, baseType: !3536, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3537, file: !2498, line: 158, baseType: !3541, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3537, file: !2498, line: 162, baseType: !25, size: 32, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3521, file: !2498, line: 262, baseType: !3541, size: 64, offset: 832)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3521, file: !2498, line: 264, baseType: !25, size: 32, offset: 896)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3521, file: !2498, line: 268, baseType: !25, size: 32, offset: 928)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3521, file: !2498, line: 270, baseType: !2524, size: 64, offset: 960)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3521, file: !2498, line: 274, baseType: !93, size: 16, offset: 1024)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3521, file: !2498, line: 275, baseType: !2528, size: 8, offset: 1040)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3521, file: !2498, line: 276, baseType: !2530, size: 8, offset: 1048)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3521, file: !2498, line: 280, baseType: !2532, size: 64, offset: 1088)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3521, file: !2498, line: 289, baseType: !2535, size: 64, offset: 1152)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3521, file: !2498, line: 297, baseType: !49, size: 64, offset: 1216)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3521, file: !2498, line: 298, baseType: !49, size: 64, offset: 1280)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3521, file: !2498, line: 299, baseType: !49, size: 64, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3521, file: !2498, line: 300, baseType: !49, size: 64, offset: 1408)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3521, file: !2498, line: 302, baseType: !94, size: 64, offset: 1472)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3521, file: !2498, line: 303, baseType: !25, size: 32, offset: 1536)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3521, file: !2498, line: 305, baseType: !2543, size: 160, offset: 1568)
!3559 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !752, line: 57, baseType: !2524)
!3560 = !{!3561, !3562, !3563, !3564}
!3561 = !DILocalVariable(name: "fp", arg: 1, scope: !3515, file: !3516, line: 28, type: !3519)
!3562 = !DILocalVariable(name: "offset", arg: 2, scope: !3515, file: !3516, line: 28, type: !3559)
!3563 = !DILocalVariable(name: "whence", arg: 3, scope: !3515, file: !3516, line: 28, type: !25)
!3564 = !DILocalVariable(name: "pos", scope: !3565, file: !3516, line: 116, type: !3559)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !3516, line: 112, column: 5)
!3566 = distinct !DILexicalBlock(scope: !3515, file: !3516, line: 51, column: 7)
!3567 = !DILocation(line: 28, column: 15, scope: !3515)
!3568 = !DILocation(line: 28, column: 25, scope: !3515)
!3569 = !DILocation(line: 28, column: 37, scope: !3515)
!3570 = !DILocation(line: 51, column: 11, scope: !3566)
!3571 = !DILocation(line: 51, column: 31, scope: !3566)
!3572 = !DILocation(line: 51, column: 24, scope: !3566)
!3573 = !DILocation(line: 52, column: 7, scope: !3566)
!3574 = !DILocation(line: 52, column: 14, scope: !3566)
!3575 = !{!3070, !583, i64 40}
!3576 = !DILocation(line: 52, column: 35, scope: !3566)
!3577 = !{!3070, !583, i64 32}
!3578 = !DILocation(line: 52, column: 28, scope: !3566)
!3579 = !DILocation(line: 53, column: 7, scope: !3566)
!3580 = !DILocation(line: 53, column: 14, scope: !3566)
!3581 = !{!3070, !583, i64 72}
!3582 = !DILocation(line: 53, column: 28, scope: !3566)
!3583 = !DILocation(line: 51, column: 7, scope: !3515)
!3584 = !DILocation(line: 116, column: 26, scope: !3565)
!3585 = !DILocation(line: 116, column: 19, scope: !3565)
!3586 = !DILocation(line: 116, column: 13, scope: !3565)
!3587 = !DILocation(line: 117, column: 15, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3565, file: !3516, line: 117, column: 11)
!3589 = !DILocation(line: 117, column: 11, scope: !3565)
!3590 = !DILocation(line: 127, column: 11, scope: !3565)
!3591 = !DILocation(line: 127, column: 18, scope: !3565)
!3592 = !DILocation(line: 128, column: 11, scope: !3565)
!3593 = !DILocation(line: 128, column: 19, scope: !3565)
!3594 = !{!3070, !1813, i64 144}
!3595 = !DILocation(line: 159, column: 7, scope: !3565)
!3596 = !DILocation(line: 161, column: 10, scope: !3515)
!3597 = !DILocation(line: 161, column: 3, scope: !3515)
!3598 = !DILocation(line: 162, column: 1, scope: !3515)
