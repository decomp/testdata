; ModuleID = 'coreutils-8.27/src/printenv.bc'
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
@.str.1 = private unnamed_addr constant [167 x i8] c"Usage: %s [OPTION]... [VARIABLE]...\0APrint the values of the specified environment VARIABLE(s).\0AIf no VARIABLE is specified, print name and value pairs for them all.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"  -0, --null     end each output line with NUL, not newline\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"printenv\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"+iu:0\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@environ = external local_unnamed_addr global i8**, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), align 8, !dbg !48
@.str.15 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !54
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !59
@.str.18 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !63
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !70
@.str.33 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.34 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.35 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.39, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.41, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.45, i32 0, i32 0), i8* null], align 16, !dbg !77
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !122
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !129
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !142
@.str.11.46 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.47 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.48 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.49 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.50 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.51 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !149
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !156
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !144
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !158
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
@.str.16 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.72 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.73 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !164
@.str.1.84 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.95 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.98 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !173
@.str.3.99 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.100 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.101 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.102 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.103 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.104 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !570 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !574, metadata !575), !dbg !576
  %2 = icmp eq i32 %0, 0, !dbg !577
  br i1 %2, label %8, label %3, !dbg !579

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !580, !tbaa !582
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !580
  %6 = load i8*, i8** @program_name, align 8, !dbg !580, !tbaa !582
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !580
  br label %38, !dbg !580

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !586
  %10 = load i8*, i8** @program_name, align 8, !dbg !586, !tbaa !582
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !586
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !588
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !588, !tbaa !582
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !588
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !589
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !582
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !589
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !590
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590, !tbaa !582
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !590
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !591
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !591
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !23, metadata !575) #9, !dbg !592
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !23, metadata !575) #9, !dbg !592
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #9, !dbg !594
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !594
  %25 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !595
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !31, metadata !575) #9, !dbg !596
  %26 = icmp eq i8* %25, null, !dbg !597
  br i1 %26, label %33, label %27, !dbg !599

; <label>:27:                                     ; preds = %8
  %28 = tail call i32 @strncmp(i8* nonnull %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !600
  %29 = icmp eq i32 %28, 0, !dbg !600
  br i1 %29, label %33, label %30, !dbg !601

; <label>:30:                                     ; preds = %27
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 5) #9, !dbg !602
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !602
  br label %33, !dbg !604

; <label>:33:                                     ; preds = %8, %27, %30
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #9, !dbg !605
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !605
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #9, !dbg !606
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !606
  br label %38

; <label>:38:                                     ; preds = %33, %3
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
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !613, metadata !575), !dbg !629
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !614, metadata !575), !dbg !630
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !621, metadata !575), !dbg !631
  %3 = load i8*, i8** %1, align 8, !dbg !632, !tbaa !582
  tail call void @set_program_name(i8* %3) #9, !dbg !633
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !634
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !635
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !636
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !637, metadata !575), !dbg !640
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !642, !tbaa !644
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !646
  br label %8, !dbg !647

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i32 [ 10, %2 ], [ 0, %8 ]
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !648
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !620, metadata !575), !dbg !649
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 48, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !647, !llvm.loop !650

; <label>:11:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !652
  unreachable, !dbg !652

; <label>:12:                                     ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !582
  %14 = load i8*, i8** @Version, align 8, !dbg !655, !tbaa !582
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* null) #9, !dbg !655
  tail call void @exit(i32 0) #15, !dbg !655
  unreachable, !dbg !655

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 2) #16, !dbg !656
  unreachable, !dbg !656

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* @optind, align 4, !dbg !657, !tbaa !644
  %18 = icmp slt i32 %17, %0, !dbg !658
  br i1 %18, label %31, label %19, !dbg !659

; <label>:19:                                     ; preds = %16
  %20 = load i8**, i8*** @environ, align 8, !dbg !660, !tbaa !582
  tail call void @llvm.dbg.value(metadata i8** %20, i64 0, metadata !615, metadata !575), !dbg !663
  tail call void @llvm.dbg.value(metadata i8** %20, i64 0, metadata !615, metadata !575), !dbg !663
  %21 = load i8*, i8** %20, align 8, !dbg !664, !tbaa !582
  %22 = icmp eq i8* %21, null, !dbg !666
  br i1 %22, label %97, label %23, !dbg !667

; <label>:23:                                     ; preds = %19
  br label %24, !dbg !668

; <label>:24:                                     ; preds = %23, %24
  %25 = phi i8* [ %29, %24 ], [ %21, %23 ]
  %26 = phi i8** [ %28, %24 ], [ %20, %23 ]
  tail call void @llvm.dbg.value(metadata i8** %26, i64 0, metadata !615, metadata !575), !dbg !663
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %25, i32 %9) #9, !dbg !668
  %28 = getelementptr inbounds i8*, i8** %26, i64 1, !dbg !669
  tail call void @llvm.dbg.value(metadata i8** %28, i64 0, metadata !615, metadata !575), !dbg !663
  tail call void @llvm.dbg.value(metadata i8** %28, i64 0, metadata !615, metadata !575), !dbg !663
  %29 = load i8*, i8** %28, align 8, !dbg !664, !tbaa !582
  %30 = icmp eq i8* %29, null, !dbg !666
  br i1 %30, label %97, label %24, !dbg !667, !llvm.loop !670

; <label>:31:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !622, metadata !575), !dbg !672
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !618, metadata !575), !dbg !673
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !622, metadata !575), !dbg !672
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !618, metadata !575), !dbg !673
  %32 = sext i32 %17 to i64, !dbg !674
  br label %33, !dbg !674

; <label>:33:                                     ; preds = %87, %31
  %34 = phi i64 [ %32, %31 ], [ %89, %87 ]
  %35 = phi i32 [ 0, %31 ], [ %88, %87 ]
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !625, metadata !575), !dbg !675
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !618, metadata !575), !dbg !673
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !622, metadata !575), !dbg !672
  %36 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !676
  %37 = load i8*, i8** %36, align 8, !dbg !676, !tbaa !582
  %38 = tail call i8* @strchr(i8* %37, i32 61) #14, !dbg !678
  %39 = icmp eq i8* %38, null, !dbg !678
  br i1 %39, label %40, label %87, !dbg !679

; <label>:40:                                     ; preds = %33
  %41 = load i8**, i8*** @environ, align 8, !dbg !680, !tbaa !582
  tail call void @llvm.dbg.value(metadata i8** %41, i64 0, metadata !615, metadata !575), !dbg !663
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !625, metadata !575), !dbg !675
  tail call void @llvm.dbg.value(metadata i8** %41, i64 0, metadata !615, metadata !575), !dbg !663
  %42 = load i8*, i8** %41, align 8, !dbg !682, !tbaa !582
  %43 = icmp eq i8* %42, null, !dbg !684
  br i1 %43, label %82, label %44, !dbg !684

; <label>:44:                                     ; preds = %40
  br label %45, !dbg !685

; <label>:45:                                     ; preds = %44, %77
  %46 = phi i8* [ %80, %77 ], [ %42, %44 ]
  %47 = phi i8 [ %78, %77 ], [ 0, %44 ]
  %48 = phi i8** [ %79, %77 ], [ %41, %44 ]
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !616, metadata !575), !dbg !687
  tail call void @llvm.dbg.value(metadata i8** %48, i64 0, metadata !615, metadata !575), !dbg !663
  tail call void @llvm.dbg.value(metadata i8 %47, i64 0, metadata !625, metadata !575), !dbg !675
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !617, metadata !575), !dbg !688
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !617, metadata !575), !dbg !688
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !616, metadata !575), !dbg !687
  %49 = load i8, i8* %46, align 1, !dbg !685, !tbaa !689
  %50 = icmp eq i8 %49, 0, !dbg !690
  br i1 %50, label %77, label %51, !dbg !691

; <label>:51:                                     ; preds = %45
  %52 = load i8*, i8** %36, align 8, !dbg !692, !tbaa !582
  br label %54, !dbg !691

; <label>:53:                                     ; preds = %69
  br label %54, !dbg !693

; <label>:54:                                     ; preds = %53, %51
  %55 = phi i8 [ %49, %51 ], [ %70, %53 ]
  %56 = phi i8* [ %52, %51 ], [ %67, %53 ]
  %57 = phi i8* [ %46, %51 ], [ %66, %53 ]
  %58 = load i8, i8* %56, align 1, !dbg !693, !tbaa !689
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !616, metadata !575), !dbg !687
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !617, metadata !575), !dbg !688
  %59 = icmp eq i8 %58, 0, !dbg !694
  br i1 %59, label %77, label %60, !dbg !695

; <label>:60:                                     ; preds = %54
  br label %61, !dbg !696

; <label>:61:                                     ; preds = %60, %71
  %62 = phi i8* [ %66, %71 ], [ %57, %60 ]
  %63 = phi i8* [ %67, %71 ], [ %56, %60 ]
  %64 = phi i8 [ 61, %71 ], [ %55, %60 ]
  %65 = phi i8 [ %72, %71 ], [ %58, %60 ]
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !617, metadata !575), !dbg !688
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !616, metadata !575), !dbg !687
  %66 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !696
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !616, metadata !575), !dbg !687
  %67 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !697
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !617, metadata !575), !dbg !688
  %68 = icmp eq i8 %64, %65, !dbg !698
  br i1 %68, label %69, label %77, !dbg !699

; <label>:69:                                     ; preds = %61
  %70 = load i8, i8* %66, align 1, !dbg !700, !tbaa !689
  switch i8 %70, label %53 [
    i8 61, label %71
    i8 0, label %77
  ], !dbg !703

; <label>:71:                                     ; preds = %69
  %72 = load i8, i8* %67, align 1, !dbg !704, !tbaa !689
  %73 = icmp eq i8 %72, 0, !dbg !705
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !617, metadata !575), !dbg !688
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !616, metadata !575), !dbg !687
  br i1 %73, label %74, label %61, !dbg !706

; <label>:74:                                     ; preds = %71
  %75 = getelementptr inbounds i8, i8* %62, i64 2, !dbg !707
  %76 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %75, i32 %9) #9, !dbg !707
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !625, metadata !575), !dbg !675
  br label %77, !dbg !709

; <label>:77:                                     ; preds = %54, %69, %61, %45, %74
  %78 = phi i8 [ 1, %74 ], [ %47, %45 ], [ %47, %61 ], [ %47, %69 ], [ %47, %54 ]
  tail call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !625, metadata !575), !dbg !675
  %79 = getelementptr inbounds i8*, i8** %48, i64 1, !dbg !710
  tail call void @llvm.dbg.value(metadata i8** %79, i64 0, metadata !615, metadata !575), !dbg !663
  tail call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !625, metadata !575), !dbg !675
  tail call void @llvm.dbg.value(metadata i8** %79, i64 0, metadata !615, metadata !575), !dbg !663
  %80 = load i8*, i8** %79, align 8, !dbg !682, !tbaa !582
  %81 = icmp eq i8* %80, null, !dbg !684
  br i1 %81, label %82, label %45, !dbg !684, !llvm.loop !711

; <label>:82:                                     ; preds = %77, %40
  %83 = phi i8 [ 0, %40 ], [ %78, %77 ]
  %84 = and i8 %83, 1, !dbg !713
  %85 = zext i8 %84 to i32, !dbg !713
  %86 = add nsw i32 %35, %85, !dbg !714
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !622, metadata !575), !dbg !672
  br label %87, !dbg !715

; <label>:87:                                     ; preds = %33, %82
  %88 = phi i32 [ %86, %82 ], [ %35, %33 ]
  tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !622, metadata !575), !dbg !672
  %89 = add nsw i64 %34, 1, !dbg !716
  tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !622, metadata !575), !dbg !672
  %90 = trunc i64 %89 to i32, !dbg !717
  %91 = icmp eq i32 %90, %0, !dbg !717
  br i1 %91, label %92, label %33, !dbg !674, !llvm.loop !718

; <label>:92:                                     ; preds = %87
  %93 = load i32, i32* @optind, align 4, !dbg !720, !tbaa !644
  %94 = sub nsw i32 %0, %93, !dbg !721
  %95 = icmp ne i32 %88, %94, !dbg !722
  %96 = zext i1 %95 to i32
  br label %97

; <label>:97:                                     ; preds = %24, %19, %92
  %98 = phi i32 [ %96, %92 ], [ 0, %19 ], [ 0, %24 ]
  ret i32 %98, !dbg !723
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !724 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !726, metadata !575), !dbg !727
  store i8* %0, i8** @file_name, align 8, !dbg !728, !tbaa !582
  ret void, !dbg !729
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !730 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !734, metadata !575), !dbg !735
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !736, !tbaa !737
  ret void, !dbg !739
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !740 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !582
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !748
  %3 = icmp eq i32 %2, 0, !dbg !749
  br i1 %3, label %21, label %4, !dbg !750

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !751, !tbaa !737, !range !752
  %6 = icmp eq i8 %5, 0, !dbg !751
  %7 = tail call i32* @__errno_location() #17, !dbg !753
  br i1 %6, label %11, label %8, !dbg !755

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !756, !tbaa !644
  %10 = icmp eq i32 %9, 32, !dbg !757
  br i1 %10, label %21, label %11, !dbg !758

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 5) #9, !dbg !759
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !744, metadata !575), !dbg !760
  %13 = load i8*, i8** @file_name, align 8, !dbg !761, !tbaa !582
  %14 = icmp eq i8* %13, null, !dbg !761
  %15 = load i32, i32* %7, align 4, !tbaa !644
  br i1 %14, label %18, label %16, !dbg !762

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !763
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.19, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !764
  br label %19, !dbg !764

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.20, i64 0, i64 0), i8* %12) #9, !dbg !765
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !766, !tbaa !644
  tail call void @_exit(i32 %20) #15, !dbg !767
  unreachable, !dbg !767

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !768, !tbaa !582
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !770
  %24 = icmp eq i32 %23, 0, !dbg !771
  br i1 %24, label %27, label %25, !dbg !772

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !773, !tbaa !644
  tail call void @_exit(i32 %26) #15, !dbg !774
  unreachable, !dbg !774

; <label>:27:                                     ; preds = %21
  ret void, !dbg !775
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !776 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !778, metadata !575), !dbg !781
  %2 = icmp eq i8* %0, null, !dbg !782
  br i1 %2, label %3, label %6, !dbg !784

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !785, !tbaa !582
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !787
  tail call void @abort() #15, !dbg !788
  unreachable, !dbg !788

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !789
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !779, metadata !575), !dbg !790
  %8 = icmp eq i8* %7, null, !dbg !791
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !792
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !793
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !780, metadata !575), !dbg !794
  %11 = ptrtoint i8* %10 to i64, !dbg !795
  %12 = ptrtoint i8* %0 to i64, !dbg !795
  %13 = sub i64 %11, %12, !dbg !795
  %14 = icmp sgt i64 %13, 6, !dbg !797
  br i1 %14, label %15, label %24, !dbg !798

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !799
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.34, i64 0, i64 0), i64 7) #14, !dbg !800
  %18 = icmp eq i32 %17, 0, !dbg !801
  br i1 %18, label %19, label %24, !dbg !802

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !778, metadata !575), !dbg !781
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.35, i64 0, i64 0), i64 3) #14, !dbg !803
  %21 = icmp eq i32 %20, 0, !dbg !806
  br i1 %21, label %22, label %24, !dbg !807

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !808
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !778, metadata !575), !dbg !781
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !810, !tbaa !582
  br label %24, !dbg !811

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !778, metadata !575), !dbg !781
  store i8* %25, i8** @program_name, align 8, !dbg !812, !tbaa !582
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !813, !tbaa !582
  ret void, !dbg !814
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !815 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !820, metadata !575), !dbg !823
  %2 = tail call i32* @__errno_location() #17, !dbg !824
  %3 = load i32, i32* %2, align 4, !dbg !824, !tbaa !644
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !821, metadata !575), !dbg !825
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !826
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !826
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !826
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !827
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !827
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !822, metadata !575), !dbg !828
  store i32 %3, i32* %2, align 4, !dbg !829, !tbaa !644
  ret %struct.quoting_options* %8, !dbg !830
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !831 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !837, metadata !575), !dbg !838
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !839
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !839
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !840
  %5 = load i32, i32* %4, align 8, !dbg !840, !tbaa !841
  ret i32 %5, !dbg !843
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !844 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !848, metadata !575), !dbg !850
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !849, metadata !575), !dbg !851
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !852
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !852
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !853
  store i32 %1, i32* %5, align 8, !dbg !854, !tbaa !841
  ret void, !dbg !855
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !856 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !860, metadata !575), !dbg !868
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !861, metadata !575), !dbg !869
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !862, metadata !575), !dbg !870
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !863, metadata !575), !dbg !871
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !872
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !872
  %6 = lshr i8 %1, 5, !dbg !873
  %7 = zext i8 %6 to i64, !dbg !873
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !874
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !864, metadata !575), !dbg !875
  %9 = and i8 %1, 31, !dbg !876
  %10 = zext i8 %9 to i32, !dbg !877
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !866, metadata !575), !dbg !878
  %11 = load i32, i32* %8, align 4, !dbg !879, !tbaa !644
  %12 = lshr i32 %11, %10, !dbg !880
  %13 = and i32 %12, 1, !dbg !881
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !867, metadata !575), !dbg !882
  %14 = and i32 %2, 1, !dbg !883
  %15 = xor i32 %13, %14, !dbg !884
  %16 = shl i32 %15, %10, !dbg !885
  %17 = xor i32 %16, %11, !dbg !886
  store i32 %17, i32* %8, align 4, !dbg !886, !tbaa !644
  ret i32 %13, !dbg !887
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !888 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !892, metadata !575), !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !893, metadata !575), !dbg !896
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !897
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !892, metadata !575), !dbg !895
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !899
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !892, metadata !575), !dbg !895
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !900
  %6 = load i32, i32* %5, align 4, !dbg !900, !tbaa !901
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !894, metadata !575), !dbg !902
  store i32 %1, i32* %5, align 4, !dbg !903, !tbaa !901
  ret i32 %6, !dbg !904
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !905 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !909, metadata !575), !dbg !912
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !910, metadata !575), !dbg !913
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !911, metadata !575), !dbg !914
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !915
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !909, metadata !575), !dbg !912
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !917
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !909, metadata !575), !dbg !912
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !918
  store i32 10, i32* %6, align 8, !dbg !919, !tbaa !841
  %7 = icmp ne i8* %1, null, !dbg !920
  %8 = icmp ne i8* %2, null, !dbg !922
  %9 = and i1 %7, %8, !dbg !923
  br i1 %9, label %11, label %10, !dbg !923

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !924
  unreachable, !dbg !924

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !925
  store i8* %1, i8** %12, align 8, !dbg !926, !tbaa !927
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !928
  store i8* %2, i8** %13, align 8, !dbg !929, !tbaa !930
  ret void, !dbg !931
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !932 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !936, metadata !575), !dbg !944
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !937, metadata !575), !dbg !945
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !938, metadata !575), !dbg !946
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !939, metadata !575), !dbg !947
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !940, metadata !575), !dbg !948
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !949
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !949
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !941, metadata !575), !dbg !950
  %8 = tail call i32* @__errno_location() #17, !dbg !951
  %9 = load i32, i32* %8, align 4, !dbg !951, !tbaa !644
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !942, metadata !575), !dbg !952
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !953
  %11 = load i32, i32* %10, align 8, !dbg !953, !tbaa !841
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !954
  %13 = load i32, i32* %12, align 4, !dbg !954, !tbaa !901
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !955
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !956
  %16 = load i8*, i8** %15, align 8, !dbg !956, !tbaa !927
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !957
  %18 = load i8*, i8** %17, align 8, !dbg !957, !tbaa !930
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !958
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !943, metadata !575), !dbg !959
  store i32 %9, i32* %8, align 4, !dbg !960, !tbaa !644
  ret i64 %19, !dbg !961
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !962 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !968, metadata !575), !dbg !1030
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !969, metadata !575), !dbg !1031
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !970, metadata !575), !dbg !1032
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !971, metadata !575), !dbg !1033
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !972, metadata !575), !dbg !1034
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !973, metadata !575), !dbg !1035
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !974, metadata !575), !dbg !1036
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !975, metadata !575), !dbg !1037
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !976, metadata !575), !dbg !1038
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !978, metadata !575), !dbg !1039
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !979, metadata !575), !dbg !1040
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !980, metadata !575), !dbg !1041
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !981, metadata !575), !dbg !1042
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !982, metadata !575), !dbg !1043
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1044
  %14 = icmp eq i64 %13, 1, !dbg !1045
  %15 = lshr i32 %5, 1, !dbg !1046
  %16 = trunc i32 %15 to i8, !dbg !1046
  %17 = and i8 %16, 1, !dbg !1046
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !984, metadata !575), !dbg !1046
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !985, metadata !575), !dbg !1047
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !986, metadata !575), !dbg !1048
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !987, metadata !575), !dbg !1049
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1050

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !969, metadata !575), !dbg !1031
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !987, metadata !575), !dbg !1049
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !986, metadata !575), !dbg !1048
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !984, metadata !575), !dbg !1046
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !971, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !982, metadata !575), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !981, metadata !575), !dbg !1042
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !980, metadata !575), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !979, metadata !575), !dbg !1040
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !976, metadata !575), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !975, metadata !575), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !972, metadata !575), !dbg !1034
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
  ], !dbg !1051

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !972, metadata !575), !dbg !1034
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !984, metadata !575), !dbg !1046
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !984, metadata !575), !dbg !1046
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !972, metadata !575), !dbg !1034
  br label %94, !dbg !1052

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !984, metadata !575), !dbg !1046
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !972, metadata !575), !dbg !1034
  %43 = and i8 %36, 1, !dbg !1054
  %44 = icmp eq i8 %43, 0, !dbg !1054
  br i1 %44, label %45, label %94, !dbg !1052

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1056
  br i1 %46, label %94, label %47, !dbg !1059

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1056, !tbaa !689
  br label %94, !dbg !1056

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.46, i64 0, i64 0), i32 %28), !dbg !1060
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !975, metadata !575), !dbg !1037
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), i32 %28), !dbg !1064
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !976, metadata !575), !dbg !1038
  br label %51, !dbg !1065

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !976, metadata !575), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !975, metadata !575), !dbg !1037
  %54 = and i8 %36, 1, !dbg !1066
  %55 = icmp eq i8 %54, 0, !dbg !1066
  br i1 %55, label %56, label %72, !dbg !1068

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !980, metadata !575), !dbg !1041
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !980, metadata !575), !dbg !1041
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !978, metadata !575), !dbg !1039
  %57 = load i8, i8* %52, align 1, !dbg !1069, !tbaa !689
  %58 = icmp eq i8 %57, 0, !dbg !1072
  br i1 %58, label %72, label %59, !dbg !1072

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1073

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !980, metadata !575), !dbg !1041
  %64 = icmp ult i64 %63, %40, !dbg !1073
  br i1 %64, label %65, label %67, !dbg !1076

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1073
  store i8 %61, i8* %66, align 1, !dbg !1073, !tbaa !689
  br label %67, !dbg !1073

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !978, metadata !575), !dbg !1039
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1077
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !980, metadata !575), !dbg !1041
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !980, metadata !575), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !978, metadata !575), !dbg !1039
  %70 = load i8, i8* %69, align 1, !dbg !1069, !tbaa !689
  %71 = icmp eq i8 %70, 0, !dbg !1072
  br i1 %71, label %72, label %60, !dbg !1072, !llvm.loop !1078

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !982, metadata !575), !dbg !1043
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !980, metadata !575), !dbg !1041
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !981, metadata !575), !dbg !1042
  br label %94, !dbg !1081

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !982, metadata !575), !dbg !1043
  br label %76, !dbg !1082

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !982, metadata !575), !dbg !1043
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !984, metadata !575), !dbg !1046
  br label %78, !dbg !1083

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !984, metadata !575), !dbg !1046
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !982, metadata !575), !dbg !1043
  %81 = and i8 %80, 1, !dbg !1084
  %82 = icmp eq i8 %81, 0, !dbg !1084
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !982, metadata !575), !dbg !1043
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1086
  br label %84, !dbg !1086

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !984, metadata !575), !dbg !1046
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !982, metadata !575), !dbg !1043
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !972, metadata !575), !dbg !1034
  %87 = and i8 %86, 1, !dbg !1087
  %88 = icmp eq i8 %87, 0, !dbg !1087
  br i1 %88, label %89, label %94, !dbg !1089

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1090
  br i1 %90, label %94, label %91, !dbg !1093

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1090, !tbaa !689
  br label %94, !dbg !1090

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !984, metadata !575), !dbg !1046
  br label %94, !dbg !1094

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1095
  unreachable, !dbg !1095

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !984, metadata !575), !dbg !1046
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !982, metadata !575), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !981, metadata !575), !dbg !1042
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !980, metadata !575), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !976, metadata !575), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !975, metadata !575), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !972, metadata !575), !dbg !1034
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !977, metadata !575), !dbg !1096
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
  br label %122, !dbg !1097

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !969, metadata !575), !dbg !1031
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !987, metadata !575), !dbg !1049
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !986, metadata !575), !dbg !1048
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !971, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !979, metadata !575), !dbg !1040
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !977, metadata !575), !dbg !1096
  %131 = icmp eq i64 %126, -1, !dbg !1098
  br i1 %131, label %134, label %132, !dbg !1099

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1100
  br i1 %133, label %590, label %138, !dbg !1101

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1102
  %136 = load i8, i8* %135, align 1, !dbg !1102, !tbaa !689
  %137 = icmp eq i8 %136, 0, !dbg !1103
  br i1 %137, label %590, label %138, !dbg !1101

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !993, metadata !575), !dbg !1104
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !994, metadata !575), !dbg !1105
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !995, metadata !575), !dbg !1106
  br i1 %108, label %139, label %154, !dbg !1107

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1109
  %141 = and i1 %109, %131, !dbg !1110
  br i1 %141, label %142, label %144, !dbg !1110

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !971, metadata !575), !dbg !1033
  br label %144, !dbg !1112

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !971, metadata !575), !dbg !1033
  %146 = icmp ugt i64 %140, %145, !dbg !1113
  br i1 %146, label %154, label %147, !dbg !1114

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1115
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1116
  %150 = icmp ne i32 %149, 0, !dbg !1117
  %151 = or i1 %150, %111, !dbg !1118
  %152 = xor i1 %150, true, !dbg !1118
  %153 = zext i1 %152 to i8, !dbg !1118
  br i1 %151, label %154, label %635, !dbg !1118

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !993, metadata !575), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !971, metadata !575), !dbg !1033
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1119
  %158 = load i8, i8* %157, align 1, !dbg !1119, !tbaa !689
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !988, metadata !575), !dbg !1120
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
  ], !dbg !1121

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1122

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1123

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !994, metadata !575), !dbg !1105
  %162 = and i8 %127, 1, !dbg !1127
  %163 = icmp eq i8 %162, 0, !dbg !1127
  %164 = and i1 %113, %163, !dbg !1127
  br i1 %164, label %165, label %181, !dbg !1127

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1129
  br i1 %166, label %167, label %169, !dbg !1133

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1129
  store i8 39, i8* %168, align 1, !dbg !1129, !tbaa !689
  br label %169, !dbg !1129

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !978, metadata !575), !dbg !1039
  %171 = icmp ult i64 %170, %130, !dbg !1134
  br i1 %171, label %172, label %174, !dbg !1137

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1134
  store i8 36, i8* %173, align 1, !dbg !1134, !tbaa !689
  br label %174, !dbg !1134

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1137
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !978, metadata !575), !dbg !1039
  %176 = icmp ult i64 %175, %130, !dbg !1138
  br i1 %176, label %177, label %179, !dbg !1141

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1138
  store i8 39, i8* %178, align 1, !dbg !1138, !tbaa !689
  br label %179, !dbg !1138

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1141
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !985, metadata !575), !dbg !1047
  br label %181, !dbg !1142

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !978, metadata !575), !dbg !1039
  %184 = icmp ult i64 %182, %130, !dbg !1143
  br i1 %184, label %185, label %187, !dbg !1146

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1143
  store i8 92, i8* %186, align 1, !dbg !1143, !tbaa !689
  br label %187, !dbg !1143

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !978, metadata !575), !dbg !1039
  br i1 %105, label %189, label %470, !dbg !1147

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1149
  %191 = icmp ult i64 %190, %155, !dbg !1150
  br i1 %191, label %192, label %470, !dbg !1151

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1152
  %194 = load i8, i8* %193, align 1, !dbg !1152, !tbaa !689
  %195 = add i8 %194, -48, !dbg !1153
  %196 = icmp ult i8 %195, 10, !dbg !1153
  br i1 %196, label %197, label %470, !dbg !1153

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1154
  br i1 %198, label %199, label %201, !dbg !1158

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1154
  store i8 48, i8* %200, align 1, !dbg !1154, !tbaa !689
  br label %201, !dbg !1154

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !978, metadata !575), !dbg !1039
  %203 = icmp ult i64 %202, %130, !dbg !1159
  br i1 %203, label %204, label %206, !dbg !1162

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1159
  store i8 48, i8* %205, align 1, !dbg !1159, !tbaa !689
  br label %206, !dbg !1159

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !978, metadata !575), !dbg !1039
  br label %470, !dbg !1163

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1164

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1165

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1166

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1168

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1170
  %214 = icmp ult i64 %213, %155, !dbg !1171
  br i1 %214, label %215, label %470, !dbg !1172

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1173
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1174
  %218 = load i8, i8* %217, align 1, !dbg !1174, !tbaa !689
  %219 = icmp eq i8 %218, 63, !dbg !1175
  br i1 %219, label %220, label %470, !dbg !1176

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1177
  %222 = load i8, i8* %221, align 1, !dbg !1177, !tbaa !689
  %223 = sext i8 %222 to i32, !dbg !1177
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
  ], !dbg !1178

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1179

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !988, metadata !575), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !977, metadata !575), !dbg !1096
  %226 = icmp ult i64 %124, %130, !dbg !1181
  br i1 %226, label %227, label %229, !dbg !1184

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1181
  store i8 63, i8* %228, align 1, !dbg !1181, !tbaa !689
  br label %229, !dbg !1181

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !978, metadata !575), !dbg !1039
  %231 = icmp ult i64 %230, %130, !dbg !1185
  br i1 %231, label %232, label %234, !dbg !1188

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1185
  store i8 34, i8* %233, align 1, !dbg !1185, !tbaa !689
  br label %234, !dbg !1185

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1188
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !978, metadata !575), !dbg !1039
  %236 = icmp ult i64 %235, %130, !dbg !1189
  br i1 %236, label %237, label %239, !dbg !1192

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1189
  store i8 34, i8* %238, align 1, !dbg !1189, !tbaa !689
  br label %239, !dbg !1189

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !978, metadata !575), !dbg !1039
  %241 = icmp ult i64 %240, %130, !dbg !1193
  br i1 %241, label %242, label %244, !dbg !1196

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1193
  store i8 63, i8* %243, align 1, !dbg !1193, !tbaa !689
  br label %244, !dbg !1193

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !978, metadata !575), !dbg !1039
  br label %470, !dbg !1197

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !992, metadata !575), !dbg !1198
  br label %256, !dbg !1199

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !992, metadata !575), !dbg !1198
  br label %256, !dbg !1200

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !992, metadata !575), !dbg !1198
  br label %254, !dbg !1201

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !992, metadata !575), !dbg !1198
  br label %254, !dbg !1202

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !992, metadata !575), !dbg !1198
  br label %256, !dbg !1203

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !992, metadata !575), !dbg !1198
  br i1 %113, label %252, label %253, !dbg !1204

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1205

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1208

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !992, metadata !575), !dbg !1198
  br i1 %117, label %256, label %635, !dbg !1210

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !992, metadata !575), !dbg !1198
  br i1 %104, label %497, label %470, !dbg !1212

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1213
  br i1 %259, label %260, label %265, !dbg !1215

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1216, !tbaa !689
  %262 = icmp ne i8 %261, 0, !dbg !1217
  %263 = icmp ne i64 %123, 0, !dbg !1218
  %264 = or i1 %263, %262, !dbg !1220
  br i1 %264, label %470, label %271, !dbg !1220

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1221
  %267 = icmp ne i64 %123, 0, !dbg !1218
  %268 = or i1 %267, %266, !dbg !1215
  br i1 %268, label %470, label %271, !dbg !1215

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1218
  br i1 %270, label %271, label %470, !dbg !1222

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !995, metadata !575), !dbg !1106
  br label %272, !dbg !1223

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !995, metadata !575), !dbg !1106
  br i1 %117, label %470, label %635, !dbg !1224

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !986, metadata !575), !dbg !1048
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !995, metadata !575), !dbg !1106
  br i1 %113, label %275, label %470, !dbg !1226

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1227

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1230
  %278 = icmp ne i64 %125, 0, !dbg !1232
  %279 = or i1 %278, %277, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !979, metadata !575), !dbg !1040
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !969, metadata !575), !dbg !1031
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1233
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !969, metadata !575), !dbg !1031
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !979, metadata !575), !dbg !1040
  %282 = icmp ult i64 %124, %281, !dbg !1234
  br i1 %282, label %283, label %285, !dbg !1237

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1234
  store i8 39, i8* %284, align 1, !dbg !1234, !tbaa !689
  br label %285, !dbg !1234

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !978, metadata !575), !dbg !1039
  %287 = icmp ult i64 %286, %281, !dbg !1238
  br i1 %287, label %288, label %290, !dbg !1241

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1238
  store i8 92, i8* %289, align 1, !dbg !1238, !tbaa !689
  br label %290, !dbg !1238

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !978, metadata !575), !dbg !1039
  %292 = icmp ult i64 %291, %281, !dbg !1242
  br i1 %292, label %293, label %295, !dbg !1245

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1242
  store i8 39, i8* %294, align 1, !dbg !1242, !tbaa !689
  br label %295, !dbg !1242

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !985, metadata !575), !dbg !1047
  br label %470, !dbg !1246

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1247

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !996, metadata !575), !dbg !1248
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1249
  %300 = load i16*, i16** %299, align 8, !dbg !1249, !tbaa !582
  %301 = zext i8 %158 to i64, !dbg !1249
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1249
  %303 = load i16, i16* %302, align 2, !dbg !1249, !tbaa !1251
  %304 = lshr i16 %303, 14, !dbg !1253
  %305 = trunc i16 %304 to i8, !dbg !1253
  %306 = and i8 %305, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !999, metadata !575), !dbg !1254
  br label %362, !dbg !1255

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1256
  store i64 0, i64* %10, align 8, !dbg !1257
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !996, metadata !575), !dbg !1248
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !999, metadata !575), !dbg !1254
  %308 = icmp eq i64 %155, -1, !dbg !1258
  br i1 %308, label %309, label %311, !dbg !1260

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !971, metadata !575), !dbg !1033
  br label %311, !dbg !1262

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !971, metadata !575), !dbg !1033
  br label %313, !dbg !1263, !llvm.loop !1264

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !999, metadata !575), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !996, metadata !575), !dbg !1248
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1266
  %316 = add i64 %314, %123, !dbg !1267
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1268
  %318 = sub i64 %312, %316, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1000, metadata !575), !dbg !1270
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1016, metadata !575), !dbg !1271
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #9, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1019, metadata !575), !dbg !1273
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1274

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !999, metadata !575), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !996, metadata !575), !dbg !1248
  %321 = icmp ugt i64 %312, %316, !dbg !1275
  br i1 %321, label %322, label %347, !dbg !1277

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1278

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !996, metadata !575), !dbg !1248
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1278
  %327 = load i8, i8* %326, align 1, !dbg !1278, !tbaa !689
  %328 = icmp eq i8 %327, 0, !dbg !1277
  br i1 %328, label %347, label %329, !dbg !1279

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !996, metadata !575), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !996, metadata !575), !dbg !1248
  %331 = add i64 %330, %123, !dbg !1281
  %332 = icmp ult i64 %331, %312, !dbg !1275
  br i1 %332, label %323, label %347, !dbg !1277, !llvm.loop !1282

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1283
  %335 = and i1 %115, %334, !dbg !1286
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1020, metadata !575), !dbg !1287
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1020, metadata !575), !dbg !1287
  br i1 %335, label %336, label %350, !dbg !1286

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1288

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1020, metadata !575), !dbg !1287
  %339 = add i64 %338, %316, !dbg !1288
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1289
  %341 = load i8, i8* %340, align 1, !dbg !1289, !tbaa !689
  %342 = sext i8 %341 to i32, !dbg !1289
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1290

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1020, metadata !575), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1020, metadata !575), !dbg !1287
  %345 = icmp ult i64 %344, %319, !dbg !1283
  br i1 %345, label %337, label %350, !dbg !1292, !llvm.loop !1293

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1295

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !999, metadata !575), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !996, metadata !575), !dbg !1248
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1295
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1296, !tbaa !644
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1016, metadata !575), !dbg !1271
  %352 = call i32 @iswprint(i32 %351) #9, !dbg !1298
  %353 = icmp eq i32 %352, 0, !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !999, metadata !575), !dbg !1254
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1299
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !999, metadata !575), !dbg !1254
  %355 = add i64 %319, %314, !dbg !1300
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !996, metadata !575), !dbg !1248
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !999, metadata !575), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !996, metadata !575), !dbg !1248
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1295
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1000, metadata !575), !dbg !1270
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1301
  %357 = icmp eq i32 %356, 0, !dbg !1302
  br i1 %357, label %313, label %358, !dbg !1303, !llvm.loop !1264

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1304
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !999, metadata !575), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !996, metadata !575), !dbg !1248
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1295
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1304
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !999, metadata !575), !dbg !1254
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !996, metadata !575), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !971, metadata !575), !dbg !1033
  %366 = and i8 %365, 1, !dbg !1305
  %367 = icmp ne i8 %366, 0, !dbg !1305
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !995, metadata !575), !dbg !1106
  %368 = icmp ult i64 %364, 2, !dbg !1306
  %369 = or i1 %367, %112, !dbg !1307
  %370 = and i1 %368, %369, !dbg !1308
  br i1 %370, label %470, label %371, !dbg !1308

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1027, metadata !575), !dbg !1310
  br label %373, !dbg !1311

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !994, metadata !575), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !993, metadata !575), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !988, metadata !575), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !977, metadata !575), !dbg !1096
  br i1 %369, label %426, label %380, !dbg !1312

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1317

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !994, metadata !575), !dbg !1105
  %382 = and i8 %376, 1, !dbg !1320
  %383 = icmp eq i8 %382, 0, !dbg !1320
  %384 = and i1 %113, %383, !dbg !1320
  br i1 %384, label %385, label %401, !dbg !1320

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1322
  br i1 %386, label %387, label %389, !dbg !1326

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1322
  store i8 39, i8* %388, align 1, !dbg !1322, !tbaa !689
  br label %389, !dbg !1322

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !978, metadata !575), !dbg !1039
  %391 = icmp ult i64 %390, %130, !dbg !1327
  br i1 %391, label %392, label %394, !dbg !1330

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1327
  store i8 36, i8* %393, align 1, !dbg !1327, !tbaa !689
  br label %394, !dbg !1327

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !978, metadata !575), !dbg !1039
  %396 = icmp ult i64 %395, %130, !dbg !1331
  br i1 %396, label %397, label %399, !dbg !1334

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1331
  store i8 39, i8* %398, align 1, !dbg !1331, !tbaa !689
  br label %399, !dbg !1331

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !985, metadata !575), !dbg !1047
  br label %401, !dbg !1335

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !978, metadata !575), !dbg !1039
  %404 = icmp ult i64 %402, %130, !dbg !1336
  br i1 %404, label %405, label %407, !dbg !1339

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1336
  store i8 92, i8* %406, align 1, !dbg !1336, !tbaa !689
  br label %407, !dbg !1336

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !978, metadata !575), !dbg !1039
  %409 = icmp ult i64 %408, %130, !dbg !1340
  br i1 %409, label %410, label %414, !dbg !1343

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1340
  %412 = or i8 %411, 48, !dbg !1340
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1340
  store i8 %412, i8* %413, align 1, !dbg !1340, !tbaa !689
  br label %414, !dbg !1340

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !978, metadata !575), !dbg !1039
  %416 = icmp ult i64 %415, %130, !dbg !1344
  br i1 %416, label %417, label %422, !dbg !1347

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1344
  %419 = and i8 %418, 7, !dbg !1344
  %420 = or i8 %419, 48, !dbg !1344
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1344
  store i8 %420, i8* %421, align 1, !dbg !1344, !tbaa !689
  br label %422, !dbg !1344

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !978, metadata !575), !dbg !1039
  %424 = and i8 %377, 7, !dbg !1348
  %425 = or i8 %424, 48, !dbg !1349
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !988, metadata !575), !dbg !1120
  br label %435, !dbg !1350

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1351
  %428 = icmp eq i8 %427, 0, !dbg !1351
  br i1 %428, label %435, label %429, !dbg !1353

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1354
  br i1 %430, label %431, label %433, !dbg !1358

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1354
  store i8 92, i8* %432, align 1, !dbg !1354, !tbaa !689
  br label %433, !dbg !1354

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !993, metadata !575), !dbg !1104
  br label %435, !dbg !1359

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !994, metadata !575), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !993, metadata !575), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !988, metadata !575), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !978, metadata !575), !dbg !1039
  %441 = add i64 %374, 1, !dbg !1360
  %442 = icmp ugt i64 %372, %441, !dbg !1362
  br i1 %442, label %443, label %535, !dbg !1363

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1364
  %445 = icmp ne i8 %444, 0, !dbg !1364
  %446 = and i8 %440, 1, !dbg !1364
  %447 = icmp eq i8 %446, 0, !dbg !1364
  %448 = and i1 %445, %447, !dbg !1364
  br i1 %448, label %449, label %460, !dbg !1364

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1367
  br i1 %450, label %451, label %453, !dbg !1371

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1367
  store i8 39, i8* %452, align 1, !dbg !1367, !tbaa !689
  br label %453, !dbg !1367

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !978, metadata !575), !dbg !1039
  %455 = icmp ult i64 %454, %130, !dbg !1372
  br i1 %455, label %456, label %458, !dbg !1375

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1372
  store i8 39, i8* %457, align 1, !dbg !1372, !tbaa !689
  br label %458, !dbg !1372

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !985, metadata !575), !dbg !1047
  br label %460, !dbg !1376

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !978, metadata !575), !dbg !1039
  %463 = icmp ult i64 %461, %130, !dbg !1377
  br i1 %463, label %464, label %466, !dbg !1380

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1377
  store i8 %438, i8* %465, align 1, !dbg !1377, !tbaa !689
  br label %466, !dbg !1377

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !977, metadata !575), !dbg !1096
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1381
  %469 = load i8, i8* %468, align 1, !dbg !1381, !tbaa !689
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !988, metadata !575), !dbg !1120
  br label %373, !dbg !1382, !llvm.loop !1383

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !969, metadata !575), !dbg !1031
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !995, metadata !575), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !994, metadata !575), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !993, metadata !575), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !988, metadata !575), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !986, metadata !575), !dbg !1048
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !971, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !979, metadata !575), !dbg !1040
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !977, metadata !575), !dbg !1096
  br i1 %106, label %482, label %481, !dbg !1386

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1388

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1389

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1390
  %485 = zext i8 %484 to i64, !dbg !1390
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1391
  %487 = load i32, i32* %486, align 4, !dbg !1391, !tbaa !644
  %488 = and i8 %477, 31, !dbg !1392
  %489 = zext i8 %488 to i32, !dbg !1393
  %490 = shl i32 1, %489, !dbg !1394
  %491 = and i32 %487, %490, !dbg !1394
  %492 = icmp eq i32 %491, 0, !dbg !1394
  %493 = icmp eq i8 %156, 0, !dbg !1395
  %494 = and i1 %493, %492, !dbg !1396
  br i1 %494, label %535, label %497, !dbg !1396

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1395
  br i1 %496, label %535, label %497, !dbg !1397

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !969, metadata !575), !dbg !1031
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !995, metadata !575), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !988, metadata !575), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !986, metadata !575), !dbg !1048
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !971, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !979, metadata !575), !dbg !1040
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !977, metadata !575), !dbg !1096
  br i1 %111, label %507, label %635, !dbg !1398

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !994, metadata !575), !dbg !1105
  %508 = and i8 %502, 1, !dbg !1400
  %509 = icmp eq i8 %508, 0, !dbg !1400
  %510 = and i1 %113, %509, !dbg !1400
  br i1 %510, label %511, label %527, !dbg !1400

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1402
  br i1 %512, label %513, label %515, !dbg !1406

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1402
  store i8 39, i8* %514, align 1, !dbg !1402, !tbaa !689
  br label %515, !dbg !1402

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !978, metadata !575), !dbg !1039
  %517 = icmp ult i64 %516, %506, !dbg !1407
  br i1 %517, label %518, label %520, !dbg !1410

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1407
  store i8 36, i8* %519, align 1, !dbg !1407, !tbaa !689
  br label %520, !dbg !1407

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !978, metadata !575), !dbg !1039
  %522 = icmp ult i64 %521, %506, !dbg !1411
  br i1 %522, label %523, label %525, !dbg !1414

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1411
  store i8 39, i8* %524, align 1, !dbg !1411, !tbaa !689
  br label %525, !dbg !1411

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !985, metadata !575), !dbg !1047
  br label %527, !dbg !1415

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !978, metadata !575), !dbg !1039
  %530 = icmp ult i64 %528, %506, !dbg !1416
  br i1 %530, label %531, label %533, !dbg !1419

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1416
  store i8 92, i8* %532, align 1, !dbg !1416, !tbaa !689
  br label %533, !dbg !1416

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !969, metadata !575), !dbg !1031
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !995, metadata !575), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !994, metadata !575), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !988, metadata !575), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !986, metadata !575), !dbg !1048
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !971, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !979, metadata !575), !dbg !1040
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !977, metadata !575), !dbg !1096
  br label %562, !dbg !1420

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !969, metadata !575), !dbg !1031
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !995, metadata !575), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !994, metadata !575), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !988, metadata !575), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !986, metadata !575), !dbg !1048
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !971, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !979, metadata !575), !dbg !1040
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !977, metadata !575), !dbg !1096
  %546 = and i8 %540, 1, !dbg !1420
  %547 = icmp ne i8 %546, 0, !dbg !1420
  %548 = and i8 %543, 1, !dbg !1420
  %549 = icmp eq i8 %548, 0, !dbg !1420
  %550 = and i1 %547, %549, !dbg !1420
  br i1 %550, label %551, label %562, !dbg !1420

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1423
  br i1 %552, label %553, label %555, !dbg !1427

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1423
  store i8 39, i8* %554, align 1, !dbg !1423, !tbaa !689
  br label %555, !dbg !1423

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !978, metadata !575), !dbg !1039
  %557 = icmp ult i64 %556, %545, !dbg !1428
  br i1 %557, label %558, label %560, !dbg !1431

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1428
  store i8 39, i8* %559, align 1, !dbg !1428, !tbaa !689
  br label %560, !dbg !1428

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !985, metadata !575), !dbg !1047
  br label %562, !dbg !1432

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !978, metadata !575), !dbg !1039
  %572 = icmp ult i64 %570, %563, !dbg !1433
  br i1 %572, label %573, label %575, !dbg !1436

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1433
  store i8 %565, i8* %574, align 1, !dbg !1433, !tbaa !689
  br label %575, !dbg !1433

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !978, metadata !575), !dbg !1039
  %577 = and i8 %564, 1, !dbg !1437
  %578 = icmp eq i8 %577, 0, !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !987, metadata !575), !dbg !1049
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1439
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !987, metadata !575), !dbg !1049
  br label %580, !dbg !1440

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !969, metadata !575), !dbg !1031
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !987, metadata !575), !dbg !1049
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !986, metadata !575), !dbg !1048
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !985, metadata !575), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !971, metadata !575), !dbg !1033
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !979, metadata !575), !dbg !1040
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !977, metadata !575), !dbg !1096
  %589 = add i64 %581, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !977, metadata !575), !dbg !1096
  br label %122, !dbg !1442, !llvm.loop !1443

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1445
  %593 = and i1 %113, %592, !dbg !1447
  %594 = xor i1 %593, true, !dbg !1447
  %595 = or i1 %111, %594, !dbg !1447
  br i1 %595, label %596, label %635, !dbg !1447

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1448
  %598 = xor i1 %597, true, !dbg !1448
  %599 = and i8 %128, 1, !dbg !1450
  %600 = icmp eq i8 %599, 0, !dbg !1450
  %601 = or i1 %600, %598, !dbg !1448
  br i1 %601, label %611, label %602, !dbg !1448

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1451
  %604 = icmp eq i8 %603, 0, !dbg !1451
  br i1 %604, label %607, label %605, !dbg !1454

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1455
  br label %645, !dbg !1456

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1457
  %609 = icmp ne i64 %125, 0, !dbg !1459
  %610 = and i1 %609, %608, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !969, metadata !575), !dbg !1031
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !978, metadata !575), !dbg !1039
  br i1 %610, label %27, label %611, !dbg !1460

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1461
  %613 = and i1 %612, %111, !dbg !1463
  br i1 %613, label %614, label %630, !dbg !1463

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !980, metadata !575), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !978, metadata !575), !dbg !1039
  %615 = load i8, i8* %99, align 1, !dbg !1464, !tbaa !689
  %616 = icmp eq i8 %615, 0, !dbg !1467
  br i1 %616, label %630, label %617, !dbg !1467

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1468

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !978, metadata !575), !dbg !1039
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !980, metadata !575), !dbg !1041
  %622 = icmp ult i64 %621, %130, !dbg !1468
  br i1 %622, label %623, label %625, !dbg !1471

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1468
  store i8 %619, i8* %624, align 1, !dbg !1468, !tbaa !689
  br label %625, !dbg !1468

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1471
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !978, metadata !575), !dbg !1039
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !980, metadata !575), !dbg !1041
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !980, metadata !575), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !978, metadata !575), !dbg !1039
  %628 = load i8, i8* %627, align 1, !dbg !1464, !tbaa !689
  %629 = icmp eq i8 %628, 0, !dbg !1467
  br i1 %629, label %630, label %618, !dbg !1467, !llvm.loop !1473

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !978, metadata !575), !dbg !1039
  %632 = icmp ult i64 %631, %130, !dbg !1475
  br i1 %632, label %633, label %645, !dbg !1477

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1478
  store i8 0, i8* %634, align 1, !dbg !1479, !tbaa !689
  br label %645, !dbg !1478

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !969, metadata !575), !dbg !1031
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !971, metadata !575), !dbg !1033
  %639 = icmp ne i32 %636, 2, !dbg !1480
  %640 = icmp eq i8 %103, 0, !dbg !1482
  %641 = or i1 %639, %640, !dbg !1483
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !972, metadata !575), !dbg !1034
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1483
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !972, metadata !575), !dbg !1034
  %643 = and i32 %5, -3, !dbg !1484
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1485
  br label %645, !dbg !1486

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1487
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1488 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1492, metadata !575), !dbg !1496
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1493, metadata !575), !dbg !1497
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1498
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1494, metadata !575), !dbg !1499
  %4 = icmp eq i8* %3, %0, !dbg !1500
  br i1 %4, label %5, label %75, !dbg !1502

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1503
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1495, metadata !575), !dbg !1504
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1505, metadata !575), !dbg !1521
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1519, metadata !575), !dbg !1524
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1520, metadata !575), !dbg !1525
  %7 = load i8, i8* %6, align 1, !dbg !1526, !tbaa !689
  %8 = sext i8 %7 to i32, !dbg !1526
  %9 = and i32 %8, -33, !dbg !1526
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1526

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1528, metadata !575), !dbg !1542
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1540, metadata !575), !dbg !1546
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1541, metadata !575), !dbg !1547
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1548
  %12 = load i8, i8* %11, align 1, !dbg !1548, !tbaa !689
  %13 = sext i8 %12 to i32, !dbg !1548
  %14 = and i32 %13, -33, !dbg !1548
  %15 = icmp eq i32 %14, 84, !dbg !1548
  br i1 %15, label %16, label %72, !dbg !1548

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1550, metadata !575), !dbg !1563
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1561, metadata !575), !dbg !1567
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1562, metadata !575), !dbg !1568
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1569
  %18 = load i8, i8* %17, align 1, !dbg !1569, !tbaa !689
  %19 = sext i8 %18 to i32, !dbg !1569
  %20 = and i32 %19, -33, !dbg !1569
  %21 = icmp eq i32 %20, 70, !dbg !1569
  br i1 %21, label %22, label %72, !dbg !1569

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1571, metadata !575), !dbg !1583
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1581, metadata !575), !dbg !1587
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1582, metadata !575), !dbg !1588
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1589
  %24 = load i8, i8* %23, align 1, !dbg !1589, !tbaa !689
  %25 = icmp eq i8 %24, 45, !dbg !1589
  br i1 %25, label %26, label %72, !dbg !1591

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1592, metadata !575), !dbg !1603
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1601, metadata !575), !dbg !1607
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1602, metadata !575), !dbg !1608
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1609
  %28 = load i8, i8* %27, align 1, !dbg !1609, !tbaa !689
  %29 = icmp eq i8 %28, 56, !dbg !1609
  br i1 %29, label %30, label %72, !dbg !1611

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1612, metadata !575), !dbg !1622
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1620, metadata !575), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1621, metadata !575), !dbg !1627
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1628
  %32 = load i8, i8* %31, align 1, !dbg !1628, !tbaa !689
  %33 = icmp eq i8 %32, 0, !dbg !1628
  br i1 %33, label %34, label %72, !dbg !1630

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1631, !tbaa !689
  %36 = icmp eq i8 %35, 96, !dbg !1632
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.49, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.50, i64 0, i64 0), !dbg !1631
  br label %75, !dbg !1633

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1528, metadata !575), !dbg !1634
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1540, metadata !575), !dbg !1638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1541, metadata !575), !dbg !1639
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1640
  %40 = load i8, i8* %39, align 1, !dbg !1640, !tbaa !689
  %41 = sext i8 %40 to i32, !dbg !1640
  %42 = and i32 %41, -33, !dbg !1640
  %43 = icmp eq i32 %42, 66, !dbg !1640
  br i1 %43, label %44, label %72, !dbg !1640

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1550, metadata !575), !dbg !1641
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1561, metadata !575), !dbg !1643
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1562, metadata !575), !dbg !1644
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1645
  %46 = load i8, i8* %45, align 1, !dbg !1645, !tbaa !689
  %47 = icmp eq i8 %46, 49, !dbg !1645
  br i1 %47, label %48, label %72, !dbg !1646

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1571, metadata !575), !dbg !1647
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1581, metadata !575), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1582, metadata !575), !dbg !1650
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1651
  %50 = load i8, i8* %49, align 1, !dbg !1651, !tbaa !689
  %51 = icmp eq i8 %50, 56, !dbg !1651
  br i1 %51, label %52, label %72, !dbg !1652

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1592, metadata !575), !dbg !1653
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1601, metadata !575), !dbg !1655
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1602, metadata !575), !dbg !1656
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1657
  %54 = load i8, i8* %53, align 1, !dbg !1657, !tbaa !689
  %55 = icmp eq i8 %54, 48, !dbg !1657
  br i1 %55, label %56, label %72, !dbg !1658

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1612, metadata !575), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1620, metadata !575), !dbg !1661
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1621, metadata !575), !dbg !1662
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1663
  %58 = load i8, i8* %57, align 1, !dbg !1663, !tbaa !689
  %59 = icmp eq i8 %58, 51, !dbg !1663
  br i1 %59, label %60, label %72, !dbg !1664

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1665, metadata !575), !dbg !1674
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1672, metadata !575), !dbg !1678
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1673, metadata !575), !dbg !1679
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1680
  %62 = load i8, i8* %61, align 1, !dbg !1680, !tbaa !689
  %63 = icmp eq i8 %62, 48, !dbg !1680
  br i1 %63, label %64, label %72, !dbg !1682

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1683, metadata !575), !dbg !1691
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1689, metadata !575), !dbg !1695
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1690, metadata !575), !dbg !1696
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1697
  %66 = load i8, i8* %65, align 1, !dbg !1697, !tbaa !689
  %67 = icmp eq i8 %66, 0, !dbg !1697
  br i1 %67, label %68, label %72, !dbg !1699

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1700, !tbaa !689
  %70 = icmp eq i8 %69, 96, !dbg !1701
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.51, i64 0, i64 0), !dbg !1700
  br label %75, !dbg !1702

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1703
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.48, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.47, i64 0, i64 0), !dbg !1704
  br label %75, !dbg !1705

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1706
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1707 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1711, metadata !575), !dbg !1714
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1712, metadata !575), !dbg !1715
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1713, metadata !575), !dbg !1716
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1717, metadata !575) #9, !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1722, metadata !575) #9, !dbg !1732
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1723, metadata !575) #9, !dbg !1733
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1724, metadata !575) #9, !dbg !1734
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1735
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1735
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1725, metadata !575) #9, !dbg !1736
  %6 = tail call i32* @__errno_location() #17, !dbg !1737
  %7 = load i32, i32* %6, align 4, !dbg !1737, !tbaa !644
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1726, metadata !575) #9, !dbg !1738
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1739
  %9 = load i32, i32* %8, align 4, !dbg !1739, !tbaa !901
  %10 = or i32 %9, 1, !dbg !1740
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1727, metadata !575) #9, !dbg !1741
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1742
  %12 = load i32, i32* %11, align 8, !dbg !1742, !tbaa !841
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1743
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1744
  %15 = load i8*, i8** %14, align 8, !dbg !1744, !tbaa !927
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1745
  %17 = load i8*, i8** %16, align 8, !dbg !1745, !tbaa !930
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !1746
  %19 = add i64 %18, 1, !dbg !1747
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1728, metadata !575) #9, !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1749, metadata !575) #9, !dbg !1754
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !1756
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1729, metadata !575) #9, !dbg !1757
  %21 = load i32, i32* %11, align 8, !dbg !1758, !tbaa !841
  %22 = load i8*, i8** %14, align 8, !dbg !1759, !tbaa !927
  %23 = load i8*, i8** %16, align 8, !dbg !1760, !tbaa !930
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !1761
  store i32 %7, i32* %6, align 4, !dbg !1762, !tbaa !644
  ret i8* %20, !dbg !1763
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1718 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1717, metadata !575), !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1722, metadata !575), !dbg !1765
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1723, metadata !575), !dbg !1766
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1724, metadata !575), !dbg !1767
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1768
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1768
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1725, metadata !575), !dbg !1769
  %7 = tail call i32* @__errno_location() #17, !dbg !1770
  %8 = load i32, i32* %7, align 4, !dbg !1770, !tbaa !644
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1726, metadata !575), !dbg !1771
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1772
  %10 = load i32, i32* %9, align 4, !dbg !1772, !tbaa !901
  %11 = icmp ne i64* %2, null, !dbg !1773
  %12 = xor i1 %11, true, !dbg !1773
  %13 = zext i1 %12 to i32, !dbg !1773
  %14 = or i32 %10, %13, !dbg !1774
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1727, metadata !575), !dbg !1775
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1776
  %16 = load i32, i32* %15, align 8, !dbg !1776, !tbaa !841
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1777
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1778
  %19 = load i8*, i8** %18, align 8, !dbg !1778, !tbaa !927
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1779
  %21 = load i8*, i8** %20, align 8, !dbg !1779, !tbaa !930
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1780
  %23 = add i64 %22, 1, !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1728, metadata !575), !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1749, metadata !575) #9, !dbg !1783
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !1785
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1729, metadata !575), !dbg !1786
  %25 = load i32, i32* %15, align 8, !dbg !1787, !tbaa !841
  %26 = load i8*, i8** %18, align 8, !dbg !1788, !tbaa !927
  %27 = load i8*, i8** %20, align 8, !dbg !1789, !tbaa !930
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1790
  store i32 %8, i32* %7, align 4, !dbg !1791, !tbaa !644
  br i1 %11, label %29, label %30, !dbg !1792

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1793, !tbaa !1795
  br label %30, !dbg !1797

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1798
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1799 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1803, !tbaa !582
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1801, metadata !575), !dbg !1804
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1802, metadata !575), !dbg !1805
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1802, metadata !575), !dbg !1805
  %2 = load i32, i32* @nslots, align 4, !dbg !1806, !tbaa !644
  %3 = icmp sgt i32 %2, 1, !dbg !1809
  br i1 %3, label %4, label %13, !dbg !1810

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1811

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1802, metadata !575), !dbg !1805
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1811
  %8 = load i8*, i8** %7, align 8, !dbg !1811, !tbaa !1812
  tail call void @free(i8* %8) #9, !dbg !1814
  %9 = add nuw i64 %6, 1, !dbg !1815
  %10 = load i32, i32* @nslots, align 4, !dbg !1806, !tbaa !644
  %11 = sext i32 %10 to i64, !dbg !1809
  %12 = icmp slt i64 %9, %11, !dbg !1809
  br i1 %12, label %5, label %13, !dbg !1810, !llvm.loop !1816

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1818
  %15 = load i8*, i8** %14, align 8, !dbg !1818, !tbaa !1812
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1820
  br i1 %16, label %18, label %17, !dbg !1821

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #9, !dbg !1822
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1824, !tbaa !1825
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1826, !tbaa !1812
  br label %18, !dbg !1827

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1828
  br i1 %19, label %22, label %20, !dbg !1830

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1831
  tail call void @free(i8* %21) #9, !dbg !1833
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1834, !tbaa !582
  br label %22, !dbg !1835

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1836, !tbaa !644
  ret void, !dbg !1837
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1838 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1842, metadata !575), !dbg !1844
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1843, metadata !575), !dbg !1845
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1846
  ret i8* %3, !dbg !1847
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1848 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1852, metadata !575), !dbg !1866
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1853, metadata !575), !dbg !1867
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1854, metadata !575), !dbg !1868
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1855, metadata !575), !dbg !1869
  %5 = tail call i32* @__errno_location() #17, !dbg !1870
  %6 = load i32, i32* %5, align 4, !dbg !1870, !tbaa !644
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1856, metadata !575), !dbg !1871
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1872, !tbaa !582
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1857, metadata !575), !dbg !1873
  %8 = icmp slt i32 %0, 0, !dbg !1874
  br i1 %8, label %9, label %10, !dbg !1876

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1877
  unreachable, !dbg !1877

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1878, !tbaa !644
  %12 = icmp sgt i32 %11, %0, !dbg !1879
  br i1 %12, label %34, label %13, !dbg !1880

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1881
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1882
  br i1 %15, label %16, label %17, !dbg !1884

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1885
  unreachable, !dbg !1885

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1886
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1886
  %20 = add nsw i32 %0, 1, !dbg !1887
  %21 = sext i32 %20 to i64, !dbg !1888
  %22 = shl nsw i64 %21, 4, !dbg !1889
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !1890
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1890
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1857, metadata !575), !dbg !1873
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1891, !tbaa !582
  br i1 %14, label %25, label %26, !dbg !1892

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1893, !tbaa.struct !1895
  br label %26, !dbg !1896

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1897, !tbaa !644
  %28 = sext i32 %27 to i64, !dbg !1898
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1898
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1899
  %31 = sub nsw i32 %20, %27, !dbg !1900
  %32 = sext i32 %31 to i64, !dbg !1901
  %33 = shl nsw i64 %32, 4, !dbg !1902
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1899
  store i32 %20, i32* @nslots, align 4, !dbg !1903, !tbaa !644
  br label %34, !dbg !1904

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1857, metadata !575), !dbg !1873
  %36 = sext i32 %0 to i64, !dbg !1905
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1906
  %38 = load i64, i64* %37, align 8, !dbg !1906, !tbaa !1825
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1861, metadata !575), !dbg !1907
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1908
  %40 = load i8*, i8** %39, align 8, !dbg !1908, !tbaa !1812
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1863, metadata !575), !dbg !1909
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1910
  %42 = load i32, i32* %41, align 4, !dbg !1910, !tbaa !901
  %43 = or i32 %42, 1, !dbg !1911
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1864, metadata !575), !dbg !1912
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1913
  %45 = load i32, i32* %44, align 8, !dbg !1913, !tbaa !841
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1914
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1915
  %48 = load i8*, i8** %47, align 8, !dbg !1915, !tbaa !927
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1916
  %50 = load i8*, i8** %49, align 8, !dbg !1916, !tbaa !930
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1917
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1865, metadata !575), !dbg !1918
  %52 = icmp ugt i64 %38, %51, !dbg !1919
  br i1 %52, label %63, label %53, !dbg !1921

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1861, metadata !575), !dbg !1907
  store i64 %54, i64* %37, align 8, !dbg !1924, !tbaa !1825
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1925
  br i1 %55, label %57, label %56, !dbg !1927

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !1928
  br label %57, !dbg !1928

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1749, metadata !575) #9, !dbg !1929
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !1931
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1863, metadata !575), !dbg !1909
  store i8* %58, i8** %39, align 8, !dbg !1932, !tbaa !1812
  %59 = load i32, i32* %44, align 8, !dbg !1933, !tbaa !841
  %60 = load i8*, i8** %47, align 8, !dbg !1934, !tbaa !927
  %61 = load i8*, i8** %49, align 8, !dbg !1935, !tbaa !930
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !1936
  br label %63, !dbg !1937

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1863, metadata !575), !dbg !1909
  store i32 %6, i32* %5, align 4, !dbg !1938, !tbaa !644
  ret i8* %64, !dbg !1939
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #12

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1940 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1944, metadata !575), !dbg !1947
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1945, metadata !575), !dbg !1948
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1946, metadata !575), !dbg !1949
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1950
  ret i8* %4, !dbg !1951
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !1952 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1956, metadata !575), !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1842, metadata !575) #9, !dbg !1958
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1843, metadata !575) #9, !dbg !1960
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !1961
  ret i8* %2, !dbg !1962
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !1963 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1967, metadata !575), !dbg !1969
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1968, metadata !575), !dbg !1970
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1944, metadata !575) #9, !dbg !1971
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1945, metadata !575) #9, !dbg !1973
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1946, metadata !575) #9, !dbg !1974
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !1975
  ret i8* %3, !dbg !1976
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !1977 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1985, metadata !1991), !dbg !1992
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1981, metadata !575), !dbg !1994
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1982, metadata !575), !dbg !1995
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1983, metadata !575), !dbg !1996
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1997
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !1997
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1984, metadata !575), !dbg !1998
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1990, metadata !575) #9, !dbg !1999
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2000
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2000
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1985, metadata !575) #9, !dbg !1992
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1985, metadata !2001) #9, !dbg !1992
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !1992
  %8 = icmp eq i32 %1, 10, !dbg !2002
  br i1 %8, label %9, label %10, !dbg !2004

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2005, !noalias !2006
  unreachable, !dbg !2005

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1985, metadata !2001) #9, !dbg !1992
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2009
  store i32 %1, i32* %11, align 8, !dbg !2009, !alias.scope !2006
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2009
  %13 = bitcast i32* %12 to i8*, !dbg !2009
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2009
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2010
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1984, metadata !575), !dbg !1998
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2011
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2012
  ret i8* %14, !dbg !2013
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2014 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !1985, metadata !1991), !dbg !2023
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2018, metadata !575), !dbg !2025
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2019, metadata !575), !dbg !2026
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2020, metadata !575), !dbg !2027
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2021, metadata !575), !dbg !2028
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2029
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2029
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2022, metadata !575), !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1990, metadata !575) #9, !dbg !2031
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2032
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2032
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1985, metadata !575) #9, !dbg !2023
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1985, metadata !2001) #9, !dbg !2023
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2023
  %9 = icmp eq i32 %1, 10, !dbg !2033
  br i1 %9, label %10, label %11, !dbg !2034

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2035, !noalias !2036
  unreachable, !dbg !2035

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1985, metadata !2001) #9, !dbg !2023
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2039
  store i32 %1, i32* %12, align 8, !dbg !2039, !alias.scope !2036
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2039
  %14 = bitcast i32* %13 to i8*, !dbg !2039
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2039
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2040
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2022, metadata !575), !dbg !2030
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2041
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2042
  ret i8* %15, !dbg !2043
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2044 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !1985, metadata !1991), !dbg !2050
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2048, metadata !575), !dbg !2053
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2049, metadata !575), !dbg !2054
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1981, metadata !575) #9, !dbg !2055
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1982, metadata !575) #9, !dbg !2056
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1983, metadata !575) #9, !dbg !2057
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2058
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2058
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1984, metadata !575) #9, !dbg !2059
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1990, metadata !575) #9, !dbg !2060
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2061
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2061
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1985, metadata !575) #9, !dbg !2050
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1985, metadata !2001) #9, !dbg !2050
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2050
  %7 = icmp eq i32 %0, 10, !dbg !2062
  br i1 %7, label %8, label %9, !dbg !2063

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2064, !noalias !2065
  unreachable, !dbg !2064

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1985, metadata !2001) #9, !dbg !2050
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2068
  store i32 %0, i32* %10, align 8, !dbg !2068, !alias.scope !2065
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2068
  %12 = bitcast i32* %11 to i8*, !dbg !2068
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2068
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1984, metadata !575) #9, !dbg !2059
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2070
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2071
  ret i8* %13, !dbg !2072
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2073 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1985, metadata !1991), !dbg !2080
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2077, metadata !575), !dbg !2083
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2078, metadata !575), !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2079, metadata !575), !dbg !2085
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2018, metadata !575) #9, !dbg !2086
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2019, metadata !575) #9, !dbg !2087
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2020, metadata !575) #9, !dbg !2088
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2021, metadata !575) #9, !dbg !2089
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2090
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2090
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2022, metadata !575) #9, !dbg !2091
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1990, metadata !575) #9, !dbg !2092
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2093
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2093
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1985, metadata !575) #9, !dbg !2080
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1985, metadata !2001) #9, !dbg !2080
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2080
  %8 = icmp eq i32 %0, 10, !dbg !2094
  br i1 %8, label %9, label %10, !dbg !2095

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2096, !noalias !2097
  unreachable, !dbg !2096

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1985, metadata !2001) #9, !dbg !2080
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2100
  store i32 %0, i32* %11, align 8, !dbg !2100, !alias.scope !2097
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2100
  %13 = bitcast i32* %12 to i8*, !dbg !2100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2100
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2101
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2022, metadata !575) #9, !dbg !2091
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2102
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2103
  ret i8* %14, !dbg !2104
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2105 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2109, metadata !575), !dbg !2113
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2110, metadata !575), !dbg !2114
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2111, metadata !575), !dbg !2115
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2116
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2117, !tbaa.struct !2118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2112, metadata !575), !dbg !2119
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !860, metadata !575), !dbg !2120
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !861, metadata !575), !dbg !2122
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !862, metadata !575), !dbg !2123
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !863, metadata !575), !dbg !2124
  %6 = lshr i8 %2, 5, !dbg !2125
  %7 = zext i8 %6 to i64, !dbg !2125
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2126
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !864, metadata !575), !dbg !2127
  %9 = and i8 %2, 31, !dbg !2128
  %10 = zext i8 %9 to i32, !dbg !2129
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !866, metadata !575), !dbg !2130
  %11 = load i32, i32* %8, align 4, !dbg !2131, !tbaa !644
  %12 = lshr i32 %11, %10, !dbg !2132
  %13 = and i32 %12, 1, !dbg !2133
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !867, metadata !575), !dbg !2134
  %14 = xor i32 %13, 1, !dbg !2135
  %15 = shl i32 %14, %10, !dbg !2136
  %16 = xor i32 %15, %11, !dbg !2137
  store i32 %16, i32* %8, align 4, !dbg !2137, !tbaa !644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2112, metadata !575), !dbg !2119
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2138
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2139
  ret i8* %17, !dbg !2140
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2141 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2145, metadata !575), !dbg !2147
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2146, metadata !575), !dbg !2148
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2109, metadata !575) #9, !dbg !2149
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2110, metadata !575) #9, !dbg !2151
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2111, metadata !575) #9, !dbg !2152
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2153
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2154, !tbaa.struct !2118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2112, metadata !575) #9, !dbg !2155
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !860, metadata !575) #9, !dbg !2156
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !861, metadata !575) #9, !dbg !2158
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !862, metadata !575) #9, !dbg !2159
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !863, metadata !575) #9, !dbg !2160
  %5 = lshr i8 %1, 5, !dbg !2161
  %6 = zext i8 %5 to i64, !dbg !2161
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2162
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !864, metadata !575) #9, !dbg !2163
  %8 = and i8 %1, 31, !dbg !2164
  %9 = zext i8 %8 to i32, !dbg !2165
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !866, metadata !575) #9, !dbg !2166
  %10 = load i32, i32* %7, align 4, !dbg !2167, !tbaa !644
  %11 = lshr i32 %10, %9, !dbg !2168
  %12 = and i32 %11, 1, !dbg !2169
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !867, metadata !575) #9, !dbg !2170
  %13 = xor i32 %12, 1, !dbg !2171
  %14 = shl i32 %13, %9, !dbg !2172
  %15 = xor i32 %14, %10, !dbg !2173
  store i32 %15, i32* %7, align 4, !dbg !2173, !tbaa !644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2112, metadata !575) #9, !dbg !2155
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2174
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2175
  ret i8* %16, !dbg !2176
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2177 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2179, metadata !575), !dbg !2180
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2145, metadata !575) #9, !dbg !2181
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2146, metadata !575) #9, !dbg !2183
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2109, metadata !575) #9, !dbg !2184
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2110, metadata !575) #9, !dbg !2186
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2111, metadata !575) #9, !dbg !2187
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2188
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2189, !tbaa.struct !2118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2112, metadata !575) #9, !dbg !2190
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !860, metadata !575) #9, !dbg !2191
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !861, metadata !575) #9, !dbg !2193
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !862, metadata !575) #9, !dbg !2194
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !863, metadata !575) #9, !dbg !2195
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2196
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !864, metadata !575) #9, !dbg !2197
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !866, metadata !575) #9, !dbg !2198
  %5 = load i32, i32* %4, align 4, !dbg !2199, !tbaa !644
  %6 = or i32 %5, 67108864, !dbg !2200
  store i32 %6, i32* %4, align 4, !dbg !2200, !tbaa !644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2112, metadata !575) #9, !dbg !2190
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2201
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2202
  ret i8* %7, !dbg !2203
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2204 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2206, metadata !575), !dbg !2208
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2207, metadata !575), !dbg !2209
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2109, metadata !575) #9, !dbg !2210
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2110, metadata !575) #9, !dbg !2212
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2111, metadata !575) #9, !dbg !2213
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2214
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2215, !tbaa.struct !2118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2112, metadata !575) #9, !dbg !2216
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !860, metadata !575) #9, !dbg !2217
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !861, metadata !575) #9, !dbg !2219
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !862, metadata !575) #9, !dbg !2220
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !863, metadata !575) #9, !dbg !2221
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2222
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !864, metadata !575) #9, !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !866, metadata !575) #9, !dbg !2224
  %6 = load i32, i32* %5, align 4, !dbg !2225, !tbaa !644
  %7 = or i32 %6, 67108864, !dbg !2226
  store i32 %7, i32* %5, align 4, !dbg !2226, !tbaa !644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2112, metadata !575) #9, !dbg !2216
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2228
  ret i8* %8, !dbg !2229
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2230 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !1985, metadata !1991), !dbg !2236
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2232, metadata !575), !dbg !2238
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2233, metadata !575), !dbg !2239
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2234, metadata !575), !dbg !2240
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2241
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2241
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1990, metadata !575) #9, !dbg !2242
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2243
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2243
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !1985, metadata !575) #9, !dbg !2236
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1985, metadata !2001) #9, !dbg !2236
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2236
  %9 = icmp eq i32 %1, 10, !dbg !2244
  br i1 %9, label %10, label %11, !dbg !2245

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2246, !noalias !2247
  unreachable, !dbg !2246

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1985, metadata !2001) #9, !dbg !2236
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2250
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2251
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2252
  store i32 %1, i32* %13, align 8, !dbg !2252
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2252
  %15 = bitcast i32* %14 to i8*, !dbg !2252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2252
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2235, metadata !575), !dbg !2253
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !860, metadata !575), !dbg !2254
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !861, metadata !575), !dbg !2256
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !862, metadata !575), !dbg !2257
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !863, metadata !575), !dbg !2258
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2259
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !864, metadata !575), !dbg !2260
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !866, metadata !575), !dbg !2261
  %17 = load i32, i32* %16, align 4, !dbg !2262, !tbaa !644
  %18 = or i32 %17, 67108864, !dbg !2263
  store i32 %18, i32* %16, align 4, !dbg !2263, !tbaa !644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2235, metadata !575), !dbg !2253
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2264
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2265
  ret i8* %19, !dbg !2266
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2267 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2271, metadata !575), !dbg !2275
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2272, metadata !575), !dbg !2276
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2273, metadata !575), !dbg !2277
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2274, metadata !575), !dbg !2278
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2279, metadata !575) #9, !dbg !2289
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2284, metadata !575) #9, !dbg !2291
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2285, metadata !575) #9, !dbg !2292
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2286, metadata !575) #9, !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2287, metadata !575) #9, !dbg !2294
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2295
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2296, !tbaa.struct !2118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2288, metadata !575) #9, !dbg !2297
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !909, metadata !575) #9, !dbg !2298
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !910, metadata !575) #9, !dbg !2300
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !911, metadata !575) #9, !dbg !2301
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !909, metadata !575) #9, !dbg !2298
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !909, metadata !575) #9, !dbg !2298
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2302
  store i32 10, i32* %7, align 8, !dbg !2303, !tbaa !841
  %8 = icmp ne i8* %1, null, !dbg !2304
  %9 = icmp ne i8* %2, null, !dbg !2305
  %10 = and i1 %8, %9, !dbg !2306
  br i1 %10, label %12, label %11, !dbg !2306

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2307
  unreachable, !dbg !2307

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2308
  store i8* %1, i8** %13, align 8, !dbg !2309, !tbaa !927
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2310
  store i8* %2, i8** %14, align 8, !dbg !2311, !tbaa !930
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2288, metadata !575) #9, !dbg !2297
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2312
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2313
  ret i8* %15, !dbg !2314
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2280 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2279, metadata !575), !dbg !2315
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2284, metadata !575), !dbg !2316
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2285, metadata !575), !dbg !2317
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2286, metadata !575), !dbg !2318
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2287, metadata !575), !dbg !2319
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2320
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2321, !tbaa.struct !2118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2288, metadata !575), !dbg !2322
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !909, metadata !575) #9, !dbg !2323
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !910, metadata !575) #9, !dbg !2325
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !911, metadata !575) #9, !dbg !2326
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !909, metadata !575) #9, !dbg !2323
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !909, metadata !575) #9, !dbg !2323
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2327
  store i32 10, i32* %8, align 8, !dbg !2328, !tbaa !841
  %9 = icmp ne i8* %1, null, !dbg !2329
  %10 = icmp ne i8* %2, null, !dbg !2330
  %11 = and i1 %9, %10, !dbg !2331
  br i1 %11, label %13, label %12, !dbg !2331

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2332
  unreachable, !dbg !2332

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2333
  store i8* %1, i8** %14, align 8, !dbg !2334, !tbaa !927
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2335
  store i8* %2, i8** %15, align 8, !dbg !2336, !tbaa !930
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2288, metadata !575), !dbg !2322
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2337
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2338
  ret i8* %16, !dbg !2339
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2340 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2344, metadata !575), !dbg !2347
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2345, metadata !575), !dbg !2348
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2346, metadata !575), !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2271, metadata !575) #9, !dbg !2350
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2272, metadata !575) #9, !dbg !2352
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2273, metadata !575) #9, !dbg !2353
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2274, metadata !575) #9, !dbg !2354
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2279, metadata !575) #9, !dbg !2355
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2284, metadata !575) #9, !dbg !2357
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2285, metadata !575) #9, !dbg !2358
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2286, metadata !575) #9, !dbg !2359
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2287, metadata !575) #9, !dbg !2360
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2361
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2361
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2362, !tbaa.struct !2118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2288, metadata !575) #9, !dbg !2363
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !909, metadata !575) #9, !dbg !2364
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !910, metadata !575) #9, !dbg !2366
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !911, metadata !575) #9, !dbg !2367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !909, metadata !575) #9, !dbg !2364
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !909, metadata !575) #9, !dbg !2364
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2368
  store i32 10, i32* %6, align 8, !dbg !2369, !tbaa !841
  %7 = icmp ne i8* %0, null, !dbg !2370
  %8 = icmp ne i8* %1, null, !dbg !2371
  %9 = and i1 %7, %8, !dbg !2372
  br i1 %9, label %11, label %10, !dbg !2372

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2373
  unreachable, !dbg !2373

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2374
  store i8* %0, i8** %12, align 8, !dbg !2375, !tbaa !927
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2376
  store i8* %1, i8** %13, align 8, !dbg !2377, !tbaa !930
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2288, metadata !575) #9, !dbg !2363
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2378
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2379
  ret i8* %14, !dbg !2380
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2381 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2385, metadata !575), !dbg !2389
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2386, metadata !575), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2387, metadata !575), !dbg !2391
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2388, metadata !575), !dbg !2392
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2279, metadata !575) #9, !dbg !2393
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2284, metadata !575) #9, !dbg !2395
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2285, metadata !575) #9, !dbg !2396
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2286, metadata !575) #9, !dbg !2397
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2287, metadata !575) #9, !dbg !2398
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2399
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2400, !tbaa.struct !2118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2288, metadata !575) #9, !dbg !2401
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !909, metadata !575) #9, !dbg !2402
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !910, metadata !575) #9, !dbg !2404
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !911, metadata !575) #9, !dbg !2405
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !909, metadata !575) #9, !dbg !2402
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !909, metadata !575) #9, !dbg !2402
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2406
  store i32 10, i32* %7, align 8, !dbg !2407, !tbaa !841
  %8 = icmp ne i8* %0, null, !dbg !2408
  %9 = icmp ne i8* %1, null, !dbg !2409
  %10 = and i1 %8, %9, !dbg !2410
  br i1 %10, label %12, label %11, !dbg !2410

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2411
  unreachable, !dbg !2411

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2412
  store i8* %0, i8** %13, align 8, !dbg !2413, !tbaa !927
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2414
  store i8* %1, i8** %14, align 8, !dbg !2415, !tbaa !930
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2288, metadata !575) #9, !dbg !2401
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2416
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2417
  ret i8* %15, !dbg !2418
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2419 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2423, metadata !575), !dbg !2426
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2424, metadata !575), !dbg !2427
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2425, metadata !575), !dbg !2428
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2429
  ret i8* %4, !dbg !2430
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2431 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2435, metadata !575), !dbg !2437
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2436, metadata !575), !dbg !2438
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2423, metadata !575) #9, !dbg !2439
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2424, metadata !575) #9, !dbg !2441
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2425, metadata !575) #9, !dbg !2442
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2443
  ret i8* %3, !dbg !2444
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2445 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2449, metadata !575), !dbg !2451
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2450, metadata !575), !dbg !2452
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2423, metadata !575) #9, !dbg !2453
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2424, metadata !575) #9, !dbg !2455
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2425, metadata !575) #9, !dbg !2456
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2457
  ret i8* %3, !dbg !2458
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2459 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2463, metadata !575), !dbg !2464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2449, metadata !575) #9, !dbg !2465
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2450, metadata !575) #9, !dbg !2467
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2423, metadata !575) #9, !dbg !2468
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2424, metadata !575) #9, !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2425, metadata !575) #9, !dbg !2471
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2472
  ret i8* %2, !dbg !2473
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2474 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2534, metadata !575), !dbg !2540
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2535, metadata !575), !dbg !2541
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2536, metadata !575), !dbg !2542
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2537, metadata !575), !dbg !2543
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2538, metadata !575), !dbg !2544
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2539, metadata !575), !dbg !2545
  %7 = icmp eq i8* %1, null, !dbg !2546
  br i1 %7, label %10, label %8, !dbg !2548

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2549
  br label %12, !dbg !2549

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.55, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2550
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i32 5) #9, !dbg !2551
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2551
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.57, i64 0, i64 0), i32 5) #9, !dbg !2552
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2552
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
  ], !dbg !2553

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2554
  unreachable, !dbg !2554

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.58, i64 0, i64 0), i32 5) #9, !dbg !2556
  %20 = load i8*, i8** %4, align 8, !dbg !2556, !tbaa !582
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2556
  br label %146, !dbg !2557

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.59, i64 0, i64 0), i32 5) #9, !dbg !2558
  %24 = load i8*, i8** %4, align 8, !dbg !2558, !tbaa !582
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2558
  %26 = load i8*, i8** %25, align 8, !dbg !2558, !tbaa !582
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2558
  br label %146, !dbg !2559

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.60, i64 0, i64 0), i32 5) #9, !dbg !2560
  %30 = load i8*, i8** %4, align 8, !dbg !2560, !tbaa !582
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2560
  %32 = load i8*, i8** %31, align 8, !dbg !2560, !tbaa !582
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2560
  %34 = load i8*, i8** %33, align 8, !dbg !2560, !tbaa !582
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2560
  br label %146, !dbg !2561

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.61, i64 0, i64 0), i32 5) #9, !dbg !2562
  %38 = load i8*, i8** %4, align 8, !dbg !2562, !tbaa !582
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2562
  %40 = load i8*, i8** %39, align 8, !dbg !2562, !tbaa !582
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2562
  %42 = load i8*, i8** %41, align 8, !dbg !2562, !tbaa !582
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2562
  %44 = load i8*, i8** %43, align 8, !dbg !2562, !tbaa !582
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2562
  br label %146, !dbg !2563

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.62, i64 0, i64 0), i32 5) #9, !dbg !2564
  %48 = load i8*, i8** %4, align 8, !dbg !2564, !tbaa !582
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2564
  %50 = load i8*, i8** %49, align 8, !dbg !2564, !tbaa !582
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2564
  %52 = load i8*, i8** %51, align 8, !dbg !2564, !tbaa !582
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2564
  %54 = load i8*, i8** %53, align 8, !dbg !2564, !tbaa !582
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2564
  %56 = load i8*, i8** %55, align 8, !dbg !2564, !tbaa !582
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2564
  br label %146, !dbg !2565

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.63, i64 0, i64 0), i32 5) #9, !dbg !2566
  %60 = load i8*, i8** %4, align 8, !dbg !2566, !tbaa !582
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2566
  %62 = load i8*, i8** %61, align 8, !dbg !2566, !tbaa !582
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2566
  %64 = load i8*, i8** %63, align 8, !dbg !2566, !tbaa !582
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2566
  %66 = load i8*, i8** %65, align 8, !dbg !2566, !tbaa !582
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2566
  %68 = load i8*, i8** %67, align 8, !dbg !2566, !tbaa !582
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2566
  %70 = load i8*, i8** %69, align 8, !dbg !2566, !tbaa !582
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2566
  br label %146, !dbg !2567

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.64, i64 0, i64 0), i32 5) #9, !dbg !2568
  %74 = load i8*, i8** %4, align 8, !dbg !2568, !tbaa !582
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2568
  %76 = load i8*, i8** %75, align 8, !dbg !2568, !tbaa !582
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2568
  %78 = load i8*, i8** %77, align 8, !dbg !2568, !tbaa !582
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2568
  %80 = load i8*, i8** %79, align 8, !dbg !2568, !tbaa !582
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2568
  %82 = load i8*, i8** %81, align 8, !dbg !2568, !tbaa !582
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2568
  %84 = load i8*, i8** %83, align 8, !dbg !2568, !tbaa !582
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2568
  %86 = load i8*, i8** %85, align 8, !dbg !2568, !tbaa !582
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2568
  br label %146, !dbg !2569

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.65, i64 0, i64 0), i32 5) #9, !dbg !2570
  %90 = load i8*, i8** %4, align 8, !dbg !2570, !tbaa !582
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2570
  %92 = load i8*, i8** %91, align 8, !dbg !2570, !tbaa !582
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2570
  %94 = load i8*, i8** %93, align 8, !dbg !2570, !tbaa !582
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2570
  %96 = load i8*, i8** %95, align 8, !dbg !2570, !tbaa !582
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2570
  %98 = load i8*, i8** %97, align 8, !dbg !2570, !tbaa !582
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2570
  %100 = load i8*, i8** %99, align 8, !dbg !2570, !tbaa !582
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2570
  %102 = load i8*, i8** %101, align 8, !dbg !2570, !tbaa !582
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2570
  %104 = load i8*, i8** %103, align 8, !dbg !2570, !tbaa !582
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2570
  br label %146, !dbg !2571

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.66, i64 0, i64 0), i32 5) #9, !dbg !2572
  %108 = load i8*, i8** %4, align 8, !dbg !2572, !tbaa !582
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2572
  %110 = load i8*, i8** %109, align 8, !dbg !2572, !tbaa !582
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2572
  %112 = load i8*, i8** %111, align 8, !dbg !2572, !tbaa !582
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2572
  %114 = load i8*, i8** %113, align 8, !dbg !2572, !tbaa !582
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2572
  %116 = load i8*, i8** %115, align 8, !dbg !2572, !tbaa !582
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2572
  %118 = load i8*, i8** %117, align 8, !dbg !2572, !tbaa !582
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2572
  %120 = load i8*, i8** %119, align 8, !dbg !2572, !tbaa !582
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2572
  %122 = load i8*, i8** %121, align 8, !dbg !2572, !tbaa !582
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2572
  %124 = load i8*, i8** %123, align 8, !dbg !2572, !tbaa !582
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2572
  br label %146, !dbg !2573

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.67, i64 0, i64 0), i32 5) #9, !dbg !2574
  %128 = load i8*, i8** %4, align 8, !dbg !2574, !tbaa !582
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2574
  %130 = load i8*, i8** %129, align 8, !dbg !2574, !tbaa !582
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2574
  %132 = load i8*, i8** %131, align 8, !dbg !2574, !tbaa !582
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2574
  %134 = load i8*, i8** %133, align 8, !dbg !2574, !tbaa !582
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2574
  %136 = load i8*, i8** %135, align 8, !dbg !2574, !tbaa !582
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2574
  %138 = load i8*, i8** %137, align 8, !dbg !2574, !tbaa !582
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2574
  %140 = load i8*, i8** %139, align 8, !dbg !2574, !tbaa !582
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2574
  %142 = load i8*, i8** %141, align 8, !dbg !2574, !tbaa !582
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2574
  %144 = load i8*, i8** %143, align 8, !dbg !2574, !tbaa !582
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2574
  br label %146, !dbg !2575

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2576
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2577 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2581, metadata !575), !dbg !2587
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2582, metadata !575), !dbg !2588
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2583, metadata !575), !dbg !2589
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2584, metadata !575), !dbg !2590
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2585, metadata !575), !dbg !2591
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2586, metadata !575), !dbg !2592
  br label %6, !dbg !2593

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2586, metadata !575), !dbg !2592
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2595
  %9 = load i8*, i8** %8, align 8, !dbg !2595, !tbaa !582
  %10 = icmp eq i8* %9, null, !dbg !2597
  %11 = add i64 %7, 1, !dbg !2598
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2586, metadata !575), !dbg !2592
  br i1 %10, label %12, label %6, !dbg !2597, !llvm.loop !2599

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2601
  ret void, !dbg !2602
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2603 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2614, metadata !575), !dbg !2622
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2615, metadata !575), !dbg !2623
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2616, metadata !575), !dbg !2624
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2617, metadata !575), !dbg !2625
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2618, metadata !575), !dbg !2626
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2627
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2627
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2620, metadata !575), !dbg !2628
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  %11 = load i32, i32* %8, align 8, !dbg !2630
  %12 = icmp ult i32 %11, 41, !dbg !2630
  br i1 %12, label %13, label %18, !dbg !2630

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2630
  %15 = sext i32 %11 to i64, !dbg !2630
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2630
  %17 = add i32 %11, 8, !dbg !2630
  store i32 %17, i32* %8, align 8, !dbg !2630
  br label %21, !dbg !2630

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2630
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2630
  store i8* %20, i8** %10, align 8, !dbg !2630
  br label %21, !dbg !2630

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2630
  %25 = load i8*, i8** %24, align 8, !dbg !2630
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2633
  store i8* %25, i8** %26, align 16, !dbg !2634, !tbaa !582
  %27 = icmp eq i8* %25, null, !dbg !2635
  br i1 %27, label %30, label %28, !dbg !2636

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  %29 = icmp ult i32 %22, 41, !dbg !2630
  br i1 %29, label %35, label %32, !dbg !2630

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2637
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2638
  ret void, !dbg !2638

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2630
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2630
  store i8* %34, i8** %10, align 8, !dbg !2630
  br label %40, !dbg !2630

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2630
  %37 = sext i32 %22 to i64, !dbg !2630
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2630
  %39 = add i32 %22, 8, !dbg !2630
  store i32 %39, i32* %8, align 8, !dbg !2630
  br label %40, !dbg !2630

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2630
  %44 = load i8*, i8** %43, align 8, !dbg !2630
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2633
  store i8* %44, i8** %45, align 8, !dbg !2634, !tbaa !582
  %46 = icmp eq i8* %44, null, !dbg !2635
  br i1 %46, label %30, label %47, !dbg !2636

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  %48 = icmp ult i32 %41, 41, !dbg !2630
  br i1 %48, label %52, label %49, !dbg !2630

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2630
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2630
  store i8* %51, i8** %10, align 8, !dbg !2630
  br label %57, !dbg !2630

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2630
  %54 = sext i32 %41 to i64, !dbg !2630
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2630
  %56 = add i32 %41, 8, !dbg !2630
  store i32 %56, i32* %8, align 8, !dbg !2630
  br label %57, !dbg !2630

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2630
  %61 = load i8*, i8** %60, align 8, !dbg !2630
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2633
  store i8* %61, i8** %62, align 16, !dbg !2634, !tbaa !582
  %63 = icmp eq i8* %61, null, !dbg !2635
  br i1 %63, label %30, label %64, !dbg !2636

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  %65 = icmp ult i32 %58, 41, !dbg !2630
  br i1 %65, label %69, label %66, !dbg !2630

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2630
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2630
  store i8* %68, i8** %10, align 8, !dbg !2630
  br label %74, !dbg !2630

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2630
  %71 = sext i32 %58 to i64, !dbg !2630
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2630
  %73 = add i32 %58, 8, !dbg !2630
  store i32 %73, i32* %8, align 8, !dbg !2630
  br label %74, !dbg !2630

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2630
  %78 = load i8*, i8** %77, align 8, !dbg !2630
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2633
  store i8* %78, i8** %79, align 8, !dbg !2634, !tbaa !582
  %80 = icmp eq i8* %78, null, !dbg !2635
  br i1 %80, label %30, label %81, !dbg !2636

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  %82 = icmp ult i32 %75, 41, !dbg !2630
  br i1 %82, label %86, label %83, !dbg !2630

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2630
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2630
  store i8* %85, i8** %10, align 8, !dbg !2630
  br label %91, !dbg !2630

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2630
  %88 = sext i32 %75 to i64, !dbg !2630
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2630
  %90 = add i32 %75, 8, !dbg !2630
  store i32 %90, i32* %8, align 8, !dbg !2630
  br label %91, !dbg !2630

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2630
  %95 = load i8*, i8** %94, align 8, !dbg !2630
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2633
  store i8* %95, i8** %96, align 16, !dbg !2634, !tbaa !582
  %97 = icmp eq i8* %95, null, !dbg !2635
  br i1 %97, label %30, label %98, !dbg !2636

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  %99 = icmp ult i32 %92, 41, !dbg !2630
  br i1 %99, label %103, label %100, !dbg !2630

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2630
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2630
  store i8* %102, i8** %10, align 8, !dbg !2630
  br label %108, !dbg !2630

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2630
  %105 = sext i32 %92 to i64, !dbg !2630
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2630
  %107 = add i32 %92, 8, !dbg !2630
  store i32 %107, i32* %8, align 8, !dbg !2630
  br label %108, !dbg !2630

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2630
  %111 = load i8*, i8** %110, align 8, !dbg !2630
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2633
  store i8* %111, i8** %112, align 8, !dbg !2634, !tbaa !582
  %113 = icmp eq i8* %111, null, !dbg !2635
  br i1 %113, label %30, label %114, !dbg !2636

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  %115 = load i8*, i8** %10, align 8, !dbg !2630
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2630
  store i8* %116, i8** %10, align 8, !dbg !2630
  %117 = bitcast i8* %115 to i8**, !dbg !2630
  %118 = load i8*, i8** %117, align 8, !dbg !2630
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2633
  store i8* %118, i8** %119, align 16, !dbg !2634, !tbaa !582
  %120 = icmp eq i8* %118, null, !dbg !2635
  br i1 %120, label %30, label %121, !dbg !2636

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  %122 = load i8*, i8** %10, align 8, !dbg !2630
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2630
  store i8* %123, i8** %10, align 8, !dbg !2630
  %124 = bitcast i8* %122 to i8**, !dbg !2630
  %125 = load i8*, i8** %124, align 8, !dbg !2630
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2633
  store i8* %125, i8** %126, align 8, !dbg !2634, !tbaa !582
  %127 = icmp eq i8* %125, null, !dbg !2635
  br i1 %127, label %30, label %128, !dbg !2636

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  %129 = load i8*, i8** %10, align 8, !dbg !2630
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2630
  store i8* %130, i8** %10, align 8, !dbg !2630
  %131 = bitcast i8* %129 to i8**, !dbg !2630
  %132 = load i8*, i8** %131, align 8, !dbg !2630
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2633
  store i8* %132, i8** %133, align 16, !dbg !2634, !tbaa !582
  %134 = icmp eq i8* %132, null, !dbg !2635
  br i1 %134, label %30, label %135, !dbg !2636

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2619, metadata !575), !dbg !2629
  %136 = load i8*, i8** %10, align 8, !dbg !2630
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2630
  store i8* %137, i8** %10, align 8, !dbg !2630
  %138 = bitcast i8* %136 to i8**, !dbg !2630
  %139 = load i8*, i8** %138, align 8, !dbg !2630
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2633
  store i8* %139, i8** %140, align 8, !dbg !2634, !tbaa !582
  %141 = icmp eq i8* %139, null, !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2619, metadata !575), !dbg !2629
  %142 = select i1 %141, i64 9, i64 10, !dbg !2636
  br label %30, !dbg !2636
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2639 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2643, metadata !575), !dbg !2654
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2644, metadata !575), !dbg !2655
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2645, metadata !575), !dbg !2656
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2646, metadata !575), !dbg !2657
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2658
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2658
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2647, metadata !575), !dbg !2659
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2660
  call void @llvm.va_start(i8* nonnull %6), !dbg !2660
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2661
  call void @llvm.va_end(i8* nonnull %6), !dbg !2662
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2663
  ret void, !dbg !2663
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2664 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.70, i64 0, i64 0), i32 5) #9, !dbg !2665
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.71, i64 0, i64 0)) #9, !dbg !2665
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !2666
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.73, i64 0, i64 0)) #9, !dbg !2666
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !2667
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2667, !tbaa !582
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !2667
  ret void, !dbg !2668
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2669 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2673, metadata !575), !dbg !2675
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2674, metadata !575), !dbg !2676
  %3 = udiv i64 9223372036854775807, %1, !dbg !2677
  %4 = icmp ult i64 %3, %0, !dbg !2677
  br i1 %4, label %5, label %6, !dbg !2679

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2680
  unreachable, !dbg !2680

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2681
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2682, metadata !575) #9, !dbg !2689
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !2691
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2688, metadata !575) #9, !dbg !2692
  %9 = icmp eq i8* %8, null, !dbg !2693
  %10 = icmp ne i64 %7, 0, !dbg !2695
  %11 = and i1 %10, %9, !dbg !2696
  br i1 %11, label %12, label %13, !dbg !2696

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2697
  unreachable, !dbg !2697

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2698
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2683 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2682, metadata !575), !dbg !2699
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2700
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2688, metadata !575), !dbg !2701
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

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2707 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2711, metadata !575), !dbg !2714
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2712, metadata !575), !dbg !2715
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2713, metadata !575), !dbg !2716
  %4 = udiv i64 9223372036854775807, %2, !dbg !2717
  %5 = icmp ult i64 %4, %1, !dbg !2717
  br i1 %5, label %6, label %7, !dbg !2719

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2720
  unreachable, !dbg !2720

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2721
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2722, metadata !575) #9, !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2727, metadata !575) #9, !dbg !2730
  %9 = icmp eq i64 %8, 0, !dbg !2731
  %10 = icmp ne i8* %0, null, !dbg !2733
  %11 = and i1 %10, %9, !dbg !2734
  br i1 %11, label %12, label %13, !dbg !2734

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !2735
  br label %19, !dbg !2737

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !2738
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2722, metadata !575) #9, !dbg !2728
  %15 = icmp eq i8* %14, null, !dbg !2739
  %16 = icmp ne i64 %8, 0, !dbg !2741
  %17 = and i1 %16, %15, !dbg !2742
  br i1 %17, label %18, label %19, !dbg !2742

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2743
  unreachable, !dbg !2743

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2744
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2723 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2722, metadata !575), !dbg !2745
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2727, metadata !575), !dbg !2746
  %3 = icmp eq i64 %1, 0, !dbg !2747
  %4 = icmp ne i8* %0, null, !dbg !2748
  %5 = and i1 %4, %3, !dbg !2749
  br i1 %5, label %6, label %7, !dbg !2749

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !2750
  br label %13, !dbg !2751

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !2752
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2722, metadata !575), !dbg !2745
  %9 = icmp eq i8* %8, null, !dbg !2753
  %10 = icmp ne i64 %1, 0, !dbg !2754
  %11 = and i1 %10, %9, !dbg !2755
  br i1 %11, label %12, label %13, !dbg !2755

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2756
  unreachable, !dbg !2756

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2757
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !535 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !540, metadata !575), !dbg !2758
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !541, metadata !575), !dbg !2759
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !542, metadata !575), !dbg !2760
  %4 = load i64, i64* %1, align 8, !dbg !2761, !tbaa !1795
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !543, metadata !575), !dbg !2762
  %5 = icmp eq i8* %0, null, !dbg !2763
  br i1 %5, label %6, label %13, !dbg !2765

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2766
  br i1 %7, label %8, label %17, !dbg !2769

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !543, metadata !575), !dbg !2762
  %10 = icmp ugt i64 %2, 128, !dbg !2772
  %11 = zext i1 %10 to i64, !dbg !2772
  %12 = add nuw nsw i64 %9, %11, !dbg !2773
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !543, metadata !575), !dbg !2762
  br label %17, !dbg !2774

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2775
  %15 = icmp ugt i64 %14, %4, !dbg !2778
  br i1 %15, label %20, label %16, !dbg !2779

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2780
  unreachable, !dbg !2780

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2762
  store i64 %18, i64* %1, align 8, !dbg !2781, !tbaa !1795
  %19 = mul i64 %18, %2, !dbg !2782
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2722, metadata !575) #9, !dbg !2783
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2727, metadata !575) #9, !dbg !2785
  br label %27, !dbg !2786

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2787
  %22 = add i64 %4, 1, !dbg !2788
  %23 = add i64 %22, %21, !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2762
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !543, metadata !575), !dbg !2762
  store i64 %23, i64* %1, align 8, !dbg !2781, !tbaa !1795
  %24 = mul i64 %23, %2, !dbg !2782
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2722, metadata !575) #9, !dbg !2783
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2727, metadata !575) #9, !dbg !2785
  %25 = icmp eq i64 %24, 0, !dbg !2790
  br i1 %25, label %26, label %27, !dbg !2786

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !2791
  br label %34, !dbg !2792

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !2793
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2722, metadata !575) #9, !dbg !2783
  %30 = icmp eq i8* %29, null, !dbg !2794
  %31 = icmp ne i64 %28, 0, !dbg !2795
  %32 = and i1 %31, %30, !dbg !2796
  br i1 %32, label %33, label %34, !dbg !2796

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2797
  unreachable, !dbg !2797

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2798
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2799 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2801, metadata !575), !dbg !2802
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2682, metadata !575) #9, !dbg !2803
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2805
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2688, metadata !575) #9, !dbg !2806
  %3 = icmp eq i8* %2, null, !dbg !2807
  %4 = icmp ne i64 %0, 0, !dbg !2808
  %5 = and i1 %4, %3, !dbg !2809
  br i1 %5, label %6, label %7, !dbg !2809

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2810
  unreachable, !dbg !2810

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2811
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2812 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2816, metadata !575), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2817, metadata !575), !dbg !2819
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !540, metadata !575) #9, !dbg !2820
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !541, metadata !575) #9, !dbg !2822
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !542, metadata !575) #9, !dbg !2823
  %3 = load i64, i64* %1, align 8, !dbg !2824, !tbaa !1795
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !543, metadata !575) #9, !dbg !2825
  %4 = icmp eq i8* %0, null, !dbg !2826
  br i1 %4, label %5, label %8, !dbg !2827

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2828
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !543, metadata !575) #9, !dbg !2825
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !543, metadata !575) #9, !dbg !2825
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #9, !dbg !2825
  store i64 %7, i64* %1, align 8, !dbg !2830, !tbaa !1795
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2722, metadata !575) #9, !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2727, metadata !575) #9, !dbg !2833
  br label %17, !dbg !2834

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2835
  br i1 %9, label %11, label %10, !dbg !2836

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2837
  unreachable, !dbg !2837

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2838
  %13 = add i64 %3, 1, !dbg !2839
  %14 = add i64 %13, %12, !dbg !2840
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #9, !dbg !2825
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !543, metadata !575) #9, !dbg !2825
  store i64 %14, i64* %1, align 8, !dbg !2830, !tbaa !1795
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2722, metadata !575) #9, !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2727, metadata !575) #9, !dbg !2833
  %15 = icmp eq i64 %14, 0, !dbg !2841
  br i1 %15, label %16, label %17, !dbg !2834

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !2842
  br label %24, !dbg !2843

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !2844
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2722, metadata !575) #9, !dbg !2831
  %20 = icmp eq i8* %19, null, !dbg !2845
  %21 = icmp ne i64 %18, 0, !dbg !2846
  %22 = and i1 %21, %20, !dbg !2847
  br i1 %22, label %23, label %24, !dbg !2847

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2848
  unreachable, !dbg !2848

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2849
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2850 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2852, metadata !575), !dbg !2853
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2682, metadata !575) #9, !dbg !2854
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2856
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2688, metadata !575) #9, !dbg !2857
  %3 = icmp eq i8* %2, null, !dbg !2858
  %4 = icmp ne i64 %0, 0, !dbg !2859
  %5 = and i1 %4, %3, !dbg !2860
  br i1 %5, label %6, label %7, !dbg !2860

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2861
  unreachable, !dbg !2861

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2862
  ret i8* %2, !dbg !2863
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2864 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2866, metadata !575), !dbg !2869
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2867, metadata !575), !dbg !2870
  %3 = udiv i64 9223372036854775807, %1, !dbg !2871
  %4 = icmp ult i64 %3, %0, !dbg !2871
  br i1 %4, label %8, label %5, !dbg !2873

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !2874
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2868, metadata !575), !dbg !2875
  %7 = icmp eq i8* %6, null, !dbg !2876
  br i1 %7, label %8, label %9, !dbg !2877

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2878
  unreachable, !dbg !2878

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2879
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2880 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2886, metadata !575), !dbg !2888
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2887, metadata !575), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2682, metadata !575) #9, !dbg !2890
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !2892
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2688, metadata !575) #9, !dbg !2893
  %4 = icmp eq i8* %3, null, !dbg !2894
  %5 = icmp ne i64 %1, 0, !dbg !2895
  %6 = and i1 %5, %4, !dbg !2896
  br i1 %6, label %7, label %8, !dbg !2896

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2897
  unreachable, !dbg !2897

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2898
  ret i8* %3, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2900 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2902, metadata !575), !dbg !2903
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2904
  %3 = add i64 %2, 1, !dbg !2905
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2886, metadata !575) #9, !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2887, metadata !575) #9, !dbg !2908
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2682, metadata !575) #9, !dbg !2909
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !2911
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2688, metadata !575) #9, !dbg !2912
  %5 = icmp eq i8* %4, null, !dbg !2913
  %6 = icmp ne i64 %3, 0, !dbg !2914
  %7 = and i1 %6, %5, !dbg !2915
  br i1 %7, label %8, label %9, !dbg !2915

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2916
  unreachable, !dbg !2916

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !2917
  ret i8* %4, !dbg !2918
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2919 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2921, !tbaa !644
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.84, i64 0, i64 0), i32 5) #9, !dbg !2922
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i8* %2) #9, !dbg !2923
  tail call void @abort() #15, !dbg !2924
  unreachable, !dbg !2924
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2925 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2928, metadata !575), !dbg !2934
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2929, metadata !575), !dbg !2935
  %3 = icmp eq i64 %0, 0, !dbg !2936
  %4 = icmp eq i64 %1, 0, !dbg !2937
  %5 = or i1 %3, %4, !dbg !2938
  br i1 %5, label %12, label %6, !dbg !2938

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2931, metadata !575), !dbg !2940
  %8 = udiv i64 %7, %1, !dbg !2941
  %9 = icmp eq i64 %8, %0, !dbg !2943
  br i1 %9, label %12, label %10, !dbg !2944

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2945
  store i32 12, i32* %11, align 4, !dbg !2947, !tbaa !644
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2928, metadata !575), !dbg !2934
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2929, metadata !575), !dbg !2935
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !2948
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2930, metadata !575), !dbg !2949
  br label %16, !dbg !2950

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !2951
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !2952 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !2969, metadata !575), !dbg !2978
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2970, metadata !575), !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2971, metadata !575), !dbg !2980
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !2972, metadata !575), !dbg !2981
  %6 = bitcast i32* %5 to i8*, !dbg !2982
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !2982
  %7 = icmp eq i32* %0, null, !dbg !2983
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2969, metadata !575), !dbg !2978
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2985
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2969, metadata !575), !dbg !2978
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2973, metadata !575), !dbg !2987
  %10 = icmp ugt i64 %9, -3, !dbg !2988
  %11 = icmp ne i64 %2, 0, !dbg !2989
  %12 = and i1 %11, %10, !dbg !2990
  br i1 %12, label %13, label %18, !dbg !2990

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !2991
  br i1 %14, label %18, label %15, !dbg !2992

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2993, !tbaa !689
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !2975, metadata !575), !dbg !2994
  %17 = zext i8 %16 to i32, !dbg !2995
  store i32 %17, i32* %8, align 4, !dbg !2996, !tbaa !644
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !2997
  ret i64 %19, !dbg !2997
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !2998 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3043, metadata !575), !dbg !3048
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3049
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3050, metadata !575), !dbg !3054
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3056
  %4 = load i32, i32* %3, align 8, !dbg !3056, !tbaa !3057
  %5 = and i32 %4, 32, !dbg !3056
  %6 = icmp eq i32 %5, 0, !dbg !3059
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3060
  %8 = icmp ne i32 %7, 0, !dbg !3061
  br i1 %6, label %9, label %19, !dbg !3062

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3064
  %11 = xor i1 %8, true, !dbg !3065
  %12 = or i1 %10, %11, !dbg !3065
  %13 = sext i1 %8 to i32, !dbg !3065
  br i1 %12, label %22, label %14, !dbg !3065

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3066
  %16 = load i32, i32* %15, align 4, !dbg !3066, !tbaa !644
  %17 = icmp ne i32 %16, 9, !dbg !3067
  %18 = sext i1 %17 to i32, !dbg !3068
  br label %22, !dbg !3068

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3069

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3071
  store i32 0, i32* %21, align 4, !dbg !3073, !tbaa !644
  br label %22, !dbg !3071

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3074
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3075 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3080, metadata !575), !dbg !3083
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3081, metadata !575), !dbg !3084
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3085
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3082, metadata !575), !dbg !3086
  %3 = icmp eq i8* %2, null, !dbg !3087
  br i1 %3, label %11, label %4, !dbg !3089

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i64 0, i64 0)) #14, !dbg !3090
  %6 = icmp eq i32 %5, 0, !dbg !3095
  br i1 %6, label %10, label %7, !dbg !3096

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.95, i64 0, i64 0)) #14, !dbg !3097
  %9 = icmp eq i32 %8, 0, !dbg !3098
  br i1 %9, label %10, label %11, !dbg !3099

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3081, metadata !575), !dbg !3084
  br label %11, !dbg !3100

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3101
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3102 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3108, metadata !575), !dbg !3182
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3175, metadata !575), !dbg !3185
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3186
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3106, metadata !575), !dbg !3187
  %4 = icmp eq i8* %3, null, !dbg !3188
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), i8* %3, !dbg !3190
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3106, metadata !575), !dbg !3187
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3191, !tbaa !582
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3122, metadata !575) #9, !dbg !3192
  %7 = icmp eq i8* %6, null, !dbg !3193
  br i1 %7, label %8, label %123, !dbg !3194

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.99, i64 0, i64 0)) #9, !dbg !3195
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3123, metadata !575) #9, !dbg !3196
  %10 = icmp eq i8* %9, null, !dbg !3197
  br i1 %10, label %14, label %11, !dbg !3199

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3200, !tbaa !689
  %13 = icmp eq i8 %12, 0, !dbg !3201
  br i1 %13, label %14, label %15, !dbg !3202

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3203

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.100, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3123, metadata !575) #9, !dbg !3196
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3126, metadata !575) #9, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3128, metadata !575) #9, !dbg !3206
  %18 = icmp eq i64 %17, 0, !dbg !3207
  br i1 %18, label %24, label %19, !dbg !3208

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3209
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3209
  %22 = load i8, i8* %21, align 1, !dbg !3209, !tbaa !689
  %23 = icmp ne i8 %22, 47, !dbg !3209
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3210
  %27 = add i64 %17, 14, !dbg !3211
  %28 = add i64 %27, %26, !dbg !3212
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3213
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3125, metadata !575) #9, !dbg !3214
  %30 = icmp eq i8* %29, null, !dbg !3215
  br i1 %30, label %121, label %31, !dbg !3215

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3216
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3219

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3220, !tbaa !689
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3222
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.101, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3223
  br label %37, !dbg !3224

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3222
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.101, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3223
  br label %37, !dbg !3224

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3225
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3130, metadata !575) #9, !dbg !3226
  %39 = icmp slt i32 %38, 0, !dbg !3227
  br i1 %39, label %119, label %40, !dbg !3228

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.102, i64 0, i64 0)) #9, !dbg !3229
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3131, metadata !575) #9, !dbg !3230
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3231
  br i1 %42, label %43, label %45, !dbg !3232

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #9, !dbg !3233
  br label %119, !dbg !3235

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3172, metadata !575) #9, !dbg !3236
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3173, metadata !575) #9, !dbg !3237
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3238

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3239

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3172, metadata !575) #9, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3173, metadata !575) #9, !dbg !3237
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3239
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3240
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3241, metadata !575) #9, !dbg !3246
  %54 = load i8*, i8** %48, align 8, !dbg !3248, !tbaa !3249
  %55 = load i8*, i8** %49, align 8, !dbg !3248, !tbaa !3250
  %56 = icmp ult i8* %54, %55, !dbg !3248
  br i1 %56, label %59, label %57, !dbg !3248, !prof !3251

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3248
  br label %63, !dbg !3248

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3248
  store i8* %60, i8** %48, align 8, !dbg !3248, !tbaa !3249
  %61 = load i8, i8* %54, align 1, !dbg !3248, !tbaa !689
  %62 = zext i8 %61 to i32, !dbg !3248
  br label %63, !dbg !3248

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3248
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3174, metadata !575) #9, !dbg !3252
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3253, !llvm.loop !3254

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3259

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3241, metadata !575) #9, !dbg !3261
  %67 = load i8*, i8** %48, align 8, !dbg !3259, !tbaa !3249
  %68 = load i8*, i8** %49, align 8, !dbg !3259, !tbaa !3250
  %69 = icmp ult i8* %67, %68, !dbg !3259
  br i1 %69, label %72, label %70, !dbg !3259, !prof !3251

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3259
  br label %76, !dbg !3259

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3259
  store i8* %73, i8** %48, align 8, !dbg !3259, !tbaa !3249
  %74 = load i8, i8* %67, align 1, !dbg !3259, !tbaa !689
  %75 = zext i8 %74 to i32, !dbg !3259
  br label %76, !dbg !3259

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3259
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3174, metadata !575) #9, !dbg !3252
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3262, !llvm.loop !3263

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #9, !dbg !3266
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.103, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #9, !dbg !3267
  %81 = icmp slt i32 %80, 2, !dbg !3269
  br i1 %81, label %112, label %82, !dbg !3270

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3179, metadata !575) #9, !dbg !3272
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3180, metadata !575) #9, !dbg !3274
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3181, metadata !575) #9, !dbg !3275
  %85 = icmp eq i64 %51, 0, !dbg !3276
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3278

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3173, metadata !575) #9, !dbg !3237
  %90 = add i64 %87, 2, !dbg !3279
  %91 = call noalias i8* @malloc(i64 %90) #9, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3172, metadata !575) #9, !dbg !3236
  br label %96, !dbg !3282

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3173, metadata !575) #9, !dbg !3237
  %94 = add i64 %93, 1, !dbg !3285
  %95 = call i8* @realloc(i8* %52, i64 %94) #9, !dbg !3286
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3172, metadata !575) #9, !dbg !3236
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3172, metadata !575) #9, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3173, metadata !575) #9, !dbg !3237
  %99 = icmp eq i8* %98, null, !dbg !3287
  br i1 %99, label %100, label %102, !dbg !3289

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3173, metadata !575) #9, !dbg !3237
  call void @free(i8* %52) #9, !dbg !3290
  br label %112, !dbg !3292

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3293
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3293
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3294
  %104 = xor i64 %84, -1, !dbg !3295
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3295
  %106 = xor i64 %83, -1, !dbg !3296
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3297, metadata !575) #9, !dbg !3306
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3305, metadata !575) #9, !dbg !3306
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #9, !dbg !3308
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #9, !dbg !3309
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3297, metadata !575) #9, !dbg !3310
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3305, metadata !575) #9, !dbg !3310
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #9, !dbg !3312
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #9, !dbg !3313
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3172, metadata !575) #9, !dbg !3236
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3173, metadata !575) #9, !dbg !3237
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3293
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3293
  br label %50, !dbg !3314, !llvm.loop !3263

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3293
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3293
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3315
  %116 = icmp eq i64 %113, 0, !dbg !3316
  br i1 %116, label %119, label %117, !dbg !3318

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3319
  store i8 0, i8* %118, align 1, !dbg !3321, !tbaa !689
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3122, metadata !575) #9, !dbg !3192
  call void @free(i8* %29) #9, !dbg !3322
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.98, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3122, metadata !575) #9, !dbg !3192
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3323, !tbaa !582
  br label %123, !dbg !3324

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3122, metadata !575) #9, !dbg !3192
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3107, metadata !575), !dbg !3325
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3107, metadata !575), !dbg !3325
  %125 = load i8, i8* %124, align 1, !dbg !3326, !tbaa !689
  %126 = icmp eq i8 %125, 0, !dbg !3328
  br i1 %126, label %152, label %127, !dbg !3329

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3330

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3107, metadata !575), !dbg !3325
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3330
  %132 = icmp eq i32 %131, 0, !dbg !3332
  br i1 %132, label %139, label %133, !dbg !3333

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3334
  br i1 %134, label %135, label %143, !dbg !3335

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3336
  %137 = load i8, i8* %136, align 1, !dbg !3336, !tbaa !689
  %138 = icmp eq i8 %137, 0, !dbg !3337
  br i1 %138, label %139, label %143, !dbg !3338

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3339
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3341
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3106, metadata !575), !dbg !3187
  br label %152, !dbg !3343

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3344
  %145 = add i64 %144, 1, !dbg !3345
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3346
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3107, metadata !575), !dbg !3325
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3347
  %148 = add i64 %147, 1, !dbg !3348
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3349
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3107, metadata !575), !dbg !3325
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3107, metadata !575), !dbg !3325
  %150 = load i8, i8* %149, align 1, !dbg !3326, !tbaa !689
  %151 = icmp eq i8 %150, 0, !dbg !3328
  br i1 %151, label %152, label %128, !dbg !3329, !llvm.loop !3350

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3106, metadata !575), !dbg !3187
  %154 = load i8, i8* %153, align 1, !dbg !3352, !tbaa !689
  %155 = icmp eq i8 %154, 0, !dbg !3354
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.104, i64 0, i64 0), i8* %153, !dbg !3355
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3106, metadata !575), !dbg !3187
  ret i8* %156, !dbg !3356
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3357 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3402, metadata !575), !dbg !3406
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3403, metadata !575), !dbg !3407
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3405, metadata !575), !dbg !3408
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3409
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3404, metadata !575), !dbg !3410
  %3 = icmp slt i32 %2, 0, !dbg !3411
  br i1 %3, label %4, label %6, !dbg !3413

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3414
  br label %24, !dbg !3415

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3416
  %8 = icmp eq i32 %7, 0, !dbg !3416
  br i1 %8, label %13, label %9, !dbg !3418

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3419
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3420
  %12 = icmp eq i64 %11, -1, !dbg !3421
  br i1 %12, label %16, label %13, !dbg !3422

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3423
  %15 = icmp eq i32 %14, 0, !dbg !3423
  br i1 %15, label %16, label %18, !dbg !3424

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3403, metadata !575), !dbg !3407
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3425
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3405, metadata !575), !dbg !3408
  br label %24, !dbg !3426

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3427
  %20 = load i32, i32* %19, align 4, !dbg !3427, !tbaa !644
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3403, metadata !575), !dbg !3407
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3403, metadata !575), !dbg !3407
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3425
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3405, metadata !575), !dbg !3408
  %22 = icmp eq i32 %20, 0, !dbg !3428
  br i1 %22, label %24, label %23, !dbg !3426

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3430, !tbaa !644
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3405, metadata !575), !dbg !3408
  br label %24, !dbg !3432

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3433
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3434 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3479, metadata !575), !dbg !3480
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3481
  br i1 %2, label %6, label %3, !dbg !3483

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3484
  %5 = icmp eq i32 %4, 0, !dbg !3484
  br i1 %5, label %6, label %8, !dbg !3485

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3486
  br label %17, !dbg !3487

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3488, metadata !575) #9, !dbg !3493
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3495
  %10 = load i32, i32* %9, align 8, !dbg !3495, !tbaa !3057
  %11 = and i32 %10, 256, !dbg !3497
  %12 = icmp eq i32 %11, 0, !dbg !3497
  br i1 %12, label %15, label %13, !dbg !3498

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3499
  br label %15, !dbg !3499

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3500
  br label %17, !dbg !3501

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3502
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3503 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3549, metadata !575), !dbg !3555
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3550, metadata !575), !dbg !3556
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3551, metadata !575), !dbg !3557
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3558
  %5 = load i8*, i8** %4, align 8, !dbg !3558, !tbaa !3250
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3559
  %7 = load i8*, i8** %6, align 8, !dbg !3559, !tbaa !3249
  %8 = icmp eq i8* %5, %7, !dbg !3560
  br i1 %8, label %9, label %28, !dbg !3561

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3562
  %11 = load i8*, i8** %10, align 8, !dbg !3562, !tbaa !3563
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3564
  %13 = load i8*, i8** %12, align 8, !dbg !3564, !tbaa !3565
  %14 = icmp eq i8* %11, %13, !dbg !3566
  br i1 %14, label %15, label %28, !dbg !3567

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3568
  %17 = load i8*, i8** %16, align 8, !dbg !3568, !tbaa !3569
  %18 = icmp eq i8* %17, null, !dbg !3570
  br i1 %18, label %19, label %28, !dbg !3571

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3572
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3573
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3552, metadata !575), !dbg !3574
  %22 = icmp eq i64 %21, -1, !dbg !3575
  br i1 %22, label %30, label %23, !dbg !3577

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3578
  %25 = load i32, i32* %24, align 8, !dbg !3579, !tbaa !3057
  %26 = and i32 %25, -17, !dbg !3579
  store i32 %26, i32* %24, align 8, !dbg !3579, !tbaa !3057
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3580
  store i64 %21, i64* %27, align 8, !dbg !3581, !tbaa !3582
  br label %30, !dbg !3583

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3584
  br label %30, !dbg !3585

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3586
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

!llvm.dbg.cu = !{!2, !50, !56, !65, !72, !79, !522, !166, !530, !547, !549, !551, !554, !556, !175, !558, !560, !562}
!llvm.ident = !{!564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564, !564}
!llvm.module.flags = !{!565, !566, !567, !568, !569}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 47, type: !35, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !8, globals: !12)
!3 = !DIFile(filename: "src/printenv.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 38, size: 32, elements: !6)
!6 = !{!7}
!7 = !DIEnumerator(name: "PRINTENV_FAILURE", value: 2)
!8 = !{!9, !11}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{!13, !0}
!13 = !DIGlobalVariableExpression(var: !14)
!14 = distinct !DIGlobalVariable(name: "infomap", scope: !15, file: !16, line: 632, type: !32, isLocal: true, isDefinition: true)
!15 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !16, file: !16, line: 630, type: !17, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !21)
!16 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!21 = !{!22, !23, !24, !31}
!22 = !DILocalVariable(name: "program", arg: 1, scope: !15, file: !16, line: 630, type: !19)
!23 = !DILocalVariable(name: "node", scope: !15, file: !16, line: 642, type: !19)
!24 = !DILocalVariable(name: "map_prog", scope: !15, file: !16, line: 643, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !15, file: !16, line: 632, size: 128, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !27, file: !16, line: 632, baseType: !19, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !27, file: !16, line: 632, baseType: !19, size: 64, offset: 64)
!31 = !DILocalVariable(name: "lc_messages", scope: !15, file: !16, line: 655, type: !19)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 896, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 7)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1024, elements: !46)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !38, line: 50, size: 256, elements: !39)
!38 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!39 = !{!40, !41, !43, !45}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !37, file: !38, line: 52, baseType: !19, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !37, file: !38, line: 55, baseType: !42, size: 32, offset: 64)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !37, file: !38, line: 56, baseType: !44, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !37, file: !38, line: 57, baseType: !42, size: 32, offset: 192)
!46 = !{!47}
!47 = !DISubrange(count: 4)
!48 = !DIGlobalVariableExpression(var: !49)
!49 = distinct !DIGlobalVariable(name: "Version", scope: !50, file: !51, line: 2, type: !19, isLocal: false, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, globals: !53)
!51 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!52 = !{}
!53 = !{!48}
!54 = !DIGlobalVariableExpression(var: !55)
!55 = distinct !DIGlobalVariable(name: "file_name", scope: !56, file: !61, line: 36, type: !19, isLocal: true, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, globals: !58)
!57 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!58 = !{!54, !59}
!59 = !DIGlobalVariableExpression(var: !60)
!60 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !56, file: !61, line: 46, type: !62, isLocal: true, isDefinition: true)
!61 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!62 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!63 = !DIGlobalVariableExpression(var: !64)
!64 = distinct !DIGlobalVariable(name: "exit_failure", scope: !65, file: !68, line: 24, type: !69, isLocal: false, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, globals: !67)
!66 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!67 = !{!63}
!68 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!69 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!70 = !DIGlobalVariableExpression(var: !71)
!71 = distinct !DIGlobalVariable(name: "program_name", scope: !72, file: !76, line: 33, type: !19, isLocal: false, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !74, globals: !75)
!73 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !{!11, !9}
!75 = !{!70}
!76 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !DIGlobalVariableExpression(var: !78)
!78 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !79, file: !124, line: 77, type: !160, isLocal: false, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !81, retainedTypes: !116, globals: !121)
!80 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!82, !96, !101}
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !83, line: 32, size: 32, elements: !84)
!83 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!85 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!86 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!87 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!88 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!89 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!90 = !DIEnumerator(name: "c_quoting_style", value: 5)
!91 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!92 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!93 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!94 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!95 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !83, line: 242, size: 32, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!99 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!100 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 46, size: 32, elements: !103)
!102 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115}
!104 = !DIEnumerator(name: "_ISupper", value: 256)
!105 = !DIEnumerator(name: "_ISlower", value: 512)
!106 = !DIEnumerator(name: "_ISalpha", value: 1024)
!107 = !DIEnumerator(name: "_ISdigit", value: 2048)
!108 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!109 = !DIEnumerator(name: "_ISspace", value: 8192)
!110 = !DIEnumerator(name: "_ISprint", value: 16384)
!111 = !DIEnumerator(name: "_ISgraph", value: 32768)
!112 = !DIEnumerator(name: "_ISblank", value: 1)
!113 = !DIEnumerator(name: "_IScntrl", value: 2)
!114 = !DIEnumerator(name: "_ISpunct", value: 4)
!115 = !DIEnumerator(name: "_ISalnum", value: 8)
!116 = !{!42, !117, !118, !9}
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 62, baseType: !120)
!119 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!120 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!121 = !{!77, !122, !129, !142, !144, !149, !156, !158}
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !79, file: !124, line: 93, type: !125, isLocal: false, isDefinition: true)
!124 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 320, elements: !127)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!127 = !{!128}
!128 = !DISubrange(count: 10)
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !79, file: !124, line: 1043, type: !131, isLocal: false, isDefinition: true)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !124, line: 57, size: 448, elements: !132)
!132 = !{!133, !134, !135, !140, !141}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !131, file: !124, line: 60, baseType: !82, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !124, line: 63, baseType: !42, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !131, file: !124, line: 67, baseType: !136, size: 256, offset: 64)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !138)
!137 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!138 = !{!139}
!139 = !DISubrange(count: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !131, file: !124, line: 70, baseType: !19, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !131, file: !124, line: 73, baseType: !19, size: 64, offset: 384)
!142 = !DIGlobalVariableExpression(var: !143)
!143 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !79, file: !124, line: 108, type: !131, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "slot0", scope: !79, file: !124, line: 834, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 256)
!149 = !DIGlobalVariableExpression(var: !150)
!150 = distinct !DIGlobalVariable(name: "slotvec", scope: !79, file: !124, line: 837, type: !151, isLocal: true, isDefinition: true)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !124, line: 826, size: 128, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !152, file: !124, line: 828, baseType: !118, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !152, file: !124, line: 829, baseType: !9, size: 64, offset: 64)
!156 = !DIGlobalVariableExpression(var: !157)
!157 = distinct !DIGlobalVariable(name: "nslots", scope: !79, file: !124, line: 835, type: !42, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "slotvec0", scope: !79, file: !124, line: 836, type: !152, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 704, elements: !162)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!162 = !{!163}
!163 = !DISubrange(count: 11)
!164 = !DIGlobalVariableExpression(var: !165)
!165 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !166, file: !169, line: 26, type: !170, isLocal: false, isDefinition: true)
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, globals: !168)
!167 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!168 = !{!164}
!169 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 376, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 47)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !175, file: !520, line: 120, type: !521, isLocal: true, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !516, globals: !519)
!176 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!177 = !{!178}
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 41, size: 32, elements: !180)
!179 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515}
!181 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!182 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!183 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!184 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!185 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!186 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!187 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!188 = !DIEnumerator(name: "DAY_1", value: 131079)
!189 = !DIEnumerator(name: "DAY_2", value: 131080)
!190 = !DIEnumerator(name: "DAY_3", value: 131081)
!191 = !DIEnumerator(name: "DAY_4", value: 131082)
!192 = !DIEnumerator(name: "DAY_5", value: 131083)
!193 = !DIEnumerator(name: "DAY_6", value: 131084)
!194 = !DIEnumerator(name: "DAY_7", value: 131085)
!195 = !DIEnumerator(name: "ABMON_1", value: 131086)
!196 = !DIEnumerator(name: "ABMON_2", value: 131087)
!197 = !DIEnumerator(name: "ABMON_3", value: 131088)
!198 = !DIEnumerator(name: "ABMON_4", value: 131089)
!199 = !DIEnumerator(name: "ABMON_5", value: 131090)
!200 = !DIEnumerator(name: "ABMON_6", value: 131091)
!201 = !DIEnumerator(name: "ABMON_7", value: 131092)
!202 = !DIEnumerator(name: "ABMON_8", value: 131093)
!203 = !DIEnumerator(name: "ABMON_9", value: 131094)
!204 = !DIEnumerator(name: "ABMON_10", value: 131095)
!205 = !DIEnumerator(name: "ABMON_11", value: 131096)
!206 = !DIEnumerator(name: "ABMON_12", value: 131097)
!207 = !DIEnumerator(name: "MON_1", value: 131098)
!208 = !DIEnumerator(name: "MON_2", value: 131099)
!209 = !DIEnumerator(name: "MON_3", value: 131100)
!210 = !DIEnumerator(name: "MON_4", value: 131101)
!211 = !DIEnumerator(name: "MON_5", value: 131102)
!212 = !DIEnumerator(name: "MON_6", value: 131103)
!213 = !DIEnumerator(name: "MON_7", value: 131104)
!214 = !DIEnumerator(name: "MON_8", value: 131105)
!215 = !DIEnumerator(name: "MON_9", value: 131106)
!216 = !DIEnumerator(name: "MON_10", value: 131107)
!217 = !DIEnumerator(name: "MON_11", value: 131108)
!218 = !DIEnumerator(name: "MON_12", value: 131109)
!219 = !DIEnumerator(name: "AM_STR", value: 131110)
!220 = !DIEnumerator(name: "PM_STR", value: 131111)
!221 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!222 = !DIEnumerator(name: "D_FMT", value: 131113)
!223 = !DIEnumerator(name: "T_FMT", value: 131114)
!224 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!225 = !DIEnumerator(name: "ERA", value: 131116)
!226 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!227 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!228 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!229 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!230 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!231 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!232 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!233 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!234 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!235 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!236 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!237 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!238 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!239 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!240 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!241 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!242 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!243 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!244 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!245 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!246 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!247 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!248 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!249 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!250 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!251 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!252 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!253 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!254 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!255 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!256 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!257 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!258 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!259 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!260 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!261 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!262 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!263 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!264 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!265 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!266 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!267 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!268 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!269 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!270 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!271 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!272 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!273 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!274 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!275 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!276 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!277 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!278 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!279 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!280 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!281 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!282 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!283 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!284 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!285 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!286 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!287 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!288 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!289 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!290 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!291 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!292 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!293 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!294 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!295 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!296 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!297 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!298 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!299 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!300 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!301 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!302 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!303 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!304 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!305 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!306 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!307 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!308 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!309 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!310 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!311 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!312 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!313 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!314 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!315 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!316 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!317 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!318 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!319 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!320 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!321 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!322 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!323 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!324 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!325 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!326 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!327 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!328 = !DIEnumerator(name: "CODESET", value: 14)
!329 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!330 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!331 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!332 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!333 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!334 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!335 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!337 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!355 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!356 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!357 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!358 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!359 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!375 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!376 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!377 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!378 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!379 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!380 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!381 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!382 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!383 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!384 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!385 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!386 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!387 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!388 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!389 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!390 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!397 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!398 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!399 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!400 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!401 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!402 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!403 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!404 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!405 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!406 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!407 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!408 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!409 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!410 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!411 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!412 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!413 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!414 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!415 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!416 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!417 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!418 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!419 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!420 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!421 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!422 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!423 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!424 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!425 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!426 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!427 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!436 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!437 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!439 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!440 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!443 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!444 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!445 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!446 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!447 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!448 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!449 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!450 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!451 = !DIEnumerator(name: "THOUSEP", value: 65537)
!452 = !DIEnumerator(name: "__GROUPING", value: 65538)
!453 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!454 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!455 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!456 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!457 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!458 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!459 = !DIEnumerator(name: "__YESSTR", value: 327682)
!460 = !DIEnumerator(name: "__NOSTR", value: 327683)
!461 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!462 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!463 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!464 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!465 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!466 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!467 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!468 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!469 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!470 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!471 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!472 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!473 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!474 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!475 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!476 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!477 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!478 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!479 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!480 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!481 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!482 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!483 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!484 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!485 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!486 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!487 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!488 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!489 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!490 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!491 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!492 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!493 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!494 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!495 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!496 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!497 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!498 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!499 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!500 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!501 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!502 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!511 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!512 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!513 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!514 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!515 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!516 = !{!11, !9, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!519 = !{!173}
!520 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!521 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !524, retainedTypes: !529)
!523 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!524 = !{!525}
!525 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 41, size: 32, elements: !527)
!526 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!527 = !{!528}
!528 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!529 = !{!11}
!530 = distinct !DICompileUnit(language: DW_LANG_C99, file: !531, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !532, retainedTypes: !546)
!531 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!532 = !{!533}
!533 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !535, file: !534, line: 192, size: 32, elements: !544)
!534 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = distinct !DISubprogram(name: "x2nrealloc", scope: !534, file: !534, line: 180, type: !536, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !539)
!536 = !DISubroutineType(types: !537)
!537 = !{!11, !11, !538, !118}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!539 = !{!540, !541, !542, !543}
!540 = !DILocalVariable(name: "p", arg: 1, scope: !535, file: !534, line: 180, type: !11)
!541 = !DILocalVariable(name: "pn", arg: 2, scope: !535, file: !534, line: 180, type: !538)
!542 = !DILocalVariable(name: "s", arg: 3, scope: !535, file: !534, line: 180, type: !118)
!543 = !DILocalVariable(name: "n", scope: !535, file: !534, line: 182, type: !118)
!544 = !{!545}
!545 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!546 = !{!118, !9, !11}
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52)
!548 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !529)
!550 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !553)
!552 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!553 = !{!118}
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52)
!555 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !557, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52)
!557 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52)
!559 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !529)
!561 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !529)
!563 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!564 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!565 = !{i32 2, !"Dwarf Version", i32 4}
!566 = !{i32 2, !"Debug Info Version", i32 3}
!567 = !{i32 1, !"wchar_size", i32 4}
!568 = !{i32 7, !"PIC Level", i32 2}
!569 = !{i32 7, !"PIE Level", i32 2}
!570 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 56, type: !571, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !42}
!573 = !{!574}
!574 = !DILocalVariable(name: "status", arg: 1, scope: !570, file: !3, line: 56, type: !42)
!575 = !DIExpression()
!576 = !DILocation(line: 56, column: 12, scope: !570)
!577 = !DILocation(line: 58, column: 14, scope: !578)
!578 = distinct !DILexicalBlock(scope: !570, file: !3, line: 58, column: 7)
!579 = !DILocation(line: 58, column: 7, scope: !570)
!580 = !DILocation(line: 59, column: 5, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !3, line: 59, column: 5)
!582 = !{!583, !583, i64 0}
!583 = !{!"any pointer", !584, i64 0}
!584 = !{!"omnipotent char", !585, i64 0}
!585 = !{!"Simple C/C++ TBAA"}
!586 = !DILocation(line: 62, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !578, file: !3, line: 61, column: 5)
!588 = !DILocation(line: 69, column: 7, scope: !587)
!589 = !DILocation(line: 72, column: 7, scope: !587)
!590 = !DILocation(line: 73, column: 7, scope: !587)
!591 = !DILocation(line: 74, column: 7, scope: !587)
!592 = !DILocation(line: 642, column: 15, scope: !15, inlinedAt: !593)
!593 = distinct !DILocation(line: 75, column: 7, scope: !587)
!594 = !DILocation(line: 651, column: 3, scope: !15, inlinedAt: !593)
!595 = !DILocation(line: 655, column: 29, scope: !15, inlinedAt: !593)
!596 = !DILocation(line: 655, column: 15, scope: !15, inlinedAt: !593)
!597 = !DILocation(line: 656, column: 7, scope: !598, inlinedAt: !593)
!598 = distinct !DILexicalBlock(scope: !15, file: !16, line: 656, column: 7)
!599 = !DILocation(line: 656, column: 19, scope: !598, inlinedAt: !593)
!600 = !DILocation(line: 656, column: 22, scope: !598, inlinedAt: !593)
!601 = !DILocation(line: 656, column: 7, scope: !15, inlinedAt: !593)
!602 = !DILocation(line: 662, column: 7, scope: !603, inlinedAt: !593)
!603 = distinct !DILexicalBlock(scope: !598, file: !16, line: 657, column: 5)
!604 = !DILocation(line: 664, column: 5, scope: !603, inlinedAt: !593)
!605 = !DILocation(line: 665, column: 3, scope: !15, inlinedAt: !593)
!606 = !DILocation(line: 667, column: 3, scope: !15, inlinedAt: !593)
!607 = !DILocation(line: 77, column: 3, scope: !570)
!608 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 81, type: !609, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !612)
!609 = !DISubroutineType(types: !610)
!610 = !{!42, !42, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !625}
!613 = !DILocalVariable(name: "argc", arg: 1, scope: !608, file: !3, line: 81, type: !42)
!614 = !DILocalVariable(name: "argv", arg: 2, scope: !608, file: !3, line: 81, type: !611)
!615 = !DILocalVariable(name: "env", scope: !608, file: !3, line: 83, type: !611)
!616 = !DILocalVariable(name: "ep", scope: !608, file: !3, line: 84, type: !9)
!617 = !DILocalVariable(name: "ap", scope: !608, file: !3, line: 84, type: !9)
!618 = !DILocalVariable(name: "i", scope: !608, file: !3, line: 85, type: !42)
!619 = !DILocalVariable(name: "ok", scope: !608, file: !3, line: 86, type: !62)
!620 = !DILocalVariable(name: "optc", scope: !608, file: !3, line: 87, type: !42)
!621 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !608, file: !3, line: 88, type: !62)
!622 = !DILocalVariable(name: "matches", scope: !623, file: !3, line: 121, type: !42)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 120, column: 5)
!624 = distinct !DILexicalBlock(scope: !608, file: !3, line: 113, column: 7)
!625 = !DILocalVariable(name: "matched", scope: !626, file: !3, line: 125, type: !62)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 124, column: 9)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 123, column: 7)
!628 = distinct !DILexicalBlock(scope: !623, file: !3, line: 123, column: 7)
!629 = !DILocation(line: 81, column: 11, scope: !608)
!630 = !DILocation(line: 81, column: 24, scope: !608)
!631 = !DILocation(line: 88, column: 8, scope: !608)
!632 = !DILocation(line: 91, column: 21, scope: !608)
!633 = !DILocation(line: 91, column: 3, scope: !608)
!634 = !DILocation(line: 92, column: 3, scope: !608)
!635 = !DILocation(line: 93, column: 3, scope: !608)
!636 = !DILocation(line: 94, column: 3, scope: !608)
!637 = !DILocalVariable(name: "status", arg: 1, scope: !638, file: !16, line: 99, type: !42)
!638 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !16, file: !16, line: 99, type: !571, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !639)
!639 = !{!637}
!640 = !DILocation(line: 99, column: 30, scope: !638, inlinedAt: !641)
!641 = distinct !DILocation(line: 96, column: 3, scope: !608)
!642 = !DILocation(line: 102, column: 18, scope: !643, inlinedAt: !641)
!643 = distinct !DILexicalBlock(scope: !638, file: !16, line: 101, column: 7)
!644 = !{!645, !645, i64 0}
!645 = !{!"int", !584, i64 0}
!646 = !DILocation(line: 97, column: 3, scope: !608)
!647 = !DILocation(line: 99, column: 3, scope: !608)
!648 = !DILocation(line: 99, column: 18, scope: !608)
!649 = !DILocation(line: 87, column: 7, scope: !608)
!650 = distinct !{!650, !647, !651}
!651 = !DILocation(line: 111, column: 5, scope: !608)
!652 = !DILocation(line: 106, column: 9, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !3, line: 102, column: 9)
!654 = distinct !DILexicalBlock(scope: !608, file: !3, line: 100, column: 5)
!655 = !DILocation(line: 107, column: 9, scope: !653)
!656 = !DILocation(line: 109, column: 11, scope: !653)
!657 = !DILocation(line: 113, column: 7, scope: !624)
!658 = !DILocation(line: 113, column: 14, scope: !624)
!659 = !DILocation(line: 113, column: 7, scope: !608)
!660 = !DILocation(line: 115, column: 18, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 115, column: 7)
!662 = distinct !DILexicalBlock(scope: !624, file: !3, line: 114, column: 5)
!663 = !DILocation(line: 83, column: 10, scope: !608)
!664 = !DILocation(line: 115, column: 27, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !3, line: 115, column: 7)
!666 = !DILocation(line: 115, column: 32, scope: !665)
!667 = !DILocation(line: 115, column: 7, scope: !661)
!668 = !DILocation(line: 116, column: 9, scope: !665)
!669 = !DILocation(line: 115, column: 41, scope: !665)
!670 = distinct !{!670, !667, !671}
!671 = !DILocation(line: 116, column: 9, scope: !661)
!672 = !DILocation(line: 121, column: 11, scope: !623)
!673 = !DILocation(line: 85, column: 7, scope: !608)
!674 = !DILocation(line: 123, column: 7, scope: !628)
!675 = !DILocation(line: 125, column: 16, scope: !626)
!676 = !DILocation(line: 128, column: 23, scope: !677)
!677 = distinct !DILexicalBlock(scope: !626, file: !3, line: 128, column: 15)
!678 = !DILocation(line: 128, column: 15, scope: !677)
!679 = !DILocation(line: 128, column: 15, scope: !626)
!680 = !DILocation(line: 131, column: 22, scope: !681)
!681 = distinct !DILexicalBlock(scope: !626, file: !3, line: 131, column: 11)
!682 = !DILocation(line: 131, column: 31, scope: !683)
!683 = distinct !DILexicalBlock(scope: !681, file: !3, line: 131, column: 11)
!684 = !DILocation(line: 131, column: 11, scope: !681)
!685 = !DILocation(line: 135, column: 22, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !3, line: 132, column: 13)
!687 = !DILocation(line: 84, column: 9, scope: !608)
!688 = !DILocation(line: 84, column: 14, scope: !608)
!689 = !{!584, !584, i64 0}
!690 = !DILocation(line: 135, column: 26, scope: !686)
!691 = !DILocation(line: 135, column: 34, scope: !686)
!692 = !DILocation(line: 134, column: 20, scope: !686)
!693 = !DILocation(line: 135, column: 37, scope: !686)
!694 = !DILocation(line: 135, column: 41, scope: !686)
!695 = !DILocation(line: 135, column: 49, scope: !686)
!696 = !DILocation(line: 135, column: 55, scope: !686)
!697 = !DILocation(line: 135, column: 64, scope: !686)
!698 = !DILocation(line: 135, column: 58, scope: !686)
!699 = !DILocation(line: 135, column: 15, scope: !686)
!700 = !DILocation(line: 137, column: 23, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 137, column: 23)
!702 = distinct !DILexicalBlock(scope: !686, file: !3, line: 136, column: 17)
!703 = !DILocation(line: 137, column: 34, scope: !701)
!704 = !DILocation(line: 137, column: 37, scope: !701)
!705 = !DILocation(line: 137, column: 41, scope: !701)
!706 = !DILocation(line: 137, column: 23, scope: !702)
!707 = !DILocation(line: 139, column: 23, scope: !708)
!708 = distinct !DILexicalBlock(scope: !701, file: !3, line: 138, column: 21)
!709 = !DILocation(line: 142, column: 23, scope: !708)
!710 = !DILocation(line: 131, column: 37, scope: !683)
!711 = distinct !{!711, !684, !712}
!712 = !DILocation(line: 145, column: 13, scope: !681)
!713 = !DILocation(line: 147, column: 22, scope: !626)
!714 = !DILocation(line: 147, column: 19, scope: !626)
!715 = !DILocation(line: 148, column: 9, scope: !627)
!716 = !DILocation(line: 123, column: 34, scope: !627)
!717 = !DILocation(line: 123, column: 26, scope: !627)
!718 = distinct !{!718, !674, !719}
!719 = !DILocation(line: 148, column: 9, scope: !628)
!720 = !DILocation(line: 150, column: 31, scope: !623)
!721 = !DILocation(line: 150, column: 29, scope: !623)
!722 = !DILocation(line: 150, column: 21, scope: !623)
!723 = !DILocation(line: 154, column: 1, scope: !608)
!724 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !61, file: !61, line: 41, type: !17, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !56, variables: !725)
!725 = !{!726}
!726 = !DILocalVariable(name: "file", arg: 1, scope: !724, file: !61, line: 41, type: !19)
!727 = !DILocation(line: 41, column: 41, scope: !724)
!728 = !DILocation(line: 43, column: 13, scope: !724)
!729 = !DILocation(line: 44, column: 1, scope: !724)
!730 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !61, file: !61, line: 78, type: !731, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !56, variables: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !62}
!733 = !{!734}
!734 = !DILocalVariable(name: "ignore", arg: 1, scope: !730, file: !61, line: 78, type: !62)
!735 = !DILocation(line: 78, column: 37, scope: !730)
!736 = !DILocation(line: 80, column: 16, scope: !730)
!737 = !{!738, !738, i64 0}
!738 = !{!"_Bool", !584, i64 0}
!739 = !DILocation(line: 81, column: 1, scope: !730)
!740 = distinct !DISubprogram(name: "close_stdout", scope: !61, file: !61, line: 107, type: !741, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !56, variables: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{null}
!743 = !{!744}
!744 = !DILocalVariable(name: "write_error", scope: !745, file: !61, line: 112, type: !19)
!745 = distinct !DILexicalBlock(scope: !746, file: !61, line: 111, column: 5)
!746 = distinct !DILexicalBlock(scope: !740, file: !61, line: 109, column: 7)
!747 = !DILocation(line: 109, column: 21, scope: !746)
!748 = !DILocation(line: 109, column: 7, scope: !746)
!749 = !DILocation(line: 109, column: 29, scope: !746)
!750 = !DILocation(line: 110, column: 7, scope: !746)
!751 = !DILocation(line: 110, column: 12, scope: !746)
!752 = !{i8 0, i8 2}
!753 = !DILocation(line: 114, column: 19, scope: !754)
!754 = distinct !DILexicalBlock(scope: !745, file: !61, line: 113, column: 11)
!755 = !DILocation(line: 110, column: 25, scope: !746)
!756 = !DILocation(line: 110, column: 28, scope: !746)
!757 = !DILocation(line: 110, column: 34, scope: !746)
!758 = !DILocation(line: 109, column: 7, scope: !740)
!759 = !DILocation(line: 112, column: 33, scope: !745)
!760 = !DILocation(line: 112, column: 19, scope: !745)
!761 = !DILocation(line: 113, column: 11, scope: !754)
!762 = !DILocation(line: 113, column: 11, scope: !745)
!763 = !DILocation(line: 114, column: 36, scope: !754)
!764 = !DILocation(line: 114, column: 9, scope: !754)
!765 = !DILocation(line: 117, column: 9, scope: !754)
!766 = !DILocation(line: 119, column: 14, scope: !745)
!767 = !DILocation(line: 119, column: 7, scope: !745)
!768 = !DILocation(line: 122, column: 22, scope: !769)
!769 = distinct !DILexicalBlock(scope: !740, file: !61, line: 122, column: 8)
!770 = !DILocation(line: 122, column: 8, scope: !769)
!771 = !DILocation(line: 122, column: 30, scope: !769)
!772 = !DILocation(line: 122, column: 8, scope: !740)
!773 = !DILocation(line: 123, column: 13, scope: !769)
!774 = !DILocation(line: 123, column: 6, scope: !769)
!775 = !DILocation(line: 124, column: 1, scope: !740)
!776 = distinct !DISubprogram(name: "set_program_name", scope: !76, file: !76, line: 39, type: !17, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !72, variables: !777)
!777 = !{!778, !779, !780}
!778 = !DILocalVariable(name: "argv0", arg: 1, scope: !776, file: !76, line: 39, type: !19)
!779 = !DILocalVariable(name: "slash", scope: !776, file: !76, line: 46, type: !19)
!780 = !DILocalVariable(name: "base", scope: !776, file: !76, line: 47, type: !19)
!781 = !DILocation(line: 39, column: 31, scope: !776)
!782 = !DILocation(line: 51, column: 13, scope: !783)
!783 = distinct !DILexicalBlock(scope: !776, file: !76, line: 51, column: 7)
!784 = !DILocation(line: 51, column: 7, scope: !776)
!785 = !DILocation(line: 55, column: 14, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !76, line: 52, column: 5)
!787 = !DILocation(line: 54, column: 7, scope: !786)
!788 = !DILocation(line: 56, column: 7, scope: !786)
!789 = !DILocation(line: 59, column: 11, scope: !776)
!790 = !DILocation(line: 46, column: 15, scope: !776)
!791 = !DILocation(line: 60, column: 17, scope: !776)
!792 = !DILocation(line: 60, column: 33, scope: !776)
!793 = !DILocation(line: 60, column: 11, scope: !776)
!794 = !DILocation(line: 47, column: 15, scope: !776)
!795 = !DILocation(line: 61, column: 12, scope: !796)
!796 = distinct !DILexicalBlock(scope: !776, file: !76, line: 61, column: 7)
!797 = !DILocation(line: 61, column: 20, scope: !796)
!798 = !DILocation(line: 61, column: 25, scope: !796)
!799 = !DILocation(line: 61, column: 42, scope: !796)
!800 = !DILocation(line: 61, column: 28, scope: !796)
!801 = !DILocation(line: 61, column: 61, scope: !796)
!802 = !DILocation(line: 61, column: 7, scope: !776)
!803 = !DILocation(line: 64, column: 11, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !76, line: 64, column: 11)
!805 = distinct !DILexicalBlock(scope: !796, file: !76, line: 62, column: 5)
!806 = !DILocation(line: 64, column: 36, scope: !804)
!807 = !DILocation(line: 64, column: 11, scope: !805)
!808 = !DILocation(line: 66, column: 24, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !76, line: 65, column: 9)
!810 = !DILocation(line: 70, column: 41, scope: !809)
!811 = !DILocation(line: 72, column: 9, scope: !809)
!812 = !DILocation(line: 84, column: 16, scope: !776)
!813 = !DILocation(line: 90, column: 27, scope: !776)
!814 = !DILocation(line: 92, column: 1, scope: !776)
!815 = distinct !DISubprogram(name: "clone_quoting_options", scope: !124, file: !124, line: 114, type: !816, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !819)
!816 = !DISubroutineType(types: !817)
!817 = !{!818, !818}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!819 = !{!820, !821, !822}
!820 = !DILocalVariable(name: "o", arg: 1, scope: !815, file: !124, line: 114, type: !818)
!821 = !DILocalVariable(name: "e", scope: !815, file: !124, line: 116, type: !42)
!822 = !DILocalVariable(name: "p", scope: !815, file: !124, line: 117, type: !818)
!823 = !DILocation(line: 114, column: 48, scope: !815)
!824 = !DILocation(line: 116, column: 11, scope: !815)
!825 = !DILocation(line: 116, column: 7, scope: !815)
!826 = !DILocation(line: 117, column: 40, scope: !815)
!827 = !DILocation(line: 117, column: 31, scope: !815)
!828 = !DILocation(line: 117, column: 27, scope: !815)
!829 = !DILocation(line: 119, column: 9, scope: !815)
!830 = !DILocation(line: 120, column: 3, scope: !815)
!831 = distinct !DISubprogram(name: "get_quoting_style", scope: !124, file: !124, line: 125, type: !832, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !836)
!832 = !DISubroutineType(types: !833)
!833 = !{!82, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!836 = !{!837}
!837 = !DILocalVariable(name: "o", arg: 1, scope: !831, file: !124, line: 125, type: !834)
!838 = !DILocation(line: 125, column: 50, scope: !831)
!839 = !DILocation(line: 127, column: 11, scope: !831)
!840 = !DILocation(line: 127, column: 46, scope: !831)
!841 = !{!842, !584, i64 0}
!842 = !{!"quoting_options", !584, i64 0, !645, i64 4, !584, i64 8, !583, i64 40, !583, i64 48}
!843 = !DILocation(line: 127, column: 3, scope: !831)
!844 = distinct !DISubprogram(name: "set_quoting_style", scope: !124, file: !124, line: 133, type: !845, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !847)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !818, !82}
!847 = !{!848, !849}
!848 = !DILocalVariable(name: "o", arg: 1, scope: !844, file: !124, line: 133, type: !818)
!849 = !DILocalVariable(name: "s", arg: 2, scope: !844, file: !124, line: 133, type: !82)
!850 = !DILocation(line: 133, column: 44, scope: !844)
!851 = !DILocation(line: 133, column: 66, scope: !844)
!852 = !DILocation(line: 135, column: 4, scope: !844)
!853 = !DILocation(line: 135, column: 39, scope: !844)
!854 = !DILocation(line: 135, column: 45, scope: !844)
!855 = !DILocation(line: 136, column: 1, scope: !844)
!856 = distinct !DISubprogram(name: "set_char_quoting", scope: !124, file: !124, line: 144, type: !857, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!42, !818, !10, !42}
!859 = !{!860, !861, !862, !863, !864, !866, !867}
!860 = !DILocalVariable(name: "o", arg: 1, scope: !856, file: !124, line: 144, type: !818)
!861 = !DILocalVariable(name: "c", arg: 2, scope: !856, file: !124, line: 144, type: !10)
!862 = !DILocalVariable(name: "i", arg: 3, scope: !856, file: !124, line: 144, type: !42)
!863 = !DILocalVariable(name: "uc", scope: !856, file: !124, line: 146, type: !518)
!864 = !DILocalVariable(name: "p", scope: !856, file: !124, line: 147, type: !865)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!866 = !DILocalVariable(name: "shift", scope: !856, file: !124, line: 149, type: !42)
!867 = !DILocalVariable(name: "r", scope: !856, file: !124, line: 150, type: !42)
!868 = !DILocation(line: 144, column: 43, scope: !856)
!869 = !DILocation(line: 144, column: 51, scope: !856)
!870 = !DILocation(line: 144, column: 58, scope: !856)
!871 = !DILocation(line: 146, column: 17, scope: !856)
!872 = !DILocation(line: 148, column: 6, scope: !856)
!873 = !DILocation(line: 148, column: 62, scope: !856)
!874 = !DILocation(line: 148, column: 57, scope: !856)
!875 = !DILocation(line: 147, column: 17, scope: !856)
!876 = !DILocation(line: 149, column: 18, scope: !856)
!877 = !DILocation(line: 149, column: 15, scope: !856)
!878 = !DILocation(line: 149, column: 7, scope: !856)
!879 = !DILocation(line: 150, column: 12, scope: !856)
!880 = !DILocation(line: 150, column: 15, scope: !856)
!881 = !DILocation(line: 150, column: 25, scope: !856)
!882 = !DILocation(line: 150, column: 7, scope: !856)
!883 = !DILocation(line: 151, column: 13, scope: !856)
!884 = !DILocation(line: 151, column: 18, scope: !856)
!885 = !DILocation(line: 151, column: 23, scope: !856)
!886 = !DILocation(line: 151, column: 6, scope: !856)
!887 = !DILocation(line: 152, column: 3, scope: !856)
!888 = distinct !DISubprogram(name: "set_quoting_flags", scope: !124, file: !124, line: 160, type: !889, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !891)
!889 = !DISubroutineType(types: !890)
!890 = !{!42, !818, !42}
!891 = !{!892, !893, !894}
!892 = !DILocalVariable(name: "o", arg: 1, scope: !888, file: !124, line: 160, type: !818)
!893 = !DILocalVariable(name: "i", arg: 2, scope: !888, file: !124, line: 160, type: !42)
!894 = !DILocalVariable(name: "r", scope: !888, file: !124, line: 162, type: !42)
!895 = !DILocation(line: 160, column: 44, scope: !888)
!896 = !DILocation(line: 160, column: 51, scope: !888)
!897 = !DILocation(line: 163, column: 8, scope: !898)
!898 = distinct !DILexicalBlock(scope: !888, file: !124, line: 163, column: 7)
!899 = !DILocation(line: 163, column: 7, scope: !888)
!900 = !DILocation(line: 165, column: 10, scope: !888)
!901 = !{!842, !645, i64 4}
!902 = !DILocation(line: 162, column: 7, scope: !888)
!903 = !DILocation(line: 166, column: 12, scope: !888)
!904 = !DILocation(line: 167, column: 3, scope: !888)
!905 = distinct !DISubprogram(name: "set_custom_quoting", scope: !124, file: !124, line: 171, type: !906, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !818, !19, !19}
!908 = !{!909, !910, !911}
!909 = !DILocalVariable(name: "o", arg: 1, scope: !905, file: !124, line: 171, type: !818)
!910 = !DILocalVariable(name: "left_quote", arg: 2, scope: !905, file: !124, line: 172, type: !19)
!911 = !DILocalVariable(name: "right_quote", arg: 3, scope: !905, file: !124, line: 172, type: !19)
!912 = !DILocation(line: 171, column: 45, scope: !905)
!913 = !DILocation(line: 172, column: 33, scope: !905)
!914 = !DILocation(line: 172, column: 57, scope: !905)
!915 = !DILocation(line: 174, column: 8, scope: !916)
!916 = distinct !DILexicalBlock(scope: !905, file: !124, line: 174, column: 7)
!917 = !DILocation(line: 174, column: 7, scope: !905)
!918 = !DILocation(line: 176, column: 6, scope: !905)
!919 = !DILocation(line: 176, column: 12, scope: !905)
!920 = !DILocation(line: 177, column: 8, scope: !921)
!921 = distinct !DILexicalBlock(scope: !905, file: !124, line: 177, column: 7)
!922 = !DILocation(line: 177, column: 23, scope: !921)
!923 = !DILocation(line: 177, column: 19, scope: !921)
!924 = !DILocation(line: 178, column: 5, scope: !921)
!925 = !DILocation(line: 179, column: 6, scope: !905)
!926 = !DILocation(line: 179, column: 17, scope: !905)
!927 = !{!842, !583, i64 40}
!928 = !DILocation(line: 180, column: 6, scope: !905)
!929 = !DILocation(line: 180, column: 18, scope: !905)
!930 = !{!842, !583, i64 48}
!931 = !DILocation(line: 181, column: 1, scope: !905)
!932 = distinct !DISubprogram(name: "quotearg_buffer", scope: !124, file: !124, line: 776, type: !933, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{!118, !9, !118, !19, !118, !834}
!935 = !{!936, !937, !938, !939, !940, !941, !942, !943}
!936 = !DILocalVariable(name: "buffer", arg: 1, scope: !932, file: !124, line: 776, type: !9)
!937 = !DILocalVariable(name: "buffersize", arg: 2, scope: !932, file: !124, line: 776, type: !118)
!938 = !DILocalVariable(name: "arg", arg: 3, scope: !932, file: !124, line: 777, type: !19)
!939 = !DILocalVariable(name: "argsize", arg: 4, scope: !932, file: !124, line: 777, type: !118)
!940 = !DILocalVariable(name: "o", arg: 5, scope: !932, file: !124, line: 778, type: !834)
!941 = !DILocalVariable(name: "p", scope: !932, file: !124, line: 780, type: !834)
!942 = !DILocalVariable(name: "e", scope: !932, file: !124, line: 781, type: !42)
!943 = !DILocalVariable(name: "r", scope: !932, file: !124, line: 782, type: !118)
!944 = !DILocation(line: 776, column: 24, scope: !932)
!945 = !DILocation(line: 776, column: 39, scope: !932)
!946 = !DILocation(line: 777, column: 30, scope: !932)
!947 = !DILocation(line: 777, column: 42, scope: !932)
!948 = !DILocation(line: 778, column: 48, scope: !932)
!949 = !DILocation(line: 780, column: 37, scope: !932)
!950 = !DILocation(line: 780, column: 33, scope: !932)
!951 = !DILocation(line: 781, column: 11, scope: !932)
!952 = !DILocation(line: 781, column: 7, scope: !932)
!953 = !DILocation(line: 783, column: 43, scope: !932)
!954 = !DILocation(line: 783, column: 53, scope: !932)
!955 = !DILocation(line: 783, column: 60, scope: !932)
!956 = !DILocation(line: 784, column: 43, scope: !932)
!957 = !DILocation(line: 784, column: 58, scope: !932)
!958 = !DILocation(line: 782, column: 14, scope: !932)
!959 = !DILocation(line: 782, column: 10, scope: !932)
!960 = !DILocation(line: 785, column: 9, scope: !932)
!961 = !DILocation(line: 786, column: 3, scope: !932)
!962 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !124, file: !124, line: 248, type: !963, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !967)
!963 = !DISubroutineType(types: !964)
!964 = !{!118, !9, !118, !19, !118, !82, !42, !965, !19, !19}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!967 = !{!968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !992, !993, !994, !995, !996, !999, !1000, !1016, !1019, !1020, !1027}
!968 = !DILocalVariable(name: "buffer", arg: 1, scope: !962, file: !124, line: 248, type: !9)
!969 = !DILocalVariable(name: "buffersize", arg: 2, scope: !962, file: !124, line: 248, type: !118)
!970 = !DILocalVariable(name: "arg", arg: 3, scope: !962, file: !124, line: 249, type: !19)
!971 = !DILocalVariable(name: "argsize", arg: 4, scope: !962, file: !124, line: 249, type: !118)
!972 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !962, file: !124, line: 250, type: !82)
!973 = !DILocalVariable(name: "flags", arg: 6, scope: !962, file: !124, line: 250, type: !42)
!974 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !962, file: !124, line: 251, type: !965)
!975 = !DILocalVariable(name: "left_quote", arg: 8, scope: !962, file: !124, line: 252, type: !19)
!976 = !DILocalVariable(name: "right_quote", arg: 9, scope: !962, file: !124, line: 253, type: !19)
!977 = !DILocalVariable(name: "i", scope: !962, file: !124, line: 255, type: !118)
!978 = !DILocalVariable(name: "len", scope: !962, file: !124, line: 256, type: !118)
!979 = !DILocalVariable(name: "orig_buffersize", scope: !962, file: !124, line: 257, type: !118)
!980 = !DILocalVariable(name: "quote_string", scope: !962, file: !124, line: 258, type: !19)
!981 = !DILocalVariable(name: "quote_string_len", scope: !962, file: !124, line: 259, type: !118)
!982 = !DILocalVariable(name: "backslash_escapes", scope: !962, file: !124, line: 260, type: !62)
!983 = !DILocalVariable(name: "unibyte_locale", scope: !962, file: !124, line: 261, type: !62)
!984 = !DILocalVariable(name: "elide_outer_quotes", scope: !962, file: !124, line: 262, type: !62)
!985 = !DILocalVariable(name: "pending_shell_escape_end", scope: !962, file: !124, line: 263, type: !62)
!986 = !DILocalVariable(name: "encountered_single_quote", scope: !962, file: !124, line: 264, type: !62)
!987 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !962, file: !124, line: 265, type: !62)
!988 = !DILocalVariable(name: "c", scope: !989, file: !124, line: 394, type: !518)
!989 = distinct !DILexicalBlock(scope: !990, file: !124, line: 393, column: 5)
!990 = distinct !DILexicalBlock(scope: !991, file: !124, line: 392, column: 3)
!991 = distinct !DILexicalBlock(scope: !962, file: !124, line: 392, column: 3)
!992 = !DILocalVariable(name: "esc", scope: !989, file: !124, line: 395, type: !518)
!993 = !DILocalVariable(name: "is_right_quote", scope: !989, file: !124, line: 396, type: !62)
!994 = !DILocalVariable(name: "escaping", scope: !989, file: !124, line: 397, type: !62)
!995 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !989, file: !124, line: 398, type: !62)
!996 = !DILocalVariable(name: "m", scope: !997, file: !124, line: 602, type: !118)
!997 = distinct !DILexicalBlock(scope: !998, file: !124, line: 600, column: 11)
!998 = distinct !DILexicalBlock(scope: !989, file: !124, line: 418, column: 9)
!999 = !DILocalVariable(name: "printable", scope: !997, file: !124, line: 604, type: !62)
!1000 = !DILocalVariable(name: "mbstate", scope: !1001, file: !124, line: 613, type: !1003)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !124, line: 612, column: 15)
!1002 = distinct !DILexicalBlock(scope: !997, file: !124, line: 606, column: 17)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1004, line: 6, baseType: !1005)
!1004 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1006, line: 21, baseType: !1007)
!1006 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1006, line: 13, size: 64, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1007, file: !1006, line: 15, baseType: !42, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1007, file: !1006, line: 20, baseType: !1011, size: 32, offset: 32)
!1011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !1006, line: 16, size: 32, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1011, file: !1006, line: 18, baseType: !137, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1011, file: !1006, line: 19, baseType: !1015, size: 32)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, elements: !46)
!1016 = !DILocalVariable(name: "w", scope: !1017, file: !124, line: 623, type: !1018)
!1017 = distinct !DILexicalBlock(scope: !1001, file: !124, line: 622, column: 19)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !119, line: 90, baseType: !42)
!1019 = !DILocalVariable(name: "bytes", scope: !1017, file: !124, line: 624, type: !118)
!1020 = !DILocalVariable(name: "j", scope: !1021, file: !124, line: 649, type: !118)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !124, line: 648, column: 27)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !124, line: 646, column: 29)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !124, line: 641, column: 23)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !124, line: 633, column: 30)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !124, line: 628, column: 30)
!1026 = distinct !DILexicalBlock(scope: !1017, file: !124, line: 626, column: 25)
!1027 = !DILocalVariable(name: "ilim", scope: !1028, file: !124, line: 676, type: !118)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !124, line: 673, column: 15)
!1029 = distinct !DILexicalBlock(scope: !997, file: !124, line: 672, column: 17)
!1030 = !DILocation(line: 248, column: 33, scope: !962)
!1031 = !DILocation(line: 248, column: 48, scope: !962)
!1032 = !DILocation(line: 249, column: 39, scope: !962)
!1033 = !DILocation(line: 249, column: 51, scope: !962)
!1034 = !DILocation(line: 250, column: 46, scope: !962)
!1035 = !DILocation(line: 250, column: 65, scope: !962)
!1036 = !DILocation(line: 251, column: 47, scope: !962)
!1037 = !DILocation(line: 252, column: 39, scope: !962)
!1038 = !DILocation(line: 253, column: 39, scope: !962)
!1039 = !DILocation(line: 256, column: 10, scope: !962)
!1040 = !DILocation(line: 257, column: 10, scope: !962)
!1041 = !DILocation(line: 258, column: 15, scope: !962)
!1042 = !DILocation(line: 259, column: 10, scope: !962)
!1043 = !DILocation(line: 260, column: 8, scope: !962)
!1044 = !DILocation(line: 261, column: 25, scope: !962)
!1045 = !DILocation(line: 261, column: 36, scope: !962)
!1046 = !DILocation(line: 262, column: 8, scope: !962)
!1047 = !DILocation(line: 263, column: 8, scope: !962)
!1048 = !DILocation(line: 264, column: 8, scope: !962)
!1049 = !DILocation(line: 265, column: 8, scope: !962)
!1050 = !DILocation(line: 265, column: 3, scope: !962)
!1051 = !DILocation(line: 308, column: 3, scope: !962)
!1052 = !DILocation(line: 315, column: 11, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !962, file: !124, line: 309, column: 5)
!1054 = !DILocation(line: 315, column: 12, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1053, file: !124, line: 315, column: 11)
!1056 = !DILocation(line: 316, column: 9, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !124, line: 316, column: 9)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !124, line: 316, column: 9)
!1059 = !DILocation(line: 316, column: 9, scope: !1058)
!1060 = !DILocation(line: 354, column: 26, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !124, line: 332, column: 11)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !124, line: 331, column: 13)
!1063 = distinct !DILexicalBlock(scope: !1053, file: !124, line: 330, column: 7)
!1064 = !DILocation(line: 355, column: 27, scope: !1061)
!1065 = !DILocation(line: 356, column: 11, scope: !1061)
!1066 = !DILocation(line: 357, column: 14, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !124, line: 357, column: 13)
!1068 = !DILocation(line: 357, column: 13, scope: !1063)
!1069 = !DILocation(line: 358, column: 43, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !124, line: 358, column: 11)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !124, line: 358, column: 11)
!1072 = !DILocation(line: 358, column: 11, scope: !1071)
!1073 = !DILocation(line: 359, column: 13, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !124, line: 359, column: 13)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !124, line: 359, column: 13)
!1076 = !DILocation(line: 359, column: 13, scope: !1075)
!1077 = !DILocation(line: 358, column: 70, scope: !1070)
!1078 = distinct !{!1078, !1072, !1079}
!1079 = !DILocation(line: 359, column: 13, scope: !1071)
!1080 = !DILocation(line: 362, column: 28, scope: !1063)
!1081 = !DILocation(line: 364, column: 7, scope: !1053)
!1082 = !DILocation(line: 367, column: 7, scope: !1053)
!1083 = !DILocation(line: 370, column: 7, scope: !1053)
!1084 = !DILocation(line: 373, column: 12, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1053, file: !124, line: 373, column: 11)
!1086 = !DILocation(line: 373, column: 11, scope: !1053)
!1087 = !DILocation(line: 378, column: 12, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1053, file: !124, line: 378, column: 11)
!1089 = !DILocation(line: 378, column: 11, scope: !1053)
!1090 = !DILocation(line: 379, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !124, line: 379, column: 9)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !124, line: 379, column: 9)
!1093 = !DILocation(line: 379, column: 9, scope: !1092)
!1094 = !DILocation(line: 386, column: 7, scope: !1053)
!1095 = !DILocation(line: 389, column: 7, scope: !1053)
!1096 = !DILocation(line: 255, column: 10, scope: !962)
!1097 = !DILocation(line: 392, column: 8, scope: !991)
!1098 = !DILocation(line: 392, column: 27, scope: !990)
!1099 = !DILocation(line: 392, column: 19, scope: !990)
!1100 = !DILocation(line: 392, column: 60, scope: !990)
!1101 = !DILocation(line: 392, column: 3, scope: !991)
!1102 = !DILocation(line: 392, column: 41, scope: !990)
!1103 = !DILocation(line: 392, column: 48, scope: !990)
!1104 = !DILocation(line: 396, column: 12, scope: !989)
!1105 = !DILocation(line: 397, column: 12, scope: !989)
!1106 = !DILocation(line: 398, column: 12, scope: !989)
!1107 = !DILocation(line: 401, column: 11, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !989, file: !124, line: 400, column: 11)
!1109 = !DILocation(line: 403, column: 17, scope: !1108)
!1110 = !DILocation(line: 404, column: 39, scope: !1108)
!1111 = !DILocation(line: 408, column: 32, scope: !1108)
!1112 = !DILocation(line: 404, column: 19, scope: !1108)
!1113 = !DILocation(line: 404, column: 15, scope: !1108)
!1114 = !DILocation(line: 409, column: 11, scope: !1108)
!1115 = !DILocation(line: 409, column: 26, scope: !1108)
!1116 = !DILocation(line: 409, column: 14, scope: !1108)
!1117 = !DILocation(line: 409, column: 63, scope: !1108)
!1118 = !DILocation(line: 400, column: 11, scope: !989)
!1119 = !DILocation(line: 416, column: 11, scope: !989)
!1120 = !DILocation(line: 394, column: 21, scope: !989)
!1121 = !DILocation(line: 417, column: 7, scope: !989)
!1122 = !DILocation(line: 420, column: 15, scope: !998)
!1123 = !DILocation(line: 422, column: 15, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !124, line: 422, column: 15)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !124, line: 421, column: 13)
!1126 = distinct !DILexicalBlock(scope: !998, file: !124, line: 420, column: 15)
!1127 = !DILocation(line: 422, column: 15, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !124, line: 422, column: 15)
!1129 = !DILocation(line: 422, column: 15, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !124, line: 422, column: 15)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !124, line: 422, column: 15)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !124, line: 422, column: 15)
!1133 = !DILocation(line: 422, column: 15, scope: !1131)
!1134 = !DILocation(line: 422, column: 15, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !124, line: 422, column: 15)
!1136 = distinct !DILexicalBlock(scope: !1132, file: !124, line: 422, column: 15)
!1137 = !DILocation(line: 422, column: 15, scope: !1136)
!1138 = !DILocation(line: 422, column: 15, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !124, line: 422, column: 15)
!1140 = distinct !DILexicalBlock(scope: !1132, file: !124, line: 422, column: 15)
!1141 = !DILocation(line: 422, column: 15, scope: !1140)
!1142 = !DILocation(line: 422, column: 15, scope: !1132)
!1143 = !DILocation(line: 422, column: 15, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !124, line: 422, column: 15)
!1145 = distinct !DILexicalBlock(scope: !1124, file: !124, line: 422, column: 15)
!1146 = !DILocation(line: 422, column: 15, scope: !1145)
!1147 = !DILocation(line: 430, column: 19, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1125, file: !124, line: 429, column: 19)
!1149 = !DILocation(line: 430, column: 24, scope: !1148)
!1150 = !DILocation(line: 430, column: 28, scope: !1148)
!1151 = !DILocation(line: 430, column: 38, scope: !1148)
!1152 = !DILocation(line: 430, column: 48, scope: !1148)
!1153 = !DILocation(line: 430, column: 59, scope: !1148)
!1154 = !DILocation(line: 432, column: 19, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !124, line: 432, column: 19)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !124, line: 432, column: 19)
!1157 = distinct !DILexicalBlock(scope: !1148, file: !124, line: 431, column: 17)
!1158 = !DILocation(line: 432, column: 19, scope: !1156)
!1159 = !DILocation(line: 433, column: 19, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !124, line: 433, column: 19)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !124, line: 433, column: 19)
!1162 = !DILocation(line: 433, column: 19, scope: !1161)
!1163 = !DILocation(line: 434, column: 17, scope: !1157)
!1164 = !DILocation(line: 441, column: 20, scope: !1126)
!1165 = !DILocation(line: 446, column: 11, scope: !998)
!1166 = !DILocation(line: 449, column: 19, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !998, file: !124, line: 447, column: 13)
!1168 = !DILocation(line: 455, column: 19, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1167, file: !124, line: 454, column: 19)
!1170 = !DILocation(line: 455, column: 24, scope: !1169)
!1171 = !DILocation(line: 455, column: 28, scope: !1169)
!1172 = !DILocation(line: 455, column: 38, scope: !1169)
!1173 = !DILocation(line: 455, column: 47, scope: !1169)
!1174 = !DILocation(line: 455, column: 41, scope: !1169)
!1175 = !DILocation(line: 455, column: 52, scope: !1169)
!1176 = !DILocation(line: 454, column: 19, scope: !1167)
!1177 = !DILocation(line: 456, column: 25, scope: !1169)
!1178 = !DILocation(line: 456, column: 17, scope: !1169)
!1179 = !DILocation(line: 463, column: 25, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1169, file: !124, line: 457, column: 19)
!1181 = !DILocation(line: 467, column: 21, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !124, line: 467, column: 21)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !124, line: 467, column: 21)
!1184 = !DILocation(line: 467, column: 21, scope: !1183)
!1185 = !DILocation(line: 468, column: 21, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !124, line: 468, column: 21)
!1187 = distinct !DILexicalBlock(scope: !1180, file: !124, line: 468, column: 21)
!1188 = !DILocation(line: 468, column: 21, scope: !1187)
!1189 = !DILocation(line: 469, column: 21, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !124, line: 469, column: 21)
!1191 = distinct !DILexicalBlock(scope: !1180, file: !124, line: 469, column: 21)
!1192 = !DILocation(line: 469, column: 21, scope: !1191)
!1193 = !DILocation(line: 470, column: 21, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !124, line: 470, column: 21)
!1195 = distinct !DILexicalBlock(scope: !1180, file: !124, line: 470, column: 21)
!1196 = !DILocation(line: 470, column: 21, scope: !1195)
!1197 = !DILocation(line: 471, column: 21, scope: !1180)
!1198 = !DILocation(line: 395, column: 21, scope: !989)
!1199 = !DILocation(line: 484, column: 31, scope: !998)
!1200 = !DILocation(line: 485, column: 31, scope: !998)
!1201 = !DILocation(line: 487, column: 31, scope: !998)
!1202 = !DILocation(line: 488, column: 31, scope: !998)
!1203 = !DILocation(line: 489, column: 31, scope: !998)
!1204 = !DILocation(line: 492, column: 15, scope: !998)
!1205 = !DILocation(line: 494, column: 19, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !124, line: 493, column: 13)
!1207 = distinct !DILexicalBlock(scope: !998, file: !124, line: 492, column: 15)
!1208 = !DILocation(line: 501, column: 33, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !998, file: !124, line: 501, column: 15)
!1210 = !DILocation(line: 506, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !998, file: !124, line: 505, column: 15)
!1212 = !DILocation(line: 510, column: 15, scope: !998)
!1213 = !DILocation(line: 518, column: 26, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !998, file: !124, line: 518, column: 15)
!1215 = !DILocation(line: 518, column: 15, scope: !998)
!1216 = !DILocation(line: 518, column: 40, scope: !1214)
!1217 = !DILocation(line: 518, column: 47, scope: !1214)
!1218 = !DILocation(line: 522, column: 17, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !998, file: !124, line: 522, column: 15)
!1220 = !DILocation(line: 518, column: 18, scope: !1214)
!1221 = !DILocation(line: 518, column: 65, scope: !1214)
!1222 = !DILocation(line: 522, column: 15, scope: !998)
!1223 = !DILocation(line: 526, column: 11, scope: !998)
!1224 = !DILocation(line: 541, column: 15, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !998, file: !124, line: 540, column: 15)
!1226 = !DILocation(line: 548, column: 15, scope: !998)
!1227 = !DILocation(line: 550, column: 19, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !124, line: 549, column: 13)
!1229 = distinct !DILexicalBlock(scope: !998, file: !124, line: 548, column: 15)
!1230 = !DILocation(line: 553, column: 19, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !124, line: 553, column: 19)
!1232 = !DILocation(line: 553, column: 35, scope: !1231)
!1233 = !DILocation(line: 553, column: 30, scope: !1231)
!1234 = !DILocation(line: 562, column: 15, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !124, line: 562, column: 15)
!1236 = distinct !DILexicalBlock(scope: !1228, file: !124, line: 562, column: 15)
!1237 = !DILocation(line: 562, column: 15, scope: !1236)
!1238 = !DILocation(line: 563, column: 15, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !124, line: 563, column: 15)
!1240 = distinct !DILexicalBlock(scope: !1228, file: !124, line: 563, column: 15)
!1241 = !DILocation(line: 563, column: 15, scope: !1240)
!1242 = !DILocation(line: 564, column: 15, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !124, line: 564, column: 15)
!1244 = distinct !DILexicalBlock(scope: !1228, file: !124, line: 564, column: 15)
!1245 = !DILocation(line: 564, column: 15, scope: !1244)
!1246 = !DILocation(line: 566, column: 13, scope: !1228)
!1247 = !DILocation(line: 606, column: 17, scope: !997)
!1248 = !DILocation(line: 602, column: 20, scope: !997)
!1249 = !DILocation(line: 609, column: 29, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1002, file: !124, line: 607, column: 15)
!1251 = !{!1252, !1252, i64 0}
!1252 = !{!"short", !584, i64 0}
!1253 = !DILocation(line: 609, column: 27, scope: !1250)
!1254 = !DILocation(line: 604, column: 18, scope: !997)
!1255 = !DILocation(line: 610, column: 15, scope: !1250)
!1256 = !DILocation(line: 613, column: 17, scope: !1001)
!1257 = !DILocation(line: 614, column: 17, scope: !1001)
!1258 = !DILocation(line: 618, column: 29, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1001, file: !124, line: 618, column: 21)
!1260 = !DILocation(line: 618, column: 21, scope: !1001)
!1261 = !DILocation(line: 619, column: 29, scope: !1259)
!1262 = !DILocation(line: 619, column: 19, scope: !1259)
!1263 = !DILocation(line: 621, column: 17, scope: !1001)
!1264 = distinct !{!1264, !1263, !1265}
!1265 = !DILocation(line: 667, column: 44, scope: !1001)
!1266 = !DILocation(line: 623, column: 21, scope: !1017)
!1267 = !DILocation(line: 624, column: 56, scope: !1017)
!1268 = !DILocation(line: 624, column: 50, scope: !1017)
!1269 = !DILocation(line: 625, column: 53, scope: !1017)
!1270 = !DILocation(line: 613, column: 27, scope: !1001)
!1271 = !DILocation(line: 623, column: 29, scope: !1017)
!1272 = !DILocation(line: 624, column: 36, scope: !1017)
!1273 = !DILocation(line: 624, column: 28, scope: !1017)
!1274 = !DILocation(line: 626, column: 25, scope: !1017)
!1275 = !DILocation(line: 636, column: 38, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1024, file: !124, line: 634, column: 23)
!1277 = !DILocation(line: 636, column: 48, scope: !1276)
!1278 = !DILocation(line: 636, column: 51, scope: !1276)
!1279 = !DILocation(line: 636, column: 25, scope: !1276)
!1280 = !DILocation(line: 637, column: 28, scope: !1276)
!1281 = !DILocation(line: 636, column: 34, scope: !1276)
!1282 = distinct !{!1282, !1279, !1280}
!1283 = !DILocation(line: 650, column: 43, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !124, line: 650, column: 29)
!1285 = distinct !DILexicalBlock(scope: !1021, file: !124, line: 650, column: 29)
!1286 = !DILocation(line: 647, column: 29, scope: !1022)
!1287 = !DILocation(line: 649, column: 36, scope: !1021)
!1288 = !DILocation(line: 651, column: 49, scope: !1284)
!1289 = !DILocation(line: 651, column: 39, scope: !1284)
!1290 = !DILocation(line: 651, column: 31, scope: !1284)
!1291 = !DILocation(line: 650, column: 53, scope: !1284)
!1292 = !DILocation(line: 650, column: 29, scope: !1285)
!1293 = distinct !{!1293, !1292, !1294}
!1294 = !DILocation(line: 659, column: 33, scope: !1285)
!1295 = !DILocation(line: 666, column: 19, scope: !1001)
!1296 = !DILocation(line: 662, column: 41, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1023, file: !124, line: 662, column: 29)
!1298 = !DILocation(line: 662, column: 31, scope: !1297)
!1299 = !DILocation(line: 662, column: 29, scope: !1023)
!1300 = !DILocation(line: 664, column: 27, scope: !1023)
!1301 = !DILocation(line: 667, column: 26, scope: !1001)
!1302 = !DILocation(line: 667, column: 24, scope: !1001)
!1303 = !DILocation(line: 666, column: 19, scope: !1017)
!1304 = !DILocation(line: 668, column: 15, scope: !1002)
!1305 = !DILocation(line: 670, column: 40, scope: !997)
!1306 = !DILocation(line: 672, column: 19, scope: !1029)
!1307 = !DILocation(line: 672, column: 45, scope: !1029)
!1308 = !DILocation(line: 672, column: 23, scope: !1029)
!1309 = !DILocation(line: 676, column: 33, scope: !1028)
!1310 = !DILocation(line: 676, column: 24, scope: !1028)
!1311 = !DILocation(line: 678, column: 17, scope: !1028)
!1312 = !DILocation(line: 680, column: 43, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !124, line: 680, column: 25)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !124, line: 679, column: 19)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !124, line: 678, column: 17)
!1316 = distinct !DILexicalBlock(scope: !1028, file: !124, line: 678, column: 17)
!1317 = !DILocation(line: 682, column: 25, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !124, line: 682, column: 25)
!1319 = distinct !DILexicalBlock(scope: !1313, file: !124, line: 681, column: 23)
!1320 = !DILocation(line: 682, column: 25, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1318, file: !124, line: 682, column: 25)
!1322 = !DILocation(line: 682, column: 25, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !124, line: 682, column: 25)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !124, line: 682, column: 25)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !124, line: 682, column: 25)
!1326 = !DILocation(line: 682, column: 25, scope: !1324)
!1327 = !DILocation(line: 682, column: 25, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !124, line: 682, column: 25)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !124, line: 682, column: 25)
!1330 = !DILocation(line: 682, column: 25, scope: !1329)
!1331 = !DILocation(line: 682, column: 25, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !124, line: 682, column: 25)
!1333 = distinct !DILexicalBlock(scope: !1325, file: !124, line: 682, column: 25)
!1334 = !DILocation(line: 682, column: 25, scope: !1333)
!1335 = !DILocation(line: 682, column: 25, scope: !1325)
!1336 = !DILocation(line: 682, column: 25, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !124, line: 682, column: 25)
!1338 = distinct !DILexicalBlock(scope: !1318, file: !124, line: 682, column: 25)
!1339 = !DILocation(line: 682, column: 25, scope: !1338)
!1340 = !DILocation(line: 683, column: 25, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !124, line: 683, column: 25)
!1342 = distinct !DILexicalBlock(scope: !1319, file: !124, line: 683, column: 25)
!1343 = !DILocation(line: 683, column: 25, scope: !1342)
!1344 = !DILocation(line: 684, column: 25, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !124, line: 684, column: 25)
!1346 = distinct !DILexicalBlock(scope: !1319, file: !124, line: 684, column: 25)
!1347 = !DILocation(line: 684, column: 25, scope: !1346)
!1348 = !DILocation(line: 685, column: 38, scope: !1319)
!1349 = !DILocation(line: 685, column: 33, scope: !1319)
!1350 = !DILocation(line: 686, column: 23, scope: !1319)
!1351 = !DILocation(line: 687, column: 30, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1313, file: !124, line: 687, column: 30)
!1353 = !DILocation(line: 687, column: 30, scope: !1313)
!1354 = !DILocation(line: 689, column: 25, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !124, line: 689, column: 25)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !124, line: 689, column: 25)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !124, line: 688, column: 23)
!1358 = !DILocation(line: 689, column: 25, scope: !1356)
!1359 = !DILocation(line: 691, column: 23, scope: !1357)
!1360 = !DILocation(line: 692, column: 35, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1314, file: !124, line: 692, column: 25)
!1362 = !DILocation(line: 692, column: 30, scope: !1361)
!1363 = !DILocation(line: 692, column: 25, scope: !1314)
!1364 = !DILocation(line: 694, column: 21, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !124, line: 694, column: 21)
!1366 = distinct !DILexicalBlock(scope: !1314, file: !124, line: 694, column: 21)
!1367 = !DILocation(line: 694, column: 21, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !124, line: 694, column: 21)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !124, line: 694, column: 21)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !124, line: 694, column: 21)
!1371 = !DILocation(line: 694, column: 21, scope: !1369)
!1372 = !DILocation(line: 694, column: 21, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !124, line: 694, column: 21)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !124, line: 694, column: 21)
!1375 = !DILocation(line: 694, column: 21, scope: !1374)
!1376 = !DILocation(line: 694, column: 21, scope: !1370)
!1377 = !DILocation(line: 695, column: 21, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !124, line: 695, column: 21)
!1379 = distinct !DILexicalBlock(scope: !1314, file: !124, line: 695, column: 21)
!1380 = !DILocation(line: 695, column: 21, scope: !1379)
!1381 = !DILocation(line: 696, column: 25, scope: !1314)
!1382 = !DILocation(line: 678, column: 17, scope: !1315)
!1383 = distinct !{!1383, !1384, !1385}
!1384 = !DILocation(line: 678, column: 17, scope: !1316)
!1385 = !DILocation(line: 697, column: 19, scope: !1316)
!1386 = !DILocation(line: 704, column: 34, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !989, file: !124, line: 704, column: 11)
!1388 = !DILocation(line: 706, column: 14, scope: !1387)
!1389 = !DILocation(line: 707, column: 14, scope: !1387)
!1390 = !DILocation(line: 707, column: 35, scope: !1387)
!1391 = !DILocation(line: 707, column: 17, scope: !1387)
!1392 = !DILocation(line: 707, column: 53, scope: !1387)
!1393 = !DILocation(line: 707, column: 47, scope: !1387)
!1394 = !DILocation(line: 707, column: 65, scope: !1387)
!1395 = !DILocation(line: 708, column: 15, scope: !1387)
!1396 = !DILocation(line: 708, column: 11, scope: !1387)
!1397 = !DILocation(line: 704, column: 11, scope: !989)
!1398 = !DILocation(line: 712, column: 7, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !989, file: !124, line: 712, column: 7)
!1400 = !DILocation(line: 712, column: 7, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1399, file: !124, line: 712, column: 7)
!1402 = !DILocation(line: 712, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !124, line: 712, column: 7)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !124, line: 712, column: 7)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !124, line: 712, column: 7)
!1406 = !DILocation(line: 712, column: 7, scope: !1404)
!1407 = !DILocation(line: 712, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !124, line: 712, column: 7)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !124, line: 712, column: 7)
!1410 = !DILocation(line: 712, column: 7, scope: !1409)
!1411 = !DILocation(line: 712, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !124, line: 712, column: 7)
!1413 = distinct !DILexicalBlock(scope: !1405, file: !124, line: 712, column: 7)
!1414 = !DILocation(line: 712, column: 7, scope: !1413)
!1415 = !DILocation(line: 712, column: 7, scope: !1405)
!1416 = !DILocation(line: 712, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !124, line: 712, column: 7)
!1418 = distinct !DILexicalBlock(scope: !1399, file: !124, line: 712, column: 7)
!1419 = !DILocation(line: 712, column: 7, scope: !1418)
!1420 = !DILocation(line: 715, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !124, line: 715, column: 7)
!1422 = distinct !DILexicalBlock(scope: !989, file: !124, line: 715, column: 7)
!1423 = !DILocation(line: 715, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !124, line: 715, column: 7)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !124, line: 715, column: 7)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !124, line: 715, column: 7)
!1427 = !DILocation(line: 715, column: 7, scope: !1425)
!1428 = !DILocation(line: 715, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !124, line: 715, column: 7)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !124, line: 715, column: 7)
!1431 = !DILocation(line: 715, column: 7, scope: !1430)
!1432 = !DILocation(line: 715, column: 7, scope: !1426)
!1433 = !DILocation(line: 716, column: 7, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !124, line: 716, column: 7)
!1435 = distinct !DILexicalBlock(scope: !989, file: !124, line: 716, column: 7)
!1436 = !DILocation(line: 716, column: 7, scope: !1435)
!1437 = !DILocation(line: 718, column: 13, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !989, file: !124, line: 718, column: 11)
!1439 = !DILocation(line: 718, column: 11, scope: !989)
!1440 = !DILocation(line: 720, column: 5, scope: !990)
!1441 = !DILocation(line: 392, column: 75, scope: !990)
!1442 = !DILocation(line: 392, column: 3, scope: !990)
!1443 = distinct !{!1443, !1101, !1444}
!1444 = !DILocation(line: 720, column: 5, scope: !991)
!1445 = !DILocation(line: 722, column: 11, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !962, file: !124, line: 722, column: 7)
!1447 = !DILocation(line: 722, column: 16, scope: !1446)
!1448 = !DILocation(line: 730, column: 51, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !962, file: !124, line: 730, column: 7)
!1450 = !DILocation(line: 731, column: 10, scope: !1449)
!1451 = !DILocation(line: 733, column: 11, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !124, line: 733, column: 11)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !124, line: 732, column: 5)
!1454 = !DILocation(line: 733, column: 11, scope: !1453)
!1455 = !DILocation(line: 734, column: 16, scope: !1452)
!1456 = !DILocation(line: 734, column: 9, scope: !1452)
!1457 = !DILocation(line: 738, column: 18, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1452, file: !124, line: 738, column: 16)
!1459 = !DILocation(line: 738, column: 32, scope: !1458)
!1460 = !DILocation(line: 738, column: 29, scope: !1458)
!1461 = !DILocation(line: 747, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !962, file: !124, line: 747, column: 7)
!1463 = !DILocation(line: 747, column: 20, scope: !1462)
!1464 = !DILocation(line: 748, column: 12, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !124, line: 748, column: 5)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !124, line: 748, column: 5)
!1467 = !DILocation(line: 748, column: 5, scope: !1466)
!1468 = !DILocation(line: 749, column: 7, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !124, line: 749, column: 7)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !124, line: 749, column: 7)
!1471 = !DILocation(line: 749, column: 7, scope: !1470)
!1472 = !DILocation(line: 748, column: 39, scope: !1465)
!1473 = distinct !{!1473, !1467, !1474}
!1474 = !DILocation(line: 749, column: 7, scope: !1466)
!1475 = !DILocation(line: 751, column: 11, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !962, file: !124, line: 751, column: 7)
!1477 = !DILocation(line: 751, column: 7, scope: !962)
!1478 = !DILocation(line: 752, column: 5, scope: !1476)
!1479 = !DILocation(line: 752, column: 17, scope: !1476)
!1480 = !DILocation(line: 758, column: 21, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !962, file: !124, line: 758, column: 7)
!1482 = !DILocation(line: 758, column: 54, scope: !1481)
!1483 = !DILocation(line: 758, column: 51, scope: !1481)
!1484 = !DILocation(line: 762, column: 42, scope: !962)
!1485 = !DILocation(line: 760, column: 10, scope: !962)
!1486 = !DILocation(line: 760, column: 3, scope: !962)
!1487 = !DILocation(line: 764, column: 1, scope: !962)
!1488 = distinct !DISubprogram(name: "gettext_quote", scope: !124, file: !124, line: 199, type: !1489, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!19, !19, !82}
!1491 = !{!1492, !1493, !1494, !1495}
!1492 = !DILocalVariable(name: "msgid", arg: 1, scope: !1488, file: !124, line: 199, type: !19)
!1493 = !DILocalVariable(name: "s", arg: 2, scope: !1488, file: !124, line: 199, type: !82)
!1494 = !DILocalVariable(name: "translation", scope: !1488, file: !124, line: 201, type: !19)
!1495 = !DILocalVariable(name: "locale_code", scope: !1488, file: !124, line: 202, type: !19)
!1496 = !DILocation(line: 199, column: 28, scope: !1488)
!1497 = !DILocation(line: 199, column: 54, scope: !1488)
!1498 = !DILocation(line: 201, column: 29, scope: !1488)
!1499 = !DILocation(line: 201, column: 15, scope: !1488)
!1500 = !DILocation(line: 204, column: 19, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1488, file: !124, line: 204, column: 7)
!1502 = !DILocation(line: 204, column: 7, scope: !1488)
!1503 = !DILocation(line: 225, column: 17, scope: !1488)
!1504 = !DILocation(line: 202, column: 15, scope: !1488)
!1505 = !DILocalVariable(name: "s2", arg: 2, scope: !1506, file: !1507, line: 160, type: !19)
!1506 = distinct !DISubprogram(name: "strcaseeq0", scope: !1507, file: !1507, line: 160, type: !1508, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1510)
!1507 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!42, !19, !19, !10, !10, !10, !10, !10, !10, !10, !10, !10}
!1510 = !{!1511, !1505, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1511 = !DILocalVariable(name: "s1", arg: 1, scope: !1506, file: !1507, line: 160, type: !19)
!1512 = !DILocalVariable(name: "s20", arg: 3, scope: !1506, file: !1507, line: 160, type: !10)
!1513 = !DILocalVariable(name: "s21", arg: 4, scope: !1506, file: !1507, line: 160, type: !10)
!1514 = !DILocalVariable(name: "s22", arg: 5, scope: !1506, file: !1507, line: 160, type: !10)
!1515 = !DILocalVariable(name: "s23", arg: 6, scope: !1506, file: !1507, line: 160, type: !10)
!1516 = !DILocalVariable(name: "s24", arg: 7, scope: !1506, file: !1507, line: 160, type: !10)
!1517 = !DILocalVariable(name: "s25", arg: 8, scope: !1506, file: !1507, line: 160, type: !10)
!1518 = !DILocalVariable(name: "s26", arg: 9, scope: !1506, file: !1507, line: 160, type: !10)
!1519 = !DILocalVariable(name: "s27", arg: 10, scope: !1506, file: !1507, line: 160, type: !10)
!1520 = !DILocalVariable(name: "s28", arg: 11, scope: !1506, file: !1507, line: 160, type: !10)
!1521 = !DILocation(line: 160, column: 41, scope: !1506, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 226, column: 7, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1488, file: !124, line: 226, column: 7)
!1524 = !DILocation(line: 160, column: 120, scope: !1506, inlinedAt: !1522)
!1525 = !DILocation(line: 160, column: 130, scope: !1506, inlinedAt: !1522)
!1526 = !DILocation(line: 162, column: 7, scope: !1527, inlinedAt: !1522)
!1527 = distinct !DILexicalBlock(scope: !1506, file: !1507, line: 162, column: 7)
!1528 = !DILocalVariable(name: "s2", arg: 2, scope: !1529, file: !1507, line: 146, type: !19)
!1529 = distinct !DISubprogram(name: "strcaseeq1", scope: !1507, file: !1507, line: 146, type: !1530, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1532)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!42, !19, !19, !10, !10, !10, !10, !10, !10, !10, !10}
!1532 = !{!1533, !1528, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541}
!1533 = !DILocalVariable(name: "s1", arg: 1, scope: !1529, file: !1507, line: 146, type: !19)
!1534 = !DILocalVariable(name: "s21", arg: 3, scope: !1529, file: !1507, line: 146, type: !10)
!1535 = !DILocalVariable(name: "s22", arg: 4, scope: !1529, file: !1507, line: 146, type: !10)
!1536 = !DILocalVariable(name: "s23", arg: 5, scope: !1529, file: !1507, line: 146, type: !10)
!1537 = !DILocalVariable(name: "s24", arg: 6, scope: !1529, file: !1507, line: 146, type: !10)
!1538 = !DILocalVariable(name: "s25", arg: 7, scope: !1529, file: !1507, line: 146, type: !10)
!1539 = !DILocalVariable(name: "s26", arg: 8, scope: !1529, file: !1507, line: 146, type: !10)
!1540 = !DILocalVariable(name: "s27", arg: 9, scope: !1529, file: !1507, line: 146, type: !10)
!1541 = !DILocalVariable(name: "s28", arg: 10, scope: !1529, file: !1507, line: 146, type: !10)
!1542 = !DILocation(line: 146, column: 41, scope: !1529, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 167, column: 16, scope: !1544, inlinedAt: !1522)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !1507, line: 164, column: 11)
!1545 = distinct !DILexicalBlock(scope: !1527, file: !1507, line: 163, column: 5)
!1546 = !DILocation(line: 146, column: 110, scope: !1529, inlinedAt: !1543)
!1547 = !DILocation(line: 146, column: 120, scope: !1529, inlinedAt: !1543)
!1548 = !DILocation(line: 148, column: 7, scope: !1549, inlinedAt: !1543)
!1549 = distinct !DILexicalBlock(scope: !1529, file: !1507, line: 148, column: 7)
!1550 = !DILocalVariable(name: "s2", arg: 2, scope: !1551, file: !1507, line: 132, type: !19)
!1551 = distinct !DISubprogram(name: "strcaseeq2", scope: !1507, file: !1507, line: 132, type: !1552, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!42, !19, !19, !10, !10, !10, !10, !10, !10, !10}
!1554 = !{!1555, !1550, !1556, !1557, !1558, !1559, !1560, !1561, !1562}
!1555 = !DILocalVariable(name: "s1", arg: 1, scope: !1551, file: !1507, line: 132, type: !19)
!1556 = !DILocalVariable(name: "s22", arg: 3, scope: !1551, file: !1507, line: 132, type: !10)
!1557 = !DILocalVariable(name: "s23", arg: 4, scope: !1551, file: !1507, line: 132, type: !10)
!1558 = !DILocalVariable(name: "s24", arg: 5, scope: !1551, file: !1507, line: 132, type: !10)
!1559 = !DILocalVariable(name: "s25", arg: 6, scope: !1551, file: !1507, line: 132, type: !10)
!1560 = !DILocalVariable(name: "s26", arg: 7, scope: !1551, file: !1507, line: 132, type: !10)
!1561 = !DILocalVariable(name: "s27", arg: 8, scope: !1551, file: !1507, line: 132, type: !10)
!1562 = !DILocalVariable(name: "s28", arg: 9, scope: !1551, file: !1507, line: 132, type: !10)
!1563 = !DILocation(line: 132, column: 41, scope: !1551, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 153, column: 16, scope: !1565, inlinedAt: !1543)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !1507, line: 150, column: 11)
!1566 = distinct !DILexicalBlock(scope: !1549, file: !1507, line: 149, column: 5)
!1567 = !DILocation(line: 132, column: 100, scope: !1551, inlinedAt: !1564)
!1568 = !DILocation(line: 132, column: 110, scope: !1551, inlinedAt: !1564)
!1569 = !DILocation(line: 134, column: 7, scope: !1570, inlinedAt: !1564)
!1570 = distinct !DILexicalBlock(scope: !1551, file: !1507, line: 134, column: 7)
!1571 = !DILocalVariable(name: "s2", arg: 2, scope: !1572, file: !1507, line: 118, type: !19)
!1572 = distinct !DISubprogram(name: "strcaseeq3", scope: !1507, file: !1507, line: 118, type: !1573, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!42, !19, !19, !10, !10, !10, !10, !10, !10}
!1575 = !{!1576, !1571, !1577, !1578, !1579, !1580, !1581, !1582}
!1576 = !DILocalVariable(name: "s1", arg: 1, scope: !1572, file: !1507, line: 118, type: !19)
!1577 = !DILocalVariable(name: "s23", arg: 3, scope: !1572, file: !1507, line: 118, type: !10)
!1578 = !DILocalVariable(name: "s24", arg: 4, scope: !1572, file: !1507, line: 118, type: !10)
!1579 = !DILocalVariable(name: "s25", arg: 5, scope: !1572, file: !1507, line: 118, type: !10)
!1580 = !DILocalVariable(name: "s26", arg: 6, scope: !1572, file: !1507, line: 118, type: !10)
!1581 = !DILocalVariable(name: "s27", arg: 7, scope: !1572, file: !1507, line: 118, type: !10)
!1582 = !DILocalVariable(name: "s28", arg: 8, scope: !1572, file: !1507, line: 118, type: !10)
!1583 = !DILocation(line: 118, column: 41, scope: !1572, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 139, column: 16, scope: !1585, inlinedAt: !1564)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !1507, line: 136, column: 11)
!1586 = distinct !DILexicalBlock(scope: !1570, file: !1507, line: 135, column: 5)
!1587 = !DILocation(line: 118, column: 90, scope: !1572, inlinedAt: !1584)
!1588 = !DILocation(line: 118, column: 100, scope: !1572, inlinedAt: !1584)
!1589 = !DILocation(line: 120, column: 7, scope: !1590, inlinedAt: !1584)
!1590 = distinct !DILexicalBlock(scope: !1572, file: !1507, line: 120, column: 7)
!1591 = !DILocation(line: 120, column: 7, scope: !1572, inlinedAt: !1584)
!1592 = !DILocalVariable(name: "s2", arg: 2, scope: !1593, file: !1507, line: 104, type: !19)
!1593 = distinct !DISubprogram(name: "strcaseeq4", scope: !1507, file: !1507, line: 104, type: !1594, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1596)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!42, !19, !19, !10, !10, !10, !10, !10}
!1596 = !{!1597, !1592, !1598, !1599, !1600, !1601, !1602}
!1597 = !DILocalVariable(name: "s1", arg: 1, scope: !1593, file: !1507, line: 104, type: !19)
!1598 = !DILocalVariable(name: "s24", arg: 3, scope: !1593, file: !1507, line: 104, type: !10)
!1599 = !DILocalVariable(name: "s25", arg: 4, scope: !1593, file: !1507, line: 104, type: !10)
!1600 = !DILocalVariable(name: "s26", arg: 5, scope: !1593, file: !1507, line: 104, type: !10)
!1601 = !DILocalVariable(name: "s27", arg: 6, scope: !1593, file: !1507, line: 104, type: !10)
!1602 = !DILocalVariable(name: "s28", arg: 7, scope: !1593, file: !1507, line: 104, type: !10)
!1603 = !DILocation(line: 104, column: 41, scope: !1593, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 125, column: 16, scope: !1605, inlinedAt: !1584)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !1507, line: 122, column: 11)
!1606 = distinct !DILexicalBlock(scope: !1590, file: !1507, line: 121, column: 5)
!1607 = !DILocation(line: 104, column: 80, scope: !1593, inlinedAt: !1604)
!1608 = !DILocation(line: 104, column: 90, scope: !1593, inlinedAt: !1604)
!1609 = !DILocation(line: 106, column: 7, scope: !1610, inlinedAt: !1604)
!1610 = distinct !DILexicalBlock(scope: !1593, file: !1507, line: 106, column: 7)
!1611 = !DILocation(line: 106, column: 7, scope: !1593, inlinedAt: !1604)
!1612 = !DILocalVariable(name: "s2", arg: 2, scope: !1613, file: !1507, line: 90, type: !19)
!1613 = distinct !DISubprogram(name: "strcaseeq5", scope: !1507, file: !1507, line: 90, type: !1614, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1616)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!42, !19, !19, !10, !10, !10, !10}
!1616 = !{!1617, !1612, !1618, !1619, !1620, !1621}
!1617 = !DILocalVariable(name: "s1", arg: 1, scope: !1613, file: !1507, line: 90, type: !19)
!1618 = !DILocalVariable(name: "s25", arg: 3, scope: !1613, file: !1507, line: 90, type: !10)
!1619 = !DILocalVariable(name: "s26", arg: 4, scope: !1613, file: !1507, line: 90, type: !10)
!1620 = !DILocalVariable(name: "s27", arg: 5, scope: !1613, file: !1507, line: 90, type: !10)
!1621 = !DILocalVariable(name: "s28", arg: 6, scope: !1613, file: !1507, line: 90, type: !10)
!1622 = !DILocation(line: 90, column: 41, scope: !1613, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 111, column: 16, scope: !1624, inlinedAt: !1604)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !1507, line: 108, column: 11)
!1625 = distinct !DILexicalBlock(scope: !1610, file: !1507, line: 107, column: 5)
!1626 = !DILocation(line: 90, column: 70, scope: !1613, inlinedAt: !1623)
!1627 = !DILocation(line: 90, column: 80, scope: !1613, inlinedAt: !1623)
!1628 = !DILocation(line: 92, column: 7, scope: !1629, inlinedAt: !1623)
!1629 = distinct !DILexicalBlock(scope: !1613, file: !1507, line: 92, column: 7)
!1630 = !DILocation(line: 92, column: 7, scope: !1613, inlinedAt: !1623)
!1631 = !DILocation(line: 227, column: 12, scope: !1523)
!1632 = !DILocation(line: 227, column: 21, scope: !1523)
!1633 = !DILocation(line: 227, column: 5, scope: !1523)
!1634 = !DILocation(line: 146, column: 41, scope: !1529, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 167, column: 16, scope: !1544, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 228, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1488, file: !124, line: 228, column: 7)
!1638 = !DILocation(line: 146, column: 110, scope: !1529, inlinedAt: !1635)
!1639 = !DILocation(line: 146, column: 120, scope: !1529, inlinedAt: !1635)
!1640 = !DILocation(line: 148, column: 7, scope: !1549, inlinedAt: !1635)
!1641 = !DILocation(line: 132, column: 41, scope: !1551, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 153, column: 16, scope: !1565, inlinedAt: !1635)
!1643 = !DILocation(line: 132, column: 100, scope: !1551, inlinedAt: !1642)
!1644 = !DILocation(line: 132, column: 110, scope: !1551, inlinedAt: !1642)
!1645 = !DILocation(line: 134, column: 7, scope: !1570, inlinedAt: !1642)
!1646 = !DILocation(line: 134, column: 7, scope: !1551, inlinedAt: !1642)
!1647 = !DILocation(line: 118, column: 41, scope: !1572, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 139, column: 16, scope: !1585, inlinedAt: !1642)
!1649 = !DILocation(line: 118, column: 90, scope: !1572, inlinedAt: !1648)
!1650 = !DILocation(line: 118, column: 100, scope: !1572, inlinedAt: !1648)
!1651 = !DILocation(line: 120, column: 7, scope: !1590, inlinedAt: !1648)
!1652 = !DILocation(line: 120, column: 7, scope: !1572, inlinedAt: !1648)
!1653 = !DILocation(line: 104, column: 41, scope: !1593, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 125, column: 16, scope: !1605, inlinedAt: !1648)
!1655 = !DILocation(line: 104, column: 80, scope: !1593, inlinedAt: !1654)
!1656 = !DILocation(line: 104, column: 90, scope: !1593, inlinedAt: !1654)
!1657 = !DILocation(line: 106, column: 7, scope: !1610, inlinedAt: !1654)
!1658 = !DILocation(line: 106, column: 7, scope: !1593, inlinedAt: !1654)
!1659 = !DILocation(line: 90, column: 41, scope: !1613, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 111, column: 16, scope: !1624, inlinedAt: !1654)
!1661 = !DILocation(line: 90, column: 70, scope: !1613, inlinedAt: !1660)
!1662 = !DILocation(line: 90, column: 80, scope: !1613, inlinedAt: !1660)
!1663 = !DILocation(line: 92, column: 7, scope: !1629, inlinedAt: !1660)
!1664 = !DILocation(line: 92, column: 7, scope: !1613, inlinedAt: !1660)
!1665 = !DILocalVariable(name: "s2", arg: 2, scope: !1666, file: !1507, line: 76, type: !19)
!1666 = distinct !DISubprogram(name: "strcaseeq6", scope: !1507, file: !1507, line: 76, type: !1667, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!42, !19, !19, !10, !10, !10}
!1669 = !{!1670, !1665, !1671, !1672, !1673}
!1670 = !DILocalVariable(name: "s1", arg: 1, scope: !1666, file: !1507, line: 76, type: !19)
!1671 = !DILocalVariable(name: "s26", arg: 3, scope: !1666, file: !1507, line: 76, type: !10)
!1672 = !DILocalVariable(name: "s27", arg: 4, scope: !1666, file: !1507, line: 76, type: !10)
!1673 = !DILocalVariable(name: "s28", arg: 5, scope: !1666, file: !1507, line: 76, type: !10)
!1674 = !DILocation(line: 76, column: 41, scope: !1666, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 97, column: 16, scope: !1676, inlinedAt: !1660)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !1507, line: 94, column: 11)
!1677 = distinct !DILexicalBlock(scope: !1629, file: !1507, line: 93, column: 5)
!1678 = !DILocation(line: 76, column: 60, scope: !1666, inlinedAt: !1675)
!1679 = !DILocation(line: 76, column: 70, scope: !1666, inlinedAt: !1675)
!1680 = !DILocation(line: 78, column: 7, scope: !1681, inlinedAt: !1675)
!1681 = distinct !DILexicalBlock(scope: !1666, file: !1507, line: 78, column: 7)
!1682 = !DILocation(line: 78, column: 7, scope: !1666, inlinedAt: !1675)
!1683 = !DILocalVariable(name: "s2", arg: 2, scope: !1684, file: !1507, line: 62, type: !19)
!1684 = distinct !DISubprogram(name: "strcaseeq7", scope: !1507, file: !1507, line: 62, type: !1685, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1687)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!42, !19, !19, !10, !10}
!1687 = !{!1688, !1683, !1689, !1690}
!1688 = !DILocalVariable(name: "s1", arg: 1, scope: !1684, file: !1507, line: 62, type: !19)
!1689 = !DILocalVariable(name: "s27", arg: 3, scope: !1684, file: !1507, line: 62, type: !10)
!1690 = !DILocalVariable(name: "s28", arg: 4, scope: !1684, file: !1507, line: 62, type: !10)
!1691 = !DILocation(line: 62, column: 41, scope: !1684, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 83, column: 16, scope: !1693, inlinedAt: !1675)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !1507, line: 80, column: 11)
!1694 = distinct !DILexicalBlock(scope: !1681, file: !1507, line: 79, column: 5)
!1695 = !DILocation(line: 62, column: 50, scope: !1684, inlinedAt: !1692)
!1696 = !DILocation(line: 62, column: 60, scope: !1684, inlinedAt: !1692)
!1697 = !DILocation(line: 64, column: 7, scope: !1698, inlinedAt: !1692)
!1698 = distinct !DILexicalBlock(scope: !1684, file: !1507, line: 64, column: 7)
!1699 = !DILocation(line: 228, column: 7, scope: !1488)
!1700 = !DILocation(line: 229, column: 12, scope: !1637)
!1701 = !DILocation(line: 229, column: 21, scope: !1637)
!1702 = !DILocation(line: 229, column: 5, scope: !1637)
!1703 = !DILocation(line: 231, column: 13, scope: !1488)
!1704 = !DILocation(line: 231, column: 11, scope: !1488)
!1705 = !DILocation(line: 231, column: 3, scope: !1488)
!1706 = !DILocation(line: 232, column: 1, scope: !1488)
!1707 = distinct !DISubprogram(name: "quotearg_alloc", scope: !124, file: !124, line: 791, type: !1708, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1710)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!9, !19, !118, !834}
!1710 = !{!1711, !1712, !1713}
!1711 = !DILocalVariable(name: "arg", arg: 1, scope: !1707, file: !124, line: 791, type: !19)
!1712 = !DILocalVariable(name: "argsize", arg: 2, scope: !1707, file: !124, line: 791, type: !118)
!1713 = !DILocalVariable(name: "o", arg: 3, scope: !1707, file: !124, line: 792, type: !834)
!1714 = !DILocation(line: 791, column: 29, scope: !1707)
!1715 = !DILocation(line: 791, column: 41, scope: !1707)
!1716 = !DILocation(line: 792, column: 47, scope: !1707)
!1717 = !DILocalVariable(name: "arg", arg: 1, scope: !1718, file: !124, line: 804, type: !19)
!1718 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !124, file: !124, line: 804, type: !1719, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1721)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!9, !19, !118, !538, !834}
!1721 = !{!1717, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729}
!1722 = !DILocalVariable(name: "argsize", arg: 2, scope: !1718, file: !124, line: 804, type: !118)
!1723 = !DILocalVariable(name: "size", arg: 3, scope: !1718, file: !124, line: 804, type: !538)
!1724 = !DILocalVariable(name: "o", arg: 4, scope: !1718, file: !124, line: 805, type: !834)
!1725 = !DILocalVariable(name: "p", scope: !1718, file: !124, line: 807, type: !834)
!1726 = !DILocalVariable(name: "e", scope: !1718, file: !124, line: 808, type: !42)
!1727 = !DILocalVariable(name: "flags", scope: !1718, file: !124, line: 810, type: !42)
!1728 = !DILocalVariable(name: "bufsize", scope: !1718, file: !124, line: 811, type: !118)
!1729 = !DILocalVariable(name: "buf", scope: !1718, file: !124, line: 815, type: !9)
!1730 = !DILocation(line: 804, column: 33, scope: !1718, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 794, column: 10, scope: !1707)
!1732 = !DILocation(line: 804, column: 45, scope: !1718, inlinedAt: !1731)
!1733 = !DILocation(line: 804, column: 62, scope: !1718, inlinedAt: !1731)
!1734 = !DILocation(line: 805, column: 51, scope: !1718, inlinedAt: !1731)
!1735 = !DILocation(line: 807, column: 37, scope: !1718, inlinedAt: !1731)
!1736 = !DILocation(line: 807, column: 33, scope: !1718, inlinedAt: !1731)
!1737 = !DILocation(line: 808, column: 11, scope: !1718, inlinedAt: !1731)
!1738 = !DILocation(line: 808, column: 7, scope: !1718, inlinedAt: !1731)
!1739 = !DILocation(line: 810, column: 18, scope: !1718, inlinedAt: !1731)
!1740 = !DILocation(line: 810, column: 24, scope: !1718, inlinedAt: !1731)
!1741 = !DILocation(line: 810, column: 7, scope: !1718, inlinedAt: !1731)
!1742 = !DILocation(line: 811, column: 69, scope: !1718, inlinedAt: !1731)
!1743 = !DILocation(line: 812, column: 53, scope: !1718, inlinedAt: !1731)
!1744 = !DILocation(line: 813, column: 49, scope: !1718, inlinedAt: !1731)
!1745 = !DILocation(line: 814, column: 49, scope: !1718, inlinedAt: !1731)
!1746 = !DILocation(line: 811, column: 20, scope: !1718, inlinedAt: !1731)
!1747 = !DILocation(line: 814, column: 62, scope: !1718, inlinedAt: !1731)
!1748 = !DILocation(line: 811, column: 10, scope: !1718, inlinedAt: !1731)
!1749 = !DILocalVariable(name: "n", arg: 1, scope: !1750, file: !534, line: 220, type: !118)
!1750 = distinct !DISubprogram(name: "xcharalloc", scope: !534, file: !534, line: 220, type: !1751, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!9, !118}
!1753 = !{!1749}
!1754 = !DILocation(line: 220, column: 20, scope: !1750, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 815, column: 15, scope: !1718, inlinedAt: !1731)
!1756 = !DILocation(line: 222, column: 10, scope: !1750, inlinedAt: !1755)
!1757 = !DILocation(line: 815, column: 9, scope: !1718, inlinedAt: !1731)
!1758 = !DILocation(line: 816, column: 60, scope: !1718, inlinedAt: !1731)
!1759 = !DILocation(line: 818, column: 32, scope: !1718, inlinedAt: !1731)
!1760 = !DILocation(line: 818, column: 47, scope: !1718, inlinedAt: !1731)
!1761 = !DILocation(line: 816, column: 3, scope: !1718, inlinedAt: !1731)
!1762 = !DILocation(line: 819, column: 9, scope: !1718, inlinedAt: !1731)
!1763 = !DILocation(line: 794, column: 3, scope: !1707)
!1764 = !DILocation(line: 804, column: 33, scope: !1718)
!1765 = !DILocation(line: 804, column: 45, scope: !1718)
!1766 = !DILocation(line: 804, column: 62, scope: !1718)
!1767 = !DILocation(line: 805, column: 51, scope: !1718)
!1768 = !DILocation(line: 807, column: 37, scope: !1718)
!1769 = !DILocation(line: 807, column: 33, scope: !1718)
!1770 = !DILocation(line: 808, column: 11, scope: !1718)
!1771 = !DILocation(line: 808, column: 7, scope: !1718)
!1772 = !DILocation(line: 810, column: 18, scope: !1718)
!1773 = !DILocation(line: 810, column: 27, scope: !1718)
!1774 = !DILocation(line: 810, column: 24, scope: !1718)
!1775 = !DILocation(line: 810, column: 7, scope: !1718)
!1776 = !DILocation(line: 811, column: 69, scope: !1718)
!1777 = !DILocation(line: 812, column: 53, scope: !1718)
!1778 = !DILocation(line: 813, column: 49, scope: !1718)
!1779 = !DILocation(line: 814, column: 49, scope: !1718)
!1780 = !DILocation(line: 811, column: 20, scope: !1718)
!1781 = !DILocation(line: 814, column: 62, scope: !1718)
!1782 = !DILocation(line: 811, column: 10, scope: !1718)
!1783 = !DILocation(line: 220, column: 20, scope: !1750, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 815, column: 15, scope: !1718)
!1785 = !DILocation(line: 222, column: 10, scope: !1750, inlinedAt: !1784)
!1786 = !DILocation(line: 815, column: 9, scope: !1718)
!1787 = !DILocation(line: 816, column: 60, scope: !1718)
!1788 = !DILocation(line: 818, column: 32, scope: !1718)
!1789 = !DILocation(line: 818, column: 47, scope: !1718)
!1790 = !DILocation(line: 816, column: 3, scope: !1718)
!1791 = !DILocation(line: 819, column: 9, scope: !1718)
!1792 = !DILocation(line: 820, column: 7, scope: !1718)
!1793 = !DILocation(line: 821, column: 11, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1718, file: !124, line: 820, column: 7)
!1795 = !{!1796, !1796, i64 0}
!1796 = !{!"long", !584, i64 0}
!1797 = !DILocation(line: 821, column: 5, scope: !1794)
!1798 = !DILocation(line: 822, column: 3, scope: !1718)
!1799 = distinct !DISubprogram(name: "quotearg_free", scope: !124, file: !124, line: 840, type: !741, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1800)
!1800 = !{!1801, !1802}
!1801 = !DILocalVariable(name: "sv", scope: !1799, file: !124, line: 842, type: !151)
!1802 = !DILocalVariable(name: "i", scope: !1799, file: !124, line: 843, type: !42)
!1803 = !DILocation(line: 842, column: 24, scope: !1799)
!1804 = !DILocation(line: 842, column: 19, scope: !1799)
!1805 = !DILocation(line: 843, column: 7, scope: !1799)
!1806 = !DILocation(line: 844, column: 19, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !124, line: 844, column: 3)
!1808 = distinct !DILexicalBlock(scope: !1799, file: !124, line: 844, column: 3)
!1809 = !DILocation(line: 844, column: 17, scope: !1807)
!1810 = !DILocation(line: 844, column: 3, scope: !1808)
!1811 = !DILocation(line: 845, column: 17, scope: !1807)
!1812 = !{!1813, !583, i64 8}
!1813 = !{!"slotvec", !1796, i64 0, !583, i64 8}
!1814 = !DILocation(line: 845, column: 5, scope: !1807)
!1815 = !DILocation(line: 844, column: 28, scope: !1807)
!1816 = distinct !{!1816, !1810, !1817}
!1817 = !DILocation(line: 845, column: 20, scope: !1808)
!1818 = !DILocation(line: 846, column: 13, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1799, file: !124, line: 846, column: 7)
!1820 = !DILocation(line: 846, column: 17, scope: !1819)
!1821 = !DILocation(line: 846, column: 7, scope: !1799)
!1822 = !DILocation(line: 848, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !124, line: 847, column: 5)
!1824 = !DILocation(line: 849, column: 21, scope: !1823)
!1825 = !{!1813, !1796, i64 0}
!1826 = !DILocation(line: 850, column: 20, scope: !1823)
!1827 = !DILocation(line: 851, column: 5, scope: !1823)
!1828 = !DILocation(line: 852, column: 10, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1799, file: !124, line: 852, column: 7)
!1830 = !DILocation(line: 852, column: 7, scope: !1799)
!1831 = !DILocation(line: 854, column: 13, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1829, file: !124, line: 853, column: 5)
!1833 = !DILocation(line: 854, column: 7, scope: !1832)
!1834 = !DILocation(line: 855, column: 15, scope: !1832)
!1835 = !DILocation(line: 856, column: 5, scope: !1832)
!1836 = !DILocation(line: 857, column: 10, scope: !1799)
!1837 = !DILocation(line: 858, column: 1, scope: !1799)
!1838 = distinct !DISubprogram(name: "quotearg_n", scope: !124, file: !124, line: 922, type: !1839, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1841)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!9, !42, !19}
!1841 = !{!1842, !1843}
!1842 = !DILocalVariable(name: "n", arg: 1, scope: !1838, file: !124, line: 922, type: !42)
!1843 = !DILocalVariable(name: "arg", arg: 2, scope: !1838, file: !124, line: 922, type: !19)
!1844 = !DILocation(line: 922, column: 17, scope: !1838)
!1845 = !DILocation(line: 922, column: 32, scope: !1838)
!1846 = !DILocation(line: 924, column: 10, scope: !1838)
!1847 = !DILocation(line: 924, column: 3, scope: !1838)
!1848 = distinct !DISubprogram(name: "quotearg_n_options", scope: !124, file: !124, line: 869, type: !1849, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1851)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!9, !42, !19, !118, !834}
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1857, !1858, !1861, !1863, !1864, !1865}
!1852 = !DILocalVariable(name: "n", arg: 1, scope: !1848, file: !124, line: 869, type: !42)
!1853 = !DILocalVariable(name: "arg", arg: 2, scope: !1848, file: !124, line: 869, type: !19)
!1854 = !DILocalVariable(name: "argsize", arg: 3, scope: !1848, file: !124, line: 869, type: !118)
!1855 = !DILocalVariable(name: "options", arg: 4, scope: !1848, file: !124, line: 870, type: !834)
!1856 = !DILocalVariable(name: "e", scope: !1848, file: !124, line: 872, type: !42)
!1857 = !DILocalVariable(name: "sv", scope: !1848, file: !124, line: 874, type: !151)
!1858 = !DILocalVariable(name: "preallocated", scope: !1859, file: !124, line: 881, type: !62)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !124, line: 880, column: 5)
!1860 = distinct !DILexicalBlock(scope: !1848, file: !124, line: 879, column: 7)
!1861 = !DILocalVariable(name: "size", scope: !1862, file: !124, line: 894, type: !118)
!1862 = distinct !DILexicalBlock(scope: !1848, file: !124, line: 893, column: 3)
!1863 = !DILocalVariable(name: "val", scope: !1862, file: !124, line: 895, type: !9)
!1864 = !DILocalVariable(name: "flags", scope: !1862, file: !124, line: 897, type: !42)
!1865 = !DILocalVariable(name: "qsize", scope: !1862, file: !124, line: 898, type: !118)
!1866 = !DILocation(line: 869, column: 25, scope: !1848)
!1867 = !DILocation(line: 869, column: 40, scope: !1848)
!1868 = !DILocation(line: 869, column: 52, scope: !1848)
!1869 = !DILocation(line: 870, column: 51, scope: !1848)
!1870 = !DILocation(line: 872, column: 11, scope: !1848)
!1871 = !DILocation(line: 872, column: 7, scope: !1848)
!1872 = !DILocation(line: 874, column: 24, scope: !1848)
!1873 = !DILocation(line: 874, column: 19, scope: !1848)
!1874 = !DILocation(line: 876, column: 9, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1848, file: !124, line: 876, column: 7)
!1876 = !DILocation(line: 876, column: 7, scope: !1848)
!1877 = !DILocation(line: 877, column: 5, scope: !1875)
!1878 = !DILocation(line: 879, column: 7, scope: !1860)
!1879 = !DILocation(line: 879, column: 14, scope: !1860)
!1880 = !DILocation(line: 879, column: 7, scope: !1848)
!1881 = !DILocation(line: 881, column: 31, scope: !1859)
!1882 = !DILocation(line: 883, column: 67, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1859, file: !124, line: 883, column: 11)
!1884 = !DILocation(line: 883, column: 11, scope: !1859)
!1885 = !DILocation(line: 884, column: 9, scope: !1883)
!1886 = !DILocation(line: 886, column: 32, scope: !1859)
!1887 = !DILocation(line: 886, column: 61, scope: !1859)
!1888 = !DILocation(line: 886, column: 58, scope: !1859)
!1889 = !DILocation(line: 886, column: 66, scope: !1859)
!1890 = !DILocation(line: 886, column: 22, scope: !1859)
!1891 = !DILocation(line: 886, column: 15, scope: !1859)
!1892 = !DILocation(line: 887, column: 11, scope: !1859)
!1893 = !DILocation(line: 888, column: 15, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1859, file: !124, line: 887, column: 11)
!1895 = !{i64 0, i64 8, !1795, i64 8, i64 8, !582}
!1896 = !DILocation(line: 888, column: 9, scope: !1894)
!1897 = !DILocation(line: 889, column: 20, scope: !1859)
!1898 = !DILocation(line: 889, column: 18, scope: !1859)
!1899 = !DILocation(line: 889, column: 7, scope: !1859)
!1900 = !DILocation(line: 889, column: 38, scope: !1859)
!1901 = !DILocation(line: 889, column: 31, scope: !1859)
!1902 = !DILocation(line: 889, column: 48, scope: !1859)
!1903 = !DILocation(line: 890, column: 14, scope: !1859)
!1904 = !DILocation(line: 891, column: 5, scope: !1859)
!1905 = !DILocation(line: 894, column: 19, scope: !1862)
!1906 = !DILocation(line: 894, column: 25, scope: !1862)
!1907 = !DILocation(line: 894, column: 12, scope: !1862)
!1908 = !DILocation(line: 895, column: 23, scope: !1862)
!1909 = !DILocation(line: 895, column: 11, scope: !1862)
!1910 = !DILocation(line: 897, column: 26, scope: !1862)
!1911 = !DILocation(line: 897, column: 32, scope: !1862)
!1912 = !DILocation(line: 897, column: 9, scope: !1862)
!1913 = !DILocation(line: 899, column: 55, scope: !1862)
!1914 = !DILocation(line: 900, column: 46, scope: !1862)
!1915 = !DILocation(line: 901, column: 55, scope: !1862)
!1916 = !DILocation(line: 902, column: 55, scope: !1862)
!1917 = !DILocation(line: 898, column: 20, scope: !1862)
!1918 = !DILocation(line: 898, column: 12, scope: !1862)
!1919 = !DILocation(line: 904, column: 14, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1862, file: !124, line: 904, column: 9)
!1921 = !DILocation(line: 904, column: 9, scope: !1862)
!1922 = !DILocation(line: 906, column: 35, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1920, file: !124, line: 905, column: 7)
!1924 = !DILocation(line: 906, column: 20, scope: !1923)
!1925 = !DILocation(line: 907, column: 17, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !124, line: 907, column: 13)
!1927 = !DILocation(line: 907, column: 13, scope: !1923)
!1928 = !DILocation(line: 908, column: 11, scope: !1926)
!1929 = !DILocation(line: 220, column: 20, scope: !1750, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 909, column: 27, scope: !1923)
!1931 = !DILocation(line: 222, column: 10, scope: !1750, inlinedAt: !1930)
!1932 = !DILocation(line: 909, column: 19, scope: !1923)
!1933 = !DILocation(line: 910, column: 69, scope: !1923)
!1934 = !DILocation(line: 912, column: 44, scope: !1923)
!1935 = !DILocation(line: 913, column: 44, scope: !1923)
!1936 = !DILocation(line: 910, column: 9, scope: !1923)
!1937 = !DILocation(line: 914, column: 7, scope: !1923)
!1938 = !DILocation(line: 916, column: 11, scope: !1862)
!1939 = !DILocation(line: 917, column: 5, scope: !1862)
!1940 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !124, file: !124, line: 928, type: !1941, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!9, !42, !19, !118}
!1943 = !{!1944, !1945, !1946}
!1944 = !DILocalVariable(name: "n", arg: 1, scope: !1940, file: !124, line: 928, type: !42)
!1945 = !DILocalVariable(name: "arg", arg: 2, scope: !1940, file: !124, line: 928, type: !19)
!1946 = !DILocalVariable(name: "argsize", arg: 3, scope: !1940, file: !124, line: 928, type: !118)
!1947 = !DILocation(line: 928, column: 21, scope: !1940)
!1948 = !DILocation(line: 928, column: 36, scope: !1940)
!1949 = !DILocation(line: 928, column: 48, scope: !1940)
!1950 = !DILocation(line: 930, column: 10, scope: !1940)
!1951 = !DILocation(line: 930, column: 3, scope: !1940)
!1952 = distinct !DISubprogram(name: "quotearg", scope: !124, file: !124, line: 934, type: !1953, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!9, !19}
!1955 = !{!1956}
!1956 = !DILocalVariable(name: "arg", arg: 1, scope: !1952, file: !124, line: 934, type: !19)
!1957 = !DILocation(line: 934, column: 23, scope: !1952)
!1958 = !DILocation(line: 922, column: 17, scope: !1838, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 936, column: 10, scope: !1952)
!1960 = !DILocation(line: 922, column: 32, scope: !1838, inlinedAt: !1959)
!1961 = !DILocation(line: 924, column: 10, scope: !1838, inlinedAt: !1959)
!1962 = !DILocation(line: 936, column: 3, scope: !1952)
!1963 = distinct !DISubprogram(name: "quotearg_mem", scope: !124, file: !124, line: 940, type: !1964, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!9, !19, !118}
!1966 = !{!1967, !1968}
!1967 = !DILocalVariable(name: "arg", arg: 1, scope: !1963, file: !124, line: 940, type: !19)
!1968 = !DILocalVariable(name: "argsize", arg: 2, scope: !1963, file: !124, line: 940, type: !118)
!1969 = !DILocation(line: 940, column: 27, scope: !1963)
!1970 = !DILocation(line: 940, column: 39, scope: !1963)
!1971 = !DILocation(line: 928, column: 21, scope: !1940, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 942, column: 10, scope: !1963)
!1973 = !DILocation(line: 928, column: 36, scope: !1940, inlinedAt: !1972)
!1974 = !DILocation(line: 928, column: 48, scope: !1940, inlinedAt: !1972)
!1975 = !DILocation(line: 930, column: 10, scope: !1940, inlinedAt: !1972)
!1976 = !DILocation(line: 942, column: 3, scope: !1963)
!1977 = distinct !DISubprogram(name: "quotearg_n_style", scope: !124, file: !124, line: 946, type: !1978, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1980)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!9, !42, !82, !19}
!1980 = !{!1981, !1982, !1983, !1984}
!1981 = !DILocalVariable(name: "n", arg: 1, scope: !1977, file: !124, line: 946, type: !42)
!1982 = !DILocalVariable(name: "s", arg: 2, scope: !1977, file: !124, line: 946, type: !82)
!1983 = !DILocalVariable(name: "arg", arg: 3, scope: !1977, file: !124, line: 946, type: !19)
!1984 = !DILocalVariable(name: "o", scope: !1977, file: !124, line: 948, type: !835)
!1985 = !DILocalVariable(name: "o", scope: !1986, file: !124, line: 187, type: !131)
!1986 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !124, file: !124, line: 185, type: !1987, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !1989)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!131, !82}
!1989 = !{!1990, !1985}
!1990 = !DILocalVariable(name: "style", arg: 1, scope: !1986, file: !124, line: 185, type: !82)
!1991 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!1992 = !DILocation(line: 187, column: 26, scope: !1986, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 948, column: 36, scope: !1977)
!1994 = !DILocation(line: 946, column: 23, scope: !1977)
!1995 = !DILocation(line: 946, column: 45, scope: !1977)
!1996 = !DILocation(line: 946, column: 60, scope: !1977)
!1997 = !DILocation(line: 948, column: 3, scope: !1977)
!1998 = !DILocation(line: 948, column: 32, scope: !1977)
!1999 = !DILocation(line: 185, column: 48, scope: !1986, inlinedAt: !1993)
!2000 = !DILocation(line: 187, column: 3, scope: !1986, inlinedAt: !1993)
!2001 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2002 = !DILocation(line: 188, column: 13, scope: !2003, inlinedAt: !1993)
!2003 = distinct !DILexicalBlock(scope: !1986, file: !124, line: 188, column: 7)
!2004 = !DILocation(line: 188, column: 7, scope: !1986, inlinedAt: !1993)
!2005 = !DILocation(line: 189, column: 5, scope: !2003, inlinedAt: !1993)
!2006 = !{!2007}
!2007 = distinct !{!2007, !2008, !"quoting_options_from_style: argument 0"}
!2008 = distinct !{!2008, !"quoting_options_from_style"}
!2009 = !DILocation(line: 191, column: 10, scope: !1986, inlinedAt: !1993)
!2010 = !DILocation(line: 192, column: 1, scope: !1986, inlinedAt: !1993)
!2011 = !DILocation(line: 949, column: 10, scope: !1977)
!2012 = !DILocation(line: 950, column: 1, scope: !1977)
!2013 = !DILocation(line: 949, column: 3, scope: !1977)
!2014 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !124, file: !124, line: 953, type: !2015, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!9, !42, !82, !19, !118}
!2017 = !{!2018, !2019, !2020, !2021, !2022}
!2018 = !DILocalVariable(name: "n", arg: 1, scope: !2014, file: !124, line: 953, type: !42)
!2019 = !DILocalVariable(name: "s", arg: 2, scope: !2014, file: !124, line: 953, type: !82)
!2020 = !DILocalVariable(name: "arg", arg: 3, scope: !2014, file: !124, line: 954, type: !19)
!2021 = !DILocalVariable(name: "argsize", arg: 4, scope: !2014, file: !124, line: 954, type: !118)
!2022 = !DILocalVariable(name: "o", scope: !2014, file: !124, line: 956, type: !835)
!2023 = !DILocation(line: 187, column: 26, scope: !1986, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 956, column: 36, scope: !2014)
!2025 = !DILocation(line: 953, column: 27, scope: !2014)
!2026 = !DILocation(line: 953, column: 49, scope: !2014)
!2027 = !DILocation(line: 954, column: 35, scope: !2014)
!2028 = !DILocation(line: 954, column: 47, scope: !2014)
!2029 = !DILocation(line: 956, column: 3, scope: !2014)
!2030 = !DILocation(line: 956, column: 32, scope: !2014)
!2031 = !DILocation(line: 185, column: 48, scope: !1986, inlinedAt: !2024)
!2032 = !DILocation(line: 187, column: 3, scope: !1986, inlinedAt: !2024)
!2033 = !DILocation(line: 188, column: 13, scope: !2003, inlinedAt: !2024)
!2034 = !DILocation(line: 188, column: 7, scope: !1986, inlinedAt: !2024)
!2035 = !DILocation(line: 189, column: 5, scope: !2003, inlinedAt: !2024)
!2036 = !{!2037}
!2037 = distinct !{!2037, !2038, !"quoting_options_from_style: argument 0"}
!2038 = distinct !{!2038, !"quoting_options_from_style"}
!2039 = !DILocation(line: 191, column: 10, scope: !1986, inlinedAt: !2024)
!2040 = !DILocation(line: 192, column: 1, scope: !1986, inlinedAt: !2024)
!2041 = !DILocation(line: 957, column: 10, scope: !2014)
!2042 = !DILocation(line: 958, column: 1, scope: !2014)
!2043 = !DILocation(line: 957, column: 3, scope: !2014)
!2044 = distinct !DISubprogram(name: "quotearg_style", scope: !124, file: !124, line: 961, type: !2045, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!9, !82, !19}
!2047 = !{!2048, !2049}
!2048 = !DILocalVariable(name: "s", arg: 1, scope: !2044, file: !124, line: 961, type: !82)
!2049 = !DILocalVariable(name: "arg", arg: 2, scope: !2044, file: !124, line: 961, type: !19)
!2050 = !DILocation(line: 187, column: 26, scope: !1986, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 948, column: 36, scope: !1977, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 963, column: 10, scope: !2044)
!2053 = !DILocation(line: 961, column: 36, scope: !2044)
!2054 = !DILocation(line: 961, column: 51, scope: !2044)
!2055 = !DILocation(line: 946, column: 23, scope: !1977, inlinedAt: !2052)
!2056 = !DILocation(line: 946, column: 45, scope: !1977, inlinedAt: !2052)
!2057 = !DILocation(line: 946, column: 60, scope: !1977, inlinedAt: !2052)
!2058 = !DILocation(line: 948, column: 3, scope: !1977, inlinedAt: !2052)
!2059 = !DILocation(line: 948, column: 32, scope: !1977, inlinedAt: !2052)
!2060 = !DILocation(line: 185, column: 48, scope: !1986, inlinedAt: !2051)
!2061 = !DILocation(line: 187, column: 3, scope: !1986, inlinedAt: !2051)
!2062 = !DILocation(line: 188, column: 13, scope: !2003, inlinedAt: !2051)
!2063 = !DILocation(line: 188, column: 7, scope: !1986, inlinedAt: !2051)
!2064 = !DILocation(line: 189, column: 5, scope: !2003, inlinedAt: !2051)
!2065 = !{!2066}
!2066 = distinct !{!2066, !2067, !"quoting_options_from_style: argument 0"}
!2067 = distinct !{!2067, !"quoting_options_from_style"}
!2068 = !DILocation(line: 191, column: 10, scope: !1986, inlinedAt: !2051)
!2069 = !DILocation(line: 192, column: 1, scope: !1986, inlinedAt: !2051)
!2070 = !DILocation(line: 949, column: 10, scope: !1977, inlinedAt: !2052)
!2071 = !DILocation(line: 950, column: 1, scope: !1977, inlinedAt: !2052)
!2072 = !DILocation(line: 963, column: 3, scope: !2044)
!2073 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !124, file: !124, line: 967, type: !2074, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!9, !82, !19, !118}
!2076 = !{!2077, !2078, !2079}
!2077 = !DILocalVariable(name: "s", arg: 1, scope: !2073, file: !124, line: 967, type: !82)
!2078 = !DILocalVariable(name: "arg", arg: 2, scope: !2073, file: !124, line: 967, type: !19)
!2079 = !DILocalVariable(name: "argsize", arg: 3, scope: !2073, file: !124, line: 967, type: !118)
!2080 = !DILocation(line: 187, column: 26, scope: !1986, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 956, column: 36, scope: !2014, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 969, column: 10, scope: !2073)
!2083 = !DILocation(line: 967, column: 40, scope: !2073)
!2084 = !DILocation(line: 967, column: 55, scope: !2073)
!2085 = !DILocation(line: 967, column: 67, scope: !2073)
!2086 = !DILocation(line: 953, column: 27, scope: !2014, inlinedAt: !2082)
!2087 = !DILocation(line: 953, column: 49, scope: !2014, inlinedAt: !2082)
!2088 = !DILocation(line: 954, column: 35, scope: !2014, inlinedAt: !2082)
!2089 = !DILocation(line: 954, column: 47, scope: !2014, inlinedAt: !2082)
!2090 = !DILocation(line: 956, column: 3, scope: !2014, inlinedAt: !2082)
!2091 = !DILocation(line: 956, column: 32, scope: !2014, inlinedAt: !2082)
!2092 = !DILocation(line: 185, column: 48, scope: !1986, inlinedAt: !2081)
!2093 = !DILocation(line: 187, column: 3, scope: !1986, inlinedAt: !2081)
!2094 = !DILocation(line: 188, column: 13, scope: !2003, inlinedAt: !2081)
!2095 = !DILocation(line: 188, column: 7, scope: !1986, inlinedAt: !2081)
!2096 = !DILocation(line: 189, column: 5, scope: !2003, inlinedAt: !2081)
!2097 = !{!2098}
!2098 = distinct !{!2098, !2099, !"quoting_options_from_style: argument 0"}
!2099 = distinct !{!2099, !"quoting_options_from_style"}
!2100 = !DILocation(line: 191, column: 10, scope: !1986, inlinedAt: !2081)
!2101 = !DILocation(line: 192, column: 1, scope: !1986, inlinedAt: !2081)
!2102 = !DILocation(line: 957, column: 10, scope: !2014, inlinedAt: !2082)
!2103 = !DILocation(line: 958, column: 1, scope: !2014, inlinedAt: !2082)
!2104 = !DILocation(line: 969, column: 3, scope: !2073)
!2105 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !124, file: !124, line: 973, type: !2106, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!9, !19, !118, !10}
!2108 = !{!2109, !2110, !2111, !2112}
!2109 = !DILocalVariable(name: "arg", arg: 1, scope: !2105, file: !124, line: 973, type: !19)
!2110 = !DILocalVariable(name: "argsize", arg: 2, scope: !2105, file: !124, line: 973, type: !118)
!2111 = !DILocalVariable(name: "ch", arg: 3, scope: !2105, file: !124, line: 973, type: !10)
!2112 = !DILocalVariable(name: "options", scope: !2105, file: !124, line: 975, type: !131)
!2113 = !DILocation(line: 973, column: 32, scope: !2105)
!2114 = !DILocation(line: 973, column: 44, scope: !2105)
!2115 = !DILocation(line: 973, column: 58, scope: !2105)
!2116 = !DILocation(line: 975, column: 3, scope: !2105)
!2117 = !DILocation(line: 976, column: 13, scope: !2105)
!2118 = !{i64 0, i64 4, !689, i64 4, i64 4, !644, i64 8, i64 32, !689, i64 40, i64 8, !582, i64 48, i64 8, !582}
!2119 = !DILocation(line: 975, column: 26, scope: !2105)
!2120 = !DILocation(line: 144, column: 43, scope: !856, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 977, column: 3, scope: !2105)
!2122 = !DILocation(line: 144, column: 51, scope: !856, inlinedAt: !2121)
!2123 = !DILocation(line: 144, column: 58, scope: !856, inlinedAt: !2121)
!2124 = !DILocation(line: 146, column: 17, scope: !856, inlinedAt: !2121)
!2125 = !DILocation(line: 148, column: 62, scope: !856, inlinedAt: !2121)
!2126 = !DILocation(line: 148, column: 57, scope: !856, inlinedAt: !2121)
!2127 = !DILocation(line: 147, column: 17, scope: !856, inlinedAt: !2121)
!2128 = !DILocation(line: 149, column: 18, scope: !856, inlinedAt: !2121)
!2129 = !DILocation(line: 149, column: 15, scope: !856, inlinedAt: !2121)
!2130 = !DILocation(line: 149, column: 7, scope: !856, inlinedAt: !2121)
!2131 = !DILocation(line: 150, column: 12, scope: !856, inlinedAt: !2121)
!2132 = !DILocation(line: 150, column: 15, scope: !856, inlinedAt: !2121)
!2133 = !DILocation(line: 150, column: 25, scope: !856, inlinedAt: !2121)
!2134 = !DILocation(line: 150, column: 7, scope: !856, inlinedAt: !2121)
!2135 = !DILocation(line: 151, column: 18, scope: !856, inlinedAt: !2121)
!2136 = !DILocation(line: 151, column: 23, scope: !856, inlinedAt: !2121)
!2137 = !DILocation(line: 151, column: 6, scope: !856, inlinedAt: !2121)
!2138 = !DILocation(line: 978, column: 10, scope: !2105)
!2139 = !DILocation(line: 979, column: 1, scope: !2105)
!2140 = !DILocation(line: 978, column: 3, scope: !2105)
!2141 = distinct !DISubprogram(name: "quotearg_char", scope: !124, file: !124, line: 982, type: !2142, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!9, !19, !10}
!2144 = !{!2145, !2146}
!2145 = !DILocalVariable(name: "arg", arg: 1, scope: !2141, file: !124, line: 982, type: !19)
!2146 = !DILocalVariable(name: "ch", arg: 2, scope: !2141, file: !124, line: 982, type: !10)
!2147 = !DILocation(line: 982, column: 28, scope: !2141)
!2148 = !DILocation(line: 982, column: 38, scope: !2141)
!2149 = !DILocation(line: 973, column: 32, scope: !2105, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 984, column: 10, scope: !2141)
!2151 = !DILocation(line: 973, column: 44, scope: !2105, inlinedAt: !2150)
!2152 = !DILocation(line: 973, column: 58, scope: !2105, inlinedAt: !2150)
!2153 = !DILocation(line: 975, column: 3, scope: !2105, inlinedAt: !2150)
!2154 = !DILocation(line: 976, column: 13, scope: !2105, inlinedAt: !2150)
!2155 = !DILocation(line: 975, column: 26, scope: !2105, inlinedAt: !2150)
!2156 = !DILocation(line: 144, column: 43, scope: !856, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 977, column: 3, scope: !2105, inlinedAt: !2150)
!2158 = !DILocation(line: 144, column: 51, scope: !856, inlinedAt: !2157)
!2159 = !DILocation(line: 144, column: 58, scope: !856, inlinedAt: !2157)
!2160 = !DILocation(line: 146, column: 17, scope: !856, inlinedAt: !2157)
!2161 = !DILocation(line: 148, column: 62, scope: !856, inlinedAt: !2157)
!2162 = !DILocation(line: 148, column: 57, scope: !856, inlinedAt: !2157)
!2163 = !DILocation(line: 147, column: 17, scope: !856, inlinedAt: !2157)
!2164 = !DILocation(line: 149, column: 18, scope: !856, inlinedAt: !2157)
!2165 = !DILocation(line: 149, column: 15, scope: !856, inlinedAt: !2157)
!2166 = !DILocation(line: 149, column: 7, scope: !856, inlinedAt: !2157)
!2167 = !DILocation(line: 150, column: 12, scope: !856, inlinedAt: !2157)
!2168 = !DILocation(line: 150, column: 15, scope: !856, inlinedAt: !2157)
!2169 = !DILocation(line: 150, column: 25, scope: !856, inlinedAt: !2157)
!2170 = !DILocation(line: 150, column: 7, scope: !856, inlinedAt: !2157)
!2171 = !DILocation(line: 151, column: 18, scope: !856, inlinedAt: !2157)
!2172 = !DILocation(line: 151, column: 23, scope: !856, inlinedAt: !2157)
!2173 = !DILocation(line: 151, column: 6, scope: !856, inlinedAt: !2157)
!2174 = !DILocation(line: 978, column: 10, scope: !2105, inlinedAt: !2150)
!2175 = !DILocation(line: 979, column: 1, scope: !2105, inlinedAt: !2150)
!2176 = !DILocation(line: 984, column: 3, scope: !2141)
!2177 = distinct !DISubprogram(name: "quotearg_colon", scope: !124, file: !124, line: 988, type: !1953, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2178)
!2178 = !{!2179}
!2179 = !DILocalVariable(name: "arg", arg: 1, scope: !2177, file: !124, line: 988, type: !19)
!2180 = !DILocation(line: 988, column: 29, scope: !2177)
!2181 = !DILocation(line: 982, column: 28, scope: !2141, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 990, column: 10, scope: !2177)
!2183 = !DILocation(line: 982, column: 38, scope: !2141, inlinedAt: !2182)
!2184 = !DILocation(line: 973, column: 32, scope: !2105, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 984, column: 10, scope: !2141, inlinedAt: !2182)
!2186 = !DILocation(line: 973, column: 44, scope: !2105, inlinedAt: !2185)
!2187 = !DILocation(line: 973, column: 58, scope: !2105, inlinedAt: !2185)
!2188 = !DILocation(line: 975, column: 3, scope: !2105, inlinedAt: !2185)
!2189 = !DILocation(line: 976, column: 13, scope: !2105, inlinedAt: !2185)
!2190 = !DILocation(line: 975, column: 26, scope: !2105, inlinedAt: !2185)
!2191 = !DILocation(line: 144, column: 43, scope: !856, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 977, column: 3, scope: !2105, inlinedAt: !2185)
!2193 = !DILocation(line: 144, column: 51, scope: !856, inlinedAt: !2192)
!2194 = !DILocation(line: 144, column: 58, scope: !856, inlinedAt: !2192)
!2195 = !DILocation(line: 146, column: 17, scope: !856, inlinedAt: !2192)
!2196 = !DILocation(line: 148, column: 57, scope: !856, inlinedAt: !2192)
!2197 = !DILocation(line: 147, column: 17, scope: !856, inlinedAt: !2192)
!2198 = !DILocation(line: 149, column: 7, scope: !856, inlinedAt: !2192)
!2199 = !DILocation(line: 150, column: 12, scope: !856, inlinedAt: !2192)
!2200 = !DILocation(line: 151, column: 6, scope: !856, inlinedAt: !2192)
!2201 = !DILocation(line: 978, column: 10, scope: !2105, inlinedAt: !2185)
!2202 = !DILocation(line: 979, column: 1, scope: !2105, inlinedAt: !2185)
!2203 = !DILocation(line: 990, column: 3, scope: !2177)
!2204 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !124, file: !124, line: 994, type: !1964, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2205)
!2205 = !{!2206, !2207}
!2206 = !DILocalVariable(name: "arg", arg: 1, scope: !2204, file: !124, line: 994, type: !19)
!2207 = !DILocalVariable(name: "argsize", arg: 2, scope: !2204, file: !124, line: 994, type: !118)
!2208 = !DILocation(line: 994, column: 33, scope: !2204)
!2209 = !DILocation(line: 994, column: 45, scope: !2204)
!2210 = !DILocation(line: 973, column: 32, scope: !2105, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 996, column: 10, scope: !2204)
!2212 = !DILocation(line: 973, column: 44, scope: !2105, inlinedAt: !2211)
!2213 = !DILocation(line: 973, column: 58, scope: !2105, inlinedAt: !2211)
!2214 = !DILocation(line: 975, column: 3, scope: !2105, inlinedAt: !2211)
!2215 = !DILocation(line: 976, column: 13, scope: !2105, inlinedAt: !2211)
!2216 = !DILocation(line: 975, column: 26, scope: !2105, inlinedAt: !2211)
!2217 = !DILocation(line: 144, column: 43, scope: !856, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 977, column: 3, scope: !2105, inlinedAt: !2211)
!2219 = !DILocation(line: 144, column: 51, scope: !856, inlinedAt: !2218)
!2220 = !DILocation(line: 144, column: 58, scope: !856, inlinedAt: !2218)
!2221 = !DILocation(line: 146, column: 17, scope: !856, inlinedAt: !2218)
!2222 = !DILocation(line: 148, column: 57, scope: !856, inlinedAt: !2218)
!2223 = !DILocation(line: 147, column: 17, scope: !856, inlinedAt: !2218)
!2224 = !DILocation(line: 149, column: 7, scope: !856, inlinedAt: !2218)
!2225 = !DILocation(line: 150, column: 12, scope: !856, inlinedAt: !2218)
!2226 = !DILocation(line: 151, column: 6, scope: !856, inlinedAt: !2218)
!2227 = !DILocation(line: 978, column: 10, scope: !2105, inlinedAt: !2211)
!2228 = !DILocation(line: 979, column: 1, scope: !2105, inlinedAt: !2211)
!2229 = !DILocation(line: 996, column: 3, scope: !2204)
!2230 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !124, file: !124, line: 1000, type: !1978, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2231)
!2231 = !{!2232, !2233, !2234, !2235}
!2232 = !DILocalVariable(name: "n", arg: 1, scope: !2230, file: !124, line: 1000, type: !42)
!2233 = !DILocalVariable(name: "s", arg: 2, scope: !2230, file: !124, line: 1000, type: !82)
!2234 = !DILocalVariable(name: "arg", arg: 3, scope: !2230, file: !124, line: 1000, type: !19)
!2235 = !DILocalVariable(name: "options", scope: !2230, file: !124, line: 1002, type: !131)
!2236 = !DILocation(line: 187, column: 26, scope: !1986, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 1003, column: 13, scope: !2230)
!2238 = !DILocation(line: 1000, column: 29, scope: !2230)
!2239 = !DILocation(line: 1000, column: 51, scope: !2230)
!2240 = !DILocation(line: 1000, column: 66, scope: !2230)
!2241 = !DILocation(line: 1002, column: 3, scope: !2230)
!2242 = !DILocation(line: 185, column: 48, scope: !1986, inlinedAt: !2237)
!2243 = !DILocation(line: 187, column: 3, scope: !1986, inlinedAt: !2237)
!2244 = !DILocation(line: 188, column: 13, scope: !2003, inlinedAt: !2237)
!2245 = !DILocation(line: 188, column: 7, scope: !1986, inlinedAt: !2237)
!2246 = !DILocation(line: 189, column: 5, scope: !2003, inlinedAt: !2237)
!2247 = !{!2248}
!2248 = distinct !{!2248, !2249, !"quoting_options_from_style: argument 0"}
!2249 = distinct !{!2249, !"quoting_options_from_style"}
!2250 = !DILocation(line: 191, column: 10, scope: !1986, inlinedAt: !2237)
!2251 = !DILocation(line: 192, column: 1, scope: !1986, inlinedAt: !2237)
!2252 = !DILocation(line: 1003, column: 13, scope: !2230)
!2253 = !DILocation(line: 1002, column: 26, scope: !2230)
!2254 = !DILocation(line: 144, column: 43, scope: !856, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 1004, column: 3, scope: !2230)
!2256 = !DILocation(line: 144, column: 51, scope: !856, inlinedAt: !2255)
!2257 = !DILocation(line: 144, column: 58, scope: !856, inlinedAt: !2255)
!2258 = !DILocation(line: 146, column: 17, scope: !856, inlinedAt: !2255)
!2259 = !DILocation(line: 148, column: 57, scope: !856, inlinedAt: !2255)
!2260 = !DILocation(line: 147, column: 17, scope: !856, inlinedAt: !2255)
!2261 = !DILocation(line: 149, column: 7, scope: !856, inlinedAt: !2255)
!2262 = !DILocation(line: 150, column: 12, scope: !856, inlinedAt: !2255)
!2263 = !DILocation(line: 151, column: 6, scope: !856, inlinedAt: !2255)
!2264 = !DILocation(line: 1005, column: 10, scope: !2230)
!2265 = !DILocation(line: 1006, column: 1, scope: !2230)
!2266 = !DILocation(line: 1005, column: 3, scope: !2230)
!2267 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !124, file: !124, line: 1009, type: !2268, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!9, !42, !19, !19, !19}
!2270 = !{!2271, !2272, !2273, !2274}
!2271 = !DILocalVariable(name: "n", arg: 1, scope: !2267, file: !124, line: 1009, type: !42)
!2272 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2267, file: !124, line: 1009, type: !19)
!2273 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2267, file: !124, line: 1010, type: !19)
!2274 = !DILocalVariable(name: "arg", arg: 4, scope: !2267, file: !124, line: 1010, type: !19)
!2275 = !DILocation(line: 1009, column: 24, scope: !2267)
!2276 = !DILocation(line: 1009, column: 39, scope: !2267)
!2277 = !DILocation(line: 1010, column: 32, scope: !2267)
!2278 = !DILocation(line: 1010, column: 57, scope: !2267)
!2279 = !DILocalVariable(name: "n", arg: 1, scope: !2280, file: !124, line: 1017, type: !42)
!2280 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !124, file: !124, line: 1017, type: !2281, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!9, !42, !19, !19, !19, !118}
!2283 = !{!2279, !2284, !2285, !2286, !2287, !2288}
!2284 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2280, file: !124, line: 1017, type: !19)
!2285 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2280, file: !124, line: 1018, type: !19)
!2286 = !DILocalVariable(name: "arg", arg: 4, scope: !2280, file: !124, line: 1019, type: !19)
!2287 = !DILocalVariable(name: "argsize", arg: 5, scope: !2280, file: !124, line: 1019, type: !118)
!2288 = !DILocalVariable(name: "o", scope: !2280, file: !124, line: 1021, type: !131)
!2289 = !DILocation(line: 1017, column: 28, scope: !2280, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 1012, column: 10, scope: !2267)
!2291 = !DILocation(line: 1017, column: 43, scope: !2280, inlinedAt: !2290)
!2292 = !DILocation(line: 1018, column: 36, scope: !2280, inlinedAt: !2290)
!2293 = !DILocation(line: 1019, column: 36, scope: !2280, inlinedAt: !2290)
!2294 = !DILocation(line: 1019, column: 48, scope: !2280, inlinedAt: !2290)
!2295 = !DILocation(line: 1021, column: 3, scope: !2280, inlinedAt: !2290)
!2296 = !DILocation(line: 1021, column: 30, scope: !2280, inlinedAt: !2290)
!2297 = !DILocation(line: 1021, column: 26, scope: !2280, inlinedAt: !2290)
!2298 = !DILocation(line: 171, column: 45, scope: !905, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 1022, column: 3, scope: !2280, inlinedAt: !2290)
!2300 = !DILocation(line: 172, column: 33, scope: !905, inlinedAt: !2299)
!2301 = !DILocation(line: 172, column: 57, scope: !905, inlinedAt: !2299)
!2302 = !DILocation(line: 176, column: 6, scope: !905, inlinedAt: !2299)
!2303 = !DILocation(line: 176, column: 12, scope: !905, inlinedAt: !2299)
!2304 = !DILocation(line: 177, column: 8, scope: !921, inlinedAt: !2299)
!2305 = !DILocation(line: 177, column: 23, scope: !921, inlinedAt: !2299)
!2306 = !DILocation(line: 177, column: 19, scope: !921, inlinedAt: !2299)
!2307 = !DILocation(line: 178, column: 5, scope: !921, inlinedAt: !2299)
!2308 = !DILocation(line: 179, column: 6, scope: !905, inlinedAt: !2299)
!2309 = !DILocation(line: 179, column: 17, scope: !905, inlinedAt: !2299)
!2310 = !DILocation(line: 180, column: 6, scope: !905, inlinedAt: !2299)
!2311 = !DILocation(line: 180, column: 18, scope: !905, inlinedAt: !2299)
!2312 = !DILocation(line: 1023, column: 10, scope: !2280, inlinedAt: !2290)
!2313 = !DILocation(line: 1024, column: 1, scope: !2280, inlinedAt: !2290)
!2314 = !DILocation(line: 1012, column: 3, scope: !2267)
!2315 = !DILocation(line: 1017, column: 28, scope: !2280)
!2316 = !DILocation(line: 1017, column: 43, scope: !2280)
!2317 = !DILocation(line: 1018, column: 36, scope: !2280)
!2318 = !DILocation(line: 1019, column: 36, scope: !2280)
!2319 = !DILocation(line: 1019, column: 48, scope: !2280)
!2320 = !DILocation(line: 1021, column: 3, scope: !2280)
!2321 = !DILocation(line: 1021, column: 30, scope: !2280)
!2322 = !DILocation(line: 1021, column: 26, scope: !2280)
!2323 = !DILocation(line: 171, column: 45, scope: !905, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 1022, column: 3, scope: !2280)
!2325 = !DILocation(line: 172, column: 33, scope: !905, inlinedAt: !2324)
!2326 = !DILocation(line: 172, column: 57, scope: !905, inlinedAt: !2324)
!2327 = !DILocation(line: 176, column: 6, scope: !905, inlinedAt: !2324)
!2328 = !DILocation(line: 176, column: 12, scope: !905, inlinedAt: !2324)
!2329 = !DILocation(line: 177, column: 8, scope: !921, inlinedAt: !2324)
!2330 = !DILocation(line: 177, column: 23, scope: !921, inlinedAt: !2324)
!2331 = !DILocation(line: 177, column: 19, scope: !921, inlinedAt: !2324)
!2332 = !DILocation(line: 178, column: 5, scope: !921, inlinedAt: !2324)
!2333 = !DILocation(line: 179, column: 6, scope: !905, inlinedAt: !2324)
!2334 = !DILocation(line: 179, column: 17, scope: !905, inlinedAt: !2324)
!2335 = !DILocation(line: 180, column: 6, scope: !905, inlinedAt: !2324)
!2336 = !DILocation(line: 180, column: 18, scope: !905, inlinedAt: !2324)
!2337 = !DILocation(line: 1023, column: 10, scope: !2280)
!2338 = !DILocation(line: 1024, column: 1, scope: !2280)
!2339 = !DILocation(line: 1023, column: 3, scope: !2280)
!2340 = distinct !DISubprogram(name: "quotearg_custom", scope: !124, file: !124, line: 1027, type: !2341, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2343)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!9, !19, !19, !19}
!2343 = !{!2344, !2345, !2346}
!2344 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2340, file: !124, line: 1027, type: !19)
!2345 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2340, file: !124, line: 1027, type: !19)
!2346 = !DILocalVariable(name: "arg", arg: 3, scope: !2340, file: !124, line: 1028, type: !19)
!2347 = !DILocation(line: 1027, column: 30, scope: !2340)
!2348 = !DILocation(line: 1027, column: 54, scope: !2340)
!2349 = !DILocation(line: 1028, column: 30, scope: !2340)
!2350 = !DILocation(line: 1009, column: 24, scope: !2267, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 1030, column: 10, scope: !2340)
!2352 = !DILocation(line: 1009, column: 39, scope: !2267, inlinedAt: !2351)
!2353 = !DILocation(line: 1010, column: 32, scope: !2267, inlinedAt: !2351)
!2354 = !DILocation(line: 1010, column: 57, scope: !2267, inlinedAt: !2351)
!2355 = !DILocation(line: 1017, column: 28, scope: !2280, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 1012, column: 10, scope: !2267, inlinedAt: !2351)
!2357 = !DILocation(line: 1017, column: 43, scope: !2280, inlinedAt: !2356)
!2358 = !DILocation(line: 1018, column: 36, scope: !2280, inlinedAt: !2356)
!2359 = !DILocation(line: 1019, column: 36, scope: !2280, inlinedAt: !2356)
!2360 = !DILocation(line: 1019, column: 48, scope: !2280, inlinedAt: !2356)
!2361 = !DILocation(line: 1021, column: 3, scope: !2280, inlinedAt: !2356)
!2362 = !DILocation(line: 1021, column: 30, scope: !2280, inlinedAt: !2356)
!2363 = !DILocation(line: 1021, column: 26, scope: !2280, inlinedAt: !2356)
!2364 = !DILocation(line: 171, column: 45, scope: !905, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 1022, column: 3, scope: !2280, inlinedAt: !2356)
!2366 = !DILocation(line: 172, column: 33, scope: !905, inlinedAt: !2365)
!2367 = !DILocation(line: 172, column: 57, scope: !905, inlinedAt: !2365)
!2368 = !DILocation(line: 176, column: 6, scope: !905, inlinedAt: !2365)
!2369 = !DILocation(line: 176, column: 12, scope: !905, inlinedAt: !2365)
!2370 = !DILocation(line: 177, column: 8, scope: !921, inlinedAt: !2365)
!2371 = !DILocation(line: 177, column: 23, scope: !921, inlinedAt: !2365)
!2372 = !DILocation(line: 177, column: 19, scope: !921, inlinedAt: !2365)
!2373 = !DILocation(line: 178, column: 5, scope: !921, inlinedAt: !2365)
!2374 = !DILocation(line: 179, column: 6, scope: !905, inlinedAt: !2365)
!2375 = !DILocation(line: 179, column: 17, scope: !905, inlinedAt: !2365)
!2376 = !DILocation(line: 180, column: 6, scope: !905, inlinedAt: !2365)
!2377 = !DILocation(line: 180, column: 18, scope: !905, inlinedAt: !2365)
!2378 = !DILocation(line: 1023, column: 10, scope: !2280, inlinedAt: !2356)
!2379 = !DILocation(line: 1024, column: 1, scope: !2280, inlinedAt: !2356)
!2380 = !DILocation(line: 1030, column: 3, scope: !2340)
!2381 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !124, file: !124, line: 1034, type: !2382, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!9, !19, !19, !19, !118}
!2384 = !{!2385, !2386, !2387, !2388}
!2385 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2381, file: !124, line: 1034, type: !19)
!2386 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2381, file: !124, line: 1034, type: !19)
!2387 = !DILocalVariable(name: "arg", arg: 3, scope: !2381, file: !124, line: 1035, type: !19)
!2388 = !DILocalVariable(name: "argsize", arg: 4, scope: !2381, file: !124, line: 1035, type: !118)
!2389 = !DILocation(line: 1034, column: 34, scope: !2381)
!2390 = !DILocation(line: 1034, column: 58, scope: !2381)
!2391 = !DILocation(line: 1035, column: 34, scope: !2381)
!2392 = !DILocation(line: 1035, column: 46, scope: !2381)
!2393 = !DILocation(line: 1017, column: 28, scope: !2280, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 1037, column: 10, scope: !2381)
!2395 = !DILocation(line: 1017, column: 43, scope: !2280, inlinedAt: !2394)
!2396 = !DILocation(line: 1018, column: 36, scope: !2280, inlinedAt: !2394)
!2397 = !DILocation(line: 1019, column: 36, scope: !2280, inlinedAt: !2394)
!2398 = !DILocation(line: 1019, column: 48, scope: !2280, inlinedAt: !2394)
!2399 = !DILocation(line: 1021, column: 3, scope: !2280, inlinedAt: !2394)
!2400 = !DILocation(line: 1021, column: 30, scope: !2280, inlinedAt: !2394)
!2401 = !DILocation(line: 1021, column: 26, scope: !2280, inlinedAt: !2394)
!2402 = !DILocation(line: 171, column: 45, scope: !905, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 1022, column: 3, scope: !2280, inlinedAt: !2394)
!2404 = !DILocation(line: 172, column: 33, scope: !905, inlinedAt: !2403)
!2405 = !DILocation(line: 172, column: 57, scope: !905, inlinedAt: !2403)
!2406 = !DILocation(line: 176, column: 6, scope: !905, inlinedAt: !2403)
!2407 = !DILocation(line: 176, column: 12, scope: !905, inlinedAt: !2403)
!2408 = !DILocation(line: 177, column: 8, scope: !921, inlinedAt: !2403)
!2409 = !DILocation(line: 177, column: 23, scope: !921, inlinedAt: !2403)
!2410 = !DILocation(line: 177, column: 19, scope: !921, inlinedAt: !2403)
!2411 = !DILocation(line: 178, column: 5, scope: !921, inlinedAt: !2403)
!2412 = !DILocation(line: 179, column: 6, scope: !905, inlinedAt: !2403)
!2413 = !DILocation(line: 179, column: 17, scope: !905, inlinedAt: !2403)
!2414 = !DILocation(line: 180, column: 6, scope: !905, inlinedAt: !2403)
!2415 = !DILocation(line: 180, column: 18, scope: !905, inlinedAt: !2403)
!2416 = !DILocation(line: 1023, column: 10, scope: !2280, inlinedAt: !2394)
!2417 = !DILocation(line: 1024, column: 1, scope: !2280, inlinedAt: !2394)
!2418 = !DILocation(line: 1037, column: 3, scope: !2381)
!2419 = distinct !DISubprogram(name: "quote_n_mem", scope: !124, file: !124, line: 1052, type: !2420, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2422)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!19, !42, !19, !118}
!2422 = !{!2423, !2424, !2425}
!2423 = !DILocalVariable(name: "n", arg: 1, scope: !2419, file: !124, line: 1052, type: !42)
!2424 = !DILocalVariable(name: "arg", arg: 2, scope: !2419, file: !124, line: 1052, type: !19)
!2425 = !DILocalVariable(name: "argsize", arg: 3, scope: !2419, file: !124, line: 1052, type: !118)
!2426 = !DILocation(line: 1052, column: 18, scope: !2419)
!2427 = !DILocation(line: 1052, column: 33, scope: !2419)
!2428 = !DILocation(line: 1052, column: 45, scope: !2419)
!2429 = !DILocation(line: 1054, column: 10, scope: !2419)
!2430 = !DILocation(line: 1054, column: 3, scope: !2419)
!2431 = distinct !DISubprogram(name: "quote_mem", scope: !124, file: !124, line: 1058, type: !2432, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!19, !19, !118}
!2434 = !{!2435, !2436}
!2435 = !DILocalVariable(name: "arg", arg: 1, scope: !2431, file: !124, line: 1058, type: !19)
!2436 = !DILocalVariable(name: "argsize", arg: 2, scope: !2431, file: !124, line: 1058, type: !118)
!2437 = !DILocation(line: 1058, column: 24, scope: !2431)
!2438 = !DILocation(line: 1058, column: 36, scope: !2431)
!2439 = !DILocation(line: 1052, column: 18, scope: !2419, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 1060, column: 10, scope: !2431)
!2441 = !DILocation(line: 1052, column: 33, scope: !2419, inlinedAt: !2440)
!2442 = !DILocation(line: 1052, column: 45, scope: !2419, inlinedAt: !2440)
!2443 = !DILocation(line: 1054, column: 10, scope: !2419, inlinedAt: !2440)
!2444 = !DILocation(line: 1060, column: 3, scope: !2431)
!2445 = distinct !DISubprogram(name: "quote_n", scope: !124, file: !124, line: 1064, type: !2446, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!19, !42, !19}
!2448 = !{!2449, !2450}
!2449 = !DILocalVariable(name: "n", arg: 1, scope: !2445, file: !124, line: 1064, type: !42)
!2450 = !DILocalVariable(name: "arg", arg: 2, scope: !2445, file: !124, line: 1064, type: !19)
!2451 = !DILocation(line: 1064, column: 14, scope: !2445)
!2452 = !DILocation(line: 1064, column: 29, scope: !2445)
!2453 = !DILocation(line: 1052, column: 18, scope: !2419, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 1066, column: 10, scope: !2445)
!2455 = !DILocation(line: 1052, column: 33, scope: !2419, inlinedAt: !2454)
!2456 = !DILocation(line: 1052, column: 45, scope: !2419, inlinedAt: !2454)
!2457 = !DILocation(line: 1054, column: 10, scope: !2419, inlinedAt: !2454)
!2458 = !DILocation(line: 1066, column: 3, scope: !2445)
!2459 = distinct !DISubprogram(name: "quote", scope: !124, file: !124, line: 1070, type: !2460, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !79, variables: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!19, !19}
!2462 = !{!2463}
!2463 = !DILocalVariable(name: "arg", arg: 1, scope: !2459, file: !124, line: 1070, type: !19)
!2464 = !DILocation(line: 1070, column: 20, scope: !2459)
!2465 = !DILocation(line: 1064, column: 14, scope: !2445, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 1072, column: 10, scope: !2459)
!2467 = !DILocation(line: 1064, column: 29, scope: !2445, inlinedAt: !2466)
!2468 = !DILocation(line: 1052, column: 18, scope: !2419, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 1066, column: 10, scope: !2445, inlinedAt: !2466)
!2470 = !DILocation(line: 1052, column: 33, scope: !2419, inlinedAt: !2469)
!2471 = !DILocation(line: 1052, column: 45, scope: !2419, inlinedAt: !2469)
!2472 = !DILocation(line: 1054, column: 10, scope: !2419, inlinedAt: !2469)
!2473 = !DILocation(line: 1072, column: 3, scope: !2459)
!2474 = distinct !DISubprogram(name: "version_etc_arn", scope: !526, file: !526, line: 62, type: !2475, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2533)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !2477, !19, !19, !19, !2532, !118}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2479, line: 7, baseType: !2480)
!2479 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2481, line: 241, size: 1728, elements: !2482)
!2481 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2503, !2504, !2505, !2506, !2510, !2511, !2513, !2517, !2520, !2522, !2523, !2524, !2525, !2526, !2527, !2528}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2480, file: !2481, line: 242, baseType: !42, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2480, file: !2481, line: 247, baseType: !9, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2480, file: !2481, line: 248, baseType: !9, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2480, file: !2481, line: 249, baseType: !9, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2480, file: !2481, line: 250, baseType: !9, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2480, file: !2481, line: 251, baseType: !9, size: 64, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2480, file: !2481, line: 252, baseType: !9, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2480, file: !2481, line: 253, baseType: !9, size: 64, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2480, file: !2481, line: 254, baseType: !9, size: 64, offset: 512)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2480, file: !2481, line: 256, baseType: !9, size: 64, offset: 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2480, file: !2481, line: 257, baseType: !9, size: 64, offset: 640)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2480, file: !2481, line: 258, baseType: !9, size: 64, offset: 704)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2480, file: !2481, line: 260, baseType: !2496, size: 64, offset: 768)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2481, line: 156, size: 192, elements: !2498)
!2498 = !{!2499, !2500, !2502}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2497, file: !2481, line: 157, baseType: !2496, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2497, file: !2481, line: 158, baseType: !2501, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2497, file: !2481, line: 162, baseType: !42, size: 32, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2480, file: !2481, line: 262, baseType: !2501, size: 64, offset: 832)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2480, file: !2481, line: 264, baseType: !42, size: 32, offset: 896)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2480, file: !2481, line: 268, baseType: !42, size: 32, offset: 928)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2480, file: !2481, line: 270, baseType: !2507, size: 64, offset: 960)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2508, line: 140, baseType: !2509)
!2508 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2509 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2480, file: !2481, line: 274, baseType: !117, size: 16, offset: 1024)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2480, file: !2481, line: 275, baseType: !2512, size: 8, offset: 1040)
!2512 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2480, file: !2481, line: 276, baseType: !2514, size: 8, offset: 1048)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !2515)
!2515 = !{!2516}
!2516 = !DISubrange(count: 1)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2480, file: !2481, line: 280, baseType: !2518, size: 64, offset: 1088)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2481, line: 150, baseType: null)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2480, file: !2481, line: 289, baseType: !2521, size: 64, offset: 1152)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2508, line: 141, baseType: !2509)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2480, file: !2481, line: 297, baseType: !11, size: 64, offset: 1216)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2480, file: !2481, line: 298, baseType: !11, size: 64, offset: 1280)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2480, file: !2481, line: 299, baseType: !11, size: 64, offset: 1344)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2480, file: !2481, line: 300, baseType: !11, size: 64, offset: 1408)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2480, file: !2481, line: 302, baseType: !118, size: 64, offset: 1472)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2480, file: !2481, line: 303, baseType: !42, size: 32, offset: 1536)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2480, file: !2481, line: 305, baseType: !2529, size: 160, offset: 1568)
!2529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !2530)
!2530 = !{!2531}
!2531 = !DISubrange(count: 20)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!2533 = !{!2534, !2535, !2536, !2537, !2538, !2539}
!2534 = !DILocalVariable(name: "stream", arg: 1, scope: !2474, file: !526, line: 62, type: !2477)
!2535 = !DILocalVariable(name: "command_name", arg: 2, scope: !2474, file: !526, line: 63, type: !19)
!2536 = !DILocalVariable(name: "package", arg: 3, scope: !2474, file: !526, line: 63, type: !19)
!2537 = !DILocalVariable(name: "version", arg: 4, scope: !2474, file: !526, line: 64, type: !19)
!2538 = !DILocalVariable(name: "authors", arg: 5, scope: !2474, file: !526, line: 65, type: !2532)
!2539 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2474, file: !526, line: 65, type: !118)
!2540 = !DILocation(line: 62, column: 24, scope: !2474)
!2541 = !DILocation(line: 63, column: 30, scope: !2474)
!2542 = !DILocation(line: 63, column: 56, scope: !2474)
!2543 = !DILocation(line: 64, column: 30, scope: !2474)
!2544 = !DILocation(line: 65, column: 39, scope: !2474)
!2545 = !DILocation(line: 65, column: 55, scope: !2474)
!2546 = !DILocation(line: 67, column: 7, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2474, file: !526, line: 67, column: 7)
!2548 = !DILocation(line: 67, column: 7, scope: !2474)
!2549 = !DILocation(line: 68, column: 5, scope: !2547)
!2550 = !DILocation(line: 70, column: 5, scope: !2547)
!2551 = !DILocation(line: 84, column: 3, scope: !2474)
!2552 = !DILocation(line: 86, column: 3, scope: !2474)
!2553 = !DILocation(line: 95, column: 3, scope: !2474)
!2554 = !DILocation(line: 99, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2474, file: !526, line: 96, column: 5)
!2556 = !DILocation(line: 102, column: 7, scope: !2555)
!2557 = !DILocation(line: 103, column: 7, scope: !2555)
!2558 = !DILocation(line: 106, column: 7, scope: !2555)
!2559 = !DILocation(line: 107, column: 7, scope: !2555)
!2560 = !DILocation(line: 110, column: 7, scope: !2555)
!2561 = !DILocation(line: 112, column: 7, scope: !2555)
!2562 = !DILocation(line: 117, column: 7, scope: !2555)
!2563 = !DILocation(line: 119, column: 7, scope: !2555)
!2564 = !DILocation(line: 124, column: 7, scope: !2555)
!2565 = !DILocation(line: 126, column: 7, scope: !2555)
!2566 = !DILocation(line: 131, column: 7, scope: !2555)
!2567 = !DILocation(line: 134, column: 7, scope: !2555)
!2568 = !DILocation(line: 139, column: 7, scope: !2555)
!2569 = !DILocation(line: 142, column: 7, scope: !2555)
!2570 = !DILocation(line: 147, column: 7, scope: !2555)
!2571 = !DILocation(line: 151, column: 7, scope: !2555)
!2572 = !DILocation(line: 156, column: 7, scope: !2555)
!2573 = !DILocation(line: 160, column: 7, scope: !2555)
!2574 = !DILocation(line: 167, column: 7, scope: !2555)
!2575 = !DILocation(line: 171, column: 7, scope: !2555)
!2576 = !DILocation(line: 173, column: 1, scope: !2474)
!2577 = distinct !DISubprogram(name: "version_etc_ar", scope: !526, file: !526, line: 180, type: !2578, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{null, !2477, !19, !19, !19, !2532}
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586}
!2581 = !DILocalVariable(name: "stream", arg: 1, scope: !2577, file: !526, line: 180, type: !2477)
!2582 = !DILocalVariable(name: "command_name", arg: 2, scope: !2577, file: !526, line: 181, type: !19)
!2583 = !DILocalVariable(name: "package", arg: 3, scope: !2577, file: !526, line: 181, type: !19)
!2584 = !DILocalVariable(name: "version", arg: 4, scope: !2577, file: !526, line: 182, type: !19)
!2585 = !DILocalVariable(name: "authors", arg: 5, scope: !2577, file: !526, line: 182, type: !2532)
!2586 = !DILocalVariable(name: "n_authors", scope: !2577, file: !526, line: 184, type: !118)
!2587 = !DILocation(line: 180, column: 23, scope: !2577)
!2588 = !DILocation(line: 181, column: 29, scope: !2577)
!2589 = !DILocation(line: 181, column: 55, scope: !2577)
!2590 = !DILocation(line: 182, column: 29, scope: !2577)
!2591 = !DILocation(line: 182, column: 59, scope: !2577)
!2592 = !DILocation(line: 184, column: 10, scope: !2577)
!2593 = !DILocation(line: 186, column: 8, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2577, file: !526, line: 186, column: 3)
!2595 = !DILocation(line: 186, column: 23, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2594, file: !526, line: 186, column: 3)
!2597 = !DILocation(line: 186, column: 3, scope: !2594)
!2598 = !DILocation(line: 186, column: 52, scope: !2596)
!2599 = distinct !{!2599, !2597, !2600}
!2600 = !DILocation(line: 187, column: 5, scope: !2594)
!2601 = !DILocation(line: 188, column: 3, scope: !2577)
!2602 = !DILocation(line: 189, column: 1, scope: !2577)
!2603 = distinct !DISubprogram(name: "version_etc_va", scope: !526, file: !526, line: 196, type: !2604, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2613)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{null, !2477, !19, !19, !19, !2606}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !523, line: 189, size: 192, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2607, file: !523, line: 189, baseType: !137, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2607, file: !523, line: 189, baseType: !137, size: 32, offset: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2607, file: !523, line: 189, baseType: !11, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2607, file: !523, line: 189, baseType: !11, size: 64, offset: 128)
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620}
!2614 = !DILocalVariable(name: "stream", arg: 1, scope: !2603, file: !526, line: 196, type: !2477)
!2615 = !DILocalVariable(name: "command_name", arg: 2, scope: !2603, file: !526, line: 197, type: !19)
!2616 = !DILocalVariable(name: "package", arg: 3, scope: !2603, file: !526, line: 197, type: !19)
!2617 = !DILocalVariable(name: "version", arg: 4, scope: !2603, file: !526, line: 198, type: !19)
!2618 = !DILocalVariable(name: "authors", arg: 5, scope: !2603, file: !526, line: 198, type: !2606)
!2619 = !DILocalVariable(name: "n_authors", scope: !2603, file: !526, line: 200, type: !118)
!2620 = !DILocalVariable(name: "authtab", scope: !2603, file: !526, line: 201, type: !2621)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 640, elements: !127)
!2622 = !DILocation(line: 196, column: 23, scope: !2603)
!2623 = !DILocation(line: 197, column: 29, scope: !2603)
!2624 = !DILocation(line: 197, column: 55, scope: !2603)
!2625 = !DILocation(line: 198, column: 29, scope: !2603)
!2626 = !DILocation(line: 198, column: 46, scope: !2603)
!2627 = !DILocation(line: 201, column: 3, scope: !2603)
!2628 = !DILocation(line: 201, column: 15, scope: !2603)
!2629 = !DILocation(line: 200, column: 10, scope: !2603)
!2630 = !DILocation(line: 205, column: 35, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !526, line: 203, column: 3)
!2632 = distinct !DILexicalBlock(scope: !2603, file: !526, line: 203, column: 3)
!2633 = !DILocation(line: 205, column: 14, scope: !2631)
!2634 = !DILocation(line: 205, column: 33, scope: !2631)
!2635 = !DILocation(line: 205, column: 67, scope: !2631)
!2636 = !DILocation(line: 203, column: 3, scope: !2632)
!2637 = !DILocation(line: 208, column: 3, scope: !2603)
!2638 = !DILocation(line: 210, column: 1, scope: !2603)
!2639 = distinct !DISubprogram(name: "version_etc", scope: !526, file: !526, line: 227, type: !2640, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !2477, !19, !19, !19, null}
!2642 = !{!2643, !2644, !2645, !2646, !2647}
!2643 = !DILocalVariable(name: "stream", arg: 1, scope: !2639, file: !526, line: 227, type: !2477)
!2644 = !DILocalVariable(name: "command_name", arg: 2, scope: !2639, file: !526, line: 228, type: !19)
!2645 = !DILocalVariable(name: "package", arg: 3, scope: !2639, file: !526, line: 228, type: !19)
!2646 = !DILocalVariable(name: "version", arg: 4, scope: !2639, file: !526, line: 229, type: !19)
!2647 = !DILocalVariable(name: "authors", scope: !2639, file: !526, line: 231, type: !2648)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2649, line: 46, baseType: !2650)
!2649 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2651, line: 48, baseType: !2652)
!2651 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !523, line: 231, baseType: !2653)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2607, size: 192, elements: !2515)
!2654 = !DILocation(line: 227, column: 20, scope: !2639)
!2655 = !DILocation(line: 228, column: 26, scope: !2639)
!2656 = !DILocation(line: 228, column: 52, scope: !2639)
!2657 = !DILocation(line: 229, column: 26, scope: !2639)
!2658 = !DILocation(line: 231, column: 3, scope: !2639)
!2659 = !DILocation(line: 231, column: 11, scope: !2639)
!2660 = !DILocation(line: 233, column: 3, scope: !2639)
!2661 = !DILocation(line: 234, column: 3, scope: !2639)
!2662 = !DILocation(line: 235, column: 3, scope: !2639)
!2663 = !DILocation(line: 236, column: 1, scope: !2639)
!2664 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !526, file: !526, line: 239, type: !741, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !522, variables: !52)
!2665 = !DILocation(line: 245, column: 3, scope: !2664)
!2666 = !DILocation(line: 251, column: 3, scope: !2664)
!2667 = !DILocation(line: 256, column: 3, scope: !2664)
!2668 = !DILocation(line: 258, column: 1, scope: !2664)
!2669 = distinct !DISubprogram(name: "xnmalloc", scope: !534, file: !534, line: 105, type: !2670, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!11, !118, !118}
!2672 = !{!2673, !2674}
!2673 = !DILocalVariable(name: "n", arg: 1, scope: !2669, file: !534, line: 105, type: !118)
!2674 = !DILocalVariable(name: "s", arg: 2, scope: !2669, file: !534, line: 105, type: !118)
!2675 = !DILocation(line: 105, column: 18, scope: !2669)
!2676 = !DILocation(line: 105, column: 28, scope: !2669)
!2677 = !DILocation(line: 107, column: 7, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2669, file: !534, line: 107, column: 7)
!2679 = !DILocation(line: 107, column: 7, scope: !2669)
!2680 = !DILocation(line: 108, column: 5, scope: !2678)
!2681 = !DILocation(line: 109, column: 21, scope: !2669)
!2682 = !DILocalVariable(name: "n", arg: 1, scope: !2683, file: !2684, line: 39, type: !118)
!2683 = distinct !DISubprogram(name: "xmalloc", scope: !2684, file: !2684, line: 39, type: !2685, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2687)
!2684 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!11, !118}
!2687 = !{!2682, !2688}
!2688 = !DILocalVariable(name: "p", scope: !2683, file: !2684, line: 41, type: !11)
!2689 = !DILocation(line: 39, column: 17, scope: !2683, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 109, column: 10, scope: !2669)
!2691 = !DILocation(line: 41, column: 13, scope: !2683, inlinedAt: !2690)
!2692 = !DILocation(line: 41, column: 9, scope: !2683, inlinedAt: !2690)
!2693 = !DILocation(line: 42, column: 8, scope: !2694, inlinedAt: !2690)
!2694 = distinct !DILexicalBlock(scope: !2683, file: !2684, line: 42, column: 7)
!2695 = !DILocation(line: 42, column: 15, scope: !2694, inlinedAt: !2690)
!2696 = !DILocation(line: 42, column: 10, scope: !2694, inlinedAt: !2690)
!2697 = !DILocation(line: 43, column: 5, scope: !2694, inlinedAt: !2690)
!2698 = !DILocation(line: 109, column: 3, scope: !2669)
!2699 = !DILocation(line: 39, column: 17, scope: !2683)
!2700 = !DILocation(line: 41, column: 13, scope: !2683)
!2701 = !DILocation(line: 41, column: 9, scope: !2683)
!2702 = !DILocation(line: 42, column: 8, scope: !2694)
!2703 = !DILocation(line: 42, column: 15, scope: !2694)
!2704 = !DILocation(line: 42, column: 10, scope: !2694)
!2705 = !DILocation(line: 43, column: 5, scope: !2694)
!2706 = !DILocation(line: 44, column: 3, scope: !2683)
!2707 = distinct !DISubprogram(name: "xnrealloc", scope: !534, file: !534, line: 118, type: !2708, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!11, !11, !118, !118}
!2710 = !{!2711, !2712, !2713}
!2711 = !DILocalVariable(name: "p", arg: 1, scope: !2707, file: !534, line: 118, type: !11)
!2712 = !DILocalVariable(name: "n", arg: 2, scope: !2707, file: !534, line: 118, type: !118)
!2713 = !DILocalVariable(name: "s", arg: 3, scope: !2707, file: !534, line: 118, type: !118)
!2714 = !DILocation(line: 118, column: 18, scope: !2707)
!2715 = !DILocation(line: 118, column: 28, scope: !2707)
!2716 = !DILocation(line: 118, column: 38, scope: !2707)
!2717 = !DILocation(line: 120, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2707, file: !534, line: 120, column: 7)
!2719 = !DILocation(line: 120, column: 7, scope: !2707)
!2720 = !DILocation(line: 121, column: 5, scope: !2718)
!2721 = !DILocation(line: 122, column: 25, scope: !2707)
!2722 = !DILocalVariable(name: "p", arg: 1, scope: !2723, file: !2684, line: 51, type: !11)
!2723 = distinct !DISubprogram(name: "xrealloc", scope: !2684, file: !2684, line: 51, type: !2724, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!11, !11, !118}
!2726 = !{!2722, !2727}
!2727 = !DILocalVariable(name: "n", arg: 2, scope: !2723, file: !2684, line: 51, type: !118)
!2728 = !DILocation(line: 51, column: 17, scope: !2723, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 122, column: 10, scope: !2707)
!2730 = !DILocation(line: 51, column: 27, scope: !2723, inlinedAt: !2729)
!2731 = !DILocation(line: 53, column: 8, scope: !2732, inlinedAt: !2729)
!2732 = distinct !DILexicalBlock(scope: !2723, file: !2684, line: 53, column: 7)
!2733 = !DILocation(line: 53, column: 13, scope: !2732, inlinedAt: !2729)
!2734 = !DILocation(line: 53, column: 10, scope: !2732, inlinedAt: !2729)
!2735 = !DILocation(line: 57, column: 7, scope: !2736, inlinedAt: !2729)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !2684, line: 54, column: 5)
!2737 = !DILocation(line: 58, column: 7, scope: !2736, inlinedAt: !2729)
!2738 = !DILocation(line: 61, column: 7, scope: !2723, inlinedAt: !2729)
!2739 = !DILocation(line: 62, column: 8, scope: !2740, inlinedAt: !2729)
!2740 = distinct !DILexicalBlock(scope: !2723, file: !2684, line: 62, column: 7)
!2741 = !DILocation(line: 62, column: 13, scope: !2740, inlinedAt: !2729)
!2742 = !DILocation(line: 62, column: 10, scope: !2740, inlinedAt: !2729)
!2743 = !DILocation(line: 63, column: 5, scope: !2740, inlinedAt: !2729)
!2744 = !DILocation(line: 122, column: 3, scope: !2707)
!2745 = !DILocation(line: 51, column: 17, scope: !2723)
!2746 = !DILocation(line: 51, column: 27, scope: !2723)
!2747 = !DILocation(line: 53, column: 8, scope: !2732)
!2748 = !DILocation(line: 53, column: 13, scope: !2732)
!2749 = !DILocation(line: 53, column: 10, scope: !2732)
!2750 = !DILocation(line: 57, column: 7, scope: !2736)
!2751 = !DILocation(line: 58, column: 7, scope: !2736)
!2752 = !DILocation(line: 61, column: 7, scope: !2723)
!2753 = !DILocation(line: 62, column: 8, scope: !2740)
!2754 = !DILocation(line: 62, column: 13, scope: !2740)
!2755 = !DILocation(line: 62, column: 10, scope: !2740)
!2756 = !DILocation(line: 63, column: 5, scope: !2740)
!2757 = !DILocation(line: 65, column: 1, scope: !2723)
!2758 = !DILocation(line: 180, column: 19, scope: !535)
!2759 = !DILocation(line: 180, column: 30, scope: !535)
!2760 = !DILocation(line: 180, column: 41, scope: !535)
!2761 = !DILocation(line: 182, column: 14, scope: !535)
!2762 = !DILocation(line: 182, column: 10, scope: !535)
!2763 = !DILocation(line: 184, column: 9, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !535, file: !534, line: 184, column: 7)
!2765 = !DILocation(line: 184, column: 7, scope: !535)
!2766 = !DILocation(line: 186, column: 13, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !534, line: 186, column: 11)
!2768 = distinct !DILexicalBlock(scope: !2764, file: !534, line: 185, column: 5)
!2769 = !DILocation(line: 186, column: 11, scope: !2768)
!2770 = !DILocation(line: 194, column: 30, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2767, file: !534, line: 187, column: 9)
!2772 = !DILocation(line: 195, column: 16, scope: !2771)
!2773 = !DILocation(line: 195, column: 13, scope: !2771)
!2774 = !DILocation(line: 196, column: 9, scope: !2771)
!2775 = !DILocation(line: 204, column: 69, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !534, line: 204, column: 11)
!2777 = distinct !DILexicalBlock(scope: !2764, file: !534, line: 199, column: 5)
!2778 = !DILocation(line: 205, column: 11, scope: !2776)
!2779 = !DILocation(line: 204, column: 11, scope: !2777)
!2780 = !DILocation(line: 206, column: 9, scope: !2776)
!2781 = !DILocation(line: 210, column: 7, scope: !535)
!2782 = !DILocation(line: 211, column: 25, scope: !535)
!2783 = !DILocation(line: 51, column: 17, scope: !2723, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 211, column: 10, scope: !535)
!2785 = !DILocation(line: 51, column: 27, scope: !2723, inlinedAt: !2784)
!2786 = !DILocation(line: 53, column: 10, scope: !2732, inlinedAt: !2784)
!2787 = !DILocation(line: 207, column: 14, scope: !2777)
!2788 = !DILocation(line: 207, column: 18, scope: !2777)
!2789 = !DILocation(line: 207, column: 9, scope: !2777)
!2790 = !DILocation(line: 53, column: 8, scope: !2732, inlinedAt: !2784)
!2791 = !DILocation(line: 57, column: 7, scope: !2736, inlinedAt: !2784)
!2792 = !DILocation(line: 58, column: 7, scope: !2736, inlinedAt: !2784)
!2793 = !DILocation(line: 61, column: 7, scope: !2723, inlinedAt: !2784)
!2794 = !DILocation(line: 62, column: 8, scope: !2740, inlinedAt: !2784)
!2795 = !DILocation(line: 62, column: 13, scope: !2740, inlinedAt: !2784)
!2796 = !DILocation(line: 62, column: 10, scope: !2740, inlinedAt: !2784)
!2797 = !DILocation(line: 63, column: 5, scope: !2740, inlinedAt: !2784)
!2798 = !DILocation(line: 211, column: 3, scope: !535)
!2799 = distinct !DISubprogram(name: "xcharalloc", scope: !534, file: !534, line: 220, type: !1751, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2800)
!2800 = !{!2801}
!2801 = !DILocalVariable(name: "n", arg: 1, scope: !2799, file: !534, line: 220, type: !118)
!2802 = !DILocation(line: 220, column: 20, scope: !2799)
!2803 = !DILocation(line: 39, column: 17, scope: !2683, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 222, column: 10, scope: !2799)
!2805 = !DILocation(line: 41, column: 13, scope: !2683, inlinedAt: !2804)
!2806 = !DILocation(line: 41, column: 9, scope: !2683, inlinedAt: !2804)
!2807 = !DILocation(line: 42, column: 8, scope: !2694, inlinedAt: !2804)
!2808 = !DILocation(line: 42, column: 15, scope: !2694, inlinedAt: !2804)
!2809 = !DILocation(line: 42, column: 10, scope: !2694, inlinedAt: !2804)
!2810 = !DILocation(line: 43, column: 5, scope: !2694, inlinedAt: !2804)
!2811 = !DILocation(line: 222, column: 3, scope: !2799)
!2812 = distinct !DISubprogram(name: "x2realloc", scope: !2684, file: !2684, line: 74, type: !2813, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!11, !11, !538}
!2815 = !{!2816, !2817}
!2816 = !DILocalVariable(name: "p", arg: 1, scope: !2812, file: !2684, line: 74, type: !11)
!2817 = !DILocalVariable(name: "pn", arg: 2, scope: !2812, file: !2684, line: 74, type: !538)
!2818 = !DILocation(line: 74, column: 18, scope: !2812)
!2819 = !DILocation(line: 74, column: 29, scope: !2812)
!2820 = !DILocation(line: 180, column: 19, scope: !535, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 76, column: 10, scope: !2812)
!2822 = !DILocation(line: 180, column: 30, scope: !535, inlinedAt: !2821)
!2823 = !DILocation(line: 180, column: 41, scope: !535, inlinedAt: !2821)
!2824 = !DILocation(line: 182, column: 14, scope: !535, inlinedAt: !2821)
!2825 = !DILocation(line: 182, column: 10, scope: !535, inlinedAt: !2821)
!2826 = !DILocation(line: 184, column: 9, scope: !2764, inlinedAt: !2821)
!2827 = !DILocation(line: 184, column: 7, scope: !535, inlinedAt: !2821)
!2828 = !DILocation(line: 186, column: 13, scope: !2767, inlinedAt: !2821)
!2829 = !DILocation(line: 186, column: 11, scope: !2768, inlinedAt: !2821)
!2830 = !DILocation(line: 210, column: 7, scope: !535, inlinedAt: !2821)
!2831 = !DILocation(line: 51, column: 17, scope: !2723, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 211, column: 10, scope: !535, inlinedAt: !2821)
!2833 = !DILocation(line: 51, column: 27, scope: !2723, inlinedAt: !2832)
!2834 = !DILocation(line: 53, column: 10, scope: !2732, inlinedAt: !2832)
!2835 = !DILocation(line: 205, column: 11, scope: !2776, inlinedAt: !2821)
!2836 = !DILocation(line: 204, column: 11, scope: !2777, inlinedAt: !2821)
!2837 = !DILocation(line: 206, column: 9, scope: !2776, inlinedAt: !2821)
!2838 = !DILocation(line: 207, column: 14, scope: !2777, inlinedAt: !2821)
!2839 = !DILocation(line: 207, column: 18, scope: !2777, inlinedAt: !2821)
!2840 = !DILocation(line: 207, column: 9, scope: !2777, inlinedAt: !2821)
!2841 = !DILocation(line: 53, column: 8, scope: !2732, inlinedAt: !2832)
!2842 = !DILocation(line: 57, column: 7, scope: !2736, inlinedAt: !2832)
!2843 = !DILocation(line: 58, column: 7, scope: !2736, inlinedAt: !2832)
!2844 = !DILocation(line: 61, column: 7, scope: !2723, inlinedAt: !2832)
!2845 = !DILocation(line: 62, column: 8, scope: !2740, inlinedAt: !2832)
!2846 = !DILocation(line: 62, column: 13, scope: !2740, inlinedAt: !2832)
!2847 = !DILocation(line: 62, column: 10, scope: !2740, inlinedAt: !2832)
!2848 = !DILocation(line: 63, column: 5, scope: !2740, inlinedAt: !2832)
!2849 = !DILocation(line: 76, column: 3, scope: !2812)
!2850 = distinct !DISubprogram(name: "xzalloc", scope: !2684, file: !2684, line: 84, type: !2685, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2851)
!2851 = !{!2852}
!2852 = !DILocalVariable(name: "s", arg: 1, scope: !2850, file: !2684, line: 84, type: !118)
!2853 = !DILocation(line: 84, column: 17, scope: !2850)
!2854 = !DILocation(line: 39, column: 17, scope: !2683, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 86, column: 18, scope: !2850)
!2856 = !DILocation(line: 41, column: 13, scope: !2683, inlinedAt: !2855)
!2857 = !DILocation(line: 41, column: 9, scope: !2683, inlinedAt: !2855)
!2858 = !DILocation(line: 42, column: 8, scope: !2694, inlinedAt: !2855)
!2859 = !DILocation(line: 42, column: 15, scope: !2694, inlinedAt: !2855)
!2860 = !DILocation(line: 42, column: 10, scope: !2694, inlinedAt: !2855)
!2861 = !DILocation(line: 43, column: 5, scope: !2694, inlinedAt: !2855)
!2862 = !DILocation(line: 86, column: 10, scope: !2850)
!2863 = !DILocation(line: 86, column: 3, scope: !2850)
!2864 = distinct !DISubprogram(name: "xcalloc", scope: !2684, file: !2684, line: 93, type: !2670, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2865)
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "n", arg: 1, scope: !2864, file: !2684, line: 93, type: !118)
!2867 = !DILocalVariable(name: "s", arg: 2, scope: !2864, file: !2684, line: 93, type: !118)
!2868 = !DILocalVariable(name: "p", scope: !2864, file: !2684, line: 95, type: !11)
!2869 = !DILocation(line: 93, column: 17, scope: !2864)
!2870 = !DILocation(line: 93, column: 27, scope: !2864)
!2871 = !DILocation(line: 100, column: 7, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2864, file: !2684, line: 100, column: 7)
!2873 = !DILocation(line: 101, column: 7, scope: !2872)
!2874 = !DILocation(line: 101, column: 18, scope: !2872)
!2875 = !DILocation(line: 95, column: 9, scope: !2864)
!2876 = !DILocation(line: 101, column: 16, scope: !2872)
!2877 = !DILocation(line: 100, column: 7, scope: !2864)
!2878 = !DILocation(line: 102, column: 5, scope: !2872)
!2879 = !DILocation(line: 103, column: 3, scope: !2864)
!2880 = distinct !DISubprogram(name: "xmemdup", scope: !2684, file: !2684, line: 111, type: !2881, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2885)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!11, !2883, !118}
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2885 = !{!2886, !2887}
!2886 = !DILocalVariable(name: "p", arg: 1, scope: !2880, file: !2684, line: 111, type: !2883)
!2887 = !DILocalVariable(name: "s", arg: 2, scope: !2880, file: !2684, line: 111, type: !118)
!2888 = !DILocation(line: 111, column: 22, scope: !2880)
!2889 = !DILocation(line: 111, column: 32, scope: !2880)
!2890 = !DILocation(line: 39, column: 17, scope: !2683, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 113, column: 18, scope: !2880)
!2892 = !DILocation(line: 41, column: 13, scope: !2683, inlinedAt: !2891)
!2893 = !DILocation(line: 41, column: 9, scope: !2683, inlinedAt: !2891)
!2894 = !DILocation(line: 42, column: 8, scope: !2694, inlinedAt: !2891)
!2895 = !DILocation(line: 42, column: 15, scope: !2694, inlinedAt: !2891)
!2896 = !DILocation(line: 42, column: 10, scope: !2694, inlinedAt: !2891)
!2897 = !DILocation(line: 43, column: 5, scope: !2694, inlinedAt: !2891)
!2898 = !DILocation(line: 113, column: 10, scope: !2880)
!2899 = !DILocation(line: 113, column: 3, scope: !2880)
!2900 = distinct !DISubprogram(name: "xstrdup", scope: !2684, file: !2684, line: 119, type: !1953, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !530, variables: !2901)
!2901 = !{!2902}
!2902 = !DILocalVariable(name: "string", arg: 1, scope: !2900, file: !2684, line: 119, type: !19)
!2903 = !DILocation(line: 119, column: 22, scope: !2900)
!2904 = !DILocation(line: 121, column: 27, scope: !2900)
!2905 = !DILocation(line: 121, column: 43, scope: !2900)
!2906 = !DILocation(line: 111, column: 22, scope: !2880, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 121, column: 10, scope: !2900)
!2908 = !DILocation(line: 111, column: 32, scope: !2880, inlinedAt: !2907)
!2909 = !DILocation(line: 39, column: 17, scope: !2683, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 113, column: 18, scope: !2880, inlinedAt: !2907)
!2911 = !DILocation(line: 41, column: 13, scope: !2683, inlinedAt: !2910)
!2912 = !DILocation(line: 41, column: 9, scope: !2683, inlinedAt: !2910)
!2913 = !DILocation(line: 42, column: 8, scope: !2694, inlinedAt: !2910)
!2914 = !DILocation(line: 42, column: 15, scope: !2694, inlinedAt: !2910)
!2915 = !DILocation(line: 42, column: 10, scope: !2694, inlinedAt: !2910)
!2916 = !DILocation(line: 43, column: 5, scope: !2694, inlinedAt: !2910)
!2917 = !DILocation(line: 113, column: 10, scope: !2880, inlinedAt: !2907)
!2918 = !DILocation(line: 121, column: 3, scope: !2900)
!2919 = distinct !DISubprogram(name: "xalloc_die", scope: !2920, file: !2920, line: 32, type: !741, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !547, variables: !52)
!2920 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2921 = !DILocation(line: 34, column: 10, scope: !2919)
!2922 = !DILocation(line: 34, column: 33, scope: !2919)
!2923 = !DILocation(line: 34, column: 3, scope: !2919)
!2924 = !DILocation(line: 40, column: 3, scope: !2919)
!2925 = distinct !DISubprogram(name: "rpl_calloc", scope: !2926, file: !2926, line: 42, type: !2670, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !2927)
!2926 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2927 = !{!2928, !2929, !2930, !2931}
!2928 = !DILocalVariable(name: "n", arg: 1, scope: !2925, file: !2926, line: 42, type: !118)
!2929 = !DILocalVariable(name: "s", arg: 2, scope: !2925, file: !2926, line: 42, type: !118)
!2930 = !DILocalVariable(name: "result", scope: !2925, file: !2926, line: 44, type: !11)
!2931 = !DILocalVariable(name: "bytes", scope: !2932, file: !2926, line: 56, type: !118)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !2926, line: 53, column: 5)
!2933 = distinct !DILexicalBlock(scope: !2925, file: !2926, line: 47, column: 7)
!2934 = !DILocation(line: 42, column: 20, scope: !2925)
!2935 = !DILocation(line: 42, column: 30, scope: !2925)
!2936 = !DILocation(line: 47, column: 9, scope: !2933)
!2937 = !DILocation(line: 47, column: 19, scope: !2933)
!2938 = !DILocation(line: 47, column: 14, scope: !2933)
!2939 = !DILocation(line: 56, column: 24, scope: !2932)
!2940 = !DILocation(line: 56, column: 14, scope: !2932)
!2941 = !DILocation(line: 57, column: 17, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2932, file: !2926, line: 57, column: 11)
!2943 = !DILocation(line: 57, column: 21, scope: !2942)
!2944 = !DILocation(line: 57, column: 11, scope: !2932)
!2945 = !DILocation(line: 59, column: 11, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !2926, line: 58, column: 9)
!2947 = !DILocation(line: 59, column: 17, scope: !2946)
!2948 = !DILocation(line: 65, column: 12, scope: !2925)
!2949 = !DILocation(line: 44, column: 9, scope: !2925)
!2950 = !DILocation(line: 72, column: 3, scope: !2925)
!2951 = !DILocation(line: 73, column: 1, scope: !2925)
!2952 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !2953, file: !2953, line: 334, type: !2954, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !551, variables: !2968)
!2953 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!118, !2956, !19, !118, !2957}
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1004, line: 6, baseType: !2959)
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1006, line: 21, baseType: !2960)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1006, line: 13, size: 64, elements: !2961)
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2960, file: !1006, line: 15, baseType: !42, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2960, file: !1006, line: 20, baseType: !2964, size: 32, offset: 32)
!2964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2960, file: !1006, line: 16, size: 32, elements: !2965)
!2965 = !{!2966, !2967}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2964, file: !1006, line: 18, baseType: !137, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2964, file: !1006, line: 19, baseType: !1015, size: 32)
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975}
!2969 = !DILocalVariable(name: "pwc", arg: 1, scope: !2952, file: !2953, line: 334, type: !2956)
!2970 = !DILocalVariable(name: "s", arg: 2, scope: !2952, file: !2953, line: 334, type: !19)
!2971 = !DILocalVariable(name: "n", arg: 3, scope: !2952, file: !2953, line: 334, type: !118)
!2972 = !DILocalVariable(name: "ps", arg: 4, scope: !2952, file: !2953, line: 334, type: !2957)
!2973 = !DILocalVariable(name: "ret", scope: !2952, file: !2953, line: 336, type: !118)
!2974 = !DILocalVariable(name: "wc", scope: !2952, file: !2953, line: 337, type: !1018)
!2975 = !DILocalVariable(name: "uc", scope: !2976, file: !2953, line: 398, type: !518)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !2953, line: 397, column: 5)
!2977 = distinct !DILexicalBlock(scope: !2952, file: !2953, line: 396, column: 7)
!2978 = !DILocation(line: 334, column: 23, scope: !2952)
!2979 = !DILocation(line: 334, column: 40, scope: !2952)
!2980 = !DILocation(line: 334, column: 50, scope: !2952)
!2981 = !DILocation(line: 334, column: 64, scope: !2952)
!2982 = !DILocation(line: 337, column: 3, scope: !2952)
!2983 = !DILocation(line: 353, column: 9, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2952, file: !2953, line: 353, column: 7)
!2985 = !DILocation(line: 353, column: 7, scope: !2952)
!2986 = !DILocation(line: 388, column: 9, scope: !2952)
!2987 = !DILocation(line: 336, column: 10, scope: !2952)
!2988 = !DILocation(line: 396, column: 19, scope: !2977)
!2989 = !DILocation(line: 396, column: 31, scope: !2977)
!2990 = !DILocation(line: 396, column: 26, scope: !2977)
!2991 = !DILocation(line: 396, column: 41, scope: !2977)
!2992 = !DILocation(line: 396, column: 7, scope: !2952)
!2993 = !DILocation(line: 398, column: 26, scope: !2976)
!2994 = !DILocation(line: 398, column: 21, scope: !2976)
!2995 = !DILocation(line: 399, column: 14, scope: !2976)
!2996 = !DILocation(line: 399, column: 12, scope: !2976)
!2997 = !DILocation(line: 405, column: 1, scope: !2952)
!2998 = distinct !DISubprogram(name: "close_stream", scope: !2999, file: !2999, line: 56, type: !3000, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3042)
!2999 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!42, !3002}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2479, line: 7, baseType: !3004)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2481, line: 241, size: 1728, elements: !3005)
!3005 = !{!3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3004, file: !2481, line: 242, baseType: !42, size: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3004, file: !2481, line: 247, baseType: !9, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3004, file: !2481, line: 248, baseType: !9, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3004, file: !2481, line: 249, baseType: !9, size: 64, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3004, file: !2481, line: 250, baseType: !9, size: 64, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3004, file: !2481, line: 251, baseType: !9, size: 64, offset: 320)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3004, file: !2481, line: 252, baseType: !9, size: 64, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3004, file: !2481, line: 253, baseType: !9, size: 64, offset: 448)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3004, file: !2481, line: 254, baseType: !9, size: 64, offset: 512)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3004, file: !2481, line: 256, baseType: !9, size: 64, offset: 576)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3004, file: !2481, line: 257, baseType: !9, size: 64, offset: 640)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3004, file: !2481, line: 258, baseType: !9, size: 64, offset: 704)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3004, file: !2481, line: 260, baseType: !3019, size: 64, offset: 768)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2481, line: 156, size: 192, elements: !3021)
!3021 = !{!3022, !3023, !3025}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3020, file: !2481, line: 157, baseType: !3019, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3020, file: !2481, line: 158, baseType: !3024, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3020, file: !2481, line: 162, baseType: !42, size: 32, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3004, file: !2481, line: 262, baseType: !3024, size: 64, offset: 832)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3004, file: !2481, line: 264, baseType: !42, size: 32, offset: 896)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3004, file: !2481, line: 268, baseType: !42, size: 32, offset: 928)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3004, file: !2481, line: 270, baseType: !2507, size: 64, offset: 960)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3004, file: !2481, line: 274, baseType: !117, size: 16, offset: 1024)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3004, file: !2481, line: 275, baseType: !2512, size: 8, offset: 1040)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3004, file: !2481, line: 276, baseType: !2514, size: 8, offset: 1048)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3004, file: !2481, line: 280, baseType: !2518, size: 64, offset: 1088)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3004, file: !2481, line: 289, baseType: !2521, size: 64, offset: 1152)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3004, file: !2481, line: 297, baseType: !11, size: 64, offset: 1216)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3004, file: !2481, line: 298, baseType: !11, size: 64, offset: 1280)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3004, file: !2481, line: 299, baseType: !11, size: 64, offset: 1344)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3004, file: !2481, line: 300, baseType: !11, size: 64, offset: 1408)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3004, file: !2481, line: 302, baseType: !118, size: 64, offset: 1472)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3004, file: !2481, line: 303, baseType: !42, size: 32, offset: 1536)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3004, file: !2481, line: 305, baseType: !2529, size: 160, offset: 1568)
!3042 = !{!3043, !3044, !3046, !3047}
!3043 = !DILocalVariable(name: "stream", arg: 1, scope: !2998, file: !2999, line: 56, type: !3002)
!3044 = !DILocalVariable(name: "some_pending", scope: !2998, file: !2999, line: 58, type: !3045)
!3045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!3046 = !DILocalVariable(name: "prev_fail", scope: !2998, file: !2999, line: 59, type: !3045)
!3047 = !DILocalVariable(name: "fclose_fail", scope: !2998, file: !2999, line: 60, type: !3045)
!3048 = !DILocation(line: 56, column: 21, scope: !2998)
!3049 = !DILocation(line: 58, column: 30, scope: !2998)
!3050 = !DILocalVariable(name: "__stream", arg: 1, scope: !3051, file: !3052, line: 132, type: !3002)
!3051 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3052, file: !3052, line: 132, type: !3000, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3053)
!3052 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3053 = !{!3050}
!3054 = !DILocation(line: 132, column: 1, scope: !3051, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 59, column: 27, scope: !2998)
!3056 = !DILocation(line: 134, column: 10, scope: !3051, inlinedAt: !3055)
!3057 = !{!3058, !645, i64 0}
!3058 = !{!"_IO_FILE", !645, i64 0, !583, i64 8, !583, i64 16, !583, i64 24, !583, i64 32, !583, i64 40, !583, i64 48, !583, i64 56, !583, i64 64, !583, i64 72, !583, i64 80, !583, i64 88, !583, i64 96, !583, i64 104, !645, i64 112, !645, i64 116, !1796, i64 120, !1252, i64 128, !584, i64 130, !584, i64 131, !583, i64 136, !1796, i64 144, !583, i64 152, !583, i64 160, !583, i64 168, !583, i64 176, !1796, i64 184, !645, i64 192, !584, i64 196}
!3059 = !DILocation(line: 59, column: 43, scope: !2998)
!3060 = !DILocation(line: 60, column: 29, scope: !2998)
!3061 = !DILocation(line: 60, column: 45, scope: !2998)
!3062 = !DILocation(line: 70, column: 17, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2998, file: !2999, line: 70, column: 7)
!3064 = !DILocation(line: 58, column: 50, scope: !2998)
!3065 = !DILocation(line: 70, column: 33, scope: !3063)
!3066 = !DILocation(line: 70, column: 53, scope: !3063)
!3067 = !DILocation(line: 70, column: 59, scope: !3063)
!3068 = !DILocation(line: 70, column: 7, scope: !2998)
!3069 = !DILocation(line: 72, column: 11, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3063, file: !2999, line: 71, column: 5)
!3071 = !DILocation(line: 73, column: 9, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3070, file: !2999, line: 72, column: 11)
!3073 = !DILocation(line: 73, column: 15, scope: !3072)
!3074 = !DILocation(line: 78, column: 1, scope: !2998)
!3075 = distinct !DISubprogram(name: "hard_locale", scope: !3076, file: !3076, line: 38, type: !3077, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3079)
!3076 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!62, !42}
!3079 = !{!3080, !3081, !3082}
!3080 = !DILocalVariable(name: "category", arg: 1, scope: !3075, file: !3076, line: 38, type: !42)
!3081 = !DILocalVariable(name: "hard", scope: !3075, file: !3076, line: 40, type: !62)
!3082 = !DILocalVariable(name: "p", scope: !3075, file: !3076, line: 41, type: !19)
!3083 = !DILocation(line: 38, column: 18, scope: !3075)
!3084 = !DILocation(line: 40, column: 8, scope: !3075)
!3085 = !DILocation(line: 41, column: 19, scope: !3075)
!3086 = !DILocation(line: 41, column: 15, scope: !3075)
!3087 = !DILocation(line: 43, column: 7, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3075, file: !3076, line: 43, column: 7)
!3089 = !DILocation(line: 43, column: 7, scope: !3075)
!3090 = !DILocation(line: 47, column: 15, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !3076, line: 47, column: 15)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !3076, line: 46, column: 9)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3076, line: 45, column: 11)
!3094 = distinct !DILexicalBlock(scope: !3088, file: !3076, line: 44, column: 5)
!3095 = !DILocation(line: 47, column: 31, scope: !3091)
!3096 = !DILocation(line: 47, column: 36, scope: !3091)
!3097 = !DILocation(line: 47, column: 39, scope: !3091)
!3098 = !DILocation(line: 47, column: 59, scope: !3091)
!3099 = !DILocation(line: 47, column: 15, scope: !3092)
!3100 = !DILocation(line: 48, column: 13, scope: !3091)
!3101 = !DILocation(line: 71, column: 3, scope: !3075)
!3102 = distinct !DISubprogram(name: "locale_charset", scope: !520, file: !520, line: 393, type: !3103, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !175, variables: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!19}
!3105 = !{!3106, !3107}
!3106 = !DILocalVariable(name: "codeset", scope: !3102, file: !520, line: 395, type: !19)
!3107 = !DILocalVariable(name: "aliases", scope: !3102, file: !520, line: 396, type: !19)
!3108 = !DILocalVariable(name: "buf1", scope: !3109, file: !520, line: 196, type: !3176)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !520, line: 194, column: 21)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !520, line: 193, column: 19)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !520, line: 193, column: 19)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !520, line: 188, column: 17)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !520, line: 181, column: 19)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !520, line: 177, column: 13)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !520, line: 173, column: 15)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !520, line: 161, column: 9)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !520, line: 157, column: 11)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !520, line: 130, column: 5)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !520, line: 129, column: 7)
!3120 = distinct !DISubprogram(name: "get_charset_aliases", scope: !520, file: !520, line: 124, type: !3103, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !175, variables: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3128, !3129, !3130, !3131, !3172, !3173, !3174, !3108, !3175, !3179, !3180, !3181}
!3122 = !DILocalVariable(name: "cp", scope: !3120, file: !520, line: 126, type: !19)
!3123 = !DILocalVariable(name: "dir", scope: !3118, file: !520, line: 132, type: !19)
!3124 = !DILocalVariable(name: "base", scope: !3118, file: !520, line: 133, type: !19)
!3125 = !DILocalVariable(name: "file_name", scope: !3118, file: !520, line: 134, type: !9)
!3126 = !DILocalVariable(name: "dir_len", scope: !3127, file: !520, line: 144, type: !118)
!3127 = distinct !DILexicalBlock(scope: !3118, file: !520, line: 143, column: 7)
!3128 = !DILocalVariable(name: "base_len", scope: !3127, file: !520, line: 145, type: !118)
!3129 = !DILocalVariable(name: "add_slash", scope: !3127, file: !520, line: 146, type: !42)
!3130 = !DILocalVariable(name: "fd", scope: !3116, file: !520, line: 162, type: !42)
!3131 = !DILocalVariable(name: "fp", scope: !3114, file: !520, line: 178, type: !3132)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2479, line: 7, baseType: !3134)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2481, line: 241, size: 1728, elements: !3135)
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3134, file: !2481, line: 242, baseType: !42, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3134, file: !2481, line: 247, baseType: !9, size: 64, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3134, file: !2481, line: 248, baseType: !9, size: 64, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3134, file: !2481, line: 249, baseType: !9, size: 64, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3134, file: !2481, line: 250, baseType: !9, size: 64, offset: 256)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3134, file: !2481, line: 251, baseType: !9, size: 64, offset: 320)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3134, file: !2481, line: 252, baseType: !9, size: 64, offset: 384)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3134, file: !2481, line: 253, baseType: !9, size: 64, offset: 448)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3134, file: !2481, line: 254, baseType: !9, size: 64, offset: 512)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3134, file: !2481, line: 256, baseType: !9, size: 64, offset: 576)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3134, file: !2481, line: 257, baseType: !9, size: 64, offset: 640)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3134, file: !2481, line: 258, baseType: !9, size: 64, offset: 704)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3134, file: !2481, line: 260, baseType: !3149, size: 64, offset: 768)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2481, line: 156, size: 192, elements: !3151)
!3151 = !{!3152, !3153, !3155}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3150, file: !2481, line: 157, baseType: !3149, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3150, file: !2481, line: 158, baseType: !3154, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3150, file: !2481, line: 162, baseType: !42, size: 32, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3134, file: !2481, line: 262, baseType: !3154, size: 64, offset: 832)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3134, file: !2481, line: 264, baseType: !42, size: 32, offset: 896)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3134, file: !2481, line: 268, baseType: !42, size: 32, offset: 928)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3134, file: !2481, line: 270, baseType: !2507, size: 64, offset: 960)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3134, file: !2481, line: 274, baseType: !117, size: 16, offset: 1024)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3134, file: !2481, line: 275, baseType: !2512, size: 8, offset: 1040)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3134, file: !2481, line: 276, baseType: !2514, size: 8, offset: 1048)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3134, file: !2481, line: 280, baseType: !2518, size: 64, offset: 1088)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3134, file: !2481, line: 289, baseType: !2521, size: 64, offset: 1152)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3134, file: !2481, line: 297, baseType: !11, size: 64, offset: 1216)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3134, file: !2481, line: 298, baseType: !11, size: 64, offset: 1280)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3134, file: !2481, line: 299, baseType: !11, size: 64, offset: 1344)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3134, file: !2481, line: 300, baseType: !11, size: 64, offset: 1408)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3134, file: !2481, line: 302, baseType: !118, size: 64, offset: 1472)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3134, file: !2481, line: 303, baseType: !42, size: 32, offset: 1536)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3134, file: !2481, line: 305, baseType: !2529, size: 160, offset: 1568)
!3172 = !DILocalVariable(name: "res_ptr", scope: !3112, file: !520, line: 190, type: !9)
!3173 = !DILocalVariable(name: "res_size", scope: !3112, file: !520, line: 191, type: !118)
!3174 = !DILocalVariable(name: "c", scope: !3109, file: !520, line: 195, type: !42)
!3175 = !DILocalVariable(name: "buf2", scope: !3109, file: !520, line: 197, type: !3176)
!3176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 408, elements: !3177)
!3177 = !{!3178}
!3178 = !DISubrange(count: 51)
!3179 = !DILocalVariable(name: "l1", scope: !3109, file: !520, line: 198, type: !118)
!3180 = !DILocalVariable(name: "l2", scope: !3109, file: !520, line: 198, type: !118)
!3181 = !DILocalVariable(name: "old_res_ptr", scope: !3109, file: !520, line: 199, type: !9)
!3182 = !DILocation(line: 196, column: 28, scope: !3109, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 589, column: 18, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3102, file: !520, line: 589, column: 3)
!3185 = !DILocation(line: 197, column: 28, scope: !3109, inlinedAt: !3183)
!3186 = !DILocation(line: 403, column: 13, scope: !3102)
!3187 = !DILocation(line: 395, column: 15, scope: !3102)
!3188 = !DILocation(line: 584, column: 15, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3102, file: !520, line: 584, column: 7)
!3190 = !DILocation(line: 584, column: 7, scope: !3102)
!3191 = !DILocation(line: 128, column: 8, scope: !3120, inlinedAt: !3183)
!3192 = !DILocation(line: 126, column: 15, scope: !3120, inlinedAt: !3183)
!3193 = !DILocation(line: 129, column: 10, scope: !3119, inlinedAt: !3183)
!3194 = !DILocation(line: 129, column: 7, scope: !3120, inlinedAt: !3183)
!3195 = !DILocation(line: 138, column: 13, scope: !3118, inlinedAt: !3183)
!3196 = !DILocation(line: 132, column: 19, scope: !3118, inlinedAt: !3183)
!3197 = !DILocation(line: 139, column: 15, scope: !3198, inlinedAt: !3183)
!3198 = distinct !DILexicalBlock(scope: !3118, file: !520, line: 139, column: 11)
!3199 = !DILocation(line: 139, column: 23, scope: !3198, inlinedAt: !3183)
!3200 = !DILocation(line: 139, column: 26, scope: !3198, inlinedAt: !3183)
!3201 = !DILocation(line: 139, column: 33, scope: !3198, inlinedAt: !3183)
!3202 = !DILocation(line: 139, column: 11, scope: !3118, inlinedAt: !3183)
!3203 = !DILocation(line: 140, column: 9, scope: !3198, inlinedAt: !3183)
!3204 = !DILocation(line: 144, column: 26, scope: !3127, inlinedAt: !3183)
!3205 = !DILocation(line: 144, column: 16, scope: !3127, inlinedAt: !3183)
!3206 = !DILocation(line: 145, column: 16, scope: !3127, inlinedAt: !3183)
!3207 = !DILocation(line: 146, column: 34, scope: !3127, inlinedAt: !3183)
!3208 = !DILocation(line: 146, column: 38, scope: !3127, inlinedAt: !3183)
!3209 = !DILocation(line: 146, column: 42, scope: !3127, inlinedAt: !3183)
!3210 = !DILocation(line: 147, column: 48, scope: !3127, inlinedAt: !3183)
!3211 = !DILocation(line: 147, column: 46, scope: !3127, inlinedAt: !3183)
!3212 = !DILocation(line: 147, column: 69, scope: !3127, inlinedAt: !3183)
!3213 = !DILocation(line: 147, column: 30, scope: !3127, inlinedAt: !3183)
!3214 = !DILocation(line: 134, column: 13, scope: !3118, inlinedAt: !3183)
!3215 = !DILocation(line: 148, column: 13, scope: !3127, inlinedAt: !3183)
!3216 = !DILocation(line: 150, column: 13, scope: !3217, inlinedAt: !3183)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !520, line: 149, column: 11)
!3218 = distinct !DILexicalBlock(scope: !3127, file: !520, line: 148, column: 13)
!3219 = !DILocation(line: 151, column: 17, scope: !3217, inlinedAt: !3183)
!3220 = !DILocation(line: 152, column: 34, scope: !3221, inlinedAt: !3183)
!3221 = distinct !DILexicalBlock(scope: !3217, file: !520, line: 151, column: 17)
!3222 = !DILocation(line: 153, column: 41, scope: !3217, inlinedAt: !3183)
!3223 = !DILocation(line: 153, column: 13, scope: !3217, inlinedAt: !3183)
!3224 = !DILocation(line: 157, column: 11, scope: !3118, inlinedAt: !3183)
!3225 = !DILocation(line: 171, column: 16, scope: !3116, inlinedAt: !3183)
!3226 = !DILocation(line: 162, column: 15, scope: !3116, inlinedAt: !3183)
!3227 = !DILocation(line: 173, column: 18, scope: !3115, inlinedAt: !3183)
!3228 = !DILocation(line: 173, column: 15, scope: !3116, inlinedAt: !3183)
!3229 = !DILocation(line: 180, column: 20, scope: !3114, inlinedAt: !3183)
!3230 = !DILocation(line: 178, column: 21, scope: !3114, inlinedAt: !3183)
!3231 = !DILocation(line: 181, column: 22, scope: !3113, inlinedAt: !3183)
!3232 = !DILocation(line: 181, column: 19, scope: !3114, inlinedAt: !3183)
!3233 = !DILocation(line: 184, column: 19, scope: !3234, inlinedAt: !3183)
!3234 = distinct !DILexicalBlock(scope: !3113, file: !520, line: 182, column: 17)
!3235 = !DILocation(line: 186, column: 17, scope: !3234, inlinedAt: !3183)
!3236 = !DILocation(line: 190, column: 25, scope: !3112, inlinedAt: !3183)
!3237 = !DILocation(line: 191, column: 26, scope: !3112, inlinedAt: !3183)
!3238 = !DILocation(line: 193, column: 19, scope: !3112, inlinedAt: !3183)
!3239 = !DILocation(line: 196, column: 23, scope: !3109, inlinedAt: !3183)
!3240 = !DILocation(line: 197, column: 23, scope: !3109, inlinedAt: !3183)
!3241 = !DILocalVariable(name: "__fp", arg: 1, scope: !3242, file: !3052, line: 63, type: !3132)
!3242 = distinct !DISubprogram(name: "getc_unlocked", scope: !3052, file: !3052, line: 63, type: !3243, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !175, variables: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!42, !3132}
!3245 = !{!3241}
!3246 = !DILocation(line: 63, column: 22, scope: !3242, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 201, column: 27, scope: !3109, inlinedAt: !3183)
!3248 = !DILocation(line: 65, column: 10, scope: !3242, inlinedAt: !3247)
!3249 = !{!3058, !583, i64 8}
!3250 = !{!3058, !583, i64 16}
!3251 = !{!"branch_weights", i32 2000, i32 1}
!3252 = !DILocation(line: 195, column: 27, scope: !3109, inlinedAt: !3183)
!3253 = !DILocation(line: 202, column: 27, scope: !3109, inlinedAt: !3183)
!3254 = distinct !{!3254, !3255, !3258}
!3255 = !DILocation(line: 209, column: 27, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !520, line: 207, column: 25)
!3257 = distinct !DILexicalBlock(scope: !3109, file: !520, line: 206, column: 27)
!3258 = !DILocation(line: 211, column: 58, scope: !3256)
!3259 = !DILocation(line: 65, column: 10, scope: !3242, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 210, column: 33, scope: !3256, inlinedAt: !3183)
!3261 = !DILocation(line: 63, column: 22, scope: !3242, inlinedAt: !3260)
!3262 = !DILocation(line: 210, column: 29, scope: !3256, inlinedAt: !3183)
!3263 = distinct !{!3263, !3264, !3265}
!3264 = !DILocation(line: 193, column: 19, scope: !3111)
!3265 = !DILocation(line: 241, column: 21, scope: !3111)
!3266 = !DILocation(line: 216, column: 23, scope: !3109, inlinedAt: !3183)
!3267 = !DILocation(line: 217, column: 27, scope: !3268, inlinedAt: !3183)
!3268 = distinct !DILexicalBlock(scope: !3109, file: !520, line: 217, column: 27)
!3269 = !DILocation(line: 217, column: 64, scope: !3268, inlinedAt: !3183)
!3270 = !DILocation(line: 217, column: 27, scope: !3109, inlinedAt: !3183)
!3271 = !DILocation(line: 219, column: 28, scope: !3109, inlinedAt: !3183)
!3272 = !DILocation(line: 198, column: 30, scope: !3109, inlinedAt: !3183)
!3273 = !DILocation(line: 220, column: 28, scope: !3109, inlinedAt: !3183)
!3274 = !DILocation(line: 198, column: 34, scope: !3109, inlinedAt: !3183)
!3275 = !DILocation(line: 199, column: 29, scope: !3109, inlinedAt: !3183)
!3276 = !DILocation(line: 222, column: 36, scope: !3277, inlinedAt: !3183)
!3277 = distinct !DILexicalBlock(scope: !3109, file: !520, line: 222, column: 27)
!3278 = !DILocation(line: 222, column: 27, scope: !3109, inlinedAt: !3183)
!3279 = !DILocation(line: 225, column: 63, scope: !3280, inlinedAt: !3183)
!3280 = distinct !DILexicalBlock(scope: !3277, file: !520, line: 223, column: 25)
!3281 = !DILocation(line: 225, column: 46, scope: !3280, inlinedAt: !3183)
!3282 = !DILocation(line: 226, column: 25, scope: !3280, inlinedAt: !3183)
!3283 = !DILocation(line: 229, column: 36, scope: !3284, inlinedAt: !3183)
!3284 = distinct !DILexicalBlock(scope: !3277, file: !520, line: 228, column: 25)
!3285 = !DILocation(line: 230, column: 73, scope: !3284, inlinedAt: !3183)
!3286 = !DILocation(line: 230, column: 46, scope: !3284, inlinedAt: !3183)
!3287 = !DILocation(line: 232, column: 35, scope: !3288, inlinedAt: !3183)
!3288 = distinct !DILexicalBlock(scope: !3109, file: !520, line: 232, column: 27)
!3289 = !DILocation(line: 232, column: 27, scope: !3109, inlinedAt: !3183)
!3290 = !DILocation(line: 236, column: 27, scope: !3291, inlinedAt: !3183)
!3291 = distinct !DILexicalBlock(scope: !3288, file: !520, line: 233, column: 25)
!3292 = !DILocation(line: 237, column: 27, scope: !3291, inlinedAt: !3183)
!3293 = !DILocation(line: 241, column: 21, scope: !3110, inlinedAt: !3183)
!3294 = !DILocation(line: 239, column: 39, scope: !3109, inlinedAt: !3183)
!3295 = !DILocation(line: 239, column: 50, scope: !3109, inlinedAt: !3183)
!3296 = !DILocation(line: 239, column: 61, scope: !3109, inlinedAt: !3183)
!3297 = !DILocalVariable(name: "__dest", arg: 1, scope: !3298, file: !3299, line: 88, type: !3302)
!3298 = distinct !DISubprogram(name: "strcpy", scope: !3299, file: !3299, line: 88, type: !3300, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !175, variables: !3304)
!3299 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!9, !3302, !3303}
!3302 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!3303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!3304 = !{!3297, !3305}
!3305 = !DILocalVariable(name: "__src", arg: 2, scope: !3298, file: !3299, line: 88, type: !3303)
!3306 = !DILocation(line: 88, column: 1, scope: !3298, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 239, column: 23, scope: !3109, inlinedAt: !3183)
!3308 = !DILocation(line: 90, column: 49, scope: !3298, inlinedAt: !3307)
!3309 = !DILocation(line: 90, column: 10, scope: !3298, inlinedAt: !3307)
!3310 = !DILocation(line: 88, column: 1, scope: !3298, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 240, column: 23, scope: !3109, inlinedAt: !3183)
!3312 = !DILocation(line: 90, column: 49, scope: !3298, inlinedAt: !3311)
!3313 = !DILocation(line: 90, column: 10, scope: !3298, inlinedAt: !3311)
!3314 = !DILocation(line: 193, column: 19, scope: !3110, inlinedAt: !3183)
!3315 = !DILocation(line: 242, column: 19, scope: !3112, inlinedAt: !3183)
!3316 = !DILocation(line: 243, column: 32, scope: !3317, inlinedAt: !3183)
!3317 = distinct !DILexicalBlock(scope: !3112, file: !520, line: 243, column: 23)
!3318 = !DILocation(line: 243, column: 23, scope: !3112, inlinedAt: !3183)
!3319 = !DILocation(line: 247, column: 33, scope: !3320, inlinedAt: !3183)
!3320 = distinct !DILexicalBlock(scope: !3317, file: !520, line: 246, column: 21)
!3321 = !DILocation(line: 247, column: 45, scope: !3320, inlinedAt: !3183)
!3322 = !DILocation(line: 253, column: 11, scope: !3116, inlinedAt: !3183)
!3323 = !DILocation(line: 377, column: 23, scope: !3118, inlinedAt: !3183)
!3324 = !DILocation(line: 378, column: 5, scope: !3118, inlinedAt: !3183)
!3325 = !DILocation(line: 396, column: 15, scope: !3102)
!3326 = !DILocation(line: 590, column: 8, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3184, file: !520, line: 589, column: 3)
!3328 = !DILocation(line: 590, column: 17, scope: !3327)
!3329 = !DILocation(line: 589, column: 3, scope: !3184)
!3330 = !DILocation(line: 592, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3327, file: !520, line: 592, column: 9)
!3332 = !DILocation(line: 592, column: 35, scope: !3331)
!3333 = !DILocation(line: 593, column: 9, scope: !3331)
!3334 = !DILocation(line: 593, column: 24, scope: !3331)
!3335 = !DILocation(line: 593, column: 31, scope: !3331)
!3336 = !DILocation(line: 593, column: 34, scope: !3331)
!3337 = !DILocation(line: 593, column: 45, scope: !3331)
!3338 = !DILocation(line: 592, column: 9, scope: !3327)
!3339 = !DILocation(line: 595, column: 29, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3331, file: !520, line: 594, column: 7)
!3341 = !DILocation(line: 595, column: 27, scope: !3340)
!3342 = !DILocation(line: 595, column: 46, scope: !3340)
!3343 = !DILocation(line: 596, column: 9, scope: !3340)
!3344 = !DILocation(line: 591, column: 19, scope: !3327)
!3345 = !DILocation(line: 591, column: 36, scope: !3327)
!3346 = !DILocation(line: 591, column: 16, scope: !3327)
!3347 = !DILocation(line: 591, column: 52, scope: !3327)
!3348 = !DILocation(line: 591, column: 69, scope: !3327)
!3349 = !DILocation(line: 591, column: 49, scope: !3327)
!3350 = distinct !{!3350, !3329, !3351}
!3351 = !DILocation(line: 597, column: 7, scope: !3184)
!3352 = !DILocation(line: 602, column: 7, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3102, file: !520, line: 602, column: 7)
!3354 = !DILocation(line: 602, column: 18, scope: !3353)
!3355 = !DILocation(line: 602, column: 7, scope: !3102)
!3356 = !DILocation(line: 612, column: 3, scope: !3102)
!3357 = distinct !DISubprogram(name: "rpl_fclose", scope: !3358, file: !3358, line: 56, type: !3359, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !558, variables: !3401)
!3358 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!42, !3361}
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2479, line: 7, baseType: !3363)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2481, line: 241, size: 1728, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3363, file: !2481, line: 242, baseType: !42, size: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3363, file: !2481, line: 247, baseType: !9, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3363, file: !2481, line: 248, baseType: !9, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3363, file: !2481, line: 249, baseType: !9, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3363, file: !2481, line: 250, baseType: !9, size: 64, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3363, file: !2481, line: 251, baseType: !9, size: 64, offset: 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3363, file: !2481, line: 252, baseType: !9, size: 64, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3363, file: !2481, line: 253, baseType: !9, size: 64, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3363, file: !2481, line: 254, baseType: !9, size: 64, offset: 512)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3363, file: !2481, line: 256, baseType: !9, size: 64, offset: 576)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3363, file: !2481, line: 257, baseType: !9, size: 64, offset: 640)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3363, file: !2481, line: 258, baseType: !9, size: 64, offset: 704)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3363, file: !2481, line: 260, baseType: !3378, size: 64, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2481, line: 156, size: 192, elements: !3380)
!3380 = !{!3381, !3382, !3384}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3379, file: !2481, line: 157, baseType: !3378, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3379, file: !2481, line: 158, baseType: !3383, size: 64, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3379, file: !2481, line: 162, baseType: !42, size: 32, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3363, file: !2481, line: 262, baseType: !3383, size: 64, offset: 832)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3363, file: !2481, line: 264, baseType: !42, size: 32, offset: 896)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3363, file: !2481, line: 268, baseType: !42, size: 32, offset: 928)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3363, file: !2481, line: 270, baseType: !2507, size: 64, offset: 960)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3363, file: !2481, line: 274, baseType: !117, size: 16, offset: 1024)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3363, file: !2481, line: 275, baseType: !2512, size: 8, offset: 1040)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3363, file: !2481, line: 276, baseType: !2514, size: 8, offset: 1048)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3363, file: !2481, line: 280, baseType: !2518, size: 64, offset: 1088)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3363, file: !2481, line: 289, baseType: !2521, size: 64, offset: 1152)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3363, file: !2481, line: 297, baseType: !11, size: 64, offset: 1216)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3363, file: !2481, line: 298, baseType: !11, size: 64, offset: 1280)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3363, file: !2481, line: 299, baseType: !11, size: 64, offset: 1344)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3363, file: !2481, line: 300, baseType: !11, size: 64, offset: 1408)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3363, file: !2481, line: 302, baseType: !118, size: 64, offset: 1472)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3363, file: !2481, line: 303, baseType: !42, size: 32, offset: 1536)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3363, file: !2481, line: 305, baseType: !2529, size: 160, offset: 1568)
!3401 = !{!3402, !3403, !3404, !3405}
!3402 = !DILocalVariable(name: "fp", arg: 1, scope: !3357, file: !3358, line: 56, type: !3361)
!3403 = !DILocalVariable(name: "saved_errno", scope: !3357, file: !3358, line: 58, type: !42)
!3404 = !DILocalVariable(name: "fd", scope: !3357, file: !3358, line: 59, type: !42)
!3405 = !DILocalVariable(name: "result", scope: !3357, file: !3358, line: 60, type: !42)
!3406 = !DILocation(line: 56, column: 19, scope: !3357)
!3407 = !DILocation(line: 58, column: 7, scope: !3357)
!3408 = !DILocation(line: 60, column: 7, scope: !3357)
!3409 = !DILocation(line: 63, column: 8, scope: !3357)
!3410 = !DILocation(line: 59, column: 7, scope: !3357)
!3411 = !DILocation(line: 64, column: 10, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3357, file: !3358, line: 64, column: 7)
!3413 = !DILocation(line: 64, column: 7, scope: !3357)
!3414 = !DILocation(line: 65, column: 12, scope: !3412)
!3415 = !DILocation(line: 65, column: 5, scope: !3412)
!3416 = !DILocation(line: 70, column: 9, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3357, file: !3358, line: 70, column: 7)
!3418 = !DILocation(line: 70, column: 23, scope: !3417)
!3419 = !DILocation(line: 70, column: 33, scope: !3417)
!3420 = !DILocation(line: 70, column: 26, scope: !3417)
!3421 = !DILocation(line: 70, column: 59, scope: !3417)
!3422 = !DILocation(line: 71, column: 7, scope: !3417)
!3423 = !DILocation(line: 71, column: 10, scope: !3417)
!3424 = !DILocation(line: 70, column: 7, scope: !3357)
!3425 = !DILocation(line: 98, column: 12, scope: !3357)
!3426 = !DILocation(line: 103, column: 7, scope: !3357)
!3427 = !DILocation(line: 72, column: 19, scope: !3417)
!3428 = !DILocation(line: 103, column: 19, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3357, file: !3358, line: 103, column: 7)
!3430 = !DILocation(line: 105, column: 13, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3429, file: !3358, line: 104, column: 5)
!3432 = !DILocation(line: 107, column: 5, scope: !3431)
!3433 = !DILocation(line: 110, column: 1, scope: !3357)
!3434 = distinct !DISubprogram(name: "rpl_fflush", scope: !3435, file: !3435, line: 127, type: !3436, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3478)
!3435 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!42, !3438}
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2479, line: 7, baseType: !3440)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2481, line: 241, size: 1728, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3440, file: !2481, line: 242, baseType: !42, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3440, file: !2481, line: 247, baseType: !9, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3440, file: !2481, line: 248, baseType: !9, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3440, file: !2481, line: 249, baseType: !9, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3440, file: !2481, line: 250, baseType: !9, size: 64, offset: 256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3440, file: !2481, line: 251, baseType: !9, size: 64, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3440, file: !2481, line: 252, baseType: !9, size: 64, offset: 384)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3440, file: !2481, line: 253, baseType: !9, size: 64, offset: 448)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3440, file: !2481, line: 254, baseType: !9, size: 64, offset: 512)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3440, file: !2481, line: 256, baseType: !9, size: 64, offset: 576)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3440, file: !2481, line: 257, baseType: !9, size: 64, offset: 640)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3440, file: !2481, line: 258, baseType: !9, size: 64, offset: 704)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3440, file: !2481, line: 260, baseType: !3455, size: 64, offset: 768)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2481, line: 156, size: 192, elements: !3457)
!3457 = !{!3458, !3459, !3461}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3456, file: !2481, line: 157, baseType: !3455, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3456, file: !2481, line: 158, baseType: !3460, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3456, file: !2481, line: 162, baseType: !42, size: 32, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3440, file: !2481, line: 262, baseType: !3460, size: 64, offset: 832)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3440, file: !2481, line: 264, baseType: !42, size: 32, offset: 896)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3440, file: !2481, line: 268, baseType: !42, size: 32, offset: 928)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3440, file: !2481, line: 270, baseType: !2507, size: 64, offset: 960)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3440, file: !2481, line: 274, baseType: !117, size: 16, offset: 1024)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3440, file: !2481, line: 275, baseType: !2512, size: 8, offset: 1040)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3440, file: !2481, line: 276, baseType: !2514, size: 8, offset: 1048)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3440, file: !2481, line: 280, baseType: !2518, size: 64, offset: 1088)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3440, file: !2481, line: 289, baseType: !2521, size: 64, offset: 1152)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3440, file: !2481, line: 297, baseType: !11, size: 64, offset: 1216)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3440, file: !2481, line: 298, baseType: !11, size: 64, offset: 1280)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3440, file: !2481, line: 299, baseType: !11, size: 64, offset: 1344)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3440, file: !2481, line: 300, baseType: !11, size: 64, offset: 1408)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3440, file: !2481, line: 302, baseType: !118, size: 64, offset: 1472)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3440, file: !2481, line: 303, baseType: !42, size: 32, offset: 1536)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3440, file: !2481, line: 305, baseType: !2529, size: 160, offset: 1568)
!3478 = !{!3479}
!3479 = !DILocalVariable(name: "stream", arg: 1, scope: !3434, file: !3435, line: 127, type: !3438)
!3480 = !DILocation(line: 127, column: 19, scope: !3434)
!3481 = !DILocation(line: 148, column: 14, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3434, file: !3435, line: 148, column: 7)
!3483 = !DILocation(line: 148, column: 22, scope: !3482)
!3484 = !DILocation(line: 148, column: 27, scope: !3482)
!3485 = !DILocation(line: 148, column: 7, scope: !3434)
!3486 = !DILocation(line: 149, column: 12, scope: !3482)
!3487 = !DILocation(line: 149, column: 5, scope: !3482)
!3488 = !DILocalVariable(name: "fp", arg: 1, scope: !3489, file: !3435, line: 40, type: !3438)
!3489 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3435, file: !3435, line: 40, type: !3490, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{null, !3438}
!3492 = !{!3488}
!3493 = !DILocation(line: 40, column: 48, scope: !3489, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 153, column: 3, scope: !3434)
!3495 = !DILocation(line: 42, column: 11, scope: !3496, inlinedAt: !3494)
!3496 = distinct !DILexicalBlock(scope: !3489, file: !3435, line: 42, column: 7)
!3497 = !DILocation(line: 42, column: 18, scope: !3496, inlinedAt: !3494)
!3498 = !DILocation(line: 42, column: 7, scope: !3489, inlinedAt: !3494)
!3499 = !DILocation(line: 44, column: 5, scope: !3496, inlinedAt: !3494)
!3500 = !DILocation(line: 155, column: 10, scope: !3434)
!3501 = !DILocation(line: 155, column: 3, scope: !3434)
!3502 = !DILocation(line: 229, column: 1, scope: !3434)
!3503 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3504, file: !3504, line: 28, type: !3505, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !562, variables: !3548)
!3504 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!42, !3507, !3547, !42}
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2479, line: 7, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2481, line: 241, size: 1728, elements: !3510)
!3510 = !{!3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3509, file: !2481, line: 242, baseType: !42, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3509, file: !2481, line: 247, baseType: !9, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3509, file: !2481, line: 248, baseType: !9, size: 64, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3509, file: !2481, line: 249, baseType: !9, size: 64, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3509, file: !2481, line: 250, baseType: !9, size: 64, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3509, file: !2481, line: 251, baseType: !9, size: 64, offset: 320)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3509, file: !2481, line: 252, baseType: !9, size: 64, offset: 384)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3509, file: !2481, line: 253, baseType: !9, size: 64, offset: 448)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3509, file: !2481, line: 254, baseType: !9, size: 64, offset: 512)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3509, file: !2481, line: 256, baseType: !9, size: 64, offset: 576)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3509, file: !2481, line: 257, baseType: !9, size: 64, offset: 640)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3509, file: !2481, line: 258, baseType: !9, size: 64, offset: 704)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3509, file: !2481, line: 260, baseType: !3524, size: 64, offset: 768)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2481, line: 156, size: 192, elements: !3526)
!3526 = !{!3527, !3528, !3530}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3525, file: !2481, line: 157, baseType: !3524, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3525, file: !2481, line: 158, baseType: !3529, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3525, file: !2481, line: 162, baseType: !42, size: 32, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3509, file: !2481, line: 262, baseType: !3529, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3509, file: !2481, line: 264, baseType: !42, size: 32, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3509, file: !2481, line: 268, baseType: !42, size: 32, offset: 928)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3509, file: !2481, line: 270, baseType: !2507, size: 64, offset: 960)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3509, file: !2481, line: 274, baseType: !117, size: 16, offset: 1024)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3509, file: !2481, line: 275, baseType: !2512, size: 8, offset: 1040)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3509, file: !2481, line: 276, baseType: !2514, size: 8, offset: 1048)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3509, file: !2481, line: 280, baseType: !2518, size: 64, offset: 1088)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3509, file: !2481, line: 289, baseType: !2521, size: 64, offset: 1152)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3509, file: !2481, line: 297, baseType: !11, size: 64, offset: 1216)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3509, file: !2481, line: 298, baseType: !11, size: 64, offset: 1280)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3509, file: !2481, line: 299, baseType: !11, size: 64, offset: 1344)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3509, file: !2481, line: 300, baseType: !11, size: 64, offset: 1408)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3509, file: !2481, line: 302, baseType: !118, size: 64, offset: 1472)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3509, file: !2481, line: 303, baseType: !42, size: 32, offset: 1536)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3509, file: !2481, line: 305, baseType: !2529, size: 160, offset: 1568)
!3547 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2649, line: 57, baseType: !2507)
!3548 = !{!3549, !3550, !3551, !3552}
!3549 = !DILocalVariable(name: "fp", arg: 1, scope: !3503, file: !3504, line: 28, type: !3507)
!3550 = !DILocalVariable(name: "offset", arg: 2, scope: !3503, file: !3504, line: 28, type: !3547)
!3551 = !DILocalVariable(name: "whence", arg: 3, scope: !3503, file: !3504, line: 28, type: !42)
!3552 = !DILocalVariable(name: "pos", scope: !3553, file: !3504, line: 116, type: !3547)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !3504, line: 112, column: 5)
!3554 = distinct !DILexicalBlock(scope: !3503, file: !3504, line: 51, column: 7)
!3555 = !DILocation(line: 28, column: 15, scope: !3503)
!3556 = !DILocation(line: 28, column: 25, scope: !3503)
!3557 = !DILocation(line: 28, column: 37, scope: !3503)
!3558 = !DILocation(line: 51, column: 11, scope: !3554)
!3559 = !DILocation(line: 51, column: 31, scope: !3554)
!3560 = !DILocation(line: 51, column: 24, scope: !3554)
!3561 = !DILocation(line: 52, column: 7, scope: !3554)
!3562 = !DILocation(line: 52, column: 14, scope: !3554)
!3563 = !{!3058, !583, i64 40}
!3564 = !DILocation(line: 52, column: 35, scope: !3554)
!3565 = !{!3058, !583, i64 32}
!3566 = !DILocation(line: 52, column: 28, scope: !3554)
!3567 = !DILocation(line: 53, column: 7, scope: !3554)
!3568 = !DILocation(line: 53, column: 14, scope: !3554)
!3569 = !{!3058, !583, i64 72}
!3570 = !DILocation(line: 53, column: 28, scope: !3554)
!3571 = !DILocation(line: 51, column: 7, scope: !3503)
!3572 = !DILocation(line: 116, column: 26, scope: !3553)
!3573 = !DILocation(line: 116, column: 19, scope: !3553)
!3574 = !DILocation(line: 116, column: 13, scope: !3553)
!3575 = !DILocation(line: 117, column: 15, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3553, file: !3504, line: 117, column: 11)
!3577 = !DILocation(line: 117, column: 11, scope: !3553)
!3578 = !DILocation(line: 127, column: 11, scope: !3553)
!3579 = !DILocation(line: 127, column: 18, scope: !3553)
!3580 = !DILocation(line: 128, column: 11, scope: !3553)
!3581 = !DILocation(line: 128, column: 19, scope: !3553)
!3582 = !{!3058, !1796, i64 144}
!3583 = !DILocation(line: 159, column: 7, scope: !3553)
!3584 = !DILocation(line: 161, column: 10, scope: !3503)
!3585 = !DILocation(line: 161, column: 3, scope: !3503)
!3586 = !DILocation(line: 162, column: 1, scope: !3503)
