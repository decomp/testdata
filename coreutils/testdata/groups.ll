; ModuleID = 'coreutils-8.27/src/groups.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Usage: %s [OPTION]... [USERNAME]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [155 x i8] c"Print group memberships for each USERNAME or, if no USERNAME is specified, for\0Athe current process (which may differ if the groups database has changed).\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@longopts = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"James Youngman\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@gidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !46
@.str.2.3 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %lu\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.18 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !68
@.str.21 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !73
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !78
@.str.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !82
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !89
@.str.35 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.36 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.37 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.41, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.47, i32 0, i32 0), i8* null], align 16, !dbg !96
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !140
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !147
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !159
@.str.11.48 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.49 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.50 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.51 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.52 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.53 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !166
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !173
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !161
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !175
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
@.str.16.76 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.77 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.78 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !181
@.str.1.89 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.102 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.105 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !190
@.str.3.106 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.107 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.108 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.109 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.110 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.111 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !630 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !634, metadata !635), !dbg !636
  %2 = icmp eq i32 %0, 0, !dbg !637
  br i1 %2, label %8, label %3, !dbg !639

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !640, !tbaa !642
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !640
  %6 = load i8*, i8** @program_name, align 8, !dbg !640, !tbaa !642
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !640
  br label %36, !dbg !640

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !646
  %10 = load i8*, i8** @program_name, align 8, !dbg !646, !tbaa !642
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !646
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !648
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !648, !tbaa !642
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !648
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !649
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !649, !tbaa !642
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !649
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !650
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !650, !tbaa !642
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !650
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !21, metadata !635) #10, !dbg !651
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !21, metadata !635) #10, !dbg !651
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !653
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !653
  %23 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !654
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !29, metadata !635) #10, !dbg !655
  %24 = icmp eq i8* %23, null, !dbg !656
  br i1 %24, label %31, label %25, !dbg !658

; <label>:25:                                     ; preds = %8
  %26 = tail call i32 @strncmp(i8* nonnull %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #14, !dbg !659
  %27 = icmp eq i32 %26, 0, !dbg !659
  br i1 %27, label %31, label %28, !dbg !660

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !661
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !661
  br label %31, !dbg !663

; <label>:31:                                     ; preds = %8, %25, %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !664
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !664
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !665
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !665
  br label %36

; <label>:36:                                     ; preds = %31, %3
  tail call void @exit(i32 %0) #15, !dbg !666
  unreachable, !dbg !666
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !667 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !672, metadata !635), !dbg !699
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !673, metadata !635), !dbg !700
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !675, metadata !635), !dbg !701
  %3 = load i8*, i8** %1, align 8, !dbg !702, !tbaa !642
  tail call void @set_program_name(i8* %3) #10, !dbg !703
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !704
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !705
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !706
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !707
  %8 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !708
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !674, metadata !635), !dbg !709
  switch i32 %8, label %13 [
    i32 -1, label %14
    i32 -130, label %9
    i32 -131, label %10
  ], !dbg !710

; <label>:9:                                      ; preds = %2
  tail call void @usage(i32 0) #16, !dbg !711
  unreachable, !dbg !711

; <label>:10:                                     ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !642
  %12 = load i8*, i8** @Version, align 8, !dbg !714, !tbaa !642
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* null) #10, !dbg !714
  tail call void @exit(i32 0) #15, !dbg !714
  unreachable, !dbg !714

; <label>:13:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !715
  unreachable, !dbg !715

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* @optind, align 4, !dbg !716, !tbaa !717
  %16 = icmp eq i32 %15, %0, !dbg !719
  br i1 %16, label %17, label %55, !dbg !720

; <label>:17:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !681, metadata !635), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !684, metadata !635), !dbg !722
  %18 = tail call i32* @__errno_location() #17, !dbg !723
  store i32 0, i32* %18, align 4, !dbg !724, !tbaa !717
  %19 = tail call i32 @getuid() #10, !dbg !725
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !678, metadata !635), !dbg !726
  %20 = icmp eq i32 %19, -1, !dbg !727
  br i1 %20, label %21, label %26, !dbg !729

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %18, align 4, !dbg !730, !tbaa !717
  %23 = icmp eq i32 %22, 0, !dbg !730
  br i1 %23, label %26, label %24, !dbg !731

; <label>:24:                                     ; preds = %21
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !732
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %22, i8* %25) #10, !dbg !732
  unreachable, !dbg !732

; <label>:26:                                     ; preds = %21, %17
  store i32 0, i32* %18, align 4, !dbg !733, !tbaa !717
  %27 = tail call i32 @getegid() #10, !dbg !734
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !677, metadata !635), !dbg !735
  %28 = icmp eq i32 %27, -1, !dbg !736
  br i1 %28, label %29, label %34, !dbg !738

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %18, align 4, !dbg !739, !tbaa !717
  %31 = icmp eq i32 %30, 0, !dbg !739
  br i1 %31, label %34, label %32, !dbg !740

; <label>:32:                                     ; preds = %29
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !741
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %30, i8* %33) #10, !dbg !741
  unreachable, !dbg !741

; <label>:34:                                     ; preds = %29, %26
  store i32 0, i32* %18, align 4, !dbg !742, !tbaa !717
  %35 = tail call i32 @getgid() #10, !dbg !743
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !676, metadata !635), !dbg !744
  %36 = icmp eq i32 %35, -1, !dbg !745
  br i1 %36, label %37, label %42, !dbg !747

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %18, align 4, !dbg !748, !tbaa !717
  %39 = icmp eq i32 %38, 0, !dbg !748
  br i1 %39, label %42, label %40, !dbg !749

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !750
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %38, i8* %41) #10, !dbg !750
  unreachable, !dbg !750

; <label>:42:                                     ; preds = %37, %34
  %43 = tail call zeroext i1 @print_group_list(i8* null, i32 %19, i32 %35, i32 %27, i1 zeroext true, i8 signext 32) #10, !dbg !751
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !675, metadata !635), !dbg !701
  %44 = zext i1 %43 to i8, !dbg !753
  tail call void @llvm.dbg.value(metadata i8 %44, i64 0, metadata !675, metadata !635), !dbg !701
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !754, metadata !635) #10, !dbg !760
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !642
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %45, i64 0, i32 5, !dbg !762
  %47 = load i8*, i8** %46, align 8, !dbg !762, !tbaa !763
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %45, i64 0, i32 6, !dbg !762
  %49 = load i8*, i8** %48, align 8, !dbg !762, !tbaa !767
  %50 = icmp ult i8* %47, %49, !dbg !762
  br i1 %50, label %53, label %51, !dbg !762, !prof !768

; <label>:51:                                     ; preds = %42
  %52 = tail call i32 @__overflow(%struct._IO_FILE* %45, i32 10) #10, !dbg !762
  br label %103, !dbg !762

; <label>:53:                                     ; preds = %42
  %54 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !762
  store i8* %54, i8** %46, align 8, !dbg !762, !tbaa !763
  store i8 10, i8* %47, align 1, !dbg !762, !tbaa !769
  br label %103, !dbg !762

; <label>:55:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !675, metadata !635), !dbg !701
  %56 = icmp slt i32 %15, %0, !dbg !770
  br i1 %56, label %57, label %103, !dbg !771

; <label>:57:                                     ; preds = %55
  br label %58, !dbg !772

; <label>:58:                                     ; preds = %57, %100
  %59 = phi i32 [ %101, %100 ], [ %15, %57 ]
  %60 = phi i8 [ %89, %100 ], [ 1, %57 ]
  tail call void @llvm.dbg.value(metadata i8 %60, i64 0, metadata !675, metadata !635), !dbg !701
  %61 = sext i32 %59 to i64, !dbg !772
  %62 = getelementptr inbounds i8*, i8** %1, i64 %61, !dbg !772
  %63 = load i8*, i8** %62, align 8, !dbg !772, !tbaa !642
  %64 = tail call %struct.passwd* @getpwnam(i8* %63), !dbg !773
  tail call void @llvm.dbg.value(metadata %struct.passwd* %64, i64 0, metadata !685, metadata !635), !dbg !774
  %65 = icmp eq %struct.passwd* %64, null, !dbg !775
  br i1 %65, label %66, label %73, !dbg !777

; <label>:66:                                     ; preds = %58
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !778
  %68 = load i32, i32* @optind, align 4, !dbg !778, !tbaa !717
  %69 = sext i32 %68 to i64, !dbg !778
  %70 = getelementptr inbounds i8*, i8** %1, i64 %69, !dbg !778
  %71 = load i8*, i8** %70, align 8, !dbg !778, !tbaa !642
  %72 = tail call i8* @quote(i8* %71) #10, !dbg !778
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %67, i8* %72) #10, !dbg !778
  unreachable, !dbg !778

; <label>:73:                                     ; preds = %58
  %74 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i64 0, i32 2, !dbg !779
  %75 = load i32, i32* %74, align 8, !dbg !779, !tbaa !780
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !678, metadata !635), !dbg !726
  %76 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i64 0, i32 3, !dbg !782
  %77 = load i32, i32* %76, align 4, !dbg !782, !tbaa !783
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !677, metadata !635), !dbg !735
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !676, metadata !635), !dbg !744
  %78 = load i32, i32* @optind, align 4, !dbg !784, !tbaa !717
  %79 = sext i32 %78 to i64, !dbg !784
  %80 = getelementptr inbounds i8*, i8** %1, i64 %79, !dbg !784
  %81 = load i8*, i8** %80, align 8, !dbg !784, !tbaa !642
  %82 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %81) #10, !dbg !784
  %83 = load i32, i32* @optind, align 4, !dbg !785, !tbaa !717
  %84 = add nsw i32 %83, 1, !dbg !785
  store i32 %84, i32* @optind, align 4, !dbg !785, !tbaa !717
  %85 = sext i32 %83 to i64, !dbg !787
  %86 = getelementptr inbounds i8*, i8** %1, i64 %85, !dbg !787
  %87 = load i8*, i8** %86, align 8, !dbg !787, !tbaa !642
  %88 = tail call zeroext i1 @print_group_list(i8* %87, i32 %75, i32 %77, i32 %77, i1 zeroext true, i8 signext 32) #10, !dbg !788
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !675, metadata !635), !dbg !701
  %89 = select i1 %88, i8 %60, i8 0, !dbg !789
  tail call void @llvm.dbg.value(metadata i8 %89, i64 0, metadata !675, metadata !635), !dbg !701
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !754, metadata !635) #10, !dbg !790
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !792, !tbaa !642
  %91 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %90, i64 0, i32 5, !dbg !792
  %92 = load i8*, i8** %91, align 8, !dbg !792, !tbaa !763
  %93 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %90, i64 0, i32 6, !dbg !792
  %94 = load i8*, i8** %93, align 8, !dbg !792, !tbaa !767
  %95 = icmp ult i8* %92, %94, !dbg !792
  br i1 %95, label %98, label %96, !dbg !792, !prof !768

; <label>:96:                                     ; preds = %73
  %97 = tail call i32 @__overflow(%struct._IO_FILE* %90, i32 10) #10, !dbg !792
  br label %100, !dbg !792

; <label>:98:                                     ; preds = %73
  %99 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !792
  store i8* %99, i8** %91, align 8, !dbg !792, !tbaa !763
  store i8 10, i8* %92, align 1, !dbg !792, !tbaa !769
  br label %100, !dbg !792

; <label>:100:                                    ; preds = %96, %98
  tail call void @llvm.dbg.value(metadata i8 %89, i64 0, metadata !675, metadata !635), !dbg !701
  %101 = load i32, i32* @optind, align 4, !dbg !793, !tbaa !717
  %102 = icmp slt i32 %101, %0, !dbg !770
  br i1 %102, label %58, label %103, !dbg !771, !llvm.loop !794

; <label>:103:                                    ; preds = %100, %55, %53, %51
  %104 = phi i8 [ %44, %51 ], [ %44, %53 ], [ 1, %55 ], [ %89, %100 ]
  tail call void @llvm.dbg.value(metadata i8 %104, i64 0, metadata !675, metadata !635), !dbg !701
  %105 = and i8 %104, 1, !dbg !796
  %106 = xor i8 %105, 1, !dbg !796
  %107 = zext i8 %106 to i32, !dbg !796
  ret i32 %107, !dbg !797
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @print_group_list(i8*, i32, i32, i32, i1 zeroext, i8 signext) local_unnamed_addr #6 !dbg !798 {
  %7 = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !802, metadata !635), !dbg !824
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !803, metadata !635), !dbg !825
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !804, metadata !635), !dbg !826
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !805, metadata !635), !dbg !827
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !806, metadata !635), !dbg !828
  tail call void @llvm.dbg.value(metadata i8 %5, i64 0, metadata !807, metadata !635), !dbg !829
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !808, metadata !635), !dbg !830
  tail call void @llvm.dbg.value(metadata %struct.passwd* null, i64 0, metadata !809, metadata !635), !dbg !831
  %8 = icmp ne i8* %0, null, !dbg !832
  br i1 %8, label %9, label %13, !dbg !834

; <label>:9:                                      ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 %1) #10, !dbg !835
  tail call void @llvm.dbg.value(metadata %struct.passwd* %10, i64 0, metadata !809, metadata !635), !dbg !831
  %11 = icmp ne %struct.passwd* %10, null, !dbg !837
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !635), !dbg !830
  %12 = zext i1 %11 to i8, !dbg !839
  br label %13, !dbg !839

; <label>:13:                                     ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ]
  %15 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata %struct.passwd* %15, i64 0, metadata !809, metadata !635), !dbg !831
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !808, metadata !635), !dbg !830
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !840, metadata !635) #10, !dbg !857
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !845, metadata !635) #10, !dbg !860
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !846, metadata !635) #10, !dbg !861
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !855, metadata !635) #10, !dbg !862
  br i1 %4, label %21, label %16, !dbg !863

; <label>:16:                                     ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !864
  %18 = tail call i8* @umaxtostr(i64 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !866
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !856, metadata !635) #10, !dbg !867
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !868, !tbaa !642
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !868
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !635), !dbg !830
  br label %35

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.group* @getgrgid(i32 %2) #10, !dbg !869
  tail call void @llvm.dbg.value(metadata %struct.group* %22, i64 0, metadata !846, metadata !635) #10, !dbg !861
  %23 = icmp eq %struct.group* %22, null, !dbg !872
  br i1 %23, label %24, label %30, !dbg !874

; <label>:24:                                     ; preds = %21
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !875
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !840, metadata !635) #10, !dbg !857
  %26 = zext i32 %2 to i64, !dbg !877
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25, i64 %26) #10, !dbg !878
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !855, metadata !635) #10, !dbg !862
  %27 = tail call i8* @umaxtostr(i64 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !866
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !856, metadata !635) #10, !dbg !867
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !868, !tbaa !642
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !868
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !635), !dbg !830
  br label %35, !dbg !879

; <label>:30:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata %struct.group* %22, i64 0, metadata !846, metadata !635) #10, !dbg !861
  %31 = getelementptr inbounds %struct.group, %struct.group* %22, i64 0, i32 0, !dbg !880
  %32 = load i8*, i8** %31, align 8, !dbg !880, !tbaa !881
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !856, metadata !635) #10, !dbg !867
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !868, !tbaa !642
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10, !dbg !868
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !635), !dbg !830
  br label %35, !dbg !879

; <label>:35:                                     ; preds = %30, %16, %24
  %36 = phi i8 [ 0, %24 ], [ %14, %16 ], [ %14, %30 ]
  tail call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !808, metadata !635), !dbg !830
  %37 = icmp eq i32 %3, %2, !dbg !883
  br i1 %37, label %70, label %38, !dbg !885

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !886, !tbaa !642
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !886
  %41 = load i8*, i8** %40, align 8, !dbg !886, !tbaa !763
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !886
  %43 = load i8*, i8** %42, align 8, !dbg !886, !tbaa !767
  %44 = icmp ult i8* %41, %43, !dbg !886
  br i1 %44, label %48, label %45, !dbg !886, !prof !768

; <label>:45:                                     ; preds = %38
  %46 = zext i8 %5 to i32, !dbg !892
  %47 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 %46) #10, !dbg !886
  br label %50, !dbg !886

; <label>:48:                                     ; preds = %38
  %49 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !886
  store i8* %49, i8** %40, align 8, !dbg !886, !tbaa !763
  store i8 %5, i8* %41, align 1, !dbg !886, !tbaa !769
  br label %50, !dbg !886

; <label>:50:                                     ; preds = %45, %48
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !840, metadata !635) #10, !dbg !893
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !845, metadata !635) #10, !dbg !896
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !846, metadata !635) #10, !dbg !897
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !855, metadata !635) #10, !dbg !898
  br i1 %4, label %56, label %51, !dbg !899

; <label>:51:                                     ; preds = %50
  %52 = zext i32 %3 to i64, !dbg !900
  %53 = tail call i8* @umaxtostr(i64 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !902
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !856, metadata !635) #10, !dbg !903
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !904, !tbaa !642
  %55 = tail call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #10, !dbg !904
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !635), !dbg !830
  br label %70

; <label>:56:                                     ; preds = %50
  %57 = tail call %struct.group* @getgrgid(i32 %3) #10, !dbg !905
  tail call void @llvm.dbg.value(metadata %struct.group* %57, i64 0, metadata !846, metadata !635) #10, !dbg !897
  %58 = icmp eq %struct.group* %57, null, !dbg !906
  br i1 %58, label %59, label %65, !dbg !907

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !908
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !840, metadata !635) #10, !dbg !893
  %61 = zext i32 %3 to i64, !dbg !909
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60, i64 %61) #10, !dbg !910
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !855, metadata !635) #10, !dbg !898
  %62 = tail call i8* @umaxtostr(i64 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !902
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !856, metadata !635) #10, !dbg !903
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !904, !tbaa !642
  %64 = tail call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %63) #10, !dbg !904
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !635), !dbg !830
  br label %70, !dbg !911

; <label>:65:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata %struct.group* %57, i64 0, metadata !846, metadata !635) #10, !dbg !897
  %66 = getelementptr inbounds %struct.group, %struct.group* %57, i64 0, i32 0, !dbg !912
  %67 = load i8*, i8** %66, align 8, !dbg !912, !tbaa !881
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !856, metadata !635) #10, !dbg !903
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !904, !tbaa !642
  %69 = tail call i32 @fputs_unlocked(i8* %67, %struct._IO_FILE* %68) #10, !dbg !904
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !635), !dbg !830
  br label %70, !dbg !911

; <label>:70:                                     ; preds = %65, %51, %59, %35
  %71 = phi i8 [ %36, %35 ], [ 0, %59 ], [ %36, %51 ], [ %36, %65 ]
  tail call void @llvm.dbg.value(metadata i8 %71, i64 0, metadata !808, metadata !635), !dbg !830
  %72 = bitcast i32** %7 to i8*, !dbg !913
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #10, !dbg !913
  %73 = icmp eq %struct.passwd* %15, null, !dbg !914
  br i1 %73, label %77, label %74, !dbg !914

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i64 0, i32 3, !dbg !915
  %76 = load i32, i32* %75, align 4, !dbg !915, !tbaa !783
  br label %77, !dbg !914

; <label>:77:                                     ; preds = %70, %74
  %78 = phi i32 [ %76, %74 ], [ %3, %70 ], !dbg !914
  tail call void @llvm.dbg.value(metadata i32** %7, i64 0, metadata !820, metadata !635), !dbg !916
  %79 = call i32 @xgetgroups(i8* %0, i32 %78, i32** nonnull %7) #10, !dbg !917
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !823, metadata !635), !dbg !918
  %80 = icmp slt i32 %79, 0, !dbg !919
  br i1 %80, label %81, label %89, !dbg !921

; <label>:81:                                     ; preds = %77
  %82 = tail call i32* @__errno_location() #17, !dbg !922
  %83 = load i32, i32* %82, align 4, !tbaa !717
  br i1 %8, label %84, label %87, !dbg !926

; <label>:84:                                     ; preds = %81
  %85 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !927
  %86 = call i8* @quote(i8* nonnull %0) #10, !dbg !928
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %83, i8* %85, i8* %86) #10, !dbg !929
  br label %143, !dbg !930

; <label>:87:                                     ; preds = %81
  %88 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.18, i64 0, i64 0), i32 5) #10, !dbg !931
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %83, i8* %88) #10, !dbg !933
  br label %143

; <label>:89:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !822, metadata !635), !dbg !934
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !822, metadata !635), !dbg !934
  call void @llvm.dbg.value(metadata i8 %71, i64 0, metadata !808, metadata !635), !dbg !830
  %90 = icmp eq i32 %79, 0, !dbg !935
  %91 = load i32*, i32** %7, align 8, !tbaa !642
  call void @llvm.dbg.value(metadata i32* %91, i64 0, metadata !820, metadata !635), !dbg !916
  br i1 %90, label %144, label %92, !dbg !938

; <label>:92:                                     ; preds = %89
  %93 = zext i8 %5 to i32
  %94 = sext i32 %79 to i64, !dbg !938
  br label %95, !dbg !938

; <label>:95:                                     ; preds = %92, %138
  %96 = phi i64 [ 0, %92 ], [ %140, %138 ]
  %97 = phi i32* [ %91, %92 ], [ %142, %138 ]
  %98 = phi i8 [ %71, %92 ], [ %139, %138 ]
  call void @llvm.dbg.value(metadata i8 %98, i64 0, metadata !808, metadata !635), !dbg !830
  call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !822, metadata !635), !dbg !934
  %99 = getelementptr inbounds i32, i32* %97, i64 %96, !dbg !939
  %100 = load i32, i32* %99, align 4, !dbg !939, !tbaa !717
  %101 = icmp eq i32 %100, %2, !dbg !941
  %102 = icmp eq i32 %100, %3, !dbg !942
  %103 = or i1 %101, %102, !dbg !943
  br i1 %103, label %138, label %104, !dbg !943

; <label>:104:                                    ; preds = %95
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !944, !tbaa !642
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 5, !dbg !944
  %107 = load i8*, i8** %106, align 8, !dbg !944, !tbaa !763
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 6, !dbg !944
  %109 = load i8*, i8** %108, align 8, !dbg !944, !tbaa !767
  %110 = icmp ult i8* %107, %109, !dbg !944
  br i1 %110, label %113, label %111, !dbg !944, !prof !768

; <label>:111:                                    ; preds = %104
  %112 = call i32 @__overflow(%struct._IO_FILE* %105, i32 %93) #10, !dbg !944
  br label %115, !dbg !944

; <label>:113:                                    ; preds = %104
  %114 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !944
  store i8* %114, i8** %106, align 8, !dbg !944, !tbaa !763
  store i8 %5, i8* %107, align 1, !dbg !944, !tbaa !769
  br label %115, !dbg !944

; <label>:115:                                    ; preds = %111, %113
  %116 = load i32*, i32** %7, align 8, !dbg !947, !tbaa !642
  call void @llvm.dbg.value(metadata i32* %116, i64 0, metadata !820, metadata !635), !dbg !916
  %117 = getelementptr inbounds i32, i32* %116, i64 %96, !dbg !947
  %118 = load i32, i32* %117, align 4, !dbg !947, !tbaa !717
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !840, metadata !635) #10, !dbg !949
  call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !845, metadata !635) #10, !dbg !951
  call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !846, metadata !635) #10, !dbg !952
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !855, metadata !635) #10, !dbg !953
  br i1 %4, label %124, label %119, !dbg !954

; <label>:119:                                    ; preds = %115
  %120 = zext i32 %118 to i64, !dbg !955
  %121 = call i8* @umaxtostr(i64 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !957
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !856, metadata !635) #10, !dbg !958
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !959, !tbaa !642
  %123 = call i32 @fputs_unlocked(i8* %121, %struct._IO_FILE* %122) #10, !dbg !959
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !635), !dbg !830
  br label %138

; <label>:124:                                    ; preds = %115
  %125 = call %struct.group* @getgrgid(i32 %118) #10, !dbg !960
  call void @llvm.dbg.value(metadata %struct.group* %125, i64 0, metadata !846, metadata !635) #10, !dbg !952
  %126 = icmp eq %struct.group* %125, null, !dbg !961
  br i1 %126, label %127, label %133, !dbg !962

; <label>:127:                                    ; preds = %124
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !963
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !840, metadata !635) #10, !dbg !949
  %129 = zext i32 %118 to i64, !dbg !964
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %128, i64 %129) #10, !dbg !965
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !855, metadata !635) #10, !dbg !953
  %130 = call i8* @umaxtostr(i64 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !957
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !856, metadata !635) #10, !dbg !958
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !959, !tbaa !642
  %132 = call i32 @fputs_unlocked(i8* %130, %struct._IO_FILE* %131) #10, !dbg !959
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !635), !dbg !830
  br label %138, !dbg !966

; <label>:133:                                    ; preds = %124
  call void @llvm.dbg.value(metadata %struct.group* %125, i64 0, metadata !846, metadata !635) #10, !dbg !952
  %134 = getelementptr inbounds %struct.group, %struct.group* %125, i64 0, i32 0, !dbg !967
  %135 = load i8*, i8** %134, align 8, !dbg !967, !tbaa !881
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !856, metadata !635) #10, !dbg !958
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !959, !tbaa !642
  %137 = call i32 @fputs_unlocked(i8* %135, %struct._IO_FILE* %136) #10, !dbg !959
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !635), !dbg !830
  br label %138, !dbg !966

; <label>:138:                                    ; preds = %133, %119, %127, %95
  %139 = phi i8 [ %98, %95 ], [ 0, %127 ], [ %98, %119 ], [ %98, %133 ]
  call void @llvm.dbg.value(metadata i8 %139, i64 0, metadata !808, metadata !635), !dbg !830
  %140 = add nuw nsw i64 %96, 1, !dbg !968
  call void @llvm.dbg.value(metadata i8 %139, i64 0, metadata !808, metadata !635), !dbg !830
  %141 = icmp slt i64 %140, %94, !dbg !935
  %142 = load i32*, i32** %7, align 8, !tbaa !642
  call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !820, metadata !635), !dbg !916
  br i1 %141, label %95, label %144, !dbg !938, !llvm.loop !969

; <label>:143:                                    ; preds = %87, %84
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !808, metadata !635), !dbg !830
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #10, !dbg !971
  br label %150

; <label>:144:                                    ; preds = %138, %89
  %145 = phi i8 [ %71, %89 ], [ %139, %138 ]
  %146 = phi i32* [ %91, %89 ], [ %142, %138 ]
  %147 = bitcast i32* %146 to i8*, !dbg !972
  call void @free(i8* %147) #10, !dbg !973
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !808, metadata !635), !dbg !830
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #10, !dbg !971
  %148 = and i8 %145, 1, !dbg !974
  %149 = icmp ne i8 %148, 0, !dbg !974
  br label %150

; <label>:150:                                    ; preds = %143, %144
  %151 = phi i1 [ %149, %144 ], [ false, %143 ]
  ret i1 %151, !dbg !975
}

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

declare %struct.group* @getgrgid(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @print_group(i32, i1 zeroext) local_unnamed_addr #6 !dbg !841 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !840, metadata !635), !dbg !976
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !845, metadata !635), !dbg !977
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !846, metadata !635), !dbg !978
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !855, metadata !635), !dbg !979
  br i1 %1, label %5, label %3, !dbg !980

; <label>:3:                                      ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !981
  br label %14, !dbg !980

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 %0) #10, !dbg !983
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !846, metadata !635), !dbg !978
  %7 = icmp eq %struct.group* %6, null, !dbg !984
  br i1 %7, label %8, label %11, !dbg !985

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #10, !dbg !986
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !840, metadata !635), !dbg !976
  %10 = zext i32 %0 to i64, !dbg !987
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %9, i64 %10) #10, !dbg !988
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !855, metadata !635), !dbg !979
  br label %14, !dbg !989

; <label>:11:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !846, metadata !635), !dbg !978
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !990
  %13 = load i8*, i8** %12, align 8, !dbg !990, !tbaa !881
  br label %18, !dbg !991

; <label>:14:                                     ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %10, %8 ], !dbg !981
  %16 = phi i1 [ true, %3 ], [ false, %8 ]
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !846, metadata !635), !dbg !978
  %17 = tail call i8* @umaxtostr(i64 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !992
  br label %18, !dbg !991

; <label>:18:                                     ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %16, %14 ]
  %20 = phi i8* [ %13, %11 ], [ %17, %14 ], !dbg !991
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !856, metadata !635), !dbg !993
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !994, !tbaa !642
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #10, !dbg !994
  ret i1 %19, !dbg !995
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !996 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !998, metadata !635), !dbg !999
  store i8* %0, i8** @file_name, align 8, !dbg !1000, !tbaa !642
  ret void, !dbg !1001
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1002 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1006, metadata !635), !dbg !1007
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1008, !tbaa !1009
  ret void, !dbg !1011
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1012 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1019, !tbaa !642
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1020
  %3 = icmp eq i32 %2, 0, !dbg !1021
  br i1 %3, label %21, label %4, !dbg !1022

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1023, !tbaa !1009, !range !1024
  %6 = icmp eq i8 %5, 0, !dbg !1023
  %7 = tail call i32* @__errno_location() #17, !dbg !1025
  br i1 %6, label %11, label %8, !dbg !1027

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1028, !tbaa !717
  %10 = icmp eq i32 %9, 32, !dbg !1029
  br i1 %10, label %21, label %11, !dbg !1030

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !1031
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1016, metadata !635), !dbg !1032
  %13 = load i8*, i8** @file_name, align 8, !dbg !1033, !tbaa !642
  %14 = icmp eq i8* %13, null, !dbg !1033
  %15 = load i32, i32* %7, align 4, !tbaa !717
  br i1 %14, label %18, label %16, !dbg !1034

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1035
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.25, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1036
  br label %19, !dbg !1036

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.26, i64 0, i64 0), i8* %12) #10, !dbg !1037
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1038, !tbaa !717
  tail call void @_exit(i32 %20) #15, !dbg !1039
  unreachable, !dbg !1039

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1040, !tbaa !642
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1042
  %24 = icmp eq i32 %23, 0, !dbg !1043
  br i1 %24, label %27, label %25, !dbg !1044

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1045, !tbaa !717
  tail call void @_exit(i32 %26) #15, !dbg !1046
  unreachable, !dbg !1046

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1047
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1048 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1053, metadata !635), !dbg !1056
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1054, metadata !635), !dbg !1057
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1058
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1055, metadata !635), !dbg !1059
  store i8 0, i8* %3, align 1, !dbg !1060, !tbaa !769
  br label %4, !dbg !1061, !llvm.loop !1064

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1055, metadata !635), !dbg !1059
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1053, metadata !635), !dbg !1056
  %7 = urem i64 %5, 10, !dbg !1066
  %8 = trunc i64 %7 to i8, !dbg !1067
  %9 = or i8 %8, 48, !dbg !1067
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1068
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1055, metadata !635), !dbg !1059
  store i8 %9, i8* %10, align 1, !dbg !1069, !tbaa !769
  %11 = udiv i64 %5, 10, !dbg !1070
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1053, metadata !635), !dbg !1056
  %12 = icmp ugt i64 %5, 9, !dbg !1071
  br i1 %12, label %4, label %13, !dbg !1072, !llvm.loop !1064

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1055, metadata !635), !dbg !1059
  ret i8* %10, !dbg !1073
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1074 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1076, metadata !635), !dbg !1079
  %2 = icmp eq i8* %0, null, !dbg !1080
  br i1 %2, label %3, label %6, !dbg !1082

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1083, !tbaa !642
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1085
  tail call void @abort() #15, !dbg !1086
  unreachable, !dbg !1086

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1087
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1077, metadata !635), !dbg !1088
  %8 = icmp eq i8* %7, null, !dbg !1089
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1090
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1091
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1078, metadata !635), !dbg !1092
  %11 = ptrtoint i8* %10 to i64, !dbg !1093
  %12 = ptrtoint i8* %0 to i64, !dbg !1093
  %13 = sub i64 %11, %12, !dbg !1093
  %14 = icmp sgt i64 %13, 6, !dbg !1095
  br i1 %14, label %15, label %24, !dbg !1096

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1097
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.36, i64 0, i64 0), i64 7) #14, !dbg !1098
  %18 = icmp eq i32 %17, 0, !dbg !1099
  br i1 %18, label %19, label %24, !dbg !1100

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1076, metadata !635), !dbg !1079
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.37, i64 0, i64 0), i64 3) #14, !dbg !1101
  %21 = icmp eq i32 %20, 0, !dbg !1104
  br i1 %21, label %22, label %24, !dbg !1105

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1106
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1076, metadata !635), !dbg !1079
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1108, !tbaa !642
  br label %24, !dbg !1109

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1076, metadata !635), !dbg !1079
  store i8* %25, i8** @program_name, align 8, !dbg !1110, !tbaa !642
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1111, !tbaa !642
  ret void, !dbg !1112
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1113 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1118, metadata !635), !dbg !1121
  %2 = tail call i32* @__errno_location() #17, !dbg !1122
  %3 = load i32, i32* %2, align 4, !dbg !1122, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1119, metadata !635), !dbg !1123
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1124
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1124
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !1124
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1125
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1125
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1120, metadata !635), !dbg !1126
  store i32 %3, i32* %2, align 4, !dbg !1127, !tbaa !717
  ret %struct.quoting_options* %8, !dbg !1128
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1129 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1135, metadata !635), !dbg !1136
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1137
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1137
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1138
  %5 = load i32, i32* %4, align 8, !dbg !1138, !tbaa !1139
  ret i32 %5, !dbg !1141
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1142 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1146, metadata !635), !dbg !1148
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1147, metadata !635), !dbg !1149
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1150
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1150
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1151
  store i32 %1, i32* %5, align 8, !dbg !1152, !tbaa !1139
  ret void, !dbg !1153
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1154 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1158, metadata !635), !dbg !1166
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1159, metadata !635), !dbg !1167
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1160, metadata !635), !dbg !1168
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1161, metadata !635), !dbg !1169
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1170
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1170
  %6 = lshr i8 %1, 5, !dbg !1171
  %7 = zext i8 %6 to i64, !dbg !1171
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1172
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1162, metadata !635), !dbg !1173
  %9 = and i8 %1, 31, !dbg !1174
  %10 = zext i8 %9 to i32, !dbg !1175
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1164, metadata !635), !dbg !1176
  %11 = load i32, i32* %8, align 4, !dbg !1177, !tbaa !717
  %12 = lshr i32 %11, %10, !dbg !1178
  %13 = and i32 %12, 1, !dbg !1179
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1165, metadata !635), !dbg !1180
  %14 = and i32 %2, 1, !dbg !1181
  %15 = xor i32 %13, %14, !dbg !1182
  %16 = shl i32 %15, %10, !dbg !1183
  %17 = xor i32 %16, %11, !dbg !1184
  store i32 %17, i32* %8, align 4, !dbg !1184, !tbaa !717
  ret i32 %13, !dbg !1185
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1186 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1190, metadata !635), !dbg !1193
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1191, metadata !635), !dbg !1194
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1195
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1190, metadata !635), !dbg !1193
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1197
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1190, metadata !635), !dbg !1193
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1198
  %6 = load i32, i32* %5, align 4, !dbg !1198, !tbaa !1199
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1192, metadata !635), !dbg !1200
  store i32 %1, i32* %5, align 4, !dbg !1201, !tbaa !1199
  ret i32 %6, !dbg !1202
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1203 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1207, metadata !635), !dbg !1210
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1208, metadata !635), !dbg !1211
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1209, metadata !635), !dbg !1212
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1213
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1207, metadata !635), !dbg !1210
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1215
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1207, metadata !635), !dbg !1210
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1216
  store i32 10, i32* %6, align 8, !dbg !1217, !tbaa !1139
  %7 = icmp ne i8* %1, null, !dbg !1218
  %8 = icmp ne i8* %2, null, !dbg !1220
  %9 = and i1 %7, %8, !dbg !1221
  br i1 %9, label %11, label %10, !dbg !1221

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1222
  unreachable, !dbg !1222

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1223
  store i8* %1, i8** %12, align 8, !dbg !1224, !tbaa !1225
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1226
  store i8* %2, i8** %13, align 8, !dbg !1227, !tbaa !1228
  ret void, !dbg !1229
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1230 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1234, metadata !635), !dbg !1242
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1235, metadata !635), !dbg !1243
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1236, metadata !635), !dbg !1244
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1237, metadata !635), !dbg !1245
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1238, metadata !635), !dbg !1246
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1247
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1247
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1239, metadata !635), !dbg !1248
  %8 = tail call i32* @__errno_location() #17, !dbg !1249
  %9 = load i32, i32* %8, align 4, !dbg !1249, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1240, metadata !635), !dbg !1250
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1251
  %11 = load i32, i32* %10, align 8, !dbg !1251, !tbaa !1139
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1252
  %13 = load i32, i32* %12, align 4, !dbg !1252, !tbaa !1199
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1253
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1254
  %16 = load i8*, i8** %15, align 8, !dbg !1254, !tbaa !1225
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1255
  %18 = load i8*, i8** %17, align 8, !dbg !1255, !tbaa !1228
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1256
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1241, metadata !635), !dbg !1257
  store i32 %9, i32* %8, align 4, !dbg !1258, !tbaa !717
  ret i64 %19, !dbg !1259
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1260 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1266, metadata !635), !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1267, metadata !635), !dbg !1331
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1268, metadata !635), !dbg !1332
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1269, metadata !635), !dbg !1333
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1270, metadata !635), !dbg !1334
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1271, metadata !635), !dbg !1335
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1272, metadata !635), !dbg !1336
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1273, metadata !635), !dbg !1337
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1274, metadata !635), !dbg !1338
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1276, metadata !635), !dbg !1339
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1277, metadata !635), !dbg !1340
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1278, metadata !635), !dbg !1341
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1279, metadata !635), !dbg !1342
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1280, metadata !635), !dbg !1343
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1344
  %14 = icmp eq i64 %13, 1, !dbg !1345
  %15 = lshr i32 %5, 1, !dbg !1346
  %16 = trunc i32 %15 to i8, !dbg !1346
  %17 = and i8 %16, 1, !dbg !1346
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1282, metadata !635), !dbg !1346
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1283, metadata !635), !dbg !1347
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1284, metadata !635), !dbg !1348
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1285, metadata !635), !dbg !1349
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1350

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1267, metadata !635), !dbg !1331
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1285, metadata !635), !dbg !1349
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1284, metadata !635), !dbg !1348
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1282, metadata !635), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1269, metadata !635), !dbg !1333
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1280, metadata !635), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1279, metadata !635), !dbg !1342
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1278, metadata !635), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1277, metadata !635), !dbg !1340
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1274, metadata !635), !dbg !1338
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1273, metadata !635), !dbg !1337
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1270, metadata !635), !dbg !1334
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
  ], !dbg !1351

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1270, metadata !635), !dbg !1334
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1282, metadata !635), !dbg !1346
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1282, metadata !635), !dbg !1346
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1270, metadata !635), !dbg !1334
  br label %94, !dbg !1352

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1282, metadata !635), !dbg !1346
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1270, metadata !635), !dbg !1334
  %43 = and i8 %36, 1, !dbg !1354
  %44 = icmp eq i8 %43, 0, !dbg !1354
  br i1 %44, label %45, label %94, !dbg !1352

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1356
  br i1 %46, label %94, label %47, !dbg !1359

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1356, !tbaa !769
  br label %94, !dbg !1356

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.48, i64 0, i64 0), i32 %28), !dbg !1360
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1273, metadata !635), !dbg !1337
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), i32 %28), !dbg !1364
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1274, metadata !635), !dbg !1338
  br label %51, !dbg !1365

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1274, metadata !635), !dbg !1338
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1273, metadata !635), !dbg !1337
  %54 = and i8 %36, 1, !dbg !1366
  %55 = icmp eq i8 %54, 0, !dbg !1366
  br i1 %55, label %56, label %72, !dbg !1368

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1278, metadata !635), !dbg !1341
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1278, metadata !635), !dbg !1341
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1276, metadata !635), !dbg !1339
  %57 = load i8, i8* %52, align 1, !dbg !1369, !tbaa !769
  %58 = icmp eq i8 %57, 0, !dbg !1372
  br i1 %58, label %72, label %59, !dbg !1372

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1373

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1278, metadata !635), !dbg !1341
  %64 = icmp ult i64 %63, %40, !dbg !1373
  br i1 %64, label %65, label %67, !dbg !1376

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1373
  store i8 %61, i8* %66, align 1, !dbg !1373, !tbaa !769
  br label %67, !dbg !1373

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1276, metadata !635), !dbg !1339
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1377
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1278, metadata !635), !dbg !1341
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1278, metadata !635), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1276, metadata !635), !dbg !1339
  %70 = load i8, i8* %69, align 1, !dbg !1369, !tbaa !769
  %71 = icmp eq i8 %70, 0, !dbg !1372
  br i1 %71, label %72, label %60, !dbg !1372, !llvm.loop !1378

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1280, metadata !635), !dbg !1343
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1278, metadata !635), !dbg !1341
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1279, metadata !635), !dbg !1342
  br label %94, !dbg !1381

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1280, metadata !635), !dbg !1343
  br label %76, !dbg !1382

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1280, metadata !635), !dbg !1343
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1282, metadata !635), !dbg !1346
  br label %78, !dbg !1383

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1282, metadata !635), !dbg !1346
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1280, metadata !635), !dbg !1343
  %81 = and i8 %80, 1, !dbg !1384
  %82 = icmp eq i8 %81, 0, !dbg !1384
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1280, metadata !635), !dbg !1343
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1386
  br label %84, !dbg !1386

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1282, metadata !635), !dbg !1346
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1280, metadata !635), !dbg !1343
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1270, metadata !635), !dbg !1334
  %87 = and i8 %86, 1, !dbg !1387
  %88 = icmp eq i8 %87, 0, !dbg !1387
  br i1 %88, label %89, label %94, !dbg !1389

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1390
  br i1 %90, label %94, label %91, !dbg !1393

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1390, !tbaa !769
  br label %94, !dbg !1390

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1282, metadata !635), !dbg !1346
  br label %94, !dbg !1394

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1395
  unreachable, !dbg !1395

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1282, metadata !635), !dbg !1346
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1280, metadata !635), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1279, metadata !635), !dbg !1342
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1278, metadata !635), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1274, metadata !635), !dbg !1338
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1273, metadata !635), !dbg !1337
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1270, metadata !635), !dbg !1334
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1275, metadata !635), !dbg !1396
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
  br label %122, !dbg !1397

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1267, metadata !635), !dbg !1331
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1285, metadata !635), !dbg !1349
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1284, metadata !635), !dbg !1348
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1269, metadata !635), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1277, metadata !635), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1275, metadata !635), !dbg !1396
  %131 = icmp eq i64 %126, -1, !dbg !1398
  br i1 %131, label %134, label %132, !dbg !1399

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1400
  br i1 %133, label %590, label %138, !dbg !1401

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1402
  %136 = load i8, i8* %135, align 1, !dbg !1402, !tbaa !769
  %137 = icmp eq i8 %136, 0, !dbg !1403
  br i1 %137, label %590, label %138, !dbg !1401

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1291, metadata !635), !dbg !1404
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1292, metadata !635), !dbg !1405
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1293, metadata !635), !dbg !1406
  br i1 %108, label %139, label %154, !dbg !1407

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1409
  %141 = and i1 %109, %131, !dbg !1410
  br i1 %141, label %142, label %144, !dbg !1410

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1269, metadata !635), !dbg !1333
  br label %144, !dbg !1412

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1269, metadata !635), !dbg !1333
  %146 = icmp ugt i64 %140, %145, !dbg !1413
  br i1 %146, label %154, label %147, !dbg !1414

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1415
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1416
  %150 = icmp ne i32 %149, 0, !dbg !1417
  %151 = or i1 %150, %111, !dbg !1418
  %152 = xor i1 %150, true, !dbg !1418
  %153 = zext i1 %152 to i8, !dbg !1418
  br i1 %151, label %154, label %635, !dbg !1418

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1291, metadata !635), !dbg !1404
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1269, metadata !635), !dbg !1333
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1419
  %158 = load i8, i8* %157, align 1, !dbg !1419, !tbaa !769
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1286, metadata !635), !dbg !1420
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
  ], !dbg !1421

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1422

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1423

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1292, metadata !635), !dbg !1405
  %162 = and i8 %127, 1, !dbg !1427
  %163 = icmp eq i8 %162, 0, !dbg !1427
  %164 = and i1 %113, %163, !dbg !1427
  br i1 %164, label %165, label %181, !dbg !1427

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1429
  br i1 %166, label %167, label %169, !dbg !1433

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1429
  store i8 39, i8* %168, align 1, !dbg !1429, !tbaa !769
  br label %169, !dbg !1429

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1276, metadata !635), !dbg !1339
  %171 = icmp ult i64 %170, %130, !dbg !1434
  br i1 %171, label %172, label %174, !dbg !1437

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1434
  store i8 36, i8* %173, align 1, !dbg !1434, !tbaa !769
  br label %174, !dbg !1434

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1276, metadata !635), !dbg !1339
  %176 = icmp ult i64 %175, %130, !dbg !1438
  br i1 %176, label %177, label %179, !dbg !1441

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1438
  store i8 39, i8* %178, align 1, !dbg !1438, !tbaa !769
  br label %179, !dbg !1438

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1283, metadata !635), !dbg !1347
  br label %181, !dbg !1442

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1276, metadata !635), !dbg !1339
  %184 = icmp ult i64 %182, %130, !dbg !1443
  br i1 %184, label %185, label %187, !dbg !1446

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1443
  store i8 92, i8* %186, align 1, !dbg !1443, !tbaa !769
  br label %187, !dbg !1443

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1276, metadata !635), !dbg !1339
  br i1 %105, label %189, label %470, !dbg !1447

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1449
  %191 = icmp ult i64 %190, %155, !dbg !1450
  br i1 %191, label %192, label %470, !dbg !1451

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1452
  %194 = load i8, i8* %193, align 1, !dbg !1452, !tbaa !769
  %195 = add i8 %194, -48, !dbg !1453
  %196 = icmp ult i8 %195, 10, !dbg !1453
  br i1 %196, label %197, label %470, !dbg !1453

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1454
  br i1 %198, label %199, label %201, !dbg !1458

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1454
  store i8 48, i8* %200, align 1, !dbg !1454, !tbaa !769
  br label %201, !dbg !1454

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1276, metadata !635), !dbg !1339
  %203 = icmp ult i64 %202, %130, !dbg !1459
  br i1 %203, label %204, label %206, !dbg !1462

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1459
  store i8 48, i8* %205, align 1, !dbg !1459, !tbaa !769
  br label %206, !dbg !1459

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1276, metadata !635), !dbg !1339
  br label %470, !dbg !1463

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1464

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1465

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1466

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1468

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1470
  %214 = icmp ult i64 %213, %155, !dbg !1471
  br i1 %214, label %215, label %470, !dbg !1472

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1473
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1474
  %218 = load i8, i8* %217, align 1, !dbg !1474, !tbaa !769
  %219 = icmp eq i8 %218, 63, !dbg !1475
  br i1 %219, label %220, label %470, !dbg !1476

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1477
  %222 = load i8, i8* %221, align 1, !dbg !1477, !tbaa !769
  %223 = sext i8 %222 to i32, !dbg !1477
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
  ], !dbg !1478

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1479

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1286, metadata !635), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1275, metadata !635), !dbg !1396
  %226 = icmp ult i64 %124, %130, !dbg !1481
  br i1 %226, label %227, label %229, !dbg !1484

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1481
  store i8 63, i8* %228, align 1, !dbg !1481, !tbaa !769
  br label %229, !dbg !1481

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1276, metadata !635), !dbg !1339
  %231 = icmp ult i64 %230, %130, !dbg !1485
  br i1 %231, label %232, label %234, !dbg !1488

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1485
  store i8 34, i8* %233, align 1, !dbg !1485, !tbaa !769
  br label %234, !dbg !1485

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1276, metadata !635), !dbg !1339
  %236 = icmp ult i64 %235, %130, !dbg !1489
  br i1 %236, label %237, label %239, !dbg !1492

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1489
  store i8 34, i8* %238, align 1, !dbg !1489, !tbaa !769
  br label %239, !dbg !1489

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1276, metadata !635), !dbg !1339
  %241 = icmp ult i64 %240, %130, !dbg !1493
  br i1 %241, label %242, label %244, !dbg !1496

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1493
  store i8 63, i8* %243, align 1, !dbg !1493, !tbaa !769
  br label %244, !dbg !1493

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1276, metadata !635), !dbg !1339
  br label %470, !dbg !1497

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1290, metadata !635), !dbg !1498
  br label %256, !dbg !1499

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1290, metadata !635), !dbg !1498
  br label %256, !dbg !1500

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1290, metadata !635), !dbg !1498
  br label %254, !dbg !1501

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1290, metadata !635), !dbg !1498
  br label %254, !dbg !1502

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1290, metadata !635), !dbg !1498
  br label %256, !dbg !1503

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1290, metadata !635), !dbg !1498
  br i1 %113, label %252, label %253, !dbg !1504

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1505

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1508

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1290, metadata !635), !dbg !1498
  br i1 %117, label %256, label %635, !dbg !1510

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1290, metadata !635), !dbg !1498
  br i1 %104, label %497, label %470, !dbg !1512

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1513
  br i1 %259, label %260, label %265, !dbg !1515

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1516, !tbaa !769
  %262 = icmp ne i8 %261, 0, !dbg !1517
  %263 = icmp ne i64 %123, 0, !dbg !1518
  %264 = or i1 %263, %262, !dbg !1520
  br i1 %264, label %470, label %271, !dbg !1520

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1521
  %267 = icmp ne i64 %123, 0, !dbg !1518
  %268 = or i1 %267, %266, !dbg !1515
  br i1 %268, label %470, label %271, !dbg !1515

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1518
  br i1 %270, label %271, label %470, !dbg !1522

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1293, metadata !635), !dbg !1406
  br label %272, !dbg !1523

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1293, metadata !635), !dbg !1406
  br i1 %117, label %470, label %635, !dbg !1524

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1284, metadata !635), !dbg !1348
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1293, metadata !635), !dbg !1406
  br i1 %113, label %275, label %470, !dbg !1526

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1527

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1530
  %278 = icmp ne i64 %125, 0, !dbg !1532
  %279 = or i1 %278, %277, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1277, metadata !635), !dbg !1340
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1267, metadata !635), !dbg !1331
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1533
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1267, metadata !635), !dbg !1331
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1277, metadata !635), !dbg !1340
  %282 = icmp ult i64 %124, %281, !dbg !1534
  br i1 %282, label %283, label %285, !dbg !1537

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1534
  store i8 39, i8* %284, align 1, !dbg !1534, !tbaa !769
  br label %285, !dbg !1534

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1276, metadata !635), !dbg !1339
  %287 = icmp ult i64 %286, %281, !dbg !1538
  br i1 %287, label %288, label %290, !dbg !1541

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1538
  store i8 92, i8* %289, align 1, !dbg !1538, !tbaa !769
  br label %290, !dbg !1538

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1276, metadata !635), !dbg !1339
  %292 = icmp ult i64 %291, %281, !dbg !1542
  br i1 %292, label %293, label %295, !dbg !1545

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1542
  store i8 39, i8* %294, align 1, !dbg !1542, !tbaa !769
  br label %295, !dbg !1542

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1283, metadata !635), !dbg !1347
  br label %470, !dbg !1546

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1547

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1294, metadata !635), !dbg !1548
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1549
  %300 = load i16*, i16** %299, align 8, !dbg !1549, !tbaa !642
  %301 = zext i8 %158 to i64, !dbg !1549
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1549
  %303 = load i16, i16* %302, align 2, !dbg !1549, !tbaa !1551
  %304 = lshr i16 %303, 14, !dbg !1552
  %305 = trunc i16 %304 to i8, !dbg !1552
  %306 = and i8 %305, 1, !dbg !1552
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1297, metadata !635), !dbg !1553
  br label %362, !dbg !1554

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1555
  store i64 0, i64* %10, align 8, !dbg !1556
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1294, metadata !635), !dbg !1548
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1297, metadata !635), !dbg !1553
  %308 = icmp eq i64 %155, -1, !dbg !1557
  br i1 %308, label %309, label %311, !dbg !1559

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1269, metadata !635), !dbg !1333
  br label %311, !dbg !1561

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1269, metadata !635), !dbg !1333
  br label %313, !dbg !1562, !llvm.loop !1563

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1297, metadata !635), !dbg !1553
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1294, metadata !635), !dbg !1548
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1565
  %316 = add i64 %314, %123, !dbg !1566
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1567
  %318 = sub i64 %312, %316, !dbg !1568
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1298, metadata !635), !dbg !1569
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1316, metadata !635), !dbg !1570
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #10, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1319, metadata !635), !dbg !1572
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1573

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1297, metadata !635), !dbg !1553
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1294, metadata !635), !dbg !1548
  %321 = icmp ugt i64 %312, %316, !dbg !1574
  br i1 %321, label %322, label %347, !dbg !1576

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1577

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1294, metadata !635), !dbg !1548
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1577
  %327 = load i8, i8* %326, align 1, !dbg !1577, !tbaa !769
  %328 = icmp eq i8 %327, 0, !dbg !1576
  br i1 %328, label %347, label %329, !dbg !1578

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1294, metadata !635), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1294, metadata !635), !dbg !1548
  %331 = add i64 %330, %123, !dbg !1580
  %332 = icmp ult i64 %331, %312, !dbg !1574
  br i1 %332, label %323, label %347, !dbg !1576, !llvm.loop !1581

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1582
  %335 = and i1 %115, %334, !dbg !1585
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1320, metadata !635), !dbg !1586
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1320, metadata !635), !dbg !1586
  br i1 %335, label %336, label %350, !dbg !1585

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1587

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1320, metadata !635), !dbg !1586
  %339 = add i64 %338, %316, !dbg !1587
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1588
  %341 = load i8, i8* %340, align 1, !dbg !1588, !tbaa !769
  %342 = sext i8 %341 to i32, !dbg !1588
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1589

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1320, metadata !635), !dbg !1586
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1320, metadata !635), !dbg !1586
  %345 = icmp ult i64 %344, %319, !dbg !1582
  br i1 %345, label %337, label %350, !dbg !1591, !llvm.loop !1592

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1594

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1297, metadata !635), !dbg !1553
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1294, metadata !635), !dbg !1548
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1594
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1595, !tbaa !717
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1316, metadata !635), !dbg !1570
  %352 = call i32 @iswprint(i32 %351) #10, !dbg !1597
  %353 = icmp eq i32 %352, 0, !dbg !1597
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1297, metadata !635), !dbg !1553
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1598
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1297, metadata !635), !dbg !1553
  %355 = add i64 %319, %314, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1294, metadata !635), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1297, metadata !635), !dbg !1553
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1294, metadata !635), !dbg !1548
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1594
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1298, metadata !635), !dbg !1569
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1600
  %357 = icmp eq i32 %356, 0, !dbg !1601
  br i1 %357, label %313, label %358, !dbg !1602, !llvm.loop !1563

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1603
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1297, metadata !635), !dbg !1553
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1294, metadata !635), !dbg !1548
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #10, !dbg !1594
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !dbg !1603
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1297, metadata !635), !dbg !1553
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1294, metadata !635), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1269, metadata !635), !dbg !1333
  %366 = and i8 %365, 1, !dbg !1604
  %367 = icmp ne i8 %366, 0, !dbg !1604
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1293, metadata !635), !dbg !1406
  %368 = icmp ult i64 %364, 2, !dbg !1605
  %369 = or i1 %367, %112, !dbg !1606
  %370 = and i1 %368, %369, !dbg !1607
  br i1 %370, label %470, label %371, !dbg !1607

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1327, metadata !635), !dbg !1609
  br label %373, !dbg !1610

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1292, metadata !635), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1291, metadata !635), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1286, metadata !635), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1275, metadata !635), !dbg !1396
  br i1 %369, label %426, label %380, !dbg !1611

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1616

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1292, metadata !635), !dbg !1405
  %382 = and i8 %376, 1, !dbg !1619
  %383 = icmp eq i8 %382, 0, !dbg !1619
  %384 = and i1 %113, %383, !dbg !1619
  br i1 %384, label %385, label %401, !dbg !1619

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1621
  br i1 %386, label %387, label %389, !dbg !1625

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1621
  store i8 39, i8* %388, align 1, !dbg !1621, !tbaa !769
  br label %389, !dbg !1621

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1276, metadata !635), !dbg !1339
  %391 = icmp ult i64 %390, %130, !dbg !1626
  br i1 %391, label %392, label %394, !dbg !1629

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1626
  store i8 36, i8* %393, align 1, !dbg !1626, !tbaa !769
  br label %394, !dbg !1626

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1276, metadata !635), !dbg !1339
  %396 = icmp ult i64 %395, %130, !dbg !1630
  br i1 %396, label %397, label %399, !dbg !1633

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1630
  store i8 39, i8* %398, align 1, !dbg !1630, !tbaa !769
  br label %399, !dbg !1630

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1283, metadata !635), !dbg !1347
  br label %401, !dbg !1634

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1276, metadata !635), !dbg !1339
  %404 = icmp ult i64 %402, %130, !dbg !1635
  br i1 %404, label %405, label %407, !dbg !1638

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1635
  store i8 92, i8* %406, align 1, !dbg !1635, !tbaa !769
  br label %407, !dbg !1635

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1276, metadata !635), !dbg !1339
  %409 = icmp ult i64 %408, %130, !dbg !1639
  br i1 %409, label %410, label %414, !dbg !1642

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1639
  %412 = or i8 %411, 48, !dbg !1639
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1639
  store i8 %412, i8* %413, align 1, !dbg !1639, !tbaa !769
  br label %414, !dbg !1639

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1276, metadata !635), !dbg !1339
  %416 = icmp ult i64 %415, %130, !dbg !1643
  br i1 %416, label %417, label %422, !dbg !1646

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1643
  %419 = and i8 %418, 7, !dbg !1643
  %420 = or i8 %419, 48, !dbg !1643
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1643
  store i8 %420, i8* %421, align 1, !dbg !1643, !tbaa !769
  br label %422, !dbg !1643

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1276, metadata !635), !dbg !1339
  %424 = and i8 %377, 7, !dbg !1647
  %425 = or i8 %424, 48, !dbg !1648
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1286, metadata !635), !dbg !1420
  br label %435, !dbg !1649

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1650
  %428 = icmp eq i8 %427, 0, !dbg !1650
  br i1 %428, label %435, label %429, !dbg !1652

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1653
  br i1 %430, label %431, label %433, !dbg !1657

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1653
  store i8 92, i8* %432, align 1, !dbg !1653, !tbaa !769
  br label %433, !dbg !1653

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1291, metadata !635), !dbg !1404
  br label %435, !dbg !1658

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1292, metadata !635), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1291, metadata !635), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1286, metadata !635), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1276, metadata !635), !dbg !1339
  %441 = add i64 %374, 1, !dbg !1659
  %442 = icmp ugt i64 %372, %441, !dbg !1661
  br i1 %442, label %443, label %535, !dbg !1662

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1663
  %445 = icmp ne i8 %444, 0, !dbg !1663
  %446 = and i8 %440, 1, !dbg !1663
  %447 = icmp eq i8 %446, 0, !dbg !1663
  %448 = and i1 %445, %447, !dbg !1663
  br i1 %448, label %449, label %460, !dbg !1663

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1666
  br i1 %450, label %451, label %453, !dbg !1670

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1666
  store i8 39, i8* %452, align 1, !dbg !1666, !tbaa !769
  br label %453, !dbg !1666

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1276, metadata !635), !dbg !1339
  %455 = icmp ult i64 %454, %130, !dbg !1671
  br i1 %455, label %456, label %458, !dbg !1674

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1671
  store i8 39, i8* %457, align 1, !dbg !1671, !tbaa !769
  br label %458, !dbg !1671

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1283, metadata !635), !dbg !1347
  br label %460, !dbg !1675

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1276, metadata !635), !dbg !1339
  %463 = icmp ult i64 %461, %130, !dbg !1676
  br i1 %463, label %464, label %466, !dbg !1679

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1676
  store i8 %438, i8* %465, align 1, !dbg !1676, !tbaa !769
  br label %466, !dbg !1676

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1275, metadata !635), !dbg !1396
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1680
  %469 = load i8, i8* %468, align 1, !dbg !1680, !tbaa !769
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1286, metadata !635), !dbg !1420
  br label %373, !dbg !1681, !llvm.loop !1682

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1267, metadata !635), !dbg !1331
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1293, metadata !635), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1292, metadata !635), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1291, metadata !635), !dbg !1404
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1286, metadata !635), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1284, metadata !635), !dbg !1348
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1269, metadata !635), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1277, metadata !635), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1275, metadata !635), !dbg !1396
  br i1 %106, label %482, label %481, !dbg !1685

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1687

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1688

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1689
  %485 = zext i8 %484 to i64, !dbg !1689
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1690
  %487 = load i32, i32* %486, align 4, !dbg !1690, !tbaa !717
  %488 = and i8 %477, 31, !dbg !1691
  %489 = zext i8 %488 to i32, !dbg !1692
  %490 = shl i32 1, %489, !dbg !1693
  %491 = and i32 %487, %490, !dbg !1693
  %492 = icmp eq i32 %491, 0, !dbg !1693
  %493 = icmp eq i8 %156, 0, !dbg !1694
  %494 = and i1 %493, %492, !dbg !1695
  br i1 %494, label %535, label %497, !dbg !1695

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1694
  br i1 %496, label %535, label %497, !dbg !1696

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1267, metadata !635), !dbg !1331
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1293, metadata !635), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1286, metadata !635), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1284, metadata !635), !dbg !1348
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1269, metadata !635), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1277, metadata !635), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1275, metadata !635), !dbg !1396
  br i1 %111, label %507, label %635, !dbg !1697

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1292, metadata !635), !dbg !1405
  %508 = and i8 %502, 1, !dbg !1699
  %509 = icmp eq i8 %508, 0, !dbg !1699
  %510 = and i1 %113, %509, !dbg !1699
  br i1 %510, label %511, label %527, !dbg !1699

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1701
  br i1 %512, label %513, label %515, !dbg !1705

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1701
  store i8 39, i8* %514, align 1, !dbg !1701, !tbaa !769
  br label %515, !dbg !1701

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1276, metadata !635), !dbg !1339
  %517 = icmp ult i64 %516, %506, !dbg !1706
  br i1 %517, label %518, label %520, !dbg !1709

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1706
  store i8 36, i8* %519, align 1, !dbg !1706, !tbaa !769
  br label %520, !dbg !1706

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1276, metadata !635), !dbg !1339
  %522 = icmp ult i64 %521, %506, !dbg !1710
  br i1 %522, label %523, label %525, !dbg !1713

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1710
  store i8 39, i8* %524, align 1, !dbg !1710, !tbaa !769
  br label %525, !dbg !1710

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1283, metadata !635), !dbg !1347
  br label %527, !dbg !1714

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1276, metadata !635), !dbg !1339
  %530 = icmp ult i64 %528, %506, !dbg !1715
  br i1 %530, label %531, label %533, !dbg !1718

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1715
  store i8 92, i8* %532, align 1, !dbg !1715, !tbaa !769
  br label %533, !dbg !1715

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1267, metadata !635), !dbg !1331
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1293, metadata !635), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1292, metadata !635), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1286, metadata !635), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1284, metadata !635), !dbg !1348
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1269, metadata !635), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1277, metadata !635), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1275, metadata !635), !dbg !1396
  br label %562, !dbg !1719

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1267, metadata !635), !dbg !1331
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1293, metadata !635), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1292, metadata !635), !dbg !1405
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1286, metadata !635), !dbg !1420
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1284, metadata !635), !dbg !1348
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1269, metadata !635), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1277, metadata !635), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1275, metadata !635), !dbg !1396
  %546 = and i8 %540, 1, !dbg !1719
  %547 = icmp ne i8 %546, 0, !dbg !1719
  %548 = and i8 %543, 1, !dbg !1719
  %549 = icmp eq i8 %548, 0, !dbg !1719
  %550 = and i1 %547, %549, !dbg !1719
  br i1 %550, label %551, label %562, !dbg !1719

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1722
  br i1 %552, label %553, label %555, !dbg !1726

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1722
  store i8 39, i8* %554, align 1, !dbg !1722, !tbaa !769
  br label %555, !dbg !1722

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1276, metadata !635), !dbg !1339
  %557 = icmp ult i64 %556, %545, !dbg !1727
  br i1 %557, label %558, label %560, !dbg !1730

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1727
  store i8 39, i8* %559, align 1, !dbg !1727, !tbaa !769
  br label %560, !dbg !1727

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1283, metadata !635), !dbg !1347
  br label %562, !dbg !1731

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1276, metadata !635), !dbg !1339
  %572 = icmp ult i64 %570, %563, !dbg !1732
  br i1 %572, label %573, label %575, !dbg !1735

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1732
  store i8 %565, i8* %574, align 1, !dbg !1732, !tbaa !769
  br label %575, !dbg !1732

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1276, metadata !635), !dbg !1339
  %577 = and i8 %564, 1, !dbg !1736
  %578 = icmp eq i8 %577, 0, !dbg !1736
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1285, metadata !635), !dbg !1349
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1738
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1285, metadata !635), !dbg !1349
  br label %580, !dbg !1739

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1267, metadata !635), !dbg !1331
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1285, metadata !635), !dbg !1349
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1284, metadata !635), !dbg !1348
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1283, metadata !635), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1269, metadata !635), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1277, metadata !635), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1275, metadata !635), !dbg !1396
  %589 = add i64 %581, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1275, metadata !635), !dbg !1396
  br label %122, !dbg !1741, !llvm.loop !1742

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1744
  %593 = and i1 %113, %592, !dbg !1746
  %594 = xor i1 %593, true, !dbg !1746
  %595 = or i1 %111, %594, !dbg !1746
  br i1 %595, label %596, label %635, !dbg !1746

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1747
  %598 = xor i1 %597, true, !dbg !1747
  %599 = and i8 %128, 1, !dbg !1749
  %600 = icmp eq i8 %599, 0, !dbg !1749
  %601 = or i1 %600, %598, !dbg !1747
  br i1 %601, label %611, label %602, !dbg !1747

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1750
  %604 = icmp eq i8 %603, 0, !dbg !1750
  br i1 %604, label %607, label %605, !dbg !1753

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1754
  br label %645, !dbg !1755

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1756
  %609 = icmp ne i64 %125, 0, !dbg !1758
  %610 = and i1 %609, %608, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1267, metadata !635), !dbg !1331
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1276, metadata !635), !dbg !1339
  br i1 %610, label %27, label %611, !dbg !1759

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1760
  %613 = and i1 %612, %111, !dbg !1762
  br i1 %613, label %614, label %630, !dbg !1762

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1278, metadata !635), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1276, metadata !635), !dbg !1339
  %615 = load i8, i8* %99, align 1, !dbg !1763, !tbaa !769
  %616 = icmp eq i8 %615, 0, !dbg !1766
  br i1 %616, label %630, label %617, !dbg !1766

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1767

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1276, metadata !635), !dbg !1339
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1278, metadata !635), !dbg !1341
  %622 = icmp ult i64 %621, %130, !dbg !1767
  br i1 %622, label %623, label %625, !dbg !1770

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1767
  store i8 %619, i8* %624, align 1, !dbg !1767, !tbaa !769
  br label %625, !dbg !1767

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1276, metadata !635), !dbg !1339
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1771
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1278, metadata !635), !dbg !1341
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1278, metadata !635), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1276, metadata !635), !dbg !1339
  %628 = load i8, i8* %627, align 1, !dbg !1763, !tbaa !769
  %629 = icmp eq i8 %628, 0, !dbg !1766
  br i1 %629, label %630, label %618, !dbg !1766, !llvm.loop !1772

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1276, metadata !635), !dbg !1339
  %632 = icmp ult i64 %631, %130, !dbg !1774
  br i1 %632, label %633, label %645, !dbg !1776

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1777
  store i8 0, i8* %634, align 1, !dbg !1778, !tbaa !769
  br label %645, !dbg !1777

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1267, metadata !635), !dbg !1331
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1269, metadata !635), !dbg !1333
  %639 = icmp ne i32 %636, 2, !dbg !1779
  %640 = icmp eq i8 %103, 0, !dbg !1781
  %641 = or i1 %639, %640, !dbg !1782
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1270, metadata !635), !dbg !1334
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1270, metadata !635), !dbg !1334
  %643 = and i32 %5, -3, !dbg !1783
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1784
  br label %645, !dbg !1785

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1786
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1787 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1791, metadata !635), !dbg !1795
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1792, metadata !635), !dbg !1796
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1797
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1793, metadata !635), !dbg !1798
  %4 = icmp eq i8* %3, %0, !dbg !1799
  br i1 %4, label %5, label %75, !dbg !1801

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1802
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1794, metadata !635), !dbg !1803
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1804, metadata !635), !dbg !1820
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1818, metadata !635), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1819, metadata !635), !dbg !1824
  %7 = load i8, i8* %6, align 1, !dbg !1825, !tbaa !769
  %8 = sext i8 %7 to i32, !dbg !1825
  %9 = and i32 %8, -33, !dbg !1825
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1825

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1827, metadata !635), !dbg !1841
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1839, metadata !635), !dbg !1845
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1840, metadata !635), !dbg !1846
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1847
  %12 = load i8, i8* %11, align 1, !dbg !1847, !tbaa !769
  %13 = sext i8 %12 to i32, !dbg !1847
  %14 = and i32 %13, -33, !dbg !1847
  %15 = icmp eq i32 %14, 84, !dbg !1847
  br i1 %15, label %16, label %72, !dbg !1847

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1849, metadata !635), !dbg !1862
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1860, metadata !635), !dbg !1866
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1861, metadata !635), !dbg !1867
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1868
  %18 = load i8, i8* %17, align 1, !dbg !1868, !tbaa !769
  %19 = sext i8 %18 to i32, !dbg !1868
  %20 = and i32 %19, -33, !dbg !1868
  %21 = icmp eq i32 %20, 70, !dbg !1868
  br i1 %21, label %22, label %72, !dbg !1868

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1870, metadata !635), !dbg !1882
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1880, metadata !635), !dbg !1886
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1881, metadata !635), !dbg !1887
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1888
  %24 = load i8, i8* %23, align 1, !dbg !1888, !tbaa !769
  %25 = icmp eq i8 %24, 45, !dbg !1888
  br i1 %25, label %26, label %72, !dbg !1890

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1891, metadata !635), !dbg !1902
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1900, metadata !635), !dbg !1906
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1901, metadata !635), !dbg !1907
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1908
  %28 = load i8, i8* %27, align 1, !dbg !1908, !tbaa !769
  %29 = icmp eq i8 %28, 56, !dbg !1908
  br i1 %29, label %30, label %72, !dbg !1910

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1911, metadata !635), !dbg !1921
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1919, metadata !635), !dbg !1925
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1920, metadata !635), !dbg !1926
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1927
  %32 = load i8, i8* %31, align 1, !dbg !1927, !tbaa !769
  %33 = icmp eq i8 %32, 0, !dbg !1927
  br i1 %33, label %34, label %72, !dbg !1929

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1930, !tbaa !769
  %36 = icmp eq i8 %35, 96, !dbg !1931
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.51, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.52, i64 0, i64 0), !dbg !1930
  br label %75, !dbg !1932

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1827, metadata !635), !dbg !1933
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1839, metadata !635), !dbg !1937
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1840, metadata !635), !dbg !1938
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1939
  %40 = load i8, i8* %39, align 1, !dbg !1939, !tbaa !769
  %41 = sext i8 %40 to i32, !dbg !1939
  %42 = and i32 %41, -33, !dbg !1939
  %43 = icmp eq i32 %42, 66, !dbg !1939
  br i1 %43, label %44, label %72, !dbg !1939

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1849, metadata !635), !dbg !1940
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1860, metadata !635), !dbg !1942
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1861, metadata !635), !dbg !1943
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1944
  %46 = load i8, i8* %45, align 1, !dbg !1944, !tbaa !769
  %47 = icmp eq i8 %46, 49, !dbg !1944
  br i1 %47, label %48, label %72, !dbg !1945

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1870, metadata !635), !dbg !1946
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1880, metadata !635), !dbg !1948
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1881, metadata !635), !dbg !1949
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1950
  %50 = load i8, i8* %49, align 1, !dbg !1950, !tbaa !769
  %51 = icmp eq i8 %50, 56, !dbg !1950
  br i1 %51, label %52, label %72, !dbg !1951

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1891, metadata !635), !dbg !1952
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1900, metadata !635), !dbg !1954
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1901, metadata !635), !dbg !1955
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1956
  %54 = load i8, i8* %53, align 1, !dbg !1956, !tbaa !769
  %55 = icmp eq i8 %54, 48, !dbg !1956
  br i1 %55, label %56, label %72, !dbg !1957

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1911, metadata !635), !dbg !1958
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1919, metadata !635), !dbg !1960
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1920, metadata !635), !dbg !1961
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1962
  %58 = load i8, i8* %57, align 1, !dbg !1962, !tbaa !769
  %59 = icmp eq i8 %58, 51, !dbg !1962
  br i1 %59, label %60, label %72, !dbg !1963

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1964, metadata !635), !dbg !1973
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1971, metadata !635), !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1972, metadata !635), !dbg !1978
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1979
  %62 = load i8, i8* %61, align 1, !dbg !1979, !tbaa !769
  %63 = icmp eq i8 %62, 48, !dbg !1979
  br i1 %63, label %64, label %72, !dbg !1981

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1982, metadata !635), !dbg !1990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1988, metadata !635), !dbg !1994
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1989, metadata !635), !dbg !1995
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1996
  %66 = load i8, i8* %65, align 1, !dbg !1996, !tbaa !769
  %67 = icmp eq i8 %66, 0, !dbg !1996
  br i1 %67, label %68, label %72, !dbg !1998

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1999, !tbaa !769
  %70 = icmp eq i8 %69, 96, !dbg !2000
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.53, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1999
  br label %75, !dbg !2001

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2002
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.50, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.49, i64 0, i64 0), !dbg !2003
  br label %75, !dbg !2004

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2005
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2006 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2010, metadata !635), !dbg !2013
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2011, metadata !635), !dbg !2014
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2012, metadata !635), !dbg !2015
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2016, metadata !635) #10, !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2021, metadata !635) #10, !dbg !2031
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2022, metadata !635) #10, !dbg !2032
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2023, metadata !635) #10, !dbg !2033
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2034
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2034
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2024, metadata !635) #10, !dbg !2035
  %6 = tail call i32* @__errno_location() #17, !dbg !2036
  %7 = load i32, i32* %6, align 4, !dbg !2036, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2025, metadata !635) #10, !dbg !2037
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2038
  %9 = load i32, i32* %8, align 4, !dbg !2038, !tbaa !1199
  %10 = or i32 %9, 1, !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2026, metadata !635) #10, !dbg !2040
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2041
  %12 = load i32, i32* %11, align 8, !dbg !2041, !tbaa !1139
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2042
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2043
  %15 = load i8*, i8** %14, align 8, !dbg !2043, !tbaa !1225
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2044
  %17 = load i8*, i8** %16, align 8, !dbg !2044, !tbaa !1228
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2045
  %19 = add i64 %18, 1, !dbg !2046
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2027, metadata !635) #10, !dbg !2047
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2048, metadata !635) #10, !dbg !2053
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2055
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2028, metadata !635) #10, !dbg !2056
  %21 = load i32, i32* %11, align 8, !dbg !2057, !tbaa !1139
  %22 = load i8*, i8** %14, align 8, !dbg !2058, !tbaa !1225
  %23 = load i8*, i8** %16, align 8, !dbg !2059, !tbaa !1228
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2060
  store i32 %7, i32* %6, align 4, !dbg !2061, !tbaa !717
  ret i8* %20, !dbg !2062
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2017 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2016, metadata !635), !dbg !2063
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2021, metadata !635), !dbg !2064
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2022, metadata !635), !dbg !2065
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2023, metadata !635), !dbg !2066
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2067
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2067
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2024, metadata !635), !dbg !2068
  %7 = tail call i32* @__errno_location() #17, !dbg !2069
  %8 = load i32, i32* %7, align 4, !dbg !2069, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2025, metadata !635), !dbg !2070
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2071
  %10 = load i32, i32* %9, align 4, !dbg !2071, !tbaa !1199
  %11 = icmp ne i64* %2, null, !dbg !2072
  %12 = xor i1 %11, true, !dbg !2072
  %13 = zext i1 %12 to i32, !dbg !2072
  %14 = or i32 %10, %13, !dbg !2073
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2026, metadata !635), !dbg !2074
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2075
  %16 = load i32, i32* %15, align 8, !dbg !2075, !tbaa !1139
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2076
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2077
  %19 = load i8*, i8** %18, align 8, !dbg !2077, !tbaa !1225
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2078
  %21 = load i8*, i8** %20, align 8, !dbg !2078, !tbaa !1228
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2079
  %23 = add i64 %22, 1, !dbg !2080
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2027, metadata !635), !dbg !2081
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2048, metadata !635) #10, !dbg !2082
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2084
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2028, metadata !635), !dbg !2085
  %25 = load i32, i32* %15, align 8, !dbg !2086, !tbaa !1139
  %26 = load i8*, i8** %18, align 8, !dbg !2087, !tbaa !1225
  %27 = load i8*, i8** %20, align 8, !dbg !2088, !tbaa !1228
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2089
  store i32 %8, i32* %7, align 4, !dbg !2090, !tbaa !717
  br i1 %11, label %29, label %30, !dbg !2091

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2092, !tbaa !2094
  br label %30, !dbg !2095

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2096
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2097 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2101, !tbaa !642
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2099, metadata !635), !dbg !2102
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2100, metadata !635), !dbg !2103
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2100, metadata !635), !dbg !2103
  %2 = load i32, i32* @nslots, align 4, !dbg !2104, !tbaa !717
  %3 = icmp sgt i32 %2, 1, !dbg !2107
  br i1 %3, label %4, label %13, !dbg !2108

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2109

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !2100, metadata !635), !dbg !2103
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2109
  %8 = load i8*, i8** %7, align 8, !dbg !2109, !tbaa !2110
  tail call void @free(i8* %8) #10, !dbg !2112
  %9 = add nuw i64 %6, 1, !dbg !2113
  %10 = load i32, i32* @nslots, align 4, !dbg !2104, !tbaa !717
  %11 = sext i32 %10 to i64, !dbg !2107
  %12 = icmp slt i64 %9, %11, !dbg !2107
  br i1 %12, label %5, label %13, !dbg !2108, !llvm.loop !2114

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2116
  %15 = load i8*, i8** %14, align 8, !dbg !2116, !tbaa !2110
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2118
  br i1 %16, label %18, label %17, !dbg !2119

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #10, !dbg !2120
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2122, !tbaa !2123
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2124, !tbaa !2110
  br label %18, !dbg !2125

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2126
  br i1 %19, label %22, label %20, !dbg !2128

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !2129
  tail call void @free(i8* %21) #10, !dbg !2131
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2132, !tbaa !642
  br label %22, !dbg !2133

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !2134, !tbaa !717
  ret void, !dbg !2135
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2136 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2140, metadata !635), !dbg !2142
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2141, metadata !635), !dbg !2143
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2144
  ret i8* %3, !dbg !2145
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2146 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2150, metadata !635), !dbg !2164
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2151, metadata !635), !dbg !2165
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2152, metadata !635), !dbg !2166
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2153, metadata !635), !dbg !2167
  %5 = tail call i32* @__errno_location() #17, !dbg !2168
  %6 = load i32, i32* %5, align 4, !dbg !2168, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2154, metadata !635), !dbg !2169
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2170, !tbaa !642
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2155, metadata !635), !dbg !2171
  %8 = icmp slt i32 %0, 0, !dbg !2172
  br i1 %8, label %9, label %10, !dbg !2174

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2175
  unreachable, !dbg !2175

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2176, !tbaa !717
  %12 = icmp sgt i32 %11, %0, !dbg !2177
  br i1 %12, label %34, label %13, !dbg !2178

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2179
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2180
  br i1 %15, label %16, label %17, !dbg !2182

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2183
  unreachable, !dbg !2183

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2184
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2184
  %20 = add nsw i32 %0, 1, !dbg !2185
  %21 = sext i32 %20 to i64, !dbg !2186
  %22 = shl nsw i64 %21, 4, !dbg !2187
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2188
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2188
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2155, metadata !635), !dbg !2171
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2189, !tbaa !642
  br i1 %14, label %25, label %26, !dbg !2190

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2191, !tbaa.struct !2193
  br label %26, !dbg !2194

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2195, !tbaa !717
  %28 = sext i32 %27 to i64, !dbg !2196
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2196
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2197
  %31 = sub nsw i32 %20, %27, !dbg !2198
  %32 = sext i32 %31 to i64, !dbg !2199
  %33 = shl nsw i64 %32, 4, !dbg !2200
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2197
  store i32 %20, i32* @nslots, align 4, !dbg !2201, !tbaa !717
  br label %34, !dbg !2202

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2155, metadata !635), !dbg !2171
  %36 = sext i32 %0 to i64, !dbg !2203
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2204
  %38 = load i64, i64* %37, align 8, !dbg !2204, !tbaa !2123
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2159, metadata !635), !dbg !2205
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2206
  %40 = load i8*, i8** %39, align 8, !dbg !2206, !tbaa !2110
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2161, metadata !635), !dbg !2207
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2208
  %42 = load i32, i32* %41, align 4, !dbg !2208, !tbaa !1199
  %43 = or i32 %42, 1, !dbg !2209
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2162, metadata !635), !dbg !2210
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2211
  %45 = load i32, i32* %44, align 8, !dbg !2211, !tbaa !1139
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2212
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2213
  %48 = load i8*, i8** %47, align 8, !dbg !2213, !tbaa !1225
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2214
  %50 = load i8*, i8** %49, align 8, !dbg !2214, !tbaa !1228
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2215
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2163, metadata !635), !dbg !2216
  %52 = icmp ugt i64 %38, %51, !dbg !2217
  br i1 %52, label %63, label %53, !dbg !2219

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2220
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2159, metadata !635), !dbg !2205
  store i64 %54, i64* %37, align 8, !dbg !2222, !tbaa !2123
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2223
  br i1 %55, label %57, label %56, !dbg !2225

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2226
  br label %57, !dbg !2226

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2048, metadata !635) #10, !dbg !2227
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2229
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2161, metadata !635), !dbg !2207
  store i8* %58, i8** %39, align 8, !dbg !2230, !tbaa !2110
  %59 = load i32, i32* %44, align 8, !dbg !2231, !tbaa !1139
  %60 = load i8*, i8** %47, align 8, !dbg !2232, !tbaa !1225
  %61 = load i8*, i8** %49, align 8, !dbg !2233, !tbaa !1228
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2234
  br label %63, !dbg !2235

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2161, metadata !635), !dbg !2207
  store i32 %6, i32* %5, align 4, !dbg !2236, !tbaa !717
  ret i8* %64, !dbg !2237
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2238 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2242, metadata !635), !dbg !2245
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2243, metadata !635), !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2244, metadata !635), !dbg !2247
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2248
  ret i8* %4, !dbg !2249
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2250 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2254, metadata !635), !dbg !2255
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2140, metadata !635) #10, !dbg !2256
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2141, metadata !635) #10, !dbg !2258
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2259
  ret i8* %2, !dbg !2260
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2261 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2265, metadata !635), !dbg !2267
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2266, metadata !635), !dbg !2268
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2242, metadata !635) #10, !dbg !2269
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2243, metadata !635) #10, !dbg !2271
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2244, metadata !635) #10, !dbg !2272
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2273
  ret i8* %3, !dbg !2274
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2275 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2283, metadata !2289), !dbg !2290
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2279, metadata !635), !dbg !2292
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2280, metadata !635), !dbg !2293
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2281, metadata !635), !dbg !2294
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2295
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2295
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2282, metadata !635), !dbg !2296
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2288, metadata !635) #10, !dbg !2297
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2298
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2298
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2283, metadata !635) #10, !dbg !2290
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2283, metadata !2299) #10, !dbg !2290
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2290
  %8 = icmp eq i32 %1, 10, !dbg !2300
  br i1 %8, label %9, label %10, !dbg !2302

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2303, !noalias !2304
  unreachable, !dbg !2303

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2283, metadata !2299) #10, !dbg !2290
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2307
  store i32 %1, i32* %11, align 8, !dbg !2307, !alias.scope !2304
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2307
  %13 = bitcast i32* %12 to i8*, !dbg !2307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2307
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2308
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2282, metadata !635), !dbg !2296
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2309
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2310
  ret i8* %14, !dbg !2311
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2312 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2283, metadata !2289), !dbg !2321
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2316, metadata !635), !dbg !2323
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2317, metadata !635), !dbg !2324
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2318, metadata !635), !dbg !2325
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2319, metadata !635), !dbg !2326
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2327
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2327
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2320, metadata !635), !dbg !2328
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2288, metadata !635) #10, !dbg !2329
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2330
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2330
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2283, metadata !635) #10, !dbg !2321
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2283, metadata !2299) #10, !dbg !2321
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2321
  %9 = icmp eq i32 %1, 10, !dbg !2331
  br i1 %9, label %10, label %11, !dbg !2332

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2333, !noalias !2334
  unreachable, !dbg !2333

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2283, metadata !2299) #10, !dbg !2321
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2337
  store i32 %1, i32* %12, align 8, !dbg !2337, !alias.scope !2334
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2337
  %14 = bitcast i32* %13 to i8*, !dbg !2337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2337
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2338
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2320, metadata !635), !dbg !2328
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2339
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2340
  ret i8* %15, !dbg !2341
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2342 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2283, metadata !2289), !dbg !2348
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2346, metadata !635), !dbg !2351
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2347, metadata !635), !dbg !2352
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2279, metadata !635) #10, !dbg !2353
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2280, metadata !635) #10, !dbg !2354
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2281, metadata !635) #10, !dbg !2355
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2356
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2356
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2282, metadata !635) #10, !dbg !2357
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2288, metadata !635) #10, !dbg !2358
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2359
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2283, metadata !635) #10, !dbg !2348
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2283, metadata !2299) #10, !dbg !2348
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2348
  %7 = icmp eq i32 %0, 10, !dbg !2360
  br i1 %7, label %8, label %9, !dbg !2361

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2362, !noalias !2363
  unreachable, !dbg !2362

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2283, metadata !2299) #10, !dbg !2348
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2366
  store i32 %0, i32* %10, align 8, !dbg !2366, !alias.scope !2363
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2366
  %12 = bitcast i32* %11 to i8*, !dbg !2366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2366
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2282, metadata !635) #10, !dbg !2357
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2368
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2369
  ret i8* %13, !dbg !2370
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2371 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2283, metadata !2289), !dbg !2378
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2375, metadata !635), !dbg !2381
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2376, metadata !635), !dbg !2382
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2377, metadata !635), !dbg !2383
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2316, metadata !635) #10, !dbg !2384
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2317, metadata !635) #10, !dbg !2385
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2318, metadata !635) #10, !dbg !2386
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2319, metadata !635) #10, !dbg !2387
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2388
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2388
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2320, metadata !635) #10, !dbg !2389
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2288, metadata !635) #10, !dbg !2390
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2391
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2391
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2283, metadata !635) #10, !dbg !2378
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2283, metadata !2299) #10, !dbg !2378
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2378
  %8 = icmp eq i32 %0, 10, !dbg !2392
  br i1 %8, label %9, label %10, !dbg !2393

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2394, !noalias !2395
  unreachable, !dbg !2394

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2283, metadata !2299) #10, !dbg !2378
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2398
  store i32 %0, i32* %11, align 8, !dbg !2398, !alias.scope !2395
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2398
  %13 = bitcast i32* %12 to i8*, !dbg !2398
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2398
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2399
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2320, metadata !635) #10, !dbg !2389
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2400
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2401
  ret i8* %14, !dbg !2402
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2403 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2407, metadata !635), !dbg !2411
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2408, metadata !635), !dbg !2412
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2409, metadata !635), !dbg !2413
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2414
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2415, !tbaa.struct !2416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2410, metadata !635), !dbg !2417
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1158, metadata !635), !dbg !2418
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1159, metadata !635), !dbg !2420
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1160, metadata !635), !dbg !2421
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1161, metadata !635), !dbg !2422
  %6 = lshr i8 %2, 5, !dbg !2423
  %7 = zext i8 %6 to i64, !dbg !2423
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2424
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1162, metadata !635), !dbg !2425
  %9 = and i8 %2, 31, !dbg !2426
  %10 = zext i8 %9 to i32, !dbg !2427
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1164, metadata !635), !dbg !2428
  %11 = load i32, i32* %8, align 4, !dbg !2429, !tbaa !717
  %12 = lshr i32 %11, %10, !dbg !2430
  %13 = and i32 %12, 1, !dbg !2431
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1165, metadata !635), !dbg !2432
  %14 = xor i32 %13, 1, !dbg !2433
  %15 = shl i32 %14, %10, !dbg !2434
  %16 = xor i32 %15, %11, !dbg !2435
  store i32 %16, i32* %8, align 4, !dbg !2435, !tbaa !717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2410, metadata !635), !dbg !2417
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2436
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2437
  ret i8* %17, !dbg !2438
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2439 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2443, metadata !635), !dbg !2445
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2444, metadata !635), !dbg !2446
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2407, metadata !635) #10, !dbg !2447
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2408, metadata !635) #10, !dbg !2449
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2409, metadata !635) #10, !dbg !2450
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2451
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2451
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2452, !tbaa.struct !2416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2410, metadata !635) #10, !dbg !2453
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1158, metadata !635) #10, !dbg !2454
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1159, metadata !635) #10, !dbg !2456
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1160, metadata !635) #10, !dbg !2457
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1161, metadata !635) #10, !dbg !2458
  %5 = lshr i8 %1, 5, !dbg !2459
  %6 = zext i8 %5 to i64, !dbg !2459
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2460
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1162, metadata !635) #10, !dbg !2461
  %8 = and i8 %1, 31, !dbg !2462
  %9 = zext i8 %8 to i32, !dbg !2463
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1164, metadata !635) #10, !dbg !2464
  %10 = load i32, i32* %7, align 4, !dbg !2465, !tbaa !717
  %11 = lshr i32 %10, %9, !dbg !2466
  %12 = and i32 %11, 1, !dbg !2467
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1165, metadata !635) #10, !dbg !2468
  %13 = xor i32 %12, 1, !dbg !2469
  %14 = shl i32 %13, %9, !dbg !2470
  %15 = xor i32 %14, %10, !dbg !2471
  store i32 %15, i32* %7, align 4, !dbg !2471, !tbaa !717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2410, metadata !635) #10, !dbg !2453
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2472
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2473
  ret i8* %16, !dbg !2474
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2475 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2477, metadata !635), !dbg !2478
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2443, metadata !635) #10, !dbg !2479
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2444, metadata !635) #10, !dbg !2481
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2407, metadata !635) #10, !dbg !2482
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2408, metadata !635) #10, !dbg !2484
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2409, metadata !635) #10, !dbg !2485
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2486
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2487, !tbaa.struct !2416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2410, metadata !635) #10, !dbg !2488
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1158, metadata !635) #10, !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1159, metadata !635) #10, !dbg !2491
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1160, metadata !635) #10, !dbg !2492
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1161, metadata !635) #10, !dbg !2493
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2494
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1162, metadata !635) #10, !dbg !2495
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1164, metadata !635) #10, !dbg !2496
  %5 = load i32, i32* %4, align 4, !dbg !2497, !tbaa !717
  %6 = or i32 %5, 67108864, !dbg !2498
  store i32 %6, i32* %4, align 4, !dbg !2498, !tbaa !717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2410, metadata !635) #10, !dbg !2488
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2499
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2500
  ret i8* %7, !dbg !2501
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2502 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2504, metadata !635), !dbg !2506
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2505, metadata !635), !dbg !2507
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2407, metadata !635) #10, !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2408, metadata !635) #10, !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2409, metadata !635) #10, !dbg !2511
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2512
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2513, !tbaa.struct !2416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2410, metadata !635) #10, !dbg !2514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1158, metadata !635) #10, !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1159, metadata !635) #10, !dbg !2517
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1160, metadata !635) #10, !dbg !2518
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1161, metadata !635) #10, !dbg !2519
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2520
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1162, metadata !635) #10, !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1164, metadata !635) #10, !dbg !2522
  %6 = load i32, i32* %5, align 4, !dbg !2523, !tbaa !717
  %7 = or i32 %6, 67108864, !dbg !2524
  store i32 %7, i32* %5, align 4, !dbg !2524, !tbaa !717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2410, metadata !635) #10, !dbg !2514
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2525
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2526
  ret i8* %8, !dbg !2527
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2528 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2283, metadata !2289), !dbg !2534
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2530, metadata !635), !dbg !2536
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2531, metadata !635), !dbg !2537
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2532, metadata !635), !dbg !2538
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2539
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2539
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2288, metadata !635) #10, !dbg !2540
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2541
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2283, metadata !635) #10, !dbg !2534
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2283, metadata !2299) #10, !dbg !2534
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2534
  %9 = icmp eq i32 %1, 10, !dbg !2542
  br i1 %9, label %10, label %11, !dbg !2543

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2544, !noalias !2545
  unreachable, !dbg !2544

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2283, metadata !2299) #10, !dbg !2534
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2548
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2548
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2549
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2550
  store i32 %1, i32* %13, align 8, !dbg !2550
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2550
  %15 = bitcast i32* %14 to i8*, !dbg !2550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2550
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2533, metadata !635), !dbg !2551
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1158, metadata !635), !dbg !2552
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1159, metadata !635), !dbg !2554
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1160, metadata !635), !dbg !2555
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1161, metadata !635), !dbg !2556
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2557
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1162, metadata !635), !dbg !2558
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1164, metadata !635), !dbg !2559
  %17 = load i32, i32* %16, align 4, !dbg !2560, !tbaa !717
  %18 = or i32 %17, 67108864, !dbg !2561
  store i32 %18, i32* %16, align 4, !dbg !2561, !tbaa !717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2533, metadata !635), !dbg !2551
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2562
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2563
  ret i8* %19, !dbg !2564
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2565 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2569, metadata !635), !dbg !2573
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2570, metadata !635), !dbg !2574
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2571, metadata !635), !dbg !2575
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2572, metadata !635), !dbg !2576
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2577, metadata !635) #10, !dbg !2587
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2582, metadata !635) #10, !dbg !2589
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2583, metadata !635) #10, !dbg !2590
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2584, metadata !635) #10, !dbg !2591
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2585, metadata !635) #10, !dbg !2592
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2593
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2593
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2594, !tbaa.struct !2416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2586, metadata !635) #10, !dbg !2595
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1207, metadata !635) #10, !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1208, metadata !635) #10, !dbg !2598
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1209, metadata !635) #10, !dbg !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1207, metadata !635) #10, !dbg !2596
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1207, metadata !635) #10, !dbg !2596
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2600
  store i32 10, i32* %7, align 8, !dbg !2601, !tbaa !1139
  %8 = icmp ne i8* %1, null, !dbg !2602
  %9 = icmp ne i8* %2, null, !dbg !2603
  %10 = and i1 %8, %9, !dbg !2604
  br i1 %10, label %12, label %11, !dbg !2604

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2605
  unreachable, !dbg !2605

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2606
  store i8* %1, i8** %13, align 8, !dbg !2607, !tbaa !1225
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2608
  store i8* %2, i8** %14, align 8, !dbg !2609, !tbaa !1228
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2586, metadata !635) #10, !dbg !2595
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2610
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2611
  ret i8* %15, !dbg !2612
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2578 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2577, metadata !635), !dbg !2613
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2582, metadata !635), !dbg !2614
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2583, metadata !635), !dbg !2615
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2584, metadata !635), !dbg !2616
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2585, metadata !635), !dbg !2617
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2618
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2619, !tbaa.struct !2416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2586, metadata !635), !dbg !2620
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1207, metadata !635) #10, !dbg !2621
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1208, metadata !635) #10, !dbg !2623
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1209, metadata !635) #10, !dbg !2624
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1207, metadata !635) #10, !dbg !2621
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1207, metadata !635) #10, !dbg !2621
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2625
  store i32 10, i32* %8, align 8, !dbg !2626, !tbaa !1139
  %9 = icmp ne i8* %1, null, !dbg !2627
  %10 = icmp ne i8* %2, null, !dbg !2628
  %11 = and i1 %9, %10, !dbg !2629
  br i1 %11, label %13, label %12, !dbg !2629

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2630
  unreachable, !dbg !2630

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2631
  store i8* %1, i8** %14, align 8, !dbg !2632, !tbaa !1225
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2633
  store i8* %2, i8** %15, align 8, !dbg !2634, !tbaa !1228
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2586, metadata !635), !dbg !2620
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2635
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2636
  ret i8* %16, !dbg !2637
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2638 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2642, metadata !635), !dbg !2645
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2643, metadata !635), !dbg !2646
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2644, metadata !635), !dbg !2647
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2569, metadata !635) #10, !dbg !2648
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2570, metadata !635) #10, !dbg !2650
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2571, metadata !635) #10, !dbg !2651
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2572, metadata !635) #10, !dbg !2652
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2577, metadata !635) #10, !dbg !2653
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2582, metadata !635) #10, !dbg !2655
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2583, metadata !635) #10, !dbg !2656
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2584, metadata !635) #10, !dbg !2657
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2585, metadata !635) #10, !dbg !2658
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2659
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2659
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2660, !tbaa.struct !2416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2586, metadata !635) #10, !dbg !2661
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1207, metadata !635) #10, !dbg !2662
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1208, metadata !635) #10, !dbg !2664
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1209, metadata !635) #10, !dbg !2665
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1207, metadata !635) #10, !dbg !2662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1207, metadata !635) #10, !dbg !2662
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2666
  store i32 10, i32* %6, align 8, !dbg !2667, !tbaa !1139
  %7 = icmp ne i8* %0, null, !dbg !2668
  %8 = icmp ne i8* %1, null, !dbg !2669
  %9 = and i1 %7, %8, !dbg !2670
  br i1 %9, label %11, label %10, !dbg !2670

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2671
  unreachable, !dbg !2671

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2672
  store i8* %0, i8** %12, align 8, !dbg !2673, !tbaa !1225
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2674
  store i8* %1, i8** %13, align 8, !dbg !2675, !tbaa !1228
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2586, metadata !635) #10, !dbg !2661
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2677
  ret i8* %14, !dbg !2678
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2679 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2683, metadata !635), !dbg !2687
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2684, metadata !635), !dbg !2688
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2685, metadata !635), !dbg !2689
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2686, metadata !635), !dbg !2690
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2577, metadata !635) #10, !dbg !2691
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2582, metadata !635) #10, !dbg !2693
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2583, metadata !635) #10, !dbg !2694
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2584, metadata !635) #10, !dbg !2695
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2585, metadata !635) #10, !dbg !2696
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2697
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2698, !tbaa.struct !2416
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2586, metadata !635) #10, !dbg !2699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1207, metadata !635) #10, !dbg !2700
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1208, metadata !635) #10, !dbg !2702
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1209, metadata !635) #10, !dbg !2703
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1207, metadata !635) #10, !dbg !2700
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1207, metadata !635) #10, !dbg !2700
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2704
  store i32 10, i32* %7, align 8, !dbg !2705, !tbaa !1139
  %8 = icmp ne i8* %0, null, !dbg !2706
  %9 = icmp ne i8* %1, null, !dbg !2707
  %10 = and i1 %8, %9, !dbg !2708
  br i1 %10, label %12, label %11, !dbg !2708

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2709
  unreachable, !dbg !2709

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2710
  store i8* %0, i8** %13, align 8, !dbg !2711, !tbaa !1225
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2712
  store i8* %1, i8** %14, align 8, !dbg !2713, !tbaa !1228
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2586, metadata !635) #10, !dbg !2699
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2714
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2715
  ret i8* %15, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2717 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2721, metadata !635), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2722, metadata !635), !dbg !2725
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2723, metadata !635), !dbg !2726
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2727
  ret i8* %4, !dbg !2728
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2729 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2733, metadata !635), !dbg !2735
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2734, metadata !635), !dbg !2736
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2721, metadata !635) #10, !dbg !2737
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2722, metadata !635) #10, !dbg !2739
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2723, metadata !635) #10, !dbg !2740
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2741
  ret i8* %3, !dbg !2742
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2743 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2747, metadata !635), !dbg !2749
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2748, metadata !635), !dbg !2750
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2721, metadata !635) #10, !dbg !2751
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2722, metadata !635) #10, !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2723, metadata !635) #10, !dbg !2754
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2755
  ret i8* %3, !dbg !2756
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2757 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2761, metadata !635), !dbg !2762
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2747, metadata !635) #10, !dbg !2763
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2748, metadata !635) #10, !dbg !2765
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2721, metadata !635) #10, !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2722, metadata !635) #10, !dbg !2768
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2723, metadata !635) #10, !dbg !2769
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2770
  ret i8* %2, !dbg !2771
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2772 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2831, metadata !635), !dbg !2837
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2832, metadata !635), !dbg !2838
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2833, metadata !635), !dbg !2839
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2834, metadata !635), !dbg !2840
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2835, metadata !635), !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2836, metadata !635), !dbg !2842
  %7 = icmp eq i8* %1, null, !dbg !2843
  br i1 %7, label %10, label %8, !dbg !2845

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2846
  br label %12, !dbg !2846

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2847
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i32 5) #10, !dbg !2848
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !2848
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.61, i64 0, i64 0), i32 5) #10, !dbg !2849
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !2849
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
  ], !dbg !2850

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2851
  unreachable, !dbg !2851

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.62, i64 0, i64 0), i32 5) #10, !dbg !2853
  %20 = load i8*, i8** %4, align 8, !dbg !2853, !tbaa !642
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2853
  br label %146, !dbg !2854

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.63, i64 0, i64 0), i32 5) #10, !dbg !2855
  %24 = load i8*, i8** %4, align 8, !dbg !2855, !tbaa !642
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2855
  %26 = load i8*, i8** %25, align 8, !dbg !2855, !tbaa !642
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2855
  br label %146, !dbg !2856

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.64, i64 0, i64 0), i32 5) #10, !dbg !2857
  %30 = load i8*, i8** %4, align 8, !dbg !2857, !tbaa !642
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2857
  %32 = load i8*, i8** %31, align 8, !dbg !2857, !tbaa !642
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2857
  %34 = load i8*, i8** %33, align 8, !dbg !2857, !tbaa !642
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2857
  br label %146, !dbg !2858

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.65, i64 0, i64 0), i32 5) #10, !dbg !2859
  %38 = load i8*, i8** %4, align 8, !dbg !2859, !tbaa !642
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2859
  %40 = load i8*, i8** %39, align 8, !dbg !2859, !tbaa !642
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2859
  %42 = load i8*, i8** %41, align 8, !dbg !2859, !tbaa !642
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2859
  %44 = load i8*, i8** %43, align 8, !dbg !2859, !tbaa !642
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2859
  br label %146, !dbg !2860

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.66, i64 0, i64 0), i32 5) #10, !dbg !2861
  %48 = load i8*, i8** %4, align 8, !dbg !2861, !tbaa !642
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2861
  %50 = load i8*, i8** %49, align 8, !dbg !2861, !tbaa !642
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2861
  %52 = load i8*, i8** %51, align 8, !dbg !2861, !tbaa !642
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2861
  %54 = load i8*, i8** %53, align 8, !dbg !2861, !tbaa !642
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2861
  %56 = load i8*, i8** %55, align 8, !dbg !2861, !tbaa !642
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2861
  br label %146, !dbg !2862

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.67, i64 0, i64 0), i32 5) #10, !dbg !2863
  %60 = load i8*, i8** %4, align 8, !dbg !2863, !tbaa !642
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2863
  %62 = load i8*, i8** %61, align 8, !dbg !2863, !tbaa !642
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2863
  %64 = load i8*, i8** %63, align 8, !dbg !2863, !tbaa !642
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2863
  %66 = load i8*, i8** %65, align 8, !dbg !2863, !tbaa !642
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2863
  %68 = load i8*, i8** %67, align 8, !dbg !2863, !tbaa !642
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2863
  %70 = load i8*, i8** %69, align 8, !dbg !2863, !tbaa !642
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2863
  br label %146, !dbg !2864

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.68, i64 0, i64 0), i32 5) #10, !dbg !2865
  %74 = load i8*, i8** %4, align 8, !dbg !2865, !tbaa !642
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2865
  %76 = load i8*, i8** %75, align 8, !dbg !2865, !tbaa !642
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2865
  %78 = load i8*, i8** %77, align 8, !dbg !2865, !tbaa !642
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2865
  %80 = load i8*, i8** %79, align 8, !dbg !2865, !tbaa !642
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2865
  %82 = load i8*, i8** %81, align 8, !dbg !2865, !tbaa !642
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2865
  %84 = load i8*, i8** %83, align 8, !dbg !2865, !tbaa !642
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2865
  %86 = load i8*, i8** %85, align 8, !dbg !2865, !tbaa !642
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2865
  br label %146, !dbg !2866

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.69, i64 0, i64 0), i32 5) #10, !dbg !2867
  %90 = load i8*, i8** %4, align 8, !dbg !2867, !tbaa !642
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2867
  %92 = load i8*, i8** %91, align 8, !dbg !2867, !tbaa !642
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2867
  %94 = load i8*, i8** %93, align 8, !dbg !2867, !tbaa !642
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2867
  %96 = load i8*, i8** %95, align 8, !dbg !2867, !tbaa !642
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2867
  %98 = load i8*, i8** %97, align 8, !dbg !2867, !tbaa !642
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2867
  %100 = load i8*, i8** %99, align 8, !dbg !2867, !tbaa !642
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2867
  %102 = load i8*, i8** %101, align 8, !dbg !2867, !tbaa !642
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2867
  %104 = load i8*, i8** %103, align 8, !dbg !2867, !tbaa !642
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2867
  br label %146, !dbg !2868

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.70, i64 0, i64 0), i32 5) #10, !dbg !2869
  %108 = load i8*, i8** %4, align 8, !dbg !2869, !tbaa !642
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2869
  %110 = load i8*, i8** %109, align 8, !dbg !2869, !tbaa !642
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2869
  %112 = load i8*, i8** %111, align 8, !dbg !2869, !tbaa !642
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2869
  %114 = load i8*, i8** %113, align 8, !dbg !2869, !tbaa !642
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2869
  %116 = load i8*, i8** %115, align 8, !dbg !2869, !tbaa !642
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2869
  %118 = load i8*, i8** %117, align 8, !dbg !2869, !tbaa !642
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2869
  %120 = load i8*, i8** %119, align 8, !dbg !2869, !tbaa !642
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2869
  %122 = load i8*, i8** %121, align 8, !dbg !2869, !tbaa !642
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2869
  %124 = load i8*, i8** %123, align 8, !dbg !2869, !tbaa !642
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2869
  br label %146, !dbg !2870

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.71, i64 0, i64 0), i32 5) #10, !dbg !2871
  %128 = load i8*, i8** %4, align 8, !dbg !2871, !tbaa !642
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2871
  %130 = load i8*, i8** %129, align 8, !dbg !2871, !tbaa !642
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2871
  %132 = load i8*, i8** %131, align 8, !dbg !2871, !tbaa !642
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2871
  %134 = load i8*, i8** %133, align 8, !dbg !2871, !tbaa !642
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2871
  %136 = load i8*, i8** %135, align 8, !dbg !2871, !tbaa !642
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2871
  %138 = load i8*, i8** %137, align 8, !dbg !2871, !tbaa !642
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2871
  %140 = load i8*, i8** %139, align 8, !dbg !2871, !tbaa !642
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2871
  %142 = load i8*, i8** %141, align 8, !dbg !2871, !tbaa !642
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2871
  %144 = load i8*, i8** %143, align 8, !dbg !2871, !tbaa !642
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2871
  br label %146, !dbg !2872

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2873
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2874 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2878, metadata !635), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2879, metadata !635), !dbg !2885
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2880, metadata !635), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2881, metadata !635), !dbg !2887
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2882, metadata !635), !dbg !2888
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2883, metadata !635), !dbg !2889
  br label %6, !dbg !2890

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2883, metadata !635), !dbg !2889
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2892
  %9 = load i8*, i8** %8, align 8, !dbg !2892, !tbaa !642
  %10 = icmp eq i8* %9, null, !dbg !2894
  %11 = add i64 %7, 1, !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2883, metadata !635), !dbg !2889
  br i1 %10, label %12, label %6, !dbg !2894, !llvm.loop !2896

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2898
  ret void, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2900 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2911, metadata !635), !dbg !2919
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2912, metadata !635), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2913, metadata !635), !dbg !2921
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2914, metadata !635), !dbg !2922
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2915, metadata !635), !dbg !2923
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2924
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2924
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2917, metadata !635), !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  %11 = load i32, i32* %8, align 8, !dbg !2927
  %12 = icmp ult i32 %11, 41, !dbg !2927
  br i1 %12, label %13, label %18, !dbg !2927

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2927
  %15 = sext i32 %11 to i64, !dbg !2927
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2927
  %17 = add i32 %11, 8, !dbg !2927
  store i32 %17, i32* %8, align 8, !dbg !2927
  br label %21, !dbg !2927

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2927
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2927
  store i8* %20, i8** %10, align 8, !dbg !2927
  br label %21, !dbg !2927

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2927
  %25 = load i8*, i8** %24, align 8, !dbg !2927
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2930
  store i8* %25, i8** %26, align 16, !dbg !2931, !tbaa !642
  %27 = icmp eq i8* %25, null, !dbg !2932
  br i1 %27, label %30, label %28, !dbg !2933

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  %29 = icmp ult i32 %22, 41, !dbg !2927
  br i1 %29, label %35, label %32, !dbg !2927

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2934
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2935
  ret void, !dbg !2935

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2927
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2927
  store i8* %34, i8** %10, align 8, !dbg !2927
  br label %40, !dbg !2927

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2927
  %37 = sext i32 %22 to i64, !dbg !2927
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2927
  %39 = add i32 %22, 8, !dbg !2927
  store i32 %39, i32* %8, align 8, !dbg !2927
  br label %40, !dbg !2927

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2927
  %44 = load i8*, i8** %43, align 8, !dbg !2927
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2930
  store i8* %44, i8** %45, align 8, !dbg !2931, !tbaa !642
  %46 = icmp eq i8* %44, null, !dbg !2932
  br i1 %46, label %30, label %47, !dbg !2933

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  %48 = icmp ult i32 %41, 41, !dbg !2927
  br i1 %48, label %52, label %49, !dbg !2927

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2927
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2927
  store i8* %51, i8** %10, align 8, !dbg !2927
  br label %57, !dbg !2927

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2927
  %54 = sext i32 %41 to i64, !dbg !2927
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2927
  %56 = add i32 %41, 8, !dbg !2927
  store i32 %56, i32* %8, align 8, !dbg !2927
  br label %57, !dbg !2927

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2927
  %61 = load i8*, i8** %60, align 8, !dbg !2927
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2930
  store i8* %61, i8** %62, align 16, !dbg !2931, !tbaa !642
  %63 = icmp eq i8* %61, null, !dbg !2932
  br i1 %63, label %30, label %64, !dbg !2933

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  %65 = icmp ult i32 %58, 41, !dbg !2927
  br i1 %65, label %69, label %66, !dbg !2927

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2927
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2927
  store i8* %68, i8** %10, align 8, !dbg !2927
  br label %74, !dbg !2927

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2927
  %71 = sext i32 %58 to i64, !dbg !2927
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2927
  %73 = add i32 %58, 8, !dbg !2927
  store i32 %73, i32* %8, align 8, !dbg !2927
  br label %74, !dbg !2927

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2927
  %78 = load i8*, i8** %77, align 8, !dbg !2927
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2930
  store i8* %78, i8** %79, align 8, !dbg !2931, !tbaa !642
  %80 = icmp eq i8* %78, null, !dbg !2932
  br i1 %80, label %30, label %81, !dbg !2933

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  %82 = icmp ult i32 %75, 41, !dbg !2927
  br i1 %82, label %86, label %83, !dbg !2927

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2927
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2927
  store i8* %85, i8** %10, align 8, !dbg !2927
  br label %91, !dbg !2927

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2927
  %88 = sext i32 %75 to i64, !dbg !2927
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2927
  %90 = add i32 %75, 8, !dbg !2927
  store i32 %90, i32* %8, align 8, !dbg !2927
  br label %91, !dbg !2927

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2927
  %95 = load i8*, i8** %94, align 8, !dbg !2927
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2930
  store i8* %95, i8** %96, align 16, !dbg !2931, !tbaa !642
  %97 = icmp eq i8* %95, null, !dbg !2932
  br i1 %97, label %30, label %98, !dbg !2933

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  %99 = icmp ult i32 %92, 41, !dbg !2927
  br i1 %99, label %103, label %100, !dbg !2927

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2927
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2927
  store i8* %102, i8** %10, align 8, !dbg !2927
  br label %108, !dbg !2927

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2927
  %105 = sext i32 %92 to i64, !dbg !2927
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2927
  %107 = add i32 %92, 8, !dbg !2927
  store i32 %107, i32* %8, align 8, !dbg !2927
  br label %108, !dbg !2927

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2927
  %111 = load i8*, i8** %110, align 8, !dbg !2927
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2930
  store i8* %111, i8** %112, align 8, !dbg !2931, !tbaa !642
  %113 = icmp eq i8* %111, null, !dbg !2932
  br i1 %113, label %30, label %114, !dbg !2933

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  %115 = load i8*, i8** %10, align 8, !dbg !2927
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2927
  store i8* %116, i8** %10, align 8, !dbg !2927
  %117 = bitcast i8* %115 to i8**, !dbg !2927
  %118 = load i8*, i8** %117, align 8, !dbg !2927
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2930
  store i8* %118, i8** %119, align 16, !dbg !2931, !tbaa !642
  %120 = icmp eq i8* %118, null, !dbg !2932
  br i1 %120, label %30, label %121, !dbg !2933

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  %122 = load i8*, i8** %10, align 8, !dbg !2927
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2927
  store i8* %123, i8** %10, align 8, !dbg !2927
  %124 = bitcast i8* %122 to i8**, !dbg !2927
  %125 = load i8*, i8** %124, align 8, !dbg !2927
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2930
  store i8* %125, i8** %126, align 8, !dbg !2931, !tbaa !642
  %127 = icmp eq i8* %125, null, !dbg !2932
  br i1 %127, label %30, label %128, !dbg !2933

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  %129 = load i8*, i8** %10, align 8, !dbg !2927
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2927
  store i8* %130, i8** %10, align 8, !dbg !2927
  %131 = bitcast i8* %129 to i8**, !dbg !2927
  %132 = load i8*, i8** %131, align 8, !dbg !2927
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2930
  store i8* %132, i8** %133, align 16, !dbg !2931, !tbaa !642
  %134 = icmp eq i8* %132, null, !dbg !2932
  br i1 %134, label %30, label %135, !dbg !2933

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2916, metadata !635), !dbg !2926
  %136 = load i8*, i8** %10, align 8, !dbg !2927
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2927
  store i8* %137, i8** %10, align 8, !dbg !2927
  %138 = bitcast i8* %136 to i8**, !dbg !2927
  %139 = load i8*, i8** %138, align 8, !dbg !2927
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2930
  store i8* %139, i8** %140, align 8, !dbg !2931, !tbaa !642
  %141 = icmp eq i8* %139, null, !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2916, metadata !635), !dbg !2926
  %142 = select i1 %141, i64 9, i64 10, !dbg !2933
  br label %30, !dbg !2933
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2936 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2940, metadata !635), !dbg !2951
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2941, metadata !635), !dbg !2952
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2942, metadata !635), !dbg !2953
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2943, metadata !635), !dbg !2954
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2955
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2955
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2944, metadata !635), !dbg !2956
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2957
  call void @llvm.va_start(i8* nonnull %6), !dbg !2957
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2958
  call void @llvm.va_end(i8* nonnull %6), !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2960
  ret void, !dbg !2960
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2961 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.74, i64 0, i64 0), i32 5) #10, !dbg !2962
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.75, i64 0, i64 0)) #10, !dbg !2962
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.76, i64 0, i64 0), i32 5) #10, !dbg !2963
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.78, i64 0, i64 0)) #10, !dbg !2963
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !2964
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2964, !tbaa !642
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !2964
  ret void, !dbg !2965
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2966 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2970, metadata !635), !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2971, metadata !635), !dbg !2973
  %3 = udiv i64 9223372036854775807, %1, !dbg !2974
  %4 = icmp ult i64 %3, %0, !dbg !2974
  br i1 %4, label %5, label %6, !dbg !2976

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2977
  unreachable, !dbg !2977

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2978
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2979, metadata !635) #10, !dbg !2986
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2988
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2985, metadata !635) #10, !dbg !2989
  %9 = icmp eq i8* %8, null, !dbg !2990
  %10 = icmp ne i64 %7, 0, !dbg !2992
  %11 = and i1 %10, %9, !dbg !2993
  br i1 %11, label %12, label %13, !dbg !2993

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2994
  unreachable, !dbg !2994

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2995
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2980 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2979, metadata !635), !dbg !2996
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2997
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2985, metadata !635), !dbg !2998
  %3 = icmp eq i8* %2, null, !dbg !2999
  %4 = icmp ne i64 %0, 0, !dbg !3000
  %5 = and i1 %4, %3, !dbg !3001
  br i1 %5, label %6, label %7, !dbg !3001

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3002
  unreachable, !dbg !3002

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3003
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3004 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3008, metadata !635), !dbg !3011
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3009, metadata !635), !dbg !3012
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3010, metadata !635), !dbg !3013
  %4 = udiv i64 9223372036854775807, %2, !dbg !3014
  %5 = icmp ult i64 %4, %1, !dbg !3014
  br i1 %5, label %6, label %7, !dbg !3016

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3017
  unreachable, !dbg !3017

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3018
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3019, metadata !635) #10, !dbg !3025
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3024, metadata !635) #10, !dbg !3027
  %9 = icmp eq i64 %8, 0, !dbg !3028
  %10 = icmp ne i8* %0, null, !dbg !3030
  %11 = and i1 %10, %9, !dbg !3031
  br i1 %11, label %12, label %13, !dbg !3031

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3032
  br label %19, !dbg !3034

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3035
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3019, metadata !635) #10, !dbg !3025
  %15 = icmp eq i8* %14, null, !dbg !3036
  %16 = icmp ne i64 %8, 0, !dbg !3038
  %17 = and i1 %16, %15, !dbg !3039
  br i1 %17, label %18, label %19, !dbg !3039

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3040
  unreachable, !dbg !3040

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3041
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3020 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3019, metadata !635), !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3024, metadata !635), !dbg !3043
  %3 = icmp eq i64 %1, 0, !dbg !3044
  %4 = icmp ne i8* %0, null, !dbg !3045
  %5 = and i1 %4, %3, !dbg !3046
  br i1 %5, label %6, label %7, !dbg !3046

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3047
  br label %13, !dbg !3048

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3049
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3019, metadata !635), !dbg !3042
  %9 = icmp eq i8* %8, null, !dbg !3050
  %10 = icmp ne i64 %1, 0, !dbg !3051
  %11 = and i1 %10, %9, !dbg !3052
  br i1 %11, label %12, label %13, !dbg !3052

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3053
  unreachable, !dbg !3053

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3054
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !557 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !562, metadata !635), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !563, metadata !635), !dbg !3056
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !564, metadata !635), !dbg !3057
  %4 = load i64, i64* %1, align 8, !dbg !3058, !tbaa !2094
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !565, metadata !635), !dbg !3059
  %5 = icmp eq i8* %0, null, !dbg !3060
  br i1 %5, label %6, label %13, !dbg !3062

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3063
  br i1 %7, label %8, label %17, !dbg !3066

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !565, metadata !635), !dbg !3059
  %10 = icmp ugt i64 %2, 128, !dbg !3069
  %11 = zext i1 %10 to i64, !dbg !3069
  %12 = add nuw nsw i64 %9, %11, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !565, metadata !635), !dbg !3059
  br label %17, !dbg !3071

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3072
  %15 = icmp ugt i64 %14, %4, !dbg !3075
  br i1 %15, label %20, label %16, !dbg !3076

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3077
  unreachable, !dbg !3077

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !565, metadata !635), !dbg !3059
  store i64 %18, i64* %1, align 8, !dbg !3078, !tbaa !2094
  %19 = mul i64 %18, %2, !dbg !3079
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3019, metadata !635) #10, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3024, metadata !635) #10, !dbg !3082
  br label %27, !dbg !3083

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3084
  %22 = add i64 %4, 1, !dbg !3085
  %23 = add i64 %22, %21, !dbg !3086
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !565, metadata !635), !dbg !3059
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !565, metadata !635), !dbg !3059
  store i64 %23, i64* %1, align 8, !dbg !3078, !tbaa !2094
  %24 = mul i64 %23, %2, !dbg !3079
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3019, metadata !635) #10, !dbg !3080
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3024, metadata !635) #10, !dbg !3082
  %25 = icmp eq i64 %24, 0, !dbg !3087
  br i1 %25, label %26, label %27, !dbg !3083

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3088
  br label %34, !dbg !3089

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3090
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3019, metadata !635) #10, !dbg !3080
  %30 = icmp eq i8* %29, null, !dbg !3091
  %31 = icmp ne i64 %28, 0, !dbg !3092
  %32 = and i1 %31, %30, !dbg !3093
  br i1 %32, label %33, label %34, !dbg !3093

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !3094
  unreachable, !dbg !3094

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3095
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3096 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3098, metadata !635), !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2979, metadata !635) #10, !dbg !3100
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3102
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2985, metadata !635) #10, !dbg !3103
  %3 = icmp eq i8* %2, null, !dbg !3104
  %4 = icmp ne i64 %0, 0, !dbg !3105
  %5 = and i1 %4, %3, !dbg !3106
  br i1 %5, label %6, label %7, !dbg !3106

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3107
  unreachable, !dbg !3107

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3108
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3109 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3113, metadata !635), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3114, metadata !635), !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !562, metadata !635) #10, !dbg !3117
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !563, metadata !635) #10, !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !564, metadata !635) #10, !dbg !3120
  %3 = load i64, i64* %1, align 8, !dbg !3121, !tbaa !2094
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !565, metadata !635) #10, !dbg !3122
  %4 = icmp eq i8* %0, null, !dbg !3123
  br i1 %4, label %5, label %8, !dbg !3124

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3125
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !565, metadata !635) #10, !dbg !3122
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !565, metadata !635) #10, !dbg !3122
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3126
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !565, metadata !635) #10, !dbg !3122
  store i64 %7, i64* %1, align 8, !dbg !3127, !tbaa !2094
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3019, metadata !635) #10, !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3024, metadata !635) #10, !dbg !3130
  br label %17, !dbg !3131

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3132
  br i1 %9, label %11, label %10, !dbg !3133

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !3134
  unreachable, !dbg !3134

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3135
  %13 = add i64 %3, 1, !dbg !3136
  %14 = add i64 %13, %12, !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !565, metadata !635) #10, !dbg !3122
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !565, metadata !635) #10, !dbg !3122
  store i64 %14, i64* %1, align 8, !dbg !3127, !tbaa !2094
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3019, metadata !635) #10, !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3024, metadata !635) #10, !dbg !3130
  %15 = icmp eq i64 %14, 0, !dbg !3138
  br i1 %15, label %16, label %17, !dbg !3131

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3139
  br label %24, !dbg !3140

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3141
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3019, metadata !635) #10, !dbg !3128
  %20 = icmp eq i8* %19, null, !dbg !3142
  %21 = icmp ne i64 %18, 0, !dbg !3143
  %22 = and i1 %21, %20, !dbg !3144
  br i1 %22, label %23, label %24, !dbg !3144

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !3145
  unreachable, !dbg !3145

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3146
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3147 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3149, metadata !635), !dbg !3150
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2979, metadata !635) #10, !dbg !3151
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3153
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2985, metadata !635) #10, !dbg !3154
  %3 = icmp eq i8* %2, null, !dbg !3155
  %4 = icmp ne i64 %0, 0, !dbg !3156
  %5 = and i1 %4, %3, !dbg !3157
  br i1 %5, label %6, label %7, !dbg !3157

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3158
  unreachable, !dbg !3158

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3159
  ret i8* %2, !dbg !3160
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3161 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3163, metadata !635), !dbg !3166
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3164, metadata !635), !dbg !3167
  %3 = udiv i64 9223372036854775807, %1, !dbg !3168
  %4 = icmp ult i64 %3, %0, !dbg !3168
  br i1 %4, label %8, label %5, !dbg !3170

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3171
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3165, metadata !635), !dbg !3172
  %7 = icmp eq i8* %6, null, !dbg !3173
  br i1 %7, label %8, label %9, !dbg !3174

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3175
  unreachable, !dbg !3175

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3176
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3177 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3183, metadata !635), !dbg !3185
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3184, metadata !635), !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2979, metadata !635) #10, !dbg !3187
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3189
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2985, metadata !635) #10, !dbg !3190
  %4 = icmp eq i8* %3, null, !dbg !3191
  %5 = icmp ne i64 %1, 0, !dbg !3192
  %6 = and i1 %5, %4, !dbg !3193
  br i1 %6, label %7, label %8, !dbg !3193

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3194
  unreachable, !dbg !3194

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3195
  ret i8* %3, !dbg !3196
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3197 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3199, metadata !635), !dbg !3200
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3201
  %3 = add i64 %2, 1, !dbg !3202
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3183, metadata !635) #10, !dbg !3203
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3184, metadata !635) #10, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2979, metadata !635) #10, !dbg !3206
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3208
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2985, metadata !635) #10, !dbg !3209
  %5 = icmp eq i8* %4, null, !dbg !3210
  %6 = icmp ne i64 %3, 0, !dbg !3211
  %7 = and i1 %6, %5, !dbg !3212
  br i1 %7, label %8, label %9, !dbg !3212

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3213
  unreachable, !dbg !3213

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3214
  ret i8* %4, !dbg !3215
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3216 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3218, !tbaa !717
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.89, i64 0, i64 0), i32 5) #10, !dbg !3219
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0), i8* %2) #10, !dbg !3220
  tail call void @abort() #15, !dbg !3221
  unreachable, !dbg !3221
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xgetgroups(i8*, i32, i32**) local_unnamed_addr #6 !dbg !3222 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3225, metadata !635), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3226, metadata !635), !dbg !3230
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !3227, metadata !635), !dbg !3231
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #10, !dbg !3232
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3228, metadata !635), !dbg !3233
  %5 = icmp eq i32 %4, -1, !dbg !3234
  br i1 %5, label %6, label %11, !dbg !3236

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #17, !dbg !3237
  %8 = load i32, i32* %7, align 4, !dbg !3237, !tbaa !717
  %9 = icmp eq i32 %8, 12, !dbg !3238
  br i1 %9, label %10, label %11, !dbg !3239

; <label>:10:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3240
  unreachable, !dbg !3240

; <label>:11:                                     ; preds = %6, %3
  ret i32 %4, !dbg !3241
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3242 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3245, metadata !635), !dbg !3251
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3246, metadata !635), !dbg !3252
  %3 = icmp eq i64 %0, 0, !dbg !3253
  %4 = icmp eq i64 %1, 0, !dbg !3254
  %5 = or i1 %3, %4, !dbg !3255
  br i1 %5, label %12, label %6, !dbg !3255

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3248, metadata !635), !dbg !3257
  %8 = udiv i64 %7, %1, !dbg !3258
  %9 = icmp eq i64 %8, %0, !dbg !3260
  br i1 %9, label %12, label %10, !dbg !3261

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3262
  store i32 12, i32* %11, align 4, !dbg !3264, !tbaa !717
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3245, metadata !635), !dbg !3251
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3246, metadata !635), !dbg !3252
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3265
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3247, metadata !635), !dbg !3266
  br label %16, !dbg !3267

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3268
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3269 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3286, metadata !635), !dbg !3295
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3287, metadata !635), !dbg !3296
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3288, metadata !635), !dbg !3297
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3289, metadata !635), !dbg !3298
  %6 = bitcast i32* %5 to i8*, !dbg !3299
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3299
  %7 = icmp eq i32* %0, null, !dbg !3300
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3286, metadata !635), !dbg !3295
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3302
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3286, metadata !635), !dbg !3295
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3290, metadata !635), !dbg !3304
  %10 = icmp ugt i64 %9, -3, !dbg !3305
  %11 = icmp ne i64 %2, 0, !dbg !3306
  %12 = and i1 %11, %10, !dbg !3307
  br i1 %12, label %13, label %18, !dbg !3307

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3308
  br i1 %14, label %18, label %15, !dbg !3309

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3310, !tbaa !769
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3292, metadata !635), !dbg !3311
  %17 = zext i8 %16 to i32, !dbg !3312
  store i32 %17, i32* %8, align 4, !dbg !3313, !tbaa !717
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3314
  ret i64 %19, !dbg !3314
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3315 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3360, metadata !635), !dbg !3365
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3366
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3367, metadata !635), !dbg !3370
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3372
  %4 = load i32, i32* %3, align 8, !dbg !3372, !tbaa !3373
  %5 = and i32 %4, 32, !dbg !3372
  %6 = icmp eq i32 %5, 0, !dbg !3374
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3375
  %8 = icmp ne i32 %7, 0, !dbg !3376
  br i1 %6, label %9, label %19, !dbg !3377

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3379
  %11 = xor i1 %8, true, !dbg !3380
  %12 = or i1 %10, %11, !dbg !3380
  %13 = sext i1 %8 to i32, !dbg !3380
  br i1 %12, label %22, label %14, !dbg !3380

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3381
  %16 = load i32, i32* %15, align 4, !dbg !3381, !tbaa !717
  %17 = icmp ne i32 %16, 9, !dbg !3382
  %18 = sext i1 %17 to i32, !dbg !3383
  br label %22, !dbg !3383

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3384

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3386
  store i32 0, i32* %21, align 4, !dbg !3388, !tbaa !717
  br label %22, !dbg !3386

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3389
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3390 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3395, metadata !635), !dbg !3398
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3396, metadata !635), !dbg !3399
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3400
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3397, metadata !635), !dbg !3401
  %3 = icmp eq i8* %2, null, !dbg !3402
  br i1 %3, label %11, label %4, !dbg !3404

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i64 0, i64 0)) #14, !dbg !3405
  %6 = icmp eq i32 %5, 0, !dbg !3410
  br i1 %6, label %10, label %7, !dbg !3411

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.102, i64 0, i64 0)) #14, !dbg !3412
  %9 = icmp eq i32 %8, 0, !dbg !3413
  br i1 %9, label %10, label %11, !dbg !3414

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3396, metadata !635), !dbg !3399
  br label %11, !dbg !3415

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3416
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3417 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3423, metadata !635), !dbg !3497
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3490, metadata !635), !dbg !3500
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3501
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3421, metadata !635), !dbg !3502
  %4 = icmp eq i8* %3, null, !dbg !3503
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), i8* %3, !dbg !3505
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3421, metadata !635), !dbg !3502
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3506, !tbaa !642
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3437, metadata !635) #10, !dbg !3507
  %7 = icmp eq i8* %6, null, !dbg !3508
  br i1 %7, label %8, label %123, !dbg !3509

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.106, i64 0, i64 0)) #10, !dbg !3510
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3438, metadata !635) #10, !dbg !3511
  %10 = icmp eq i8* %9, null, !dbg !3512
  br i1 %10, label %14, label %11, !dbg !3514

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3515, !tbaa !769
  %13 = icmp eq i8 %12, 0, !dbg !3516
  br i1 %13, label %14, label %15, !dbg !3517

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3518

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.107, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3438, metadata !635) #10, !dbg !3511
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3519
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3441, metadata !635) #10, !dbg !3520
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3443, metadata !635) #10, !dbg !3521
  %18 = icmp eq i64 %17, 0, !dbg !3522
  br i1 %18, label %24, label %19, !dbg !3523

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3524
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3524
  %22 = load i8, i8* %21, align 1, !dbg !3524, !tbaa !769
  %23 = icmp ne i8 %22, 47, !dbg !3524
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3525
  %27 = add i64 %17, 14, !dbg !3526
  %28 = add i64 %27, %26, !dbg !3527
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !3528
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3440, metadata !635) #10, !dbg !3529
  %30 = icmp eq i8* %29, null, !dbg !3530
  br i1 %30, label %121, label %31, !dbg !3530

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !3531
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3534

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3535, !tbaa !769
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3537
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.108, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3538
  br label %37, !dbg !3539

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3537
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.108, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !3538
  br label %37, !dbg !3539

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !3540
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3445, metadata !635) #10, !dbg !3541
  %39 = icmp slt i32 %38, 0, !dbg !3542
  br i1 %39, label %119, label %40, !dbg !3543

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.109, i64 0, i64 0)) #10, !dbg !3544
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3446, metadata !635) #10, !dbg !3545
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3546
  br i1 %42, label %43, label %45, !dbg !3547

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #10, !dbg !3548
  br label %119, !dbg !3550

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3487, metadata !635) #10, !dbg !3551
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3488, metadata !635) #10, !dbg !3552
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3553

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3554

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3487, metadata !635) #10, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3488, metadata !635) #10, !dbg !3552
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3554
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3555
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3556, metadata !635) #10, !dbg !3561
  %54 = load i8*, i8** %48, align 8, !dbg !3563, !tbaa !3564
  %55 = load i8*, i8** %49, align 8, !dbg !3563, !tbaa !3565
  %56 = icmp ult i8* %54, %55, !dbg !3563
  br i1 %56, label %59, label %57, !dbg !3563, !prof !768

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3563
  br label %63, !dbg !3563

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3563
  store i8* %60, i8** %48, align 8, !dbg !3563, !tbaa !3564
  %61 = load i8, i8* %54, align 1, !dbg !3563, !tbaa !769
  %62 = zext i8 %61 to i32, !dbg !3563
  br label %63, !dbg !3563

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3563
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3489, metadata !635) #10, !dbg !3566
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3567, !llvm.loop !3568

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3573

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3556, metadata !635) #10, !dbg !3575
  %67 = load i8*, i8** %48, align 8, !dbg !3573, !tbaa !3564
  %68 = load i8*, i8** %49, align 8, !dbg !3573, !tbaa !3565
  %69 = icmp ult i8* %67, %68, !dbg !3573
  br i1 %69, label %72, label %70, !dbg !3573, !prof !768

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !3573
  br label %76, !dbg !3573

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3573
  store i8* %73, i8** %48, align 8, !dbg !3573, !tbaa !3564
  %74 = load i8, i8* %67, align 1, !dbg !3573, !tbaa !769
  %75 = zext i8 %74 to i32, !dbg !3573
  br label %76, !dbg !3573

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3573
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3489, metadata !635) #10, !dbg !3566
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3576, !llvm.loop !3577

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #10, !dbg !3580
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.110, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !3581
  %81 = icmp slt i32 %80, 2, !dbg !3583
  br i1 %81, label %112, label %82, !dbg !3584

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3494, metadata !635) #10, !dbg !3586
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3587
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3495, metadata !635) #10, !dbg !3588
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3496, metadata !635) #10, !dbg !3589
  %85 = icmp eq i64 %51, 0, !dbg !3590
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3592

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3488, metadata !635) #10, !dbg !3552
  %90 = add i64 %87, 2, !dbg !3593
  %91 = call noalias i8* @malloc(i64 %90) #10, !dbg !3595
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3487, metadata !635) #10, !dbg !3551
  br label %96, !dbg !3596

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3488, metadata !635) #10, !dbg !3552
  %94 = add i64 %93, 1, !dbg !3599
  %95 = call i8* @realloc(i8* %52, i64 %94) #10, !dbg !3600
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3487, metadata !635) #10, !dbg !3551
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3487, metadata !635) #10, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3488, metadata !635) #10, !dbg !3552
  %99 = icmp eq i8* %98, null, !dbg !3601
  br i1 %99, label %100, label %102, !dbg !3603

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3488, metadata !635) #10, !dbg !3552
  call void @free(i8* %52) #10, !dbg !3604
  br label %112, !dbg !3606

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3607
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3607
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3608
  %104 = xor i64 %84, -1, !dbg !3609
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3609
  %106 = xor i64 %83, -1, !dbg !3610
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3610
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3611, metadata !635) #10, !dbg !3620
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3619, metadata !635) #10, !dbg !3620
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #10, !dbg !3622
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #10, !dbg !3623
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3611, metadata !635) #10, !dbg !3624
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3619, metadata !635) #10, !dbg !3624
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #10, !dbg !3626
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #10, !dbg !3627
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3487, metadata !635) #10, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3488, metadata !635) #10, !dbg !3552
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3607
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3607
  br label %50, !dbg !3628, !llvm.loop !3577

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #10, !dbg !3607
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #10, !dbg !3607
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !3629
  %116 = icmp eq i64 %113, 0, !dbg !3630
  br i1 %116, label %119, label %117, !dbg !3632

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3633
  store i8 0, i8* %118, align 1, !dbg !3635, !tbaa !769
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3437, metadata !635) #10, !dbg !3507
  call void @free(i8* %29) #10, !dbg !3636
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3437, metadata !635) #10, !dbg !3507
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3637, !tbaa !642
  br label %123, !dbg !3638

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3437, metadata !635) #10, !dbg !3507
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3422, metadata !635), !dbg !3639
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3422, metadata !635), !dbg !3639
  %125 = load i8, i8* %124, align 1, !dbg !3640, !tbaa !769
  %126 = icmp eq i8 %125, 0, !dbg !3642
  br i1 %126, label %152, label %127, !dbg !3643

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3644

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3422, metadata !635), !dbg !3639
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3644
  %132 = icmp eq i32 %131, 0, !dbg !3646
  br i1 %132, label %139, label %133, !dbg !3647

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3648
  br i1 %134, label %135, label %143, !dbg !3649

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3650
  %137 = load i8, i8* %136, align 1, !dbg !3650, !tbaa !769
  %138 = icmp eq i8 %137, 0, !dbg !3651
  br i1 %138, label %139, label %143, !dbg !3652

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3653
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3655
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3656
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3421, metadata !635), !dbg !3502
  br label %152, !dbg !3657

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3658
  %145 = add i64 %144, 1, !dbg !3659
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3660
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3422, metadata !635), !dbg !3639
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3661
  %148 = add i64 %147, 1, !dbg !3662
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3663
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3422, metadata !635), !dbg !3639
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3422, metadata !635), !dbg !3639
  %150 = load i8, i8* %149, align 1, !dbg !3640, !tbaa !769
  %151 = icmp eq i8 %150, 0, !dbg !3642
  br i1 %151, label %152, label %128, !dbg !3643, !llvm.loop !3664

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3421, metadata !635), !dbg !3502
  %154 = load i8, i8* %153, align 1, !dbg !3666, !tbaa !769
  %155 = icmp eq i8 %154, 0, !dbg !3668
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.111, i64 0, i64 0), i8* %153, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3421, metadata !635), !dbg !3502
  ret i8* %156, !dbg !3670
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
define i32 @mgetgroups(i8*, i32, i32** nocapture) local_unnamed_addr #6 !dbg !587 {
  %4 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !593, metadata !635), !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !594, metadata !635), !dbg !3672
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !595, metadata !635), !dbg !3673
  %5 = bitcast i32* %4 to i8*, !dbg !3674
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10, !dbg !3674
  %6 = icmp eq i8* %0, null, !dbg !3675
  br i1 %6, label %44, label %7, !dbg !3676

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !596, metadata !635), !dbg !3677
  store i32 10, i32* %4, align 4, !dbg !3678, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !3679, metadata !635) #10, !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 10, i64 0, metadata !3684, metadata !635) #10, !dbg !3687
  %8 = tail call i8* @realloc(i8* null, i64 40) #10, !dbg !3688
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !598, metadata !635), !dbg !3689
  %9 = icmp eq i8* %8, null, !dbg !3690
  br i1 %9, label %149, label %10, !dbg !3692

; <label>:10:                                     ; preds = %7
  br label %11, !dbg !3688

; <label>:11:                                     ; preds = %10, %39
  %12 = phi i32 [ %40, %39 ], [ 10, %10 ], !dbg !3693
  %13 = phi i8* [ %30, %39 ], [ %8, %10 ]
  %14 = bitcast i8* %13 to i32*, !dbg !3688
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !598, metadata !635), !dbg !3689
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !596, metadata !635), !dbg !3677
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !603, metadata !635), !dbg !3694
  call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !596, metadata !635), !dbg !3677
  %15 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %14, i32* nonnull %4) #10, !dbg !3695
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !597, metadata !635), !dbg !3696
  %16 = icmp slt i32 %15, 0, !dbg !3697
  %17 = load i32, i32* %4, align 4, !tbaa !717
  %18 = icmp eq i32 %12, %17, !dbg !3699
  %19 = and i1 %16, %18, !dbg !3700
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !596, metadata !635), !dbg !3677
  br i1 %19, label %20, label %22, !dbg !3700

; <label>:20:                                     ; preds = %11
  %21 = shl nsw i32 %12, 1, !dbg !3701
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !596, metadata !635), !dbg !3677
  store i32 %21, i32* %4, align 4, !dbg !3701, !tbaa !717
  br label %22, !dbg !3702

; <label>:22:                                     ; preds = %11, %20
  %23 = phi i32 [ %21, %20 ], [ %17, %11 ], !dbg !3703
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !596, metadata !635), !dbg !3677
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !3679, metadata !635) #10, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !3684, metadata !635) #10, !dbg !3706
  %24 = icmp slt i32 %23, 0, !dbg !3707
  br i1 %24, label %25, label %27, !dbg !3709

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #17, !dbg !3710
  store i32 12, i32* %26, align 4, !dbg !3712, !tbaa !717
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !599, metadata !635), !dbg !3713
  br label %34, !dbg !3714

; <label>:27:                                     ; preds = %22
  %28 = sext i32 %23 to i64, !dbg !3703
  %29 = shl nsw i64 %28, 2, !dbg !3715
  %30 = call i8* @realloc(i8* nonnull %13, i64 %29) #10, !dbg !3716
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !599, metadata !635), !dbg !3713
  %31 = icmp eq i8* %30, null, !dbg !3717
  br i1 %31, label %32, label %37, !dbg !3714

; <label>:32:                                     ; preds = %27
  %33 = tail call i32* @__errno_location() #17, !dbg !3718
  br label %34, !dbg !3718

; <label>:34:                                     ; preds = %32, %25
  %35 = phi i32* [ %33, %32 ], [ %26, %25 ], !dbg !3718
  %36 = load i32, i32* %35, align 4, !dbg !3718, !tbaa !717
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !604, metadata !635), !dbg !3719
  call void @free(i8* nonnull %13) #10, !dbg !3720
  store i32 %36, i32* %35, align 4, !dbg !3721, !tbaa !717
  br label %149

; <label>:37:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !598, metadata !635), !dbg !3689
  %38 = icmp sgt i32 %15, -1, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !598, metadata !635), !dbg !3689
  br i1 %38, label %41, label %39, !dbg !3724, !llvm.loop !3725

; <label>:39:                                     ; preds = %37
  %40 = load i32, i32* %4, align 4, !dbg !3693, !tbaa !717
  br label %11, !dbg !3724

; <label>:41:                                     ; preds = %37
  %42 = bitcast i32** %2 to i8**, !dbg !3728
  store i8* %30, i8** %42, align 8, !dbg !3728, !tbaa !642
  %43 = load i32, i32* %4, align 4, !dbg !3730, !tbaa !717
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !596, metadata !635), !dbg !3677
  br label %149, !dbg !3731

; <label>:44:                                     ; preds = %3
  %45 = tail call i32 @getgroups(i32 0, i32* null) #10, !dbg !3732
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !596, metadata !635), !dbg !3677
  store i32 %45, i32* %4, align 4, !dbg !3733, !tbaa !717
  %46 = icmp slt i32 %45, 0, !dbg !3734
  br i1 %46, label %47, label %59, !dbg !3736

; <label>:47:                                     ; preds = %44
  %48 = tail call i32* @__errno_location() #17, !dbg !3737
  %49 = load i32, i32* %48, align 4, !dbg !3737, !tbaa !717
  %50 = icmp eq i32 %49, 38, !dbg !3740
  br i1 %50, label %51, label %149, !dbg !3741

; <label>:51:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !3679, metadata !635) #10, !dbg !3742
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3684, metadata !635) #10, !dbg !3744
  %52 = tail call i8* @realloc(i8* null, i64 4) #10, !dbg !3745
  tail call void @llvm.dbg.value(metadata i32* %55, i64 0, metadata !598, metadata !635), !dbg !3689
  %53 = icmp eq i8* %52, null, !dbg !3746
  br i1 %53, label %149, label %54, !dbg !3747

; <label>:54:                                     ; preds = %51
  %55 = bitcast i8* %52 to i32*, !dbg !3745
  %56 = bitcast i32** %2 to i8**, !dbg !3748
  store i8* %52, i8** %56, align 8, !dbg !3748, !tbaa !642
  store i32 %1, i32* %55, align 4, !dbg !3750, !tbaa !717
  %57 = icmp ne i32 %1, -1, !dbg !3751
  %58 = zext i1 %57 to i32, !dbg !3751
  br label %149, !dbg !3752

; <label>:59:                                     ; preds = %44
  %60 = icmp eq i32 %45, 0, !dbg !3753
  %61 = icmp ne i32 %1, -1, !dbg !3755
  %62 = or i1 %61, %60, !dbg !3756
  br i1 %62, label %63, label %68, !dbg !3756

; <label>:63:                                     ; preds = %59
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !596, metadata !635), !dbg !3677
  %64 = add nsw i32 %45, 1, !dbg !3757
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !596, metadata !635), !dbg !3677
  store i32 %64, i32* %4, align 4, !dbg !3757, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !596, metadata !635), !dbg !3677
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !3679, metadata !635) #10, !dbg !3758
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !3684, metadata !635) #10, !dbg !3760
  %65 = icmp slt i32 %45, -1, !dbg !3761
  br i1 %65, label %66, label %68, !dbg !3762

; <label>:66:                                     ; preds = %63
  %67 = tail call i32* @__errno_location() #17, !dbg !3763
  store i32 12, i32* %67, align 4, !dbg !3764, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !598, metadata !635), !dbg !3689
  br label %149, !dbg !3765

; <label>:68:                                     ; preds = %59, %63
  %69 = phi i32 [ %64, %63 ], [ %45, %59 ]
  %70 = sext i32 %69 to i64, !dbg !3766
  %71 = shl nsw i64 %70, 2, !dbg !3767
  %72 = tail call i8* @realloc(i8* null, i64 %71) #10, !dbg !3768
  %73 = bitcast i8* %72 to i32*, !dbg !3768
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !598, metadata !635), !dbg !3689
  %74 = icmp eq i8* %72, null, !dbg !3769
  br i1 %74, label %149, label %75, !dbg !3765

; <label>:75:                                     ; preds = %68
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !596, metadata !635), !dbg !3677
  %76 = zext i1 %61 to i32, !dbg !3771
  %77 = sub nsw i32 %69, %76, !dbg !3772
  %78 = zext i1 %61 to i64, !dbg !3773
  %79 = getelementptr inbounds i32, i32* %73, i64 %78, !dbg !3773
  %80 = tail call i32 @getgroups(i32 %77, i32* %79) #10, !dbg !3774
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !597, metadata !635), !dbg !3696
  %81 = icmp slt i32 %80, 0, !dbg !3775
  br i1 %81, label %82, label %85, !dbg !3776

; <label>:82:                                     ; preds = %75
  %83 = tail call i32* @__errno_location() #17, !dbg !3777
  %84 = load i32, i32* %83, align 4, !dbg !3777, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !607, metadata !635), !dbg !3778
  tail call void @free(i8* nonnull %72) #10, !dbg !3779
  store i32 %84, i32* %83, align 4, !dbg !3780, !tbaa !717
  br label %149

; <label>:85:                                     ; preds = %75
  br i1 %61, label %86, label %88, !dbg !3781

; <label>:86:                                     ; preds = %85
  store i32 %1, i32* %73, align 4, !dbg !3783, !tbaa !717
  %87 = add nsw i32 %80, 1, !dbg !3785
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !597, metadata !635), !dbg !3696
  br label %88, !dbg !3786

; <label>:88:                                     ; preds = %85, %86
  %89 = phi i32 [ %87, %86 ], [ %80, %85 ]
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !597, metadata !635), !dbg !3696
  %90 = bitcast i32** %2 to i8**, !dbg !3787
  store i8* %72, i8** %90, align 8, !dbg !3787, !tbaa !642
  %91 = icmp sgt i32 %89, 1, !dbg !3788
  br i1 %91, label %92, label %149, !dbg !3789

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %73, align 4, !dbg !3790, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !610, metadata !635), !dbg !3791
  %94 = sext i32 %89 to i64, !dbg !3792
  %95 = getelementptr inbounds i32, i32* %73, i64 %94, !dbg !3792
  tail call void @llvm.dbg.value(metadata i32* %95, i64 0, metadata !614, metadata !635), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !613, metadata !3794), !dbg !3795
  %96 = getelementptr inbounds i8, i8* %72, i64 4
  %97 = bitcast i8* %96 to i32*
  tail call void @llvm.dbg.value(metadata i32* %97, i64 0, metadata !613, metadata !635), !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !597, metadata !635), !dbg !3696
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !598, metadata !635), !dbg !3689
  %98 = icmp ugt i32* %95, %97, !dbg !3796
  br i1 %98, label %99, label %149, !dbg !3799

; <label>:99:                                     ; preds = %92
  %100 = shl nsw i64 %94, 2, !dbg !3800
  %101 = add nsw i64 %100, -5, !dbg !3800
  %102 = lshr i64 %101, 2, !dbg !3800
  %103 = and i64 %102, 1, !dbg !3800
  %104 = icmp eq i64 %103, 0, !dbg !3800
  br i1 %104, label %105, label %119, !dbg !3800

; <label>:105:                                    ; preds = %99
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !598, metadata !635), !dbg !3689
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !597, metadata !635), !dbg !3696
  %106 = load i32, i32* %97, align 4, !dbg !3800, !tbaa !717
  %107 = icmp eq i32 %106, %93, !dbg !3803
  br i1 %107, label %111, label %108, !dbg !3804

; <label>:108:                                    ; preds = %105
  %109 = getelementptr inbounds i8, i8* %72, i64 4, !dbg !3805
  %110 = bitcast i8* %109 to i32*, !dbg !3805
  tail call void @llvm.dbg.value(metadata i32* %110, i64 0, metadata !598, metadata !635), !dbg !3689
  store i32 %106, i32* %110, align 4, !dbg !3806, !tbaa !717
  br label %113

; <label>:111:                                    ; preds = %105
  %112 = add nsw i32 %89, -1, !dbg !3807
  tail call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !597, metadata !635), !dbg !3696
  br label %113, !dbg !3808

; <label>:113:                                    ; preds = %111, %108
  %114 = phi i32 [ %93, %111 ], [ %106, %108 ]
  %115 = phi i32* [ %73, %111 ], [ %110, %108 ]
  %116 = phi i32 [ %112, %111 ], [ %89, %108 ]
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !597, metadata !635), !dbg !3696
  tail call void @llvm.dbg.value(metadata i32* %115, i64 0, metadata !598, metadata !635), !dbg !3689
  tail call void @llvm.dbg.value(metadata i32* %97, i64 0, metadata !613, metadata !3794), !dbg !3795
  %117 = getelementptr inbounds i8, i8* %72, i64 8
  %118 = bitcast i8* %117 to i32*
  tail call void @llvm.dbg.value(metadata i32* %118, i64 0, metadata !613, metadata !635), !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !597, metadata !635), !dbg !3696
  tail call void @llvm.dbg.value(metadata i32* %115, i64 0, metadata !598, metadata !635), !dbg !3689
  br label %119, !dbg !3799

; <label>:119:                                    ; preds = %113, %99
  %120 = phi i32 [ %93, %99 ], [ %114, %113 ]
  %121 = phi i32* [ %97, %99 ], [ %118, %113 ]
  %122 = phi i32 [ %89, %99 ], [ %116, %113 ]
  %123 = phi i32* [ %73, %99 ], [ %115, %113 ]
  %124 = phi i32 [ undef, %99 ], [ %116, %113 ]
  %125 = icmp eq i64 %102, 0, !dbg !3800
  br i1 %125, label %149, label %126, !dbg !3800

; <label>:126:                                    ; preds = %119
  br label %127, !dbg !3800

; <label>:127:                                    ; preds = %155, %126
  %128 = phi i32 [ %120, %126 ], [ %156, %155 ]
  %129 = phi i32* [ %121, %126 ], [ %159, %155 ]
  %130 = phi i32 [ %122, %126 ], [ %158, %155 ]
  %131 = phi i32* [ %123, %126 ], [ %157, %155 ]
  tail call void @llvm.dbg.value(metadata i32* %131, i64 0, metadata !598, metadata !635), !dbg !3689
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !597, metadata !635), !dbg !3696
  %132 = load i32, i32* %129, align 4, !dbg !3800, !tbaa !717
  %133 = icmp eq i32 %132, %93, !dbg !3809
  %134 = icmp eq i32 %132, %128, !dbg !3803
  %135 = or i1 %133, %134, !dbg !3804
  br i1 %135, label %136, label %138, !dbg !3804

; <label>:136:                                    ; preds = %127
  %137 = add nsw i32 %130, -1, !dbg !3807
  tail call void @llvm.dbg.value(metadata i32 %137, i64 0, metadata !597, metadata !635), !dbg !3696
  br label %140, !dbg !3808

; <label>:138:                                    ; preds = %127
  %139 = getelementptr inbounds i32, i32* %131, i64 1, !dbg !3805
  tail call void @llvm.dbg.value(metadata i32* %139, i64 0, metadata !598, metadata !635), !dbg !3689
  store i32 %132, i32* %139, align 4, !dbg !3806, !tbaa !717
  br label %140

; <label>:140:                                    ; preds = %136, %138
  %141 = phi i32 [ %128, %136 ], [ %132, %138 ]
  %142 = phi i32* [ %131, %136 ], [ %139, %138 ]
  %143 = phi i32 [ %137, %136 ], [ %130, %138 ]
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !597, metadata !635), !dbg !3696
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !598, metadata !635), !dbg !3689
  tail call void @llvm.dbg.value(metadata i32* %129, i64 0, metadata !613, metadata !3794), !dbg !3795
  %144 = getelementptr inbounds i32, i32* %129, i64 1
  tail call void @llvm.dbg.value(metadata i32* %144, i64 0, metadata !613, metadata !635), !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !597, metadata !635), !dbg !3696
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !598, metadata !635), !dbg !3689
  tail call void @llvm.dbg.value(metadata i32* %131, i64 0, metadata !598, metadata !635), !dbg !3689
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !597, metadata !635), !dbg !3696
  %145 = load i32, i32* %144, align 4, !dbg !3800, !tbaa !717
  %146 = icmp eq i32 %145, %93, !dbg !3809
  %147 = icmp eq i32 %145, %141, !dbg !3803
  %148 = or i1 %146, %147, !dbg !3804
  br i1 %148, label %153, label %151, !dbg !3804

; <label>:149:                                    ; preds = %119, %155, %92, %41, %34, %66, %88, %68, %47, %51, %7, %82, %54
  %150 = phi i32 [ %58, %54 ], [ -1, %82 ], [ -1, %7 ], [ -1, %51 ], [ -1, %47 ], [ -1, %68 ], [ %89, %88 ], [ -1, %66 ], [ %43, %41 ], [ -1, %34 ], [ %89, %92 ], [ %124, %119 ], [ %158, %155 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10, !dbg !3810
  ret i32 %150, !dbg !3810

; <label>:151:                                    ; preds = %140
  %152 = getelementptr inbounds i32, i32* %142, i64 1, !dbg !3805
  tail call void @llvm.dbg.value(metadata i32* %139, i64 0, metadata !598, metadata !635), !dbg !3689
  store i32 %145, i32* %152, align 4, !dbg !3806, !tbaa !717
  br label %155

; <label>:153:                                    ; preds = %140
  %154 = add nsw i32 %143, -1, !dbg !3807
  tail call void @llvm.dbg.value(metadata i32 %137, i64 0, metadata !597, metadata !635), !dbg !3696
  br label %155, !dbg !3808

; <label>:155:                                    ; preds = %153, %151
  %156 = phi i32 [ %141, %153 ], [ %145, %151 ]
  %157 = phi i32* [ %142, %153 ], [ %152, %151 ]
  %158 = phi i32 [ %154, %153 ], [ %143, %151 ]
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !597, metadata !635), !dbg !3696
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !598, metadata !635), !dbg !3689
  tail call void @llvm.dbg.value(metadata i32* %129, i64 0, metadata !613, metadata !3794), !dbg !3795
  %159 = getelementptr inbounds i32, i32* %129, i64 2
  tail call void @llvm.dbg.value(metadata i32* %144, i64 0, metadata !613, metadata !635), !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !597, metadata !635), !dbg !3696
  tail call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !598, metadata !635), !dbg !3689
  %160 = icmp ult i32* %159, %95, !dbg !3796
  br i1 %160, label %127, label %149, !dbg !3799, !llvm.loop !3811
}

declare i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3813 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3858, metadata !635), !dbg !3862
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3859, metadata !635), !dbg !3863
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3861, metadata !635), !dbg !3864
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3865
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3860, metadata !635), !dbg !3866
  %3 = icmp slt i32 %2, 0, !dbg !3867
  br i1 %3, label %4, label %6, !dbg !3869

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3870
  br label %24, !dbg !3871

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3872
  %8 = icmp eq i32 %7, 0, !dbg !3872
  br i1 %8, label %13, label %9, !dbg !3874

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3875
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3876
  %12 = icmp eq i64 %11, -1, !dbg !3877
  br i1 %12, label %16, label %13, !dbg !3878

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3879
  %15 = icmp eq i32 %14, 0, !dbg !3879
  br i1 %15, label %16, label %18, !dbg !3880

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3859, metadata !635), !dbg !3863
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3881
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3861, metadata !635), !dbg !3864
  br label %24, !dbg !3882

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3883
  %20 = load i32, i32* %19, align 4, !dbg !3883, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3859, metadata !635), !dbg !3863
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3859, metadata !635), !dbg !3863
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3881
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3861, metadata !635), !dbg !3864
  %22 = icmp eq i32 %20, 0, !dbg !3884
  br i1 %22, label %24, label %23, !dbg !3882

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3886, !tbaa !717
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3861, metadata !635), !dbg !3864
  br label %24, !dbg !3888

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3889
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3890 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3935, metadata !635), !dbg !3936
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3937
  br i1 %2, label %6, label %3, !dbg !3939

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3940
  %5 = icmp eq i32 %4, 0, !dbg !3940
  br i1 %5, label %6, label %8, !dbg !3941

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3942
  br label %17, !dbg !3943

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3944, metadata !635) #10, !dbg !3949
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3951
  %10 = load i32, i32* %9, align 8, !dbg !3951, !tbaa !3373
  %11 = and i32 %10, 256, !dbg !3953
  %12 = icmp eq i32 %11, 0, !dbg !3953
  br i1 %12, label %15, label %13, !dbg !3954

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3955
  br label %15, !dbg !3955

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3956
  br label %17, !dbg !3957

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3958
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3959 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4005, metadata !635), !dbg !4011
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4006, metadata !635), !dbg !4012
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4007, metadata !635), !dbg !4013
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4014
  %5 = load i8*, i8** %4, align 8, !dbg !4014, !tbaa !3565
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4015
  %7 = load i8*, i8** %6, align 8, !dbg !4015, !tbaa !3564
  %8 = icmp eq i8* %5, %7, !dbg !4016
  br i1 %8, label %9, label %28, !dbg !4017

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4018
  %11 = load i8*, i8** %10, align 8, !dbg !4018, !tbaa !763
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4019
  %13 = load i8*, i8** %12, align 8, !dbg !4019, !tbaa !4020
  %14 = icmp eq i8* %11, %13, !dbg !4021
  br i1 %14, label %15, label %28, !dbg !4022

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4023
  %17 = load i8*, i8** %16, align 8, !dbg !4023, !tbaa !4024
  %18 = icmp eq i8* %17, null, !dbg !4025
  br i1 %18, label %19, label %28, !dbg !4026

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4027
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4028
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4008, metadata !635), !dbg !4029
  %22 = icmp eq i64 %21, -1, !dbg !4030
  br i1 %22, label %30, label %23, !dbg !4032

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4033
  %25 = load i32, i32* %24, align 8, !dbg !4034, !tbaa !3373
  %26 = and i32 %25, -17, !dbg !4034
  store i32 %26, i32* %24, align 8, !dbg !4034, !tbaa !3373
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4035
  store i64 %21, i64* %27, align 8, !dbg !4036, !tbaa !4037
  br label %30, !dbg !4038

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4039
  br label %30, !dbg !4040

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4041
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
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !59, !70, !75, !84, !538, !91, !98, !544, !183, !552, !569, !571, !573, !575, !578, !580, !192, !582, !618, !620, !622}
!llvm.ident = !{!624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624}
!llvm.module.flags = !{!625, !626, !627, !628, !629}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 40, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/groups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!11, !0}
!11 = !DIGlobalVariableExpression(var: !12)
!12 = distinct !DIGlobalVariable(name: "infomap", scope: !13, file: !14, line: 632, type: !30, isLocal: true, isDefinition: true)
!13 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !14, file: !14, line: 630, type: !15, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !19)
!14 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !{!20, !21, !22, !29}
!20 = !DILocalVariable(name: "program", arg: 1, scope: !13, file: !14, line: 630, type: !17)
!21 = !DILocalVariable(name: "node", scope: !13, file: !14, line: 642, type: !17)
!22 = !DILocalVariable(name: "map_prog", scope: !13, file: !14, line: 643, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !13, file: !14, line: 632, size: 128, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !25, file: !14, line: 632, baseType: !17, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !25, file: !14, line: 632, baseType: !17, size: 64, offset: 64)
!29 = !DILocalVariable(name: "lc_messages", scope: !13, file: !14, line: 655, type: !17)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 896, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 7)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 768, elements: !44)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !36, line: 50, size: 256, elements: !37)
!36 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!37 = !{!38, !39, !41, !43}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !35, file: !36, line: 52, baseType: !17, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !35, file: !36, line: 55, baseType: !40, size: 32, offset: 64)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !35, file: !36, line: 56, baseType: !42, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !35, file: !36, line: 57, baseType: !40, size: 32, offset: 192)
!44 = !{!45}
!45 = !DISubrange(count: 3)
!46 = !DIGlobalVariableExpression(var: !47)
!47 = distinct !DIGlobalVariable(name: "buf", scope: !48, file: !49, line: 97, type: !65, isLocal: true, isDefinition: true)
!48 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !49, file: !49, line: 95, type: !50, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !59, variables: !63)
!49 = !DIFile(filename: "src/group-list.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !DISubroutineType(types: !51)
!51 = !{!6, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !55, line: 65, baseType: !56)
!55 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !57, line: 135, baseType: !58)
!57 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !60, globals: !62)
!60 = !{!8, !61, !9}
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !{!46}
!63 = !{!64}
!64 = !DILocalVariable(name: "gid", arg: 1, scope: !48, file: !49, line: 95, type: !52)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 168, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 21)
!68 = !DIGlobalVariableExpression(var: !69)
!69 = distinct !DIGlobalVariable(name: "Version", scope: !70, file: !71, line: 2, type: !17, isLocal: false, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !72)
!71 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !{!68}
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "file_name", scope: !75, file: !80, line: 36, type: !17, isLocal: true, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !77)
!76 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !{!73, !78}
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !75, file: !80, line: 46, type: !81, isLocal: true, isDefinition: true)
!80 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!82 = !DIGlobalVariableExpression(var: !83)
!83 = distinct !DIGlobalVariable(name: "exit_failure", scope: !84, file: !87, line: 24, type: !88, isLocal: false, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !86)
!85 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!86 = !{!82}
!87 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!89 = !DIGlobalVariableExpression(var: !90)
!90 = distinct !DIGlobalVariable(name: "program_name", scope: !91, file: !95, line: 33, type: !17, isLocal: false, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !94)
!92 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!93 = !{!8, !6}
!94 = !{!89}
!95 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !DIGlobalVariableExpression(var: !97)
!97 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !98, file: !142, line: 77, type: !177, isLocal: false, isDefinition: true)
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !100, retainedTypes: !135, globals: !139)
!99 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!100 = !{!101, !115, !120}
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !102, line: 32, size: 32, elements: !103)
!102 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!104 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!105 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!106 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!107 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!108 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!109 = !DIEnumerator(name: "c_quoting_style", value: 5)
!110 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!111 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!112 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!113 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!114 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !102, line: 242, size: 32, elements: !116)
!116 = !{!117, !118, !119}
!117 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!118 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!119 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 46, size: 32, elements: !122)
!121 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!123 = !DIEnumerator(name: "_ISupper", value: 256)
!124 = !DIEnumerator(name: "_ISlower", value: 512)
!125 = !DIEnumerator(name: "_ISalpha", value: 1024)
!126 = !DIEnumerator(name: "_ISdigit", value: 2048)
!127 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!128 = !DIEnumerator(name: "_ISspace", value: 8192)
!129 = !DIEnumerator(name: "_ISprint", value: 16384)
!130 = !DIEnumerator(name: "_ISgraph", value: 32768)
!131 = !DIEnumerator(name: "_ISblank", value: 1)
!132 = !DIEnumerator(name: "_IScntrl", value: 2)
!133 = !DIEnumerator(name: "_ISpunct", value: 4)
!134 = !DIEnumerator(name: "_ISalnum", value: 8)
!135 = !{!40, !136, !137, !6}
!136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 62, baseType: !61)
!138 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !{!96, !140, !147, !159, !161, !166, !173, !175}
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !98, file: !142, line: 93, type: !143, isLocal: false, isDefinition: true)
!142 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 320, elements: !145)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!145 = !{!146}
!146 = !DISubrange(count: 10)
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !98, file: !142, line: 1043, type: !149, isLocal: false, isDefinition: true)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !142, line: 57, size: 448, elements: !150)
!150 = !{!151, !152, !153, !157, !158}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !149, file: !142, line: 60, baseType: !101, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !142, line: 63, baseType: !40, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !149, file: !142, line: 67, baseType: !154, size: 256, offset: 64)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 8)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !149, file: !142, line: 70, baseType: !17, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !149, file: !142, line: 73, baseType: !17, size: 64, offset: 384)
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !98, file: !142, line: 108, type: !149, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "slot0", scope: !98, file: !142, line: 834, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 256)
!166 = !DIGlobalVariableExpression(var: !167)
!167 = distinct !DIGlobalVariable(name: "slotvec", scope: !98, file: !142, line: 837, type: !168, isLocal: true, isDefinition: true)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !142, line: 826, size: 128, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !169, file: !142, line: 828, baseType: !137, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !169, file: !142, line: 829, baseType: !6, size: 64, offset: 64)
!173 = !DIGlobalVariableExpression(var: !174)
!174 = distinct !DIGlobalVariable(name: "nslots", scope: !98, file: !142, line: 835, type: !40, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176)
!176 = distinct !DIGlobalVariable(name: "slotvec0", scope: !98, file: !142, line: 836, type: !169, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 704, elements: !179)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!179 = !{!180}
!180 = !DISubrange(count: 11)
!181 = !DIGlobalVariableExpression(var: !182)
!182 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !183, file: !186, line: 26, type: !187, isLocal: false, isDefinition: true)
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !185)
!184 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!185 = !{!181}
!186 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 47)
!190 = !DIGlobalVariableExpression(var: !191)
!191 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !192, file: !536, line: 120, type: !537, isLocal: true, isDefinition: true)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !194, retainedTypes: !533, globals: !535)
!193 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!194 = !{!195}
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !196, line: 41, size: 32, elements: !197)
!196 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!198 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!199 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!200 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!201 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!202 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!203 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!204 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!205 = !DIEnumerator(name: "DAY_1", value: 131079)
!206 = !DIEnumerator(name: "DAY_2", value: 131080)
!207 = !DIEnumerator(name: "DAY_3", value: 131081)
!208 = !DIEnumerator(name: "DAY_4", value: 131082)
!209 = !DIEnumerator(name: "DAY_5", value: 131083)
!210 = !DIEnumerator(name: "DAY_6", value: 131084)
!211 = !DIEnumerator(name: "DAY_7", value: 131085)
!212 = !DIEnumerator(name: "ABMON_1", value: 131086)
!213 = !DIEnumerator(name: "ABMON_2", value: 131087)
!214 = !DIEnumerator(name: "ABMON_3", value: 131088)
!215 = !DIEnumerator(name: "ABMON_4", value: 131089)
!216 = !DIEnumerator(name: "ABMON_5", value: 131090)
!217 = !DIEnumerator(name: "ABMON_6", value: 131091)
!218 = !DIEnumerator(name: "ABMON_7", value: 131092)
!219 = !DIEnumerator(name: "ABMON_8", value: 131093)
!220 = !DIEnumerator(name: "ABMON_9", value: 131094)
!221 = !DIEnumerator(name: "ABMON_10", value: 131095)
!222 = !DIEnumerator(name: "ABMON_11", value: 131096)
!223 = !DIEnumerator(name: "ABMON_12", value: 131097)
!224 = !DIEnumerator(name: "MON_1", value: 131098)
!225 = !DIEnumerator(name: "MON_2", value: 131099)
!226 = !DIEnumerator(name: "MON_3", value: 131100)
!227 = !DIEnumerator(name: "MON_4", value: 131101)
!228 = !DIEnumerator(name: "MON_5", value: 131102)
!229 = !DIEnumerator(name: "MON_6", value: 131103)
!230 = !DIEnumerator(name: "MON_7", value: 131104)
!231 = !DIEnumerator(name: "MON_8", value: 131105)
!232 = !DIEnumerator(name: "MON_9", value: 131106)
!233 = !DIEnumerator(name: "MON_10", value: 131107)
!234 = !DIEnumerator(name: "MON_11", value: 131108)
!235 = !DIEnumerator(name: "MON_12", value: 131109)
!236 = !DIEnumerator(name: "AM_STR", value: 131110)
!237 = !DIEnumerator(name: "PM_STR", value: 131111)
!238 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!239 = !DIEnumerator(name: "D_FMT", value: 131113)
!240 = !DIEnumerator(name: "T_FMT", value: 131114)
!241 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!242 = !DIEnumerator(name: "ERA", value: 131116)
!243 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!244 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!245 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!246 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!247 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!248 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!249 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!250 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!251 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!252 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!253 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!254 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!255 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!256 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!257 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!258 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!259 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!260 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!261 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!262 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!263 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!264 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!265 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!266 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!267 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!268 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!269 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!270 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!271 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!272 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!273 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!274 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!275 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!276 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!277 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!278 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!279 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!280 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!281 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!282 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!283 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!284 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!285 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!286 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!287 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!288 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!289 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!290 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!291 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!292 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!293 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!294 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!295 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!296 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!297 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!298 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!299 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!300 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!301 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!302 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!303 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!304 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!305 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!306 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!307 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!308 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!309 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!310 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!311 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!312 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!313 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!314 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!315 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!316 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!317 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!318 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!319 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!320 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!321 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!322 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!323 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!324 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!325 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!326 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!327 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!328 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!329 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!330 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!331 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!332 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!333 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!334 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!335 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!336 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!337 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!338 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!339 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!340 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!341 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!342 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!343 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!344 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!345 = !DIEnumerator(name: "CODESET", value: 14)
!346 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!347 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!348 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!349 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!352 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!353 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!354 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!372 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!373 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!374 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!375 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!376 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!392 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!393 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!394 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!395 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!396 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!399 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!401 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!402 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!403 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!404 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!405 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!406 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!407 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!417 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!418 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!419 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!420 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!421 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!422 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!423 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!424 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!425 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!426 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!427 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!428 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!429 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!430 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!431 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!432 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!433 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!434 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!435 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!436 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!437 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!438 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!439 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!440 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!441 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!442 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!443 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!444 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!456 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!457 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!460 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!461 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!462 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!463 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!464 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!465 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!466 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!467 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!468 = !DIEnumerator(name: "THOUSEP", value: 65537)
!469 = !DIEnumerator(name: "__GROUPING", value: 65538)
!470 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!471 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!472 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!473 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!474 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!475 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!476 = !DIEnumerator(name: "__YESSTR", value: 327682)
!477 = !DIEnumerator(name: "__NOSTR", value: 327683)
!478 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!479 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!480 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!481 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!482 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!483 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!484 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!485 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!486 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!487 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!488 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!489 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!490 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!491 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!492 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!493 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!494 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!495 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!496 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!497 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!498 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!499 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!500 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!501 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!502 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!503 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!504 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!505 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!506 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!507 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!508 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!509 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!510 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!511 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!512 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!513 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!514 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!515 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!516 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!517 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!518 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!519 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!531 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!532 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!533 = !{!8, !6, !534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!535 = !{!190}
!536 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!537 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !540)
!539 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !542, line: 112, baseType: !543)
!542 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !57, line: 62, baseType: !61)
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !546, retainedTypes: !551)
!545 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!546 = !{!547}
!547 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !548, line: 41, size: 32, elements: !549)
!548 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = !{!550}
!550 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!551 = !{!8}
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !554, retainedTypes: !568)
!553 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !{!555}
!555 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !557, file: !556, line: 192, size: 32, elements: !566)
!556 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = distinct !DISubprogram(name: "x2nrealloc", scope: !556, file: !556, line: 180, type: !558, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !561)
!558 = !DISubroutineType(types: !559)
!559 = !{!8, !8, !560, !137}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!561 = !{!562, !563, !564, !565}
!562 = !DILocalVariable(name: "p", arg: 1, scope: !557, file: !556, line: 180, type: !8)
!563 = !DILocalVariable(name: "pn", arg: 2, scope: !557, file: !556, line: 180, type: !560)
!564 = !DILocalVariable(name: "s", arg: 3, scope: !557, file: !556, line: 180, type: !137)
!565 = !DILocalVariable(name: "n", scope: !557, file: !556, line: 182, type: !137)
!566 = !{!567}
!567 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!568 = !{!137, !6, !8}
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!570 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!572 = !DIFile(filename: "./lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !551)
!574 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !577)
!576 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = !{!137}
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!579 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!581 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !584, retainedTypes: !617)
!583 = !DIFile(filename: "./lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = !{!585}
!585 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !587, file: !586, line: 83, size: 32, elements: !615)
!586 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = distinct !DISubprogram(name: "mgetgroups", scope: !586, file: !586, line: 66, type: !588, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !592)
!588 = !DISubroutineType(types: !589)
!589 = !{!40, !17, !54, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !603, !604, !607, !610, !613, !614}
!593 = !DILocalVariable(name: "username", arg: 1, scope: !587, file: !586, line: 66, type: !17)
!594 = !DILocalVariable(name: "gid", arg: 2, scope: !587, file: !586, line: 66, type: !54)
!595 = !DILocalVariable(name: "groups", arg: 3, scope: !587, file: !586, line: 66, type: !590)
!596 = !DILocalVariable(name: "max_n_groups", scope: !587, file: !586, line: 68, type: !40)
!597 = !DILocalVariable(name: "ng", scope: !587, file: !586, line: 69, type: !40)
!598 = !DILocalVariable(name: "g", scope: !587, file: !586, line: 70, type: !591)
!599 = !DILocalVariable(name: "h", scope: !600, file: !586, line: 92, type: !591)
!600 = distinct !DILexicalBlock(scope: !601, file: !586, line: 91, column: 9)
!601 = distinct !DILexicalBlock(scope: !602, file: !586, line: 82, column: 5)
!602 = distinct !DILexicalBlock(scope: !587, file: !586, line: 81, column: 7)
!603 = !DILocalVariable(name: "last_n_groups", scope: !600, file: !586, line: 93, type: !40)
!604 = !DILocalVariable(name: "saved_errno", scope: !605, file: !586, line: 105, type: !40)
!605 = distinct !DILexicalBlock(scope: !606, file: !586, line: 104, column: 13)
!606 = distinct !DILexicalBlock(scope: !600, file: !586, line: 103, column: 15)
!607 = !DILocalVariable(name: "saved_errno", scope: !608, file: !586, line: 156, type: !40)
!608 = distinct !DILexicalBlock(scope: !609, file: !586, line: 154, column: 5)
!609 = distinct !DILexicalBlock(scope: !587, file: !586, line: 153, column: 7)
!610 = !DILocalVariable(name: "first", scope: !611, file: !586, line: 187, type: !54)
!611 = distinct !DILexicalBlock(scope: !612, file: !586, line: 186, column: 5)
!612 = distinct !DILexicalBlock(scope: !587, file: !586, line: 185, column: 7)
!613 = !DILocalVariable(name: "next", scope: !611, file: !586, line: 188, type: !591)
!614 = !DILocalVariable(name: "groups_end", scope: !611, file: !586, line: 189, type: !591)
!615 = !{!616}
!616 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!617 = !{!8, !54, !137}
!618 = distinct !DICompileUnit(language: DW_LANG_C99, file: !619, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!619 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !551)
!621 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !551)
!623 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!625 = !{i32 2, !"Dwarf Version", i32 4}
!626 = !{i32 2, !"Debug Info Version", i32 3}
!627 = !{i32 1, !"wchar_size", i32 4}
!628 = !{i32 7, !"PIC Level", i32 2}
!629 = !{i32 7, !"PIE Level", i32 2}
!630 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 48, type: !631, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !40}
!633 = !{!634}
!634 = !DILocalVariable(name: "status", arg: 1, scope: !630, file: !3, line: 48, type: !40)
!635 = !DIExpression()
!636 = !DILocation(line: 48, column: 12, scope: !630)
!637 = !DILocation(line: 50, column: 14, scope: !638)
!638 = distinct !DILexicalBlock(scope: !630, file: !3, line: 50, column: 7)
!639 = !DILocation(line: 50, column: 7, scope: !630)
!640 = !DILocation(line: 51, column: 5, scope: !641)
!641 = distinct !DILexicalBlock(scope: !638, file: !3, line: 51, column: 5)
!642 = !{!643, !643, i64 0}
!643 = !{!"any pointer", !644, i64 0}
!644 = !{!"omnipotent char", !645, i64 0}
!645 = !{!"Simple C/C++ TBAA"}
!646 = !DILocation(line: 54, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !638, file: !3, line: 53, column: 5)
!648 = !DILocation(line: 55, column: 7, scope: !647)
!649 = !DILocation(line: 60, column: 7, scope: !647)
!650 = !DILocation(line: 61, column: 7, scope: !647)
!651 = !DILocation(line: 642, column: 15, scope: !13, inlinedAt: !652)
!652 = distinct !DILocation(line: 62, column: 7, scope: !647)
!653 = !DILocation(line: 651, column: 3, scope: !13, inlinedAt: !652)
!654 = !DILocation(line: 655, column: 29, scope: !13, inlinedAt: !652)
!655 = !DILocation(line: 655, column: 15, scope: !13, inlinedAt: !652)
!656 = !DILocation(line: 656, column: 7, scope: !657, inlinedAt: !652)
!657 = distinct !DILexicalBlock(scope: !13, file: !14, line: 656, column: 7)
!658 = !DILocation(line: 656, column: 19, scope: !657, inlinedAt: !652)
!659 = !DILocation(line: 656, column: 22, scope: !657, inlinedAt: !652)
!660 = !DILocation(line: 656, column: 7, scope: !13, inlinedAt: !652)
!661 = !DILocation(line: 662, column: 7, scope: !662, inlinedAt: !652)
!662 = distinct !DILexicalBlock(scope: !657, file: !14, line: 657, column: 5)
!663 = !DILocation(line: 664, column: 5, scope: !662, inlinedAt: !652)
!664 = !DILocation(line: 665, column: 3, scope: !13, inlinedAt: !652)
!665 = !DILocation(line: 667, column: 3, scope: !13, inlinedAt: !652)
!666 = !DILocation(line: 64, column: 3, scope: !630)
!667 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !668, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !671)
!668 = !DISubroutineType(types: !669)
!669 = !{!40, !40, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !681, !684, !685}
!672 = !DILocalVariable(name: "argc", arg: 1, scope: !667, file: !3, line: 68, type: !40)
!673 = !DILocalVariable(name: "argv", arg: 2, scope: !667, file: !3, line: 68, type: !670)
!674 = !DILocalVariable(name: "optc", scope: !667, file: !3, line: 70, type: !40)
!675 = !DILocalVariable(name: "ok", scope: !667, file: !3, line: 71, type: !81)
!676 = !DILocalVariable(name: "rgid", scope: !667, file: !3, line: 72, type: !54)
!677 = !DILocalVariable(name: "egid", scope: !667, file: !3, line: 72, type: !54)
!678 = !DILocalVariable(name: "ruid", scope: !667, file: !3, line: 73, type: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !55, line: 80, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !57, line: 134, baseType: !58)
!681 = !DILocalVariable(name: "NO_UID", scope: !682, file: !3, line: 100, type: !679)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 98, column: 5)
!683 = distinct !DILexicalBlock(scope: !667, file: !3, line: 97, column: 7)
!684 = !DILocalVariable(name: "NO_GID", scope: !682, file: !3, line: 101, type: !54)
!685 = !DILocalVariable(name: "pwd", scope: !686, file: !3, line: 127, type: !688)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 126, column: 9)
!687 = distinct !DILexicalBlock(scope: !683, file: !3, line: 123, column: 5)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !690, line: 49, size: 384, elements: !691)
!690 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!691 = !{!692, !693, !694, !695, !696, !697, !698}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !689, file: !690, line: 51, baseType: !6, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !689, file: !690, line: 52, baseType: !6, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !689, file: !690, line: 53, baseType: !680, size: 32, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !689, file: !690, line: 54, baseType: !56, size: 32, offset: 160)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !689, file: !690, line: 55, baseType: !6, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !689, file: !690, line: 56, baseType: !6, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !689, file: !690, line: 57, baseType: !6, size: 64, offset: 320)
!699 = !DILocation(line: 68, column: 11, scope: !667)
!700 = !DILocation(line: 68, column: 24, scope: !667)
!701 = !DILocation(line: 71, column: 8, scope: !667)
!702 = !DILocation(line: 76, column: 21, scope: !667)
!703 = !DILocation(line: 76, column: 3, scope: !667)
!704 = !DILocation(line: 77, column: 3, scope: !667)
!705 = !DILocation(line: 78, column: 3, scope: !667)
!706 = !DILocation(line: 79, column: 3, scope: !667)
!707 = !DILocation(line: 81, column: 3, scope: !667)
!708 = !DILocation(line: 86, column: 18, scope: !667)
!709 = !DILocation(line: 70, column: 7, scope: !667)
!710 = !DILocation(line: 86, column: 3, scope: !667)
!711 = !DILocation(line: 90, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 89, column: 9)
!713 = distinct !DILexicalBlock(scope: !667, file: !3, line: 87, column: 5)
!714 = !DILocation(line: 91, column: 9, scope: !712)
!715 = !DILocation(line: 93, column: 11, scope: !712)
!716 = !DILocation(line: 97, column: 7, scope: !683)
!717 = !{!718, !718, i64 0}
!718 = !{!"int", !644, i64 0}
!719 = !DILocation(line: 97, column: 14, scope: !683)
!720 = !DILocation(line: 97, column: 7, scope: !667)
!721 = !DILocation(line: 100, column: 13, scope: !682)
!722 = !DILocation(line: 101, column: 13, scope: !682)
!723 = !DILocation(line: 103, column: 7, scope: !682)
!724 = !DILocation(line: 103, column: 13, scope: !682)
!725 = !DILocation(line: 104, column: 14, scope: !682)
!726 = !DILocation(line: 73, column: 9, scope: !667)
!727 = !DILocation(line: 105, column: 16, scope: !728)
!728 = distinct !DILexicalBlock(scope: !682, file: !3, line: 105, column: 11)
!729 = !DILocation(line: 105, column: 26, scope: !728)
!730 = !DILocation(line: 105, column: 29, scope: !728)
!731 = !DILocation(line: 105, column: 11, scope: !682)
!732 = !DILocation(line: 106, column: 9, scope: !728)
!733 = !DILocation(line: 108, column: 13, scope: !682)
!734 = !DILocation(line: 109, column: 14, scope: !682)
!735 = !DILocation(line: 72, column: 15, scope: !667)
!736 = !DILocation(line: 110, column: 16, scope: !737)
!737 = distinct !DILexicalBlock(scope: !682, file: !3, line: 110, column: 11)
!738 = !DILocation(line: 110, column: 26, scope: !737)
!739 = !DILocation(line: 110, column: 29, scope: !737)
!740 = !DILocation(line: 110, column: 11, scope: !682)
!741 = !DILocation(line: 111, column: 9, scope: !737)
!742 = !DILocation(line: 113, column: 13, scope: !682)
!743 = !DILocation(line: 114, column: 14, scope: !682)
!744 = !DILocation(line: 72, column: 9, scope: !667)
!745 = !DILocation(line: 115, column: 16, scope: !746)
!746 = distinct !DILexicalBlock(scope: !682, file: !3, line: 115, column: 11)
!747 = !DILocation(line: 115, column: 26, scope: !746)
!748 = !DILocation(line: 115, column: 29, scope: !746)
!749 = !DILocation(line: 115, column: 11, scope: !682)
!750 = !DILocation(line: 116, column: 9, scope: !746)
!751 = !DILocation(line: 118, column: 12, scope: !752)
!752 = distinct !DILexicalBlock(scope: !682, file: !3, line: 118, column: 11)
!753 = !DILocation(line: 118, column: 11, scope: !682)
!754 = !DILocalVariable(name: "__c", arg: 1, scope: !755, file: !756, line: 105, type: !40)
!755 = distinct !DISubprogram(name: "putchar_unlocked", scope: !756, file: !756, line: 105, type: !757, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !759)
!756 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!757 = !DISubroutineType(types: !758)
!758 = !{!40, !40}
!759 = !{!754}
!760 = !DILocation(line: 105, column: 23, scope: !755, inlinedAt: !761)
!761 = distinct !DILocation(line: 120, column: 7, scope: !682)
!762 = !DILocation(line: 107, column: 10, scope: !755, inlinedAt: !761)
!763 = !{!764, !643, i64 40}
!764 = !{!"_IO_FILE", !718, i64 0, !643, i64 8, !643, i64 16, !643, i64 24, !643, i64 32, !643, i64 40, !643, i64 48, !643, i64 56, !643, i64 64, !643, i64 72, !643, i64 80, !643, i64 88, !643, i64 96, !643, i64 104, !718, i64 112, !718, i64 116, !765, i64 120, !766, i64 128, !644, i64 130, !644, i64 131, !643, i64 136, !765, i64 144, !643, i64 152, !643, i64 160, !643, i64 168, !643, i64 176, !765, i64 184, !718, i64 192, !644, i64 196}
!765 = !{!"long", !644, i64 0}
!766 = !{!"short", !644, i64 0}
!767 = !{!764, !643, i64 48}
!768 = !{!"branch_weights", i32 2000, i32 1}
!769 = !{!644, !644, i64 0}
!770 = !DILocation(line: 125, column: 21, scope: !687)
!771 = !DILocation(line: 125, column: 7, scope: !687)
!772 = !DILocation(line: 127, column: 42, scope: !686)
!773 = !DILocation(line: 127, column: 32, scope: !686)
!774 = !DILocation(line: 127, column: 26, scope: !686)
!775 = !DILocation(line: 128, column: 19, scope: !776)
!776 = distinct !DILexicalBlock(scope: !686, file: !3, line: 128, column: 15)
!777 = !DILocation(line: 128, column: 15, scope: !686)
!778 = !DILocation(line: 129, column: 13, scope: !776)
!779 = !DILocation(line: 131, column: 23, scope: !686)
!780 = !{!781, !718, i64 16}
!781 = !{!"passwd", !643, i64 0, !643, i64 8, !718, i64 16, !718, i64 20, !643, i64 24, !643, i64 32, !643, i64 40}
!782 = !DILocation(line: 132, column: 30, scope: !686)
!783 = !{!781, !718, i64 20}
!784 = !DILocation(line: 134, column: 11, scope: !686)
!785 = !DILocation(line: 135, column: 45, scope: !786)
!786 = distinct !DILexicalBlock(scope: !686, file: !3, line: 135, column: 15)
!787 = !DILocation(line: 135, column: 34, scope: !786)
!788 = !DILocation(line: 135, column: 16, scope: !786)
!789 = !DILocation(line: 135, column: 15, scope: !686)
!790 = !DILocation(line: 105, column: 23, scope: !755, inlinedAt: !791)
!791 = distinct !DILocation(line: 137, column: 11, scope: !686)
!792 = !DILocation(line: 107, column: 10, scope: !755, inlinedAt: !791)
!793 = !DILocation(line: 125, column: 14, scope: !687)
!794 = distinct !{!794, !771, !795}
!795 = !DILocation(line: 138, column: 9, scope: !687)
!796 = !DILocation(line: 141, column: 10, scope: !667)
!797 = !DILocation(line: 142, column: 1, scope: !667)
!798 = distinct !DISubprogram(name: "print_group_list", scope: !49, file: !49, line: 36, type: !799, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !59, variables: !801)
!799 = !DISubroutineType(types: !800)
!800 = !{!81, !17, !679, !54, !54, !81, !7}
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !820, !822, !823}
!802 = !DILocalVariable(name: "username", arg: 1, scope: !798, file: !49, line: 36, type: !17)
!803 = !DILocalVariable(name: "ruid", arg: 2, scope: !798, file: !49, line: 37, type: !679)
!804 = !DILocalVariable(name: "rgid", arg: 3, scope: !798, file: !49, line: 37, type: !54)
!805 = !DILocalVariable(name: "egid", arg: 4, scope: !798, file: !49, line: 37, type: !54)
!806 = !DILocalVariable(name: "use_names", arg: 5, scope: !798, file: !49, line: 38, type: !81)
!807 = !DILocalVariable(name: "delim", arg: 6, scope: !798, file: !49, line: 38, type: !7)
!808 = !DILocalVariable(name: "ok", scope: !798, file: !49, line: 40, type: !81)
!809 = !DILocalVariable(name: "pwd", scope: !798, file: !49, line: 41, type: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !690, line: 49, size: 384, elements: !812)
!812 = !{!813, !814, !815, !816, !817, !818, !819}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !811, file: !690, line: 51, baseType: !6, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !811, file: !690, line: 52, baseType: !6, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !811, file: !690, line: 53, baseType: !680, size: 32, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !811, file: !690, line: 54, baseType: !56, size: 32, offset: 160)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !811, file: !690, line: 55, baseType: !6, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !811, file: !690, line: 56, baseType: !6, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !811, file: !690, line: 57, baseType: !6, size: 64, offset: 320)
!820 = !DILocalVariable(name: "groups", scope: !821, file: !49, line: 61, type: !591)
!821 = distinct !DILexicalBlock(scope: !798, file: !49, line: 60, column: 3)
!822 = !DILocalVariable(name: "i", scope: !821, file: !49, line: 62, type: !40)
!823 = !DILocalVariable(name: "n_groups", scope: !821, file: !49, line: 64, type: !40)
!824 = !DILocation(line: 36, column: 31, scope: !798)
!825 = !DILocation(line: 37, column: 25, scope: !798)
!826 = !DILocation(line: 37, column: 37, scope: !798)
!827 = !DILocation(line: 37, column: 49, scope: !798)
!828 = !DILocation(line: 38, column: 24, scope: !798)
!829 = !DILocation(line: 38, column: 40, scope: !798)
!830 = !DILocation(line: 40, column: 8, scope: !798)
!831 = !DILocation(line: 41, column: 18, scope: !798)
!832 = !DILocation(line: 43, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !798, file: !49, line: 43, column: 7)
!834 = !DILocation(line: 43, column: 7, scope: !798)
!835 = !DILocation(line: 45, column: 13, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !49, line: 44, column: 5)
!837 = !DILocation(line: 46, column: 15, scope: !838)
!838 = distinct !DILexicalBlock(scope: !836, file: !49, line: 46, column: 11)
!839 = !DILocation(line: 46, column: 11, scope: !836)
!840 = !DILocalVariable(name: "gid", arg: 1, scope: !841, file: !49, line: 104, type: !54)
!841 = distinct !DISubprogram(name: "print_group", scope: !49, file: !49, line: 104, type: !842, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !59, variables: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!81, !54, !81}
!844 = !{!840, !845, !846, !855, !856}
!845 = !DILocalVariable(name: "use_name", arg: 2, scope: !841, file: !49, line: 104, type: !81)
!846 = !DILocalVariable(name: "grp", scope: !841, file: !49, line: 106, type: !847)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !849, line: 42, size: 256, elements: !850)
!849 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!850 = !{!851, !852, !853, !854}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !848, file: !849, line: 44, baseType: !6, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !848, file: !849, line: 45, baseType: !6, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !848, file: !849, line: 46, baseType: !56, size: 32, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !848, file: !849, line: 47, baseType: !670, size: 64, offset: 192)
!855 = !DILocalVariable(name: "ok", scope: !841, file: !49, line: 107, type: !81)
!856 = !DILocalVariable(name: "s", scope: !841, file: !49, line: 120, type: !6)
!857 = !DILocation(line: 104, column: 20, scope: !841, inlinedAt: !858)
!858 = distinct !DILocation(line: 50, column: 8, scope: !859)
!859 = distinct !DILexicalBlock(scope: !798, file: !49, line: 50, column: 7)
!860 = !DILocation(line: 104, column: 30, scope: !841, inlinedAt: !858)
!861 = !DILocation(line: 106, column: 17, scope: !841, inlinedAt: !858)
!862 = !DILocation(line: 107, column: 8, scope: !841, inlinedAt: !858)
!863 = !DILocation(line: 109, column: 7, scope: !841, inlinedAt: !858)
!864 = !DILocation(line: 98, column: 21, scope: !48, inlinedAt: !865)
!865 = distinct !DILocation(line: 120, column: 34, scope: !841, inlinedAt: !858)
!866 = !DILocation(line: 98, column: 10, scope: !48, inlinedAt: !865)
!867 = !DILocation(line: 120, column: 9, scope: !841, inlinedAt: !858)
!868 = !DILocation(line: 121, column: 3, scope: !841, inlinedAt: !858)
!869 = !DILocation(line: 111, column: 13, scope: !870, inlinedAt: !858)
!870 = distinct !DILexicalBlock(scope: !871, file: !49, line: 110, column: 5)
!871 = distinct !DILexicalBlock(scope: !841, file: !49, line: 109, column: 7)
!872 = !DILocation(line: 112, column: 15, scope: !873, inlinedAt: !858)
!873 = distinct !DILexicalBlock(scope: !870, file: !49, line: 112, column: 11)
!874 = !DILocation(line: 112, column: 11, scope: !870, inlinedAt: !858)
!875 = !DILocation(line: 114, column: 24, scope: !876, inlinedAt: !858)
!876 = distinct !DILexicalBlock(scope: !873, file: !49, line: 113, column: 9)
!877 = !DILocation(line: 115, column: 18, scope: !876, inlinedAt: !858)
!878 = !DILocation(line: 114, column: 11, scope: !876, inlinedAt: !858)
!879 = !DILocation(line: 50, column: 7, scope: !798)
!880 = !DILocation(line: 120, column: 24, scope: !841, inlinedAt: !858)
!881 = !{!882, !643, i64 0}
!882 = !{!"group", !643, i64 0, !643, i64 8, !718, i64 16, !643, i64 24}
!883 = !DILocation(line: 53, column: 12, scope: !884)
!884 = distinct !DILexicalBlock(scope: !798, file: !49, line: 53, column: 7)
!885 = !DILocation(line: 53, column: 7, scope: !798)
!886 = !DILocation(line: 107, column: 10, scope: !887, inlinedAt: !890)
!887 = distinct !DISubprogram(name: "putchar_unlocked", scope: !756, file: !756, line: 105, type: !757, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !59, variables: !888)
!888 = !{!889}
!889 = !DILocalVariable(name: "__c", arg: 1, scope: !887, file: !756, line: 105, type: !40)
!890 = distinct !DILocation(line: 55, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !884, file: !49, line: 54, column: 5)
!892 = !DILocation(line: 55, column: 7, scope: !891)
!893 = !DILocation(line: 104, column: 20, scope: !841, inlinedAt: !894)
!894 = distinct !DILocation(line: 56, column: 12, scope: !895)
!895 = distinct !DILexicalBlock(scope: !891, file: !49, line: 56, column: 11)
!896 = !DILocation(line: 104, column: 30, scope: !841, inlinedAt: !894)
!897 = !DILocation(line: 106, column: 17, scope: !841, inlinedAt: !894)
!898 = !DILocation(line: 107, column: 8, scope: !841, inlinedAt: !894)
!899 = !DILocation(line: 109, column: 7, scope: !841, inlinedAt: !894)
!900 = !DILocation(line: 98, column: 21, scope: !48, inlinedAt: !901)
!901 = distinct !DILocation(line: 120, column: 34, scope: !841, inlinedAt: !894)
!902 = !DILocation(line: 98, column: 10, scope: !48, inlinedAt: !901)
!903 = !DILocation(line: 120, column: 9, scope: !841, inlinedAt: !894)
!904 = !DILocation(line: 121, column: 3, scope: !841, inlinedAt: !894)
!905 = !DILocation(line: 111, column: 13, scope: !870, inlinedAt: !894)
!906 = !DILocation(line: 112, column: 15, scope: !873, inlinedAt: !894)
!907 = !DILocation(line: 112, column: 11, scope: !870, inlinedAt: !894)
!908 = !DILocation(line: 114, column: 24, scope: !876, inlinedAt: !894)
!909 = !DILocation(line: 115, column: 18, scope: !876, inlinedAt: !894)
!910 = !DILocation(line: 114, column: 11, scope: !876, inlinedAt: !894)
!911 = !DILocation(line: 56, column: 11, scope: !891)
!912 = !DILocation(line: 120, column: 24, scope: !841, inlinedAt: !894)
!913 = !DILocation(line: 61, column: 5, scope: !821)
!914 = !DILocation(line: 64, column: 43, scope: !821)
!915 = !DILocation(line: 64, column: 54, scope: !821)
!916 = !DILocation(line: 61, column: 12, scope: !821)
!917 = !DILocation(line: 64, column: 20, scope: !821)
!918 = !DILocation(line: 64, column: 9, scope: !821)
!919 = !DILocation(line: 65, column: 18, scope: !920)
!920 = distinct !DILexicalBlock(scope: !821, file: !49, line: 65, column: 9)
!921 = !DILocation(line: 65, column: 9, scope: !821)
!922 = !DILocation(line: 69, column: 23, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !49, line: 68, column: 11)
!924 = distinct !DILexicalBlock(scope: !925, file: !49, line: 67, column: 13)
!925 = distinct !DILexicalBlock(scope: !920, file: !49, line: 66, column: 7)
!926 = !DILocation(line: 67, column: 13, scope: !925)
!927 = !DILocation(line: 69, column: 30, scope: !923)
!928 = !DILocation(line: 70, column: 20, scope: !923)
!929 = !DILocation(line: 69, column: 13, scope: !923)
!930 = !DILocation(line: 71, column: 11, scope: !923)
!931 = !DILocation(line: 74, column: 30, scope: !932)
!932 = distinct !DILexicalBlock(scope: !924, file: !49, line: 73, column: 11)
!933 = !DILocation(line: 74, column: 13, scope: !932)
!934 = !DILocation(line: 62, column: 9, scope: !821)
!935 = !DILocation(line: 79, column: 19, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !49, line: 79, column: 5)
!937 = distinct !DILexicalBlock(scope: !821, file: !49, line: 79, column: 5)
!938 = !DILocation(line: 79, column: 5, scope: !937)
!939 = !DILocation(line: 80, column: 11, scope: !940)
!940 = distinct !DILexicalBlock(scope: !936, file: !49, line: 80, column: 11)
!941 = !DILocation(line: 80, column: 21, scope: !940)
!942 = !DILocation(line: 80, column: 42, scope: !940)
!943 = !DILocation(line: 80, column: 29, scope: !940)
!944 = !DILocation(line: 107, column: 10, scope: !887, inlinedAt: !945)
!945 = distinct !DILocation(line: 82, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !940, file: !49, line: 81, column: 9)
!947 = !DILocation(line: 83, column: 29, scope: !948)
!948 = distinct !DILexicalBlock(scope: !946, file: !49, line: 83, column: 15)
!949 = !DILocation(line: 104, column: 20, scope: !841, inlinedAt: !950)
!950 = distinct !DILocation(line: 83, column: 16, scope: !948)
!951 = !DILocation(line: 104, column: 30, scope: !841, inlinedAt: !950)
!952 = !DILocation(line: 106, column: 17, scope: !841, inlinedAt: !950)
!953 = !DILocation(line: 107, column: 8, scope: !841, inlinedAt: !950)
!954 = !DILocation(line: 109, column: 7, scope: !841, inlinedAt: !950)
!955 = !DILocation(line: 98, column: 21, scope: !48, inlinedAt: !956)
!956 = distinct !DILocation(line: 120, column: 34, scope: !841, inlinedAt: !950)
!957 = !DILocation(line: 98, column: 10, scope: !48, inlinedAt: !956)
!958 = !DILocation(line: 120, column: 9, scope: !841, inlinedAt: !950)
!959 = !DILocation(line: 121, column: 3, scope: !841, inlinedAt: !950)
!960 = !DILocation(line: 111, column: 13, scope: !870, inlinedAt: !950)
!961 = !DILocation(line: 112, column: 15, scope: !873, inlinedAt: !950)
!962 = !DILocation(line: 112, column: 11, scope: !870, inlinedAt: !950)
!963 = !DILocation(line: 114, column: 24, scope: !876, inlinedAt: !950)
!964 = !DILocation(line: 115, column: 18, scope: !876, inlinedAt: !950)
!965 = !DILocation(line: 114, column: 11, scope: !876, inlinedAt: !950)
!966 = !DILocation(line: 83, column: 15, scope: !946)
!967 = !DILocation(line: 120, column: 24, scope: !841, inlinedAt: !950)
!968 = !DILocation(line: 79, column: 32, scope: !936)
!969 = distinct !{!969, !938, !970}
!970 = !DILocation(line: 85, column: 9, scope: !937)
!971 = !DILocation(line: 87, column: 3, scope: !798)
!972 = !DILocation(line: 86, column: 11, scope: !821)
!973 = !DILocation(line: 86, column: 5, scope: !821)
!974 = !DILocation(line: 88, column: 10, scope: !798)
!975 = !DILocation(line: 89, column: 1, scope: !798)
!976 = !DILocation(line: 104, column: 20, scope: !841)
!977 = !DILocation(line: 104, column: 30, scope: !841)
!978 = !DILocation(line: 106, column: 17, scope: !841)
!979 = !DILocation(line: 107, column: 8, scope: !841)
!980 = !DILocation(line: 109, column: 7, scope: !841)
!981 = !DILocation(line: 98, column: 21, scope: !48, inlinedAt: !982)
!982 = distinct !DILocation(line: 120, column: 34, scope: !841)
!983 = !DILocation(line: 111, column: 13, scope: !870)
!984 = !DILocation(line: 112, column: 15, scope: !873)
!985 = !DILocation(line: 112, column: 11, scope: !870)
!986 = !DILocation(line: 114, column: 24, scope: !876)
!987 = !DILocation(line: 115, column: 18, scope: !876)
!988 = !DILocation(line: 114, column: 11, scope: !876)
!989 = !DILocation(line: 117, column: 9, scope: !876)
!990 = !DILocation(line: 120, column: 24, scope: !841)
!991 = !DILocation(line: 120, column: 13, scope: !841)
!992 = !DILocation(line: 98, column: 10, scope: !48, inlinedAt: !982)
!993 = !DILocation(line: 120, column: 9, scope: !841)
!994 = !DILocation(line: 121, column: 3, scope: !841)
!995 = !DILocation(line: 122, column: 3, scope: !841)
!996 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !80, file: !80, line: 41, type: !15, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !75, variables: !997)
!997 = !{!998}
!998 = !DILocalVariable(name: "file", arg: 1, scope: !996, file: !80, line: 41, type: !17)
!999 = !DILocation(line: 41, column: 41, scope: !996)
!1000 = !DILocation(line: 43, column: 13, scope: !996)
!1001 = !DILocation(line: 44, column: 1, scope: !996)
!1002 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !80, file: !80, line: 78, type: !1003, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !75, variables: !1005)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !81}
!1005 = !{!1006}
!1006 = !DILocalVariable(name: "ignore", arg: 1, scope: !1002, file: !80, line: 78, type: !81)
!1007 = !DILocation(line: 78, column: 37, scope: !1002)
!1008 = !DILocation(line: 80, column: 16, scope: !1002)
!1009 = !{!1010, !1010, i64 0}
!1010 = !{!"_Bool", !644, i64 0}
!1011 = !DILocation(line: 81, column: 1, scope: !1002)
!1012 = distinct !DISubprogram(name: "close_stdout", scope: !80, file: !80, line: 107, type: !1013, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !75, variables: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null}
!1015 = !{!1016}
!1016 = !DILocalVariable(name: "write_error", scope: !1017, file: !80, line: 112, type: !17)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !80, line: 111, column: 5)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !80, line: 109, column: 7)
!1019 = !DILocation(line: 109, column: 21, scope: !1018)
!1020 = !DILocation(line: 109, column: 7, scope: !1018)
!1021 = !DILocation(line: 109, column: 29, scope: !1018)
!1022 = !DILocation(line: 110, column: 7, scope: !1018)
!1023 = !DILocation(line: 110, column: 12, scope: !1018)
!1024 = !{i8 0, i8 2}
!1025 = !DILocation(line: 114, column: 19, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1017, file: !80, line: 113, column: 11)
!1027 = !DILocation(line: 110, column: 25, scope: !1018)
!1028 = !DILocation(line: 110, column: 28, scope: !1018)
!1029 = !DILocation(line: 110, column: 34, scope: !1018)
!1030 = !DILocation(line: 109, column: 7, scope: !1012)
!1031 = !DILocation(line: 112, column: 33, scope: !1017)
!1032 = !DILocation(line: 112, column: 19, scope: !1017)
!1033 = !DILocation(line: 113, column: 11, scope: !1026)
!1034 = !DILocation(line: 113, column: 11, scope: !1017)
!1035 = !DILocation(line: 114, column: 36, scope: !1026)
!1036 = !DILocation(line: 114, column: 9, scope: !1026)
!1037 = !DILocation(line: 117, column: 9, scope: !1026)
!1038 = !DILocation(line: 119, column: 14, scope: !1017)
!1039 = !DILocation(line: 119, column: 7, scope: !1017)
!1040 = !DILocation(line: 122, column: 22, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1012, file: !80, line: 122, column: 8)
!1042 = !DILocation(line: 122, column: 8, scope: !1041)
!1043 = !DILocation(line: 122, column: 30, scope: !1041)
!1044 = !DILocation(line: 122, column: 8, scope: !1012)
!1045 = !DILocation(line: 123, column: 13, scope: !1041)
!1046 = !DILocation(line: 123, column: 6, scope: !1041)
!1047 = !DILocation(line: 124, column: 1, scope: !1012)
!1048 = distinct !DISubprogram(name: "umaxtostr", scope: !1049, file: !1049, line: 36, type: !1050, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !538, variables: !1052)
!1049 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!6, !541, !6}
!1052 = !{!1053, !1054, !1055}
!1053 = !DILocalVariable(name: "i", arg: 1, scope: !1048, file: !1049, line: 36, type: !541)
!1054 = !DILocalVariable(name: "buf", arg: 2, scope: !1048, file: !1049, line: 36, type: !6)
!1055 = !DILocalVariable(name: "p", scope: !1048, file: !1049, line: 38, type: !6)
!1056 = !DILocation(line: 36, column: 19, scope: !1048)
!1057 = !DILocation(line: 36, column: 28, scope: !1048)
!1058 = !DILocation(line: 38, column: 17, scope: !1048)
!1059 = !DILocation(line: 38, column: 9, scope: !1048)
!1060 = !DILocation(line: 39, column: 6, scope: !1048)
!1061 = !DILocation(line: 51, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !1049, line: 50, column: 5)
!1063 = distinct !DILexicalBlock(scope: !1048, file: !1049, line: 41, column: 7)
!1064 = distinct !{!1064, !1061, !1065}
!1065 = !DILocation(line: 53, column: 28, scope: !1062)
!1066 = !DILocation(line: 52, column: 24, scope: !1062)
!1067 = !DILocation(line: 52, column: 16, scope: !1062)
!1068 = !DILocation(line: 52, column: 10, scope: !1062)
!1069 = !DILocation(line: 52, column: 14, scope: !1062)
!1070 = !DILocation(line: 53, column: 17, scope: !1062)
!1071 = !DILocation(line: 53, column: 24, scope: !1062)
!1072 = !DILocation(line: 52, column: 9, scope: !1062)
!1073 = !DILocation(line: 56, column: 3, scope: !1048)
!1074 = distinct !DISubprogram(name: "set_program_name", scope: !95, file: !95, line: 39, type: !15, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !91, variables: !1075)
!1075 = !{!1076, !1077, !1078}
!1076 = !DILocalVariable(name: "argv0", arg: 1, scope: !1074, file: !95, line: 39, type: !17)
!1077 = !DILocalVariable(name: "slash", scope: !1074, file: !95, line: 46, type: !17)
!1078 = !DILocalVariable(name: "base", scope: !1074, file: !95, line: 47, type: !17)
!1079 = !DILocation(line: 39, column: 31, scope: !1074)
!1080 = !DILocation(line: 51, column: 13, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1074, file: !95, line: 51, column: 7)
!1082 = !DILocation(line: 51, column: 7, scope: !1074)
!1083 = !DILocation(line: 55, column: 14, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !95, line: 52, column: 5)
!1085 = !DILocation(line: 54, column: 7, scope: !1084)
!1086 = !DILocation(line: 56, column: 7, scope: !1084)
!1087 = !DILocation(line: 59, column: 11, scope: !1074)
!1088 = !DILocation(line: 46, column: 15, scope: !1074)
!1089 = !DILocation(line: 60, column: 17, scope: !1074)
!1090 = !DILocation(line: 60, column: 33, scope: !1074)
!1091 = !DILocation(line: 60, column: 11, scope: !1074)
!1092 = !DILocation(line: 47, column: 15, scope: !1074)
!1093 = !DILocation(line: 61, column: 12, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1074, file: !95, line: 61, column: 7)
!1095 = !DILocation(line: 61, column: 20, scope: !1094)
!1096 = !DILocation(line: 61, column: 25, scope: !1094)
!1097 = !DILocation(line: 61, column: 42, scope: !1094)
!1098 = !DILocation(line: 61, column: 28, scope: !1094)
!1099 = !DILocation(line: 61, column: 61, scope: !1094)
!1100 = !DILocation(line: 61, column: 7, scope: !1074)
!1101 = !DILocation(line: 64, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !95, line: 64, column: 11)
!1103 = distinct !DILexicalBlock(scope: !1094, file: !95, line: 62, column: 5)
!1104 = !DILocation(line: 64, column: 36, scope: !1102)
!1105 = !DILocation(line: 64, column: 11, scope: !1103)
!1106 = !DILocation(line: 66, column: 24, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !95, line: 65, column: 9)
!1108 = !DILocation(line: 70, column: 41, scope: !1107)
!1109 = !DILocation(line: 72, column: 9, scope: !1107)
!1110 = !DILocation(line: 84, column: 16, scope: !1074)
!1111 = !DILocation(line: 90, column: 27, scope: !1074)
!1112 = !DILocation(line: 92, column: 1, scope: !1074)
!1113 = distinct !DISubprogram(name: "clone_quoting_options", scope: !142, file: !142, line: 114, type: !1114, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1117)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!1116, !1116}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!1117 = !{!1118, !1119, !1120}
!1118 = !DILocalVariable(name: "o", arg: 1, scope: !1113, file: !142, line: 114, type: !1116)
!1119 = !DILocalVariable(name: "e", scope: !1113, file: !142, line: 116, type: !40)
!1120 = !DILocalVariable(name: "p", scope: !1113, file: !142, line: 117, type: !1116)
!1121 = !DILocation(line: 114, column: 48, scope: !1113)
!1122 = !DILocation(line: 116, column: 11, scope: !1113)
!1123 = !DILocation(line: 116, column: 7, scope: !1113)
!1124 = !DILocation(line: 117, column: 40, scope: !1113)
!1125 = !DILocation(line: 117, column: 31, scope: !1113)
!1126 = !DILocation(line: 117, column: 27, scope: !1113)
!1127 = !DILocation(line: 119, column: 9, scope: !1113)
!1128 = !DILocation(line: 120, column: 3, scope: !1113)
!1129 = distinct !DISubprogram(name: "get_quoting_style", scope: !142, file: !142, line: 125, type: !1130, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1134)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!101, !1132}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!1134 = !{!1135}
!1135 = !DILocalVariable(name: "o", arg: 1, scope: !1129, file: !142, line: 125, type: !1132)
!1136 = !DILocation(line: 125, column: 50, scope: !1129)
!1137 = !DILocation(line: 127, column: 11, scope: !1129)
!1138 = !DILocation(line: 127, column: 46, scope: !1129)
!1139 = !{!1140, !644, i64 0}
!1140 = !{!"quoting_options", !644, i64 0, !718, i64 4, !644, i64 8, !643, i64 40, !643, i64 48}
!1141 = !DILocation(line: 127, column: 3, scope: !1129)
!1142 = distinct !DISubprogram(name: "set_quoting_style", scope: !142, file: !142, line: 133, type: !1143, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1145)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !1116, !101}
!1145 = !{!1146, !1147}
!1146 = !DILocalVariable(name: "o", arg: 1, scope: !1142, file: !142, line: 133, type: !1116)
!1147 = !DILocalVariable(name: "s", arg: 2, scope: !1142, file: !142, line: 133, type: !101)
!1148 = !DILocation(line: 133, column: 44, scope: !1142)
!1149 = !DILocation(line: 133, column: 66, scope: !1142)
!1150 = !DILocation(line: 135, column: 4, scope: !1142)
!1151 = !DILocation(line: 135, column: 39, scope: !1142)
!1152 = !DILocation(line: 135, column: 45, scope: !1142)
!1153 = !DILocation(line: 136, column: 1, scope: !1142)
!1154 = distinct !DISubprogram(name: "set_char_quoting", scope: !142, file: !142, line: 144, type: !1155, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1157)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!40, !1116, !7, !40}
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1164, !1165}
!1158 = !DILocalVariable(name: "o", arg: 1, scope: !1154, file: !142, line: 144, type: !1116)
!1159 = !DILocalVariable(name: "c", arg: 2, scope: !1154, file: !142, line: 144, type: !7)
!1160 = !DILocalVariable(name: "i", arg: 3, scope: !1154, file: !142, line: 144, type: !40)
!1161 = !DILocalVariable(name: "uc", scope: !1154, file: !142, line: 146, type: !9)
!1162 = !DILocalVariable(name: "p", scope: !1154, file: !142, line: 147, type: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!1164 = !DILocalVariable(name: "shift", scope: !1154, file: !142, line: 149, type: !40)
!1165 = !DILocalVariable(name: "r", scope: !1154, file: !142, line: 150, type: !40)
!1166 = !DILocation(line: 144, column: 43, scope: !1154)
!1167 = !DILocation(line: 144, column: 51, scope: !1154)
!1168 = !DILocation(line: 144, column: 58, scope: !1154)
!1169 = !DILocation(line: 146, column: 17, scope: !1154)
!1170 = !DILocation(line: 148, column: 6, scope: !1154)
!1171 = !DILocation(line: 148, column: 62, scope: !1154)
!1172 = !DILocation(line: 148, column: 57, scope: !1154)
!1173 = !DILocation(line: 147, column: 17, scope: !1154)
!1174 = !DILocation(line: 149, column: 18, scope: !1154)
!1175 = !DILocation(line: 149, column: 15, scope: !1154)
!1176 = !DILocation(line: 149, column: 7, scope: !1154)
!1177 = !DILocation(line: 150, column: 12, scope: !1154)
!1178 = !DILocation(line: 150, column: 15, scope: !1154)
!1179 = !DILocation(line: 150, column: 25, scope: !1154)
!1180 = !DILocation(line: 150, column: 7, scope: !1154)
!1181 = !DILocation(line: 151, column: 13, scope: !1154)
!1182 = !DILocation(line: 151, column: 18, scope: !1154)
!1183 = !DILocation(line: 151, column: 23, scope: !1154)
!1184 = !DILocation(line: 151, column: 6, scope: !1154)
!1185 = !DILocation(line: 152, column: 3, scope: !1154)
!1186 = distinct !DISubprogram(name: "set_quoting_flags", scope: !142, file: !142, line: 160, type: !1187, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1189)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!40, !1116, !40}
!1189 = !{!1190, !1191, !1192}
!1190 = !DILocalVariable(name: "o", arg: 1, scope: !1186, file: !142, line: 160, type: !1116)
!1191 = !DILocalVariable(name: "i", arg: 2, scope: !1186, file: !142, line: 160, type: !40)
!1192 = !DILocalVariable(name: "r", scope: !1186, file: !142, line: 162, type: !40)
!1193 = !DILocation(line: 160, column: 44, scope: !1186)
!1194 = !DILocation(line: 160, column: 51, scope: !1186)
!1195 = !DILocation(line: 163, column: 8, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1186, file: !142, line: 163, column: 7)
!1197 = !DILocation(line: 163, column: 7, scope: !1186)
!1198 = !DILocation(line: 165, column: 10, scope: !1186)
!1199 = !{!1140, !718, i64 4}
!1200 = !DILocation(line: 162, column: 7, scope: !1186)
!1201 = !DILocation(line: 166, column: 12, scope: !1186)
!1202 = !DILocation(line: 167, column: 3, scope: !1186)
!1203 = distinct !DISubprogram(name: "set_custom_quoting", scope: !142, file: !142, line: 171, type: !1204, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !1116, !17, !17}
!1206 = !{!1207, !1208, !1209}
!1207 = !DILocalVariable(name: "o", arg: 1, scope: !1203, file: !142, line: 171, type: !1116)
!1208 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1203, file: !142, line: 172, type: !17)
!1209 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1203, file: !142, line: 172, type: !17)
!1210 = !DILocation(line: 171, column: 45, scope: !1203)
!1211 = !DILocation(line: 172, column: 33, scope: !1203)
!1212 = !DILocation(line: 172, column: 57, scope: !1203)
!1213 = !DILocation(line: 174, column: 8, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1203, file: !142, line: 174, column: 7)
!1215 = !DILocation(line: 174, column: 7, scope: !1203)
!1216 = !DILocation(line: 176, column: 6, scope: !1203)
!1217 = !DILocation(line: 176, column: 12, scope: !1203)
!1218 = !DILocation(line: 177, column: 8, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1203, file: !142, line: 177, column: 7)
!1220 = !DILocation(line: 177, column: 23, scope: !1219)
!1221 = !DILocation(line: 177, column: 19, scope: !1219)
!1222 = !DILocation(line: 178, column: 5, scope: !1219)
!1223 = !DILocation(line: 179, column: 6, scope: !1203)
!1224 = !DILocation(line: 179, column: 17, scope: !1203)
!1225 = !{!1140, !643, i64 40}
!1226 = !DILocation(line: 180, column: 6, scope: !1203)
!1227 = !DILocation(line: 180, column: 18, scope: !1203)
!1228 = !{!1140, !643, i64 48}
!1229 = !DILocation(line: 181, column: 1, scope: !1203)
!1230 = distinct !DISubprogram(name: "quotearg_buffer", scope: !142, file: !142, line: 776, type: !1231, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1233)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!137, !6, !137, !17, !137, !1132}
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241}
!1234 = !DILocalVariable(name: "buffer", arg: 1, scope: !1230, file: !142, line: 776, type: !6)
!1235 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1230, file: !142, line: 776, type: !137)
!1236 = !DILocalVariable(name: "arg", arg: 3, scope: !1230, file: !142, line: 777, type: !17)
!1237 = !DILocalVariable(name: "argsize", arg: 4, scope: !1230, file: !142, line: 777, type: !137)
!1238 = !DILocalVariable(name: "o", arg: 5, scope: !1230, file: !142, line: 778, type: !1132)
!1239 = !DILocalVariable(name: "p", scope: !1230, file: !142, line: 780, type: !1132)
!1240 = !DILocalVariable(name: "e", scope: !1230, file: !142, line: 781, type: !40)
!1241 = !DILocalVariable(name: "r", scope: !1230, file: !142, line: 782, type: !137)
!1242 = !DILocation(line: 776, column: 24, scope: !1230)
!1243 = !DILocation(line: 776, column: 39, scope: !1230)
!1244 = !DILocation(line: 777, column: 30, scope: !1230)
!1245 = !DILocation(line: 777, column: 42, scope: !1230)
!1246 = !DILocation(line: 778, column: 48, scope: !1230)
!1247 = !DILocation(line: 780, column: 37, scope: !1230)
!1248 = !DILocation(line: 780, column: 33, scope: !1230)
!1249 = !DILocation(line: 781, column: 11, scope: !1230)
!1250 = !DILocation(line: 781, column: 7, scope: !1230)
!1251 = !DILocation(line: 783, column: 43, scope: !1230)
!1252 = !DILocation(line: 783, column: 53, scope: !1230)
!1253 = !DILocation(line: 783, column: 60, scope: !1230)
!1254 = !DILocation(line: 784, column: 43, scope: !1230)
!1255 = !DILocation(line: 784, column: 58, scope: !1230)
!1256 = !DILocation(line: 782, column: 14, scope: !1230)
!1257 = !DILocation(line: 782, column: 10, scope: !1230)
!1258 = !DILocation(line: 785, column: 9, scope: !1230)
!1259 = !DILocation(line: 786, column: 3, scope: !1230)
!1260 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !142, file: !142, line: 248, type: !1261, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1265)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!137, !6, !137, !17, !137, !101, !40, !1263, !17, !17}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1265 = !{!1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1290, !1291, !1292, !1293, !1294, !1297, !1298, !1316, !1319, !1320, !1327}
!1266 = !DILocalVariable(name: "buffer", arg: 1, scope: !1260, file: !142, line: 248, type: !6)
!1267 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1260, file: !142, line: 248, type: !137)
!1268 = !DILocalVariable(name: "arg", arg: 3, scope: !1260, file: !142, line: 249, type: !17)
!1269 = !DILocalVariable(name: "argsize", arg: 4, scope: !1260, file: !142, line: 249, type: !137)
!1270 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1260, file: !142, line: 250, type: !101)
!1271 = !DILocalVariable(name: "flags", arg: 6, scope: !1260, file: !142, line: 250, type: !40)
!1272 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1260, file: !142, line: 251, type: !1263)
!1273 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1260, file: !142, line: 252, type: !17)
!1274 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1260, file: !142, line: 253, type: !17)
!1275 = !DILocalVariable(name: "i", scope: !1260, file: !142, line: 255, type: !137)
!1276 = !DILocalVariable(name: "len", scope: !1260, file: !142, line: 256, type: !137)
!1277 = !DILocalVariable(name: "orig_buffersize", scope: !1260, file: !142, line: 257, type: !137)
!1278 = !DILocalVariable(name: "quote_string", scope: !1260, file: !142, line: 258, type: !17)
!1279 = !DILocalVariable(name: "quote_string_len", scope: !1260, file: !142, line: 259, type: !137)
!1280 = !DILocalVariable(name: "backslash_escapes", scope: !1260, file: !142, line: 260, type: !81)
!1281 = !DILocalVariable(name: "unibyte_locale", scope: !1260, file: !142, line: 261, type: !81)
!1282 = !DILocalVariable(name: "elide_outer_quotes", scope: !1260, file: !142, line: 262, type: !81)
!1283 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1260, file: !142, line: 263, type: !81)
!1284 = !DILocalVariable(name: "encountered_single_quote", scope: !1260, file: !142, line: 264, type: !81)
!1285 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1260, file: !142, line: 265, type: !81)
!1286 = !DILocalVariable(name: "c", scope: !1287, file: !142, line: 394, type: !9)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !142, line: 393, column: 5)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !142, line: 392, column: 3)
!1289 = distinct !DILexicalBlock(scope: !1260, file: !142, line: 392, column: 3)
!1290 = !DILocalVariable(name: "esc", scope: !1287, file: !142, line: 395, type: !9)
!1291 = !DILocalVariable(name: "is_right_quote", scope: !1287, file: !142, line: 396, type: !81)
!1292 = !DILocalVariable(name: "escaping", scope: !1287, file: !142, line: 397, type: !81)
!1293 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1287, file: !142, line: 398, type: !81)
!1294 = !DILocalVariable(name: "m", scope: !1295, file: !142, line: 602, type: !137)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !142, line: 600, column: 11)
!1296 = distinct !DILexicalBlock(scope: !1287, file: !142, line: 418, column: 9)
!1297 = !DILocalVariable(name: "printable", scope: !1295, file: !142, line: 604, type: !81)
!1298 = !DILocalVariable(name: "mbstate", scope: !1299, file: !142, line: 613, type: !1301)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !142, line: 612, column: 15)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !142, line: 606, column: 17)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1302, line: 6, baseType: !1303)
!1302 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1304, line: 21, baseType: !1305)
!1304 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1304, line: 13, size: 64, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1305, file: !1304, line: 15, baseType: !40, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1305, file: !1304, line: 20, baseType: !1309, size: 32, offset: 32)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !1304, line: 16, size: 32, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1309, file: !1304, line: 18, baseType: !58, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1309, file: !1304, line: 19, baseType: !1313, size: 32)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 4)
!1316 = !DILocalVariable(name: "w", scope: !1317, file: !142, line: 623, type: !1318)
!1317 = distinct !DILexicalBlock(scope: !1299, file: !142, line: 622, column: 19)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !138, line: 90, baseType: !40)
!1319 = !DILocalVariable(name: "bytes", scope: !1317, file: !142, line: 624, type: !137)
!1320 = !DILocalVariable(name: "j", scope: !1321, file: !142, line: 649, type: !137)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !142, line: 648, column: 27)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !142, line: 646, column: 29)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !142, line: 641, column: 23)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !142, line: 633, column: 30)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !142, line: 628, column: 30)
!1326 = distinct !DILexicalBlock(scope: !1317, file: !142, line: 626, column: 25)
!1327 = !DILocalVariable(name: "ilim", scope: !1328, file: !142, line: 676, type: !137)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !142, line: 673, column: 15)
!1329 = distinct !DILexicalBlock(scope: !1295, file: !142, line: 672, column: 17)
!1330 = !DILocation(line: 248, column: 33, scope: !1260)
!1331 = !DILocation(line: 248, column: 48, scope: !1260)
!1332 = !DILocation(line: 249, column: 39, scope: !1260)
!1333 = !DILocation(line: 249, column: 51, scope: !1260)
!1334 = !DILocation(line: 250, column: 46, scope: !1260)
!1335 = !DILocation(line: 250, column: 65, scope: !1260)
!1336 = !DILocation(line: 251, column: 47, scope: !1260)
!1337 = !DILocation(line: 252, column: 39, scope: !1260)
!1338 = !DILocation(line: 253, column: 39, scope: !1260)
!1339 = !DILocation(line: 256, column: 10, scope: !1260)
!1340 = !DILocation(line: 257, column: 10, scope: !1260)
!1341 = !DILocation(line: 258, column: 15, scope: !1260)
!1342 = !DILocation(line: 259, column: 10, scope: !1260)
!1343 = !DILocation(line: 260, column: 8, scope: !1260)
!1344 = !DILocation(line: 261, column: 25, scope: !1260)
!1345 = !DILocation(line: 261, column: 36, scope: !1260)
!1346 = !DILocation(line: 262, column: 8, scope: !1260)
!1347 = !DILocation(line: 263, column: 8, scope: !1260)
!1348 = !DILocation(line: 264, column: 8, scope: !1260)
!1349 = !DILocation(line: 265, column: 8, scope: !1260)
!1350 = !DILocation(line: 265, column: 3, scope: !1260)
!1351 = !DILocation(line: 308, column: 3, scope: !1260)
!1352 = !DILocation(line: 315, column: 11, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1260, file: !142, line: 309, column: 5)
!1354 = !DILocation(line: 315, column: 12, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1353, file: !142, line: 315, column: 11)
!1356 = !DILocation(line: 316, column: 9, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !142, line: 316, column: 9)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !142, line: 316, column: 9)
!1359 = !DILocation(line: 316, column: 9, scope: !1358)
!1360 = !DILocation(line: 354, column: 26, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !142, line: 332, column: 11)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !142, line: 331, column: 13)
!1363 = distinct !DILexicalBlock(scope: !1353, file: !142, line: 330, column: 7)
!1364 = !DILocation(line: 355, column: 27, scope: !1361)
!1365 = !DILocation(line: 356, column: 11, scope: !1361)
!1366 = !DILocation(line: 357, column: 14, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !142, line: 357, column: 13)
!1368 = !DILocation(line: 357, column: 13, scope: !1363)
!1369 = !DILocation(line: 358, column: 43, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !142, line: 358, column: 11)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !142, line: 358, column: 11)
!1372 = !DILocation(line: 358, column: 11, scope: !1371)
!1373 = !DILocation(line: 359, column: 13, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !142, line: 359, column: 13)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !142, line: 359, column: 13)
!1376 = !DILocation(line: 359, column: 13, scope: !1375)
!1377 = !DILocation(line: 358, column: 70, scope: !1370)
!1378 = distinct !{!1378, !1372, !1379}
!1379 = !DILocation(line: 359, column: 13, scope: !1371)
!1380 = !DILocation(line: 362, column: 28, scope: !1363)
!1381 = !DILocation(line: 364, column: 7, scope: !1353)
!1382 = !DILocation(line: 367, column: 7, scope: !1353)
!1383 = !DILocation(line: 370, column: 7, scope: !1353)
!1384 = !DILocation(line: 373, column: 12, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1353, file: !142, line: 373, column: 11)
!1386 = !DILocation(line: 373, column: 11, scope: !1353)
!1387 = !DILocation(line: 378, column: 12, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1353, file: !142, line: 378, column: 11)
!1389 = !DILocation(line: 378, column: 11, scope: !1353)
!1390 = !DILocation(line: 379, column: 9, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !142, line: 379, column: 9)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !142, line: 379, column: 9)
!1393 = !DILocation(line: 379, column: 9, scope: !1392)
!1394 = !DILocation(line: 386, column: 7, scope: !1353)
!1395 = !DILocation(line: 389, column: 7, scope: !1353)
!1396 = !DILocation(line: 255, column: 10, scope: !1260)
!1397 = !DILocation(line: 392, column: 8, scope: !1289)
!1398 = !DILocation(line: 392, column: 27, scope: !1288)
!1399 = !DILocation(line: 392, column: 19, scope: !1288)
!1400 = !DILocation(line: 392, column: 60, scope: !1288)
!1401 = !DILocation(line: 392, column: 3, scope: !1289)
!1402 = !DILocation(line: 392, column: 41, scope: !1288)
!1403 = !DILocation(line: 392, column: 48, scope: !1288)
!1404 = !DILocation(line: 396, column: 12, scope: !1287)
!1405 = !DILocation(line: 397, column: 12, scope: !1287)
!1406 = !DILocation(line: 398, column: 12, scope: !1287)
!1407 = !DILocation(line: 401, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1287, file: !142, line: 400, column: 11)
!1409 = !DILocation(line: 403, column: 17, scope: !1408)
!1410 = !DILocation(line: 404, column: 39, scope: !1408)
!1411 = !DILocation(line: 408, column: 32, scope: !1408)
!1412 = !DILocation(line: 404, column: 19, scope: !1408)
!1413 = !DILocation(line: 404, column: 15, scope: !1408)
!1414 = !DILocation(line: 409, column: 11, scope: !1408)
!1415 = !DILocation(line: 409, column: 26, scope: !1408)
!1416 = !DILocation(line: 409, column: 14, scope: !1408)
!1417 = !DILocation(line: 409, column: 63, scope: !1408)
!1418 = !DILocation(line: 400, column: 11, scope: !1287)
!1419 = !DILocation(line: 416, column: 11, scope: !1287)
!1420 = !DILocation(line: 394, column: 21, scope: !1287)
!1421 = !DILocation(line: 417, column: 7, scope: !1287)
!1422 = !DILocation(line: 420, column: 15, scope: !1296)
!1423 = !DILocation(line: 422, column: 15, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !142, line: 422, column: 15)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !142, line: 421, column: 13)
!1426 = distinct !DILexicalBlock(scope: !1296, file: !142, line: 420, column: 15)
!1427 = !DILocation(line: 422, column: 15, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !142, line: 422, column: 15)
!1429 = !DILocation(line: 422, column: 15, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !142, line: 422, column: 15)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !142, line: 422, column: 15)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !142, line: 422, column: 15)
!1433 = !DILocation(line: 422, column: 15, scope: !1431)
!1434 = !DILocation(line: 422, column: 15, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !142, line: 422, column: 15)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !142, line: 422, column: 15)
!1437 = !DILocation(line: 422, column: 15, scope: !1436)
!1438 = !DILocation(line: 422, column: 15, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !142, line: 422, column: 15)
!1440 = distinct !DILexicalBlock(scope: !1432, file: !142, line: 422, column: 15)
!1441 = !DILocation(line: 422, column: 15, scope: !1440)
!1442 = !DILocation(line: 422, column: 15, scope: !1432)
!1443 = !DILocation(line: 422, column: 15, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !142, line: 422, column: 15)
!1445 = distinct !DILexicalBlock(scope: !1424, file: !142, line: 422, column: 15)
!1446 = !DILocation(line: 422, column: 15, scope: !1445)
!1447 = !DILocation(line: 430, column: 19, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1425, file: !142, line: 429, column: 19)
!1449 = !DILocation(line: 430, column: 24, scope: !1448)
!1450 = !DILocation(line: 430, column: 28, scope: !1448)
!1451 = !DILocation(line: 430, column: 38, scope: !1448)
!1452 = !DILocation(line: 430, column: 48, scope: !1448)
!1453 = !DILocation(line: 430, column: 59, scope: !1448)
!1454 = !DILocation(line: 432, column: 19, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !142, line: 432, column: 19)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !142, line: 432, column: 19)
!1457 = distinct !DILexicalBlock(scope: !1448, file: !142, line: 431, column: 17)
!1458 = !DILocation(line: 432, column: 19, scope: !1456)
!1459 = !DILocation(line: 433, column: 19, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !142, line: 433, column: 19)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !142, line: 433, column: 19)
!1462 = !DILocation(line: 433, column: 19, scope: !1461)
!1463 = !DILocation(line: 434, column: 17, scope: !1457)
!1464 = !DILocation(line: 441, column: 20, scope: !1426)
!1465 = !DILocation(line: 446, column: 11, scope: !1296)
!1466 = !DILocation(line: 449, column: 19, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1296, file: !142, line: 447, column: 13)
!1468 = !DILocation(line: 455, column: 19, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1467, file: !142, line: 454, column: 19)
!1470 = !DILocation(line: 455, column: 24, scope: !1469)
!1471 = !DILocation(line: 455, column: 28, scope: !1469)
!1472 = !DILocation(line: 455, column: 38, scope: !1469)
!1473 = !DILocation(line: 455, column: 47, scope: !1469)
!1474 = !DILocation(line: 455, column: 41, scope: !1469)
!1475 = !DILocation(line: 455, column: 52, scope: !1469)
!1476 = !DILocation(line: 454, column: 19, scope: !1467)
!1477 = !DILocation(line: 456, column: 25, scope: !1469)
!1478 = !DILocation(line: 456, column: 17, scope: !1469)
!1479 = !DILocation(line: 463, column: 25, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1469, file: !142, line: 457, column: 19)
!1481 = !DILocation(line: 467, column: 21, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !142, line: 467, column: 21)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !142, line: 467, column: 21)
!1484 = !DILocation(line: 467, column: 21, scope: !1483)
!1485 = !DILocation(line: 468, column: 21, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !142, line: 468, column: 21)
!1487 = distinct !DILexicalBlock(scope: !1480, file: !142, line: 468, column: 21)
!1488 = !DILocation(line: 468, column: 21, scope: !1487)
!1489 = !DILocation(line: 469, column: 21, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !142, line: 469, column: 21)
!1491 = distinct !DILexicalBlock(scope: !1480, file: !142, line: 469, column: 21)
!1492 = !DILocation(line: 469, column: 21, scope: !1491)
!1493 = !DILocation(line: 470, column: 21, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !142, line: 470, column: 21)
!1495 = distinct !DILexicalBlock(scope: !1480, file: !142, line: 470, column: 21)
!1496 = !DILocation(line: 470, column: 21, scope: !1495)
!1497 = !DILocation(line: 471, column: 21, scope: !1480)
!1498 = !DILocation(line: 395, column: 21, scope: !1287)
!1499 = !DILocation(line: 484, column: 31, scope: !1296)
!1500 = !DILocation(line: 485, column: 31, scope: !1296)
!1501 = !DILocation(line: 487, column: 31, scope: !1296)
!1502 = !DILocation(line: 488, column: 31, scope: !1296)
!1503 = !DILocation(line: 489, column: 31, scope: !1296)
!1504 = !DILocation(line: 492, column: 15, scope: !1296)
!1505 = !DILocation(line: 494, column: 19, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !142, line: 493, column: 13)
!1507 = distinct !DILexicalBlock(scope: !1296, file: !142, line: 492, column: 15)
!1508 = !DILocation(line: 501, column: 33, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1296, file: !142, line: 501, column: 15)
!1510 = !DILocation(line: 506, column: 15, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1296, file: !142, line: 505, column: 15)
!1512 = !DILocation(line: 510, column: 15, scope: !1296)
!1513 = !DILocation(line: 518, column: 26, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1296, file: !142, line: 518, column: 15)
!1515 = !DILocation(line: 518, column: 15, scope: !1296)
!1516 = !DILocation(line: 518, column: 40, scope: !1514)
!1517 = !DILocation(line: 518, column: 47, scope: !1514)
!1518 = !DILocation(line: 522, column: 17, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1296, file: !142, line: 522, column: 15)
!1520 = !DILocation(line: 518, column: 18, scope: !1514)
!1521 = !DILocation(line: 518, column: 65, scope: !1514)
!1522 = !DILocation(line: 522, column: 15, scope: !1296)
!1523 = !DILocation(line: 526, column: 11, scope: !1296)
!1524 = !DILocation(line: 541, column: 15, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1296, file: !142, line: 540, column: 15)
!1526 = !DILocation(line: 548, column: 15, scope: !1296)
!1527 = !DILocation(line: 550, column: 19, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !142, line: 549, column: 13)
!1529 = distinct !DILexicalBlock(scope: !1296, file: !142, line: 548, column: 15)
!1530 = !DILocation(line: 553, column: 19, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !142, line: 553, column: 19)
!1532 = !DILocation(line: 553, column: 35, scope: !1531)
!1533 = !DILocation(line: 553, column: 30, scope: !1531)
!1534 = !DILocation(line: 562, column: 15, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !142, line: 562, column: 15)
!1536 = distinct !DILexicalBlock(scope: !1528, file: !142, line: 562, column: 15)
!1537 = !DILocation(line: 562, column: 15, scope: !1536)
!1538 = !DILocation(line: 563, column: 15, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !142, line: 563, column: 15)
!1540 = distinct !DILexicalBlock(scope: !1528, file: !142, line: 563, column: 15)
!1541 = !DILocation(line: 563, column: 15, scope: !1540)
!1542 = !DILocation(line: 564, column: 15, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !142, line: 564, column: 15)
!1544 = distinct !DILexicalBlock(scope: !1528, file: !142, line: 564, column: 15)
!1545 = !DILocation(line: 564, column: 15, scope: !1544)
!1546 = !DILocation(line: 566, column: 13, scope: !1528)
!1547 = !DILocation(line: 606, column: 17, scope: !1295)
!1548 = !DILocation(line: 602, column: 20, scope: !1295)
!1549 = !DILocation(line: 609, column: 29, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1300, file: !142, line: 607, column: 15)
!1551 = !{!766, !766, i64 0}
!1552 = !DILocation(line: 609, column: 27, scope: !1550)
!1553 = !DILocation(line: 604, column: 18, scope: !1295)
!1554 = !DILocation(line: 610, column: 15, scope: !1550)
!1555 = !DILocation(line: 613, column: 17, scope: !1299)
!1556 = !DILocation(line: 614, column: 17, scope: !1299)
!1557 = !DILocation(line: 618, column: 29, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1299, file: !142, line: 618, column: 21)
!1559 = !DILocation(line: 618, column: 21, scope: !1299)
!1560 = !DILocation(line: 619, column: 29, scope: !1558)
!1561 = !DILocation(line: 619, column: 19, scope: !1558)
!1562 = !DILocation(line: 621, column: 17, scope: !1299)
!1563 = distinct !{!1563, !1562, !1564}
!1564 = !DILocation(line: 667, column: 44, scope: !1299)
!1565 = !DILocation(line: 623, column: 21, scope: !1317)
!1566 = !DILocation(line: 624, column: 56, scope: !1317)
!1567 = !DILocation(line: 624, column: 50, scope: !1317)
!1568 = !DILocation(line: 625, column: 53, scope: !1317)
!1569 = !DILocation(line: 613, column: 27, scope: !1299)
!1570 = !DILocation(line: 623, column: 29, scope: !1317)
!1571 = !DILocation(line: 624, column: 36, scope: !1317)
!1572 = !DILocation(line: 624, column: 28, scope: !1317)
!1573 = !DILocation(line: 626, column: 25, scope: !1317)
!1574 = !DILocation(line: 636, column: 38, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1324, file: !142, line: 634, column: 23)
!1576 = !DILocation(line: 636, column: 48, scope: !1575)
!1577 = !DILocation(line: 636, column: 51, scope: !1575)
!1578 = !DILocation(line: 636, column: 25, scope: !1575)
!1579 = !DILocation(line: 637, column: 28, scope: !1575)
!1580 = !DILocation(line: 636, column: 34, scope: !1575)
!1581 = distinct !{!1581, !1578, !1579}
!1582 = !DILocation(line: 650, column: 43, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !142, line: 650, column: 29)
!1584 = distinct !DILexicalBlock(scope: !1321, file: !142, line: 650, column: 29)
!1585 = !DILocation(line: 647, column: 29, scope: !1322)
!1586 = !DILocation(line: 649, column: 36, scope: !1321)
!1587 = !DILocation(line: 651, column: 49, scope: !1583)
!1588 = !DILocation(line: 651, column: 39, scope: !1583)
!1589 = !DILocation(line: 651, column: 31, scope: !1583)
!1590 = !DILocation(line: 650, column: 53, scope: !1583)
!1591 = !DILocation(line: 650, column: 29, scope: !1584)
!1592 = distinct !{!1592, !1591, !1593}
!1593 = !DILocation(line: 659, column: 33, scope: !1584)
!1594 = !DILocation(line: 666, column: 19, scope: !1299)
!1595 = !DILocation(line: 662, column: 41, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1323, file: !142, line: 662, column: 29)
!1597 = !DILocation(line: 662, column: 31, scope: !1596)
!1598 = !DILocation(line: 662, column: 29, scope: !1323)
!1599 = !DILocation(line: 664, column: 27, scope: !1323)
!1600 = !DILocation(line: 667, column: 26, scope: !1299)
!1601 = !DILocation(line: 667, column: 24, scope: !1299)
!1602 = !DILocation(line: 666, column: 19, scope: !1317)
!1603 = !DILocation(line: 668, column: 15, scope: !1300)
!1604 = !DILocation(line: 670, column: 40, scope: !1295)
!1605 = !DILocation(line: 672, column: 19, scope: !1329)
!1606 = !DILocation(line: 672, column: 45, scope: !1329)
!1607 = !DILocation(line: 672, column: 23, scope: !1329)
!1608 = !DILocation(line: 676, column: 33, scope: !1328)
!1609 = !DILocation(line: 676, column: 24, scope: !1328)
!1610 = !DILocation(line: 678, column: 17, scope: !1328)
!1611 = !DILocation(line: 680, column: 43, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !142, line: 680, column: 25)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !142, line: 679, column: 19)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !142, line: 678, column: 17)
!1615 = distinct !DILexicalBlock(scope: !1328, file: !142, line: 678, column: 17)
!1616 = !DILocation(line: 682, column: 25, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !142, line: 682, column: 25)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !142, line: 681, column: 23)
!1619 = !DILocation(line: 682, column: 25, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !142, line: 682, column: 25)
!1621 = !DILocation(line: 682, column: 25, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !142, line: 682, column: 25)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !142, line: 682, column: 25)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !142, line: 682, column: 25)
!1625 = !DILocation(line: 682, column: 25, scope: !1623)
!1626 = !DILocation(line: 682, column: 25, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !142, line: 682, column: 25)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !142, line: 682, column: 25)
!1629 = !DILocation(line: 682, column: 25, scope: !1628)
!1630 = !DILocation(line: 682, column: 25, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !142, line: 682, column: 25)
!1632 = distinct !DILexicalBlock(scope: !1624, file: !142, line: 682, column: 25)
!1633 = !DILocation(line: 682, column: 25, scope: !1632)
!1634 = !DILocation(line: 682, column: 25, scope: !1624)
!1635 = !DILocation(line: 682, column: 25, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !142, line: 682, column: 25)
!1637 = distinct !DILexicalBlock(scope: !1617, file: !142, line: 682, column: 25)
!1638 = !DILocation(line: 682, column: 25, scope: !1637)
!1639 = !DILocation(line: 683, column: 25, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !142, line: 683, column: 25)
!1641 = distinct !DILexicalBlock(scope: !1618, file: !142, line: 683, column: 25)
!1642 = !DILocation(line: 683, column: 25, scope: !1641)
!1643 = !DILocation(line: 684, column: 25, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !142, line: 684, column: 25)
!1645 = distinct !DILexicalBlock(scope: !1618, file: !142, line: 684, column: 25)
!1646 = !DILocation(line: 684, column: 25, scope: !1645)
!1647 = !DILocation(line: 685, column: 38, scope: !1618)
!1648 = !DILocation(line: 685, column: 33, scope: !1618)
!1649 = !DILocation(line: 686, column: 23, scope: !1618)
!1650 = !DILocation(line: 687, column: 30, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1612, file: !142, line: 687, column: 30)
!1652 = !DILocation(line: 687, column: 30, scope: !1612)
!1653 = !DILocation(line: 689, column: 25, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !142, line: 689, column: 25)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !142, line: 689, column: 25)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !142, line: 688, column: 23)
!1657 = !DILocation(line: 689, column: 25, scope: !1655)
!1658 = !DILocation(line: 691, column: 23, scope: !1656)
!1659 = !DILocation(line: 692, column: 35, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1613, file: !142, line: 692, column: 25)
!1661 = !DILocation(line: 692, column: 30, scope: !1660)
!1662 = !DILocation(line: 692, column: 25, scope: !1613)
!1663 = !DILocation(line: 694, column: 21, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !142, line: 694, column: 21)
!1665 = distinct !DILexicalBlock(scope: !1613, file: !142, line: 694, column: 21)
!1666 = !DILocation(line: 694, column: 21, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !142, line: 694, column: 21)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !142, line: 694, column: 21)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !142, line: 694, column: 21)
!1670 = !DILocation(line: 694, column: 21, scope: !1668)
!1671 = !DILocation(line: 694, column: 21, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !142, line: 694, column: 21)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !142, line: 694, column: 21)
!1674 = !DILocation(line: 694, column: 21, scope: !1673)
!1675 = !DILocation(line: 694, column: 21, scope: !1669)
!1676 = !DILocation(line: 695, column: 21, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !142, line: 695, column: 21)
!1678 = distinct !DILexicalBlock(scope: !1613, file: !142, line: 695, column: 21)
!1679 = !DILocation(line: 695, column: 21, scope: !1678)
!1680 = !DILocation(line: 696, column: 25, scope: !1613)
!1681 = !DILocation(line: 678, column: 17, scope: !1614)
!1682 = distinct !{!1682, !1683, !1684}
!1683 = !DILocation(line: 678, column: 17, scope: !1615)
!1684 = !DILocation(line: 697, column: 19, scope: !1615)
!1685 = !DILocation(line: 704, column: 34, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1287, file: !142, line: 704, column: 11)
!1687 = !DILocation(line: 706, column: 14, scope: !1686)
!1688 = !DILocation(line: 707, column: 14, scope: !1686)
!1689 = !DILocation(line: 707, column: 35, scope: !1686)
!1690 = !DILocation(line: 707, column: 17, scope: !1686)
!1691 = !DILocation(line: 707, column: 53, scope: !1686)
!1692 = !DILocation(line: 707, column: 47, scope: !1686)
!1693 = !DILocation(line: 707, column: 65, scope: !1686)
!1694 = !DILocation(line: 708, column: 15, scope: !1686)
!1695 = !DILocation(line: 708, column: 11, scope: !1686)
!1696 = !DILocation(line: 704, column: 11, scope: !1287)
!1697 = !DILocation(line: 712, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1287, file: !142, line: 712, column: 7)
!1699 = !DILocation(line: 712, column: 7, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1698, file: !142, line: 712, column: 7)
!1701 = !DILocation(line: 712, column: 7, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !142, line: 712, column: 7)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !142, line: 712, column: 7)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !142, line: 712, column: 7)
!1705 = !DILocation(line: 712, column: 7, scope: !1703)
!1706 = !DILocation(line: 712, column: 7, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !142, line: 712, column: 7)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !142, line: 712, column: 7)
!1709 = !DILocation(line: 712, column: 7, scope: !1708)
!1710 = !DILocation(line: 712, column: 7, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !142, line: 712, column: 7)
!1712 = distinct !DILexicalBlock(scope: !1704, file: !142, line: 712, column: 7)
!1713 = !DILocation(line: 712, column: 7, scope: !1712)
!1714 = !DILocation(line: 712, column: 7, scope: !1704)
!1715 = !DILocation(line: 712, column: 7, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !142, line: 712, column: 7)
!1717 = distinct !DILexicalBlock(scope: !1698, file: !142, line: 712, column: 7)
!1718 = !DILocation(line: 712, column: 7, scope: !1717)
!1719 = !DILocation(line: 715, column: 7, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !142, line: 715, column: 7)
!1721 = distinct !DILexicalBlock(scope: !1287, file: !142, line: 715, column: 7)
!1722 = !DILocation(line: 715, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !142, line: 715, column: 7)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !142, line: 715, column: 7)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !142, line: 715, column: 7)
!1726 = !DILocation(line: 715, column: 7, scope: !1724)
!1727 = !DILocation(line: 715, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !142, line: 715, column: 7)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !142, line: 715, column: 7)
!1730 = !DILocation(line: 715, column: 7, scope: !1729)
!1731 = !DILocation(line: 715, column: 7, scope: !1725)
!1732 = !DILocation(line: 716, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !142, line: 716, column: 7)
!1734 = distinct !DILexicalBlock(scope: !1287, file: !142, line: 716, column: 7)
!1735 = !DILocation(line: 716, column: 7, scope: !1734)
!1736 = !DILocation(line: 718, column: 13, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1287, file: !142, line: 718, column: 11)
!1738 = !DILocation(line: 718, column: 11, scope: !1287)
!1739 = !DILocation(line: 720, column: 5, scope: !1288)
!1740 = !DILocation(line: 392, column: 75, scope: !1288)
!1741 = !DILocation(line: 392, column: 3, scope: !1288)
!1742 = distinct !{!1742, !1401, !1743}
!1743 = !DILocation(line: 720, column: 5, scope: !1289)
!1744 = !DILocation(line: 722, column: 11, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1260, file: !142, line: 722, column: 7)
!1746 = !DILocation(line: 722, column: 16, scope: !1745)
!1747 = !DILocation(line: 730, column: 51, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1260, file: !142, line: 730, column: 7)
!1749 = !DILocation(line: 731, column: 10, scope: !1748)
!1750 = !DILocation(line: 733, column: 11, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !142, line: 733, column: 11)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !142, line: 732, column: 5)
!1753 = !DILocation(line: 733, column: 11, scope: !1752)
!1754 = !DILocation(line: 734, column: 16, scope: !1751)
!1755 = !DILocation(line: 734, column: 9, scope: !1751)
!1756 = !DILocation(line: 738, column: 18, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1751, file: !142, line: 738, column: 16)
!1758 = !DILocation(line: 738, column: 32, scope: !1757)
!1759 = !DILocation(line: 738, column: 29, scope: !1757)
!1760 = !DILocation(line: 747, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1260, file: !142, line: 747, column: 7)
!1762 = !DILocation(line: 747, column: 20, scope: !1761)
!1763 = !DILocation(line: 748, column: 12, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !142, line: 748, column: 5)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !142, line: 748, column: 5)
!1766 = !DILocation(line: 748, column: 5, scope: !1765)
!1767 = !DILocation(line: 749, column: 7, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !142, line: 749, column: 7)
!1769 = distinct !DILexicalBlock(scope: !1764, file: !142, line: 749, column: 7)
!1770 = !DILocation(line: 749, column: 7, scope: !1769)
!1771 = !DILocation(line: 748, column: 39, scope: !1764)
!1772 = distinct !{!1772, !1766, !1773}
!1773 = !DILocation(line: 749, column: 7, scope: !1765)
!1774 = !DILocation(line: 751, column: 11, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1260, file: !142, line: 751, column: 7)
!1776 = !DILocation(line: 751, column: 7, scope: !1260)
!1777 = !DILocation(line: 752, column: 5, scope: !1775)
!1778 = !DILocation(line: 752, column: 17, scope: !1775)
!1779 = !DILocation(line: 758, column: 21, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1260, file: !142, line: 758, column: 7)
!1781 = !DILocation(line: 758, column: 54, scope: !1780)
!1782 = !DILocation(line: 758, column: 51, scope: !1780)
!1783 = !DILocation(line: 762, column: 42, scope: !1260)
!1784 = !DILocation(line: 760, column: 10, scope: !1260)
!1785 = !DILocation(line: 760, column: 3, scope: !1260)
!1786 = !DILocation(line: 764, column: 1, scope: !1260)
!1787 = distinct !DISubprogram(name: "gettext_quote", scope: !142, file: !142, line: 199, type: !1788, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!17, !17, !101}
!1790 = !{!1791, !1792, !1793, !1794}
!1791 = !DILocalVariable(name: "msgid", arg: 1, scope: !1787, file: !142, line: 199, type: !17)
!1792 = !DILocalVariable(name: "s", arg: 2, scope: !1787, file: !142, line: 199, type: !101)
!1793 = !DILocalVariable(name: "translation", scope: !1787, file: !142, line: 201, type: !17)
!1794 = !DILocalVariable(name: "locale_code", scope: !1787, file: !142, line: 202, type: !17)
!1795 = !DILocation(line: 199, column: 28, scope: !1787)
!1796 = !DILocation(line: 199, column: 54, scope: !1787)
!1797 = !DILocation(line: 201, column: 29, scope: !1787)
!1798 = !DILocation(line: 201, column: 15, scope: !1787)
!1799 = !DILocation(line: 204, column: 19, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1787, file: !142, line: 204, column: 7)
!1801 = !DILocation(line: 204, column: 7, scope: !1787)
!1802 = !DILocation(line: 225, column: 17, scope: !1787)
!1803 = !DILocation(line: 202, column: 15, scope: !1787)
!1804 = !DILocalVariable(name: "s2", arg: 2, scope: !1805, file: !1806, line: 160, type: !17)
!1805 = distinct !DISubprogram(name: "strcaseeq0", scope: !1806, file: !1806, line: 160, type: !1807, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1809)
!1806 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1809 = !{!1810, !1804, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819}
!1810 = !DILocalVariable(name: "s1", arg: 1, scope: !1805, file: !1806, line: 160, type: !17)
!1811 = !DILocalVariable(name: "s20", arg: 3, scope: !1805, file: !1806, line: 160, type: !7)
!1812 = !DILocalVariable(name: "s21", arg: 4, scope: !1805, file: !1806, line: 160, type: !7)
!1813 = !DILocalVariable(name: "s22", arg: 5, scope: !1805, file: !1806, line: 160, type: !7)
!1814 = !DILocalVariable(name: "s23", arg: 6, scope: !1805, file: !1806, line: 160, type: !7)
!1815 = !DILocalVariable(name: "s24", arg: 7, scope: !1805, file: !1806, line: 160, type: !7)
!1816 = !DILocalVariable(name: "s25", arg: 8, scope: !1805, file: !1806, line: 160, type: !7)
!1817 = !DILocalVariable(name: "s26", arg: 9, scope: !1805, file: !1806, line: 160, type: !7)
!1818 = !DILocalVariable(name: "s27", arg: 10, scope: !1805, file: !1806, line: 160, type: !7)
!1819 = !DILocalVariable(name: "s28", arg: 11, scope: !1805, file: !1806, line: 160, type: !7)
!1820 = !DILocation(line: 160, column: 41, scope: !1805, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 226, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1787, file: !142, line: 226, column: 7)
!1823 = !DILocation(line: 160, column: 120, scope: !1805, inlinedAt: !1821)
!1824 = !DILocation(line: 160, column: 130, scope: !1805, inlinedAt: !1821)
!1825 = !DILocation(line: 162, column: 7, scope: !1826, inlinedAt: !1821)
!1826 = distinct !DILexicalBlock(scope: !1805, file: !1806, line: 162, column: 7)
!1827 = !DILocalVariable(name: "s2", arg: 2, scope: !1828, file: !1806, line: 146, type: !17)
!1828 = distinct !DISubprogram(name: "strcaseeq1", scope: !1806, file: !1806, line: 146, type: !1829, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1831)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1831 = !{!1832, !1827, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1832 = !DILocalVariable(name: "s1", arg: 1, scope: !1828, file: !1806, line: 146, type: !17)
!1833 = !DILocalVariable(name: "s21", arg: 3, scope: !1828, file: !1806, line: 146, type: !7)
!1834 = !DILocalVariable(name: "s22", arg: 4, scope: !1828, file: !1806, line: 146, type: !7)
!1835 = !DILocalVariable(name: "s23", arg: 5, scope: !1828, file: !1806, line: 146, type: !7)
!1836 = !DILocalVariable(name: "s24", arg: 6, scope: !1828, file: !1806, line: 146, type: !7)
!1837 = !DILocalVariable(name: "s25", arg: 7, scope: !1828, file: !1806, line: 146, type: !7)
!1838 = !DILocalVariable(name: "s26", arg: 8, scope: !1828, file: !1806, line: 146, type: !7)
!1839 = !DILocalVariable(name: "s27", arg: 9, scope: !1828, file: !1806, line: 146, type: !7)
!1840 = !DILocalVariable(name: "s28", arg: 10, scope: !1828, file: !1806, line: 146, type: !7)
!1841 = !DILocation(line: 146, column: 41, scope: !1828, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 167, column: 16, scope: !1843, inlinedAt: !1821)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !1806, line: 164, column: 11)
!1844 = distinct !DILexicalBlock(scope: !1826, file: !1806, line: 163, column: 5)
!1845 = !DILocation(line: 146, column: 110, scope: !1828, inlinedAt: !1842)
!1846 = !DILocation(line: 146, column: 120, scope: !1828, inlinedAt: !1842)
!1847 = !DILocation(line: 148, column: 7, scope: !1848, inlinedAt: !1842)
!1848 = distinct !DILexicalBlock(scope: !1828, file: !1806, line: 148, column: 7)
!1849 = !DILocalVariable(name: "s2", arg: 2, scope: !1850, file: !1806, line: 132, type: !17)
!1850 = distinct !DISubprogram(name: "strcaseeq2", scope: !1806, file: !1806, line: 132, type: !1851, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1853 = !{!1854, !1849, !1855, !1856, !1857, !1858, !1859, !1860, !1861}
!1854 = !DILocalVariable(name: "s1", arg: 1, scope: !1850, file: !1806, line: 132, type: !17)
!1855 = !DILocalVariable(name: "s22", arg: 3, scope: !1850, file: !1806, line: 132, type: !7)
!1856 = !DILocalVariable(name: "s23", arg: 4, scope: !1850, file: !1806, line: 132, type: !7)
!1857 = !DILocalVariable(name: "s24", arg: 5, scope: !1850, file: !1806, line: 132, type: !7)
!1858 = !DILocalVariable(name: "s25", arg: 6, scope: !1850, file: !1806, line: 132, type: !7)
!1859 = !DILocalVariable(name: "s26", arg: 7, scope: !1850, file: !1806, line: 132, type: !7)
!1860 = !DILocalVariable(name: "s27", arg: 8, scope: !1850, file: !1806, line: 132, type: !7)
!1861 = !DILocalVariable(name: "s28", arg: 9, scope: !1850, file: !1806, line: 132, type: !7)
!1862 = !DILocation(line: 132, column: 41, scope: !1850, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 153, column: 16, scope: !1864, inlinedAt: !1842)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !1806, line: 150, column: 11)
!1865 = distinct !DILexicalBlock(scope: !1848, file: !1806, line: 149, column: 5)
!1866 = !DILocation(line: 132, column: 100, scope: !1850, inlinedAt: !1863)
!1867 = !DILocation(line: 132, column: 110, scope: !1850, inlinedAt: !1863)
!1868 = !DILocation(line: 134, column: 7, scope: !1869, inlinedAt: !1863)
!1869 = distinct !DILexicalBlock(scope: !1850, file: !1806, line: 134, column: 7)
!1870 = !DILocalVariable(name: "s2", arg: 2, scope: !1871, file: !1806, line: 118, type: !17)
!1871 = distinct !DISubprogram(name: "strcaseeq3", scope: !1806, file: !1806, line: 118, type: !1872, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1874)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7}
!1874 = !{!1875, !1870, !1876, !1877, !1878, !1879, !1880, !1881}
!1875 = !DILocalVariable(name: "s1", arg: 1, scope: !1871, file: !1806, line: 118, type: !17)
!1876 = !DILocalVariable(name: "s23", arg: 3, scope: !1871, file: !1806, line: 118, type: !7)
!1877 = !DILocalVariable(name: "s24", arg: 4, scope: !1871, file: !1806, line: 118, type: !7)
!1878 = !DILocalVariable(name: "s25", arg: 5, scope: !1871, file: !1806, line: 118, type: !7)
!1879 = !DILocalVariable(name: "s26", arg: 6, scope: !1871, file: !1806, line: 118, type: !7)
!1880 = !DILocalVariable(name: "s27", arg: 7, scope: !1871, file: !1806, line: 118, type: !7)
!1881 = !DILocalVariable(name: "s28", arg: 8, scope: !1871, file: !1806, line: 118, type: !7)
!1882 = !DILocation(line: 118, column: 41, scope: !1871, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 139, column: 16, scope: !1884, inlinedAt: !1863)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !1806, line: 136, column: 11)
!1885 = distinct !DILexicalBlock(scope: !1869, file: !1806, line: 135, column: 5)
!1886 = !DILocation(line: 118, column: 90, scope: !1871, inlinedAt: !1883)
!1887 = !DILocation(line: 118, column: 100, scope: !1871, inlinedAt: !1883)
!1888 = !DILocation(line: 120, column: 7, scope: !1889, inlinedAt: !1883)
!1889 = distinct !DILexicalBlock(scope: !1871, file: !1806, line: 120, column: 7)
!1890 = !DILocation(line: 120, column: 7, scope: !1871, inlinedAt: !1883)
!1891 = !DILocalVariable(name: "s2", arg: 2, scope: !1892, file: !1806, line: 104, type: !17)
!1892 = distinct !DISubprogram(name: "strcaseeq4", scope: !1806, file: !1806, line: 104, type: !1893, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!40, !17, !17, !7, !7, !7, !7, !7}
!1895 = !{!1896, !1891, !1897, !1898, !1899, !1900, !1901}
!1896 = !DILocalVariable(name: "s1", arg: 1, scope: !1892, file: !1806, line: 104, type: !17)
!1897 = !DILocalVariable(name: "s24", arg: 3, scope: !1892, file: !1806, line: 104, type: !7)
!1898 = !DILocalVariable(name: "s25", arg: 4, scope: !1892, file: !1806, line: 104, type: !7)
!1899 = !DILocalVariable(name: "s26", arg: 5, scope: !1892, file: !1806, line: 104, type: !7)
!1900 = !DILocalVariable(name: "s27", arg: 6, scope: !1892, file: !1806, line: 104, type: !7)
!1901 = !DILocalVariable(name: "s28", arg: 7, scope: !1892, file: !1806, line: 104, type: !7)
!1902 = !DILocation(line: 104, column: 41, scope: !1892, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 125, column: 16, scope: !1904, inlinedAt: !1883)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !1806, line: 122, column: 11)
!1905 = distinct !DILexicalBlock(scope: !1889, file: !1806, line: 121, column: 5)
!1906 = !DILocation(line: 104, column: 80, scope: !1892, inlinedAt: !1903)
!1907 = !DILocation(line: 104, column: 90, scope: !1892, inlinedAt: !1903)
!1908 = !DILocation(line: 106, column: 7, scope: !1909, inlinedAt: !1903)
!1909 = distinct !DILexicalBlock(scope: !1892, file: !1806, line: 106, column: 7)
!1910 = !DILocation(line: 106, column: 7, scope: !1892, inlinedAt: !1903)
!1911 = !DILocalVariable(name: "s2", arg: 2, scope: !1912, file: !1806, line: 90, type: !17)
!1912 = distinct !DISubprogram(name: "strcaseeq5", scope: !1806, file: !1806, line: 90, type: !1913, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!40, !17, !17, !7, !7, !7, !7}
!1915 = !{!1916, !1911, !1917, !1918, !1919, !1920}
!1916 = !DILocalVariable(name: "s1", arg: 1, scope: !1912, file: !1806, line: 90, type: !17)
!1917 = !DILocalVariable(name: "s25", arg: 3, scope: !1912, file: !1806, line: 90, type: !7)
!1918 = !DILocalVariable(name: "s26", arg: 4, scope: !1912, file: !1806, line: 90, type: !7)
!1919 = !DILocalVariable(name: "s27", arg: 5, scope: !1912, file: !1806, line: 90, type: !7)
!1920 = !DILocalVariable(name: "s28", arg: 6, scope: !1912, file: !1806, line: 90, type: !7)
!1921 = !DILocation(line: 90, column: 41, scope: !1912, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 111, column: 16, scope: !1923, inlinedAt: !1903)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !1806, line: 108, column: 11)
!1924 = distinct !DILexicalBlock(scope: !1909, file: !1806, line: 107, column: 5)
!1925 = !DILocation(line: 90, column: 70, scope: !1912, inlinedAt: !1922)
!1926 = !DILocation(line: 90, column: 80, scope: !1912, inlinedAt: !1922)
!1927 = !DILocation(line: 92, column: 7, scope: !1928, inlinedAt: !1922)
!1928 = distinct !DILexicalBlock(scope: !1912, file: !1806, line: 92, column: 7)
!1929 = !DILocation(line: 92, column: 7, scope: !1912, inlinedAt: !1922)
!1930 = !DILocation(line: 227, column: 12, scope: !1822)
!1931 = !DILocation(line: 227, column: 21, scope: !1822)
!1932 = !DILocation(line: 227, column: 5, scope: !1822)
!1933 = !DILocation(line: 146, column: 41, scope: !1828, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 167, column: 16, scope: !1843, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 228, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1787, file: !142, line: 228, column: 7)
!1937 = !DILocation(line: 146, column: 110, scope: !1828, inlinedAt: !1934)
!1938 = !DILocation(line: 146, column: 120, scope: !1828, inlinedAt: !1934)
!1939 = !DILocation(line: 148, column: 7, scope: !1848, inlinedAt: !1934)
!1940 = !DILocation(line: 132, column: 41, scope: !1850, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 153, column: 16, scope: !1864, inlinedAt: !1934)
!1942 = !DILocation(line: 132, column: 100, scope: !1850, inlinedAt: !1941)
!1943 = !DILocation(line: 132, column: 110, scope: !1850, inlinedAt: !1941)
!1944 = !DILocation(line: 134, column: 7, scope: !1869, inlinedAt: !1941)
!1945 = !DILocation(line: 134, column: 7, scope: !1850, inlinedAt: !1941)
!1946 = !DILocation(line: 118, column: 41, scope: !1871, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 139, column: 16, scope: !1884, inlinedAt: !1941)
!1948 = !DILocation(line: 118, column: 90, scope: !1871, inlinedAt: !1947)
!1949 = !DILocation(line: 118, column: 100, scope: !1871, inlinedAt: !1947)
!1950 = !DILocation(line: 120, column: 7, scope: !1889, inlinedAt: !1947)
!1951 = !DILocation(line: 120, column: 7, scope: !1871, inlinedAt: !1947)
!1952 = !DILocation(line: 104, column: 41, scope: !1892, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 125, column: 16, scope: !1904, inlinedAt: !1947)
!1954 = !DILocation(line: 104, column: 80, scope: !1892, inlinedAt: !1953)
!1955 = !DILocation(line: 104, column: 90, scope: !1892, inlinedAt: !1953)
!1956 = !DILocation(line: 106, column: 7, scope: !1909, inlinedAt: !1953)
!1957 = !DILocation(line: 106, column: 7, scope: !1892, inlinedAt: !1953)
!1958 = !DILocation(line: 90, column: 41, scope: !1912, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 111, column: 16, scope: !1923, inlinedAt: !1953)
!1960 = !DILocation(line: 90, column: 70, scope: !1912, inlinedAt: !1959)
!1961 = !DILocation(line: 90, column: 80, scope: !1912, inlinedAt: !1959)
!1962 = !DILocation(line: 92, column: 7, scope: !1928, inlinedAt: !1959)
!1963 = !DILocation(line: 92, column: 7, scope: !1912, inlinedAt: !1959)
!1964 = !DILocalVariable(name: "s2", arg: 2, scope: !1965, file: !1806, line: 76, type: !17)
!1965 = distinct !DISubprogram(name: "strcaseeq6", scope: !1806, file: !1806, line: 76, type: !1966, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1968)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!40, !17, !17, !7, !7, !7}
!1968 = !{!1969, !1964, !1970, !1971, !1972}
!1969 = !DILocalVariable(name: "s1", arg: 1, scope: !1965, file: !1806, line: 76, type: !17)
!1970 = !DILocalVariable(name: "s26", arg: 3, scope: !1965, file: !1806, line: 76, type: !7)
!1971 = !DILocalVariable(name: "s27", arg: 4, scope: !1965, file: !1806, line: 76, type: !7)
!1972 = !DILocalVariable(name: "s28", arg: 5, scope: !1965, file: !1806, line: 76, type: !7)
!1973 = !DILocation(line: 76, column: 41, scope: !1965, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 97, column: 16, scope: !1975, inlinedAt: !1959)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !1806, line: 94, column: 11)
!1976 = distinct !DILexicalBlock(scope: !1928, file: !1806, line: 93, column: 5)
!1977 = !DILocation(line: 76, column: 60, scope: !1965, inlinedAt: !1974)
!1978 = !DILocation(line: 76, column: 70, scope: !1965, inlinedAt: !1974)
!1979 = !DILocation(line: 78, column: 7, scope: !1980, inlinedAt: !1974)
!1980 = distinct !DILexicalBlock(scope: !1965, file: !1806, line: 78, column: 7)
!1981 = !DILocation(line: 78, column: 7, scope: !1965, inlinedAt: !1974)
!1982 = !DILocalVariable(name: "s2", arg: 2, scope: !1983, file: !1806, line: 62, type: !17)
!1983 = distinct !DISubprogram(name: "strcaseeq7", scope: !1806, file: !1806, line: 62, type: !1984, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!40, !17, !17, !7, !7}
!1986 = !{!1987, !1982, !1988, !1989}
!1987 = !DILocalVariable(name: "s1", arg: 1, scope: !1983, file: !1806, line: 62, type: !17)
!1988 = !DILocalVariable(name: "s27", arg: 3, scope: !1983, file: !1806, line: 62, type: !7)
!1989 = !DILocalVariable(name: "s28", arg: 4, scope: !1983, file: !1806, line: 62, type: !7)
!1990 = !DILocation(line: 62, column: 41, scope: !1983, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 83, column: 16, scope: !1992, inlinedAt: !1974)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !1806, line: 80, column: 11)
!1993 = distinct !DILexicalBlock(scope: !1980, file: !1806, line: 79, column: 5)
!1994 = !DILocation(line: 62, column: 50, scope: !1983, inlinedAt: !1991)
!1995 = !DILocation(line: 62, column: 60, scope: !1983, inlinedAt: !1991)
!1996 = !DILocation(line: 64, column: 7, scope: !1997, inlinedAt: !1991)
!1997 = distinct !DILexicalBlock(scope: !1983, file: !1806, line: 64, column: 7)
!1998 = !DILocation(line: 228, column: 7, scope: !1787)
!1999 = !DILocation(line: 229, column: 12, scope: !1936)
!2000 = !DILocation(line: 229, column: 21, scope: !1936)
!2001 = !DILocation(line: 229, column: 5, scope: !1936)
!2002 = !DILocation(line: 231, column: 13, scope: !1787)
!2003 = !DILocation(line: 231, column: 11, scope: !1787)
!2004 = !DILocation(line: 231, column: 3, scope: !1787)
!2005 = !DILocation(line: 232, column: 1, scope: !1787)
!2006 = distinct !DISubprogram(name: "quotearg_alloc", scope: !142, file: !142, line: 791, type: !2007, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2009)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!6, !17, !137, !1132}
!2009 = !{!2010, !2011, !2012}
!2010 = !DILocalVariable(name: "arg", arg: 1, scope: !2006, file: !142, line: 791, type: !17)
!2011 = !DILocalVariable(name: "argsize", arg: 2, scope: !2006, file: !142, line: 791, type: !137)
!2012 = !DILocalVariable(name: "o", arg: 3, scope: !2006, file: !142, line: 792, type: !1132)
!2013 = !DILocation(line: 791, column: 29, scope: !2006)
!2014 = !DILocation(line: 791, column: 41, scope: !2006)
!2015 = !DILocation(line: 792, column: 47, scope: !2006)
!2016 = !DILocalVariable(name: "arg", arg: 1, scope: !2017, file: !142, line: 804, type: !17)
!2017 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !142, file: !142, line: 804, type: !2018, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!6, !17, !137, !560, !1132}
!2020 = !{!2016, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028}
!2021 = !DILocalVariable(name: "argsize", arg: 2, scope: !2017, file: !142, line: 804, type: !137)
!2022 = !DILocalVariable(name: "size", arg: 3, scope: !2017, file: !142, line: 804, type: !560)
!2023 = !DILocalVariable(name: "o", arg: 4, scope: !2017, file: !142, line: 805, type: !1132)
!2024 = !DILocalVariable(name: "p", scope: !2017, file: !142, line: 807, type: !1132)
!2025 = !DILocalVariable(name: "e", scope: !2017, file: !142, line: 808, type: !40)
!2026 = !DILocalVariable(name: "flags", scope: !2017, file: !142, line: 810, type: !40)
!2027 = !DILocalVariable(name: "bufsize", scope: !2017, file: !142, line: 811, type: !137)
!2028 = !DILocalVariable(name: "buf", scope: !2017, file: !142, line: 815, type: !6)
!2029 = !DILocation(line: 804, column: 33, scope: !2017, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 794, column: 10, scope: !2006)
!2031 = !DILocation(line: 804, column: 45, scope: !2017, inlinedAt: !2030)
!2032 = !DILocation(line: 804, column: 62, scope: !2017, inlinedAt: !2030)
!2033 = !DILocation(line: 805, column: 51, scope: !2017, inlinedAt: !2030)
!2034 = !DILocation(line: 807, column: 37, scope: !2017, inlinedAt: !2030)
!2035 = !DILocation(line: 807, column: 33, scope: !2017, inlinedAt: !2030)
!2036 = !DILocation(line: 808, column: 11, scope: !2017, inlinedAt: !2030)
!2037 = !DILocation(line: 808, column: 7, scope: !2017, inlinedAt: !2030)
!2038 = !DILocation(line: 810, column: 18, scope: !2017, inlinedAt: !2030)
!2039 = !DILocation(line: 810, column: 24, scope: !2017, inlinedAt: !2030)
!2040 = !DILocation(line: 810, column: 7, scope: !2017, inlinedAt: !2030)
!2041 = !DILocation(line: 811, column: 69, scope: !2017, inlinedAt: !2030)
!2042 = !DILocation(line: 812, column: 53, scope: !2017, inlinedAt: !2030)
!2043 = !DILocation(line: 813, column: 49, scope: !2017, inlinedAt: !2030)
!2044 = !DILocation(line: 814, column: 49, scope: !2017, inlinedAt: !2030)
!2045 = !DILocation(line: 811, column: 20, scope: !2017, inlinedAt: !2030)
!2046 = !DILocation(line: 814, column: 62, scope: !2017, inlinedAt: !2030)
!2047 = !DILocation(line: 811, column: 10, scope: !2017, inlinedAt: !2030)
!2048 = !DILocalVariable(name: "n", arg: 1, scope: !2049, file: !556, line: 220, type: !137)
!2049 = distinct !DISubprogram(name: "xcharalloc", scope: !556, file: !556, line: 220, type: !2050, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!6, !137}
!2052 = !{!2048}
!2053 = !DILocation(line: 220, column: 20, scope: !2049, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 815, column: 15, scope: !2017, inlinedAt: !2030)
!2055 = !DILocation(line: 222, column: 10, scope: !2049, inlinedAt: !2054)
!2056 = !DILocation(line: 815, column: 9, scope: !2017, inlinedAt: !2030)
!2057 = !DILocation(line: 816, column: 60, scope: !2017, inlinedAt: !2030)
!2058 = !DILocation(line: 818, column: 32, scope: !2017, inlinedAt: !2030)
!2059 = !DILocation(line: 818, column: 47, scope: !2017, inlinedAt: !2030)
!2060 = !DILocation(line: 816, column: 3, scope: !2017, inlinedAt: !2030)
!2061 = !DILocation(line: 819, column: 9, scope: !2017, inlinedAt: !2030)
!2062 = !DILocation(line: 794, column: 3, scope: !2006)
!2063 = !DILocation(line: 804, column: 33, scope: !2017)
!2064 = !DILocation(line: 804, column: 45, scope: !2017)
!2065 = !DILocation(line: 804, column: 62, scope: !2017)
!2066 = !DILocation(line: 805, column: 51, scope: !2017)
!2067 = !DILocation(line: 807, column: 37, scope: !2017)
!2068 = !DILocation(line: 807, column: 33, scope: !2017)
!2069 = !DILocation(line: 808, column: 11, scope: !2017)
!2070 = !DILocation(line: 808, column: 7, scope: !2017)
!2071 = !DILocation(line: 810, column: 18, scope: !2017)
!2072 = !DILocation(line: 810, column: 27, scope: !2017)
!2073 = !DILocation(line: 810, column: 24, scope: !2017)
!2074 = !DILocation(line: 810, column: 7, scope: !2017)
!2075 = !DILocation(line: 811, column: 69, scope: !2017)
!2076 = !DILocation(line: 812, column: 53, scope: !2017)
!2077 = !DILocation(line: 813, column: 49, scope: !2017)
!2078 = !DILocation(line: 814, column: 49, scope: !2017)
!2079 = !DILocation(line: 811, column: 20, scope: !2017)
!2080 = !DILocation(line: 814, column: 62, scope: !2017)
!2081 = !DILocation(line: 811, column: 10, scope: !2017)
!2082 = !DILocation(line: 220, column: 20, scope: !2049, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 815, column: 15, scope: !2017)
!2084 = !DILocation(line: 222, column: 10, scope: !2049, inlinedAt: !2083)
!2085 = !DILocation(line: 815, column: 9, scope: !2017)
!2086 = !DILocation(line: 816, column: 60, scope: !2017)
!2087 = !DILocation(line: 818, column: 32, scope: !2017)
!2088 = !DILocation(line: 818, column: 47, scope: !2017)
!2089 = !DILocation(line: 816, column: 3, scope: !2017)
!2090 = !DILocation(line: 819, column: 9, scope: !2017)
!2091 = !DILocation(line: 820, column: 7, scope: !2017)
!2092 = !DILocation(line: 821, column: 11, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2017, file: !142, line: 820, column: 7)
!2094 = !{!765, !765, i64 0}
!2095 = !DILocation(line: 821, column: 5, scope: !2093)
!2096 = !DILocation(line: 822, column: 3, scope: !2017)
!2097 = distinct !DISubprogram(name: "quotearg_free", scope: !142, file: !142, line: 840, type: !1013, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2098)
!2098 = !{!2099, !2100}
!2099 = !DILocalVariable(name: "sv", scope: !2097, file: !142, line: 842, type: !168)
!2100 = !DILocalVariable(name: "i", scope: !2097, file: !142, line: 843, type: !40)
!2101 = !DILocation(line: 842, column: 24, scope: !2097)
!2102 = !DILocation(line: 842, column: 19, scope: !2097)
!2103 = !DILocation(line: 843, column: 7, scope: !2097)
!2104 = !DILocation(line: 844, column: 19, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !142, line: 844, column: 3)
!2106 = distinct !DILexicalBlock(scope: !2097, file: !142, line: 844, column: 3)
!2107 = !DILocation(line: 844, column: 17, scope: !2105)
!2108 = !DILocation(line: 844, column: 3, scope: !2106)
!2109 = !DILocation(line: 845, column: 17, scope: !2105)
!2110 = !{!2111, !643, i64 8}
!2111 = !{!"slotvec", !765, i64 0, !643, i64 8}
!2112 = !DILocation(line: 845, column: 5, scope: !2105)
!2113 = !DILocation(line: 844, column: 28, scope: !2105)
!2114 = distinct !{!2114, !2108, !2115}
!2115 = !DILocation(line: 845, column: 20, scope: !2106)
!2116 = !DILocation(line: 846, column: 13, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2097, file: !142, line: 846, column: 7)
!2118 = !DILocation(line: 846, column: 17, scope: !2117)
!2119 = !DILocation(line: 846, column: 7, scope: !2097)
!2120 = !DILocation(line: 848, column: 7, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !142, line: 847, column: 5)
!2122 = !DILocation(line: 849, column: 21, scope: !2121)
!2123 = !{!2111, !765, i64 0}
!2124 = !DILocation(line: 850, column: 20, scope: !2121)
!2125 = !DILocation(line: 851, column: 5, scope: !2121)
!2126 = !DILocation(line: 852, column: 10, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2097, file: !142, line: 852, column: 7)
!2128 = !DILocation(line: 852, column: 7, scope: !2097)
!2129 = !DILocation(line: 854, column: 13, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2127, file: !142, line: 853, column: 5)
!2131 = !DILocation(line: 854, column: 7, scope: !2130)
!2132 = !DILocation(line: 855, column: 15, scope: !2130)
!2133 = !DILocation(line: 856, column: 5, scope: !2130)
!2134 = !DILocation(line: 857, column: 10, scope: !2097)
!2135 = !DILocation(line: 858, column: 1, scope: !2097)
!2136 = distinct !DISubprogram(name: "quotearg_n", scope: !142, file: !142, line: 922, type: !2137, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!6, !40, !17}
!2139 = !{!2140, !2141}
!2140 = !DILocalVariable(name: "n", arg: 1, scope: !2136, file: !142, line: 922, type: !40)
!2141 = !DILocalVariable(name: "arg", arg: 2, scope: !2136, file: !142, line: 922, type: !17)
!2142 = !DILocation(line: 922, column: 17, scope: !2136)
!2143 = !DILocation(line: 922, column: 32, scope: !2136)
!2144 = !DILocation(line: 924, column: 10, scope: !2136)
!2145 = !DILocation(line: 924, column: 3, scope: !2136)
!2146 = distinct !DISubprogram(name: "quotearg_n_options", scope: !142, file: !142, line: 869, type: !2147, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!6, !40, !17, !137, !1132}
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2156, !2159, !2161, !2162, !2163}
!2150 = !DILocalVariable(name: "n", arg: 1, scope: !2146, file: !142, line: 869, type: !40)
!2151 = !DILocalVariable(name: "arg", arg: 2, scope: !2146, file: !142, line: 869, type: !17)
!2152 = !DILocalVariable(name: "argsize", arg: 3, scope: !2146, file: !142, line: 869, type: !137)
!2153 = !DILocalVariable(name: "options", arg: 4, scope: !2146, file: !142, line: 870, type: !1132)
!2154 = !DILocalVariable(name: "e", scope: !2146, file: !142, line: 872, type: !40)
!2155 = !DILocalVariable(name: "sv", scope: !2146, file: !142, line: 874, type: !168)
!2156 = !DILocalVariable(name: "preallocated", scope: !2157, file: !142, line: 881, type: !81)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !142, line: 880, column: 5)
!2158 = distinct !DILexicalBlock(scope: !2146, file: !142, line: 879, column: 7)
!2159 = !DILocalVariable(name: "size", scope: !2160, file: !142, line: 894, type: !137)
!2160 = distinct !DILexicalBlock(scope: !2146, file: !142, line: 893, column: 3)
!2161 = !DILocalVariable(name: "val", scope: !2160, file: !142, line: 895, type: !6)
!2162 = !DILocalVariable(name: "flags", scope: !2160, file: !142, line: 897, type: !40)
!2163 = !DILocalVariable(name: "qsize", scope: !2160, file: !142, line: 898, type: !137)
!2164 = !DILocation(line: 869, column: 25, scope: !2146)
!2165 = !DILocation(line: 869, column: 40, scope: !2146)
!2166 = !DILocation(line: 869, column: 52, scope: !2146)
!2167 = !DILocation(line: 870, column: 51, scope: !2146)
!2168 = !DILocation(line: 872, column: 11, scope: !2146)
!2169 = !DILocation(line: 872, column: 7, scope: !2146)
!2170 = !DILocation(line: 874, column: 24, scope: !2146)
!2171 = !DILocation(line: 874, column: 19, scope: !2146)
!2172 = !DILocation(line: 876, column: 9, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2146, file: !142, line: 876, column: 7)
!2174 = !DILocation(line: 876, column: 7, scope: !2146)
!2175 = !DILocation(line: 877, column: 5, scope: !2173)
!2176 = !DILocation(line: 879, column: 7, scope: !2158)
!2177 = !DILocation(line: 879, column: 14, scope: !2158)
!2178 = !DILocation(line: 879, column: 7, scope: !2146)
!2179 = !DILocation(line: 881, column: 31, scope: !2157)
!2180 = !DILocation(line: 883, column: 67, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2157, file: !142, line: 883, column: 11)
!2182 = !DILocation(line: 883, column: 11, scope: !2157)
!2183 = !DILocation(line: 884, column: 9, scope: !2181)
!2184 = !DILocation(line: 886, column: 32, scope: !2157)
!2185 = !DILocation(line: 886, column: 61, scope: !2157)
!2186 = !DILocation(line: 886, column: 58, scope: !2157)
!2187 = !DILocation(line: 886, column: 66, scope: !2157)
!2188 = !DILocation(line: 886, column: 22, scope: !2157)
!2189 = !DILocation(line: 886, column: 15, scope: !2157)
!2190 = !DILocation(line: 887, column: 11, scope: !2157)
!2191 = !DILocation(line: 888, column: 15, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2157, file: !142, line: 887, column: 11)
!2193 = !{i64 0, i64 8, !2094, i64 8, i64 8, !642}
!2194 = !DILocation(line: 888, column: 9, scope: !2192)
!2195 = !DILocation(line: 889, column: 20, scope: !2157)
!2196 = !DILocation(line: 889, column: 18, scope: !2157)
!2197 = !DILocation(line: 889, column: 7, scope: !2157)
!2198 = !DILocation(line: 889, column: 38, scope: !2157)
!2199 = !DILocation(line: 889, column: 31, scope: !2157)
!2200 = !DILocation(line: 889, column: 48, scope: !2157)
!2201 = !DILocation(line: 890, column: 14, scope: !2157)
!2202 = !DILocation(line: 891, column: 5, scope: !2157)
!2203 = !DILocation(line: 894, column: 19, scope: !2160)
!2204 = !DILocation(line: 894, column: 25, scope: !2160)
!2205 = !DILocation(line: 894, column: 12, scope: !2160)
!2206 = !DILocation(line: 895, column: 23, scope: !2160)
!2207 = !DILocation(line: 895, column: 11, scope: !2160)
!2208 = !DILocation(line: 897, column: 26, scope: !2160)
!2209 = !DILocation(line: 897, column: 32, scope: !2160)
!2210 = !DILocation(line: 897, column: 9, scope: !2160)
!2211 = !DILocation(line: 899, column: 55, scope: !2160)
!2212 = !DILocation(line: 900, column: 46, scope: !2160)
!2213 = !DILocation(line: 901, column: 55, scope: !2160)
!2214 = !DILocation(line: 902, column: 55, scope: !2160)
!2215 = !DILocation(line: 898, column: 20, scope: !2160)
!2216 = !DILocation(line: 898, column: 12, scope: !2160)
!2217 = !DILocation(line: 904, column: 14, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2160, file: !142, line: 904, column: 9)
!2219 = !DILocation(line: 904, column: 9, scope: !2160)
!2220 = !DILocation(line: 906, column: 35, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !142, line: 905, column: 7)
!2222 = !DILocation(line: 906, column: 20, scope: !2221)
!2223 = !DILocation(line: 907, column: 17, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !142, line: 907, column: 13)
!2225 = !DILocation(line: 907, column: 13, scope: !2221)
!2226 = !DILocation(line: 908, column: 11, scope: !2224)
!2227 = !DILocation(line: 220, column: 20, scope: !2049, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 909, column: 27, scope: !2221)
!2229 = !DILocation(line: 222, column: 10, scope: !2049, inlinedAt: !2228)
!2230 = !DILocation(line: 909, column: 19, scope: !2221)
!2231 = !DILocation(line: 910, column: 69, scope: !2221)
!2232 = !DILocation(line: 912, column: 44, scope: !2221)
!2233 = !DILocation(line: 913, column: 44, scope: !2221)
!2234 = !DILocation(line: 910, column: 9, scope: !2221)
!2235 = !DILocation(line: 914, column: 7, scope: !2221)
!2236 = !DILocation(line: 916, column: 11, scope: !2160)
!2237 = !DILocation(line: 917, column: 5, scope: !2160)
!2238 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !142, file: !142, line: 928, type: !2239, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!6, !40, !17, !137}
!2241 = !{!2242, !2243, !2244}
!2242 = !DILocalVariable(name: "n", arg: 1, scope: !2238, file: !142, line: 928, type: !40)
!2243 = !DILocalVariable(name: "arg", arg: 2, scope: !2238, file: !142, line: 928, type: !17)
!2244 = !DILocalVariable(name: "argsize", arg: 3, scope: !2238, file: !142, line: 928, type: !137)
!2245 = !DILocation(line: 928, column: 21, scope: !2238)
!2246 = !DILocation(line: 928, column: 36, scope: !2238)
!2247 = !DILocation(line: 928, column: 48, scope: !2238)
!2248 = !DILocation(line: 930, column: 10, scope: !2238)
!2249 = !DILocation(line: 930, column: 3, scope: !2238)
!2250 = distinct !DISubprogram(name: "quotearg", scope: !142, file: !142, line: 934, type: !2251, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!6, !17}
!2253 = !{!2254}
!2254 = !DILocalVariable(name: "arg", arg: 1, scope: !2250, file: !142, line: 934, type: !17)
!2255 = !DILocation(line: 934, column: 23, scope: !2250)
!2256 = !DILocation(line: 922, column: 17, scope: !2136, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 936, column: 10, scope: !2250)
!2258 = !DILocation(line: 922, column: 32, scope: !2136, inlinedAt: !2257)
!2259 = !DILocation(line: 924, column: 10, scope: !2136, inlinedAt: !2257)
!2260 = !DILocation(line: 936, column: 3, scope: !2250)
!2261 = distinct !DISubprogram(name: "quotearg_mem", scope: !142, file: !142, line: 940, type: !2262, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!6, !17, !137}
!2264 = !{!2265, !2266}
!2265 = !DILocalVariable(name: "arg", arg: 1, scope: !2261, file: !142, line: 940, type: !17)
!2266 = !DILocalVariable(name: "argsize", arg: 2, scope: !2261, file: !142, line: 940, type: !137)
!2267 = !DILocation(line: 940, column: 27, scope: !2261)
!2268 = !DILocation(line: 940, column: 39, scope: !2261)
!2269 = !DILocation(line: 928, column: 21, scope: !2238, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 942, column: 10, scope: !2261)
!2271 = !DILocation(line: 928, column: 36, scope: !2238, inlinedAt: !2270)
!2272 = !DILocation(line: 928, column: 48, scope: !2238, inlinedAt: !2270)
!2273 = !DILocation(line: 930, column: 10, scope: !2238, inlinedAt: !2270)
!2274 = !DILocation(line: 942, column: 3, scope: !2261)
!2275 = distinct !DISubprogram(name: "quotearg_n_style", scope: !142, file: !142, line: 946, type: !2276, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!6, !40, !101, !17}
!2278 = !{!2279, !2280, !2281, !2282}
!2279 = !DILocalVariable(name: "n", arg: 1, scope: !2275, file: !142, line: 946, type: !40)
!2280 = !DILocalVariable(name: "s", arg: 2, scope: !2275, file: !142, line: 946, type: !101)
!2281 = !DILocalVariable(name: "arg", arg: 3, scope: !2275, file: !142, line: 946, type: !17)
!2282 = !DILocalVariable(name: "o", scope: !2275, file: !142, line: 948, type: !1133)
!2283 = !DILocalVariable(name: "o", scope: !2284, file: !142, line: 187, type: !149)
!2284 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !142, file: !142, line: 185, type: !2285, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!149, !101}
!2287 = !{!2288, !2283}
!2288 = !DILocalVariable(name: "style", arg: 1, scope: !2284, file: !142, line: 185, type: !101)
!2289 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2290 = !DILocation(line: 187, column: 26, scope: !2284, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 948, column: 36, scope: !2275)
!2292 = !DILocation(line: 946, column: 23, scope: !2275)
!2293 = !DILocation(line: 946, column: 45, scope: !2275)
!2294 = !DILocation(line: 946, column: 60, scope: !2275)
!2295 = !DILocation(line: 948, column: 3, scope: !2275)
!2296 = !DILocation(line: 948, column: 32, scope: !2275)
!2297 = !DILocation(line: 185, column: 48, scope: !2284, inlinedAt: !2291)
!2298 = !DILocation(line: 187, column: 3, scope: !2284, inlinedAt: !2291)
!2299 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2300 = !DILocation(line: 188, column: 13, scope: !2301, inlinedAt: !2291)
!2301 = distinct !DILexicalBlock(scope: !2284, file: !142, line: 188, column: 7)
!2302 = !DILocation(line: 188, column: 7, scope: !2284, inlinedAt: !2291)
!2303 = !DILocation(line: 189, column: 5, scope: !2301, inlinedAt: !2291)
!2304 = !{!2305}
!2305 = distinct !{!2305, !2306, !"quoting_options_from_style: argument 0"}
!2306 = distinct !{!2306, !"quoting_options_from_style"}
!2307 = !DILocation(line: 191, column: 10, scope: !2284, inlinedAt: !2291)
!2308 = !DILocation(line: 192, column: 1, scope: !2284, inlinedAt: !2291)
!2309 = !DILocation(line: 949, column: 10, scope: !2275)
!2310 = !DILocation(line: 950, column: 1, scope: !2275)
!2311 = !DILocation(line: 949, column: 3, scope: !2275)
!2312 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !142, file: !142, line: 953, type: !2313, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!6, !40, !101, !17, !137}
!2315 = !{!2316, !2317, !2318, !2319, !2320}
!2316 = !DILocalVariable(name: "n", arg: 1, scope: !2312, file: !142, line: 953, type: !40)
!2317 = !DILocalVariable(name: "s", arg: 2, scope: !2312, file: !142, line: 953, type: !101)
!2318 = !DILocalVariable(name: "arg", arg: 3, scope: !2312, file: !142, line: 954, type: !17)
!2319 = !DILocalVariable(name: "argsize", arg: 4, scope: !2312, file: !142, line: 954, type: !137)
!2320 = !DILocalVariable(name: "o", scope: !2312, file: !142, line: 956, type: !1133)
!2321 = !DILocation(line: 187, column: 26, scope: !2284, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 956, column: 36, scope: !2312)
!2323 = !DILocation(line: 953, column: 27, scope: !2312)
!2324 = !DILocation(line: 953, column: 49, scope: !2312)
!2325 = !DILocation(line: 954, column: 35, scope: !2312)
!2326 = !DILocation(line: 954, column: 47, scope: !2312)
!2327 = !DILocation(line: 956, column: 3, scope: !2312)
!2328 = !DILocation(line: 956, column: 32, scope: !2312)
!2329 = !DILocation(line: 185, column: 48, scope: !2284, inlinedAt: !2322)
!2330 = !DILocation(line: 187, column: 3, scope: !2284, inlinedAt: !2322)
!2331 = !DILocation(line: 188, column: 13, scope: !2301, inlinedAt: !2322)
!2332 = !DILocation(line: 188, column: 7, scope: !2284, inlinedAt: !2322)
!2333 = !DILocation(line: 189, column: 5, scope: !2301, inlinedAt: !2322)
!2334 = !{!2335}
!2335 = distinct !{!2335, !2336, !"quoting_options_from_style: argument 0"}
!2336 = distinct !{!2336, !"quoting_options_from_style"}
!2337 = !DILocation(line: 191, column: 10, scope: !2284, inlinedAt: !2322)
!2338 = !DILocation(line: 192, column: 1, scope: !2284, inlinedAt: !2322)
!2339 = !DILocation(line: 957, column: 10, scope: !2312)
!2340 = !DILocation(line: 958, column: 1, scope: !2312)
!2341 = !DILocation(line: 957, column: 3, scope: !2312)
!2342 = distinct !DISubprogram(name: "quotearg_style", scope: !142, file: !142, line: 961, type: !2343, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!6, !101, !17}
!2345 = !{!2346, !2347}
!2346 = !DILocalVariable(name: "s", arg: 1, scope: !2342, file: !142, line: 961, type: !101)
!2347 = !DILocalVariable(name: "arg", arg: 2, scope: !2342, file: !142, line: 961, type: !17)
!2348 = !DILocation(line: 187, column: 26, scope: !2284, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 948, column: 36, scope: !2275, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 963, column: 10, scope: !2342)
!2351 = !DILocation(line: 961, column: 36, scope: !2342)
!2352 = !DILocation(line: 961, column: 51, scope: !2342)
!2353 = !DILocation(line: 946, column: 23, scope: !2275, inlinedAt: !2350)
!2354 = !DILocation(line: 946, column: 45, scope: !2275, inlinedAt: !2350)
!2355 = !DILocation(line: 946, column: 60, scope: !2275, inlinedAt: !2350)
!2356 = !DILocation(line: 948, column: 3, scope: !2275, inlinedAt: !2350)
!2357 = !DILocation(line: 948, column: 32, scope: !2275, inlinedAt: !2350)
!2358 = !DILocation(line: 185, column: 48, scope: !2284, inlinedAt: !2349)
!2359 = !DILocation(line: 187, column: 3, scope: !2284, inlinedAt: !2349)
!2360 = !DILocation(line: 188, column: 13, scope: !2301, inlinedAt: !2349)
!2361 = !DILocation(line: 188, column: 7, scope: !2284, inlinedAt: !2349)
!2362 = !DILocation(line: 189, column: 5, scope: !2301, inlinedAt: !2349)
!2363 = !{!2364}
!2364 = distinct !{!2364, !2365, !"quoting_options_from_style: argument 0"}
!2365 = distinct !{!2365, !"quoting_options_from_style"}
!2366 = !DILocation(line: 191, column: 10, scope: !2284, inlinedAt: !2349)
!2367 = !DILocation(line: 192, column: 1, scope: !2284, inlinedAt: !2349)
!2368 = !DILocation(line: 949, column: 10, scope: !2275, inlinedAt: !2350)
!2369 = !DILocation(line: 950, column: 1, scope: !2275, inlinedAt: !2350)
!2370 = !DILocation(line: 963, column: 3, scope: !2342)
!2371 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !142, file: !142, line: 967, type: !2372, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!6, !101, !17, !137}
!2374 = !{!2375, !2376, !2377}
!2375 = !DILocalVariable(name: "s", arg: 1, scope: !2371, file: !142, line: 967, type: !101)
!2376 = !DILocalVariable(name: "arg", arg: 2, scope: !2371, file: !142, line: 967, type: !17)
!2377 = !DILocalVariable(name: "argsize", arg: 3, scope: !2371, file: !142, line: 967, type: !137)
!2378 = !DILocation(line: 187, column: 26, scope: !2284, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 956, column: 36, scope: !2312, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 969, column: 10, scope: !2371)
!2381 = !DILocation(line: 967, column: 40, scope: !2371)
!2382 = !DILocation(line: 967, column: 55, scope: !2371)
!2383 = !DILocation(line: 967, column: 67, scope: !2371)
!2384 = !DILocation(line: 953, column: 27, scope: !2312, inlinedAt: !2380)
!2385 = !DILocation(line: 953, column: 49, scope: !2312, inlinedAt: !2380)
!2386 = !DILocation(line: 954, column: 35, scope: !2312, inlinedAt: !2380)
!2387 = !DILocation(line: 954, column: 47, scope: !2312, inlinedAt: !2380)
!2388 = !DILocation(line: 956, column: 3, scope: !2312, inlinedAt: !2380)
!2389 = !DILocation(line: 956, column: 32, scope: !2312, inlinedAt: !2380)
!2390 = !DILocation(line: 185, column: 48, scope: !2284, inlinedAt: !2379)
!2391 = !DILocation(line: 187, column: 3, scope: !2284, inlinedAt: !2379)
!2392 = !DILocation(line: 188, column: 13, scope: !2301, inlinedAt: !2379)
!2393 = !DILocation(line: 188, column: 7, scope: !2284, inlinedAt: !2379)
!2394 = !DILocation(line: 189, column: 5, scope: !2301, inlinedAt: !2379)
!2395 = !{!2396}
!2396 = distinct !{!2396, !2397, !"quoting_options_from_style: argument 0"}
!2397 = distinct !{!2397, !"quoting_options_from_style"}
!2398 = !DILocation(line: 191, column: 10, scope: !2284, inlinedAt: !2379)
!2399 = !DILocation(line: 192, column: 1, scope: !2284, inlinedAt: !2379)
!2400 = !DILocation(line: 957, column: 10, scope: !2312, inlinedAt: !2380)
!2401 = !DILocation(line: 958, column: 1, scope: !2312, inlinedAt: !2380)
!2402 = !DILocation(line: 969, column: 3, scope: !2371)
!2403 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !142, file: !142, line: 973, type: !2404, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!6, !17, !137, !7}
!2406 = !{!2407, !2408, !2409, !2410}
!2407 = !DILocalVariable(name: "arg", arg: 1, scope: !2403, file: !142, line: 973, type: !17)
!2408 = !DILocalVariable(name: "argsize", arg: 2, scope: !2403, file: !142, line: 973, type: !137)
!2409 = !DILocalVariable(name: "ch", arg: 3, scope: !2403, file: !142, line: 973, type: !7)
!2410 = !DILocalVariable(name: "options", scope: !2403, file: !142, line: 975, type: !149)
!2411 = !DILocation(line: 973, column: 32, scope: !2403)
!2412 = !DILocation(line: 973, column: 44, scope: !2403)
!2413 = !DILocation(line: 973, column: 58, scope: !2403)
!2414 = !DILocation(line: 975, column: 3, scope: !2403)
!2415 = !DILocation(line: 976, column: 13, scope: !2403)
!2416 = !{i64 0, i64 4, !769, i64 4, i64 4, !717, i64 8, i64 32, !769, i64 40, i64 8, !642, i64 48, i64 8, !642}
!2417 = !DILocation(line: 975, column: 26, scope: !2403)
!2418 = !DILocation(line: 144, column: 43, scope: !1154, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 977, column: 3, scope: !2403)
!2420 = !DILocation(line: 144, column: 51, scope: !1154, inlinedAt: !2419)
!2421 = !DILocation(line: 144, column: 58, scope: !1154, inlinedAt: !2419)
!2422 = !DILocation(line: 146, column: 17, scope: !1154, inlinedAt: !2419)
!2423 = !DILocation(line: 148, column: 62, scope: !1154, inlinedAt: !2419)
!2424 = !DILocation(line: 148, column: 57, scope: !1154, inlinedAt: !2419)
!2425 = !DILocation(line: 147, column: 17, scope: !1154, inlinedAt: !2419)
!2426 = !DILocation(line: 149, column: 18, scope: !1154, inlinedAt: !2419)
!2427 = !DILocation(line: 149, column: 15, scope: !1154, inlinedAt: !2419)
!2428 = !DILocation(line: 149, column: 7, scope: !1154, inlinedAt: !2419)
!2429 = !DILocation(line: 150, column: 12, scope: !1154, inlinedAt: !2419)
!2430 = !DILocation(line: 150, column: 15, scope: !1154, inlinedAt: !2419)
!2431 = !DILocation(line: 150, column: 25, scope: !1154, inlinedAt: !2419)
!2432 = !DILocation(line: 150, column: 7, scope: !1154, inlinedAt: !2419)
!2433 = !DILocation(line: 151, column: 18, scope: !1154, inlinedAt: !2419)
!2434 = !DILocation(line: 151, column: 23, scope: !1154, inlinedAt: !2419)
!2435 = !DILocation(line: 151, column: 6, scope: !1154, inlinedAt: !2419)
!2436 = !DILocation(line: 978, column: 10, scope: !2403)
!2437 = !DILocation(line: 979, column: 1, scope: !2403)
!2438 = !DILocation(line: 978, column: 3, scope: !2403)
!2439 = distinct !DISubprogram(name: "quotearg_char", scope: !142, file: !142, line: 982, type: !2440, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!6, !17, !7}
!2442 = !{!2443, !2444}
!2443 = !DILocalVariable(name: "arg", arg: 1, scope: !2439, file: !142, line: 982, type: !17)
!2444 = !DILocalVariable(name: "ch", arg: 2, scope: !2439, file: !142, line: 982, type: !7)
!2445 = !DILocation(line: 982, column: 28, scope: !2439)
!2446 = !DILocation(line: 982, column: 38, scope: !2439)
!2447 = !DILocation(line: 973, column: 32, scope: !2403, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 984, column: 10, scope: !2439)
!2449 = !DILocation(line: 973, column: 44, scope: !2403, inlinedAt: !2448)
!2450 = !DILocation(line: 973, column: 58, scope: !2403, inlinedAt: !2448)
!2451 = !DILocation(line: 975, column: 3, scope: !2403, inlinedAt: !2448)
!2452 = !DILocation(line: 976, column: 13, scope: !2403, inlinedAt: !2448)
!2453 = !DILocation(line: 975, column: 26, scope: !2403, inlinedAt: !2448)
!2454 = !DILocation(line: 144, column: 43, scope: !1154, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 977, column: 3, scope: !2403, inlinedAt: !2448)
!2456 = !DILocation(line: 144, column: 51, scope: !1154, inlinedAt: !2455)
!2457 = !DILocation(line: 144, column: 58, scope: !1154, inlinedAt: !2455)
!2458 = !DILocation(line: 146, column: 17, scope: !1154, inlinedAt: !2455)
!2459 = !DILocation(line: 148, column: 62, scope: !1154, inlinedAt: !2455)
!2460 = !DILocation(line: 148, column: 57, scope: !1154, inlinedAt: !2455)
!2461 = !DILocation(line: 147, column: 17, scope: !1154, inlinedAt: !2455)
!2462 = !DILocation(line: 149, column: 18, scope: !1154, inlinedAt: !2455)
!2463 = !DILocation(line: 149, column: 15, scope: !1154, inlinedAt: !2455)
!2464 = !DILocation(line: 149, column: 7, scope: !1154, inlinedAt: !2455)
!2465 = !DILocation(line: 150, column: 12, scope: !1154, inlinedAt: !2455)
!2466 = !DILocation(line: 150, column: 15, scope: !1154, inlinedAt: !2455)
!2467 = !DILocation(line: 150, column: 25, scope: !1154, inlinedAt: !2455)
!2468 = !DILocation(line: 150, column: 7, scope: !1154, inlinedAt: !2455)
!2469 = !DILocation(line: 151, column: 18, scope: !1154, inlinedAt: !2455)
!2470 = !DILocation(line: 151, column: 23, scope: !1154, inlinedAt: !2455)
!2471 = !DILocation(line: 151, column: 6, scope: !1154, inlinedAt: !2455)
!2472 = !DILocation(line: 978, column: 10, scope: !2403, inlinedAt: !2448)
!2473 = !DILocation(line: 979, column: 1, scope: !2403, inlinedAt: !2448)
!2474 = !DILocation(line: 984, column: 3, scope: !2439)
!2475 = distinct !DISubprogram(name: "quotearg_colon", scope: !142, file: !142, line: 988, type: !2251, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2476)
!2476 = !{!2477}
!2477 = !DILocalVariable(name: "arg", arg: 1, scope: !2475, file: !142, line: 988, type: !17)
!2478 = !DILocation(line: 988, column: 29, scope: !2475)
!2479 = !DILocation(line: 982, column: 28, scope: !2439, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 990, column: 10, scope: !2475)
!2481 = !DILocation(line: 982, column: 38, scope: !2439, inlinedAt: !2480)
!2482 = !DILocation(line: 973, column: 32, scope: !2403, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 984, column: 10, scope: !2439, inlinedAt: !2480)
!2484 = !DILocation(line: 973, column: 44, scope: !2403, inlinedAt: !2483)
!2485 = !DILocation(line: 973, column: 58, scope: !2403, inlinedAt: !2483)
!2486 = !DILocation(line: 975, column: 3, scope: !2403, inlinedAt: !2483)
!2487 = !DILocation(line: 976, column: 13, scope: !2403, inlinedAt: !2483)
!2488 = !DILocation(line: 975, column: 26, scope: !2403, inlinedAt: !2483)
!2489 = !DILocation(line: 144, column: 43, scope: !1154, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 977, column: 3, scope: !2403, inlinedAt: !2483)
!2491 = !DILocation(line: 144, column: 51, scope: !1154, inlinedAt: !2490)
!2492 = !DILocation(line: 144, column: 58, scope: !1154, inlinedAt: !2490)
!2493 = !DILocation(line: 146, column: 17, scope: !1154, inlinedAt: !2490)
!2494 = !DILocation(line: 148, column: 57, scope: !1154, inlinedAt: !2490)
!2495 = !DILocation(line: 147, column: 17, scope: !1154, inlinedAt: !2490)
!2496 = !DILocation(line: 149, column: 7, scope: !1154, inlinedAt: !2490)
!2497 = !DILocation(line: 150, column: 12, scope: !1154, inlinedAt: !2490)
!2498 = !DILocation(line: 151, column: 6, scope: !1154, inlinedAt: !2490)
!2499 = !DILocation(line: 978, column: 10, scope: !2403, inlinedAt: !2483)
!2500 = !DILocation(line: 979, column: 1, scope: !2403, inlinedAt: !2483)
!2501 = !DILocation(line: 990, column: 3, scope: !2475)
!2502 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !142, file: !142, line: 994, type: !2262, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2503)
!2503 = !{!2504, !2505}
!2504 = !DILocalVariable(name: "arg", arg: 1, scope: !2502, file: !142, line: 994, type: !17)
!2505 = !DILocalVariable(name: "argsize", arg: 2, scope: !2502, file: !142, line: 994, type: !137)
!2506 = !DILocation(line: 994, column: 33, scope: !2502)
!2507 = !DILocation(line: 994, column: 45, scope: !2502)
!2508 = !DILocation(line: 973, column: 32, scope: !2403, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 996, column: 10, scope: !2502)
!2510 = !DILocation(line: 973, column: 44, scope: !2403, inlinedAt: !2509)
!2511 = !DILocation(line: 973, column: 58, scope: !2403, inlinedAt: !2509)
!2512 = !DILocation(line: 975, column: 3, scope: !2403, inlinedAt: !2509)
!2513 = !DILocation(line: 976, column: 13, scope: !2403, inlinedAt: !2509)
!2514 = !DILocation(line: 975, column: 26, scope: !2403, inlinedAt: !2509)
!2515 = !DILocation(line: 144, column: 43, scope: !1154, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 977, column: 3, scope: !2403, inlinedAt: !2509)
!2517 = !DILocation(line: 144, column: 51, scope: !1154, inlinedAt: !2516)
!2518 = !DILocation(line: 144, column: 58, scope: !1154, inlinedAt: !2516)
!2519 = !DILocation(line: 146, column: 17, scope: !1154, inlinedAt: !2516)
!2520 = !DILocation(line: 148, column: 57, scope: !1154, inlinedAt: !2516)
!2521 = !DILocation(line: 147, column: 17, scope: !1154, inlinedAt: !2516)
!2522 = !DILocation(line: 149, column: 7, scope: !1154, inlinedAt: !2516)
!2523 = !DILocation(line: 150, column: 12, scope: !1154, inlinedAt: !2516)
!2524 = !DILocation(line: 151, column: 6, scope: !1154, inlinedAt: !2516)
!2525 = !DILocation(line: 978, column: 10, scope: !2403, inlinedAt: !2509)
!2526 = !DILocation(line: 979, column: 1, scope: !2403, inlinedAt: !2509)
!2527 = !DILocation(line: 996, column: 3, scope: !2502)
!2528 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !142, file: !142, line: 1000, type: !2276, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2529)
!2529 = !{!2530, !2531, !2532, !2533}
!2530 = !DILocalVariable(name: "n", arg: 1, scope: !2528, file: !142, line: 1000, type: !40)
!2531 = !DILocalVariable(name: "s", arg: 2, scope: !2528, file: !142, line: 1000, type: !101)
!2532 = !DILocalVariable(name: "arg", arg: 3, scope: !2528, file: !142, line: 1000, type: !17)
!2533 = !DILocalVariable(name: "options", scope: !2528, file: !142, line: 1002, type: !149)
!2534 = !DILocation(line: 187, column: 26, scope: !2284, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 1003, column: 13, scope: !2528)
!2536 = !DILocation(line: 1000, column: 29, scope: !2528)
!2537 = !DILocation(line: 1000, column: 51, scope: !2528)
!2538 = !DILocation(line: 1000, column: 66, scope: !2528)
!2539 = !DILocation(line: 1002, column: 3, scope: !2528)
!2540 = !DILocation(line: 185, column: 48, scope: !2284, inlinedAt: !2535)
!2541 = !DILocation(line: 187, column: 3, scope: !2284, inlinedAt: !2535)
!2542 = !DILocation(line: 188, column: 13, scope: !2301, inlinedAt: !2535)
!2543 = !DILocation(line: 188, column: 7, scope: !2284, inlinedAt: !2535)
!2544 = !DILocation(line: 189, column: 5, scope: !2301, inlinedAt: !2535)
!2545 = !{!2546}
!2546 = distinct !{!2546, !2547, !"quoting_options_from_style: argument 0"}
!2547 = distinct !{!2547, !"quoting_options_from_style"}
!2548 = !DILocation(line: 191, column: 10, scope: !2284, inlinedAt: !2535)
!2549 = !DILocation(line: 192, column: 1, scope: !2284, inlinedAt: !2535)
!2550 = !DILocation(line: 1003, column: 13, scope: !2528)
!2551 = !DILocation(line: 1002, column: 26, scope: !2528)
!2552 = !DILocation(line: 144, column: 43, scope: !1154, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 1004, column: 3, scope: !2528)
!2554 = !DILocation(line: 144, column: 51, scope: !1154, inlinedAt: !2553)
!2555 = !DILocation(line: 144, column: 58, scope: !1154, inlinedAt: !2553)
!2556 = !DILocation(line: 146, column: 17, scope: !1154, inlinedAt: !2553)
!2557 = !DILocation(line: 148, column: 57, scope: !1154, inlinedAt: !2553)
!2558 = !DILocation(line: 147, column: 17, scope: !1154, inlinedAt: !2553)
!2559 = !DILocation(line: 149, column: 7, scope: !1154, inlinedAt: !2553)
!2560 = !DILocation(line: 150, column: 12, scope: !1154, inlinedAt: !2553)
!2561 = !DILocation(line: 151, column: 6, scope: !1154, inlinedAt: !2553)
!2562 = !DILocation(line: 1005, column: 10, scope: !2528)
!2563 = !DILocation(line: 1006, column: 1, scope: !2528)
!2564 = !DILocation(line: 1005, column: 3, scope: !2528)
!2565 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !142, file: !142, line: 1009, type: !2566, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!6, !40, !17, !17, !17}
!2568 = !{!2569, !2570, !2571, !2572}
!2569 = !DILocalVariable(name: "n", arg: 1, scope: !2565, file: !142, line: 1009, type: !40)
!2570 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2565, file: !142, line: 1009, type: !17)
!2571 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2565, file: !142, line: 1010, type: !17)
!2572 = !DILocalVariable(name: "arg", arg: 4, scope: !2565, file: !142, line: 1010, type: !17)
!2573 = !DILocation(line: 1009, column: 24, scope: !2565)
!2574 = !DILocation(line: 1009, column: 39, scope: !2565)
!2575 = !DILocation(line: 1010, column: 32, scope: !2565)
!2576 = !DILocation(line: 1010, column: 57, scope: !2565)
!2577 = !DILocalVariable(name: "n", arg: 1, scope: !2578, file: !142, line: 1017, type: !40)
!2578 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !142, file: !142, line: 1017, type: !2579, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!6, !40, !17, !17, !17, !137}
!2581 = !{!2577, !2582, !2583, !2584, !2585, !2586}
!2582 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2578, file: !142, line: 1017, type: !17)
!2583 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2578, file: !142, line: 1018, type: !17)
!2584 = !DILocalVariable(name: "arg", arg: 4, scope: !2578, file: !142, line: 1019, type: !17)
!2585 = !DILocalVariable(name: "argsize", arg: 5, scope: !2578, file: !142, line: 1019, type: !137)
!2586 = !DILocalVariable(name: "o", scope: !2578, file: !142, line: 1021, type: !149)
!2587 = !DILocation(line: 1017, column: 28, scope: !2578, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 1012, column: 10, scope: !2565)
!2589 = !DILocation(line: 1017, column: 43, scope: !2578, inlinedAt: !2588)
!2590 = !DILocation(line: 1018, column: 36, scope: !2578, inlinedAt: !2588)
!2591 = !DILocation(line: 1019, column: 36, scope: !2578, inlinedAt: !2588)
!2592 = !DILocation(line: 1019, column: 48, scope: !2578, inlinedAt: !2588)
!2593 = !DILocation(line: 1021, column: 3, scope: !2578, inlinedAt: !2588)
!2594 = !DILocation(line: 1021, column: 30, scope: !2578, inlinedAt: !2588)
!2595 = !DILocation(line: 1021, column: 26, scope: !2578, inlinedAt: !2588)
!2596 = !DILocation(line: 171, column: 45, scope: !1203, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 1022, column: 3, scope: !2578, inlinedAt: !2588)
!2598 = !DILocation(line: 172, column: 33, scope: !1203, inlinedAt: !2597)
!2599 = !DILocation(line: 172, column: 57, scope: !1203, inlinedAt: !2597)
!2600 = !DILocation(line: 176, column: 6, scope: !1203, inlinedAt: !2597)
!2601 = !DILocation(line: 176, column: 12, scope: !1203, inlinedAt: !2597)
!2602 = !DILocation(line: 177, column: 8, scope: !1219, inlinedAt: !2597)
!2603 = !DILocation(line: 177, column: 23, scope: !1219, inlinedAt: !2597)
!2604 = !DILocation(line: 177, column: 19, scope: !1219, inlinedAt: !2597)
!2605 = !DILocation(line: 178, column: 5, scope: !1219, inlinedAt: !2597)
!2606 = !DILocation(line: 179, column: 6, scope: !1203, inlinedAt: !2597)
!2607 = !DILocation(line: 179, column: 17, scope: !1203, inlinedAt: !2597)
!2608 = !DILocation(line: 180, column: 6, scope: !1203, inlinedAt: !2597)
!2609 = !DILocation(line: 180, column: 18, scope: !1203, inlinedAt: !2597)
!2610 = !DILocation(line: 1023, column: 10, scope: !2578, inlinedAt: !2588)
!2611 = !DILocation(line: 1024, column: 1, scope: !2578, inlinedAt: !2588)
!2612 = !DILocation(line: 1012, column: 3, scope: !2565)
!2613 = !DILocation(line: 1017, column: 28, scope: !2578)
!2614 = !DILocation(line: 1017, column: 43, scope: !2578)
!2615 = !DILocation(line: 1018, column: 36, scope: !2578)
!2616 = !DILocation(line: 1019, column: 36, scope: !2578)
!2617 = !DILocation(line: 1019, column: 48, scope: !2578)
!2618 = !DILocation(line: 1021, column: 3, scope: !2578)
!2619 = !DILocation(line: 1021, column: 30, scope: !2578)
!2620 = !DILocation(line: 1021, column: 26, scope: !2578)
!2621 = !DILocation(line: 171, column: 45, scope: !1203, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 1022, column: 3, scope: !2578)
!2623 = !DILocation(line: 172, column: 33, scope: !1203, inlinedAt: !2622)
!2624 = !DILocation(line: 172, column: 57, scope: !1203, inlinedAt: !2622)
!2625 = !DILocation(line: 176, column: 6, scope: !1203, inlinedAt: !2622)
!2626 = !DILocation(line: 176, column: 12, scope: !1203, inlinedAt: !2622)
!2627 = !DILocation(line: 177, column: 8, scope: !1219, inlinedAt: !2622)
!2628 = !DILocation(line: 177, column: 23, scope: !1219, inlinedAt: !2622)
!2629 = !DILocation(line: 177, column: 19, scope: !1219, inlinedAt: !2622)
!2630 = !DILocation(line: 178, column: 5, scope: !1219, inlinedAt: !2622)
!2631 = !DILocation(line: 179, column: 6, scope: !1203, inlinedAt: !2622)
!2632 = !DILocation(line: 179, column: 17, scope: !1203, inlinedAt: !2622)
!2633 = !DILocation(line: 180, column: 6, scope: !1203, inlinedAt: !2622)
!2634 = !DILocation(line: 180, column: 18, scope: !1203, inlinedAt: !2622)
!2635 = !DILocation(line: 1023, column: 10, scope: !2578)
!2636 = !DILocation(line: 1024, column: 1, scope: !2578)
!2637 = !DILocation(line: 1023, column: 3, scope: !2578)
!2638 = distinct !DISubprogram(name: "quotearg_custom", scope: !142, file: !142, line: 1027, type: !2639, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!6, !17, !17, !17}
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2638, file: !142, line: 1027, type: !17)
!2643 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2638, file: !142, line: 1027, type: !17)
!2644 = !DILocalVariable(name: "arg", arg: 3, scope: !2638, file: !142, line: 1028, type: !17)
!2645 = !DILocation(line: 1027, column: 30, scope: !2638)
!2646 = !DILocation(line: 1027, column: 54, scope: !2638)
!2647 = !DILocation(line: 1028, column: 30, scope: !2638)
!2648 = !DILocation(line: 1009, column: 24, scope: !2565, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 1030, column: 10, scope: !2638)
!2650 = !DILocation(line: 1009, column: 39, scope: !2565, inlinedAt: !2649)
!2651 = !DILocation(line: 1010, column: 32, scope: !2565, inlinedAt: !2649)
!2652 = !DILocation(line: 1010, column: 57, scope: !2565, inlinedAt: !2649)
!2653 = !DILocation(line: 1017, column: 28, scope: !2578, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 1012, column: 10, scope: !2565, inlinedAt: !2649)
!2655 = !DILocation(line: 1017, column: 43, scope: !2578, inlinedAt: !2654)
!2656 = !DILocation(line: 1018, column: 36, scope: !2578, inlinedAt: !2654)
!2657 = !DILocation(line: 1019, column: 36, scope: !2578, inlinedAt: !2654)
!2658 = !DILocation(line: 1019, column: 48, scope: !2578, inlinedAt: !2654)
!2659 = !DILocation(line: 1021, column: 3, scope: !2578, inlinedAt: !2654)
!2660 = !DILocation(line: 1021, column: 30, scope: !2578, inlinedAt: !2654)
!2661 = !DILocation(line: 1021, column: 26, scope: !2578, inlinedAt: !2654)
!2662 = !DILocation(line: 171, column: 45, scope: !1203, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 1022, column: 3, scope: !2578, inlinedAt: !2654)
!2664 = !DILocation(line: 172, column: 33, scope: !1203, inlinedAt: !2663)
!2665 = !DILocation(line: 172, column: 57, scope: !1203, inlinedAt: !2663)
!2666 = !DILocation(line: 176, column: 6, scope: !1203, inlinedAt: !2663)
!2667 = !DILocation(line: 176, column: 12, scope: !1203, inlinedAt: !2663)
!2668 = !DILocation(line: 177, column: 8, scope: !1219, inlinedAt: !2663)
!2669 = !DILocation(line: 177, column: 23, scope: !1219, inlinedAt: !2663)
!2670 = !DILocation(line: 177, column: 19, scope: !1219, inlinedAt: !2663)
!2671 = !DILocation(line: 178, column: 5, scope: !1219, inlinedAt: !2663)
!2672 = !DILocation(line: 179, column: 6, scope: !1203, inlinedAt: !2663)
!2673 = !DILocation(line: 179, column: 17, scope: !1203, inlinedAt: !2663)
!2674 = !DILocation(line: 180, column: 6, scope: !1203, inlinedAt: !2663)
!2675 = !DILocation(line: 180, column: 18, scope: !1203, inlinedAt: !2663)
!2676 = !DILocation(line: 1023, column: 10, scope: !2578, inlinedAt: !2654)
!2677 = !DILocation(line: 1024, column: 1, scope: !2578, inlinedAt: !2654)
!2678 = !DILocation(line: 1030, column: 3, scope: !2638)
!2679 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !142, file: !142, line: 1034, type: !2680, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!6, !17, !17, !17, !137}
!2682 = !{!2683, !2684, !2685, !2686}
!2683 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2679, file: !142, line: 1034, type: !17)
!2684 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2679, file: !142, line: 1034, type: !17)
!2685 = !DILocalVariable(name: "arg", arg: 3, scope: !2679, file: !142, line: 1035, type: !17)
!2686 = !DILocalVariable(name: "argsize", arg: 4, scope: !2679, file: !142, line: 1035, type: !137)
!2687 = !DILocation(line: 1034, column: 34, scope: !2679)
!2688 = !DILocation(line: 1034, column: 58, scope: !2679)
!2689 = !DILocation(line: 1035, column: 34, scope: !2679)
!2690 = !DILocation(line: 1035, column: 46, scope: !2679)
!2691 = !DILocation(line: 1017, column: 28, scope: !2578, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1037, column: 10, scope: !2679)
!2693 = !DILocation(line: 1017, column: 43, scope: !2578, inlinedAt: !2692)
!2694 = !DILocation(line: 1018, column: 36, scope: !2578, inlinedAt: !2692)
!2695 = !DILocation(line: 1019, column: 36, scope: !2578, inlinedAt: !2692)
!2696 = !DILocation(line: 1019, column: 48, scope: !2578, inlinedAt: !2692)
!2697 = !DILocation(line: 1021, column: 3, scope: !2578, inlinedAt: !2692)
!2698 = !DILocation(line: 1021, column: 30, scope: !2578, inlinedAt: !2692)
!2699 = !DILocation(line: 1021, column: 26, scope: !2578, inlinedAt: !2692)
!2700 = !DILocation(line: 171, column: 45, scope: !1203, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 1022, column: 3, scope: !2578, inlinedAt: !2692)
!2702 = !DILocation(line: 172, column: 33, scope: !1203, inlinedAt: !2701)
!2703 = !DILocation(line: 172, column: 57, scope: !1203, inlinedAt: !2701)
!2704 = !DILocation(line: 176, column: 6, scope: !1203, inlinedAt: !2701)
!2705 = !DILocation(line: 176, column: 12, scope: !1203, inlinedAt: !2701)
!2706 = !DILocation(line: 177, column: 8, scope: !1219, inlinedAt: !2701)
!2707 = !DILocation(line: 177, column: 23, scope: !1219, inlinedAt: !2701)
!2708 = !DILocation(line: 177, column: 19, scope: !1219, inlinedAt: !2701)
!2709 = !DILocation(line: 178, column: 5, scope: !1219, inlinedAt: !2701)
!2710 = !DILocation(line: 179, column: 6, scope: !1203, inlinedAt: !2701)
!2711 = !DILocation(line: 179, column: 17, scope: !1203, inlinedAt: !2701)
!2712 = !DILocation(line: 180, column: 6, scope: !1203, inlinedAt: !2701)
!2713 = !DILocation(line: 180, column: 18, scope: !1203, inlinedAt: !2701)
!2714 = !DILocation(line: 1023, column: 10, scope: !2578, inlinedAt: !2692)
!2715 = !DILocation(line: 1024, column: 1, scope: !2578, inlinedAt: !2692)
!2716 = !DILocation(line: 1037, column: 3, scope: !2679)
!2717 = distinct !DISubprogram(name: "quote_n_mem", scope: !142, file: !142, line: 1052, type: !2718, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!17, !40, !17, !137}
!2720 = !{!2721, !2722, !2723}
!2721 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !142, line: 1052, type: !40)
!2722 = !DILocalVariable(name: "arg", arg: 2, scope: !2717, file: !142, line: 1052, type: !17)
!2723 = !DILocalVariable(name: "argsize", arg: 3, scope: !2717, file: !142, line: 1052, type: !137)
!2724 = !DILocation(line: 1052, column: 18, scope: !2717)
!2725 = !DILocation(line: 1052, column: 33, scope: !2717)
!2726 = !DILocation(line: 1052, column: 45, scope: !2717)
!2727 = !DILocation(line: 1054, column: 10, scope: !2717)
!2728 = !DILocation(line: 1054, column: 3, scope: !2717)
!2729 = distinct !DISubprogram(name: "quote_mem", scope: !142, file: !142, line: 1058, type: !2730, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!17, !17, !137}
!2732 = !{!2733, !2734}
!2733 = !DILocalVariable(name: "arg", arg: 1, scope: !2729, file: !142, line: 1058, type: !17)
!2734 = !DILocalVariable(name: "argsize", arg: 2, scope: !2729, file: !142, line: 1058, type: !137)
!2735 = !DILocation(line: 1058, column: 24, scope: !2729)
!2736 = !DILocation(line: 1058, column: 36, scope: !2729)
!2737 = !DILocation(line: 1052, column: 18, scope: !2717, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1060, column: 10, scope: !2729)
!2739 = !DILocation(line: 1052, column: 33, scope: !2717, inlinedAt: !2738)
!2740 = !DILocation(line: 1052, column: 45, scope: !2717, inlinedAt: !2738)
!2741 = !DILocation(line: 1054, column: 10, scope: !2717, inlinedAt: !2738)
!2742 = !DILocation(line: 1060, column: 3, scope: !2729)
!2743 = distinct !DISubprogram(name: "quote_n", scope: !142, file: !142, line: 1064, type: !2744, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!17, !40, !17}
!2746 = !{!2747, !2748}
!2747 = !DILocalVariable(name: "n", arg: 1, scope: !2743, file: !142, line: 1064, type: !40)
!2748 = !DILocalVariable(name: "arg", arg: 2, scope: !2743, file: !142, line: 1064, type: !17)
!2749 = !DILocation(line: 1064, column: 14, scope: !2743)
!2750 = !DILocation(line: 1064, column: 29, scope: !2743)
!2751 = !DILocation(line: 1052, column: 18, scope: !2717, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 1066, column: 10, scope: !2743)
!2753 = !DILocation(line: 1052, column: 33, scope: !2717, inlinedAt: !2752)
!2754 = !DILocation(line: 1052, column: 45, scope: !2717, inlinedAt: !2752)
!2755 = !DILocation(line: 1054, column: 10, scope: !2717, inlinedAt: !2752)
!2756 = !DILocation(line: 1066, column: 3, scope: !2743)
!2757 = distinct !DISubprogram(name: "quote", scope: !142, file: !142, line: 1070, type: !2758, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !98, variables: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!17, !17}
!2760 = !{!2761}
!2761 = !DILocalVariable(name: "arg", arg: 1, scope: !2757, file: !142, line: 1070, type: !17)
!2762 = !DILocation(line: 1070, column: 20, scope: !2757)
!2763 = !DILocation(line: 1064, column: 14, scope: !2743, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 1072, column: 10, scope: !2757)
!2765 = !DILocation(line: 1064, column: 29, scope: !2743, inlinedAt: !2764)
!2766 = !DILocation(line: 1052, column: 18, scope: !2717, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 1066, column: 10, scope: !2743, inlinedAt: !2764)
!2768 = !DILocation(line: 1052, column: 33, scope: !2717, inlinedAt: !2767)
!2769 = !DILocation(line: 1052, column: 45, scope: !2717, inlinedAt: !2767)
!2770 = !DILocation(line: 1054, column: 10, scope: !2717, inlinedAt: !2767)
!2771 = !DILocation(line: 1072, column: 3, scope: !2757)
!2772 = distinct !DISubprogram(name: "version_etc_arn", scope: !548, file: !548, line: 62, type: !2773, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !2830)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !2775, !17, !17, !17, !2829, !137}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2777, line: 7, baseType: !2778)
!2777 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2779, line: 241, size: 1728, elements: !2780)
!2779 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2780 = !{!2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2801, !2802, !2803, !2804, !2807, !2808, !2810, !2814, !2817, !2819, !2820, !2821, !2822, !2823, !2824, !2825}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2778, file: !2779, line: 242, baseType: !40, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2778, file: !2779, line: 247, baseType: !6, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2778, file: !2779, line: 248, baseType: !6, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2778, file: !2779, line: 249, baseType: !6, size: 64, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2778, file: !2779, line: 250, baseType: !6, size: 64, offset: 256)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2778, file: !2779, line: 251, baseType: !6, size: 64, offset: 320)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2778, file: !2779, line: 252, baseType: !6, size: 64, offset: 384)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2778, file: !2779, line: 253, baseType: !6, size: 64, offset: 448)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2778, file: !2779, line: 254, baseType: !6, size: 64, offset: 512)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2778, file: !2779, line: 256, baseType: !6, size: 64, offset: 576)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2778, file: !2779, line: 257, baseType: !6, size: 64, offset: 640)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2778, file: !2779, line: 258, baseType: !6, size: 64, offset: 704)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2778, file: !2779, line: 260, baseType: !2794, size: 64, offset: 768)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2779, line: 156, size: 192, elements: !2796)
!2796 = !{!2797, !2798, !2800}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2795, file: !2779, line: 157, baseType: !2794, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2795, file: !2779, line: 158, baseType: !2799, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2795, file: !2779, line: 162, baseType: !40, size: 32, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2778, file: !2779, line: 262, baseType: !2799, size: 64, offset: 832)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2778, file: !2779, line: 264, baseType: !40, size: 32, offset: 896)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2778, file: !2779, line: 268, baseType: !40, size: 32, offset: 928)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2778, file: !2779, line: 270, baseType: !2805, size: 64, offset: 960)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !57, line: 140, baseType: !2806)
!2806 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2778, file: !2779, line: 274, baseType: !136, size: 16, offset: 1024)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2778, file: !2779, line: 275, baseType: !2809, size: 8, offset: 1040)
!2809 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2778, file: !2779, line: 276, baseType: !2811, size: 8, offset: 1048)
!2811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2812)
!2812 = !{!2813}
!2813 = !DISubrange(count: 1)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2778, file: !2779, line: 280, baseType: !2815, size: 64, offset: 1088)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2779, line: 150, baseType: null)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2778, file: !2779, line: 289, baseType: !2818, size: 64, offset: 1152)
!2818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !57, line: 141, baseType: !2806)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2778, file: !2779, line: 297, baseType: !8, size: 64, offset: 1216)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2778, file: !2779, line: 298, baseType: !8, size: 64, offset: 1280)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2778, file: !2779, line: 299, baseType: !8, size: 64, offset: 1344)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2778, file: !2779, line: 300, baseType: !8, size: 64, offset: 1408)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2778, file: !2779, line: 302, baseType: !137, size: 64, offset: 1472)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2778, file: !2779, line: 303, baseType: !40, size: 32, offset: 1536)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2778, file: !2779, line: 305, baseType: !2826, size: 160, offset: 1568)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2827)
!2827 = !{!2828}
!2828 = !DISubrange(count: 20)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!2830 = !{!2831, !2832, !2833, !2834, !2835, !2836}
!2831 = !DILocalVariable(name: "stream", arg: 1, scope: !2772, file: !548, line: 62, type: !2775)
!2832 = !DILocalVariable(name: "command_name", arg: 2, scope: !2772, file: !548, line: 63, type: !17)
!2833 = !DILocalVariable(name: "package", arg: 3, scope: !2772, file: !548, line: 63, type: !17)
!2834 = !DILocalVariable(name: "version", arg: 4, scope: !2772, file: !548, line: 64, type: !17)
!2835 = !DILocalVariable(name: "authors", arg: 5, scope: !2772, file: !548, line: 65, type: !2829)
!2836 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2772, file: !548, line: 65, type: !137)
!2837 = !DILocation(line: 62, column: 24, scope: !2772)
!2838 = !DILocation(line: 63, column: 30, scope: !2772)
!2839 = !DILocation(line: 63, column: 56, scope: !2772)
!2840 = !DILocation(line: 64, column: 30, scope: !2772)
!2841 = !DILocation(line: 65, column: 39, scope: !2772)
!2842 = !DILocation(line: 65, column: 55, scope: !2772)
!2843 = !DILocation(line: 67, column: 7, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2772, file: !548, line: 67, column: 7)
!2845 = !DILocation(line: 67, column: 7, scope: !2772)
!2846 = !DILocation(line: 68, column: 5, scope: !2844)
!2847 = !DILocation(line: 70, column: 5, scope: !2844)
!2848 = !DILocation(line: 84, column: 3, scope: !2772)
!2849 = !DILocation(line: 86, column: 3, scope: !2772)
!2850 = !DILocation(line: 95, column: 3, scope: !2772)
!2851 = !DILocation(line: 99, column: 7, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2772, file: !548, line: 96, column: 5)
!2853 = !DILocation(line: 102, column: 7, scope: !2852)
!2854 = !DILocation(line: 103, column: 7, scope: !2852)
!2855 = !DILocation(line: 106, column: 7, scope: !2852)
!2856 = !DILocation(line: 107, column: 7, scope: !2852)
!2857 = !DILocation(line: 110, column: 7, scope: !2852)
!2858 = !DILocation(line: 112, column: 7, scope: !2852)
!2859 = !DILocation(line: 117, column: 7, scope: !2852)
!2860 = !DILocation(line: 119, column: 7, scope: !2852)
!2861 = !DILocation(line: 124, column: 7, scope: !2852)
!2862 = !DILocation(line: 126, column: 7, scope: !2852)
!2863 = !DILocation(line: 131, column: 7, scope: !2852)
!2864 = !DILocation(line: 134, column: 7, scope: !2852)
!2865 = !DILocation(line: 139, column: 7, scope: !2852)
!2866 = !DILocation(line: 142, column: 7, scope: !2852)
!2867 = !DILocation(line: 147, column: 7, scope: !2852)
!2868 = !DILocation(line: 151, column: 7, scope: !2852)
!2869 = !DILocation(line: 156, column: 7, scope: !2852)
!2870 = !DILocation(line: 160, column: 7, scope: !2852)
!2871 = !DILocation(line: 167, column: 7, scope: !2852)
!2872 = !DILocation(line: 171, column: 7, scope: !2852)
!2873 = !DILocation(line: 173, column: 1, scope: !2772)
!2874 = distinct !DISubprogram(name: "version_etc_ar", scope: !548, file: !548, line: 180, type: !2875, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !2775, !17, !17, !17, !2829}
!2877 = !{!2878, !2879, !2880, !2881, !2882, !2883}
!2878 = !DILocalVariable(name: "stream", arg: 1, scope: !2874, file: !548, line: 180, type: !2775)
!2879 = !DILocalVariable(name: "command_name", arg: 2, scope: !2874, file: !548, line: 181, type: !17)
!2880 = !DILocalVariable(name: "package", arg: 3, scope: !2874, file: !548, line: 181, type: !17)
!2881 = !DILocalVariable(name: "version", arg: 4, scope: !2874, file: !548, line: 182, type: !17)
!2882 = !DILocalVariable(name: "authors", arg: 5, scope: !2874, file: !548, line: 182, type: !2829)
!2883 = !DILocalVariable(name: "n_authors", scope: !2874, file: !548, line: 184, type: !137)
!2884 = !DILocation(line: 180, column: 23, scope: !2874)
!2885 = !DILocation(line: 181, column: 29, scope: !2874)
!2886 = !DILocation(line: 181, column: 55, scope: !2874)
!2887 = !DILocation(line: 182, column: 29, scope: !2874)
!2888 = !DILocation(line: 182, column: 59, scope: !2874)
!2889 = !DILocation(line: 184, column: 10, scope: !2874)
!2890 = !DILocation(line: 186, column: 8, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2874, file: !548, line: 186, column: 3)
!2892 = !DILocation(line: 186, column: 23, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2891, file: !548, line: 186, column: 3)
!2894 = !DILocation(line: 186, column: 3, scope: !2891)
!2895 = !DILocation(line: 186, column: 52, scope: !2893)
!2896 = distinct !{!2896, !2894, !2897}
!2897 = !DILocation(line: 187, column: 5, scope: !2891)
!2898 = !DILocation(line: 188, column: 3, scope: !2874)
!2899 = !DILocation(line: 189, column: 1, scope: !2874)
!2900 = distinct !DISubprogram(name: "version_etc_va", scope: !548, file: !548, line: 196, type: !2901, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !2910)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{null, !2775, !17, !17, !17, !2903}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !545, line: 189, size: 192, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2904, file: !545, line: 189, baseType: !58, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2904, file: !545, line: 189, baseType: !58, size: 32, offset: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2904, file: !545, line: 189, baseType: !8, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2904, file: !545, line: 189, baseType: !8, size: 64, offset: 128)
!2910 = !{!2911, !2912, !2913, !2914, !2915, !2916, !2917}
!2911 = !DILocalVariable(name: "stream", arg: 1, scope: !2900, file: !548, line: 196, type: !2775)
!2912 = !DILocalVariable(name: "command_name", arg: 2, scope: !2900, file: !548, line: 197, type: !17)
!2913 = !DILocalVariable(name: "package", arg: 3, scope: !2900, file: !548, line: 197, type: !17)
!2914 = !DILocalVariable(name: "version", arg: 4, scope: !2900, file: !548, line: 198, type: !17)
!2915 = !DILocalVariable(name: "authors", arg: 5, scope: !2900, file: !548, line: 198, type: !2903)
!2916 = !DILocalVariable(name: "n_authors", scope: !2900, file: !548, line: 200, type: !137)
!2917 = !DILocalVariable(name: "authtab", scope: !2900, file: !548, line: 201, type: !2918)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !145)
!2919 = !DILocation(line: 196, column: 23, scope: !2900)
!2920 = !DILocation(line: 197, column: 29, scope: !2900)
!2921 = !DILocation(line: 197, column: 55, scope: !2900)
!2922 = !DILocation(line: 198, column: 29, scope: !2900)
!2923 = !DILocation(line: 198, column: 46, scope: !2900)
!2924 = !DILocation(line: 201, column: 3, scope: !2900)
!2925 = !DILocation(line: 201, column: 15, scope: !2900)
!2926 = !DILocation(line: 200, column: 10, scope: !2900)
!2927 = !DILocation(line: 205, column: 35, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !548, line: 203, column: 3)
!2929 = distinct !DILexicalBlock(scope: !2900, file: !548, line: 203, column: 3)
!2930 = !DILocation(line: 205, column: 14, scope: !2928)
!2931 = !DILocation(line: 205, column: 33, scope: !2928)
!2932 = !DILocation(line: 205, column: 67, scope: !2928)
!2933 = !DILocation(line: 203, column: 3, scope: !2929)
!2934 = !DILocation(line: 208, column: 3, scope: !2900)
!2935 = !DILocation(line: 210, column: 1, scope: !2900)
!2936 = distinct !DISubprogram(name: "version_etc", scope: !548, file: !548, line: 227, type: !2937, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !2775, !17, !17, !17, null}
!2939 = !{!2940, !2941, !2942, !2943, !2944}
!2940 = !DILocalVariable(name: "stream", arg: 1, scope: !2936, file: !548, line: 227, type: !2775)
!2941 = !DILocalVariable(name: "command_name", arg: 2, scope: !2936, file: !548, line: 228, type: !17)
!2942 = !DILocalVariable(name: "package", arg: 3, scope: !2936, file: !548, line: 228, type: !17)
!2943 = !DILocalVariable(name: "version", arg: 4, scope: !2936, file: !548, line: 229, type: !17)
!2944 = !DILocalVariable(name: "authors", scope: !2936, file: !548, line: 231, type: !2945)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2946, line: 46, baseType: !2947)
!2946 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2948, line: 48, baseType: !2949)
!2948 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !545, line: 231, baseType: !2950)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2904, size: 192, elements: !2812)
!2951 = !DILocation(line: 227, column: 20, scope: !2936)
!2952 = !DILocation(line: 228, column: 26, scope: !2936)
!2953 = !DILocation(line: 228, column: 52, scope: !2936)
!2954 = !DILocation(line: 229, column: 26, scope: !2936)
!2955 = !DILocation(line: 231, column: 3, scope: !2936)
!2956 = !DILocation(line: 231, column: 11, scope: !2936)
!2957 = !DILocation(line: 233, column: 3, scope: !2936)
!2958 = !DILocation(line: 234, column: 3, scope: !2936)
!2959 = !DILocation(line: 235, column: 3, scope: !2936)
!2960 = !DILocation(line: 236, column: 1, scope: !2936)
!2961 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !548, file: !548, line: 239, type: !1013, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !4)
!2962 = !DILocation(line: 245, column: 3, scope: !2961)
!2963 = !DILocation(line: 251, column: 3, scope: !2961)
!2964 = !DILocation(line: 256, column: 3, scope: !2961)
!2965 = !DILocation(line: 258, column: 1, scope: !2961)
!2966 = distinct !DISubprogram(name: "xnmalloc", scope: !556, file: !556, line: 105, type: !2967, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!8, !137, !137}
!2969 = !{!2970, !2971}
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2966, file: !556, line: 105, type: !137)
!2971 = !DILocalVariable(name: "s", arg: 2, scope: !2966, file: !556, line: 105, type: !137)
!2972 = !DILocation(line: 105, column: 18, scope: !2966)
!2973 = !DILocation(line: 105, column: 28, scope: !2966)
!2974 = !DILocation(line: 107, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2966, file: !556, line: 107, column: 7)
!2976 = !DILocation(line: 107, column: 7, scope: !2966)
!2977 = !DILocation(line: 108, column: 5, scope: !2975)
!2978 = !DILocation(line: 109, column: 21, scope: !2966)
!2979 = !DILocalVariable(name: "n", arg: 1, scope: !2980, file: !2981, line: 39, type: !137)
!2980 = distinct !DISubprogram(name: "xmalloc", scope: !2981, file: !2981, line: 39, type: !2982, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !2984)
!2981 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!8, !137}
!2984 = !{!2979, !2985}
!2985 = !DILocalVariable(name: "p", scope: !2980, file: !2981, line: 41, type: !8)
!2986 = !DILocation(line: 39, column: 17, scope: !2980, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 109, column: 10, scope: !2966)
!2988 = !DILocation(line: 41, column: 13, scope: !2980, inlinedAt: !2987)
!2989 = !DILocation(line: 41, column: 9, scope: !2980, inlinedAt: !2987)
!2990 = !DILocation(line: 42, column: 8, scope: !2991, inlinedAt: !2987)
!2991 = distinct !DILexicalBlock(scope: !2980, file: !2981, line: 42, column: 7)
!2992 = !DILocation(line: 42, column: 15, scope: !2991, inlinedAt: !2987)
!2993 = !DILocation(line: 42, column: 10, scope: !2991, inlinedAt: !2987)
!2994 = !DILocation(line: 43, column: 5, scope: !2991, inlinedAt: !2987)
!2995 = !DILocation(line: 109, column: 3, scope: !2966)
!2996 = !DILocation(line: 39, column: 17, scope: !2980)
!2997 = !DILocation(line: 41, column: 13, scope: !2980)
!2998 = !DILocation(line: 41, column: 9, scope: !2980)
!2999 = !DILocation(line: 42, column: 8, scope: !2991)
!3000 = !DILocation(line: 42, column: 15, scope: !2991)
!3001 = !DILocation(line: 42, column: 10, scope: !2991)
!3002 = !DILocation(line: 43, column: 5, scope: !2991)
!3003 = !DILocation(line: 44, column: 3, scope: !2980)
!3004 = distinct !DISubprogram(name: "xnrealloc", scope: !556, file: !556, line: 118, type: !3005, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!8, !8, !137, !137}
!3007 = !{!3008, !3009, !3010}
!3008 = !DILocalVariable(name: "p", arg: 1, scope: !3004, file: !556, line: 118, type: !8)
!3009 = !DILocalVariable(name: "n", arg: 2, scope: !3004, file: !556, line: 118, type: !137)
!3010 = !DILocalVariable(name: "s", arg: 3, scope: !3004, file: !556, line: 118, type: !137)
!3011 = !DILocation(line: 118, column: 18, scope: !3004)
!3012 = !DILocation(line: 118, column: 28, scope: !3004)
!3013 = !DILocation(line: 118, column: 38, scope: !3004)
!3014 = !DILocation(line: 120, column: 7, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3004, file: !556, line: 120, column: 7)
!3016 = !DILocation(line: 120, column: 7, scope: !3004)
!3017 = !DILocation(line: 121, column: 5, scope: !3015)
!3018 = !DILocation(line: 122, column: 25, scope: !3004)
!3019 = !DILocalVariable(name: "p", arg: 1, scope: !3020, file: !2981, line: 51, type: !8)
!3020 = distinct !DISubprogram(name: "xrealloc", scope: !2981, file: !2981, line: 51, type: !3021, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!8, !8, !137}
!3023 = !{!3019, !3024}
!3024 = !DILocalVariable(name: "n", arg: 2, scope: !3020, file: !2981, line: 51, type: !137)
!3025 = !DILocation(line: 51, column: 17, scope: !3020, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 122, column: 10, scope: !3004)
!3027 = !DILocation(line: 51, column: 27, scope: !3020, inlinedAt: !3026)
!3028 = !DILocation(line: 53, column: 8, scope: !3029, inlinedAt: !3026)
!3029 = distinct !DILexicalBlock(scope: !3020, file: !2981, line: 53, column: 7)
!3030 = !DILocation(line: 53, column: 13, scope: !3029, inlinedAt: !3026)
!3031 = !DILocation(line: 53, column: 10, scope: !3029, inlinedAt: !3026)
!3032 = !DILocation(line: 57, column: 7, scope: !3033, inlinedAt: !3026)
!3033 = distinct !DILexicalBlock(scope: !3029, file: !2981, line: 54, column: 5)
!3034 = !DILocation(line: 58, column: 7, scope: !3033, inlinedAt: !3026)
!3035 = !DILocation(line: 61, column: 7, scope: !3020, inlinedAt: !3026)
!3036 = !DILocation(line: 62, column: 8, scope: !3037, inlinedAt: !3026)
!3037 = distinct !DILexicalBlock(scope: !3020, file: !2981, line: 62, column: 7)
!3038 = !DILocation(line: 62, column: 13, scope: !3037, inlinedAt: !3026)
!3039 = !DILocation(line: 62, column: 10, scope: !3037, inlinedAt: !3026)
!3040 = !DILocation(line: 63, column: 5, scope: !3037, inlinedAt: !3026)
!3041 = !DILocation(line: 122, column: 3, scope: !3004)
!3042 = !DILocation(line: 51, column: 17, scope: !3020)
!3043 = !DILocation(line: 51, column: 27, scope: !3020)
!3044 = !DILocation(line: 53, column: 8, scope: !3029)
!3045 = !DILocation(line: 53, column: 13, scope: !3029)
!3046 = !DILocation(line: 53, column: 10, scope: !3029)
!3047 = !DILocation(line: 57, column: 7, scope: !3033)
!3048 = !DILocation(line: 58, column: 7, scope: !3033)
!3049 = !DILocation(line: 61, column: 7, scope: !3020)
!3050 = !DILocation(line: 62, column: 8, scope: !3037)
!3051 = !DILocation(line: 62, column: 13, scope: !3037)
!3052 = !DILocation(line: 62, column: 10, scope: !3037)
!3053 = !DILocation(line: 63, column: 5, scope: !3037)
!3054 = !DILocation(line: 65, column: 1, scope: !3020)
!3055 = !DILocation(line: 180, column: 19, scope: !557)
!3056 = !DILocation(line: 180, column: 30, scope: !557)
!3057 = !DILocation(line: 180, column: 41, scope: !557)
!3058 = !DILocation(line: 182, column: 14, scope: !557)
!3059 = !DILocation(line: 182, column: 10, scope: !557)
!3060 = !DILocation(line: 184, column: 9, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !557, file: !556, line: 184, column: 7)
!3062 = !DILocation(line: 184, column: 7, scope: !557)
!3063 = !DILocation(line: 186, column: 13, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !556, line: 186, column: 11)
!3065 = distinct !DILexicalBlock(scope: !3061, file: !556, line: 185, column: 5)
!3066 = !DILocation(line: 186, column: 11, scope: !3065)
!3067 = !DILocation(line: 194, column: 30, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3064, file: !556, line: 187, column: 9)
!3069 = !DILocation(line: 195, column: 16, scope: !3068)
!3070 = !DILocation(line: 195, column: 13, scope: !3068)
!3071 = !DILocation(line: 196, column: 9, scope: !3068)
!3072 = !DILocation(line: 204, column: 69, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !556, line: 204, column: 11)
!3074 = distinct !DILexicalBlock(scope: !3061, file: !556, line: 199, column: 5)
!3075 = !DILocation(line: 205, column: 11, scope: !3073)
!3076 = !DILocation(line: 204, column: 11, scope: !3074)
!3077 = !DILocation(line: 206, column: 9, scope: !3073)
!3078 = !DILocation(line: 210, column: 7, scope: !557)
!3079 = !DILocation(line: 211, column: 25, scope: !557)
!3080 = !DILocation(line: 51, column: 17, scope: !3020, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 211, column: 10, scope: !557)
!3082 = !DILocation(line: 51, column: 27, scope: !3020, inlinedAt: !3081)
!3083 = !DILocation(line: 53, column: 10, scope: !3029, inlinedAt: !3081)
!3084 = !DILocation(line: 207, column: 14, scope: !3074)
!3085 = !DILocation(line: 207, column: 18, scope: !3074)
!3086 = !DILocation(line: 207, column: 9, scope: !3074)
!3087 = !DILocation(line: 53, column: 8, scope: !3029, inlinedAt: !3081)
!3088 = !DILocation(line: 57, column: 7, scope: !3033, inlinedAt: !3081)
!3089 = !DILocation(line: 58, column: 7, scope: !3033, inlinedAt: !3081)
!3090 = !DILocation(line: 61, column: 7, scope: !3020, inlinedAt: !3081)
!3091 = !DILocation(line: 62, column: 8, scope: !3037, inlinedAt: !3081)
!3092 = !DILocation(line: 62, column: 13, scope: !3037, inlinedAt: !3081)
!3093 = !DILocation(line: 62, column: 10, scope: !3037, inlinedAt: !3081)
!3094 = !DILocation(line: 63, column: 5, scope: !3037, inlinedAt: !3081)
!3095 = !DILocation(line: 211, column: 3, scope: !557)
!3096 = distinct !DISubprogram(name: "xcharalloc", scope: !556, file: !556, line: 220, type: !2050, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3097)
!3097 = !{!3098}
!3098 = !DILocalVariable(name: "n", arg: 1, scope: !3096, file: !556, line: 220, type: !137)
!3099 = !DILocation(line: 220, column: 20, scope: !3096)
!3100 = !DILocation(line: 39, column: 17, scope: !2980, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 222, column: 10, scope: !3096)
!3102 = !DILocation(line: 41, column: 13, scope: !2980, inlinedAt: !3101)
!3103 = !DILocation(line: 41, column: 9, scope: !2980, inlinedAt: !3101)
!3104 = !DILocation(line: 42, column: 8, scope: !2991, inlinedAt: !3101)
!3105 = !DILocation(line: 42, column: 15, scope: !2991, inlinedAt: !3101)
!3106 = !DILocation(line: 42, column: 10, scope: !2991, inlinedAt: !3101)
!3107 = !DILocation(line: 43, column: 5, scope: !2991, inlinedAt: !3101)
!3108 = !DILocation(line: 222, column: 3, scope: !3096)
!3109 = distinct !DISubprogram(name: "x2realloc", scope: !2981, file: !2981, line: 74, type: !3110, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!8, !8, !560}
!3112 = !{!3113, !3114}
!3113 = !DILocalVariable(name: "p", arg: 1, scope: !3109, file: !2981, line: 74, type: !8)
!3114 = !DILocalVariable(name: "pn", arg: 2, scope: !3109, file: !2981, line: 74, type: !560)
!3115 = !DILocation(line: 74, column: 18, scope: !3109)
!3116 = !DILocation(line: 74, column: 29, scope: !3109)
!3117 = !DILocation(line: 180, column: 19, scope: !557, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 76, column: 10, scope: !3109)
!3119 = !DILocation(line: 180, column: 30, scope: !557, inlinedAt: !3118)
!3120 = !DILocation(line: 180, column: 41, scope: !557, inlinedAt: !3118)
!3121 = !DILocation(line: 182, column: 14, scope: !557, inlinedAt: !3118)
!3122 = !DILocation(line: 182, column: 10, scope: !557, inlinedAt: !3118)
!3123 = !DILocation(line: 184, column: 9, scope: !3061, inlinedAt: !3118)
!3124 = !DILocation(line: 184, column: 7, scope: !557, inlinedAt: !3118)
!3125 = !DILocation(line: 186, column: 13, scope: !3064, inlinedAt: !3118)
!3126 = !DILocation(line: 186, column: 11, scope: !3065, inlinedAt: !3118)
!3127 = !DILocation(line: 210, column: 7, scope: !557, inlinedAt: !3118)
!3128 = !DILocation(line: 51, column: 17, scope: !3020, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 211, column: 10, scope: !557, inlinedAt: !3118)
!3130 = !DILocation(line: 51, column: 27, scope: !3020, inlinedAt: !3129)
!3131 = !DILocation(line: 53, column: 10, scope: !3029, inlinedAt: !3129)
!3132 = !DILocation(line: 205, column: 11, scope: !3073, inlinedAt: !3118)
!3133 = !DILocation(line: 204, column: 11, scope: !3074, inlinedAt: !3118)
!3134 = !DILocation(line: 206, column: 9, scope: !3073, inlinedAt: !3118)
!3135 = !DILocation(line: 207, column: 14, scope: !3074, inlinedAt: !3118)
!3136 = !DILocation(line: 207, column: 18, scope: !3074, inlinedAt: !3118)
!3137 = !DILocation(line: 207, column: 9, scope: !3074, inlinedAt: !3118)
!3138 = !DILocation(line: 53, column: 8, scope: !3029, inlinedAt: !3129)
!3139 = !DILocation(line: 57, column: 7, scope: !3033, inlinedAt: !3129)
!3140 = !DILocation(line: 58, column: 7, scope: !3033, inlinedAt: !3129)
!3141 = !DILocation(line: 61, column: 7, scope: !3020, inlinedAt: !3129)
!3142 = !DILocation(line: 62, column: 8, scope: !3037, inlinedAt: !3129)
!3143 = !DILocation(line: 62, column: 13, scope: !3037, inlinedAt: !3129)
!3144 = !DILocation(line: 62, column: 10, scope: !3037, inlinedAt: !3129)
!3145 = !DILocation(line: 63, column: 5, scope: !3037, inlinedAt: !3129)
!3146 = !DILocation(line: 76, column: 3, scope: !3109)
!3147 = distinct !DISubprogram(name: "xzalloc", scope: !2981, file: !2981, line: 84, type: !2982, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3148)
!3148 = !{!3149}
!3149 = !DILocalVariable(name: "s", arg: 1, scope: !3147, file: !2981, line: 84, type: !137)
!3150 = !DILocation(line: 84, column: 17, scope: !3147)
!3151 = !DILocation(line: 39, column: 17, scope: !2980, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 86, column: 18, scope: !3147)
!3153 = !DILocation(line: 41, column: 13, scope: !2980, inlinedAt: !3152)
!3154 = !DILocation(line: 41, column: 9, scope: !2980, inlinedAt: !3152)
!3155 = !DILocation(line: 42, column: 8, scope: !2991, inlinedAt: !3152)
!3156 = !DILocation(line: 42, column: 15, scope: !2991, inlinedAt: !3152)
!3157 = !DILocation(line: 42, column: 10, scope: !2991, inlinedAt: !3152)
!3158 = !DILocation(line: 43, column: 5, scope: !2991, inlinedAt: !3152)
!3159 = !DILocation(line: 86, column: 10, scope: !3147)
!3160 = !DILocation(line: 86, column: 3, scope: !3147)
!3161 = distinct !DISubprogram(name: "xcalloc", scope: !2981, file: !2981, line: 93, type: !2967, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DILocalVariable(name: "n", arg: 1, scope: !3161, file: !2981, line: 93, type: !137)
!3164 = !DILocalVariable(name: "s", arg: 2, scope: !3161, file: !2981, line: 93, type: !137)
!3165 = !DILocalVariable(name: "p", scope: !3161, file: !2981, line: 95, type: !8)
!3166 = !DILocation(line: 93, column: 17, scope: !3161)
!3167 = !DILocation(line: 93, column: 27, scope: !3161)
!3168 = !DILocation(line: 100, column: 7, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3161, file: !2981, line: 100, column: 7)
!3170 = !DILocation(line: 101, column: 7, scope: !3169)
!3171 = !DILocation(line: 101, column: 18, scope: !3169)
!3172 = !DILocation(line: 95, column: 9, scope: !3161)
!3173 = !DILocation(line: 101, column: 16, scope: !3169)
!3174 = !DILocation(line: 100, column: 7, scope: !3161)
!3175 = !DILocation(line: 102, column: 5, scope: !3169)
!3176 = !DILocation(line: 103, column: 3, scope: !3161)
!3177 = distinct !DISubprogram(name: "xmemdup", scope: !2981, file: !2981, line: 111, type: !3178, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3182)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!8, !3180, !137}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3182 = !{!3183, !3184}
!3183 = !DILocalVariable(name: "p", arg: 1, scope: !3177, file: !2981, line: 111, type: !3180)
!3184 = !DILocalVariable(name: "s", arg: 2, scope: !3177, file: !2981, line: 111, type: !137)
!3185 = !DILocation(line: 111, column: 22, scope: !3177)
!3186 = !DILocation(line: 111, column: 32, scope: !3177)
!3187 = !DILocation(line: 39, column: 17, scope: !2980, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 113, column: 18, scope: !3177)
!3189 = !DILocation(line: 41, column: 13, scope: !2980, inlinedAt: !3188)
!3190 = !DILocation(line: 41, column: 9, scope: !2980, inlinedAt: !3188)
!3191 = !DILocation(line: 42, column: 8, scope: !2991, inlinedAt: !3188)
!3192 = !DILocation(line: 42, column: 15, scope: !2991, inlinedAt: !3188)
!3193 = !DILocation(line: 42, column: 10, scope: !2991, inlinedAt: !3188)
!3194 = !DILocation(line: 43, column: 5, scope: !2991, inlinedAt: !3188)
!3195 = !DILocation(line: 113, column: 10, scope: !3177)
!3196 = !DILocation(line: 113, column: 3, scope: !3177)
!3197 = distinct !DISubprogram(name: "xstrdup", scope: !2981, file: !2981, line: 119, type: !2251, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3198)
!3198 = !{!3199}
!3199 = !DILocalVariable(name: "string", arg: 1, scope: !3197, file: !2981, line: 119, type: !17)
!3200 = !DILocation(line: 119, column: 22, scope: !3197)
!3201 = !DILocation(line: 121, column: 27, scope: !3197)
!3202 = !DILocation(line: 121, column: 43, scope: !3197)
!3203 = !DILocation(line: 111, column: 22, scope: !3177, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 121, column: 10, scope: !3197)
!3205 = !DILocation(line: 111, column: 32, scope: !3177, inlinedAt: !3204)
!3206 = !DILocation(line: 39, column: 17, scope: !2980, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 113, column: 18, scope: !3177, inlinedAt: !3204)
!3208 = !DILocation(line: 41, column: 13, scope: !2980, inlinedAt: !3207)
!3209 = !DILocation(line: 41, column: 9, scope: !2980, inlinedAt: !3207)
!3210 = !DILocation(line: 42, column: 8, scope: !2991, inlinedAt: !3207)
!3211 = !DILocation(line: 42, column: 15, scope: !2991, inlinedAt: !3207)
!3212 = !DILocation(line: 42, column: 10, scope: !2991, inlinedAt: !3207)
!3213 = !DILocation(line: 43, column: 5, scope: !2991, inlinedAt: !3207)
!3214 = !DILocation(line: 113, column: 10, scope: !3177, inlinedAt: !3204)
!3215 = !DILocation(line: 121, column: 3, scope: !3197)
!3216 = distinct !DISubprogram(name: "xalloc_die", scope: !3217, file: !3217, line: 32, type: !1013, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !569, variables: !4)
!3217 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3218 = !DILocation(line: 34, column: 10, scope: !3216)
!3219 = !DILocation(line: 34, column: 33, scope: !3216)
!3220 = !DILocation(line: 34, column: 3, scope: !3216)
!3221 = !DILocation(line: 40, column: 3, scope: !3216)
!3222 = distinct !DISubprogram(name: "xgetgroups", scope: !3223, file: !3223, line: 31, type: !588, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !571, variables: !3224)
!3223 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3224 = !{!3225, !3226, !3227, !3228}
!3225 = !DILocalVariable(name: "username", arg: 1, scope: !3222, file: !3223, line: 31, type: !17)
!3226 = !DILocalVariable(name: "gid", arg: 2, scope: !3222, file: !3223, line: 31, type: !54)
!3227 = !DILocalVariable(name: "groups", arg: 3, scope: !3222, file: !3223, line: 31, type: !590)
!3228 = !DILocalVariable(name: "result", scope: !3222, file: !3223, line: 33, type: !40)
!3229 = !DILocation(line: 31, column: 25, scope: !3222)
!3230 = !DILocation(line: 31, column: 41, scope: !3222)
!3231 = !DILocation(line: 31, column: 54, scope: !3222)
!3232 = !DILocation(line: 33, column: 16, scope: !3222)
!3233 = !DILocation(line: 33, column: 7, scope: !3222)
!3234 = !DILocation(line: 34, column: 14, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3222, file: !3223, line: 34, column: 7)
!3236 = !DILocation(line: 34, column: 20, scope: !3235)
!3237 = !DILocation(line: 34, column: 23, scope: !3235)
!3238 = !DILocation(line: 34, column: 29, scope: !3235)
!3239 = !DILocation(line: 34, column: 7, scope: !3222)
!3240 = !DILocation(line: 35, column: 5, scope: !3235)
!3241 = !DILocation(line: 36, column: 3, scope: !3222)
!3242 = distinct !DISubprogram(name: "rpl_calloc", scope: !3243, file: !3243, line: 42, type: !2967, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !573, variables: !3244)
!3243 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3244 = !{!3245, !3246, !3247, !3248}
!3245 = !DILocalVariable(name: "n", arg: 1, scope: !3242, file: !3243, line: 42, type: !137)
!3246 = !DILocalVariable(name: "s", arg: 2, scope: !3242, file: !3243, line: 42, type: !137)
!3247 = !DILocalVariable(name: "result", scope: !3242, file: !3243, line: 44, type: !8)
!3248 = !DILocalVariable(name: "bytes", scope: !3249, file: !3243, line: 56, type: !137)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !3243, line: 53, column: 5)
!3250 = distinct !DILexicalBlock(scope: !3242, file: !3243, line: 47, column: 7)
!3251 = !DILocation(line: 42, column: 20, scope: !3242)
!3252 = !DILocation(line: 42, column: 30, scope: !3242)
!3253 = !DILocation(line: 47, column: 9, scope: !3250)
!3254 = !DILocation(line: 47, column: 19, scope: !3250)
!3255 = !DILocation(line: 47, column: 14, scope: !3250)
!3256 = !DILocation(line: 56, column: 24, scope: !3249)
!3257 = !DILocation(line: 56, column: 14, scope: !3249)
!3258 = !DILocation(line: 57, column: 17, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3249, file: !3243, line: 57, column: 11)
!3260 = !DILocation(line: 57, column: 21, scope: !3259)
!3261 = !DILocation(line: 57, column: 11, scope: !3249)
!3262 = !DILocation(line: 59, column: 11, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3259, file: !3243, line: 58, column: 9)
!3264 = !DILocation(line: 59, column: 17, scope: !3263)
!3265 = !DILocation(line: 65, column: 12, scope: !3242)
!3266 = !DILocation(line: 44, column: 9, scope: !3242)
!3267 = !DILocation(line: 72, column: 3, scope: !3242)
!3268 = !DILocation(line: 73, column: 1, scope: !3242)
!3269 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3270, file: !3270, line: 334, type: !3271, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !3285)
!3270 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!137, !3273, !17, !137, !3274}
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1302, line: 6, baseType: !3276)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1304, line: 21, baseType: !3277)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1304, line: 13, size: 64, elements: !3278)
!3278 = !{!3279, !3280}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3277, file: !1304, line: 15, baseType: !40, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3277, file: !1304, line: 20, baseType: !3281, size: 32, offset: 32)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !1304, line: 16, size: 32, elements: !3282)
!3282 = !{!3283, !3284}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3281, file: !1304, line: 18, baseType: !58, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3281, file: !1304, line: 19, baseType: !1313, size: 32)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292}
!3286 = !DILocalVariable(name: "pwc", arg: 1, scope: !3269, file: !3270, line: 334, type: !3273)
!3287 = !DILocalVariable(name: "s", arg: 2, scope: !3269, file: !3270, line: 334, type: !17)
!3288 = !DILocalVariable(name: "n", arg: 3, scope: !3269, file: !3270, line: 334, type: !137)
!3289 = !DILocalVariable(name: "ps", arg: 4, scope: !3269, file: !3270, line: 334, type: !3274)
!3290 = !DILocalVariable(name: "ret", scope: !3269, file: !3270, line: 336, type: !137)
!3291 = !DILocalVariable(name: "wc", scope: !3269, file: !3270, line: 337, type: !1318)
!3292 = !DILocalVariable(name: "uc", scope: !3293, file: !3270, line: 398, type: !9)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !3270, line: 397, column: 5)
!3294 = distinct !DILexicalBlock(scope: !3269, file: !3270, line: 396, column: 7)
!3295 = !DILocation(line: 334, column: 23, scope: !3269)
!3296 = !DILocation(line: 334, column: 40, scope: !3269)
!3297 = !DILocation(line: 334, column: 50, scope: !3269)
!3298 = !DILocation(line: 334, column: 64, scope: !3269)
!3299 = !DILocation(line: 337, column: 3, scope: !3269)
!3300 = !DILocation(line: 353, column: 9, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3269, file: !3270, line: 353, column: 7)
!3302 = !DILocation(line: 353, column: 7, scope: !3269)
!3303 = !DILocation(line: 388, column: 9, scope: !3269)
!3304 = !DILocation(line: 336, column: 10, scope: !3269)
!3305 = !DILocation(line: 396, column: 19, scope: !3294)
!3306 = !DILocation(line: 396, column: 31, scope: !3294)
!3307 = !DILocation(line: 396, column: 26, scope: !3294)
!3308 = !DILocation(line: 396, column: 41, scope: !3294)
!3309 = !DILocation(line: 396, column: 7, scope: !3269)
!3310 = !DILocation(line: 398, column: 26, scope: !3293)
!3311 = !DILocation(line: 398, column: 21, scope: !3293)
!3312 = !DILocation(line: 399, column: 14, scope: !3293)
!3313 = !DILocation(line: 399, column: 12, scope: !3293)
!3314 = !DILocation(line: 405, column: 1, scope: !3269)
!3315 = distinct !DISubprogram(name: "close_stream", scope: !3316, file: !3316, line: 56, type: !3317, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !3359)
!3316 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!40, !3319}
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2777, line: 7, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2779, line: 241, size: 1728, elements: !3322)
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3321, file: !2779, line: 242, baseType: !40, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3321, file: !2779, line: 247, baseType: !6, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3321, file: !2779, line: 248, baseType: !6, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3321, file: !2779, line: 249, baseType: !6, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3321, file: !2779, line: 250, baseType: !6, size: 64, offset: 256)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3321, file: !2779, line: 251, baseType: !6, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3321, file: !2779, line: 252, baseType: !6, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3321, file: !2779, line: 253, baseType: !6, size: 64, offset: 448)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3321, file: !2779, line: 254, baseType: !6, size: 64, offset: 512)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3321, file: !2779, line: 256, baseType: !6, size: 64, offset: 576)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3321, file: !2779, line: 257, baseType: !6, size: 64, offset: 640)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3321, file: !2779, line: 258, baseType: !6, size: 64, offset: 704)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3321, file: !2779, line: 260, baseType: !3336, size: 64, offset: 768)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2779, line: 156, size: 192, elements: !3338)
!3338 = !{!3339, !3340, !3342}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3337, file: !2779, line: 157, baseType: !3336, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3337, file: !2779, line: 158, baseType: !3341, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3337, file: !2779, line: 162, baseType: !40, size: 32, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3321, file: !2779, line: 262, baseType: !3341, size: 64, offset: 832)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3321, file: !2779, line: 264, baseType: !40, size: 32, offset: 896)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3321, file: !2779, line: 268, baseType: !40, size: 32, offset: 928)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3321, file: !2779, line: 270, baseType: !2805, size: 64, offset: 960)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3321, file: !2779, line: 274, baseType: !136, size: 16, offset: 1024)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3321, file: !2779, line: 275, baseType: !2809, size: 8, offset: 1040)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3321, file: !2779, line: 276, baseType: !2811, size: 8, offset: 1048)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3321, file: !2779, line: 280, baseType: !2815, size: 64, offset: 1088)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3321, file: !2779, line: 289, baseType: !2818, size: 64, offset: 1152)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3321, file: !2779, line: 297, baseType: !8, size: 64, offset: 1216)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3321, file: !2779, line: 298, baseType: !8, size: 64, offset: 1280)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3321, file: !2779, line: 299, baseType: !8, size: 64, offset: 1344)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3321, file: !2779, line: 300, baseType: !8, size: 64, offset: 1408)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3321, file: !2779, line: 302, baseType: !137, size: 64, offset: 1472)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3321, file: !2779, line: 303, baseType: !40, size: 32, offset: 1536)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3321, file: !2779, line: 305, baseType: !2826, size: 160, offset: 1568)
!3359 = !{!3360, !3361, !3363, !3364}
!3360 = !DILocalVariable(name: "stream", arg: 1, scope: !3315, file: !3316, line: 56, type: !3319)
!3361 = !DILocalVariable(name: "some_pending", scope: !3315, file: !3316, line: 58, type: !3362)
!3362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!3363 = !DILocalVariable(name: "prev_fail", scope: !3315, file: !3316, line: 59, type: !3362)
!3364 = !DILocalVariable(name: "fclose_fail", scope: !3315, file: !3316, line: 60, type: !3362)
!3365 = !DILocation(line: 56, column: 21, scope: !3315)
!3366 = !DILocation(line: 58, column: 30, scope: !3315)
!3367 = !DILocalVariable(name: "__stream", arg: 1, scope: !3368, file: !756, line: 132, type: !3319)
!3368 = distinct !DISubprogram(name: "ferror_unlocked", scope: !756, file: !756, line: 132, type: !3317, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !578, variables: !3369)
!3369 = !{!3367}
!3370 = !DILocation(line: 132, column: 1, scope: !3368, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 59, column: 27, scope: !3315)
!3372 = !DILocation(line: 134, column: 10, scope: !3368, inlinedAt: !3371)
!3373 = !{!764, !718, i64 0}
!3374 = !DILocation(line: 59, column: 43, scope: !3315)
!3375 = !DILocation(line: 60, column: 29, scope: !3315)
!3376 = !DILocation(line: 60, column: 45, scope: !3315)
!3377 = !DILocation(line: 70, column: 17, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3315, file: !3316, line: 70, column: 7)
!3379 = !DILocation(line: 58, column: 50, scope: !3315)
!3380 = !DILocation(line: 70, column: 33, scope: !3378)
!3381 = !DILocation(line: 70, column: 53, scope: !3378)
!3382 = !DILocation(line: 70, column: 59, scope: !3378)
!3383 = !DILocation(line: 70, column: 7, scope: !3315)
!3384 = !DILocation(line: 72, column: 11, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3378, file: !3316, line: 71, column: 5)
!3386 = !DILocation(line: 73, column: 9, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3385, file: !3316, line: 72, column: 11)
!3388 = !DILocation(line: 73, column: 15, scope: !3387)
!3389 = !DILocation(line: 78, column: 1, scope: !3315)
!3390 = distinct !DISubprogram(name: "hard_locale", scope: !3391, file: !3391, line: 38, type: !3392, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !3394)
!3391 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!81, !40}
!3394 = !{!3395, !3396, !3397}
!3395 = !DILocalVariable(name: "category", arg: 1, scope: !3390, file: !3391, line: 38, type: !40)
!3396 = !DILocalVariable(name: "hard", scope: !3390, file: !3391, line: 40, type: !81)
!3397 = !DILocalVariable(name: "p", scope: !3390, file: !3391, line: 41, type: !17)
!3398 = !DILocation(line: 38, column: 18, scope: !3390)
!3399 = !DILocation(line: 40, column: 8, scope: !3390)
!3400 = !DILocation(line: 41, column: 19, scope: !3390)
!3401 = !DILocation(line: 41, column: 15, scope: !3390)
!3402 = !DILocation(line: 43, column: 7, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3390, file: !3391, line: 43, column: 7)
!3404 = !DILocation(line: 43, column: 7, scope: !3390)
!3405 = !DILocation(line: 47, column: 15, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !3391, line: 47, column: 15)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !3391, line: 46, column: 9)
!3408 = distinct !DILexicalBlock(scope: !3409, file: !3391, line: 45, column: 11)
!3409 = distinct !DILexicalBlock(scope: !3403, file: !3391, line: 44, column: 5)
!3410 = !DILocation(line: 47, column: 31, scope: !3406)
!3411 = !DILocation(line: 47, column: 36, scope: !3406)
!3412 = !DILocation(line: 47, column: 39, scope: !3406)
!3413 = !DILocation(line: 47, column: 59, scope: !3406)
!3414 = !DILocation(line: 47, column: 15, scope: !3407)
!3415 = !DILocation(line: 48, column: 13, scope: !3406)
!3416 = !DILocation(line: 71, column: 3, scope: !3390)
!3417 = distinct !DISubprogram(name: "locale_charset", scope: !536, file: !536, line: 393, type: !3418, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !192, variables: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!17}
!3420 = !{!3421, !3422}
!3421 = !DILocalVariable(name: "codeset", scope: !3417, file: !536, line: 395, type: !17)
!3422 = !DILocalVariable(name: "aliases", scope: !3417, file: !536, line: 396, type: !17)
!3423 = !DILocalVariable(name: "buf1", scope: !3424, file: !536, line: 196, type: !3491)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !536, line: 194, column: 21)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !536, line: 193, column: 19)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !536, line: 193, column: 19)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !536, line: 188, column: 17)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !536, line: 181, column: 19)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !536, line: 177, column: 13)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !536, line: 173, column: 15)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !536, line: 161, column: 9)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !536, line: 157, column: 11)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !536, line: 130, column: 5)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !536, line: 129, column: 7)
!3435 = distinct !DISubprogram(name: "get_charset_aliases", scope: !536, file: !536, line: 124, type: !3418, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !192, variables: !3436)
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3443, !3444, !3445, !3446, !3487, !3488, !3489, !3423, !3490, !3494, !3495, !3496}
!3437 = !DILocalVariable(name: "cp", scope: !3435, file: !536, line: 126, type: !17)
!3438 = !DILocalVariable(name: "dir", scope: !3433, file: !536, line: 132, type: !17)
!3439 = !DILocalVariable(name: "base", scope: !3433, file: !536, line: 133, type: !17)
!3440 = !DILocalVariable(name: "file_name", scope: !3433, file: !536, line: 134, type: !6)
!3441 = !DILocalVariable(name: "dir_len", scope: !3442, file: !536, line: 144, type: !137)
!3442 = distinct !DILexicalBlock(scope: !3433, file: !536, line: 143, column: 7)
!3443 = !DILocalVariable(name: "base_len", scope: !3442, file: !536, line: 145, type: !137)
!3444 = !DILocalVariable(name: "add_slash", scope: !3442, file: !536, line: 146, type: !40)
!3445 = !DILocalVariable(name: "fd", scope: !3431, file: !536, line: 162, type: !40)
!3446 = !DILocalVariable(name: "fp", scope: !3429, file: !536, line: 178, type: !3447)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2777, line: 7, baseType: !3449)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2779, line: 241, size: 1728, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3449, file: !2779, line: 242, baseType: !40, size: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3449, file: !2779, line: 247, baseType: !6, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3449, file: !2779, line: 248, baseType: !6, size: 64, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3449, file: !2779, line: 249, baseType: !6, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3449, file: !2779, line: 250, baseType: !6, size: 64, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3449, file: !2779, line: 251, baseType: !6, size: 64, offset: 320)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3449, file: !2779, line: 252, baseType: !6, size: 64, offset: 384)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3449, file: !2779, line: 253, baseType: !6, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3449, file: !2779, line: 254, baseType: !6, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3449, file: !2779, line: 256, baseType: !6, size: 64, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3449, file: !2779, line: 257, baseType: !6, size: 64, offset: 640)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3449, file: !2779, line: 258, baseType: !6, size: 64, offset: 704)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3449, file: !2779, line: 260, baseType: !3464, size: 64, offset: 768)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2779, line: 156, size: 192, elements: !3466)
!3466 = !{!3467, !3468, !3470}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3465, file: !2779, line: 157, baseType: !3464, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3465, file: !2779, line: 158, baseType: !3469, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3465, file: !2779, line: 162, baseType: !40, size: 32, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3449, file: !2779, line: 262, baseType: !3469, size: 64, offset: 832)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3449, file: !2779, line: 264, baseType: !40, size: 32, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3449, file: !2779, line: 268, baseType: !40, size: 32, offset: 928)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3449, file: !2779, line: 270, baseType: !2805, size: 64, offset: 960)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3449, file: !2779, line: 274, baseType: !136, size: 16, offset: 1024)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3449, file: !2779, line: 275, baseType: !2809, size: 8, offset: 1040)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3449, file: !2779, line: 276, baseType: !2811, size: 8, offset: 1048)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3449, file: !2779, line: 280, baseType: !2815, size: 64, offset: 1088)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3449, file: !2779, line: 289, baseType: !2818, size: 64, offset: 1152)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3449, file: !2779, line: 297, baseType: !8, size: 64, offset: 1216)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3449, file: !2779, line: 298, baseType: !8, size: 64, offset: 1280)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3449, file: !2779, line: 299, baseType: !8, size: 64, offset: 1344)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3449, file: !2779, line: 300, baseType: !8, size: 64, offset: 1408)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3449, file: !2779, line: 302, baseType: !137, size: 64, offset: 1472)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3449, file: !2779, line: 303, baseType: !40, size: 32, offset: 1536)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3449, file: !2779, line: 305, baseType: !2826, size: 160, offset: 1568)
!3487 = !DILocalVariable(name: "res_ptr", scope: !3427, file: !536, line: 190, type: !6)
!3488 = !DILocalVariable(name: "res_size", scope: !3427, file: !536, line: 191, type: !137)
!3489 = !DILocalVariable(name: "c", scope: !3424, file: !536, line: 195, type: !40)
!3490 = !DILocalVariable(name: "buf2", scope: !3424, file: !536, line: 197, type: !3491)
!3491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !3492)
!3492 = !{!3493}
!3493 = !DISubrange(count: 51)
!3494 = !DILocalVariable(name: "l1", scope: !3424, file: !536, line: 198, type: !137)
!3495 = !DILocalVariable(name: "l2", scope: !3424, file: !536, line: 198, type: !137)
!3496 = !DILocalVariable(name: "old_res_ptr", scope: !3424, file: !536, line: 199, type: !6)
!3497 = !DILocation(line: 196, column: 28, scope: !3424, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 589, column: 18, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3417, file: !536, line: 589, column: 3)
!3500 = !DILocation(line: 197, column: 28, scope: !3424, inlinedAt: !3498)
!3501 = !DILocation(line: 403, column: 13, scope: !3417)
!3502 = !DILocation(line: 395, column: 15, scope: !3417)
!3503 = !DILocation(line: 584, column: 15, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3417, file: !536, line: 584, column: 7)
!3505 = !DILocation(line: 584, column: 7, scope: !3417)
!3506 = !DILocation(line: 128, column: 8, scope: !3435, inlinedAt: !3498)
!3507 = !DILocation(line: 126, column: 15, scope: !3435, inlinedAt: !3498)
!3508 = !DILocation(line: 129, column: 10, scope: !3434, inlinedAt: !3498)
!3509 = !DILocation(line: 129, column: 7, scope: !3435, inlinedAt: !3498)
!3510 = !DILocation(line: 138, column: 13, scope: !3433, inlinedAt: !3498)
!3511 = !DILocation(line: 132, column: 19, scope: !3433, inlinedAt: !3498)
!3512 = !DILocation(line: 139, column: 15, scope: !3513, inlinedAt: !3498)
!3513 = distinct !DILexicalBlock(scope: !3433, file: !536, line: 139, column: 11)
!3514 = !DILocation(line: 139, column: 23, scope: !3513, inlinedAt: !3498)
!3515 = !DILocation(line: 139, column: 26, scope: !3513, inlinedAt: !3498)
!3516 = !DILocation(line: 139, column: 33, scope: !3513, inlinedAt: !3498)
!3517 = !DILocation(line: 139, column: 11, scope: !3433, inlinedAt: !3498)
!3518 = !DILocation(line: 140, column: 9, scope: !3513, inlinedAt: !3498)
!3519 = !DILocation(line: 144, column: 26, scope: !3442, inlinedAt: !3498)
!3520 = !DILocation(line: 144, column: 16, scope: !3442, inlinedAt: !3498)
!3521 = !DILocation(line: 145, column: 16, scope: !3442, inlinedAt: !3498)
!3522 = !DILocation(line: 146, column: 34, scope: !3442, inlinedAt: !3498)
!3523 = !DILocation(line: 146, column: 38, scope: !3442, inlinedAt: !3498)
!3524 = !DILocation(line: 146, column: 42, scope: !3442, inlinedAt: !3498)
!3525 = !DILocation(line: 147, column: 48, scope: !3442, inlinedAt: !3498)
!3526 = !DILocation(line: 147, column: 46, scope: !3442, inlinedAt: !3498)
!3527 = !DILocation(line: 147, column: 69, scope: !3442, inlinedAt: !3498)
!3528 = !DILocation(line: 147, column: 30, scope: !3442, inlinedAt: !3498)
!3529 = !DILocation(line: 134, column: 13, scope: !3433, inlinedAt: !3498)
!3530 = !DILocation(line: 148, column: 13, scope: !3442, inlinedAt: !3498)
!3531 = !DILocation(line: 150, column: 13, scope: !3532, inlinedAt: !3498)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !536, line: 149, column: 11)
!3533 = distinct !DILexicalBlock(scope: !3442, file: !536, line: 148, column: 13)
!3534 = !DILocation(line: 151, column: 17, scope: !3532, inlinedAt: !3498)
!3535 = !DILocation(line: 152, column: 34, scope: !3536, inlinedAt: !3498)
!3536 = distinct !DILexicalBlock(scope: !3532, file: !536, line: 151, column: 17)
!3537 = !DILocation(line: 153, column: 41, scope: !3532, inlinedAt: !3498)
!3538 = !DILocation(line: 153, column: 13, scope: !3532, inlinedAt: !3498)
!3539 = !DILocation(line: 157, column: 11, scope: !3433, inlinedAt: !3498)
!3540 = !DILocation(line: 171, column: 16, scope: !3431, inlinedAt: !3498)
!3541 = !DILocation(line: 162, column: 15, scope: !3431, inlinedAt: !3498)
!3542 = !DILocation(line: 173, column: 18, scope: !3430, inlinedAt: !3498)
!3543 = !DILocation(line: 173, column: 15, scope: !3431, inlinedAt: !3498)
!3544 = !DILocation(line: 180, column: 20, scope: !3429, inlinedAt: !3498)
!3545 = !DILocation(line: 178, column: 21, scope: !3429, inlinedAt: !3498)
!3546 = !DILocation(line: 181, column: 22, scope: !3428, inlinedAt: !3498)
!3547 = !DILocation(line: 181, column: 19, scope: !3429, inlinedAt: !3498)
!3548 = !DILocation(line: 184, column: 19, scope: !3549, inlinedAt: !3498)
!3549 = distinct !DILexicalBlock(scope: !3428, file: !536, line: 182, column: 17)
!3550 = !DILocation(line: 186, column: 17, scope: !3549, inlinedAt: !3498)
!3551 = !DILocation(line: 190, column: 25, scope: !3427, inlinedAt: !3498)
!3552 = !DILocation(line: 191, column: 26, scope: !3427, inlinedAt: !3498)
!3553 = !DILocation(line: 193, column: 19, scope: !3427, inlinedAt: !3498)
!3554 = !DILocation(line: 196, column: 23, scope: !3424, inlinedAt: !3498)
!3555 = !DILocation(line: 197, column: 23, scope: !3424, inlinedAt: !3498)
!3556 = !DILocalVariable(name: "__fp", arg: 1, scope: !3557, file: !756, line: 63, type: !3447)
!3557 = distinct !DISubprogram(name: "getc_unlocked", scope: !756, file: !756, line: 63, type: !3558, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !192, variables: !3560)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!40, !3447}
!3560 = !{!3556}
!3561 = !DILocation(line: 63, column: 22, scope: !3557, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 201, column: 27, scope: !3424, inlinedAt: !3498)
!3563 = !DILocation(line: 65, column: 10, scope: !3557, inlinedAt: !3562)
!3564 = !{!764, !643, i64 8}
!3565 = !{!764, !643, i64 16}
!3566 = !DILocation(line: 195, column: 27, scope: !3424, inlinedAt: !3498)
!3567 = !DILocation(line: 202, column: 27, scope: !3424, inlinedAt: !3498)
!3568 = distinct !{!3568, !3569, !3572}
!3569 = !DILocation(line: 209, column: 27, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !536, line: 207, column: 25)
!3571 = distinct !DILexicalBlock(scope: !3424, file: !536, line: 206, column: 27)
!3572 = !DILocation(line: 211, column: 58, scope: !3570)
!3573 = !DILocation(line: 65, column: 10, scope: !3557, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 210, column: 33, scope: !3570, inlinedAt: !3498)
!3575 = !DILocation(line: 63, column: 22, scope: !3557, inlinedAt: !3574)
!3576 = !DILocation(line: 210, column: 29, scope: !3570, inlinedAt: !3498)
!3577 = distinct !{!3577, !3578, !3579}
!3578 = !DILocation(line: 193, column: 19, scope: !3426)
!3579 = !DILocation(line: 241, column: 21, scope: !3426)
!3580 = !DILocation(line: 216, column: 23, scope: !3424, inlinedAt: !3498)
!3581 = !DILocation(line: 217, column: 27, scope: !3582, inlinedAt: !3498)
!3582 = distinct !DILexicalBlock(scope: !3424, file: !536, line: 217, column: 27)
!3583 = !DILocation(line: 217, column: 64, scope: !3582, inlinedAt: !3498)
!3584 = !DILocation(line: 217, column: 27, scope: !3424, inlinedAt: !3498)
!3585 = !DILocation(line: 219, column: 28, scope: !3424, inlinedAt: !3498)
!3586 = !DILocation(line: 198, column: 30, scope: !3424, inlinedAt: !3498)
!3587 = !DILocation(line: 220, column: 28, scope: !3424, inlinedAt: !3498)
!3588 = !DILocation(line: 198, column: 34, scope: !3424, inlinedAt: !3498)
!3589 = !DILocation(line: 199, column: 29, scope: !3424, inlinedAt: !3498)
!3590 = !DILocation(line: 222, column: 36, scope: !3591, inlinedAt: !3498)
!3591 = distinct !DILexicalBlock(scope: !3424, file: !536, line: 222, column: 27)
!3592 = !DILocation(line: 222, column: 27, scope: !3424, inlinedAt: !3498)
!3593 = !DILocation(line: 225, column: 63, scope: !3594, inlinedAt: !3498)
!3594 = distinct !DILexicalBlock(scope: !3591, file: !536, line: 223, column: 25)
!3595 = !DILocation(line: 225, column: 46, scope: !3594, inlinedAt: !3498)
!3596 = !DILocation(line: 226, column: 25, scope: !3594, inlinedAt: !3498)
!3597 = !DILocation(line: 229, column: 36, scope: !3598, inlinedAt: !3498)
!3598 = distinct !DILexicalBlock(scope: !3591, file: !536, line: 228, column: 25)
!3599 = !DILocation(line: 230, column: 73, scope: !3598, inlinedAt: !3498)
!3600 = !DILocation(line: 230, column: 46, scope: !3598, inlinedAt: !3498)
!3601 = !DILocation(line: 232, column: 35, scope: !3602, inlinedAt: !3498)
!3602 = distinct !DILexicalBlock(scope: !3424, file: !536, line: 232, column: 27)
!3603 = !DILocation(line: 232, column: 27, scope: !3424, inlinedAt: !3498)
!3604 = !DILocation(line: 236, column: 27, scope: !3605, inlinedAt: !3498)
!3605 = distinct !DILexicalBlock(scope: !3602, file: !536, line: 233, column: 25)
!3606 = !DILocation(line: 237, column: 27, scope: !3605, inlinedAt: !3498)
!3607 = !DILocation(line: 241, column: 21, scope: !3425, inlinedAt: !3498)
!3608 = !DILocation(line: 239, column: 39, scope: !3424, inlinedAt: !3498)
!3609 = !DILocation(line: 239, column: 50, scope: !3424, inlinedAt: !3498)
!3610 = !DILocation(line: 239, column: 61, scope: !3424, inlinedAt: !3498)
!3611 = !DILocalVariable(name: "__dest", arg: 1, scope: !3612, file: !3613, line: 88, type: !3616)
!3612 = distinct !DISubprogram(name: "strcpy", scope: !3613, file: !3613, line: 88, type: !3614, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !192, variables: !3618)
!3613 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!6, !3616, !3617}
!3616 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3617 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!3618 = !{!3611, !3619}
!3619 = !DILocalVariable(name: "__src", arg: 2, scope: !3612, file: !3613, line: 88, type: !3617)
!3620 = !DILocation(line: 88, column: 1, scope: !3612, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 239, column: 23, scope: !3424, inlinedAt: !3498)
!3622 = !DILocation(line: 90, column: 49, scope: !3612, inlinedAt: !3621)
!3623 = !DILocation(line: 90, column: 10, scope: !3612, inlinedAt: !3621)
!3624 = !DILocation(line: 88, column: 1, scope: !3612, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 240, column: 23, scope: !3424, inlinedAt: !3498)
!3626 = !DILocation(line: 90, column: 49, scope: !3612, inlinedAt: !3625)
!3627 = !DILocation(line: 90, column: 10, scope: !3612, inlinedAt: !3625)
!3628 = !DILocation(line: 193, column: 19, scope: !3425, inlinedAt: !3498)
!3629 = !DILocation(line: 242, column: 19, scope: !3427, inlinedAt: !3498)
!3630 = !DILocation(line: 243, column: 32, scope: !3631, inlinedAt: !3498)
!3631 = distinct !DILexicalBlock(scope: !3427, file: !536, line: 243, column: 23)
!3632 = !DILocation(line: 243, column: 23, scope: !3427, inlinedAt: !3498)
!3633 = !DILocation(line: 247, column: 33, scope: !3634, inlinedAt: !3498)
!3634 = distinct !DILexicalBlock(scope: !3631, file: !536, line: 246, column: 21)
!3635 = !DILocation(line: 247, column: 45, scope: !3634, inlinedAt: !3498)
!3636 = !DILocation(line: 253, column: 11, scope: !3431, inlinedAt: !3498)
!3637 = !DILocation(line: 377, column: 23, scope: !3433, inlinedAt: !3498)
!3638 = !DILocation(line: 378, column: 5, scope: !3433, inlinedAt: !3498)
!3639 = !DILocation(line: 396, column: 15, scope: !3417)
!3640 = !DILocation(line: 590, column: 8, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3499, file: !536, line: 589, column: 3)
!3642 = !DILocation(line: 590, column: 17, scope: !3641)
!3643 = !DILocation(line: 589, column: 3, scope: !3499)
!3644 = !DILocation(line: 592, column: 9, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3641, file: !536, line: 592, column: 9)
!3646 = !DILocation(line: 592, column: 35, scope: !3645)
!3647 = !DILocation(line: 593, column: 9, scope: !3645)
!3648 = !DILocation(line: 593, column: 24, scope: !3645)
!3649 = !DILocation(line: 593, column: 31, scope: !3645)
!3650 = !DILocation(line: 593, column: 34, scope: !3645)
!3651 = !DILocation(line: 593, column: 45, scope: !3645)
!3652 = !DILocation(line: 592, column: 9, scope: !3641)
!3653 = !DILocation(line: 595, column: 29, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3645, file: !536, line: 594, column: 7)
!3655 = !DILocation(line: 595, column: 27, scope: !3654)
!3656 = !DILocation(line: 595, column: 46, scope: !3654)
!3657 = !DILocation(line: 596, column: 9, scope: !3654)
!3658 = !DILocation(line: 591, column: 19, scope: !3641)
!3659 = !DILocation(line: 591, column: 36, scope: !3641)
!3660 = !DILocation(line: 591, column: 16, scope: !3641)
!3661 = !DILocation(line: 591, column: 52, scope: !3641)
!3662 = !DILocation(line: 591, column: 69, scope: !3641)
!3663 = !DILocation(line: 591, column: 49, scope: !3641)
!3664 = distinct !{!3664, !3643, !3665}
!3665 = !DILocation(line: 597, column: 7, scope: !3499)
!3666 = !DILocation(line: 602, column: 7, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3417, file: !536, line: 602, column: 7)
!3668 = !DILocation(line: 602, column: 18, scope: !3667)
!3669 = !DILocation(line: 602, column: 7, scope: !3417)
!3670 = !DILocation(line: 612, column: 3, scope: !3417)
!3671 = !DILocation(line: 66, column: 25, scope: !587)
!3672 = !DILocation(line: 66, column: 41, scope: !587)
!3673 = !DILocation(line: 66, column: 54, scope: !587)
!3674 = !DILocation(line: 68, column: 3, scope: !587)
!3675 = !DILocation(line: 81, column: 7, scope: !602)
!3676 = !DILocation(line: 81, column: 7, scope: !587)
!3677 = !DILocation(line: 68, column: 7, scope: !587)
!3678 = !DILocation(line: 84, column: 20, scope: !601)
!3679 = !DILocalVariable(name: "g", arg: 1, scope: !3680, file: !586, line: 43, type: !591)
!3680 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !586, file: !586, line: 43, type: !3681, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!591, !591, !137}
!3683 = !{!3679, !3684}
!3684 = !DILocalVariable(name: "num", arg: 2, scope: !3680, file: !586, line: 43, type: !137)
!3685 = !DILocation(line: 43, column: 26, scope: !3680, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 86, column: 11, scope: !601)
!3687 = !DILocation(line: 43, column: 36, scope: !3680, inlinedAt: !3686)
!3688 = !DILocation(line: 51, column: 10, scope: !3680, inlinedAt: !3686)
!3689 = !DILocation(line: 70, column: 10, scope: !587)
!3690 = !DILocation(line: 87, column: 13, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !601, file: !586, line: 87, column: 11)
!3692 = !DILocation(line: 87, column: 11, scope: !601)
!3693 = !DILocation(line: 93, column: 31, scope: !600)
!3694 = !DILocation(line: 93, column: 15, scope: !600)
!3695 = !DILocation(line: 96, column: 16, scope: !600)
!3696 = !DILocation(line: 69, column: 7, scope: !587)
!3697 = !DILocation(line: 100, column: 18, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !600, file: !586, line: 100, column: 15)
!3699 = !DILocation(line: 100, column: 39, scope: !3698)
!3700 = !DILocation(line: 100, column: 22, scope: !3698)
!3701 = !DILocation(line: 101, column: 26, scope: !3698)
!3702 = !DILocation(line: 101, column: 13, scope: !3698)
!3703 = !DILocation(line: 103, column: 41, scope: !606)
!3704 = !DILocation(line: 43, column: 26, scope: !3680, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 103, column: 20, scope: !606)
!3706 = !DILocation(line: 43, column: 36, scope: !3680, inlinedAt: !3705)
!3707 = !DILocation(line: 45, column: 7, scope: !3708, inlinedAt: !3705)
!3708 = distinct !DILexicalBlock(scope: !3680, file: !586, line: 45, column: 7)
!3709 = !DILocation(line: 45, column: 7, scope: !3680, inlinedAt: !3705)
!3710 = !DILocation(line: 47, column: 7, scope: !3711, inlinedAt: !3705)
!3711 = distinct !DILexicalBlock(scope: !3708, file: !586, line: 46, column: 5)
!3712 = !DILocation(line: 47, column: 13, scope: !3711, inlinedAt: !3705)
!3713 = !DILocation(line: 92, column: 18, scope: !600)
!3714 = !DILocation(line: 103, column: 15, scope: !600)
!3715 = !DILocation(line: 51, column: 26, scope: !3680, inlinedAt: !3705)
!3716 = !DILocation(line: 51, column: 10, scope: !3680, inlinedAt: !3705)
!3717 = !DILocation(line: 103, column: 56, scope: !606)
!3718 = !DILocation(line: 105, column: 33, scope: !605)
!3719 = !DILocation(line: 105, column: 19, scope: !605)
!3720 = !DILocation(line: 106, column: 15, scope: !605)
!3721 = !DILocation(line: 107, column: 21, scope: !605)
!3722 = !DILocation(line: 112, column: 17, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !600, file: !586, line: 112, column: 15)
!3724 = !DILocation(line: 112, column: 15, scope: !600)
!3725 = distinct !{!3725, !3726, !3727}
!3726 = !DILocation(line: 90, column: 7, scope: !601)
!3727 = !DILocation(line: 119, column: 9, scope: !601)
!3728 = !DILocation(line: 114, column: 23, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3723, file: !586, line: 113, column: 13)
!3730 = !DILocation(line: 117, column: 22, scope: !3729)
!3731 = !DILocation(line: 117, column: 15, scope: !3729)
!3732 = !DILocation(line: 126, column: 21, scope: !587)
!3733 = !DILocation(line: 124, column: 16, scope: !587)
!3734 = !DILocation(line: 131, column: 20, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !587, file: !586, line: 131, column: 7)
!3736 = !DILocation(line: 131, column: 7, scope: !587)
!3737 = !DILocation(line: 133, column: 11, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !586, line: 133, column: 11)
!3739 = distinct !DILexicalBlock(scope: !3735, file: !586, line: 132, column: 5)
!3740 = !DILocation(line: 133, column: 17, scope: !3738)
!3741 = !DILocation(line: 133, column: 27, scope: !3738)
!3742 = !DILocation(line: 43, column: 26, scope: !3680, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 133, column: 35, scope: !3738)
!3744 = !DILocation(line: 43, column: 36, scope: !3680, inlinedAt: !3743)
!3745 = !DILocation(line: 51, column: 10, scope: !3680, inlinedAt: !3743)
!3746 = !DILocation(line: 133, column: 33, scope: !3738)
!3747 = !DILocation(line: 133, column: 11, scope: !3739)
!3748 = !DILocation(line: 135, column: 19, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3738, file: !586, line: 134, column: 9)
!3750 = !DILocation(line: 136, column: 14, scope: !3749)
!3751 = !DILocation(line: 137, column: 22, scope: !3749)
!3752 = !DILocation(line: 137, column: 11, scope: !3749)
!3753 = !DILocation(line: 142, column: 20, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !587, file: !586, line: 142, column: 7)
!3755 = !DILocation(line: 142, column: 46, scope: !3754)
!3756 = !DILocation(line: 142, column: 25, scope: !3754)
!3757 = !DILocation(line: 143, column: 17, scope: !3754)
!3758 = !DILocation(line: 43, column: 26, scope: !3680, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 144, column: 7, scope: !587)
!3760 = !DILocation(line: 43, column: 36, scope: !3680, inlinedAt: !3759)
!3761 = !DILocation(line: 45, column: 7, scope: !3708, inlinedAt: !3759)
!3762 = !DILocation(line: 45, column: 7, scope: !3680, inlinedAt: !3759)
!3763 = !DILocation(line: 47, column: 7, scope: !3711, inlinedAt: !3759)
!3764 = !DILocation(line: 47, column: 13, scope: !3711, inlinedAt: !3759)
!3765 = !DILocation(line: 145, column: 7, scope: !587)
!3766 = !DILocation(line: 144, column: 31, scope: !587)
!3767 = !DILocation(line: 51, column: 26, scope: !3680, inlinedAt: !3759)
!3768 = !DILocation(line: 51, column: 10, scope: !3680, inlinedAt: !3759)
!3769 = !DILocation(line: 145, column: 9, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !587, file: !586, line: 145, column: 7)
!3771 = !DILocation(line: 150, column: 42, scope: !587)
!3772 = !DILocation(line: 150, column: 35, scope: !587)
!3773 = !DILocation(line: 151, column: 35, scope: !587)
!3774 = !DILocation(line: 150, column: 11, scope: !587)
!3775 = !DILocation(line: 153, column: 10, scope: !609)
!3776 = !DILocation(line: 153, column: 7, scope: !587)
!3777 = !DILocation(line: 156, column: 25, scope: !608)
!3778 = !DILocation(line: 156, column: 11, scope: !608)
!3779 = !DILocation(line: 157, column: 7, scope: !608)
!3780 = !DILocation(line: 158, column: 13, scope: !608)
!3781 = !DILocation(line: 162, column: 17, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !587, file: !586, line: 162, column: 7)
!3783 = !DILocation(line: 164, column: 10, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3782, file: !586, line: 163, column: 5)
!3785 = !DILocation(line: 165, column: 9, scope: !3784)
!3786 = !DILocation(line: 166, column: 5, scope: !3784)
!3787 = !DILocation(line: 167, column: 11, scope: !587)
!3788 = !DILocation(line: 185, column: 9, scope: !612)
!3789 = !DILocation(line: 185, column: 7, scope: !587)
!3790 = !DILocation(line: 187, column: 21, scope: !611)
!3791 = !DILocation(line: 187, column: 13, scope: !611)
!3792 = !DILocation(line: 189, column: 29, scope: !611)
!3793 = !DILocation(line: 189, column: 14, scope: !611)
!3794 = !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)
!3795 = !DILocation(line: 188, column: 14, scope: !611)
!3796 = !DILocation(line: 191, column: 31, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !586, line: 191, column: 7)
!3798 = distinct !DILexicalBlock(scope: !611, file: !586, line: 191, column: 7)
!3799 = !DILocation(line: 191, column: 7, scope: !3798)
!3800 = !DILocation(line: 193, column: 15, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !586, line: 193, column: 15)
!3802 = distinct !DILexicalBlock(scope: !3797, file: !586, line: 192, column: 9)
!3803 = !DILocation(line: 193, column: 39, scope: !3801)
!3804 = !DILocation(line: 193, column: 30, scope: !3801)
!3805 = !DILocation(line: 196, column: 14, scope: !3801)
!3806 = !DILocation(line: 196, column: 18, scope: !3801)
!3807 = !DILocation(line: 194, column: 15, scope: !3801)
!3808 = !DILocation(line: 194, column: 13, scope: !3801)
!3809 = !DILocation(line: 193, column: 21, scope: !3801)
!3810 = !DILocation(line: 201, column: 1, scope: !587)
!3811 = distinct !{!3811, !3799, !3812}
!3812 = !DILocation(line: 197, column: 9, scope: !3798)
!3813 = distinct !DISubprogram(name: "rpl_fclose", scope: !3814, file: !3814, line: 56, type: !3815, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !618, variables: !3857)
!3814 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!40, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2777, line: 7, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2779, line: 241, size: 1728, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3819, file: !2779, line: 242, baseType: !40, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3819, file: !2779, line: 247, baseType: !6, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3819, file: !2779, line: 248, baseType: !6, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3819, file: !2779, line: 249, baseType: !6, size: 64, offset: 192)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3819, file: !2779, line: 250, baseType: !6, size: 64, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3819, file: !2779, line: 251, baseType: !6, size: 64, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3819, file: !2779, line: 252, baseType: !6, size: 64, offset: 384)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3819, file: !2779, line: 253, baseType: !6, size: 64, offset: 448)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3819, file: !2779, line: 254, baseType: !6, size: 64, offset: 512)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3819, file: !2779, line: 256, baseType: !6, size: 64, offset: 576)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3819, file: !2779, line: 257, baseType: !6, size: 64, offset: 640)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3819, file: !2779, line: 258, baseType: !6, size: 64, offset: 704)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3819, file: !2779, line: 260, baseType: !3834, size: 64, offset: 768)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2779, line: 156, size: 192, elements: !3836)
!3836 = !{!3837, !3838, !3840}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3835, file: !2779, line: 157, baseType: !3834, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3835, file: !2779, line: 158, baseType: !3839, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3835, file: !2779, line: 162, baseType: !40, size: 32, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3819, file: !2779, line: 262, baseType: !3839, size: 64, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3819, file: !2779, line: 264, baseType: !40, size: 32, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3819, file: !2779, line: 268, baseType: !40, size: 32, offset: 928)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3819, file: !2779, line: 270, baseType: !2805, size: 64, offset: 960)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3819, file: !2779, line: 274, baseType: !136, size: 16, offset: 1024)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3819, file: !2779, line: 275, baseType: !2809, size: 8, offset: 1040)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3819, file: !2779, line: 276, baseType: !2811, size: 8, offset: 1048)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3819, file: !2779, line: 280, baseType: !2815, size: 64, offset: 1088)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3819, file: !2779, line: 289, baseType: !2818, size: 64, offset: 1152)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3819, file: !2779, line: 297, baseType: !8, size: 64, offset: 1216)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3819, file: !2779, line: 298, baseType: !8, size: 64, offset: 1280)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3819, file: !2779, line: 299, baseType: !8, size: 64, offset: 1344)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3819, file: !2779, line: 300, baseType: !8, size: 64, offset: 1408)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3819, file: !2779, line: 302, baseType: !137, size: 64, offset: 1472)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3819, file: !2779, line: 303, baseType: !40, size: 32, offset: 1536)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3819, file: !2779, line: 305, baseType: !2826, size: 160, offset: 1568)
!3857 = !{!3858, !3859, !3860, !3861}
!3858 = !DILocalVariable(name: "fp", arg: 1, scope: !3813, file: !3814, line: 56, type: !3817)
!3859 = !DILocalVariable(name: "saved_errno", scope: !3813, file: !3814, line: 58, type: !40)
!3860 = !DILocalVariable(name: "fd", scope: !3813, file: !3814, line: 59, type: !40)
!3861 = !DILocalVariable(name: "result", scope: !3813, file: !3814, line: 60, type: !40)
!3862 = !DILocation(line: 56, column: 19, scope: !3813)
!3863 = !DILocation(line: 58, column: 7, scope: !3813)
!3864 = !DILocation(line: 60, column: 7, scope: !3813)
!3865 = !DILocation(line: 63, column: 8, scope: !3813)
!3866 = !DILocation(line: 59, column: 7, scope: !3813)
!3867 = !DILocation(line: 64, column: 10, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3813, file: !3814, line: 64, column: 7)
!3869 = !DILocation(line: 64, column: 7, scope: !3813)
!3870 = !DILocation(line: 65, column: 12, scope: !3868)
!3871 = !DILocation(line: 65, column: 5, scope: !3868)
!3872 = !DILocation(line: 70, column: 9, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3813, file: !3814, line: 70, column: 7)
!3874 = !DILocation(line: 70, column: 23, scope: !3873)
!3875 = !DILocation(line: 70, column: 33, scope: !3873)
!3876 = !DILocation(line: 70, column: 26, scope: !3873)
!3877 = !DILocation(line: 70, column: 59, scope: !3873)
!3878 = !DILocation(line: 71, column: 7, scope: !3873)
!3879 = !DILocation(line: 71, column: 10, scope: !3873)
!3880 = !DILocation(line: 70, column: 7, scope: !3813)
!3881 = !DILocation(line: 98, column: 12, scope: !3813)
!3882 = !DILocation(line: 103, column: 7, scope: !3813)
!3883 = !DILocation(line: 72, column: 19, scope: !3873)
!3884 = !DILocation(line: 103, column: 19, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3813, file: !3814, line: 103, column: 7)
!3886 = !DILocation(line: 105, column: 13, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3885, file: !3814, line: 104, column: 5)
!3888 = !DILocation(line: 107, column: 5, scope: !3887)
!3889 = !DILocation(line: 110, column: 1, scope: !3813)
!3890 = distinct !DISubprogram(name: "rpl_fflush", scope: !3891, file: !3891, line: 127, type: !3892, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3934)
!3891 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!40, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2777, line: 7, baseType: !3896)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2779, line: 241, size: 1728, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3896, file: !2779, line: 242, baseType: !40, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3896, file: !2779, line: 247, baseType: !6, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3896, file: !2779, line: 248, baseType: !6, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3896, file: !2779, line: 249, baseType: !6, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3896, file: !2779, line: 250, baseType: !6, size: 64, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3896, file: !2779, line: 251, baseType: !6, size: 64, offset: 320)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3896, file: !2779, line: 252, baseType: !6, size: 64, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3896, file: !2779, line: 253, baseType: !6, size: 64, offset: 448)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3896, file: !2779, line: 254, baseType: !6, size: 64, offset: 512)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3896, file: !2779, line: 256, baseType: !6, size: 64, offset: 576)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3896, file: !2779, line: 257, baseType: !6, size: 64, offset: 640)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3896, file: !2779, line: 258, baseType: !6, size: 64, offset: 704)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3896, file: !2779, line: 260, baseType: !3911, size: 64, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2779, line: 156, size: 192, elements: !3913)
!3913 = !{!3914, !3915, !3917}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3912, file: !2779, line: 157, baseType: !3911, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3912, file: !2779, line: 158, baseType: !3916, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3912, file: !2779, line: 162, baseType: !40, size: 32, offset: 128)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3896, file: !2779, line: 262, baseType: !3916, size: 64, offset: 832)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3896, file: !2779, line: 264, baseType: !40, size: 32, offset: 896)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3896, file: !2779, line: 268, baseType: !40, size: 32, offset: 928)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3896, file: !2779, line: 270, baseType: !2805, size: 64, offset: 960)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3896, file: !2779, line: 274, baseType: !136, size: 16, offset: 1024)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3896, file: !2779, line: 275, baseType: !2809, size: 8, offset: 1040)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3896, file: !2779, line: 276, baseType: !2811, size: 8, offset: 1048)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3896, file: !2779, line: 280, baseType: !2815, size: 64, offset: 1088)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3896, file: !2779, line: 289, baseType: !2818, size: 64, offset: 1152)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3896, file: !2779, line: 297, baseType: !8, size: 64, offset: 1216)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3896, file: !2779, line: 298, baseType: !8, size: 64, offset: 1280)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3896, file: !2779, line: 299, baseType: !8, size: 64, offset: 1344)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3896, file: !2779, line: 300, baseType: !8, size: 64, offset: 1408)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3896, file: !2779, line: 302, baseType: !137, size: 64, offset: 1472)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3896, file: !2779, line: 303, baseType: !40, size: 32, offset: 1536)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3896, file: !2779, line: 305, baseType: !2826, size: 160, offset: 1568)
!3934 = !{!3935}
!3935 = !DILocalVariable(name: "stream", arg: 1, scope: !3890, file: !3891, line: 127, type: !3894)
!3936 = !DILocation(line: 127, column: 19, scope: !3890)
!3937 = !DILocation(line: 148, column: 14, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3890, file: !3891, line: 148, column: 7)
!3939 = !DILocation(line: 148, column: 22, scope: !3938)
!3940 = !DILocation(line: 148, column: 27, scope: !3938)
!3941 = !DILocation(line: 148, column: 7, scope: !3890)
!3942 = !DILocation(line: 149, column: 12, scope: !3938)
!3943 = !DILocation(line: 149, column: 5, scope: !3938)
!3944 = !DILocalVariable(name: "fp", arg: 1, scope: !3945, file: !3891, line: 40, type: !3894)
!3945 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3891, file: !3891, line: 40, type: !3946, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !3948)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{null, !3894}
!3948 = !{!3944}
!3949 = !DILocation(line: 40, column: 48, scope: !3945, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 153, column: 3, scope: !3890)
!3951 = !DILocation(line: 42, column: 11, scope: !3952, inlinedAt: !3950)
!3952 = distinct !DILexicalBlock(scope: !3945, file: !3891, line: 42, column: 7)
!3953 = !DILocation(line: 42, column: 18, scope: !3952, inlinedAt: !3950)
!3954 = !DILocation(line: 42, column: 7, scope: !3945, inlinedAt: !3950)
!3955 = !DILocation(line: 44, column: 5, scope: !3952, inlinedAt: !3950)
!3956 = !DILocation(line: 155, column: 10, scope: !3890)
!3957 = !DILocation(line: 155, column: 3, scope: !3890)
!3958 = !DILocation(line: 229, column: 1, scope: !3890)
!3959 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3960, file: !3960, line: 28, type: !3961, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !4004)
!3960 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!40, !3963, !4003, !40}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2777, line: 7, baseType: !3965)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2779, line: 241, size: 1728, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3965, file: !2779, line: 242, baseType: !40, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3965, file: !2779, line: 247, baseType: !6, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3965, file: !2779, line: 248, baseType: !6, size: 64, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3965, file: !2779, line: 249, baseType: !6, size: 64, offset: 192)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3965, file: !2779, line: 250, baseType: !6, size: 64, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3965, file: !2779, line: 251, baseType: !6, size: 64, offset: 320)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3965, file: !2779, line: 252, baseType: !6, size: 64, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3965, file: !2779, line: 253, baseType: !6, size: 64, offset: 448)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3965, file: !2779, line: 254, baseType: !6, size: 64, offset: 512)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3965, file: !2779, line: 256, baseType: !6, size: 64, offset: 576)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3965, file: !2779, line: 257, baseType: !6, size: 64, offset: 640)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3965, file: !2779, line: 258, baseType: !6, size: 64, offset: 704)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3965, file: !2779, line: 260, baseType: !3980, size: 64, offset: 768)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2779, line: 156, size: 192, elements: !3982)
!3982 = !{!3983, !3984, !3986}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3981, file: !2779, line: 157, baseType: !3980, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3981, file: !2779, line: 158, baseType: !3985, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3981, file: !2779, line: 162, baseType: !40, size: 32, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3965, file: !2779, line: 262, baseType: !3985, size: 64, offset: 832)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3965, file: !2779, line: 264, baseType: !40, size: 32, offset: 896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3965, file: !2779, line: 268, baseType: !40, size: 32, offset: 928)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3965, file: !2779, line: 270, baseType: !2805, size: 64, offset: 960)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3965, file: !2779, line: 274, baseType: !136, size: 16, offset: 1024)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3965, file: !2779, line: 275, baseType: !2809, size: 8, offset: 1040)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3965, file: !2779, line: 276, baseType: !2811, size: 8, offset: 1048)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3965, file: !2779, line: 280, baseType: !2815, size: 64, offset: 1088)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3965, file: !2779, line: 289, baseType: !2818, size: 64, offset: 1152)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3965, file: !2779, line: 297, baseType: !8, size: 64, offset: 1216)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3965, file: !2779, line: 298, baseType: !8, size: 64, offset: 1280)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3965, file: !2779, line: 299, baseType: !8, size: 64, offset: 1344)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3965, file: !2779, line: 300, baseType: !8, size: 64, offset: 1408)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3965, file: !2779, line: 302, baseType: !137, size: 64, offset: 1472)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3965, file: !2779, line: 303, baseType: !40, size: 32, offset: 1536)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3965, file: !2779, line: 305, baseType: !2826, size: 160, offset: 1568)
!4003 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2946, line: 57, baseType: !2805)
!4004 = !{!4005, !4006, !4007, !4008}
!4005 = !DILocalVariable(name: "fp", arg: 1, scope: !3959, file: !3960, line: 28, type: !3963)
!4006 = !DILocalVariable(name: "offset", arg: 2, scope: !3959, file: !3960, line: 28, type: !4003)
!4007 = !DILocalVariable(name: "whence", arg: 3, scope: !3959, file: !3960, line: 28, type: !40)
!4008 = !DILocalVariable(name: "pos", scope: !4009, file: !3960, line: 116, type: !4003)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !3960, line: 112, column: 5)
!4010 = distinct !DILexicalBlock(scope: !3959, file: !3960, line: 51, column: 7)
!4011 = !DILocation(line: 28, column: 15, scope: !3959)
!4012 = !DILocation(line: 28, column: 25, scope: !3959)
!4013 = !DILocation(line: 28, column: 37, scope: !3959)
!4014 = !DILocation(line: 51, column: 11, scope: !4010)
!4015 = !DILocation(line: 51, column: 31, scope: !4010)
!4016 = !DILocation(line: 51, column: 24, scope: !4010)
!4017 = !DILocation(line: 52, column: 7, scope: !4010)
!4018 = !DILocation(line: 52, column: 14, scope: !4010)
!4019 = !DILocation(line: 52, column: 35, scope: !4010)
!4020 = !{!764, !643, i64 32}
!4021 = !DILocation(line: 52, column: 28, scope: !4010)
!4022 = !DILocation(line: 53, column: 7, scope: !4010)
!4023 = !DILocation(line: 53, column: 14, scope: !4010)
!4024 = !{!764, !643, i64 72}
!4025 = !DILocation(line: 53, column: 28, scope: !4010)
!4026 = !DILocation(line: 51, column: 7, scope: !3959)
!4027 = !DILocation(line: 116, column: 26, scope: !4009)
!4028 = !DILocation(line: 116, column: 19, scope: !4009)
!4029 = !DILocation(line: 116, column: 13, scope: !4009)
!4030 = !DILocation(line: 117, column: 15, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4009, file: !3960, line: 117, column: 11)
!4032 = !DILocation(line: 117, column: 11, scope: !4009)
!4033 = !DILocation(line: 127, column: 11, scope: !4009)
!4034 = !DILocation(line: 127, column: 18, scope: !4009)
!4035 = !DILocation(line: 128, column: 11, scope: !4009)
!4036 = !DILocation(line: 128, column: 19, scope: !4009)
!4037 = !{!764, !765, i64 144}
!4038 = !DILocation(line: 159, column: 7, scope: !4009)
!4039 = !DILocation(line: 161, column: 10, scope: !3959)
!4040 = !DILocation(line: 161, column: 3, scope: !3959)
!4041 = !DILocation(line: 162, column: 1, scope: !3959)
