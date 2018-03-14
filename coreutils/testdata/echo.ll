; ModuleID = 'coreutils-8.27/src/echo.bc'
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

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Usage: %s [SHORT-OPTION]... [STRING]...\0A  or:  %s LONG-OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"Echo the STRING(s) to standard output.\0A\0A  -n             do not output the trailing newline\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [132 x i8] c"  -e             enable interpretation of backslash escapes\0A  -E             disable interpretation of backslash escapes (default)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"\0AIf -e is in effect, the following sequences are recognized:\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [229 x i8] c"  \5C\5C      backslash\0A  \5Ca      alert (BEL)\0A  \5Cb      backspace\0A  \5Cc      produce no further output\0A  \5Ce      escape\0A  \5Cf      form feed\0A  \5Cn      new line\0A  \5Cr      carriage return\0A  \5Ct      horizontal tab\0A  \5Cv      vertical tab\0A\00", align 1
@.str.8 = private unnamed_addr constant [110 x i8] c"  \5C0NNN   byte with octal value NNN (1 to 3 digits)\0A  \5CxHH    byte with hexadecimal value HH (1 to 2 digits)\0A\00", align 1
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Brian Fox\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Chet Ramey\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !0
@.str.21 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !18
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !26
@.str.36 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.37 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.38 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.42, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.48, i32 0, i32 0), i8* null], align 16, !dbg !35
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !80
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !87
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !100
@.str.11.49 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.50 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.51 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.52 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.53 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.54 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.55 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !107
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !114
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !102
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !116
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
@.str.19.79 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !122
@.str.1.90 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.101 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.104 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !131
@.str.3.105 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.106 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.107 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.108 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.109 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.110 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !556 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !560, metadata !561), !dbg !562
  %2 = icmp eq i32 %0, 0, !dbg !563
  br i1 %2, label %8, label %3, !dbg !565

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !566, !tbaa !568
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !566
  %6 = load i8*, i8** @program_name, align 8, !dbg !566, !tbaa !568
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !566
  br label %50, !dbg !566

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !572
  %10 = load i8*, i8** @program_name, align 8, !dbg !572, !tbaa !568
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #9, !dbg !572
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !574
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !574, !tbaa !568
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !574
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !575
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !575, !tbaa !568
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !575
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !576
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !576, !tbaa !568
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !576
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !577
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !577, !tbaa !568
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !577
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !578
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !578, !tbaa !568
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9, !dbg !578
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.7, i64 0, i64 0), i32 5) #9, !dbg !579
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !579, !tbaa !568
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #9, !dbg !579
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.8, i64 0, i64 0), i32 5) #9, !dbg !580
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !580, !tbaa !568
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #9, !dbg !580
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #9, !dbg !581
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !581
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !496, metadata !561) #9, !dbg !582
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !496, metadata !561) #9, !dbg !582
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #9, !dbg !584
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !584
  %37 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !585
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !504, metadata !561) #9, !dbg !586
  %38 = icmp eq i8* %37, null, !dbg !587
  br i1 %38, label %45, label %39, !dbg !589

; <label>:39:                                     ; preds = %8
  %40 = tail call i32 @strncmp(i8* nonnull %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #14, !dbg !590
  %41 = icmp eq i32 %40, 0, !dbg !590
  br i1 %41, label %45, label %42, !dbg !591

; <label>:42:                                     ; preds = %39
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #9, !dbg !592
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !592
  br label %45, !dbg !594

; <label>:45:                                     ; preds = %8, %39, %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #9, !dbg !595
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !595
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #9, !dbg !596
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !596
  br label %50

; <label>:50:                                     ; preds = %45, %3
  tail call void @exit(i32 %0) #15, !dbg !597
  unreachable, !dbg !597
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
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #6 !dbg !598 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !603, metadata !561), !dbg !623
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !605, metadata !561), !dbg !625
  %3 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !626
  %4 = icmp eq i8* %3, null, !dbg !626
  br i1 %4, label %12, label %5, !dbg !627

; <label>:5:                                      ; preds = %2
  %6 = icmp sgt i32 %0, 1, !dbg !628
  br i1 %6, label %7, label %12, !dbg !629

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !630
  %9 = load i8*, i8** %8, align 8, !dbg !630, !tbaa !568
  %10 = tail call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #14, !dbg !630
  %11 = icmp eq i32 %10, 0, !dbg !630
  br label %12

; <label>:12:                                     ; preds = %2, %5, %7
  %13 = phi i1 [ true, %2 ], [ false, %5 ], [ %11, %7 ]
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !607, metadata !561), !dbg !631
  %14 = load i8*, i8** %1, align 8, !dbg !632, !tbaa !568
  tail call void @set_program_name(i8* %14) #9, !dbg !633
  %15 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !634
  %16 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !635
  %17 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !636
  %18 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !637
  %19 = icmp eq i32 %0, 2, !dbg !638
  %20 = and i1 %19, %13, !dbg !640
  %21 = getelementptr inbounds i8*, i8** %1, i64 1
  br i1 %20, label %22, label %33, !dbg !640

; <label>:22:                                     ; preds = %12
  %23 = load i8*, i8** %21, align 8, !dbg !641, !tbaa !568
  %24 = tail call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0)) #14, !dbg !641
  %25 = icmp eq i32 %24, 0, !dbg !641
  br i1 %25, label %26, label %27, !dbg !644

; <label>:26:                                     ; preds = %22
  tail call void @usage(i32 0) #16, !dbg !645
  unreachable, !dbg !645

; <label>:27:                                     ; preds = %22
  %28 = tail call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #14, !dbg !646
  %29 = icmp eq i32 %28, 0, !dbg !646
  br i1 %29, label %30, label %33, !dbg !648

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !649, !tbaa !568
  %32 = load i8*, i8** @Version, align 8, !dbg !651, !tbaa !568
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* null) #9, !dbg !652
  br label %288, !dbg !653

; <label>:33:                                     ; preds = %12, %27
  %34 = add nsw i32 %0, -1, !dbg !654
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !603, metadata !561), !dbg !623
  tail call void @llvm.dbg.value(metadata i8** %21, i64 0, metadata !604, metadata !561), !dbg !624
  %35 = icmp sgt i32 %0, 1, !dbg !655
  %36 = and i1 %13, %35, !dbg !656
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !607, metadata !561), !dbg !631
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !605, metadata !561), !dbg !625
  tail call void @llvm.dbg.value(metadata i8** %21, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !603, metadata !561), !dbg !623
  br i1 %36, label %37, label %245, !dbg !656

; <label>:37:                                     ; preds = %33
  br label %38, !dbg !657

; <label>:38:                                     ; preds = %37, %79
  %39 = phi i8 [ %81, %79 ], [ 0, %37 ]
  %40 = phi i8 [ %80, %79 ], [ 1, %37 ]
  %41 = phi i8** [ %83, %79 ], [ %21, %37 ]
  %42 = phi i32 [ %82, %79 ], [ %34, %37 ]
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !603, metadata !561), !dbg !623
  tail call void @llvm.dbg.value(metadata i8** %41, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i8 %40, i64 0, metadata !605, metadata !561), !dbg !625
  tail call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !607, metadata !561), !dbg !631
  %43 = load i8*, i8** %41, align 8, !dbg !657, !tbaa !568
  %44 = load i8, i8* %43, align 1, !dbg !658, !tbaa !659
  %45 = icmp eq i8 %44, 45, !dbg !660
  br i1 %45, label %46, label %85, !dbg !661

; <label>:46:                                     ; preds = %38
  %47 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !662
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !608, metadata !561), !dbg !663
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !611, metadata !561), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !611, metadata !561), !dbg !664
  %48 = load i8, i8* %47, align 1, !dbg !665, !tbaa !659
  %49 = icmp eq i8 %48, 0, !dbg !668
  br i1 %49, label %85, label %50, !dbg !668

; <label>:50:                                     ; preds = %46
  br label %51, !dbg !669

; <label>:51:                                     ; preds = %50, %55
  %52 = phi i8 [ %58, %55 ], [ %48, %50 ]
  %53 = phi i64 [ %56, %55 ], [ 0, %50 ]
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !611, metadata !561), !dbg !664
  %54 = sext i8 %52 to i32, !dbg !669
  switch i32 %54, label %85 [
    i32 101, label %55
    i32 69, label %55
    i32 110, label %55
  ], !dbg !670

; <label>:55:                                     ; preds = %51, %51, %51
  %56 = add i64 %53, 1, !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !611, metadata !561), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !611, metadata !561), !dbg !664
  %57 = getelementptr inbounds i8, i8* %47, i64 %56, !dbg !665
  %58 = load i8, i8* %57, align 1, !dbg !665, !tbaa !659
  %59 = icmp eq i8 %58, 0, !dbg !668
  br i1 %59, label %60, label %51, !dbg !668, !llvm.loop !672

; <label>:60:                                     ; preds = %55
  %61 = icmp eq i64 %56, 0, !dbg !674
  br i1 %61, label %85, label %62, !dbg !676

; <label>:62:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !608, metadata !561), !dbg !663
  tail call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !607, metadata !561), !dbg !631
  tail call void @llvm.dbg.value(metadata i8 %40, i64 0, metadata !605, metadata !561), !dbg !625
  br i1 %49, label %79, label %63, !dbg !677

; <label>:63:                                     ; preds = %62
  br label %64, !dbg !678

; <label>:64:                                     ; preds = %63, %74
  %65 = phi i8 [ %77, %74 ], [ %48, %63 ]
  %66 = phi i8* [ %69, %74 ], [ %47, %63 ]
  %67 = phi i8 [ %76, %74 ], [ %39, %63 ]
  %68 = phi i8 [ %75, %74 ], [ %40, %63 ]
  tail call void @llvm.dbg.value(metadata i8 %68, i64 0, metadata !605, metadata !561), !dbg !625
  tail call void @llvm.dbg.value(metadata i8 %67, i64 0, metadata !607, metadata !561), !dbg !631
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !608, metadata !561), !dbg !663
  %69 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !678
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !608, metadata !561), !dbg !663
  %70 = sext i8 %65 to i32, !dbg !679
  switch i32 %70, label %74 [
    i32 101, label %71
    i32 69, label %72
    i32 110, label %73
  ], !dbg !680

; <label>:71:                                     ; preds = %64
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !607, metadata !561), !dbg !631
  br label %74, !dbg !681

; <label>:72:                                     ; preds = %64
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !607, metadata !561), !dbg !631
  br label %74, !dbg !683

; <label>:73:                                     ; preds = %64
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !605, metadata !561), !dbg !625
  br label %74, !dbg !684

; <label>:74:                                     ; preds = %64, %73, %72, %71
  %75 = phi i8 [ %68, %64 ], [ 0, %73 ], [ %68, %72 ], [ %68, %71 ]
  %76 = phi i8 [ %67, %64 ], [ %67, %73 ], [ 0, %72 ], [ 1, %71 ]
  tail call void @llvm.dbg.value(metadata i8 %76, i64 0, metadata !607, metadata !561), !dbg !631
  tail call void @llvm.dbg.value(metadata i8 %75, i64 0, metadata !605, metadata !561), !dbg !625
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !608, metadata !561), !dbg !663
  tail call void @llvm.dbg.value(metadata i8 %76, i64 0, metadata !607, metadata !561), !dbg !631
  tail call void @llvm.dbg.value(metadata i8 %75, i64 0, metadata !605, metadata !561), !dbg !625
  %77 = load i8, i8* %69, align 1, !dbg !685, !tbaa !659
  %78 = icmp eq i8 %77, 0, !dbg !677
  br i1 %78, label %79, label %64, !dbg !677, !llvm.loop !686

; <label>:79:                                     ; preds = %74, %62
  %80 = phi i8 [ %40, %62 ], [ %75, %74 ]
  %81 = phi i8 [ %39, %62 ], [ %76, %74 ]
  %82 = add nsw i32 %42, -1, !dbg !688
  tail call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !603, metadata !561), !dbg !623
  %83 = getelementptr inbounds i8*, i8** %41, i64 1, !dbg !689
  tail call void @llvm.dbg.value(metadata i8** %83, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !607, metadata !561), !dbg !631
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !605, metadata !561), !dbg !625
  tail call void @llvm.dbg.value(metadata i8** %83, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !603, metadata !561), !dbg !623
  tail call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !607, metadata !561), !dbg !631
  tail call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !605, metadata !561), !dbg !625
  tail call void @llvm.dbg.value(metadata i8** %83, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !603, metadata !561), !dbg !623
  %84 = icmp sgt i32 %42, 1, !dbg !655
  br i1 %84, label %38, label %85, !dbg !690, !llvm.loop !691

; <label>:85:                                     ; preds = %46, %38, %79, %60, %51
  %86 = phi i32 [ %42, %51 ], [ %42, %46 ], [ %42, %38 ], [ %82, %79 ], [ %42, %60 ]
  %87 = phi i8** [ %41, %51 ], [ %41, %46 ], [ %41, %38 ], [ %83, %79 ], [ %41, %60 ]
  %88 = phi i8 [ %40, %51 ], [ %40, %46 ], [ %40, %38 ], [ %80, %79 ], [ %40, %60 ]
  %89 = phi i8 [ %39, %51 ], [ %39, %46 ], [ %39, %38 ], [ %81, %79 ], [ %39, %60 ]
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !607, metadata !561), !dbg !631
  tail call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !605, metadata !561), !dbg !625
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !603, metadata !561), !dbg !623
  %90 = and i8 %89, 1, !dbg !693
  %91 = icmp eq i8 %90, 0, !dbg !693
  br i1 %91, label %245, label %92, !dbg !694

; <label>:92:                                     ; preds = %85
  tail call void @llvm.dbg.value(metadata i8** %87, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !603, metadata !561), !dbg !623
  %93 = icmp sgt i32 %86, 0, !dbg !695
  br i1 %93, label %94, label %273, !dbg !696

; <label>:94:                                     ; preds = %92
  br label %95, !dbg !697

; <label>:95:                                     ; preds = %94, %241
  %96 = phi i8** [ %242, %241 ], [ %87, %94 ]
  %97 = phi i32 [ %243, %241 ], [ %86, %94 ]
  tail call void @llvm.dbg.value(metadata i32 %97, i64 0, metadata !603, metadata !561), !dbg !623
  tail call void @llvm.dbg.value(metadata i8** %96, i64 0, metadata !604, metadata !561), !dbg !624
  %98 = load i8*, i8** %96, align 8, !dbg !697, !tbaa !568
  tail call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !612, metadata !561), !dbg !698
  br label %99, !dbg !699

; <label>:99:                                     ; preds = %221, %95
  %100 = phi i8* [ %98, %95 ], [ %210, %221 ]
  tail call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !612, metadata !561), !dbg !698
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !700
  tail call void @llvm.dbg.value(metadata i8* %101, i64 0, metadata !612, metadata !561), !dbg !698
  %102 = load i8, i8* %100, align 1, !dbg !701, !tbaa !659
  tail call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !616, metadata !561), !dbg !702
  switch i8 %102, label %209 [
    i8 0, label %224
    i8 92, label %103
  ], !dbg !699

; <label>:103:                                    ; preds = %99
  %104 = load i8, i8* %101, align 1, !dbg !703, !tbaa !659
  %105 = icmp eq i8 %104, 0, !dbg !703
  br i1 %105, label %209, label %106, !dbg !704

; <label>:106:                                    ; preds = %103
  %107 = getelementptr inbounds i8, i8* %100, i64 2, !dbg !705
  tail call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !612, metadata !561), !dbg !698
  tail call void @llvm.dbg.value(metadata i8 %104, i64 0, metadata !616, metadata !561), !dbg !702
  switch i8 %104, label %196 [
    i8 97, label %108
    i8 98, label %109
    i8 99, label %288
    i8 101, label %110
    i8 102, label %111
    i8 110, label %112
    i8 114, label %113
    i8 116, label %114
    i8 118, label %115
    i8 120, label %116
    i8 48, label %166
    i8 49, label %172
    i8 50, label %172
    i8 51, label %172
    i8 52, label %172
    i8 53, label %172
    i8 54, label %172
    i8 55, label %172
    i8 92, label %209
  ], !dbg !706

; <label>:108:                                    ; preds = %106
  tail call void @llvm.dbg.value(metadata i8 7, i64 0, metadata !616, metadata !561), !dbg !702
  br label %209, !dbg !707

; <label>:109:                                    ; preds = %106
  tail call void @llvm.dbg.value(metadata i8 8, i64 0, metadata !616, metadata !561), !dbg !702
  br label %209, !dbg !708

; <label>:110:                                    ; preds = %106
  tail call void @llvm.dbg.value(metadata i8 27, i64 0, metadata !616, metadata !561), !dbg !702
  br label %209, !dbg !709

; <label>:111:                                    ; preds = %106
  tail call void @llvm.dbg.value(metadata i8 12, i64 0, metadata !616, metadata !561), !dbg !702
  br label %209, !dbg !710

; <label>:112:                                    ; preds = %106
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !616, metadata !561), !dbg !702
  br label %209, !dbg !711

; <label>:113:                                    ; preds = %106
  tail call void @llvm.dbg.value(metadata i8 13, i64 0, metadata !616, metadata !561), !dbg !702
  br label %209, !dbg !712

; <label>:114:                                    ; preds = %106
  tail call void @llvm.dbg.value(metadata i8 9, i64 0, metadata !616, metadata !561), !dbg !702
  br label %209, !dbg !713

; <label>:115:                                    ; preds = %106
  tail call void @llvm.dbg.value(metadata i8 11, i64 0, metadata !616, metadata !561), !dbg !702
  br label %209, !dbg !714

; <label>:116:                                    ; preds = %106
  %117 = load i8, i8* %107, align 1, !dbg !715, !tbaa !659
  tail call void @llvm.dbg.value(metadata i8 %117, i64 0, metadata !617, metadata !561), !dbg !716
  %118 = tail call i16** @__ctype_b_loc() #17, !dbg !717
  %119 = load i16*, i16** %118, align 8, !dbg !717, !tbaa !568
  %120 = zext i8 %117 to i64, !dbg !717
  %121 = getelementptr inbounds i16, i16* %119, i64 %120, !dbg !717
  %122 = load i16, i16* %121, align 2, !dbg !717, !tbaa !719
  %123 = and i16 %122, 4096, !dbg !717
  %124 = icmp eq i16 %123, 0, !dbg !717
  br i1 %124, label %161, label %125, !dbg !721

; <label>:125:                                    ; preds = %116
  %126 = getelementptr inbounds i8, i8* %100, i64 3, !dbg !722
  tail call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !612, metadata !561), !dbg !698
  tail call void @llvm.dbg.value(metadata i8 %117, i64 0, metadata !723, metadata !561), !dbg !728
  switch i8 %117, label %127 [
    i8 97, label %135
    i8 65, label %135
    i8 98, label %130
    i8 66, label %130
    i8 99, label %131
    i8 67, label %131
    i8 100, label %132
    i8 68, label %132
    i8 101, label %133
    i8 69, label %133
    i8 102, label %134
    i8 70, label %134
  ], !dbg !730

; <label>:127:                                    ; preds = %125
  %128 = zext i8 %117 to i32, !dbg !731
  %129 = add nsw i32 %128, -48, !dbg !732
  br label %135, !dbg !734

; <label>:130:                                    ; preds = %125, %125
  br label %135, !dbg !735

; <label>:131:                                    ; preds = %125, %125
  br label %135, !dbg !736

; <label>:132:                                    ; preds = %125, %125
  br label %135, !dbg !737

; <label>:133:                                    ; preds = %125, %125
  br label %135, !dbg !738

; <label>:134:                                    ; preds = %125, %125
  br label %135, !dbg !739

; <label>:135:                                    ; preds = %125, %125, %127, %130, %131, %132, %133, %134
  %136 = phi i32 [ %129, %127 ], [ 15, %134 ], [ 14, %133 ], [ 13, %132 ], [ 12, %131 ], [ 11, %130 ], [ 10, %125 ], [ 10, %125 ]
  %137 = load i8, i8* %126, align 1, !dbg !740, !tbaa !659
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !617, metadata !561), !dbg !716
  %138 = zext i8 %137 to i64, !dbg !741
  %139 = getelementptr inbounds i16, i16* %119, i64 %138, !dbg !741
  %140 = load i16, i16* %139, align 2, !dbg !741, !tbaa !719
  %141 = and i16 %140, 4096, !dbg !741
  %142 = icmp eq i16 %141, 0, !dbg !741
  br i1 %142, label %157, label %143, !dbg !743

; <label>:143:                                    ; preds = %135
  %144 = getelementptr inbounds i8, i8* %100, i64 4, !dbg !744
  tail call void @llvm.dbg.value(metadata i8* %144, i64 0, metadata !612, metadata !561), !dbg !698
  %145 = shl i32 %136, 4, !dbg !746
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !723, metadata !561), !dbg !747
  switch i8 %137, label %146 [
    i8 97, label %154
    i8 65, label %154
    i8 98, label %149
    i8 66, label %149
    i8 99, label %150
    i8 67, label %150
    i8 100, label %151
    i8 68, label %151
    i8 101, label %152
    i8 69, label %152
    i8 102, label %153
    i8 70, label %153
  ], !dbg !749

; <label>:146:                                    ; preds = %143
  %147 = zext i8 %137 to i32, !dbg !750
  %148 = add nsw i32 %147, -48, !dbg !751
  br label %154, !dbg !752

; <label>:149:                                    ; preds = %143, %143
  br label %154, !dbg !753

; <label>:150:                                    ; preds = %143, %143
  br label %154, !dbg !754

; <label>:151:                                    ; preds = %143, %143
  br label %154, !dbg !755

; <label>:152:                                    ; preds = %143, %143
  br label %154, !dbg !756

; <label>:153:                                    ; preds = %143, %143
  br label %154, !dbg !757

; <label>:154:                                    ; preds = %143, %143, %146, %149, %150, %151, %152, %153
  %155 = phi i32 [ %148, %146 ], [ 15, %153 ], [ 14, %152 ], [ 13, %151 ], [ 12, %150 ], [ 11, %149 ], [ 10, %143 ], [ 10, %143 ]
  %156 = add i32 %155, %145, !dbg !758
  br label %157, !dbg !759

; <label>:157:                                    ; preds = %135, %154
  %158 = phi i8* [ %144, %154 ], [ %126, %135 ]
  %159 = phi i32 [ %156, %154 ], [ %136, %135 ]
  %160 = trunc i32 %159 to i8
  tail call void @llvm.dbg.value(metadata i8 %160, i64 0, metadata !616, metadata !561), !dbg !702
  tail call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !612, metadata !561), !dbg !698
  br label %161, !dbg !760

; <label>:161:                                    ; preds = %116, %157
  %162 = phi i32 [ 0, %157 ], [ 17, %116 ]
  %163 = phi i8* [ %158, %157 ], [ %107, %116 ]
  %164 = phi i8 [ %160, %157 ], [ 120, %116 ]
  tail call void @llvm.dbg.value(metadata i8 %164, i64 0, metadata !616, metadata !561), !dbg !702
  tail call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !612, metadata !561), !dbg !698
  %165 = trunc i32 %162 to i5
  switch i5 %165, label %239 [
    i5 0, label %209
    i5 -15, label %196
  ]

; <label>:166:                                    ; preds = %106
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !616, metadata !561), !dbg !702
  %167 = load i8, i8* %107, align 1, !dbg !761, !tbaa !659
  %168 = and i8 %167, -8, !dbg !763
  %169 = icmp eq i8 %168, 48, !dbg !763
  br i1 %169, label %170, label %209, !dbg !763

; <label>:170:                                    ; preds = %166
  %171 = getelementptr inbounds i8, i8* %100, i64 3, !dbg !764
  tail call void @llvm.dbg.value(metadata i8* %171, i64 0, metadata !612, metadata !561), !dbg !698
  tail call void @llvm.dbg.value(metadata i8 %167, i64 0, metadata !616, metadata !561), !dbg !702
  br label %172, !dbg !765

; <label>:172:                                    ; preds = %106, %106, %106, %106, %106, %106, %106, %170
  %173 = phi i8* [ %107, %106 ], [ %107, %106 ], [ %107, %106 ], [ %107, %106 ], [ %107, %106 ], [ %107, %106 ], [ %107, %106 ], [ %171, %170 ]
  %174 = phi i8 [ %104, %106 ], [ %104, %106 ], [ %104, %106 ], [ %104, %106 ], [ %104, %106 ], [ %104, %106 ], [ %104, %106 ], [ %167, %170 ]
  tail call void @llvm.dbg.value(metadata i8 %174, i64 0, metadata !616, metadata !561), !dbg !702
  tail call void @llvm.dbg.value(metadata i8* %173, i64 0, metadata !612, metadata !561), !dbg !698
  %175 = add i8 %174, -48, !dbg !766
  tail call void @llvm.dbg.value(metadata i8 %175, i64 0, metadata !616, metadata !561), !dbg !702
  %176 = load i8, i8* %173, align 1, !dbg !767, !tbaa !659
  %177 = and i8 %176, -8, !dbg !769
  %178 = icmp eq i8 %177, 48, !dbg !769
  br i1 %178, label %179, label %185, !dbg !769

; <label>:179:                                    ; preds = %172
  %180 = shl i8 %175, 3, !dbg !770
  %181 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !771
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !612, metadata !561), !dbg !698
  %182 = add i8 %176, -48, !dbg !772
  %183 = add i8 %182, %180, !dbg !773
  tail call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !616, metadata !561), !dbg !702
  %184 = load i8, i8* %181, align 1, !dbg !774, !tbaa !659
  br label %185, !dbg !776

; <label>:185:                                    ; preds = %179, %172
  %186 = phi i8 [ %184, %179 ], [ %176, %172 ], !dbg !774
  %187 = phi i8* [ %181, %179 ], [ %173, %172 ]
  %188 = phi i8 [ %183, %179 ], [ %175, %172 ]
  tail call void @llvm.dbg.value(metadata i8 %188, i64 0, metadata !616, metadata !561), !dbg !702
  tail call void @llvm.dbg.value(metadata i8* %187, i64 0, metadata !612, metadata !561), !dbg !698
  %189 = and i8 %186, -8, !dbg !777
  %190 = icmp eq i8 %189, 48, !dbg !777
  br i1 %190, label %191, label %209, !dbg !777

; <label>:191:                                    ; preds = %185
  %192 = shl i8 %188, 3, !dbg !778
  %193 = getelementptr inbounds i8, i8* %187, i64 1, !dbg !779
  tail call void @llvm.dbg.value(metadata i8* %193, i64 0, metadata !612, metadata !561), !dbg !698
  %194 = add i8 %186, -48, !dbg !780
  %195 = add i8 %194, %192, !dbg !781
  tail call void @llvm.dbg.value(metadata i8 %195, i64 0, metadata !616, metadata !561), !dbg !702
  br label %209, !dbg !782

; <label>:196:                                    ; preds = %161, %106
  %197 = phi i8* [ %107, %106 ], [ %163, %161 ]
  %198 = phi i8 [ %104, %106 ], [ %164, %161 ]
  tail call void @llvm.dbg.value(metadata i8 %198, i64 0, metadata !616, metadata !561), !dbg !702
  tail call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !612, metadata !561), !dbg !698
  tail call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !783, metadata !561) #9, !dbg !789
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !791, !tbaa !568
  %200 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %199, i64 0, i32 5, !dbg !791
  %201 = load i8*, i8** %200, align 8, !dbg !791, !tbaa !792
  %202 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %199, i64 0, i32 6, !dbg !791
  %203 = load i8*, i8** %202, align 8, !dbg !791, !tbaa !796
  %204 = icmp ult i8* %201, %203, !dbg !791
  br i1 %204, label %207, label %205, !dbg !791, !prof !797

; <label>:205:                                    ; preds = %196
  %206 = tail call i32 @__overflow(%struct._IO_FILE* %199, i32 92) #9, !dbg !791
  br label %209, !dbg !791

; <label>:207:                                    ; preds = %196
  %208 = getelementptr inbounds i8, i8* %201, i64 1, !dbg !791
  store i8* %208, i8** %200, align 8, !dbg !791, !tbaa !792
  store i8 92, i8* %201, align 1, !dbg !791, !tbaa !659
  br label %209, !dbg !791

; <label>:209:                                    ; preds = %207, %205, %99, %103, %108, %109, %110, %111, %112, %113, %114, %115, %106, %161, %166, %191, %185
  %210 = phi i8* [ %107, %106 ], [ %193, %191 ], [ %187, %185 ], [ %107, %166 ], [ %163, %161 ], [ %107, %115 ], [ %107, %114 ], [ %107, %113 ], [ %107, %112 ], [ %107, %111 ], [ %107, %110 ], [ %107, %109 ], [ %107, %108 ], [ %101, %103 ], [ %101, %99 ], [ %197, %205 ], [ %197, %207 ]
  %211 = phi i8 [ 92, %106 ], [ %195, %191 ], [ %188, %185 ], [ 0, %166 ], [ %164, %161 ], [ 11, %115 ], [ 9, %114 ], [ 13, %113 ], [ 10, %112 ], [ 12, %111 ], [ 27, %110 ], [ 8, %109 ], [ 7, %108 ], [ 92, %103 ], [ %102, %99 ], [ %198, %205 ], [ %198, %207 ]
  tail call void @llvm.dbg.value(metadata i8 %211, i64 0, metadata !616, metadata !561), !dbg !702
  tail call void @llvm.dbg.value(metadata i8* %210, i64 0, metadata !612, metadata !561), !dbg !698
  tail call void @llvm.dbg.value(metadata i32 %219, i64 0, metadata !783, metadata !561) #9, !dbg !798
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !800, !tbaa !568
  %213 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %212, i64 0, i32 5, !dbg !800
  %214 = load i8*, i8** %213, align 8, !dbg !800, !tbaa !792
  %215 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %212, i64 0, i32 6, !dbg !800
  %216 = load i8*, i8** %215, align 8, !dbg !800, !tbaa !796
  %217 = icmp ult i8* %214, %216, !dbg !800
  br i1 %217, label %222, label %218, !dbg !800, !prof !797

; <label>:218:                                    ; preds = %209
  %219 = zext i8 %211 to i32, !dbg !801
  %220 = tail call i32 @__overflow(%struct._IO_FILE* %212, i32 %219) #9, !dbg !800
  br label %221, !dbg !800

; <label>:221:                                    ; preds = %218, %222
  br label %99, !dbg !698, !llvm.loop !802

; <label>:222:                                    ; preds = %209
  %223 = getelementptr inbounds i8, i8* %214, i64 1, !dbg !800
  store i8* %223, i8** %213, align 8, !dbg !800, !tbaa !792
  store i8 %211, i8* %214, align 1, !dbg !800, !tbaa !659
  br label %221, !dbg !800

; <label>:224:                                    ; preds = %99
  %225 = add nsw i32 %97, -1, !dbg !804
  tail call void @llvm.dbg.value(metadata i32 %225, i64 0, metadata !603, metadata !561), !dbg !623
  %226 = getelementptr inbounds i8*, i8** %96, i64 1, !dbg !805
  tail call void @llvm.dbg.value(metadata i8** %226, i64 0, metadata !604, metadata !561), !dbg !624
  %227 = icmp sgt i32 %97, 1, !dbg !806
  br i1 %227, label %228, label %241, !dbg !808

; <label>:228:                                    ; preds = %224
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !783, metadata !561) #9, !dbg !809
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !811, !tbaa !568
  %230 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %229, i64 0, i32 5, !dbg !811
  %231 = load i8*, i8** %230, align 8, !dbg !811, !tbaa !792
  %232 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %229, i64 0, i32 6, !dbg !811
  %233 = load i8*, i8** %232, align 8, !dbg !811, !tbaa !796
  %234 = icmp ult i8* %231, %233, !dbg !811
  br i1 %234, label %237, label %235, !dbg !811, !prof !797

; <label>:235:                                    ; preds = %228
  %236 = tail call i32 @__overflow(%struct._IO_FILE* %229, i32 32) #9, !dbg !811
  br label %241, !dbg !811

; <label>:237:                                    ; preds = %228
  %238 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !811
  store i8* %238, i8** %230, align 8, !dbg !811, !tbaa !792
  store i8 32, i8* %231, align 1, !dbg !811, !tbaa !659
  br label %241, !dbg !811

; <label>:239:                                    ; preds = %161
  tail call void @llvm.dbg.value(metadata i8** %96, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 %97, i64 0, metadata !603, metadata !561), !dbg !623
  %240 = icmp eq i32 %162, 0
  br i1 %240, label %241, label %288

; <label>:241:                                    ; preds = %237, %235, %224, %239
  %242 = phi i8** [ %96, %239 ], [ %226, %224 ], [ %226, %235 ], [ %226, %237 ]
  %243 = phi i32 [ %97, %239 ], [ %225, %224 ], [ %225, %235 ], [ %225, %237 ]
  tail call void @llvm.dbg.value(metadata i8** %242, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 %243, i64 0, metadata !603, metadata !561), !dbg !623
  %244 = icmp sgt i32 %243, 0, !dbg !695
  br i1 %244, label %95, label %273, !dbg !696, !llvm.loop !812

; <label>:245:                                    ; preds = %33, %85
  %246 = phi i8 [ %88, %85 ], [ 1, %33 ]
  %247 = phi i8** [ %87, %85 ], [ %21, %33 ]
  %248 = phi i32 [ %86, %85 ], [ %34, %33 ]
  tail call void @llvm.dbg.value(metadata i8** %247, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 %248, i64 0, metadata !603, metadata !561), !dbg !623
  %249 = icmp sgt i32 %248, 0, !dbg !814
  br i1 %249, label %250, label %273, !dbg !816

; <label>:250:                                    ; preds = %245
  br label %251, !dbg !817

; <label>:251:                                    ; preds = %250, %271
  %252 = phi i8** [ %258, %271 ], [ %247, %250 ]
  %253 = phi i32 [ %257, %271 ], [ %248, %250 ]
  tail call void @llvm.dbg.value(metadata i32 %253, i64 0, metadata !603, metadata !561), !dbg !623
  tail call void @llvm.dbg.value(metadata i8** %252, i64 0, metadata !604, metadata !561), !dbg !624
  %254 = load i8*, i8** %252, align 8, !dbg !817, !tbaa !568
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !817, !tbaa !568
  %256 = tail call i32 @fputs_unlocked(i8* %254, %struct._IO_FILE* %255) #9, !dbg !817
  %257 = add nsw i32 %253, -1, !dbg !819
  tail call void @llvm.dbg.value(metadata i32 %257, i64 0, metadata !603, metadata !561), !dbg !623
  %258 = getelementptr inbounds i8*, i8** %252, i64 1, !dbg !820
  tail call void @llvm.dbg.value(metadata i8** %258, i64 0, metadata !604, metadata !561), !dbg !624
  %259 = icmp eq i32 %253, 1, !dbg !821
  br i1 %259, label %273, label %260, !dbg !823

; <label>:260:                                    ; preds = %251
  tail call void @llvm.dbg.value(metadata i32 32, i64 0, metadata !783, metadata !561) #9, !dbg !824
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !826, !tbaa !568
  %262 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %261, i64 0, i32 5, !dbg !826
  %263 = load i8*, i8** %262, align 8, !dbg !826, !tbaa !792
  %264 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %261, i64 0, i32 6, !dbg !826
  %265 = load i8*, i8** %264, align 8, !dbg !826, !tbaa !796
  %266 = icmp ult i8* %263, %265, !dbg !826
  br i1 %266, label %269, label %267, !dbg !826, !prof !797

; <label>:267:                                    ; preds = %260
  %268 = tail call i32 @__overflow(%struct._IO_FILE* %261, i32 32) #9, !dbg !826
  br label %271, !dbg !826

; <label>:269:                                    ; preds = %260
  %270 = getelementptr inbounds i8, i8* %263, i64 1, !dbg !826
  store i8* %270, i8** %262, align 8, !dbg !826, !tbaa !792
  store i8 32, i8* %263, align 1, !dbg !826, !tbaa !659
  br label %271, !dbg !826

; <label>:271:                                    ; preds = %269, %267
  tail call void @llvm.dbg.value(metadata i8** %258, i64 0, metadata !604, metadata !561), !dbg !624
  tail call void @llvm.dbg.value(metadata i32 %257, i64 0, metadata !603, metadata !561), !dbg !623
  %272 = icmp sgt i32 %253, 1, !dbg !814
  br i1 %272, label %251, label %273, !dbg !816, !llvm.loop !827

; <label>:273:                                    ; preds = %241, %251, %271, %92, %245
  %274 = phi i8 [ %246, %245 ], [ %88, %92 ], [ %246, %271 ], [ %246, %251 ], [ %88, %241 ]
  %275 = and i8 %274, 1, !dbg !829
  %276 = icmp eq i8 %275, 0, !dbg !829
  br i1 %276, label %288, label %277, !dbg !831

; <label>:277:                                    ; preds = %273
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !783, metadata !561) #9, !dbg !832
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !834, !tbaa !568
  %279 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %278, i64 0, i32 5, !dbg !834
  %280 = load i8*, i8** %279, align 8, !dbg !834, !tbaa !792
  %281 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %278, i64 0, i32 6, !dbg !834
  %282 = load i8*, i8** %281, align 8, !dbg !834, !tbaa !796
  %283 = icmp ult i8* %280, %282, !dbg !834
  br i1 %283, label %286, label %284, !dbg !834, !prof !797

; <label>:284:                                    ; preds = %277
  %285 = tail call i32 @__overflow(%struct._IO_FILE* %278, i32 10) #9, !dbg !834
  br label %288, !dbg !834

; <label>:286:                                    ; preds = %277
  %287 = getelementptr inbounds i8, i8* %280, i64 1, !dbg !834
  store i8* %287, i8** %279, align 8, !dbg !834, !tbaa !792
  store i8 10, i8* %280, align 1, !dbg !834, !tbaa !659
  br label %288, !dbg !834

; <label>:288:                                    ; preds = %239, %106, %286, %284, %273, %30
  ret i32 0, !dbg !835
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !836 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !838, metadata !561), !dbg !839
  store i8* %0, i8** @file_name, align 8, !dbg !840, !tbaa !568
  ret void, !dbg !841
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !842 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !846, metadata !561), !dbg !847
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !848, !tbaa !849
  ret void, !dbg !851
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !852 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !859, !tbaa !568
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !860
  %3 = icmp eq i32 %2, 0, !dbg !861
  br i1 %3, label %21, label %4, !dbg !862

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !863, !tbaa !849, !range !864
  %6 = icmp eq i8 %5, 0, !dbg !863
  %7 = tail call i32* @__errno_location() #17, !dbg !865
  br i1 %6, label %11, label %8, !dbg !867

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !868, !tbaa !869
  %10 = icmp eq i32 %9, 32, !dbg !870
  br i1 %10, label %21, label %11, !dbg !871

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 5) #9, !dbg !872
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !856, metadata !561), !dbg !873
  %13 = load i8*, i8** @file_name, align 8, !dbg !874, !tbaa !568
  %14 = icmp eq i8* %13, null, !dbg !874
  %15 = load i32, i32* %7, align 4, !tbaa !869
  br i1 %14, label %18, label %16, !dbg !875

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !876
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.25, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !877
  br label %19, !dbg !877

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.26, i64 0, i64 0), i8* %12) #9, !dbg !878
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !879, !tbaa !869
  tail call void @_exit(i32 %20) #15, !dbg !880
  unreachable, !dbg !880

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !881, !tbaa !568
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !883
  %24 = icmp eq i32 %23, 0, !dbg !884
  br i1 %24, label %27, label %25, !dbg !885

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !886, !tbaa !869
  tail call void @_exit(i32 %26) #15, !dbg !887
  unreachable, !dbg !887

; <label>:27:                                     ; preds = %21
  ret void, !dbg !888
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !889 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !891, metadata !561), !dbg !894
  %2 = icmp eq i8* %0, null, !dbg !895
  br i1 %2, label %3, label %6, !dbg !897

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !898, !tbaa !568
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !900
  tail call void @abort() #15, !dbg !901
  unreachable, !dbg !901

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !902
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !892, metadata !561), !dbg !903
  %8 = icmp eq i8* %7, null, !dbg !904
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !905
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !906
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !893, metadata !561), !dbg !907
  %11 = ptrtoint i8* %10 to i64, !dbg !908
  %12 = ptrtoint i8* %0 to i64, !dbg !908
  %13 = sub i64 %11, %12, !dbg !908
  %14 = icmp sgt i64 %13, 6, !dbg !910
  br i1 %14, label %15, label %24, !dbg !911

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !912
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.37, i64 0, i64 0), i64 7) #14, !dbg !913
  %18 = icmp eq i32 %17, 0, !dbg !914
  br i1 %18, label %19, label %24, !dbg !915

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !891, metadata !561), !dbg !894
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.38, i64 0, i64 0), i64 3) #14, !dbg !916
  %21 = icmp eq i32 %20, 0, !dbg !919
  br i1 %21, label %22, label %24, !dbg !920

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !921
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !891, metadata !561), !dbg !894
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !923, !tbaa !568
  br label %24, !dbg !924

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !891, metadata !561), !dbg !894
  store i8* %25, i8** @program_name, align 8, !dbg !925, !tbaa !568
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !926, !tbaa !568
  ret void, !dbg !927
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !928 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !933, metadata !561), !dbg !936
  %2 = tail call i32* @__errno_location() #17, !dbg !937
  %3 = load i32, i32* %2, align 4, !dbg !937, !tbaa !869
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !934, metadata !561), !dbg !938
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !939
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !939
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !939
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !940
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !940
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !935, metadata !561), !dbg !941
  store i32 %3, i32* %2, align 4, !dbg !942, !tbaa !869
  ret %struct.quoting_options* %8, !dbg !943
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !944 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !950, metadata !561), !dbg !951
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !952
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !952
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !953
  %5 = load i32, i32* %4, align 8, !dbg !953, !tbaa !954
  ret i32 %5, !dbg !956
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !957 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !961, metadata !561), !dbg !963
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !962, metadata !561), !dbg !964
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !965
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !965
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !966
  store i32 %1, i32* %5, align 8, !dbg !967, !tbaa !954
  ret void, !dbg !968
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !969 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !973, metadata !561), !dbg !981
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !974, metadata !561), !dbg !982
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !975, metadata !561), !dbg !983
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !976, metadata !561), !dbg !984
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !985
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !985
  %6 = lshr i8 %1, 5, !dbg !986
  %7 = zext i8 %6 to i64, !dbg !986
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !987
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !977, metadata !561), !dbg !988
  %9 = and i8 %1, 31, !dbg !989
  %10 = zext i8 %9 to i32, !dbg !990
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !979, metadata !561), !dbg !991
  %11 = load i32, i32* %8, align 4, !dbg !992, !tbaa !869
  %12 = lshr i32 %11, %10, !dbg !993
  %13 = and i32 %12, 1, !dbg !994
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !980, metadata !561), !dbg !995
  %14 = and i32 %2, 1, !dbg !996
  %15 = xor i32 %13, %14, !dbg !997
  %16 = shl i32 %15, %10, !dbg !998
  %17 = xor i32 %16, %11, !dbg !999
  store i32 %17, i32* %8, align 4, !dbg !999, !tbaa !869
  ret i32 %13, !dbg !1000
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1001 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1005, metadata !561), !dbg !1008
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1006, metadata !561), !dbg !1009
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1010
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1005, metadata !561), !dbg !1008
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1012
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1005, metadata !561), !dbg !1008
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1013
  %6 = load i32, i32* %5, align 4, !dbg !1013, !tbaa !1014
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1007, metadata !561), !dbg !1015
  store i32 %1, i32* %5, align 4, !dbg !1016, !tbaa !1014
  ret i32 %6, !dbg !1017
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1018 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1022, metadata !561), !dbg !1025
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1023, metadata !561), !dbg !1026
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1024, metadata !561), !dbg !1027
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1028
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1022, metadata !561), !dbg !1025
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1030
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1022, metadata !561), !dbg !1025
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1031
  store i32 10, i32* %6, align 8, !dbg !1032, !tbaa !954
  %7 = icmp ne i8* %1, null, !dbg !1033
  %8 = icmp ne i8* %2, null, !dbg !1035
  %9 = and i1 %7, %8, !dbg !1036
  br i1 %9, label %11, label %10, !dbg !1036

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1037
  unreachable, !dbg !1037

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1038
  store i8* %1, i8** %12, align 8, !dbg !1039, !tbaa !1040
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1041
  store i8* %2, i8** %13, align 8, !dbg !1042, !tbaa !1043
  ret void, !dbg !1044
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1045 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1049, metadata !561), !dbg !1057
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1050, metadata !561), !dbg !1058
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1051, metadata !561), !dbg !1059
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1052, metadata !561), !dbg !1060
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1053, metadata !561), !dbg !1061
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1062
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1062
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1054, metadata !561), !dbg !1063
  %8 = tail call i32* @__errno_location() #17, !dbg !1064
  %9 = load i32, i32* %8, align 4, !dbg !1064, !tbaa !869
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1055, metadata !561), !dbg !1065
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1066
  %11 = load i32, i32* %10, align 8, !dbg !1066, !tbaa !954
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1067
  %13 = load i32, i32* %12, align 4, !dbg !1067, !tbaa !1014
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1068
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1069
  %16 = load i8*, i8** %15, align 8, !dbg !1069, !tbaa !1040
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1070
  %18 = load i8*, i8** %17, align 8, !dbg !1070, !tbaa !1043
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1071
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1056, metadata !561), !dbg !1072
  store i32 %9, i32* %8, align 4, !dbg !1073, !tbaa !869
  ret i64 %19, !dbg !1074
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1075 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1081, metadata !561), !dbg !1145
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1082, metadata !561), !dbg !1146
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1083, metadata !561), !dbg !1147
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1084, metadata !561), !dbg !1148
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1085, metadata !561), !dbg !1149
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1086, metadata !561), !dbg !1150
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1087, metadata !561), !dbg !1151
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1088, metadata !561), !dbg !1152
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1089, metadata !561), !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1091, metadata !561), !dbg !1154
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1092, metadata !561), !dbg !1155
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1093, metadata !561), !dbg !1156
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1094, metadata !561), !dbg !1157
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1095, metadata !561), !dbg !1158
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1159
  %14 = icmp eq i64 %13, 1, !dbg !1160
  %15 = lshr i32 %5, 1, !dbg !1161
  %16 = trunc i32 %15 to i8, !dbg !1161
  %17 = and i8 %16, 1, !dbg !1161
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1097, metadata !561), !dbg !1161
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1098, metadata !561), !dbg !1162
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1099, metadata !561), !dbg !1163
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1100, metadata !561), !dbg !1164
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1165

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1082, metadata !561), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1100, metadata !561), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1099, metadata !561), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1097, metadata !561), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1084, metadata !561), !dbg !1148
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1095, metadata !561), !dbg !1158
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1094, metadata !561), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1093, metadata !561), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1092, metadata !561), !dbg !1155
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1089, metadata !561), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1088, metadata !561), !dbg !1152
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1085, metadata !561), !dbg !1149
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
  ], !dbg !1166

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1085, metadata !561), !dbg !1149
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1097, metadata !561), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1097, metadata !561), !dbg !1161
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1085, metadata !561), !dbg !1149
  br label %94, !dbg !1167

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1097, metadata !561), !dbg !1161
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1085, metadata !561), !dbg !1149
  %43 = and i8 %36, 1, !dbg !1169
  %44 = icmp eq i8 %43, 0, !dbg !1169
  br i1 %44, label %45, label %94, !dbg !1167

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1171
  br i1 %46, label %94, label %47, !dbg !1174

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1171, !tbaa !659
  br label %94, !dbg !1171

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.49, i64 0, i64 0), i32 %28), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1088, metadata !561), !dbg !1152
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), i32 %28), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1089, metadata !561), !dbg !1153
  br label %51, !dbg !1180

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1089, metadata !561), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1088, metadata !561), !dbg !1152
  %54 = and i8 %36, 1, !dbg !1181
  %55 = icmp eq i8 %54, 0, !dbg !1181
  br i1 %55, label %56, label %72, !dbg !1183

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1093, metadata !561), !dbg !1156
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1093, metadata !561), !dbg !1156
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1091, metadata !561), !dbg !1154
  %57 = load i8, i8* %52, align 1, !dbg !1184, !tbaa !659
  %58 = icmp eq i8 %57, 0, !dbg !1187
  br i1 %58, label %72, label %59, !dbg !1187

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1188

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1093, metadata !561), !dbg !1156
  %64 = icmp ult i64 %63, %40, !dbg !1188
  br i1 %64, label %65, label %67, !dbg !1191

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1188
  store i8 %61, i8* %66, align 1, !dbg !1188, !tbaa !659
  br label %67, !dbg !1188

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1191
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1091, metadata !561), !dbg !1154
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1192
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1093, metadata !561), !dbg !1156
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1093, metadata !561), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1091, metadata !561), !dbg !1154
  %70 = load i8, i8* %69, align 1, !dbg !1184, !tbaa !659
  %71 = icmp eq i8 %70, 0, !dbg !1187
  br i1 %71, label %72, label %60, !dbg !1187, !llvm.loop !1193

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1095, metadata !561), !dbg !1158
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1093, metadata !561), !dbg !1156
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1094, metadata !561), !dbg !1157
  br label %94, !dbg !1196

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1095, metadata !561), !dbg !1158
  br label %76, !dbg !1197

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1095, metadata !561), !dbg !1158
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1097, metadata !561), !dbg !1161
  br label %78, !dbg !1198

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1097, metadata !561), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1095, metadata !561), !dbg !1158
  %81 = and i8 %80, 1, !dbg !1199
  %82 = icmp eq i8 %81, 0, !dbg !1199
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1095, metadata !561), !dbg !1158
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1201
  br label %84, !dbg !1201

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1097, metadata !561), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1095, metadata !561), !dbg !1158
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1085, metadata !561), !dbg !1149
  %87 = and i8 %86, 1, !dbg !1202
  %88 = icmp eq i8 %87, 0, !dbg !1202
  br i1 %88, label %89, label %94, !dbg !1204

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1205
  br i1 %90, label %94, label %91, !dbg !1208

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1205, !tbaa !659
  br label %94, !dbg !1205

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1097, metadata !561), !dbg !1161
  br label %94, !dbg !1209

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1210
  unreachable, !dbg !1210

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1097, metadata !561), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1095, metadata !561), !dbg !1158
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1094, metadata !561), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1093, metadata !561), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1089, metadata !561), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1088, metadata !561), !dbg !1152
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1085, metadata !561), !dbg !1149
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1090, metadata !561), !dbg !1211
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
  br label %122, !dbg !1212

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1082, metadata !561), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1100, metadata !561), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1099, metadata !561), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1084, metadata !561), !dbg !1148
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1092, metadata !561), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1090, metadata !561), !dbg !1211
  %131 = icmp eq i64 %126, -1, !dbg !1213
  br i1 %131, label %134, label %132, !dbg !1214

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1215
  br i1 %133, label %590, label %138, !dbg !1216

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1217
  %136 = load i8, i8* %135, align 1, !dbg !1217, !tbaa !659
  %137 = icmp eq i8 %136, 0, !dbg !1218
  br i1 %137, label %590, label %138, !dbg !1216

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1106, metadata !561), !dbg !1219
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1107, metadata !561), !dbg !1220
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1108, metadata !561), !dbg !1221
  br i1 %108, label %139, label %154, !dbg !1222

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1224
  %141 = and i1 %109, %131, !dbg !1225
  br i1 %141, label %142, label %144, !dbg !1225

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1084, metadata !561), !dbg !1148
  br label %144, !dbg !1227

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1084, metadata !561), !dbg !1148
  %146 = icmp ugt i64 %140, %145, !dbg !1228
  br i1 %146, label %154, label %147, !dbg !1229

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1230
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1231
  %150 = icmp ne i32 %149, 0, !dbg !1232
  %151 = or i1 %150, %111, !dbg !1233
  %152 = xor i1 %150, true, !dbg !1233
  %153 = zext i1 %152 to i8, !dbg !1233
  br i1 %151, label %154, label %635, !dbg !1233

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1106, metadata !561), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1084, metadata !561), !dbg !1148
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1234
  %158 = load i8, i8* %157, align 1, !dbg !1234, !tbaa !659
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1101, metadata !561), !dbg !1235
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
  ], !dbg !1236

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1237

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1238

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1107, metadata !561), !dbg !1220
  %162 = and i8 %127, 1, !dbg !1242
  %163 = icmp eq i8 %162, 0, !dbg !1242
  %164 = and i1 %113, %163, !dbg !1242
  br i1 %164, label %165, label %181, !dbg !1242

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1244
  br i1 %166, label %167, label %169, !dbg !1248

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1244
  store i8 39, i8* %168, align 1, !dbg !1244, !tbaa !659
  br label %169, !dbg !1244

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1091, metadata !561), !dbg !1154
  %171 = icmp ult i64 %170, %130, !dbg !1249
  br i1 %171, label %172, label %174, !dbg !1252

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1249
  store i8 36, i8* %173, align 1, !dbg !1249, !tbaa !659
  br label %174, !dbg !1249

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1091, metadata !561), !dbg !1154
  %176 = icmp ult i64 %175, %130, !dbg !1253
  br i1 %176, label %177, label %179, !dbg !1256

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1253
  store i8 39, i8* %178, align 1, !dbg !1253, !tbaa !659
  br label %179, !dbg !1253

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1098, metadata !561), !dbg !1162
  br label %181, !dbg !1257

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1091, metadata !561), !dbg !1154
  %184 = icmp ult i64 %182, %130, !dbg !1258
  br i1 %184, label %185, label %187, !dbg !1261

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1258
  store i8 92, i8* %186, align 1, !dbg !1258, !tbaa !659
  br label %187, !dbg !1258

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1091, metadata !561), !dbg !1154
  br i1 %105, label %189, label %470, !dbg !1262

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1264
  %191 = icmp ult i64 %190, %155, !dbg !1265
  br i1 %191, label %192, label %470, !dbg !1266

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1267
  %194 = load i8, i8* %193, align 1, !dbg !1267, !tbaa !659
  %195 = add i8 %194, -48, !dbg !1268
  %196 = icmp ult i8 %195, 10, !dbg !1268
  br i1 %196, label %197, label %470, !dbg !1268

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1269
  br i1 %198, label %199, label %201, !dbg !1273

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1269
  store i8 48, i8* %200, align 1, !dbg !1269, !tbaa !659
  br label %201, !dbg !1269

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1091, metadata !561), !dbg !1154
  %203 = icmp ult i64 %202, %130, !dbg !1274
  br i1 %203, label %204, label %206, !dbg !1277

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1274
  store i8 48, i8* %205, align 1, !dbg !1274, !tbaa !659
  br label %206, !dbg !1274

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1091, metadata !561), !dbg !1154
  br label %470, !dbg !1278

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1279

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1280

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1281

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1283

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1285
  %214 = icmp ult i64 %213, %155, !dbg !1286
  br i1 %214, label %215, label %470, !dbg !1287

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1288
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1289
  %218 = load i8, i8* %217, align 1, !dbg !1289, !tbaa !659
  %219 = icmp eq i8 %218, 63, !dbg !1290
  br i1 %219, label %220, label %470, !dbg !1291

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1292
  %222 = load i8, i8* %221, align 1, !dbg !1292, !tbaa !659
  %223 = sext i8 %222 to i32, !dbg !1292
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
  ], !dbg !1293

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1294

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1101, metadata !561), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1090, metadata !561), !dbg !1211
  %226 = icmp ult i64 %124, %130, !dbg !1296
  br i1 %226, label %227, label %229, !dbg !1299

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1296
  store i8 63, i8* %228, align 1, !dbg !1296, !tbaa !659
  br label %229, !dbg !1296

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1091, metadata !561), !dbg !1154
  %231 = icmp ult i64 %230, %130, !dbg !1300
  br i1 %231, label %232, label %234, !dbg !1303

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1300
  store i8 34, i8* %233, align 1, !dbg !1300, !tbaa !659
  br label %234, !dbg !1300

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1091, metadata !561), !dbg !1154
  %236 = icmp ult i64 %235, %130, !dbg !1304
  br i1 %236, label %237, label %239, !dbg !1307

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1304
  store i8 34, i8* %238, align 1, !dbg !1304, !tbaa !659
  br label %239, !dbg !1304

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1091, metadata !561), !dbg !1154
  %241 = icmp ult i64 %240, %130, !dbg !1308
  br i1 %241, label %242, label %244, !dbg !1311

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1308
  store i8 63, i8* %243, align 1, !dbg !1308, !tbaa !659
  br label %244, !dbg !1308

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1091, metadata !561), !dbg !1154
  br label %470, !dbg !1312

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1105, metadata !561), !dbg !1313
  br label %256, !dbg !1314

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1105, metadata !561), !dbg !1313
  br label %256, !dbg !1315

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1105, metadata !561), !dbg !1313
  br label %254, !dbg !1316

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1105, metadata !561), !dbg !1313
  br label %254, !dbg !1317

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1105, metadata !561), !dbg !1313
  br label %256, !dbg !1318

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1105, metadata !561), !dbg !1313
  br i1 %113, label %252, label %253, !dbg !1319

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1320

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1323

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1105, metadata !561), !dbg !1313
  br i1 %117, label %256, label %635, !dbg !1325

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1105, metadata !561), !dbg !1313
  br i1 %104, label %497, label %470, !dbg !1327

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1328
  br i1 %259, label %260, label %265, !dbg !1330

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1331, !tbaa !659
  %262 = icmp ne i8 %261, 0, !dbg !1332
  %263 = icmp ne i64 %123, 0, !dbg !1333
  %264 = or i1 %263, %262, !dbg !1335
  br i1 %264, label %470, label %271, !dbg !1335

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1336
  %267 = icmp ne i64 %123, 0, !dbg !1333
  %268 = or i1 %267, %266, !dbg !1330
  br i1 %268, label %470, label %271, !dbg !1330

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1333
  br i1 %270, label %271, label %470, !dbg !1337

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1108, metadata !561), !dbg !1221
  br label %272, !dbg !1338

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1108, metadata !561), !dbg !1221
  br i1 %117, label %470, label %635, !dbg !1339

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1099, metadata !561), !dbg !1163
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1108, metadata !561), !dbg !1221
  br i1 %113, label %275, label %470, !dbg !1341

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1342

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1345
  %278 = icmp ne i64 %125, 0, !dbg !1347
  %279 = or i1 %278, %277, !dbg !1348
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1092, metadata !561), !dbg !1155
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1082, metadata !561), !dbg !1146
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1348
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1348
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1082, metadata !561), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1092, metadata !561), !dbg !1155
  %282 = icmp ult i64 %124, %281, !dbg !1349
  br i1 %282, label %283, label %285, !dbg !1352

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1349
  store i8 39, i8* %284, align 1, !dbg !1349, !tbaa !659
  br label %285, !dbg !1349

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1091, metadata !561), !dbg !1154
  %287 = icmp ult i64 %286, %281, !dbg !1353
  br i1 %287, label %288, label %290, !dbg !1356

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1353
  store i8 92, i8* %289, align 1, !dbg !1353, !tbaa !659
  br label %290, !dbg !1353

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1091, metadata !561), !dbg !1154
  %292 = icmp ult i64 %291, %281, !dbg !1357
  br i1 %292, label %293, label %295, !dbg !1360

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1357
  store i8 39, i8* %294, align 1, !dbg !1357, !tbaa !659
  br label %295, !dbg !1357

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1098, metadata !561), !dbg !1162
  br label %470, !dbg !1361

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1362

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1109, metadata !561), !dbg !1363
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1364
  %300 = load i16*, i16** %299, align 8, !dbg !1364, !tbaa !568
  %301 = zext i8 %158 to i64, !dbg !1364
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1364
  %303 = load i16, i16* %302, align 2, !dbg !1364, !tbaa !719
  %304 = lshr i16 %303, 14, !dbg !1366
  %305 = trunc i16 %304 to i8, !dbg !1366
  %306 = and i8 %305, 1, !dbg !1366
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1112, metadata !561), !dbg !1367
  br label %362, !dbg !1368

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1369
  store i64 0, i64* %10, align 8, !dbg !1370
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1109, metadata !561), !dbg !1363
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1112, metadata !561), !dbg !1367
  %308 = icmp eq i64 %155, -1, !dbg !1371
  br i1 %308, label %309, label %311, !dbg !1373

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1084, metadata !561), !dbg !1148
  br label %311, !dbg !1375

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1084, metadata !561), !dbg !1148
  br label %313, !dbg !1376, !llvm.loop !1377

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1112, metadata !561), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1109, metadata !561), !dbg !1363
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1379
  %316 = add i64 %314, %123, !dbg !1380
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1381
  %318 = sub i64 %312, %316, !dbg !1382
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1113, metadata !561), !dbg !1383
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1131, metadata !561), !dbg !1384
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #9, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1134, metadata !561), !dbg !1386
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1387

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1112, metadata !561), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1109, metadata !561), !dbg !1363
  %321 = icmp ugt i64 %312, %316, !dbg !1388
  br i1 %321, label %322, label %347, !dbg !1390

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1391

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1109, metadata !561), !dbg !1363
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1391
  %327 = load i8, i8* %326, align 1, !dbg !1391, !tbaa !659
  %328 = icmp eq i8 %327, 0, !dbg !1390
  br i1 %328, label %347, label %329, !dbg !1392

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1109, metadata !561), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1109, metadata !561), !dbg !1363
  %331 = add i64 %330, %123, !dbg !1394
  %332 = icmp ult i64 %331, %312, !dbg !1388
  br i1 %332, label %323, label %347, !dbg !1390, !llvm.loop !1395

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1396
  %335 = and i1 %115, %334, !dbg !1399
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1135, metadata !561), !dbg !1400
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1135, metadata !561), !dbg !1400
  br i1 %335, label %336, label %350, !dbg !1399

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1401

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1135, metadata !561), !dbg !1400
  %339 = add i64 %338, %316, !dbg !1401
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1402
  %341 = load i8, i8* %340, align 1, !dbg !1402, !tbaa !659
  %342 = sext i8 %341 to i32, !dbg !1402
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1403

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1135, metadata !561), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1135, metadata !561), !dbg !1400
  %345 = icmp ult i64 %344, %319, !dbg !1396
  br i1 %345, label %337, label %350, !dbg !1405, !llvm.loop !1406

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1408

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1112, metadata !561), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1109, metadata !561), !dbg !1363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1408
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1409, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1131, metadata !561), !dbg !1384
  %352 = call i32 @iswprint(i32 %351) #9, !dbg !1411
  %353 = icmp eq i32 %352, 0, !dbg !1411
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1112, metadata !561), !dbg !1367
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1412
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1112, metadata !561), !dbg !1367
  %355 = add i64 %319, %314, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1109, metadata !561), !dbg !1363
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1112, metadata !561), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1109, metadata !561), !dbg !1363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1113, metadata !561), !dbg !1383
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1414
  %357 = icmp eq i32 %356, 0, !dbg !1415
  br i1 %357, label %313, label %358, !dbg !1416, !llvm.loop !1377

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1417
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1112, metadata !561), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1109, metadata !561), !dbg !1363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1408
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1417
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1112, metadata !561), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1109, metadata !561), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1084, metadata !561), !dbg !1148
  %366 = and i8 %365, 1, !dbg !1418
  %367 = icmp ne i8 %366, 0, !dbg !1418
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1108, metadata !561), !dbg !1221
  %368 = icmp ult i64 %364, 2, !dbg !1419
  %369 = or i1 %367, %112, !dbg !1420
  %370 = and i1 %368, %369, !dbg !1421
  br i1 %370, label %470, label %371, !dbg !1421

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1142, metadata !561), !dbg !1423
  br label %373, !dbg !1424

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1107, metadata !561), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1106, metadata !561), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1101, metadata !561), !dbg !1235
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1090, metadata !561), !dbg !1211
  br i1 %369, label %426, label %380, !dbg !1425

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1430

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1107, metadata !561), !dbg !1220
  %382 = and i8 %376, 1, !dbg !1433
  %383 = icmp eq i8 %382, 0, !dbg !1433
  %384 = and i1 %113, %383, !dbg !1433
  br i1 %384, label %385, label %401, !dbg !1433

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1435
  br i1 %386, label %387, label %389, !dbg !1439

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1435
  store i8 39, i8* %388, align 1, !dbg !1435, !tbaa !659
  br label %389, !dbg !1435

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1091, metadata !561), !dbg !1154
  %391 = icmp ult i64 %390, %130, !dbg !1440
  br i1 %391, label %392, label %394, !dbg !1443

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1440
  store i8 36, i8* %393, align 1, !dbg !1440, !tbaa !659
  br label %394, !dbg !1440

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1091, metadata !561), !dbg !1154
  %396 = icmp ult i64 %395, %130, !dbg !1444
  br i1 %396, label %397, label %399, !dbg !1447

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1444
  store i8 39, i8* %398, align 1, !dbg !1444, !tbaa !659
  br label %399, !dbg !1444

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1098, metadata !561), !dbg !1162
  br label %401, !dbg !1448

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1091, metadata !561), !dbg !1154
  %404 = icmp ult i64 %402, %130, !dbg !1449
  br i1 %404, label %405, label %407, !dbg !1452

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1449
  store i8 92, i8* %406, align 1, !dbg !1449, !tbaa !659
  br label %407, !dbg !1449

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1091, metadata !561), !dbg !1154
  %409 = icmp ult i64 %408, %130, !dbg !1453
  br i1 %409, label %410, label %414, !dbg !1456

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1453
  %412 = or i8 %411, 48, !dbg !1453
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1453
  store i8 %412, i8* %413, align 1, !dbg !1453, !tbaa !659
  br label %414, !dbg !1453

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1091, metadata !561), !dbg !1154
  %416 = icmp ult i64 %415, %130, !dbg !1457
  br i1 %416, label %417, label %422, !dbg !1460

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1457
  %419 = and i8 %418, 7, !dbg !1457
  %420 = or i8 %419, 48, !dbg !1457
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1457
  store i8 %420, i8* %421, align 1, !dbg !1457, !tbaa !659
  br label %422, !dbg !1457

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1091, metadata !561), !dbg !1154
  %424 = and i8 %377, 7, !dbg !1461
  %425 = or i8 %424, 48, !dbg !1462
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1101, metadata !561), !dbg !1235
  br label %435, !dbg !1463

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1464
  %428 = icmp eq i8 %427, 0, !dbg !1464
  br i1 %428, label %435, label %429, !dbg !1466

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1467
  br i1 %430, label %431, label %433, !dbg !1471

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1467
  store i8 92, i8* %432, align 1, !dbg !1467, !tbaa !659
  br label %433, !dbg !1467

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1471
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1106, metadata !561), !dbg !1219
  br label %435, !dbg !1472

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1107, metadata !561), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1106, metadata !561), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1101, metadata !561), !dbg !1235
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1091, metadata !561), !dbg !1154
  %441 = add i64 %374, 1, !dbg !1473
  %442 = icmp ugt i64 %372, %441, !dbg !1475
  br i1 %442, label %443, label %535, !dbg !1476

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1477
  %445 = icmp ne i8 %444, 0, !dbg !1477
  %446 = and i8 %440, 1, !dbg !1477
  %447 = icmp eq i8 %446, 0, !dbg !1477
  %448 = and i1 %445, %447, !dbg !1477
  br i1 %448, label %449, label %460, !dbg !1477

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1480
  br i1 %450, label %451, label %453, !dbg !1484

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1480
  store i8 39, i8* %452, align 1, !dbg !1480, !tbaa !659
  br label %453, !dbg !1480

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1091, metadata !561), !dbg !1154
  %455 = icmp ult i64 %454, %130, !dbg !1485
  br i1 %455, label %456, label %458, !dbg !1488

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1485
  store i8 39, i8* %457, align 1, !dbg !1485, !tbaa !659
  br label %458, !dbg !1485

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1098, metadata !561), !dbg !1162
  br label %460, !dbg !1489

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1091, metadata !561), !dbg !1154
  %463 = icmp ult i64 %461, %130, !dbg !1490
  br i1 %463, label %464, label %466, !dbg !1493

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1490
  store i8 %438, i8* %465, align 1, !dbg !1490, !tbaa !659
  br label %466, !dbg !1490

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1090, metadata !561), !dbg !1211
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1494
  %469 = load i8, i8* %468, align 1, !dbg !1494, !tbaa !659
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1101, metadata !561), !dbg !1235
  br label %373, !dbg !1495, !llvm.loop !1496

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1082, metadata !561), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1108, metadata !561), !dbg !1221
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1107, metadata !561), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1106, metadata !561), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1101, metadata !561), !dbg !1235
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1099, metadata !561), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1084, metadata !561), !dbg !1148
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1092, metadata !561), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1090, metadata !561), !dbg !1211
  br i1 %106, label %482, label %481, !dbg !1499

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1501

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1502

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1503
  %485 = zext i8 %484 to i64, !dbg !1503
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1504
  %487 = load i32, i32* %486, align 4, !dbg !1504, !tbaa !869
  %488 = and i8 %477, 31, !dbg !1505
  %489 = zext i8 %488 to i32, !dbg !1506
  %490 = shl i32 1, %489, !dbg !1507
  %491 = and i32 %487, %490, !dbg !1507
  %492 = icmp eq i32 %491, 0, !dbg !1507
  %493 = icmp eq i8 %156, 0, !dbg !1508
  %494 = and i1 %493, %492, !dbg !1509
  br i1 %494, label %535, label %497, !dbg !1509

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1508
  br i1 %496, label %535, label %497, !dbg !1510

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1082, metadata !561), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1108, metadata !561), !dbg !1221
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1101, metadata !561), !dbg !1235
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1099, metadata !561), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1084, metadata !561), !dbg !1148
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1092, metadata !561), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1090, metadata !561), !dbg !1211
  br i1 %111, label %507, label %635, !dbg !1511

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1107, metadata !561), !dbg !1220
  %508 = and i8 %502, 1, !dbg !1513
  %509 = icmp eq i8 %508, 0, !dbg !1513
  %510 = and i1 %113, %509, !dbg !1513
  br i1 %510, label %511, label %527, !dbg !1513

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1515
  br i1 %512, label %513, label %515, !dbg !1519

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1515
  store i8 39, i8* %514, align 1, !dbg !1515, !tbaa !659
  br label %515, !dbg !1515

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1091, metadata !561), !dbg !1154
  %517 = icmp ult i64 %516, %506, !dbg !1520
  br i1 %517, label %518, label %520, !dbg !1523

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1520
  store i8 36, i8* %519, align 1, !dbg !1520, !tbaa !659
  br label %520, !dbg !1520

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1091, metadata !561), !dbg !1154
  %522 = icmp ult i64 %521, %506, !dbg !1524
  br i1 %522, label %523, label %525, !dbg !1527

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1524
  store i8 39, i8* %524, align 1, !dbg !1524, !tbaa !659
  br label %525, !dbg !1524

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1527
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1098, metadata !561), !dbg !1162
  br label %527, !dbg !1528

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1091, metadata !561), !dbg !1154
  %530 = icmp ult i64 %528, %506, !dbg !1529
  br i1 %530, label %531, label %533, !dbg !1532

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1529
  store i8 92, i8* %532, align 1, !dbg !1529, !tbaa !659
  br label %533, !dbg !1529

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1082, metadata !561), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1108, metadata !561), !dbg !1221
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1107, metadata !561), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1101, metadata !561), !dbg !1235
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1099, metadata !561), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1084, metadata !561), !dbg !1148
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1092, metadata !561), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1090, metadata !561), !dbg !1211
  br label %562, !dbg !1533

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1082, metadata !561), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1108, metadata !561), !dbg !1221
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1107, metadata !561), !dbg !1220
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1101, metadata !561), !dbg !1235
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1099, metadata !561), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1084, metadata !561), !dbg !1148
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1092, metadata !561), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1090, metadata !561), !dbg !1211
  %546 = and i8 %540, 1, !dbg !1533
  %547 = icmp ne i8 %546, 0, !dbg !1533
  %548 = and i8 %543, 1, !dbg !1533
  %549 = icmp eq i8 %548, 0, !dbg !1533
  %550 = and i1 %547, %549, !dbg !1533
  br i1 %550, label %551, label %562, !dbg !1533

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1536
  br i1 %552, label %553, label %555, !dbg !1540

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1536
  store i8 39, i8* %554, align 1, !dbg !1536, !tbaa !659
  br label %555, !dbg !1536

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1091, metadata !561), !dbg !1154
  %557 = icmp ult i64 %556, %545, !dbg !1541
  br i1 %557, label %558, label %560, !dbg !1544

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1541
  store i8 39, i8* %559, align 1, !dbg !1541, !tbaa !659
  br label %560, !dbg !1541

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1098, metadata !561), !dbg !1162
  br label %562, !dbg !1545

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1091, metadata !561), !dbg !1154
  %572 = icmp ult i64 %570, %563, !dbg !1546
  br i1 %572, label %573, label %575, !dbg !1549

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1546
  store i8 %565, i8* %574, align 1, !dbg !1546, !tbaa !659
  br label %575, !dbg !1546

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1091, metadata !561), !dbg !1154
  %577 = and i8 %564, 1, !dbg !1550
  %578 = icmp eq i8 %577, 0, !dbg !1550
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1100, metadata !561), !dbg !1164
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1552
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1100, metadata !561), !dbg !1164
  br label %580, !dbg !1553

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1082, metadata !561), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1100, metadata !561), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1099, metadata !561), !dbg !1163
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1098, metadata !561), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1084, metadata !561), !dbg !1148
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1092, metadata !561), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1090, metadata !561), !dbg !1211
  %589 = add i64 %581, 1, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1090, metadata !561), !dbg !1211
  br label %122, !dbg !1555, !llvm.loop !1556

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1558
  %593 = and i1 %113, %592, !dbg !1560
  %594 = xor i1 %593, true, !dbg !1560
  %595 = or i1 %111, %594, !dbg !1560
  br i1 %595, label %596, label %635, !dbg !1560

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1561
  %598 = xor i1 %597, true, !dbg !1561
  %599 = and i8 %128, 1, !dbg !1563
  %600 = icmp eq i8 %599, 0, !dbg !1563
  %601 = or i1 %600, %598, !dbg !1561
  br i1 %601, label %611, label %602, !dbg !1561

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1564
  %604 = icmp eq i8 %603, 0, !dbg !1564
  br i1 %604, label %607, label %605, !dbg !1567

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1568
  br label %645, !dbg !1569

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1570
  %609 = icmp ne i64 %125, 0, !dbg !1572
  %610 = and i1 %609, %608, !dbg !1573
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1082, metadata !561), !dbg !1146
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1091, metadata !561), !dbg !1154
  br i1 %610, label %27, label %611, !dbg !1573

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1574
  %613 = and i1 %612, %111, !dbg !1576
  br i1 %613, label %614, label %630, !dbg !1576

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1093, metadata !561), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1091, metadata !561), !dbg !1154
  %615 = load i8, i8* %99, align 1, !dbg !1577, !tbaa !659
  %616 = icmp eq i8 %615, 0, !dbg !1580
  br i1 %616, label %630, label %617, !dbg !1580

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1581

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1091, metadata !561), !dbg !1154
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1093, metadata !561), !dbg !1156
  %622 = icmp ult i64 %621, %130, !dbg !1581
  br i1 %622, label %623, label %625, !dbg !1584

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1581
  store i8 %619, i8* %624, align 1, !dbg !1581, !tbaa !659
  br label %625, !dbg !1581

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1091, metadata !561), !dbg !1154
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1585
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1093, metadata !561), !dbg !1156
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1093, metadata !561), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1091, metadata !561), !dbg !1154
  %628 = load i8, i8* %627, align 1, !dbg !1577, !tbaa !659
  %629 = icmp eq i8 %628, 0, !dbg !1580
  br i1 %629, label %630, label %618, !dbg !1580, !llvm.loop !1586

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1091, metadata !561), !dbg !1154
  %632 = icmp ult i64 %631, %130, !dbg !1588
  br i1 %632, label %633, label %645, !dbg !1590

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1591
  store i8 0, i8* %634, align 1, !dbg !1592, !tbaa !659
  br label %645, !dbg !1591

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1082, metadata !561), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1084, metadata !561), !dbg !1148
  %639 = icmp ne i32 %636, 2, !dbg !1593
  %640 = icmp eq i8 %103, 0, !dbg !1595
  %641 = or i1 %639, %640, !dbg !1596
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1085, metadata !561), !dbg !1149
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1596
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1085, metadata !561), !dbg !1149
  %643 = and i32 %5, -3, !dbg !1597
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1598
  br label %645, !dbg !1599

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1600
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1601 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1605, metadata !561), !dbg !1609
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1606, metadata !561), !dbg !1610
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1611
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1607, metadata !561), !dbg !1612
  %4 = icmp eq i8* %3, %0, !dbg !1613
  br i1 %4, label %5, label %75, !dbg !1615

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1616
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1608, metadata !561), !dbg !1617
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1618, metadata !561), !dbg !1634
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1632, metadata !561), !dbg !1637
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1633, metadata !561), !dbg !1638
  %7 = load i8, i8* %6, align 1, !dbg !1639, !tbaa !659
  %8 = sext i8 %7 to i32, !dbg !1639
  %9 = and i32 %8, -33, !dbg !1639
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1639

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1641, metadata !561), !dbg !1655
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1653, metadata !561), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !561), !dbg !1660
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1661
  %12 = load i8, i8* %11, align 1, !dbg !1661, !tbaa !659
  %13 = sext i8 %12 to i32, !dbg !1661
  %14 = and i32 %13, -33, !dbg !1661
  %15 = icmp eq i32 %14, 84, !dbg !1661
  br i1 %15, label %16, label %72, !dbg !1661

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1663, metadata !561), !dbg !1676
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1674, metadata !561), !dbg !1680
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1675, metadata !561), !dbg !1681
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1682
  %18 = load i8, i8* %17, align 1, !dbg !1682, !tbaa !659
  %19 = sext i8 %18 to i32, !dbg !1682
  %20 = and i32 %19, -33, !dbg !1682
  %21 = icmp eq i32 %20, 70, !dbg !1682
  br i1 %21, label %22, label %72, !dbg !1682

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1684, metadata !561), !dbg !1696
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1694, metadata !561), !dbg !1700
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1695, metadata !561), !dbg !1701
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1702
  %24 = load i8, i8* %23, align 1, !dbg !1702, !tbaa !659
  %25 = icmp eq i8 %24, 45, !dbg !1702
  br i1 %25, label %26, label %72, !dbg !1704

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1705, metadata !561), !dbg !1716
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1714, metadata !561), !dbg !1720
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1715, metadata !561), !dbg !1721
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1722
  %28 = load i8, i8* %27, align 1, !dbg !1722, !tbaa !659
  %29 = icmp eq i8 %28, 56, !dbg !1722
  br i1 %29, label %30, label %72, !dbg !1724

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1725, metadata !561), !dbg !1735
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1733, metadata !561), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1734, metadata !561), !dbg !1740
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1741
  %32 = load i8, i8* %31, align 1, !dbg !1741, !tbaa !659
  %33 = icmp eq i8 %32, 0, !dbg !1741
  br i1 %33, label %34, label %72, !dbg !1743

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1744, !tbaa !659
  %36 = icmp eq i8 %35, 96, !dbg !1745
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.53, i64 0, i64 0), !dbg !1744
  br label %75, !dbg !1746

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1641, metadata !561), !dbg !1747
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1653, metadata !561), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !561), !dbg !1752
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1753
  %40 = load i8, i8* %39, align 1, !dbg !1753, !tbaa !659
  %41 = sext i8 %40 to i32, !dbg !1753
  %42 = and i32 %41, -33, !dbg !1753
  %43 = icmp eq i32 %42, 66, !dbg !1753
  br i1 %43, label %44, label %72, !dbg !1753

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1663, metadata !561), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1674, metadata !561), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1675, metadata !561), !dbg !1757
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1758
  %46 = load i8, i8* %45, align 1, !dbg !1758, !tbaa !659
  %47 = icmp eq i8 %46, 49, !dbg !1758
  br i1 %47, label %48, label %72, !dbg !1759

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1684, metadata !561), !dbg !1760
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1694, metadata !561), !dbg !1762
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1695, metadata !561), !dbg !1763
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1764
  %50 = load i8, i8* %49, align 1, !dbg !1764, !tbaa !659
  %51 = icmp eq i8 %50, 56, !dbg !1764
  br i1 %51, label %52, label %72, !dbg !1765

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1705, metadata !561), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1714, metadata !561), !dbg !1768
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1715, metadata !561), !dbg !1769
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1770
  %54 = load i8, i8* %53, align 1, !dbg !1770, !tbaa !659
  %55 = icmp eq i8 %54, 48, !dbg !1770
  br i1 %55, label %56, label %72, !dbg !1771

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1725, metadata !561), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1733, metadata !561), !dbg !1774
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1734, metadata !561), !dbg !1775
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1776
  %58 = load i8, i8* %57, align 1, !dbg !1776, !tbaa !659
  %59 = icmp eq i8 %58, 51, !dbg !1776
  br i1 %59, label %60, label %72, !dbg !1777

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1778, metadata !561), !dbg !1787
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1785, metadata !561), !dbg !1791
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1786, metadata !561), !dbg !1792
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1793
  %62 = load i8, i8* %61, align 1, !dbg !1793, !tbaa !659
  %63 = icmp eq i8 %62, 48, !dbg !1793
  br i1 %63, label %64, label %72, !dbg !1795

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1796, metadata !561), !dbg !1804
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1802, metadata !561), !dbg !1808
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1803, metadata !561), !dbg !1809
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1810
  %66 = load i8, i8* %65, align 1, !dbg !1810, !tbaa !659
  %67 = icmp eq i8 %66, 0, !dbg !1810
  br i1 %67, label %68, label %72, !dbg !1812

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1813, !tbaa !659
  %70 = icmp eq i8 %69, 96, !dbg !1814
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.54, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.55, i64 0, i64 0), !dbg !1813
  br label %75, !dbg !1815

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1816
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.50, i64 0, i64 0), !dbg !1817
  br label %75, !dbg !1818

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1819
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #12

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1820 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1824, metadata !561), !dbg !1827
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1825, metadata !561), !dbg !1828
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1826, metadata !561), !dbg !1829
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1830, metadata !561) #9, !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1835, metadata !561) #9, !dbg !1845
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1836, metadata !561) #9, !dbg !1846
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1837, metadata !561) #9, !dbg !1847
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1848
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1848
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1838, metadata !561) #9, !dbg !1849
  %6 = tail call i32* @__errno_location() #17, !dbg !1850
  %7 = load i32, i32* %6, align 4, !dbg !1850, !tbaa !869
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1839, metadata !561) #9, !dbg !1851
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1852
  %9 = load i32, i32* %8, align 4, !dbg !1852, !tbaa !1014
  %10 = or i32 %9, 1, !dbg !1853
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1840, metadata !561) #9, !dbg !1854
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1855
  %12 = load i32, i32* %11, align 8, !dbg !1855, !tbaa !954
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1856
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1857
  %15 = load i8*, i8** %14, align 8, !dbg !1857, !tbaa !1040
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1858
  %17 = load i8*, i8** %16, align 8, !dbg !1858, !tbaa !1043
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !1859
  %19 = add i64 %18, 1, !dbg !1860
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1841, metadata !561) #9, !dbg !1861
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1862, metadata !561) #9, !dbg !1867
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !1869
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1842, metadata !561) #9, !dbg !1870
  %21 = load i32, i32* %11, align 8, !dbg !1871, !tbaa !954
  %22 = load i8*, i8** %14, align 8, !dbg !1872, !tbaa !1040
  %23 = load i8*, i8** %16, align 8, !dbg !1873, !tbaa !1043
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !1874
  store i32 %7, i32* %6, align 4, !dbg !1875, !tbaa !869
  ret i8* %20, !dbg !1876
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1831 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1830, metadata !561), !dbg !1877
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1835, metadata !561), !dbg !1878
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1836, metadata !561), !dbg !1879
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1837, metadata !561), !dbg !1880
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1881
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1881
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1838, metadata !561), !dbg !1882
  %7 = tail call i32* @__errno_location() #17, !dbg !1883
  %8 = load i32, i32* %7, align 4, !dbg !1883, !tbaa !869
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1839, metadata !561), !dbg !1884
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1885
  %10 = load i32, i32* %9, align 4, !dbg !1885, !tbaa !1014
  %11 = icmp ne i64* %2, null, !dbg !1886
  %12 = xor i1 %11, true, !dbg !1886
  %13 = zext i1 %12 to i32, !dbg !1886
  %14 = or i32 %10, %13, !dbg !1887
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1840, metadata !561), !dbg !1888
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1889
  %16 = load i32, i32* %15, align 8, !dbg !1889, !tbaa !954
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1890
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1891
  %19 = load i8*, i8** %18, align 8, !dbg !1891, !tbaa !1040
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1892
  %21 = load i8*, i8** %20, align 8, !dbg !1892, !tbaa !1043
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1893
  %23 = add i64 %22, 1, !dbg !1894
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1841, metadata !561), !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1862, metadata !561) #9, !dbg !1896
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !1898
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1842, metadata !561), !dbg !1899
  %25 = load i32, i32* %15, align 8, !dbg !1900, !tbaa !954
  %26 = load i8*, i8** %18, align 8, !dbg !1901, !tbaa !1040
  %27 = load i8*, i8** %20, align 8, !dbg !1902, !tbaa !1043
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1903
  store i32 %8, i32* %7, align 4, !dbg !1904, !tbaa !869
  br i1 %11, label %29, label %30, !dbg !1905

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1906, !tbaa !1908
  br label %30, !dbg !1909

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1910
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1911 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1915, !tbaa !568
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1913, metadata !561), !dbg !1916
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1914, metadata !561), !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1914, metadata !561), !dbg !1917
  %2 = load i32, i32* @nslots, align 4, !dbg !1918, !tbaa !869
  %3 = icmp sgt i32 %2, 1, !dbg !1921
  br i1 %3, label %4, label %13, !dbg !1922

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1923

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1914, metadata !561), !dbg !1917
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1923
  %8 = load i8*, i8** %7, align 8, !dbg !1923, !tbaa !1924
  tail call void @free(i8* %8) #9, !dbg !1926
  %9 = add nuw i64 %6, 1, !dbg !1927
  %10 = load i32, i32* @nslots, align 4, !dbg !1918, !tbaa !869
  %11 = sext i32 %10 to i64, !dbg !1921
  %12 = icmp slt i64 %9, %11, !dbg !1921
  br i1 %12, label %5, label %13, !dbg !1922, !llvm.loop !1928

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1930
  %15 = load i8*, i8** %14, align 8, !dbg !1930, !tbaa !1924
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1932
  br i1 %16, label %18, label %17, !dbg !1933

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #9, !dbg !1934
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1936, !tbaa !1937
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1938, !tbaa !1924
  br label %18, !dbg !1939

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1940
  br i1 %19, label %22, label %20, !dbg !1942

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1943
  tail call void @free(i8* %21) #9, !dbg !1945
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1946, !tbaa !568
  br label %22, !dbg !1947

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1948, !tbaa !869
  ret void, !dbg !1949
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1950 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1954, metadata !561), !dbg !1956
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1955, metadata !561), !dbg !1957
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1958
  ret i8* %3, !dbg !1959
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1960 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1964, metadata !561), !dbg !1978
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1965, metadata !561), !dbg !1979
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1966, metadata !561), !dbg !1980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1967, metadata !561), !dbg !1981
  %5 = tail call i32* @__errno_location() #17, !dbg !1982
  %6 = load i32, i32* %5, align 4, !dbg !1982, !tbaa !869
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1968, metadata !561), !dbg !1983
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1984, !tbaa !568
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1969, metadata !561), !dbg !1985
  %8 = icmp slt i32 %0, 0, !dbg !1986
  br i1 %8, label %9, label %10, !dbg !1988

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1989
  unreachable, !dbg !1989

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1990, !tbaa !869
  %12 = icmp sgt i32 %11, %0, !dbg !1991
  br i1 %12, label %34, label %13, !dbg !1992

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1993
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1994
  br i1 %15, label %16, label %17, !dbg !1996

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1997
  unreachable, !dbg !1997

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1998
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1998
  %20 = add nsw i32 %0, 1, !dbg !1999
  %21 = sext i32 %20 to i64, !dbg !2000
  %22 = shl nsw i64 %21, 4, !dbg !2001
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2002
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2002
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1969, metadata !561), !dbg !1985
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2003, !tbaa !568
  br i1 %14, label %25, label %26, !dbg !2004

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2005, !tbaa.struct !2007
  br label %26, !dbg !2008

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2009, !tbaa !869
  %28 = sext i32 %27 to i64, !dbg !2010
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2010
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2011
  %31 = sub nsw i32 %20, %27, !dbg !2012
  %32 = sext i32 %31 to i64, !dbg !2013
  %33 = shl nsw i64 %32, 4, !dbg !2014
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2011
  store i32 %20, i32* @nslots, align 4, !dbg !2015, !tbaa !869
  br label %34, !dbg !2016

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1969, metadata !561), !dbg !1985
  %36 = sext i32 %0 to i64, !dbg !2017
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2018
  %38 = load i64, i64* %37, align 8, !dbg !2018, !tbaa !1937
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1973, metadata !561), !dbg !2019
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2020
  %40 = load i8*, i8** %39, align 8, !dbg !2020, !tbaa !1924
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1975, metadata !561), !dbg !2021
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2022
  %42 = load i32, i32* %41, align 4, !dbg !2022, !tbaa !1014
  %43 = or i32 %42, 1, !dbg !2023
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1976, metadata !561), !dbg !2024
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2025
  %45 = load i32, i32* %44, align 8, !dbg !2025, !tbaa !954
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2026
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2027
  %48 = load i8*, i8** %47, align 8, !dbg !2027, !tbaa !1040
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2028
  %50 = load i8*, i8** %49, align 8, !dbg !2028, !tbaa !1043
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1977, metadata !561), !dbg !2030
  %52 = icmp ugt i64 %38, %51, !dbg !2031
  br i1 %52, label %63, label %53, !dbg !2033

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2034
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1973, metadata !561), !dbg !2019
  store i64 %54, i64* %37, align 8, !dbg !2036, !tbaa !1937
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2037
  br i1 %55, label %57, label %56, !dbg !2039

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2040
  br label %57, !dbg !2040

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1862, metadata !561) #9, !dbg !2041
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2043
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1975, metadata !561), !dbg !2021
  store i8* %58, i8** %39, align 8, !dbg !2044, !tbaa !1924
  %59 = load i32, i32* %44, align 8, !dbg !2045, !tbaa !954
  %60 = load i8*, i8** %47, align 8, !dbg !2046, !tbaa !1040
  %61 = load i8*, i8** %49, align 8, !dbg !2047, !tbaa !1043
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2048
  br label %63, !dbg !2049

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1975, metadata !561), !dbg !2021
  store i32 %6, i32* %5, align 4, !dbg !2050, !tbaa !869
  ret i8* %64, !dbg !2051
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #12

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2052 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2056, metadata !561), !dbg !2059
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2057, metadata !561), !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2058, metadata !561), !dbg !2061
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2062
  ret i8* %4, !dbg !2063
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2064 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2068, metadata !561), !dbg !2069
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1954, metadata !561) #9, !dbg !2070
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1955, metadata !561) #9, !dbg !2072
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2073
  ret i8* %2, !dbg !2074
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2075 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2079, metadata !561), !dbg !2081
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2080, metadata !561), !dbg !2082
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2056, metadata !561) #9, !dbg !2083
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2057, metadata !561) #9, !dbg !2085
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2058, metadata !561) #9, !dbg !2086
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2087
  ret i8* %3, !dbg !2088
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2089 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2097, metadata !2103), !dbg !2104
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2093, metadata !561), !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2094, metadata !561), !dbg !2107
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2095, metadata !561), !dbg !2108
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2109
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2109
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2096, metadata !561), !dbg !2110
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2102, metadata !561) #9, !dbg !2111
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2112
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2112
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2097, metadata !561) #9, !dbg !2104
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2097, metadata !2113) #9, !dbg !2104
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2104
  %8 = icmp eq i32 %1, 10, !dbg !2114
  br i1 %8, label %9, label %10, !dbg !2116

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2117, !noalias !2118
  unreachable, !dbg !2117

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2097, metadata !2113) #9, !dbg !2104
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2121
  store i32 %1, i32* %11, align 8, !dbg !2121, !alias.scope !2118
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2121
  %13 = bitcast i32* %12 to i8*, !dbg !2121
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2121
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2122
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2096, metadata !561), !dbg !2110
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2123
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2124
  ret i8* %14, !dbg !2125
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2126 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2097, metadata !2103), !dbg !2135
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2130, metadata !561), !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2131, metadata !561), !dbg !2138
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2132, metadata !561), !dbg !2139
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2133, metadata !561), !dbg !2140
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2141
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2141
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2134, metadata !561), !dbg !2142
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2102, metadata !561) #9, !dbg !2143
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2144
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2144
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2097, metadata !561) #9, !dbg !2135
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2097, metadata !2113) #9, !dbg !2135
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2135
  %9 = icmp eq i32 %1, 10, !dbg !2145
  br i1 %9, label %10, label %11, !dbg !2146

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2147, !noalias !2148
  unreachable, !dbg !2147

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2097, metadata !2113) #9, !dbg !2135
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2151
  store i32 %1, i32* %12, align 8, !dbg !2151, !alias.scope !2148
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2151
  %14 = bitcast i32* %13 to i8*, !dbg !2151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2151
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2152
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2134, metadata !561), !dbg !2142
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2153
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2154
  ret i8* %15, !dbg !2155
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2156 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2097, metadata !2103), !dbg !2162
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2160, metadata !561), !dbg !2165
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2161, metadata !561), !dbg !2166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2093, metadata !561) #9, !dbg !2167
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2094, metadata !561) #9, !dbg !2168
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2095, metadata !561) #9, !dbg !2169
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2170
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2170
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2096, metadata !561) #9, !dbg !2171
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2102, metadata !561) #9, !dbg !2172
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2173
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2173
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2097, metadata !561) #9, !dbg !2162
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2097, metadata !2113) #9, !dbg !2162
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2162
  %7 = icmp eq i32 %0, 10, !dbg !2174
  br i1 %7, label %8, label %9, !dbg !2175

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2176, !noalias !2177
  unreachable, !dbg !2176

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2097, metadata !2113) #9, !dbg !2162
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2180
  store i32 %0, i32* %10, align 8, !dbg !2180, !alias.scope !2177
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2180
  %12 = bitcast i32* %11 to i8*, !dbg !2180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2180
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2181
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2096, metadata !561) #9, !dbg !2171
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2182
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2183
  ret i8* %13, !dbg !2184
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2185 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2097, metadata !2103), !dbg !2192
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2189, metadata !561), !dbg !2195
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2190, metadata !561), !dbg !2196
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2191, metadata !561), !dbg !2197
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2130, metadata !561) #9, !dbg !2198
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2131, metadata !561) #9, !dbg !2199
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2132, metadata !561) #9, !dbg !2200
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2133, metadata !561) #9, !dbg !2201
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2202
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2202
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2134, metadata !561) #9, !dbg !2203
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2102, metadata !561) #9, !dbg !2204
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2205
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2205
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2097, metadata !561) #9, !dbg !2192
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2097, metadata !2113) #9, !dbg !2192
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2192
  %8 = icmp eq i32 %0, 10, !dbg !2206
  br i1 %8, label %9, label %10, !dbg !2207

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2208, !noalias !2209
  unreachable, !dbg !2208

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2097, metadata !2113) #9, !dbg !2192
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2212
  store i32 %0, i32* %11, align 8, !dbg !2212, !alias.scope !2209
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2212
  %13 = bitcast i32* %12 to i8*, !dbg !2212
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2212
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2213
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2134, metadata !561) #9, !dbg !2203
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2214
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2215
  ret i8* %14, !dbg !2216
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2217 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2221, metadata !561), !dbg !2225
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2222, metadata !561), !dbg !2226
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2223, metadata !561), !dbg !2227
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2228
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2229, !tbaa.struct !2230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2224, metadata !561), !dbg !2231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !973, metadata !561), !dbg !2232
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !974, metadata !561), !dbg !2234
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !975, metadata !561), !dbg !2235
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !976, metadata !561), !dbg !2236
  %6 = lshr i8 %2, 5, !dbg !2237
  %7 = zext i8 %6 to i64, !dbg !2237
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2238
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !977, metadata !561), !dbg !2239
  %9 = and i8 %2, 31, !dbg !2240
  %10 = zext i8 %9 to i32, !dbg !2241
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !979, metadata !561), !dbg !2242
  %11 = load i32, i32* %8, align 4, !dbg !2243, !tbaa !869
  %12 = lshr i32 %11, %10, !dbg !2244
  %13 = and i32 %12, 1, !dbg !2245
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !980, metadata !561), !dbg !2246
  %14 = xor i32 %13, 1, !dbg !2247
  %15 = shl i32 %14, %10, !dbg !2248
  %16 = xor i32 %15, %11, !dbg !2249
  store i32 %16, i32* %8, align 4, !dbg !2249, !tbaa !869
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2224, metadata !561), !dbg !2231
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2250
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2251
  ret i8* %17, !dbg !2252
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2253 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2257, metadata !561), !dbg !2259
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2258, metadata !561), !dbg !2260
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2221, metadata !561) #9, !dbg !2261
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2222, metadata !561) #9, !dbg !2263
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2223, metadata !561) #9, !dbg !2264
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2265
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2266, !tbaa.struct !2230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2224, metadata !561) #9, !dbg !2267
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !973, metadata !561) #9, !dbg !2268
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !974, metadata !561) #9, !dbg !2270
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !975, metadata !561) #9, !dbg !2271
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !976, metadata !561) #9, !dbg !2272
  %5 = lshr i8 %1, 5, !dbg !2273
  %6 = zext i8 %5 to i64, !dbg !2273
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2274
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !977, metadata !561) #9, !dbg !2275
  %8 = and i8 %1, 31, !dbg !2276
  %9 = zext i8 %8 to i32, !dbg !2277
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !979, metadata !561) #9, !dbg !2278
  %10 = load i32, i32* %7, align 4, !dbg !2279, !tbaa !869
  %11 = lshr i32 %10, %9, !dbg !2280
  %12 = and i32 %11, 1, !dbg !2281
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !980, metadata !561) #9, !dbg !2282
  %13 = xor i32 %12, 1, !dbg !2283
  %14 = shl i32 %13, %9, !dbg !2284
  %15 = xor i32 %14, %10, !dbg !2285
  store i32 %15, i32* %7, align 4, !dbg !2285, !tbaa !869
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2224, metadata !561) #9, !dbg !2267
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2286
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2287
  ret i8* %16, !dbg !2288
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2289 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2291, metadata !561), !dbg !2292
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2257, metadata !561) #9, !dbg !2293
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2258, metadata !561) #9, !dbg !2295
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2221, metadata !561) #9, !dbg !2296
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2222, metadata !561) #9, !dbg !2298
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2223, metadata !561) #9, !dbg !2299
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2300
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2301, !tbaa.struct !2230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2224, metadata !561) #9, !dbg !2302
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !973, metadata !561) #9, !dbg !2303
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !974, metadata !561) #9, !dbg !2305
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !975, metadata !561) #9, !dbg !2306
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !976, metadata !561) #9, !dbg !2307
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2308
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !977, metadata !561) #9, !dbg !2309
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !979, metadata !561) #9, !dbg !2310
  %5 = load i32, i32* %4, align 4, !dbg !2311, !tbaa !869
  %6 = or i32 %5, 67108864, !dbg !2312
  store i32 %6, i32* %4, align 4, !dbg !2312, !tbaa !869
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2224, metadata !561) #9, !dbg !2302
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2313
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2314
  ret i8* %7, !dbg !2315
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2316 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2318, metadata !561), !dbg !2320
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2319, metadata !561), !dbg !2321
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2221, metadata !561) #9, !dbg !2322
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2222, metadata !561) #9, !dbg !2324
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2223, metadata !561) #9, !dbg !2325
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2326
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2327, !tbaa.struct !2230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2224, metadata !561) #9, !dbg !2328
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !973, metadata !561) #9, !dbg !2329
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !974, metadata !561) #9, !dbg !2331
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !975, metadata !561) #9, !dbg !2332
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !976, metadata !561) #9, !dbg !2333
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2334
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !977, metadata !561) #9, !dbg !2335
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !979, metadata !561) #9, !dbg !2336
  %6 = load i32, i32* %5, align 4, !dbg !2337, !tbaa !869
  %7 = or i32 %6, 67108864, !dbg !2338
  store i32 %7, i32* %5, align 4, !dbg !2338, !tbaa !869
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2224, metadata !561) #9, !dbg !2328
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2339
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2340
  ret i8* %8, !dbg !2341
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2342 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2097, metadata !2103), !dbg !2348
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2344, metadata !561), !dbg !2350
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2345, metadata !561), !dbg !2351
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2346, metadata !561), !dbg !2352
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2353
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2353
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2102, metadata !561) #9, !dbg !2354
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2355
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2355
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2097, metadata !561) #9, !dbg !2348
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2097, metadata !2113) #9, !dbg !2348
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2348
  %9 = icmp eq i32 %1, 10, !dbg !2356
  br i1 %9, label %10, label %11, !dbg !2357

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2358, !noalias !2359
  unreachable, !dbg !2358

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2097, metadata !2113) #9, !dbg !2348
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2363
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2364
  store i32 %1, i32* %13, align 8, !dbg !2364
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2364
  %15 = bitcast i32* %14 to i8*, !dbg !2364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2364
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2347, metadata !561), !dbg !2365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !973, metadata !561), !dbg !2366
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !974, metadata !561), !dbg !2368
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !975, metadata !561), !dbg !2369
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !976, metadata !561), !dbg !2370
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2371
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !977, metadata !561), !dbg !2372
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !979, metadata !561), !dbg !2373
  %17 = load i32, i32* %16, align 4, !dbg !2374, !tbaa !869
  %18 = or i32 %17, 67108864, !dbg !2375
  store i32 %18, i32* %16, align 4, !dbg !2375, !tbaa !869
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2347, metadata !561), !dbg !2365
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2376
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2377
  ret i8* %19, !dbg !2378
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2379 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2383, metadata !561), !dbg !2387
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2384, metadata !561), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2385, metadata !561), !dbg !2389
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2386, metadata !561), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2391, metadata !561) #9, !dbg !2401
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2396, metadata !561) #9, !dbg !2403
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2397, metadata !561) #9, !dbg !2404
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2398, metadata !561) #9, !dbg !2405
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2399, metadata !561) #9, !dbg !2406
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2407
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2408, !tbaa.struct !2230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2400, metadata !561) #9, !dbg !2409
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1022, metadata !561) #9, !dbg !2410
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1023, metadata !561) #9, !dbg !2412
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1024, metadata !561) #9, !dbg !2413
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1022, metadata !561) #9, !dbg !2410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1022, metadata !561) #9, !dbg !2410
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2414
  store i32 10, i32* %7, align 8, !dbg !2415, !tbaa !954
  %8 = icmp ne i8* %1, null, !dbg !2416
  %9 = icmp ne i8* %2, null, !dbg !2417
  %10 = and i1 %8, %9, !dbg !2418
  br i1 %10, label %12, label %11, !dbg !2418

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2419
  unreachable, !dbg !2419

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2420
  store i8* %1, i8** %13, align 8, !dbg !2421, !tbaa !1040
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2422
  store i8* %2, i8** %14, align 8, !dbg !2423, !tbaa !1043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2400, metadata !561) #9, !dbg !2409
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2424
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2425
  ret i8* %15, !dbg !2426
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2392 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2391, metadata !561), !dbg !2427
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2396, metadata !561), !dbg !2428
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2397, metadata !561), !dbg !2429
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2398, metadata !561), !dbg !2430
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2399, metadata !561), !dbg !2431
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2432
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2432
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2433, !tbaa.struct !2230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2400, metadata !561), !dbg !2434
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1022, metadata !561) #9, !dbg !2435
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1023, metadata !561) #9, !dbg !2437
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1024, metadata !561) #9, !dbg !2438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1022, metadata !561) #9, !dbg !2435
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1022, metadata !561) #9, !dbg !2435
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2439
  store i32 10, i32* %8, align 8, !dbg !2440, !tbaa !954
  %9 = icmp ne i8* %1, null, !dbg !2441
  %10 = icmp ne i8* %2, null, !dbg !2442
  %11 = and i1 %9, %10, !dbg !2443
  br i1 %11, label %13, label %12, !dbg !2443

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2444
  unreachable, !dbg !2444

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2445
  store i8* %1, i8** %14, align 8, !dbg !2446, !tbaa !1040
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2447
  store i8* %2, i8** %15, align 8, !dbg !2448, !tbaa !1043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2400, metadata !561), !dbg !2434
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2449
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2450
  ret i8* %16, !dbg !2451
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2452 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2456, metadata !561), !dbg !2459
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2457, metadata !561), !dbg !2460
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2458, metadata !561), !dbg !2461
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2383, metadata !561) #9, !dbg !2462
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2384, metadata !561) #9, !dbg !2464
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2385, metadata !561) #9, !dbg !2465
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2386, metadata !561) #9, !dbg !2466
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2391, metadata !561) #9, !dbg !2467
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2396, metadata !561) #9, !dbg !2469
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2397, metadata !561) #9, !dbg !2470
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2398, metadata !561) #9, !dbg !2471
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2399, metadata !561) #9, !dbg !2472
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2473
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2473
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2474, !tbaa.struct !2230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2400, metadata !561) #9, !dbg !2475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1022, metadata !561) #9, !dbg !2476
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1023, metadata !561) #9, !dbg !2478
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1024, metadata !561) #9, !dbg !2479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1022, metadata !561) #9, !dbg !2476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1022, metadata !561) #9, !dbg !2476
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2480
  store i32 10, i32* %6, align 8, !dbg !2481, !tbaa !954
  %7 = icmp ne i8* %0, null, !dbg !2482
  %8 = icmp ne i8* %1, null, !dbg !2483
  %9 = and i1 %7, %8, !dbg !2484
  br i1 %9, label %11, label %10, !dbg !2484

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2485
  unreachable, !dbg !2485

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2486
  store i8* %0, i8** %12, align 8, !dbg !2487, !tbaa !1040
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2488
  store i8* %1, i8** %13, align 8, !dbg !2489, !tbaa !1043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2400, metadata !561) #9, !dbg !2475
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2490
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2491
  ret i8* %14, !dbg !2492
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2493 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2497, metadata !561), !dbg !2501
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2498, metadata !561), !dbg !2502
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2499, metadata !561), !dbg !2503
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2500, metadata !561), !dbg !2504
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2391, metadata !561) #9, !dbg !2505
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2396, metadata !561) #9, !dbg !2507
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2397, metadata !561) #9, !dbg !2508
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2398, metadata !561) #9, !dbg !2509
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2399, metadata !561) #9, !dbg !2510
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2511
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2512, !tbaa.struct !2230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2400, metadata !561) #9, !dbg !2513
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1022, metadata !561) #9, !dbg !2514
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1023, metadata !561) #9, !dbg !2516
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1024, metadata !561) #9, !dbg !2517
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1022, metadata !561) #9, !dbg !2514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1022, metadata !561) #9, !dbg !2514
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2518
  store i32 10, i32* %7, align 8, !dbg !2519, !tbaa !954
  %8 = icmp ne i8* %0, null, !dbg !2520
  %9 = icmp ne i8* %1, null, !dbg !2521
  %10 = and i1 %8, %9, !dbg !2522
  br i1 %10, label %12, label %11, !dbg !2522

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2523
  unreachable, !dbg !2523

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2524
  store i8* %0, i8** %13, align 8, !dbg !2525, !tbaa !1040
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2526
  store i8* %1, i8** %14, align 8, !dbg !2527, !tbaa !1043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2400, metadata !561) #9, !dbg !2513
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2528
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2529
  ret i8* %15, !dbg !2530
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2531 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2535, metadata !561), !dbg !2538
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2536, metadata !561), !dbg !2539
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2537, metadata !561), !dbg !2540
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2541
  ret i8* %4, !dbg !2542
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2543 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2547, metadata !561), !dbg !2549
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2548, metadata !561), !dbg !2550
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2535, metadata !561) #9, !dbg !2551
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2536, metadata !561) #9, !dbg !2553
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2537, metadata !561) #9, !dbg !2554
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2555
  ret i8* %3, !dbg !2556
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2557 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2561, metadata !561), !dbg !2563
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2562, metadata !561), !dbg !2564
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2535, metadata !561) #9, !dbg !2565
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2536, metadata !561) #9, !dbg !2567
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2537, metadata !561) #9, !dbg !2568
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2569
  ret i8* %3, !dbg !2570
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2571 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2575, metadata !561), !dbg !2576
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2561, metadata !561) #9, !dbg !2577
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2562, metadata !561) #9, !dbg !2579
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2535, metadata !561) #9, !dbg !2580
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2536, metadata !561) #9, !dbg !2582
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2537, metadata !561) #9, !dbg !2583
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2584
  ret i8* %2, !dbg !2585
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2586 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2646, metadata !561), !dbg !2652
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2647, metadata !561), !dbg !2653
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2648, metadata !561), !dbg !2654
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2649, metadata !561), !dbg !2655
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2650, metadata !561), !dbg !2656
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2651, metadata !561), !dbg !2657
  %7 = icmp eq i8* %1, null, !dbg !2658
  br i1 %7, label %10, label %8, !dbg !2660

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2661
  br label %12, !dbg !2661

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.59, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2662
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.60, i64 0, i64 0), i32 5) #9, !dbg !2663
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2663
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.61, i64 0, i64 0), i32 5) #9, !dbg !2664
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2664
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
  ], !dbg !2665

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2666
  unreachable, !dbg !2666

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.62, i64 0, i64 0), i32 5) #9, !dbg !2668
  %20 = load i8*, i8** %4, align 8, !dbg !2668, !tbaa !568
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2668
  br label %146, !dbg !2669

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.63, i64 0, i64 0), i32 5) #9, !dbg !2670
  %24 = load i8*, i8** %4, align 8, !dbg !2670, !tbaa !568
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2670
  %26 = load i8*, i8** %25, align 8, !dbg !2670, !tbaa !568
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2670
  br label %146, !dbg !2671

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.64, i64 0, i64 0), i32 5) #9, !dbg !2672
  %30 = load i8*, i8** %4, align 8, !dbg !2672, !tbaa !568
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2672
  %32 = load i8*, i8** %31, align 8, !dbg !2672, !tbaa !568
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2672
  %34 = load i8*, i8** %33, align 8, !dbg !2672, !tbaa !568
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2672
  br label %146, !dbg !2673

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.65, i64 0, i64 0), i32 5) #9, !dbg !2674
  %38 = load i8*, i8** %4, align 8, !dbg !2674, !tbaa !568
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2674
  %40 = load i8*, i8** %39, align 8, !dbg !2674, !tbaa !568
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2674
  %42 = load i8*, i8** %41, align 8, !dbg !2674, !tbaa !568
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2674
  %44 = load i8*, i8** %43, align 8, !dbg !2674, !tbaa !568
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2674
  br label %146, !dbg !2675

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.66, i64 0, i64 0), i32 5) #9, !dbg !2676
  %48 = load i8*, i8** %4, align 8, !dbg !2676, !tbaa !568
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2676
  %50 = load i8*, i8** %49, align 8, !dbg !2676, !tbaa !568
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2676
  %52 = load i8*, i8** %51, align 8, !dbg !2676, !tbaa !568
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2676
  %54 = load i8*, i8** %53, align 8, !dbg !2676, !tbaa !568
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2676
  %56 = load i8*, i8** %55, align 8, !dbg !2676, !tbaa !568
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2676
  br label %146, !dbg !2677

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.67, i64 0, i64 0), i32 5) #9, !dbg !2678
  %60 = load i8*, i8** %4, align 8, !dbg !2678, !tbaa !568
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2678
  %62 = load i8*, i8** %61, align 8, !dbg !2678, !tbaa !568
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2678
  %64 = load i8*, i8** %63, align 8, !dbg !2678, !tbaa !568
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2678
  %66 = load i8*, i8** %65, align 8, !dbg !2678, !tbaa !568
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2678
  %68 = load i8*, i8** %67, align 8, !dbg !2678, !tbaa !568
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2678
  %70 = load i8*, i8** %69, align 8, !dbg !2678, !tbaa !568
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2678
  br label %146, !dbg !2679

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.68, i64 0, i64 0), i32 5) #9, !dbg !2680
  %74 = load i8*, i8** %4, align 8, !dbg !2680, !tbaa !568
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2680
  %76 = load i8*, i8** %75, align 8, !dbg !2680, !tbaa !568
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2680
  %78 = load i8*, i8** %77, align 8, !dbg !2680, !tbaa !568
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2680
  %80 = load i8*, i8** %79, align 8, !dbg !2680, !tbaa !568
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2680
  %82 = load i8*, i8** %81, align 8, !dbg !2680, !tbaa !568
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2680
  %84 = load i8*, i8** %83, align 8, !dbg !2680, !tbaa !568
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2680
  %86 = load i8*, i8** %85, align 8, !dbg !2680, !tbaa !568
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2680
  br label %146, !dbg !2681

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.69, i64 0, i64 0), i32 5) #9, !dbg !2682
  %90 = load i8*, i8** %4, align 8, !dbg !2682, !tbaa !568
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2682
  %92 = load i8*, i8** %91, align 8, !dbg !2682, !tbaa !568
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2682
  %94 = load i8*, i8** %93, align 8, !dbg !2682, !tbaa !568
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2682
  %96 = load i8*, i8** %95, align 8, !dbg !2682, !tbaa !568
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2682
  %98 = load i8*, i8** %97, align 8, !dbg !2682, !tbaa !568
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2682
  %100 = load i8*, i8** %99, align 8, !dbg !2682, !tbaa !568
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2682
  %102 = load i8*, i8** %101, align 8, !dbg !2682, !tbaa !568
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2682
  %104 = load i8*, i8** %103, align 8, !dbg !2682, !tbaa !568
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2682
  br label %146, !dbg !2683

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.70, i64 0, i64 0), i32 5) #9, !dbg !2684
  %108 = load i8*, i8** %4, align 8, !dbg !2684, !tbaa !568
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2684
  %110 = load i8*, i8** %109, align 8, !dbg !2684, !tbaa !568
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2684
  %112 = load i8*, i8** %111, align 8, !dbg !2684, !tbaa !568
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2684
  %114 = load i8*, i8** %113, align 8, !dbg !2684, !tbaa !568
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2684
  %116 = load i8*, i8** %115, align 8, !dbg !2684, !tbaa !568
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2684
  %118 = load i8*, i8** %117, align 8, !dbg !2684, !tbaa !568
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2684
  %120 = load i8*, i8** %119, align 8, !dbg !2684, !tbaa !568
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2684
  %122 = load i8*, i8** %121, align 8, !dbg !2684, !tbaa !568
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2684
  %124 = load i8*, i8** %123, align 8, !dbg !2684, !tbaa !568
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2684
  br label %146, !dbg !2685

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.71, i64 0, i64 0), i32 5) #9, !dbg !2686
  %128 = load i8*, i8** %4, align 8, !dbg !2686, !tbaa !568
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2686
  %130 = load i8*, i8** %129, align 8, !dbg !2686, !tbaa !568
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2686
  %132 = load i8*, i8** %131, align 8, !dbg !2686, !tbaa !568
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2686
  %134 = load i8*, i8** %133, align 8, !dbg !2686, !tbaa !568
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2686
  %136 = load i8*, i8** %135, align 8, !dbg !2686, !tbaa !568
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2686
  %138 = load i8*, i8** %137, align 8, !dbg !2686, !tbaa !568
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2686
  %140 = load i8*, i8** %139, align 8, !dbg !2686, !tbaa !568
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2686
  %142 = load i8*, i8** %141, align 8, !dbg !2686, !tbaa !568
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2686
  %144 = load i8*, i8** %143, align 8, !dbg !2686, !tbaa !568
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2686
  br label %146, !dbg !2687

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2688
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2689 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2693, metadata !561), !dbg !2699
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2694, metadata !561), !dbg !2700
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2695, metadata !561), !dbg !2701
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2696, metadata !561), !dbg !2702
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2697, metadata !561), !dbg !2703
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2698, metadata !561), !dbg !2704
  br label %6, !dbg !2705

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2698, metadata !561), !dbg !2704
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2707
  %9 = load i8*, i8** %8, align 8, !dbg !2707, !tbaa !568
  %10 = icmp eq i8* %9, null, !dbg !2709
  %11 = add i64 %7, 1, !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2698, metadata !561), !dbg !2704
  br i1 %10, label %12, label %6, !dbg !2709, !llvm.loop !2711

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2713
  ret void, !dbg !2714
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2715 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2726, metadata !561), !dbg !2734
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2727, metadata !561), !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2728, metadata !561), !dbg !2736
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2729, metadata !561), !dbg !2737
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2730, metadata !561), !dbg !2738
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2739
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2739
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2732, metadata !561), !dbg !2740
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  %11 = load i32, i32* %8, align 8, !dbg !2742
  %12 = icmp ult i32 %11, 41, !dbg !2742
  br i1 %12, label %13, label %18, !dbg !2742

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2742
  %15 = sext i32 %11 to i64, !dbg !2742
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2742
  %17 = add i32 %11, 8, !dbg !2742
  store i32 %17, i32* %8, align 8, !dbg !2742
  br label %21, !dbg !2742

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2742
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2742
  store i8* %20, i8** %10, align 8, !dbg !2742
  br label %21, !dbg !2742

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2742
  %25 = load i8*, i8** %24, align 8, !dbg !2742
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2745
  store i8* %25, i8** %26, align 16, !dbg !2746, !tbaa !568
  %27 = icmp eq i8* %25, null, !dbg !2747
  br i1 %27, label %30, label %28, !dbg !2748

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  %29 = icmp ult i32 %22, 41, !dbg !2742
  br i1 %29, label %35, label %32, !dbg !2742

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2749
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2750
  ret void, !dbg !2750

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2742
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2742
  store i8* %34, i8** %10, align 8, !dbg !2742
  br label %40, !dbg !2742

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2742
  %37 = sext i32 %22 to i64, !dbg !2742
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2742
  %39 = add i32 %22, 8, !dbg !2742
  store i32 %39, i32* %8, align 8, !dbg !2742
  br label %40, !dbg !2742

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2742
  %44 = load i8*, i8** %43, align 8, !dbg !2742
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2745
  store i8* %44, i8** %45, align 8, !dbg !2746, !tbaa !568
  %46 = icmp eq i8* %44, null, !dbg !2747
  br i1 %46, label %30, label %47, !dbg !2748

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  %48 = icmp ult i32 %41, 41, !dbg !2742
  br i1 %48, label %52, label %49, !dbg !2742

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2742
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2742
  store i8* %51, i8** %10, align 8, !dbg !2742
  br label %57, !dbg !2742

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2742
  %54 = sext i32 %41 to i64, !dbg !2742
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2742
  %56 = add i32 %41, 8, !dbg !2742
  store i32 %56, i32* %8, align 8, !dbg !2742
  br label %57, !dbg !2742

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2742
  %61 = load i8*, i8** %60, align 8, !dbg !2742
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2745
  store i8* %61, i8** %62, align 16, !dbg !2746, !tbaa !568
  %63 = icmp eq i8* %61, null, !dbg !2747
  br i1 %63, label %30, label %64, !dbg !2748

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  %65 = icmp ult i32 %58, 41, !dbg !2742
  br i1 %65, label %69, label %66, !dbg !2742

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2742
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2742
  store i8* %68, i8** %10, align 8, !dbg !2742
  br label %74, !dbg !2742

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2742
  %71 = sext i32 %58 to i64, !dbg !2742
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2742
  %73 = add i32 %58, 8, !dbg !2742
  store i32 %73, i32* %8, align 8, !dbg !2742
  br label %74, !dbg !2742

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2742
  %78 = load i8*, i8** %77, align 8, !dbg !2742
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2745
  store i8* %78, i8** %79, align 8, !dbg !2746, !tbaa !568
  %80 = icmp eq i8* %78, null, !dbg !2747
  br i1 %80, label %30, label %81, !dbg !2748

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  %82 = icmp ult i32 %75, 41, !dbg !2742
  br i1 %82, label %86, label %83, !dbg !2742

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2742
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2742
  store i8* %85, i8** %10, align 8, !dbg !2742
  br label %91, !dbg !2742

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2742
  %88 = sext i32 %75 to i64, !dbg !2742
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2742
  %90 = add i32 %75, 8, !dbg !2742
  store i32 %90, i32* %8, align 8, !dbg !2742
  br label %91, !dbg !2742

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2742
  %95 = load i8*, i8** %94, align 8, !dbg !2742
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2745
  store i8* %95, i8** %96, align 16, !dbg !2746, !tbaa !568
  %97 = icmp eq i8* %95, null, !dbg !2747
  br i1 %97, label %30, label %98, !dbg !2748

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  %99 = icmp ult i32 %92, 41, !dbg !2742
  br i1 %99, label %103, label %100, !dbg !2742

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2742
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2742
  store i8* %102, i8** %10, align 8, !dbg !2742
  br label %108, !dbg !2742

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2742
  %105 = sext i32 %92 to i64, !dbg !2742
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2742
  %107 = add i32 %92, 8, !dbg !2742
  store i32 %107, i32* %8, align 8, !dbg !2742
  br label %108, !dbg !2742

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2742
  %111 = load i8*, i8** %110, align 8, !dbg !2742
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2745
  store i8* %111, i8** %112, align 8, !dbg !2746, !tbaa !568
  %113 = icmp eq i8* %111, null, !dbg !2747
  br i1 %113, label %30, label %114, !dbg !2748

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  %115 = load i8*, i8** %10, align 8, !dbg !2742
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2742
  store i8* %116, i8** %10, align 8, !dbg !2742
  %117 = bitcast i8* %115 to i8**, !dbg !2742
  %118 = load i8*, i8** %117, align 8, !dbg !2742
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2745
  store i8* %118, i8** %119, align 16, !dbg !2746, !tbaa !568
  %120 = icmp eq i8* %118, null, !dbg !2747
  br i1 %120, label %30, label %121, !dbg !2748

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  %122 = load i8*, i8** %10, align 8, !dbg !2742
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2742
  store i8* %123, i8** %10, align 8, !dbg !2742
  %124 = bitcast i8* %122 to i8**, !dbg !2742
  %125 = load i8*, i8** %124, align 8, !dbg !2742
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2745
  store i8* %125, i8** %126, align 8, !dbg !2746, !tbaa !568
  %127 = icmp eq i8* %125, null, !dbg !2747
  br i1 %127, label %30, label %128, !dbg !2748

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  %129 = load i8*, i8** %10, align 8, !dbg !2742
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2742
  store i8* %130, i8** %10, align 8, !dbg !2742
  %131 = bitcast i8* %129 to i8**, !dbg !2742
  %132 = load i8*, i8** %131, align 8, !dbg !2742
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2745
  store i8* %132, i8** %133, align 16, !dbg !2746, !tbaa !568
  %134 = icmp eq i8* %132, null, !dbg !2747
  br i1 %134, label %30, label %135, !dbg !2748

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2731, metadata !561), !dbg !2741
  %136 = load i8*, i8** %10, align 8, !dbg !2742
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2742
  store i8* %137, i8** %10, align 8, !dbg !2742
  %138 = bitcast i8* %136 to i8**, !dbg !2742
  %139 = load i8*, i8** %138, align 8, !dbg !2742
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2745
  store i8* %139, i8** %140, align 8, !dbg !2746, !tbaa !568
  %141 = icmp eq i8* %139, null, !dbg !2747
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2731, metadata !561), !dbg !2741
  %142 = select i1 %141, i64 9, i64 10, !dbg !2748
  br label %30, !dbg !2748
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2751 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2755, metadata !561), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2756, metadata !561), !dbg !2767
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2757, metadata !561), !dbg !2768
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2758, metadata !561), !dbg !2769
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2770
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2770
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2759, metadata !561), !dbg !2771
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2772
  call void @llvm.va_start(i8* nonnull %6), !dbg !2772
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2773
  call void @llvm.va_end(i8* nonnull %6), !dbg !2774
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2775
  ret void, !dbg !2775
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2776 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.74, i64 0, i64 0), i32 5) #9, !dbg !2777
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.75, i64 0, i64 0)) #9, !dbg !2777
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.76, i64 0, i64 0), i32 5) #9, !dbg !2778
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.78, i64 0, i64 0)) #9, !dbg !2778
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.79, i64 0, i64 0), i32 5) #9, !dbg !2779
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2779, !tbaa !568
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !2779
  ret void, !dbg !2780
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2781 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2785, metadata !561), !dbg !2787
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2786, metadata !561), !dbg !2788
  %3 = udiv i64 9223372036854775807, %1, !dbg !2789
  %4 = icmp ult i64 %3, %0, !dbg !2789
  br i1 %4, label %5, label %6, !dbg !2791

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2792
  unreachable, !dbg !2792

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2793
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2794, metadata !561) #9, !dbg !2801
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !2803
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2800, metadata !561) #9, !dbg !2804
  %9 = icmp eq i8* %8, null, !dbg !2805
  %10 = icmp ne i64 %7, 0, !dbg !2807
  %11 = and i1 %10, %9, !dbg !2808
  br i1 %11, label %12, label %13, !dbg !2808

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2809
  unreachable, !dbg !2809

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2810
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2795 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2794, metadata !561), !dbg !2811
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2812
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2800, metadata !561), !dbg !2813
  %3 = icmp eq i8* %2, null, !dbg !2814
  %4 = icmp ne i64 %0, 0, !dbg !2815
  %5 = and i1 %4, %3, !dbg !2816
  br i1 %5, label %6, label %7, !dbg !2816

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2817
  unreachable, !dbg !2817

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2818
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2819 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2823, metadata !561), !dbg !2826
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2824, metadata !561), !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2825, metadata !561), !dbg !2828
  %4 = udiv i64 9223372036854775807, %2, !dbg !2829
  %5 = icmp ult i64 %4, %1, !dbg !2829
  br i1 %5, label %6, label %7, !dbg !2831

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2832
  unreachable, !dbg !2832

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2834, metadata !561) #9, !dbg !2840
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2839, metadata !561) #9, !dbg !2842
  %9 = icmp eq i64 %8, 0, !dbg !2843
  %10 = icmp ne i8* %0, null, !dbg !2845
  %11 = and i1 %10, %9, !dbg !2846
  br i1 %11, label %12, label %13, !dbg !2846

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !2847
  br label %19, !dbg !2849

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !2850
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2834, metadata !561) #9, !dbg !2840
  %15 = icmp eq i8* %14, null, !dbg !2851
  %16 = icmp ne i64 %8, 0, !dbg !2853
  %17 = and i1 %16, %15, !dbg !2854
  br i1 %17, label %18, label %19, !dbg !2854

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2855
  unreachable, !dbg !2855

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2856
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2835 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2834, metadata !561), !dbg !2857
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2839, metadata !561), !dbg !2858
  %3 = icmp eq i64 %1, 0, !dbg !2859
  %4 = icmp ne i8* %0, null, !dbg !2860
  %5 = and i1 %4, %3, !dbg !2861
  br i1 %5, label %6, label %7, !dbg !2861

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !2862
  br label %13, !dbg !2863

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !2864
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2834, metadata !561), !dbg !2857
  %9 = icmp eq i8* %8, null, !dbg !2865
  %10 = icmp ne i64 %1, 0, !dbg !2866
  %11 = and i1 %10, %9, !dbg !2867
  br i1 %11, label %12, label %13, !dbg !2867

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2868
  unreachable, !dbg !2868

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2869
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !521 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !526, metadata !561), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !527, metadata !561), !dbg !2871
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !528, metadata !561), !dbg !2872
  %4 = load i64, i64* %1, align 8, !dbg !2873, !tbaa !1908
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !529, metadata !561), !dbg !2874
  %5 = icmp eq i8* %0, null, !dbg !2875
  br i1 %5, label %6, label %13, !dbg !2877

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2878
  br i1 %7, label %8, label %17, !dbg !2881

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2882
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !529, metadata !561), !dbg !2874
  %10 = icmp ugt i64 %2, 128, !dbg !2884
  %11 = zext i1 %10 to i64, !dbg !2884
  %12 = add nuw nsw i64 %9, %11, !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !529, metadata !561), !dbg !2874
  br label %17, !dbg !2886

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2887
  %15 = icmp ugt i64 %14, %4, !dbg !2890
  br i1 %15, label %20, label %16, !dbg !2891

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2892
  unreachable, !dbg !2892

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !529, metadata !561), !dbg !2874
  store i64 %18, i64* %1, align 8, !dbg !2893, !tbaa !1908
  %19 = mul i64 %18, %2, !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2834, metadata !561) #9, !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2839, metadata !561) #9, !dbg !2897
  br label %27, !dbg !2898

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2899
  %22 = add i64 %4, 1, !dbg !2900
  %23 = add i64 %22, %21, !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !529, metadata !561), !dbg !2874
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !529, metadata !561), !dbg !2874
  store i64 %23, i64* %1, align 8, !dbg !2893, !tbaa !1908
  %24 = mul i64 %23, %2, !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2834, metadata !561) #9, !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2839, metadata !561) #9, !dbg !2897
  %25 = icmp eq i64 %24, 0, !dbg !2902
  br i1 %25, label %26, label %27, !dbg !2898

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !2903
  br label %34, !dbg !2904

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !2905
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2834, metadata !561) #9, !dbg !2895
  %30 = icmp eq i8* %29, null, !dbg !2906
  %31 = icmp ne i64 %28, 0, !dbg !2907
  %32 = and i1 %31, %30, !dbg !2908
  br i1 %32, label %33, label %34, !dbg !2908

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2909
  unreachable, !dbg !2909

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2910
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2911 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2913, metadata !561), !dbg !2914
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2794, metadata !561) #9, !dbg !2915
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2917
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2800, metadata !561) #9, !dbg !2918
  %3 = icmp eq i8* %2, null, !dbg !2919
  %4 = icmp ne i64 %0, 0, !dbg !2920
  %5 = and i1 %4, %3, !dbg !2921
  br i1 %5, label %6, label %7, !dbg !2921

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2922
  unreachable, !dbg !2922

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2923
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2924 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2928, metadata !561), !dbg !2930
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2929, metadata !561), !dbg !2931
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !526, metadata !561) #9, !dbg !2932
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !527, metadata !561) #9, !dbg !2934
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !528, metadata !561) #9, !dbg !2935
  %3 = load i64, i64* %1, align 8, !dbg !2936, !tbaa !1908
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !529, metadata !561) #9, !dbg !2937
  %4 = icmp eq i8* %0, null, !dbg !2938
  br i1 %4, label %5, label %8, !dbg !2939

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2940
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !529, metadata !561) #9, !dbg !2937
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !529, metadata !561) #9, !dbg !2937
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2941
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !529, metadata !561) #9, !dbg !2937
  store i64 %7, i64* %1, align 8, !dbg !2942, !tbaa !1908
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2834, metadata !561) #9, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2839, metadata !561) #9, !dbg !2945
  br label %17, !dbg !2946

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2947
  br i1 %9, label %11, label %10, !dbg !2948

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2949
  unreachable, !dbg !2949

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2950
  %13 = add i64 %3, 1, !dbg !2951
  %14 = add i64 %13, %12, !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !529, metadata !561) #9, !dbg !2937
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !529, metadata !561) #9, !dbg !2937
  store i64 %14, i64* %1, align 8, !dbg !2942, !tbaa !1908
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2834, metadata !561) #9, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2839, metadata !561) #9, !dbg !2945
  %15 = icmp eq i64 %14, 0, !dbg !2953
  br i1 %15, label %16, label %17, !dbg !2946

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !2954
  br label %24, !dbg !2955

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !2956
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2834, metadata !561) #9, !dbg !2943
  %20 = icmp eq i8* %19, null, !dbg !2957
  %21 = icmp ne i64 %18, 0, !dbg !2958
  %22 = and i1 %21, %20, !dbg !2959
  br i1 %22, label %23, label %24, !dbg !2959

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2960
  unreachable, !dbg !2960

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2962 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2964, metadata !561), !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2794, metadata !561) #9, !dbg !2966
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2968
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2800, metadata !561) #9, !dbg !2969
  %3 = icmp eq i8* %2, null, !dbg !2970
  %4 = icmp ne i64 %0, 0, !dbg !2971
  %5 = and i1 %4, %3, !dbg !2972
  br i1 %5, label %6, label %7, !dbg !2972

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2973
  unreachable, !dbg !2973

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2974
  ret i8* %2, !dbg !2975
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2976 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2978, metadata !561), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2979, metadata !561), !dbg !2982
  %3 = udiv i64 9223372036854775807, %1, !dbg !2983
  %4 = icmp ult i64 %3, %0, !dbg !2983
  br i1 %4, label %8, label %5, !dbg !2985

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !2986
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2980, metadata !561), !dbg !2987
  %7 = icmp eq i8* %6, null, !dbg !2988
  br i1 %7, label %8, label %9, !dbg !2989

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2990
  unreachable, !dbg !2990

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2991
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2992 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2998, metadata !561), !dbg !3000
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2999, metadata !561), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2794, metadata !561) #9, !dbg !3002
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3004
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2800, metadata !561) #9, !dbg !3005
  %4 = icmp eq i8* %3, null, !dbg !3006
  %5 = icmp ne i64 %1, 0, !dbg !3007
  %6 = and i1 %5, %4, !dbg !3008
  br i1 %6, label %7, label %8, !dbg !3008

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3009
  unreachable, !dbg !3009

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3010
  ret i8* %3, !dbg !3011
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3012 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3014, metadata !561), !dbg !3015
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3016
  %3 = add i64 %2, 1, !dbg !3017
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2998, metadata !561) #9, !dbg !3018
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2999, metadata !561) #9, !dbg !3020
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2794, metadata !561) #9, !dbg !3021
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3023
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2800, metadata !561) #9, !dbg !3024
  %5 = icmp eq i8* %4, null, !dbg !3025
  %6 = icmp ne i64 %3, 0, !dbg !3026
  %7 = and i1 %6, %5, !dbg !3027
  br i1 %7, label %8, label %9, !dbg !3027

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3028
  unreachable, !dbg !3028

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !3029
  ret i8* %4, !dbg !3030
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3031 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3033, !tbaa !869
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.90, i64 0, i64 0), i32 5) #9, !dbg !3034
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i64 0, i64 0), i8* %2) #9, !dbg !3035
  tail call void @abort() #15, !dbg !3036
  unreachable, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3037 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3040, metadata !561), !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3041, metadata !561), !dbg !3047
  %3 = icmp eq i64 %0, 0, !dbg !3048
  %4 = icmp eq i64 %1, 0, !dbg !3049
  %5 = or i1 %3, %4, !dbg !3050
  br i1 %5, label %12, label %6, !dbg !3050

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3051
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3043, metadata !561), !dbg !3052
  %8 = udiv i64 %7, %1, !dbg !3053
  %9 = icmp eq i64 %8, %0, !dbg !3055
  br i1 %9, label %12, label %10, !dbg !3056

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3057
  store i32 12, i32* %11, align 4, !dbg !3059, !tbaa !869
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3040, metadata !561), !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3041, metadata !561), !dbg !3047
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3060
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3042, metadata !561), !dbg !3061
  br label %16, !dbg !3062

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3063
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3064 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3081, metadata !561), !dbg !3090
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3082, metadata !561), !dbg !3091
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3083, metadata !561), !dbg !3092
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3084, metadata !561), !dbg !3093
  %6 = bitcast i32* %5 to i8*, !dbg !3094
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !3094
  %7 = icmp eq i32* %0, null, !dbg !3095
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3081, metadata !561), !dbg !3090
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3097
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3081, metadata !561), !dbg !3090
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3085, metadata !561), !dbg !3099
  %10 = icmp ugt i64 %9, -3, !dbg !3100
  %11 = icmp ne i64 %2, 0, !dbg !3101
  %12 = and i1 %11, %10, !dbg !3102
  br i1 %12, label %13, label %18, !dbg !3102

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3103
  br i1 %14, label %18, label %15, !dbg !3104

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3105, !tbaa !659
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3087, metadata !561), !dbg !3106
  %17 = zext i8 %16 to i32, !dbg !3107
  store i32 %17, i32* %8, align 4, !dbg !3108, !tbaa !869
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !3109
  ret i64 %19, !dbg !3109
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3110 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3155, metadata !561), !dbg !3160
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3161
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3162, metadata !561), !dbg !3165
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3167
  %4 = load i32, i32* %3, align 8, !dbg !3167, !tbaa !3168
  %5 = and i32 %4, 32, !dbg !3167
  %6 = icmp eq i32 %5, 0, !dbg !3169
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3170
  %8 = icmp ne i32 %7, 0, !dbg !3171
  br i1 %6, label %9, label %19, !dbg !3172

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3174
  %11 = xor i1 %8, true, !dbg !3175
  %12 = or i1 %10, %11, !dbg !3175
  %13 = sext i1 %8 to i32, !dbg !3175
  br i1 %12, label %22, label %14, !dbg !3175

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3176
  %16 = load i32, i32* %15, align 4, !dbg !3176, !tbaa !869
  %17 = icmp ne i32 %16, 9, !dbg !3177
  %18 = sext i1 %17 to i32, !dbg !3178
  br label %22, !dbg !3178

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3179

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3181
  store i32 0, i32* %21, align 4, !dbg !3183, !tbaa !869
  br label %22, !dbg !3181

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3184
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3185 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3190, metadata !561), !dbg !3193
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3191, metadata !561), !dbg !3194
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3195
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3192, metadata !561), !dbg !3196
  %3 = icmp eq i8* %2, null, !dbg !3197
  br i1 %3, label %11, label %4, !dbg !3199

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0)) #14, !dbg !3200
  %6 = icmp eq i32 %5, 0, !dbg !3205
  br i1 %6, label %10, label %7, !dbg !3206

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.101, i64 0, i64 0)) #14, !dbg !3207
  %9 = icmp eq i32 %8, 0, !dbg !3208
  br i1 %9, label %10, label %11, !dbg !3209

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3191, metadata !561), !dbg !3194
  br label %11, !dbg !3210

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3211
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3212 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3218, metadata !561), !dbg !3292
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3285, metadata !561), !dbg !3295
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3296
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3216, metadata !561), !dbg !3297
  %4 = icmp eq i8* %3, null, !dbg !3298
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), i8* %3, !dbg !3300
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3216, metadata !561), !dbg !3297
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3301, !tbaa !568
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3232, metadata !561) #9, !dbg !3302
  %7 = icmp eq i8* %6, null, !dbg !3303
  br i1 %7, label %8, label %123, !dbg !3304

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.105, i64 0, i64 0)) #9, !dbg !3305
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3233, metadata !561) #9, !dbg !3306
  %10 = icmp eq i8* %9, null, !dbg !3307
  br i1 %10, label %14, label %11, !dbg !3309

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3310, !tbaa !659
  %13 = icmp eq i8 %12, 0, !dbg !3311
  br i1 %13, label %14, label %15, !dbg !3312

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3313

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.106, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3233, metadata !561) #9, !dbg !3306
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3236, metadata !561) #9, !dbg !3315
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3238, metadata !561) #9, !dbg !3316
  %18 = icmp eq i64 %17, 0, !dbg !3317
  br i1 %18, label %24, label %19, !dbg !3318

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3319
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3319
  %22 = load i8, i8* %21, align 1, !dbg !3319, !tbaa !659
  %23 = icmp ne i8 %22, 47, !dbg !3319
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3320
  %27 = add i64 %17, 14, !dbg !3321
  %28 = add i64 %27, %26, !dbg !3322
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3323
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3235, metadata !561) #9, !dbg !3324
  %30 = icmp eq i8* %29, null, !dbg !3325
  br i1 %30, label %121, label %31, !dbg !3325

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3326
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3329

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3330, !tbaa !659
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3332
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.107, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3333
  br label %37, !dbg !3334

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3332
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.107, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3333
  br label %37, !dbg !3334

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3335
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3240, metadata !561) #9, !dbg !3336
  %39 = icmp slt i32 %38, 0, !dbg !3337
  br i1 %39, label %119, label %40, !dbg !3338

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.108, i64 0, i64 0)) #9, !dbg !3339
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3241, metadata !561) #9, !dbg !3340
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3341
  br i1 %42, label %43, label %45, !dbg !3342

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #9, !dbg !3343
  br label %119, !dbg !3345

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3282, metadata !561) #9, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3283, metadata !561) #9, !dbg !3347
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3348

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3349

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3282, metadata !561) #9, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3283, metadata !561) #9, !dbg !3347
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3349
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3350
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3351, metadata !561) #9, !dbg !3356
  %54 = load i8*, i8** %48, align 8, !dbg !3358, !tbaa !3359
  %55 = load i8*, i8** %49, align 8, !dbg !3358, !tbaa !3360
  %56 = icmp ult i8* %54, %55, !dbg !3358
  br i1 %56, label %59, label %57, !dbg !3358, !prof !797

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3358
  br label %63, !dbg !3358

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3358
  store i8* %60, i8** %48, align 8, !dbg !3358, !tbaa !3359
  %61 = load i8, i8* %54, align 1, !dbg !3358, !tbaa !659
  %62 = zext i8 %61 to i32, !dbg !3358
  br label %63, !dbg !3358

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3358
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3284, metadata !561) #9, !dbg !3361
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3362, !llvm.loop !3363

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3368

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3351, metadata !561) #9, !dbg !3370
  %67 = load i8*, i8** %48, align 8, !dbg !3368, !tbaa !3359
  %68 = load i8*, i8** %49, align 8, !dbg !3368, !tbaa !3360
  %69 = icmp ult i8* %67, %68, !dbg !3368
  br i1 %69, label %72, label %70, !dbg !3368, !prof !797

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3368
  br label %76, !dbg !3368

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3368
  store i8* %73, i8** %48, align 8, !dbg !3368, !tbaa !3359
  %74 = load i8, i8* %67, align 1, !dbg !3368, !tbaa !659
  %75 = zext i8 %74 to i32, !dbg !3368
  br label %76, !dbg !3368

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3368
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3284, metadata !561) #9, !dbg !3361
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3371, !llvm.loop !3372

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #9, !dbg !3375
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.109, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #9, !dbg !3376
  %81 = icmp slt i32 %80, 2, !dbg !3378
  br i1 %81, label %112, label %82, !dbg !3379

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3289, metadata !561) #9, !dbg !3381
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3382
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3290, metadata !561) #9, !dbg !3383
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3291, metadata !561) #9, !dbg !3384
  %85 = icmp eq i64 %51, 0, !dbg !3385
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3387

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3283, metadata !561) #9, !dbg !3347
  %90 = add i64 %87, 2, !dbg !3388
  %91 = call noalias i8* @malloc(i64 %90) #9, !dbg !3390
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3282, metadata !561) #9, !dbg !3346
  br label %96, !dbg !3391

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3392
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3283, metadata !561) #9, !dbg !3347
  %94 = add i64 %93, 1, !dbg !3394
  %95 = call i8* @realloc(i8* %52, i64 %94) #9, !dbg !3395
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3282, metadata !561) #9, !dbg !3346
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3282, metadata !561) #9, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3283, metadata !561) #9, !dbg !3347
  %99 = icmp eq i8* %98, null, !dbg !3396
  br i1 %99, label %100, label %102, !dbg !3398

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3283, metadata !561) #9, !dbg !3347
  call void @free(i8* %52) #9, !dbg !3399
  br label %112, !dbg !3401

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3402
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3402
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3403
  %104 = xor i64 %84, -1, !dbg !3404
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3404
  %106 = xor i64 %83, -1, !dbg !3405
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3406, metadata !561) #9, !dbg !3415
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3414, metadata !561) #9, !dbg !3415
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #9, !dbg !3417
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #9, !dbg !3418
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3406, metadata !561) #9, !dbg !3419
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3414, metadata !561) #9, !dbg !3419
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #9, !dbg !3421
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #9, !dbg !3422
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3282, metadata !561) #9, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3283, metadata !561) #9, !dbg !3347
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3402
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3402
  br label %50, !dbg !3423, !llvm.loop !3372

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3402
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3402
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3424
  %116 = icmp eq i64 %113, 0, !dbg !3425
  br i1 %116, label %119, label %117, !dbg !3427

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3428
  store i8 0, i8* %118, align 1, !dbg !3430, !tbaa !659
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3232, metadata !561) #9, !dbg !3302
  call void @free(i8* %29) #9, !dbg !3431
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.104, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3232, metadata !561) #9, !dbg !3302
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3432, !tbaa !568
  br label %123, !dbg !3433

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3232, metadata !561) #9, !dbg !3302
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3217, metadata !561), !dbg !3434
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3217, metadata !561), !dbg !3434
  %125 = load i8, i8* %124, align 1, !dbg !3435, !tbaa !659
  %126 = icmp eq i8 %125, 0, !dbg !3437
  br i1 %126, label %152, label %127, !dbg !3438

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3439

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3217, metadata !561), !dbg !3434
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3439
  %132 = icmp eq i32 %131, 0, !dbg !3441
  br i1 %132, label %139, label %133, !dbg !3442

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3443
  br i1 %134, label %135, label %143, !dbg !3444

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3445
  %137 = load i8, i8* %136, align 1, !dbg !3445, !tbaa !659
  %138 = icmp eq i8 %137, 0, !dbg !3446
  br i1 %138, label %139, label %143, !dbg !3447

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3448
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3450
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3451
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3216, metadata !561), !dbg !3297
  br label %152, !dbg !3452

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3453
  %145 = add i64 %144, 1, !dbg !3454
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3455
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3217, metadata !561), !dbg !3434
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3456
  %148 = add i64 %147, 1, !dbg !3457
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3217, metadata !561), !dbg !3434
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3217, metadata !561), !dbg !3434
  %150 = load i8, i8* %149, align 1, !dbg !3435, !tbaa !659
  %151 = icmp eq i8 %150, 0, !dbg !3437
  br i1 %151, label %152, label %128, !dbg !3438, !llvm.loop !3459

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3216, metadata !561), !dbg !3297
  %154 = load i8, i8* %153, align 1, !dbg !3461, !tbaa !659
  %155 = icmp eq i8 %154, 0, !dbg !3463
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.110, i64 0, i64 0), i8* %153, !dbg !3464
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3216, metadata !561), !dbg !3297
  ret i8* %156, !dbg !3465
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3466 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3511, metadata !561), !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3512, metadata !561), !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3514, metadata !561), !dbg !3517
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3513, metadata !561), !dbg !3519
  %3 = icmp slt i32 %2, 0, !dbg !3520
  br i1 %3, label %4, label %6, !dbg !3522

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3523
  br label %24, !dbg !3524

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3525
  %8 = icmp eq i32 %7, 0, !dbg !3525
  br i1 %8, label %13, label %9, !dbg !3527

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3528
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3529
  %12 = icmp eq i64 %11, -1, !dbg !3530
  br i1 %12, label %16, label %13, !dbg !3531

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3532
  %15 = icmp eq i32 %14, 0, !dbg !3532
  br i1 %15, label %16, label %18, !dbg !3533

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3512, metadata !561), !dbg !3516
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3534
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3514, metadata !561), !dbg !3517
  br label %24, !dbg !3535

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3536
  %20 = load i32, i32* %19, align 4, !dbg !3536, !tbaa !869
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3512, metadata !561), !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3512, metadata !561), !dbg !3516
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3534
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3514, metadata !561), !dbg !3517
  %22 = icmp eq i32 %20, 0, !dbg !3537
  br i1 %22, label %24, label %23, !dbg !3535

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3539, !tbaa !869
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3514, metadata !561), !dbg !3517
  br label %24, !dbg !3541

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3542
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3543 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3588, metadata !561), !dbg !3589
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3590
  br i1 %2, label %6, label %3, !dbg !3592

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3593
  %5 = icmp eq i32 %4, 0, !dbg !3593
  br i1 %5, label %6, label %8, !dbg !3594

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3595
  br label %17, !dbg !3596

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3597, metadata !561) #9, !dbg !3602
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3604
  %10 = load i32, i32* %9, align 8, !dbg !3604, !tbaa !3168
  %11 = and i32 %10, 256, !dbg !3606
  %12 = icmp eq i32 %11, 0, !dbg !3606
  br i1 %12, label %15, label %13, !dbg !3607

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3608
  br label %15, !dbg !3608

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3609
  br label %17, !dbg !3610

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3611
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3612 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3658, metadata !561), !dbg !3664
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3659, metadata !561), !dbg !3665
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3660, metadata !561), !dbg !3666
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3667
  %5 = load i8*, i8** %4, align 8, !dbg !3667, !tbaa !3360
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3668
  %7 = load i8*, i8** %6, align 8, !dbg !3668, !tbaa !3359
  %8 = icmp eq i8* %5, %7, !dbg !3669
  br i1 %8, label %9, label %28, !dbg !3670

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3671
  %11 = load i8*, i8** %10, align 8, !dbg !3671, !tbaa !792
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3672
  %13 = load i8*, i8** %12, align 8, !dbg !3672, !tbaa !3673
  %14 = icmp eq i8* %11, %13, !dbg !3674
  br i1 %14, label %15, label %28, !dbg !3675

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3676
  %17 = load i8*, i8** %16, align 8, !dbg !3676, !tbaa !3677
  %18 = icmp eq i8* %17, null, !dbg !3678
  br i1 %18, label %19, label %28, !dbg !3679

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3680
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3681
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3661, metadata !561), !dbg !3682
  %22 = icmp eq i64 %21, -1, !dbg !3683
  br i1 %22, label %30, label %23, !dbg !3685

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3686
  %25 = load i32, i32* %24, align 8, !dbg !3687, !tbaa !3168
  %26 = and i32 %25, -17, !dbg !3687
  store i32 %26, i32* %24, align 8, !dbg !3687, !tbaa !3168
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3688
  store i64 %21, i64* %27, align 8, !dbg !3689, !tbaa !3690
  br label %30, !dbg !3691

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3692
  br label %30, !dbg !3693

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3694
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

!llvm.dbg.cu = !{!480, !2, !11, !20, !28, !37, !508, !124, !516, !533, !535, !537, !540, !542, !133, !544, !546, !548}
!llvm.ident = !{!550, !550, !550, !550, !550, !550, !550, !550, !550, !550, !550, !550, !550, !550, !550, !550, !550, !550}
!llvm.module.flags = !{!551, !552, !553, !554, !555}

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
!480 = distinct !DICompileUnit(language: DW_LANG_C99, file: !481, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !482, retainedTypes: !486, globals: !487)
!481 = !DIFile(filename: "src/echo.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!482 = !{!483, !59}
!483 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !481, line: 31, size: 32, elements: !484)
!484 = !{!485}
!485 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0)
!486 = !{!32, !31, !25, !75, !476}
!487 = !{!488}
!488 = !DIGlobalVariableExpression(var: !489)
!489 = distinct !DIGlobalVariable(name: "infomap", scope: !490, file: !491, line: 632, type: !505, isLocal: true, isDefinition: true)
!490 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !491, file: !491, line: 630, type: !492, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !494)
!491 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!492 = !DISubroutineType(types: !493)
!493 = !{null, !6}
!494 = !{!495, !496, !497, !504}
!495 = !DILocalVariable(name: "program", arg: 1, scope: !490, file: !491, line: 630, type: !6)
!496 = !DILocalVariable(name: "node", scope: !490, file: !491, line: 642, type: !6)
!497 = !DILocalVariable(name: "map_prog", scope: !490, file: !491, line: 643, type: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !490, file: !491, line: 632, size: 128, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !500, file: !491, line: 632, baseType: !6, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !500, file: !491, line: 632, baseType: !6, size: 64, offset: 64)
!504 = !DILocalVariable(name: "lc_messages", scope: !490, file: !491, line: 655, type: !6)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 896, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 7)
!508 = distinct !DICompileUnit(language: DW_LANG_C99, file: !509, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !510, retainedTypes: !515)
!509 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!510 = !{!511}
!511 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !512, line: 41, size: 32, elements: !513)
!512 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!513 = !{!514}
!514 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!515 = !{!31}
!516 = distinct !DICompileUnit(language: DW_LANG_C99, file: !517, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !518, retainedTypes: !532)
!517 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!518 = !{!519}
!519 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !521, file: !520, line: 192, size: 32, elements: !530)
!520 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!521 = distinct !DISubprogram(name: "x2nrealloc", scope: !520, file: !520, line: 180, type: !522, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !525)
!522 = !DISubroutineType(types: !523)
!523 = !{!31, !31, !524, !76}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!525 = !{!526, !527, !528, !529}
!526 = !DILocalVariable(name: "p", arg: 1, scope: !521, file: !520, line: 180, type: !31)
!527 = !DILocalVariable(name: "pn", arg: 2, scope: !521, file: !520, line: 180, type: !524)
!528 = !DILocalVariable(name: "s", arg: 3, scope: !521, file: !520, line: 180, type: !76)
!529 = !DILocalVariable(name: "n", scope: !521, file: !520, line: 182, type: !76)
!530 = !{!531}
!531 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!532 = !{!76, !32, !31}
!533 = distinct !DICompileUnit(language: DW_LANG_C99, file: !534, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!534 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = distinct !DICompileUnit(language: DW_LANG_C99, file: !536, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !515)
!536 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!537 = distinct !DICompileUnit(language: DW_LANG_C99, file: !538, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !539)
!538 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!539 = !{!76}
!540 = distinct !DICompileUnit(language: DW_LANG_C99, file: !541, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!541 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = distinct !DICompileUnit(language: DW_LANG_C99, file: !543, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!543 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!545 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!546 = distinct !DICompileUnit(language: DW_LANG_C99, file: !547, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !515)
!547 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!548 = distinct !DICompileUnit(language: DW_LANG_C99, file: !549, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !515)
!549 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!550 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!551 = !{i32 2, !"Dwarf Version", i32 4}
!552 = !{i32 2, !"Debug Info Version", i32 3}
!553 = !{i32 1, !"wchar_size", i32 4}
!554 = !{i32 7, !"PIC Level", i32 2}
!555 = !{i32 7, !"PIE Level", i32 2}
!556 = distinct !DISubprogram(name: "usage", scope: !481, file: !481, line: 35, type: !557, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !480, variables: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !25}
!559 = !{!560}
!560 = !DILocalVariable(name: "status", arg: 1, scope: !556, file: !481, line: 35, type: !25)
!561 = !DIExpression()
!562 = !DILocation(line: 35, column: 12, scope: !556)
!563 = !DILocation(line: 37, column: 14, scope: !564)
!564 = distinct !DILexicalBlock(scope: !556, file: !481, line: 37, column: 7)
!565 = !DILocation(line: 37, column: 7, scope: !556)
!566 = !DILocation(line: 38, column: 5, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !481, line: 38, column: 5)
!568 = !{!569, !569, i64 0}
!569 = !{!"any pointer", !570, i64 0}
!570 = !{!"omnipotent char", !571, i64 0}
!571 = !{!"Simple C/C++ TBAA"}
!572 = !DILocation(line: 41, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !564, file: !481, line: 40, column: 5)
!574 = !DILocation(line: 45, column: 7, scope: !573)
!575 = !DILocation(line: 50, column: 7, scope: !573)
!576 = !DILocation(line: 58, column: 7, scope: !573)
!577 = !DILocation(line: 59, column: 7, scope: !573)
!578 = !DILocation(line: 60, column: 7, scope: !573)
!579 = !DILocation(line: 65, column: 7, scope: !573)
!580 = !DILocation(line: 77, column: 7, scope: !573)
!581 = !DILocation(line: 81, column: 7, scope: !573)
!582 = !DILocation(line: 642, column: 15, scope: !490, inlinedAt: !583)
!583 = distinct !DILocation(line: 82, column: 7, scope: !573)
!584 = !DILocation(line: 651, column: 3, scope: !490, inlinedAt: !583)
!585 = !DILocation(line: 655, column: 29, scope: !490, inlinedAt: !583)
!586 = !DILocation(line: 655, column: 15, scope: !490, inlinedAt: !583)
!587 = !DILocation(line: 656, column: 7, scope: !588, inlinedAt: !583)
!588 = distinct !DILexicalBlock(scope: !490, file: !491, line: 656, column: 7)
!589 = !DILocation(line: 656, column: 19, scope: !588, inlinedAt: !583)
!590 = !DILocation(line: 656, column: 22, scope: !588, inlinedAt: !583)
!591 = !DILocation(line: 656, column: 7, scope: !490, inlinedAt: !583)
!592 = !DILocation(line: 662, column: 7, scope: !593, inlinedAt: !583)
!593 = distinct !DILexicalBlock(scope: !588, file: !491, line: 657, column: 5)
!594 = !DILocation(line: 664, column: 5, scope: !593, inlinedAt: !583)
!595 = !DILocation(line: 665, column: 3, scope: !490, inlinedAt: !583)
!596 = !DILocation(line: 667, column: 3, scope: !490, inlinedAt: !583)
!597 = !DILocation(line: 84, column: 3, scope: !556)
!598 = distinct !DISubprogram(name: "main", scope: !481, file: !481, line: 108, type: !599, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !602)
!599 = !DISubroutineType(types: !600)
!600 = !{!25, !25, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!602 = !{!603, !604, !605, !606, !607, !608, !611, !612, !616, !617}
!603 = !DILocalVariable(name: "argc", arg: 1, scope: !598, file: !481, line: 108, type: !25)
!604 = !DILocalVariable(name: "argv", arg: 2, scope: !598, file: !481, line: 108, type: !601)
!605 = !DILocalVariable(name: "display_return", scope: !598, file: !481, line: 110, type: !17)
!606 = !DILocalVariable(name: "allow_options", scope: !598, file: !481, line: 111, type: !17)
!607 = !DILocalVariable(name: "do_v9", scope: !598, file: !481, line: 118, type: !17)
!608 = !DILocalVariable(name: "temp", scope: !609, file: !481, line: 149, type: !6)
!609 = distinct !DILexicalBlock(scope: !610, file: !481, line: 148, column: 7)
!610 = distinct !DILexicalBlock(scope: !598, file: !481, line: 146, column: 7)
!611 = !DILocalVariable(name: "i", scope: !609, file: !481, line: 150, type: !76)
!612 = !DILocalVariable(name: "s", scope: !613, file: !481, line: 196, type: !6)
!613 = distinct !DILexicalBlock(scope: !614, file: !481, line: 195, column: 9)
!614 = distinct !DILexicalBlock(scope: !615, file: !481, line: 193, column: 5)
!615 = distinct !DILexicalBlock(scope: !598, file: !481, line: 192, column: 7)
!616 = !DILocalVariable(name: "c", scope: !613, file: !481, line: 197, type: !476)
!617 = !DILocalVariable(name: "ch", scope: !618, file: !481, line: 216, type: !476)
!618 = distinct !DILexicalBlock(scope: !619, file: !481, line: 215, column: 23)
!619 = distinct !DILexicalBlock(scope: !620, file: !481, line: 204, column: 21)
!620 = distinct !DILexicalBlock(scope: !621, file: !481, line: 202, column: 17)
!621 = distinct !DILexicalBlock(scope: !622, file: !481, line: 201, column: 19)
!622 = distinct !DILexicalBlock(scope: !613, file: !481, line: 200, column: 13)
!623 = !DILocation(line: 108, column: 11, scope: !598)
!624 = !DILocation(line: 108, column: 24, scope: !598)
!625 = !DILocation(line: 110, column: 8, scope: !598)
!626 = !DILocation(line: 112, column: 8, scope: !598)
!627 = !DILocation(line: 113, column: 6, scope: !598)
!628 = !DILocation(line: 113, column: 37, scope: !598)
!629 = !DILocation(line: 113, column: 44, scope: !598)
!630 = !DILocation(line: 113, column: 47, scope: !598)
!631 = !DILocation(line: 118, column: 8, scope: !598)
!632 = !DILocation(line: 121, column: 21, scope: !598)
!633 = !DILocation(line: 121, column: 3, scope: !598)
!634 = !DILocation(line: 122, column: 3, scope: !598)
!635 = !DILocation(line: 123, column: 3, scope: !598)
!636 = !DILocation(line: 124, column: 3, scope: !598)
!637 = !DILocation(line: 126, column: 3, scope: !598)
!638 = !DILocation(line: 130, column: 29, scope: !639)
!639 = distinct !DILexicalBlock(scope: !598, file: !481, line: 130, column: 7)
!640 = !DILocation(line: 130, column: 21, scope: !639)
!641 = !DILocation(line: 132, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !481, line: 132, column: 11)
!643 = distinct !DILexicalBlock(scope: !639, file: !481, line: 131, column: 5)
!644 = !DILocation(line: 132, column: 11, scope: !643)
!645 = !DILocation(line: 133, column: 9, scope: !642)
!646 = !DILocation(line: 135, column: 11, scope: !647)
!647 = distinct !DILexicalBlock(scope: !643, file: !481, line: 135, column: 11)
!648 = !DILocation(line: 135, column: 11, scope: !643)
!649 = !DILocation(line: 137, column: 24, scope: !650)
!650 = distinct !DILexicalBlock(scope: !647, file: !481, line: 136, column: 9)
!651 = !DILocation(line: 137, column: 60, scope: !650)
!652 = !DILocation(line: 137, column: 11, scope: !650)
!653 = !DILocation(line: 139, column: 11, scope: !650)
!654 = !DILocation(line: 143, column: 3, scope: !598)
!655 = !DILocation(line: 147, column: 17, scope: !610)
!656 = !DILocation(line: 146, column: 7, scope: !598)
!657 = !DILocation(line: 147, column: 25, scope: !610)
!658 = !DILocation(line: 147, column: 24, scope: !610)
!659 = !{!570, !570, i64 0}
!660 = !DILocation(line: 147, column: 33, scope: !610)
!661 = !DILocation(line: 147, column: 5, scope: !610)
!662 = !DILocation(line: 149, column: 36, scope: !609)
!663 = !DILocation(line: 149, column: 21, scope: !609)
!664 = !DILocation(line: 150, column: 16, scope: !609)
!665 = !DILocation(line: 156, column: 21, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !481, line: 156, column: 9)
!667 = distinct !DILexicalBlock(scope: !609, file: !481, line: 156, column: 9)
!668 = !DILocation(line: 156, column: 9, scope: !667)
!669 = !DILocation(line: 157, column: 19, scope: !666)
!670 = !DILocation(line: 157, column: 11, scope: !666)
!671 = !DILocation(line: 156, column: 31, scope: !666)
!672 = distinct !{!672, !668, !673}
!673 = !DILocation(line: 163, column: 13, scope: !667)
!674 = !DILocation(line: 165, column: 15, scope: !675)
!675 = distinct !DILexicalBlock(scope: !609, file: !481, line: 165, column: 13)
!676 = !DILocation(line: 165, column: 13, scope: !609)
!677 = !DILocation(line: 170, column: 9, scope: !609)
!678 = !DILocation(line: 171, column: 24, scope: !609)
!679 = !DILocation(line: 171, column: 19, scope: !609)
!680 = !DILocation(line: 171, column: 11, scope: !609)
!681 = !DILocation(line: 175, column: 15, scope: !682)
!682 = distinct !DILexicalBlock(scope: !609, file: !481, line: 172, column: 13)
!683 = !DILocation(line: 179, column: 15, scope: !682)
!684 = !DILocation(line: 183, column: 15, scope: !682)
!685 = !DILocation(line: 170, column: 16, scope: !609)
!686 = distinct !{!686, !677, !687}
!687 = !DILocation(line: 184, column: 13, scope: !609)
!688 = !DILocation(line: 186, column: 13, scope: !609)
!689 = !DILocation(line: 187, column: 13, scope: !609)
!690 = !DILocation(line: 147, column: 21, scope: !610)
!691 = distinct !{!691, !661, !692}
!692 = !DILocation(line: 188, column: 7, scope: !610)
!693 = !DILocation(line: 192, column: 7, scope: !615)
!694 = !DILocation(line: 192, column: 7, scope: !598)
!695 = !DILocation(line: 194, column: 19, scope: !614)
!696 = !DILocation(line: 194, column: 7, scope: !614)
!697 = !DILocation(line: 196, column: 27, scope: !613)
!698 = !DILocation(line: 196, column: 23, scope: !613)
!699 = !DILocation(line: 199, column: 11, scope: !613)
!700 = !DILocation(line: 199, column: 25, scope: !613)
!701 = !DILocation(line: 199, column: 23, scope: !613)
!702 = !DILocation(line: 197, column: 25, scope: !613)
!703 = !DILocation(line: 201, column: 32, scope: !621)
!704 = !DILocation(line: 201, column: 19, scope: !622)
!705 = !DILocation(line: 203, column: 33, scope: !620)
!706 = !DILocation(line: 203, column: 19, scope: !620)
!707 = !DILocation(line: 205, column: 41, scope: !619)
!708 = !DILocation(line: 206, column: 41, scope: !619)
!709 = !DILocation(line: 208, column: 43, scope: !619)
!710 = !DILocation(line: 209, column: 41, scope: !619)
!711 = !DILocation(line: 210, column: 41, scope: !619)
!712 = !DILocation(line: 211, column: 41, scope: !619)
!713 = !DILocation(line: 212, column: 41, scope: !619)
!714 = !DILocation(line: 213, column: 41, scope: !619)
!715 = !DILocation(line: 216, column: 44, scope: !618)
!716 = !DILocation(line: 216, column: 39, scope: !618)
!717 = !DILocation(line: 217, column: 31, scope: !718)
!718 = distinct !DILexicalBlock(scope: !618, file: !481, line: 217, column: 29)
!719 = !{!720, !720, i64 0}
!720 = !{!"short", !570, i64 0}
!721 = !DILocation(line: 217, column: 29, scope: !618)
!722 = !DILocation(line: 219, column: 26, scope: !618)
!723 = !DILocalVariable(name: "c", arg: 1, scope: !724, file: !481, line: 89, type: !476)
!724 = distinct !DISubprogram(name: "hextobin", scope: !481, file: !481, line: 89, type: !725, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{!25, !476}
!727 = !{!723}
!728 = !DILocation(line: 89, column: 25, scope: !724, inlinedAt: !729)
!729 = distinct !DILocation(line: 220, column: 29, scope: !618)
!730 = !DILocation(line: 91, column: 3, scope: !724, inlinedAt: !729)
!731 = !DILocation(line: 91, column: 11, scope: !724, inlinedAt: !729)
!732 = !DILocation(line: 93, column: 23, scope: !733, inlinedAt: !729)
!733 = distinct !DILexicalBlock(scope: !724, file: !481, line: 92, column: 5)
!734 = !DILocation(line: 93, column: 14, scope: !733, inlinedAt: !729)
!735 = !DILocation(line: 95, column: 25, scope: !733, inlinedAt: !729)
!736 = !DILocation(line: 96, column: 25, scope: !733, inlinedAt: !729)
!737 = !DILocation(line: 97, column: 25, scope: !733, inlinedAt: !729)
!738 = !DILocation(line: 98, column: 25, scope: !733, inlinedAt: !729)
!739 = !DILocation(line: 99, column: 25, scope: !733, inlinedAt: !729)
!740 = !DILocation(line: 221, column: 30, scope: !618)
!741 = !DILocation(line: 222, column: 29, scope: !742)
!742 = distinct !DILexicalBlock(scope: !618, file: !481, line: 222, column: 29)
!743 = !DILocation(line: 222, column: 29, scope: !618)
!744 = !DILocation(line: 224, column: 30, scope: !745)
!745 = distinct !DILexicalBlock(scope: !742, file: !481, line: 223, column: 27)
!746 = !DILocation(line: 225, column: 35, scope: !745)
!747 = !DILocation(line: 89, column: 25, scope: !724, inlinedAt: !748)
!748 = distinct !DILocation(line: 225, column: 42, scope: !745)
!749 = !DILocation(line: 91, column: 3, scope: !724, inlinedAt: !748)
!750 = !DILocation(line: 91, column: 11, scope: !724, inlinedAt: !748)
!751 = !DILocation(line: 93, column: 23, scope: !733, inlinedAt: !748)
!752 = !DILocation(line: 93, column: 14, scope: !733, inlinedAt: !748)
!753 = !DILocation(line: 95, column: 25, scope: !733, inlinedAt: !748)
!754 = !DILocation(line: 96, column: 25, scope: !733, inlinedAt: !748)
!755 = !DILocation(line: 97, column: 25, scope: !733, inlinedAt: !748)
!756 = !DILocation(line: 98, column: 25, scope: !733, inlinedAt: !748)
!757 = !DILocation(line: 99, column: 25, scope: !733, inlinedAt: !748)
!758 = !DILocation(line: 225, column: 40, scope: !745)
!759 = !DILocation(line: 226, column: 27, scope: !745)
!760 = !DILocation(line: 227, column: 23, scope: !619)
!761 = !DILocation(line: 231, column: 37, scope: !762)
!762 = distinct !DILexicalBlock(scope: !619, file: !481, line: 231, column: 27)
!763 = !DILocation(line: 231, column: 40, scope: !762)
!764 = !DILocation(line: 233, column: 29, scope: !619)
!765 = !DILocation(line: 233, column: 23, scope: !619)
!766 = !DILocation(line: 237, column: 25, scope: !619)
!767 = !DILocation(line: 238, column: 34, scope: !768)
!768 = distinct !DILexicalBlock(scope: !619, file: !481, line: 238, column: 27)
!769 = !DILocation(line: 238, column: 37, scope: !768)
!770 = !DILocation(line: 239, column: 31, scope: !768)
!771 = !DILocation(line: 239, column: 40, scope: !768)
!772 = !DILocation(line: 239, column: 43, scope: !768)
!773 = !DILocation(line: 239, column: 35, scope: !768)
!774 = !DILocation(line: 240, column: 34, scope: !775)
!775 = distinct !DILexicalBlock(scope: !619, file: !481, line: 240, column: 27)
!776 = !DILocation(line: 239, column: 25, scope: !768)
!777 = !DILocation(line: 240, column: 37, scope: !775)
!778 = !DILocation(line: 241, column: 31, scope: !775)
!779 = !DILocation(line: 241, column: 40, scope: !775)
!780 = !DILocation(line: 241, column: 43, scope: !775)
!781 = !DILocation(line: 241, column: 35, scope: !775)
!782 = !DILocation(line: 241, column: 25, scope: !775)
!783 = !DILocalVariable(name: "__c", arg: 1, scope: !784, file: !785, line: 105, type: !25)
!784 = distinct !DISubprogram(name: "putchar_unlocked", scope: !785, file: !785, line: 105, type: !786, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !788)
!785 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!786 = !DISubroutineType(types: !787)
!787 = !{!25, !25}
!788 = !{!783}
!789 = !DILocation(line: 105, column: 23, scope: !784, inlinedAt: !790)
!790 = distinct !DILocation(line: 246, column: 31, scope: !619)
!791 = !DILocation(line: 107, column: 10, scope: !784, inlinedAt: !790)
!792 = !{!793, !569, i64 40}
!793 = !{!"_IO_FILE", !794, i64 0, !569, i64 8, !569, i64 16, !569, i64 24, !569, i64 32, !569, i64 40, !569, i64 48, !569, i64 56, !569, i64 64, !569, i64 72, !569, i64 80, !569, i64 88, !569, i64 96, !569, i64 104, !794, i64 112, !794, i64 116, !795, i64 120, !720, i64 128, !570, i64 130, !570, i64 131, !569, i64 136, !795, i64 144, !569, i64 152, !569, i64 160, !569, i64 168, !569, i64 176, !795, i64 184, !794, i64 192, !570, i64 196}
!794 = !{!"int", !570, i64 0}
!795 = !{!"long", !570, i64 0}
!796 = !{!793, !569, i64 48}
!797 = !{!"branch_weights", i32 2000, i32 1}
!798 = !DILocation(line: 105, column: 23, scope: !784, inlinedAt: !799)
!799 = distinct !DILocation(line: 249, column: 15, scope: !622)
!800 = !DILocation(line: 107, column: 10, scope: !784, inlinedAt: !799)
!801 = !DILocation(line: 249, column: 15, scope: !622)
!802 = distinct !{!802, !699, !803}
!803 = !DILocation(line: 250, column: 13, scope: !613)
!804 = !DILocation(line: 251, column: 15, scope: !613)
!805 = !DILocation(line: 252, column: 15, scope: !613)
!806 = !DILocation(line: 253, column: 20, scope: !807)
!807 = distinct !DILexicalBlock(scope: !613, file: !481, line: 253, column: 15)
!808 = !DILocation(line: 253, column: 15, scope: !613)
!809 = !DILocation(line: 105, column: 23, scope: !784, inlinedAt: !810)
!810 = distinct !DILocation(line: 254, column: 13, scope: !807)
!811 = !DILocation(line: 107, column: 10, scope: !784, inlinedAt: !810)
!812 = distinct !{!812, !696, !813}
!813 = !DILocation(line: 255, column: 9, scope: !614)
!814 = !DILocation(line: 259, column: 19, scope: !815)
!815 = distinct !DILexicalBlock(scope: !615, file: !481, line: 258, column: 5)
!816 = !DILocation(line: 259, column: 7, scope: !815)
!817 = !DILocation(line: 261, column: 11, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !481, line: 260, column: 9)
!819 = !DILocation(line: 262, column: 15, scope: !818)
!820 = !DILocation(line: 263, column: 15, scope: !818)
!821 = !DILocation(line: 264, column: 20, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !481, line: 264, column: 15)
!823 = !DILocation(line: 264, column: 15, scope: !818)
!824 = !DILocation(line: 105, column: 23, scope: !784, inlinedAt: !825)
!825 = distinct !DILocation(line: 265, column: 13, scope: !822)
!826 = !DILocation(line: 107, column: 10, scope: !784, inlinedAt: !825)
!827 = distinct !{!827, !816, !828}
!828 = !DILocation(line: 266, column: 9, scope: !815)
!829 = !DILocation(line: 269, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !598, file: !481, line: 269, column: 7)
!831 = !DILocation(line: 269, column: 7, scope: !598)
!832 = !DILocation(line: 105, column: 23, scope: !784, inlinedAt: !833)
!833 = distinct !DILocation(line: 270, column: 5, scope: !830)
!834 = !DILocation(line: 107, column: 10, scope: !784, inlinedAt: !833)
!835 = !DILocation(line: 272, column: 1, scope: !598)
!836 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 41, type: !492, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !837)
!837 = !{!838}
!838 = !DILocalVariable(name: "file", arg: 1, scope: !836, file: !16, line: 41, type: !6)
!839 = !DILocation(line: 41, column: 41, scope: !836)
!840 = !DILocation(line: 43, column: 13, scope: !836)
!841 = !DILocation(line: 44, column: 1, scope: !836)
!842 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 78, type: !843, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !845)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !17}
!845 = !{!846}
!846 = !DILocalVariable(name: "ignore", arg: 1, scope: !842, file: !16, line: 78, type: !17)
!847 = !DILocation(line: 78, column: 37, scope: !842)
!848 = !DILocation(line: 80, column: 16, scope: !842)
!849 = !{!850, !850, i64 0}
!850 = !{!"_Bool", !570, i64 0}
!851 = !DILocation(line: 81, column: 1, scope: !842)
!852 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 107, type: !853, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !11, variables: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{null}
!855 = !{!856}
!856 = !DILocalVariable(name: "write_error", scope: !857, file: !16, line: 112, type: !6)
!857 = distinct !DILexicalBlock(scope: !858, file: !16, line: 111, column: 5)
!858 = distinct !DILexicalBlock(scope: !852, file: !16, line: 109, column: 7)
!859 = !DILocation(line: 109, column: 21, scope: !858)
!860 = !DILocation(line: 109, column: 7, scope: !858)
!861 = !DILocation(line: 109, column: 29, scope: !858)
!862 = !DILocation(line: 110, column: 7, scope: !858)
!863 = !DILocation(line: 110, column: 12, scope: !858)
!864 = !{i8 0, i8 2}
!865 = !DILocation(line: 114, column: 19, scope: !866)
!866 = distinct !DILexicalBlock(scope: !857, file: !16, line: 113, column: 11)
!867 = !DILocation(line: 110, column: 25, scope: !858)
!868 = !DILocation(line: 110, column: 28, scope: !858)
!869 = !{!794, !794, i64 0}
!870 = !DILocation(line: 110, column: 34, scope: !858)
!871 = !DILocation(line: 109, column: 7, scope: !852)
!872 = !DILocation(line: 112, column: 33, scope: !857)
!873 = !DILocation(line: 112, column: 19, scope: !857)
!874 = !DILocation(line: 113, column: 11, scope: !866)
!875 = !DILocation(line: 113, column: 11, scope: !857)
!876 = !DILocation(line: 114, column: 36, scope: !866)
!877 = !DILocation(line: 114, column: 9, scope: !866)
!878 = !DILocation(line: 117, column: 9, scope: !866)
!879 = !DILocation(line: 119, column: 14, scope: !857)
!880 = !DILocation(line: 119, column: 7, scope: !857)
!881 = !DILocation(line: 122, column: 22, scope: !882)
!882 = distinct !DILexicalBlock(scope: !852, file: !16, line: 122, column: 8)
!883 = !DILocation(line: 122, column: 8, scope: !882)
!884 = !DILocation(line: 122, column: 30, scope: !882)
!885 = !DILocation(line: 122, column: 8, scope: !852)
!886 = !DILocation(line: 123, column: 13, scope: !882)
!887 = !DILocation(line: 123, column: 6, scope: !882)
!888 = !DILocation(line: 124, column: 1, scope: !852)
!889 = distinct !DISubprogram(name: "set_program_name", scope: !34, file: !34, line: 39, type: !492, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !28, variables: !890)
!890 = !{!891, !892, !893}
!891 = !DILocalVariable(name: "argv0", arg: 1, scope: !889, file: !34, line: 39, type: !6)
!892 = !DILocalVariable(name: "slash", scope: !889, file: !34, line: 46, type: !6)
!893 = !DILocalVariable(name: "base", scope: !889, file: !34, line: 47, type: !6)
!894 = !DILocation(line: 39, column: 31, scope: !889)
!895 = !DILocation(line: 51, column: 13, scope: !896)
!896 = distinct !DILexicalBlock(scope: !889, file: !34, line: 51, column: 7)
!897 = !DILocation(line: 51, column: 7, scope: !889)
!898 = !DILocation(line: 55, column: 14, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !34, line: 52, column: 5)
!900 = !DILocation(line: 54, column: 7, scope: !899)
!901 = !DILocation(line: 56, column: 7, scope: !899)
!902 = !DILocation(line: 59, column: 11, scope: !889)
!903 = !DILocation(line: 46, column: 15, scope: !889)
!904 = !DILocation(line: 60, column: 17, scope: !889)
!905 = !DILocation(line: 60, column: 33, scope: !889)
!906 = !DILocation(line: 60, column: 11, scope: !889)
!907 = !DILocation(line: 47, column: 15, scope: !889)
!908 = !DILocation(line: 61, column: 12, scope: !909)
!909 = distinct !DILexicalBlock(scope: !889, file: !34, line: 61, column: 7)
!910 = !DILocation(line: 61, column: 20, scope: !909)
!911 = !DILocation(line: 61, column: 25, scope: !909)
!912 = !DILocation(line: 61, column: 42, scope: !909)
!913 = !DILocation(line: 61, column: 28, scope: !909)
!914 = !DILocation(line: 61, column: 61, scope: !909)
!915 = !DILocation(line: 61, column: 7, scope: !889)
!916 = !DILocation(line: 64, column: 11, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !34, line: 64, column: 11)
!918 = distinct !DILexicalBlock(scope: !909, file: !34, line: 62, column: 5)
!919 = !DILocation(line: 64, column: 36, scope: !917)
!920 = !DILocation(line: 64, column: 11, scope: !918)
!921 = !DILocation(line: 66, column: 24, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !34, line: 65, column: 9)
!923 = !DILocation(line: 70, column: 41, scope: !922)
!924 = !DILocation(line: 72, column: 9, scope: !922)
!925 = !DILocation(line: 84, column: 16, scope: !889)
!926 = !DILocation(line: 90, column: 27, scope: !889)
!927 = !DILocation(line: 92, column: 1, scope: !889)
!928 = distinct !DISubprogram(name: "clone_quoting_options", scope: !82, file: !82, line: 114, type: !929, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !932)
!929 = !DISubroutineType(types: !930)
!930 = !{!931, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!932 = !{!933, !934, !935}
!933 = !DILocalVariable(name: "o", arg: 1, scope: !928, file: !82, line: 114, type: !931)
!934 = !DILocalVariable(name: "e", scope: !928, file: !82, line: 116, type: !25)
!935 = !DILocalVariable(name: "p", scope: !928, file: !82, line: 117, type: !931)
!936 = !DILocation(line: 114, column: 48, scope: !928)
!937 = !DILocation(line: 116, column: 11, scope: !928)
!938 = !DILocation(line: 116, column: 7, scope: !928)
!939 = !DILocation(line: 117, column: 40, scope: !928)
!940 = !DILocation(line: 117, column: 31, scope: !928)
!941 = !DILocation(line: 117, column: 27, scope: !928)
!942 = !DILocation(line: 119, column: 9, scope: !928)
!943 = !DILocation(line: 120, column: 3, scope: !928)
!944 = distinct !DISubprogram(name: "get_quoting_style", scope: !82, file: !82, line: 125, type: !945, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !949)
!945 = !DISubroutineType(types: !946)
!946 = !{!40, !947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!949 = !{!950}
!950 = !DILocalVariable(name: "o", arg: 1, scope: !944, file: !82, line: 125, type: !947)
!951 = !DILocation(line: 125, column: 50, scope: !944)
!952 = !DILocation(line: 127, column: 11, scope: !944)
!953 = !DILocation(line: 127, column: 46, scope: !944)
!954 = !{!955, !570, i64 0}
!955 = !{!"quoting_options", !570, i64 0, !794, i64 4, !570, i64 8, !569, i64 40, !569, i64 48}
!956 = !DILocation(line: 127, column: 3, scope: !944)
!957 = distinct !DISubprogram(name: "set_quoting_style", scope: !82, file: !82, line: 133, type: !958, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !960)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !931, !40}
!960 = !{!961, !962}
!961 = !DILocalVariable(name: "o", arg: 1, scope: !957, file: !82, line: 133, type: !931)
!962 = !DILocalVariable(name: "s", arg: 2, scope: !957, file: !82, line: 133, type: !40)
!963 = !DILocation(line: 133, column: 44, scope: !957)
!964 = !DILocation(line: 133, column: 66, scope: !957)
!965 = !DILocation(line: 135, column: 4, scope: !957)
!966 = !DILocation(line: 135, column: 39, scope: !957)
!967 = !DILocation(line: 135, column: 45, scope: !957)
!968 = !DILocation(line: 136, column: 1, scope: !957)
!969 = distinct !DISubprogram(name: "set_char_quoting", scope: !82, file: !82, line: 144, type: !970, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{!25, !931, !8, !25}
!972 = !{!973, !974, !975, !976, !977, !979, !980}
!973 = !DILocalVariable(name: "o", arg: 1, scope: !969, file: !82, line: 144, type: !931)
!974 = !DILocalVariable(name: "c", arg: 2, scope: !969, file: !82, line: 144, type: !8)
!975 = !DILocalVariable(name: "i", arg: 3, scope: !969, file: !82, line: 144, type: !25)
!976 = !DILocalVariable(name: "uc", scope: !969, file: !82, line: 146, type: !476)
!977 = !DILocalVariable(name: "p", scope: !969, file: !82, line: 147, type: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!979 = !DILocalVariable(name: "shift", scope: !969, file: !82, line: 149, type: !25)
!980 = !DILocalVariable(name: "r", scope: !969, file: !82, line: 150, type: !25)
!981 = !DILocation(line: 144, column: 43, scope: !969)
!982 = !DILocation(line: 144, column: 51, scope: !969)
!983 = !DILocation(line: 144, column: 58, scope: !969)
!984 = !DILocation(line: 146, column: 17, scope: !969)
!985 = !DILocation(line: 148, column: 6, scope: !969)
!986 = !DILocation(line: 148, column: 62, scope: !969)
!987 = !DILocation(line: 148, column: 57, scope: !969)
!988 = !DILocation(line: 147, column: 17, scope: !969)
!989 = !DILocation(line: 149, column: 18, scope: !969)
!990 = !DILocation(line: 149, column: 15, scope: !969)
!991 = !DILocation(line: 149, column: 7, scope: !969)
!992 = !DILocation(line: 150, column: 12, scope: !969)
!993 = !DILocation(line: 150, column: 15, scope: !969)
!994 = !DILocation(line: 150, column: 25, scope: !969)
!995 = !DILocation(line: 150, column: 7, scope: !969)
!996 = !DILocation(line: 151, column: 13, scope: !969)
!997 = !DILocation(line: 151, column: 18, scope: !969)
!998 = !DILocation(line: 151, column: 23, scope: !969)
!999 = !DILocation(line: 151, column: 6, scope: !969)
!1000 = !DILocation(line: 152, column: 3, scope: !969)
!1001 = distinct !DISubprogram(name: "set_quoting_flags", scope: !82, file: !82, line: 160, type: !1002, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!25, !931, !25}
!1004 = !{!1005, !1006, !1007}
!1005 = !DILocalVariable(name: "o", arg: 1, scope: !1001, file: !82, line: 160, type: !931)
!1006 = !DILocalVariable(name: "i", arg: 2, scope: !1001, file: !82, line: 160, type: !25)
!1007 = !DILocalVariable(name: "r", scope: !1001, file: !82, line: 162, type: !25)
!1008 = !DILocation(line: 160, column: 44, scope: !1001)
!1009 = !DILocation(line: 160, column: 51, scope: !1001)
!1010 = !DILocation(line: 163, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1001, file: !82, line: 163, column: 7)
!1012 = !DILocation(line: 163, column: 7, scope: !1001)
!1013 = !DILocation(line: 165, column: 10, scope: !1001)
!1014 = !{!955, !794, i64 4}
!1015 = !DILocation(line: 162, column: 7, scope: !1001)
!1016 = !DILocation(line: 166, column: 12, scope: !1001)
!1017 = !DILocation(line: 167, column: 3, scope: !1001)
!1018 = distinct !DISubprogram(name: "set_custom_quoting", scope: !82, file: !82, line: 171, type: !1019, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !931, !6, !6}
!1021 = !{!1022, !1023, !1024}
!1022 = !DILocalVariable(name: "o", arg: 1, scope: !1018, file: !82, line: 171, type: !931)
!1023 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1018, file: !82, line: 172, type: !6)
!1024 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1018, file: !82, line: 172, type: !6)
!1025 = !DILocation(line: 171, column: 45, scope: !1018)
!1026 = !DILocation(line: 172, column: 33, scope: !1018)
!1027 = !DILocation(line: 172, column: 57, scope: !1018)
!1028 = !DILocation(line: 174, column: 8, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1018, file: !82, line: 174, column: 7)
!1030 = !DILocation(line: 174, column: 7, scope: !1018)
!1031 = !DILocation(line: 176, column: 6, scope: !1018)
!1032 = !DILocation(line: 176, column: 12, scope: !1018)
!1033 = !DILocation(line: 177, column: 8, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1018, file: !82, line: 177, column: 7)
!1035 = !DILocation(line: 177, column: 23, scope: !1034)
!1036 = !DILocation(line: 177, column: 19, scope: !1034)
!1037 = !DILocation(line: 178, column: 5, scope: !1034)
!1038 = !DILocation(line: 179, column: 6, scope: !1018)
!1039 = !DILocation(line: 179, column: 17, scope: !1018)
!1040 = !{!955, !569, i64 40}
!1041 = !DILocation(line: 180, column: 6, scope: !1018)
!1042 = !DILocation(line: 180, column: 18, scope: !1018)
!1043 = !{!955, !569, i64 48}
!1044 = !DILocation(line: 181, column: 1, scope: !1018)
!1045 = distinct !DISubprogram(name: "quotearg_buffer", scope: !82, file: !82, line: 776, type: !1046, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!76, !32, !76, !6, !76, !947}
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056}
!1049 = !DILocalVariable(name: "buffer", arg: 1, scope: !1045, file: !82, line: 776, type: !32)
!1050 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1045, file: !82, line: 776, type: !76)
!1051 = !DILocalVariable(name: "arg", arg: 3, scope: !1045, file: !82, line: 777, type: !6)
!1052 = !DILocalVariable(name: "argsize", arg: 4, scope: !1045, file: !82, line: 777, type: !76)
!1053 = !DILocalVariable(name: "o", arg: 5, scope: !1045, file: !82, line: 778, type: !947)
!1054 = !DILocalVariable(name: "p", scope: !1045, file: !82, line: 780, type: !947)
!1055 = !DILocalVariable(name: "e", scope: !1045, file: !82, line: 781, type: !25)
!1056 = !DILocalVariable(name: "r", scope: !1045, file: !82, line: 782, type: !76)
!1057 = !DILocation(line: 776, column: 24, scope: !1045)
!1058 = !DILocation(line: 776, column: 39, scope: !1045)
!1059 = !DILocation(line: 777, column: 30, scope: !1045)
!1060 = !DILocation(line: 777, column: 42, scope: !1045)
!1061 = !DILocation(line: 778, column: 48, scope: !1045)
!1062 = !DILocation(line: 780, column: 37, scope: !1045)
!1063 = !DILocation(line: 780, column: 33, scope: !1045)
!1064 = !DILocation(line: 781, column: 11, scope: !1045)
!1065 = !DILocation(line: 781, column: 7, scope: !1045)
!1066 = !DILocation(line: 783, column: 43, scope: !1045)
!1067 = !DILocation(line: 783, column: 53, scope: !1045)
!1068 = !DILocation(line: 783, column: 60, scope: !1045)
!1069 = !DILocation(line: 784, column: 43, scope: !1045)
!1070 = !DILocation(line: 784, column: 58, scope: !1045)
!1071 = !DILocation(line: 782, column: 14, scope: !1045)
!1072 = !DILocation(line: 782, column: 10, scope: !1045)
!1073 = !DILocation(line: 785, column: 9, scope: !1045)
!1074 = !DILocation(line: 786, column: 3, scope: !1045)
!1075 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !82, file: !82, line: 248, type: !1076, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1080)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!76, !32, !76, !6, !76, !40, !25, !1078, !6, !6}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1105, !1106, !1107, !1108, !1109, !1112, !1113, !1131, !1134, !1135, !1142}
!1081 = !DILocalVariable(name: "buffer", arg: 1, scope: !1075, file: !82, line: 248, type: !32)
!1082 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1075, file: !82, line: 248, type: !76)
!1083 = !DILocalVariable(name: "arg", arg: 3, scope: !1075, file: !82, line: 249, type: !6)
!1084 = !DILocalVariable(name: "argsize", arg: 4, scope: !1075, file: !82, line: 249, type: !76)
!1085 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1075, file: !82, line: 250, type: !40)
!1086 = !DILocalVariable(name: "flags", arg: 6, scope: !1075, file: !82, line: 250, type: !25)
!1087 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1075, file: !82, line: 251, type: !1078)
!1088 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1075, file: !82, line: 252, type: !6)
!1089 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1075, file: !82, line: 253, type: !6)
!1090 = !DILocalVariable(name: "i", scope: !1075, file: !82, line: 255, type: !76)
!1091 = !DILocalVariable(name: "len", scope: !1075, file: !82, line: 256, type: !76)
!1092 = !DILocalVariable(name: "orig_buffersize", scope: !1075, file: !82, line: 257, type: !76)
!1093 = !DILocalVariable(name: "quote_string", scope: !1075, file: !82, line: 258, type: !6)
!1094 = !DILocalVariable(name: "quote_string_len", scope: !1075, file: !82, line: 259, type: !76)
!1095 = !DILocalVariable(name: "backslash_escapes", scope: !1075, file: !82, line: 260, type: !17)
!1096 = !DILocalVariable(name: "unibyte_locale", scope: !1075, file: !82, line: 261, type: !17)
!1097 = !DILocalVariable(name: "elide_outer_quotes", scope: !1075, file: !82, line: 262, type: !17)
!1098 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1075, file: !82, line: 263, type: !17)
!1099 = !DILocalVariable(name: "encountered_single_quote", scope: !1075, file: !82, line: 264, type: !17)
!1100 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1075, file: !82, line: 265, type: !17)
!1101 = !DILocalVariable(name: "c", scope: !1102, file: !82, line: 394, type: !476)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !82, line: 393, column: 5)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !82, line: 392, column: 3)
!1104 = distinct !DILexicalBlock(scope: !1075, file: !82, line: 392, column: 3)
!1105 = !DILocalVariable(name: "esc", scope: !1102, file: !82, line: 395, type: !476)
!1106 = !DILocalVariable(name: "is_right_quote", scope: !1102, file: !82, line: 396, type: !17)
!1107 = !DILocalVariable(name: "escaping", scope: !1102, file: !82, line: 397, type: !17)
!1108 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1102, file: !82, line: 398, type: !17)
!1109 = !DILocalVariable(name: "m", scope: !1110, file: !82, line: 602, type: !76)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 600, column: 11)
!1111 = distinct !DILexicalBlock(scope: !1102, file: !82, line: 418, column: 9)
!1112 = !DILocalVariable(name: "printable", scope: !1110, file: !82, line: 604, type: !17)
!1113 = !DILocalVariable(name: "mbstate", scope: !1114, file: !82, line: 613, type: !1116)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !82, line: 612, column: 15)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !82, line: 606, column: 17)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1117, line: 6, baseType: !1118)
!1117 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1119, line: 21, baseType: !1120)
!1119 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1119, line: 13, size: 64, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1120, file: !1119, line: 15, baseType: !25, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1120, file: !1119, line: 20, baseType: !1124, size: 32, offset: 32)
!1124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1120, file: !1119, line: 16, size: 32, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1124, file: !1119, line: 18, baseType: !95, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1124, file: !1119, line: 19, baseType: !1128, size: 32)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1129)
!1129 = !{!1130}
!1130 = !DISubrange(count: 4)
!1131 = !DILocalVariable(name: "w", scope: !1132, file: !82, line: 623, type: !1133)
!1132 = distinct !DILexicalBlock(scope: !1114, file: !82, line: 622, column: 19)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 90, baseType: !25)
!1134 = !DILocalVariable(name: "bytes", scope: !1132, file: !82, line: 624, type: !76)
!1135 = !DILocalVariable(name: "j", scope: !1136, file: !82, line: 649, type: !76)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !82, line: 648, column: 27)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !82, line: 646, column: 29)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !82, line: 641, column: 23)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !82, line: 633, column: 30)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !82, line: 628, column: 30)
!1141 = distinct !DILexicalBlock(scope: !1132, file: !82, line: 626, column: 25)
!1142 = !DILocalVariable(name: "ilim", scope: !1143, file: !82, line: 676, type: !76)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !82, line: 673, column: 15)
!1144 = distinct !DILexicalBlock(scope: !1110, file: !82, line: 672, column: 17)
!1145 = !DILocation(line: 248, column: 33, scope: !1075)
!1146 = !DILocation(line: 248, column: 48, scope: !1075)
!1147 = !DILocation(line: 249, column: 39, scope: !1075)
!1148 = !DILocation(line: 249, column: 51, scope: !1075)
!1149 = !DILocation(line: 250, column: 46, scope: !1075)
!1150 = !DILocation(line: 250, column: 65, scope: !1075)
!1151 = !DILocation(line: 251, column: 47, scope: !1075)
!1152 = !DILocation(line: 252, column: 39, scope: !1075)
!1153 = !DILocation(line: 253, column: 39, scope: !1075)
!1154 = !DILocation(line: 256, column: 10, scope: !1075)
!1155 = !DILocation(line: 257, column: 10, scope: !1075)
!1156 = !DILocation(line: 258, column: 15, scope: !1075)
!1157 = !DILocation(line: 259, column: 10, scope: !1075)
!1158 = !DILocation(line: 260, column: 8, scope: !1075)
!1159 = !DILocation(line: 261, column: 25, scope: !1075)
!1160 = !DILocation(line: 261, column: 36, scope: !1075)
!1161 = !DILocation(line: 262, column: 8, scope: !1075)
!1162 = !DILocation(line: 263, column: 8, scope: !1075)
!1163 = !DILocation(line: 264, column: 8, scope: !1075)
!1164 = !DILocation(line: 265, column: 8, scope: !1075)
!1165 = !DILocation(line: 265, column: 3, scope: !1075)
!1166 = !DILocation(line: 308, column: 3, scope: !1075)
!1167 = !DILocation(line: 315, column: 11, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1075, file: !82, line: 309, column: 5)
!1169 = !DILocation(line: 315, column: 12, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1168, file: !82, line: 315, column: 11)
!1171 = !DILocation(line: 316, column: 9, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !82, line: 316, column: 9)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !82, line: 316, column: 9)
!1174 = !DILocation(line: 316, column: 9, scope: !1173)
!1175 = !DILocation(line: 354, column: 26, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !82, line: 332, column: 11)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !82, line: 331, column: 13)
!1178 = distinct !DILexicalBlock(scope: !1168, file: !82, line: 330, column: 7)
!1179 = !DILocation(line: 355, column: 27, scope: !1176)
!1180 = !DILocation(line: 356, column: 11, scope: !1176)
!1181 = !DILocation(line: 357, column: 14, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !82, line: 357, column: 13)
!1183 = !DILocation(line: 357, column: 13, scope: !1178)
!1184 = !DILocation(line: 358, column: 43, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !82, line: 358, column: 11)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !82, line: 358, column: 11)
!1187 = !DILocation(line: 358, column: 11, scope: !1186)
!1188 = !DILocation(line: 359, column: 13, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !82, line: 359, column: 13)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !82, line: 359, column: 13)
!1191 = !DILocation(line: 359, column: 13, scope: !1190)
!1192 = !DILocation(line: 358, column: 70, scope: !1185)
!1193 = distinct !{!1193, !1187, !1194}
!1194 = !DILocation(line: 359, column: 13, scope: !1186)
!1195 = !DILocation(line: 362, column: 28, scope: !1178)
!1196 = !DILocation(line: 364, column: 7, scope: !1168)
!1197 = !DILocation(line: 367, column: 7, scope: !1168)
!1198 = !DILocation(line: 370, column: 7, scope: !1168)
!1199 = !DILocation(line: 373, column: 12, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1168, file: !82, line: 373, column: 11)
!1201 = !DILocation(line: 373, column: 11, scope: !1168)
!1202 = !DILocation(line: 378, column: 12, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1168, file: !82, line: 378, column: 11)
!1204 = !DILocation(line: 378, column: 11, scope: !1168)
!1205 = !DILocation(line: 379, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !82, line: 379, column: 9)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !82, line: 379, column: 9)
!1208 = !DILocation(line: 379, column: 9, scope: !1207)
!1209 = !DILocation(line: 386, column: 7, scope: !1168)
!1210 = !DILocation(line: 389, column: 7, scope: !1168)
!1211 = !DILocation(line: 255, column: 10, scope: !1075)
!1212 = !DILocation(line: 392, column: 8, scope: !1104)
!1213 = !DILocation(line: 392, column: 27, scope: !1103)
!1214 = !DILocation(line: 392, column: 19, scope: !1103)
!1215 = !DILocation(line: 392, column: 60, scope: !1103)
!1216 = !DILocation(line: 392, column: 3, scope: !1104)
!1217 = !DILocation(line: 392, column: 41, scope: !1103)
!1218 = !DILocation(line: 392, column: 48, scope: !1103)
!1219 = !DILocation(line: 396, column: 12, scope: !1102)
!1220 = !DILocation(line: 397, column: 12, scope: !1102)
!1221 = !DILocation(line: 398, column: 12, scope: !1102)
!1222 = !DILocation(line: 401, column: 11, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1102, file: !82, line: 400, column: 11)
!1224 = !DILocation(line: 403, column: 17, scope: !1223)
!1225 = !DILocation(line: 404, column: 39, scope: !1223)
!1226 = !DILocation(line: 408, column: 32, scope: !1223)
!1227 = !DILocation(line: 404, column: 19, scope: !1223)
!1228 = !DILocation(line: 404, column: 15, scope: !1223)
!1229 = !DILocation(line: 409, column: 11, scope: !1223)
!1230 = !DILocation(line: 409, column: 26, scope: !1223)
!1231 = !DILocation(line: 409, column: 14, scope: !1223)
!1232 = !DILocation(line: 409, column: 63, scope: !1223)
!1233 = !DILocation(line: 400, column: 11, scope: !1102)
!1234 = !DILocation(line: 416, column: 11, scope: !1102)
!1235 = !DILocation(line: 394, column: 21, scope: !1102)
!1236 = !DILocation(line: 417, column: 7, scope: !1102)
!1237 = !DILocation(line: 420, column: 15, scope: !1111)
!1238 = !DILocation(line: 422, column: 15, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !82, line: 422, column: 15)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !82, line: 421, column: 13)
!1241 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 420, column: 15)
!1242 = !DILocation(line: 422, column: 15, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !82, line: 422, column: 15)
!1244 = !DILocation(line: 422, column: 15, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !82, line: 422, column: 15)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !82, line: 422, column: 15)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !82, line: 422, column: 15)
!1248 = !DILocation(line: 422, column: 15, scope: !1246)
!1249 = !DILocation(line: 422, column: 15, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !82, line: 422, column: 15)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !82, line: 422, column: 15)
!1252 = !DILocation(line: 422, column: 15, scope: !1251)
!1253 = !DILocation(line: 422, column: 15, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !82, line: 422, column: 15)
!1255 = distinct !DILexicalBlock(scope: !1247, file: !82, line: 422, column: 15)
!1256 = !DILocation(line: 422, column: 15, scope: !1255)
!1257 = !DILocation(line: 422, column: 15, scope: !1247)
!1258 = !DILocation(line: 422, column: 15, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !82, line: 422, column: 15)
!1260 = distinct !DILexicalBlock(scope: !1239, file: !82, line: 422, column: 15)
!1261 = !DILocation(line: 422, column: 15, scope: !1260)
!1262 = !DILocation(line: 430, column: 19, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1240, file: !82, line: 429, column: 19)
!1264 = !DILocation(line: 430, column: 24, scope: !1263)
!1265 = !DILocation(line: 430, column: 28, scope: !1263)
!1266 = !DILocation(line: 430, column: 38, scope: !1263)
!1267 = !DILocation(line: 430, column: 48, scope: !1263)
!1268 = !DILocation(line: 430, column: 59, scope: !1263)
!1269 = !DILocation(line: 432, column: 19, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !82, line: 432, column: 19)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !82, line: 432, column: 19)
!1272 = distinct !DILexicalBlock(scope: !1263, file: !82, line: 431, column: 17)
!1273 = !DILocation(line: 432, column: 19, scope: !1271)
!1274 = !DILocation(line: 433, column: 19, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !82, line: 433, column: 19)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !82, line: 433, column: 19)
!1277 = !DILocation(line: 433, column: 19, scope: !1276)
!1278 = !DILocation(line: 434, column: 17, scope: !1272)
!1279 = !DILocation(line: 441, column: 20, scope: !1241)
!1280 = !DILocation(line: 446, column: 11, scope: !1111)
!1281 = !DILocation(line: 449, column: 19, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 447, column: 13)
!1283 = !DILocation(line: 455, column: 19, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !82, line: 454, column: 19)
!1285 = !DILocation(line: 455, column: 24, scope: !1284)
!1286 = !DILocation(line: 455, column: 28, scope: !1284)
!1287 = !DILocation(line: 455, column: 38, scope: !1284)
!1288 = !DILocation(line: 455, column: 47, scope: !1284)
!1289 = !DILocation(line: 455, column: 41, scope: !1284)
!1290 = !DILocation(line: 455, column: 52, scope: !1284)
!1291 = !DILocation(line: 454, column: 19, scope: !1282)
!1292 = !DILocation(line: 456, column: 25, scope: !1284)
!1293 = !DILocation(line: 456, column: 17, scope: !1284)
!1294 = !DILocation(line: 463, column: 25, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1284, file: !82, line: 457, column: 19)
!1296 = !DILocation(line: 467, column: 21, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !82, line: 467, column: 21)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !82, line: 467, column: 21)
!1299 = !DILocation(line: 467, column: 21, scope: !1298)
!1300 = !DILocation(line: 468, column: 21, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !82, line: 468, column: 21)
!1302 = distinct !DILexicalBlock(scope: !1295, file: !82, line: 468, column: 21)
!1303 = !DILocation(line: 468, column: 21, scope: !1302)
!1304 = !DILocation(line: 469, column: 21, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !82, line: 469, column: 21)
!1306 = distinct !DILexicalBlock(scope: !1295, file: !82, line: 469, column: 21)
!1307 = !DILocation(line: 469, column: 21, scope: !1306)
!1308 = !DILocation(line: 470, column: 21, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !82, line: 470, column: 21)
!1310 = distinct !DILexicalBlock(scope: !1295, file: !82, line: 470, column: 21)
!1311 = !DILocation(line: 470, column: 21, scope: !1310)
!1312 = !DILocation(line: 471, column: 21, scope: !1295)
!1313 = !DILocation(line: 395, column: 21, scope: !1102)
!1314 = !DILocation(line: 484, column: 31, scope: !1111)
!1315 = !DILocation(line: 485, column: 31, scope: !1111)
!1316 = !DILocation(line: 487, column: 31, scope: !1111)
!1317 = !DILocation(line: 488, column: 31, scope: !1111)
!1318 = !DILocation(line: 489, column: 31, scope: !1111)
!1319 = !DILocation(line: 492, column: 15, scope: !1111)
!1320 = !DILocation(line: 494, column: 19, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !82, line: 493, column: 13)
!1322 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 492, column: 15)
!1323 = !DILocation(line: 501, column: 33, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 501, column: 15)
!1325 = !DILocation(line: 506, column: 15, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 505, column: 15)
!1327 = !DILocation(line: 510, column: 15, scope: !1111)
!1328 = !DILocation(line: 518, column: 26, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 518, column: 15)
!1330 = !DILocation(line: 518, column: 15, scope: !1111)
!1331 = !DILocation(line: 518, column: 40, scope: !1329)
!1332 = !DILocation(line: 518, column: 47, scope: !1329)
!1333 = !DILocation(line: 522, column: 17, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 522, column: 15)
!1335 = !DILocation(line: 518, column: 18, scope: !1329)
!1336 = !DILocation(line: 518, column: 65, scope: !1329)
!1337 = !DILocation(line: 522, column: 15, scope: !1111)
!1338 = !DILocation(line: 526, column: 11, scope: !1111)
!1339 = !DILocation(line: 541, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 540, column: 15)
!1341 = !DILocation(line: 548, column: 15, scope: !1111)
!1342 = !DILocation(line: 550, column: 19, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !82, line: 549, column: 13)
!1344 = distinct !DILexicalBlock(scope: !1111, file: !82, line: 548, column: 15)
!1345 = !DILocation(line: 553, column: 19, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !82, line: 553, column: 19)
!1347 = !DILocation(line: 553, column: 35, scope: !1346)
!1348 = !DILocation(line: 553, column: 30, scope: !1346)
!1349 = !DILocation(line: 562, column: 15, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !82, line: 562, column: 15)
!1351 = distinct !DILexicalBlock(scope: !1343, file: !82, line: 562, column: 15)
!1352 = !DILocation(line: 562, column: 15, scope: !1351)
!1353 = !DILocation(line: 563, column: 15, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !82, line: 563, column: 15)
!1355 = distinct !DILexicalBlock(scope: !1343, file: !82, line: 563, column: 15)
!1356 = !DILocation(line: 563, column: 15, scope: !1355)
!1357 = !DILocation(line: 564, column: 15, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !82, line: 564, column: 15)
!1359 = distinct !DILexicalBlock(scope: !1343, file: !82, line: 564, column: 15)
!1360 = !DILocation(line: 564, column: 15, scope: !1359)
!1361 = !DILocation(line: 566, column: 13, scope: !1343)
!1362 = !DILocation(line: 606, column: 17, scope: !1110)
!1363 = !DILocation(line: 602, column: 20, scope: !1110)
!1364 = !DILocation(line: 609, column: 29, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1115, file: !82, line: 607, column: 15)
!1366 = !DILocation(line: 609, column: 27, scope: !1365)
!1367 = !DILocation(line: 604, column: 18, scope: !1110)
!1368 = !DILocation(line: 610, column: 15, scope: !1365)
!1369 = !DILocation(line: 613, column: 17, scope: !1114)
!1370 = !DILocation(line: 614, column: 17, scope: !1114)
!1371 = !DILocation(line: 618, column: 29, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1114, file: !82, line: 618, column: 21)
!1373 = !DILocation(line: 618, column: 21, scope: !1114)
!1374 = !DILocation(line: 619, column: 29, scope: !1372)
!1375 = !DILocation(line: 619, column: 19, scope: !1372)
!1376 = !DILocation(line: 621, column: 17, scope: !1114)
!1377 = distinct !{!1377, !1376, !1378}
!1378 = !DILocation(line: 667, column: 44, scope: !1114)
!1379 = !DILocation(line: 623, column: 21, scope: !1132)
!1380 = !DILocation(line: 624, column: 56, scope: !1132)
!1381 = !DILocation(line: 624, column: 50, scope: !1132)
!1382 = !DILocation(line: 625, column: 53, scope: !1132)
!1383 = !DILocation(line: 613, column: 27, scope: !1114)
!1384 = !DILocation(line: 623, column: 29, scope: !1132)
!1385 = !DILocation(line: 624, column: 36, scope: !1132)
!1386 = !DILocation(line: 624, column: 28, scope: !1132)
!1387 = !DILocation(line: 626, column: 25, scope: !1132)
!1388 = !DILocation(line: 636, column: 38, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1139, file: !82, line: 634, column: 23)
!1390 = !DILocation(line: 636, column: 48, scope: !1389)
!1391 = !DILocation(line: 636, column: 51, scope: !1389)
!1392 = !DILocation(line: 636, column: 25, scope: !1389)
!1393 = !DILocation(line: 637, column: 28, scope: !1389)
!1394 = !DILocation(line: 636, column: 34, scope: !1389)
!1395 = distinct !{!1395, !1392, !1393}
!1396 = !DILocation(line: 650, column: 43, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !82, line: 650, column: 29)
!1398 = distinct !DILexicalBlock(scope: !1136, file: !82, line: 650, column: 29)
!1399 = !DILocation(line: 647, column: 29, scope: !1137)
!1400 = !DILocation(line: 649, column: 36, scope: !1136)
!1401 = !DILocation(line: 651, column: 49, scope: !1397)
!1402 = !DILocation(line: 651, column: 39, scope: !1397)
!1403 = !DILocation(line: 651, column: 31, scope: !1397)
!1404 = !DILocation(line: 650, column: 53, scope: !1397)
!1405 = !DILocation(line: 650, column: 29, scope: !1398)
!1406 = distinct !{!1406, !1405, !1407}
!1407 = !DILocation(line: 659, column: 33, scope: !1398)
!1408 = !DILocation(line: 666, column: 19, scope: !1114)
!1409 = !DILocation(line: 662, column: 41, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1138, file: !82, line: 662, column: 29)
!1411 = !DILocation(line: 662, column: 31, scope: !1410)
!1412 = !DILocation(line: 662, column: 29, scope: !1138)
!1413 = !DILocation(line: 664, column: 27, scope: !1138)
!1414 = !DILocation(line: 667, column: 26, scope: !1114)
!1415 = !DILocation(line: 667, column: 24, scope: !1114)
!1416 = !DILocation(line: 666, column: 19, scope: !1132)
!1417 = !DILocation(line: 668, column: 15, scope: !1115)
!1418 = !DILocation(line: 670, column: 40, scope: !1110)
!1419 = !DILocation(line: 672, column: 19, scope: !1144)
!1420 = !DILocation(line: 672, column: 45, scope: !1144)
!1421 = !DILocation(line: 672, column: 23, scope: !1144)
!1422 = !DILocation(line: 676, column: 33, scope: !1143)
!1423 = !DILocation(line: 676, column: 24, scope: !1143)
!1424 = !DILocation(line: 678, column: 17, scope: !1143)
!1425 = !DILocation(line: 680, column: 43, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !82, line: 680, column: 25)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !82, line: 679, column: 19)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !82, line: 678, column: 17)
!1429 = distinct !DILexicalBlock(scope: !1143, file: !82, line: 678, column: 17)
!1430 = !DILocation(line: 682, column: 25, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !82, line: 682, column: 25)
!1432 = distinct !DILexicalBlock(scope: !1426, file: !82, line: 681, column: 23)
!1433 = !DILocation(line: 682, column: 25, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1431, file: !82, line: 682, column: 25)
!1435 = !DILocation(line: 682, column: 25, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !82, line: 682, column: 25)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !82, line: 682, column: 25)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !82, line: 682, column: 25)
!1439 = !DILocation(line: 682, column: 25, scope: !1437)
!1440 = !DILocation(line: 682, column: 25, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !82, line: 682, column: 25)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !82, line: 682, column: 25)
!1443 = !DILocation(line: 682, column: 25, scope: !1442)
!1444 = !DILocation(line: 682, column: 25, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !82, line: 682, column: 25)
!1446 = distinct !DILexicalBlock(scope: !1438, file: !82, line: 682, column: 25)
!1447 = !DILocation(line: 682, column: 25, scope: !1446)
!1448 = !DILocation(line: 682, column: 25, scope: !1438)
!1449 = !DILocation(line: 682, column: 25, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !82, line: 682, column: 25)
!1451 = distinct !DILexicalBlock(scope: !1431, file: !82, line: 682, column: 25)
!1452 = !DILocation(line: 682, column: 25, scope: !1451)
!1453 = !DILocation(line: 683, column: 25, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !82, line: 683, column: 25)
!1455 = distinct !DILexicalBlock(scope: !1432, file: !82, line: 683, column: 25)
!1456 = !DILocation(line: 683, column: 25, scope: !1455)
!1457 = !DILocation(line: 684, column: 25, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !82, line: 684, column: 25)
!1459 = distinct !DILexicalBlock(scope: !1432, file: !82, line: 684, column: 25)
!1460 = !DILocation(line: 684, column: 25, scope: !1459)
!1461 = !DILocation(line: 685, column: 38, scope: !1432)
!1462 = !DILocation(line: 685, column: 33, scope: !1432)
!1463 = !DILocation(line: 686, column: 23, scope: !1432)
!1464 = !DILocation(line: 687, column: 30, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1426, file: !82, line: 687, column: 30)
!1466 = !DILocation(line: 687, column: 30, scope: !1426)
!1467 = !DILocation(line: 689, column: 25, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !82, line: 689, column: 25)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !82, line: 689, column: 25)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !82, line: 688, column: 23)
!1471 = !DILocation(line: 689, column: 25, scope: !1469)
!1472 = !DILocation(line: 691, column: 23, scope: !1470)
!1473 = !DILocation(line: 692, column: 35, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1427, file: !82, line: 692, column: 25)
!1475 = !DILocation(line: 692, column: 30, scope: !1474)
!1476 = !DILocation(line: 692, column: 25, scope: !1427)
!1477 = !DILocation(line: 694, column: 21, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !82, line: 694, column: 21)
!1479 = distinct !DILexicalBlock(scope: !1427, file: !82, line: 694, column: 21)
!1480 = !DILocation(line: 694, column: 21, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !82, line: 694, column: 21)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !82, line: 694, column: 21)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !82, line: 694, column: 21)
!1484 = !DILocation(line: 694, column: 21, scope: !1482)
!1485 = !DILocation(line: 694, column: 21, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !82, line: 694, column: 21)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !82, line: 694, column: 21)
!1488 = !DILocation(line: 694, column: 21, scope: !1487)
!1489 = !DILocation(line: 694, column: 21, scope: !1483)
!1490 = !DILocation(line: 695, column: 21, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !82, line: 695, column: 21)
!1492 = distinct !DILexicalBlock(scope: !1427, file: !82, line: 695, column: 21)
!1493 = !DILocation(line: 695, column: 21, scope: !1492)
!1494 = !DILocation(line: 696, column: 25, scope: !1427)
!1495 = !DILocation(line: 678, column: 17, scope: !1428)
!1496 = distinct !{!1496, !1497, !1498}
!1497 = !DILocation(line: 678, column: 17, scope: !1429)
!1498 = !DILocation(line: 697, column: 19, scope: !1429)
!1499 = !DILocation(line: 704, column: 34, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1102, file: !82, line: 704, column: 11)
!1501 = !DILocation(line: 706, column: 14, scope: !1500)
!1502 = !DILocation(line: 707, column: 14, scope: !1500)
!1503 = !DILocation(line: 707, column: 35, scope: !1500)
!1504 = !DILocation(line: 707, column: 17, scope: !1500)
!1505 = !DILocation(line: 707, column: 53, scope: !1500)
!1506 = !DILocation(line: 707, column: 47, scope: !1500)
!1507 = !DILocation(line: 707, column: 65, scope: !1500)
!1508 = !DILocation(line: 708, column: 15, scope: !1500)
!1509 = !DILocation(line: 708, column: 11, scope: !1500)
!1510 = !DILocation(line: 704, column: 11, scope: !1102)
!1511 = !DILocation(line: 712, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1102, file: !82, line: 712, column: 7)
!1513 = !DILocation(line: 712, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1512, file: !82, line: 712, column: 7)
!1515 = !DILocation(line: 712, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !82, line: 712, column: 7)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !82, line: 712, column: 7)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !82, line: 712, column: 7)
!1519 = !DILocation(line: 712, column: 7, scope: !1517)
!1520 = !DILocation(line: 712, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !82, line: 712, column: 7)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !82, line: 712, column: 7)
!1523 = !DILocation(line: 712, column: 7, scope: !1522)
!1524 = !DILocation(line: 712, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !82, line: 712, column: 7)
!1526 = distinct !DILexicalBlock(scope: !1518, file: !82, line: 712, column: 7)
!1527 = !DILocation(line: 712, column: 7, scope: !1526)
!1528 = !DILocation(line: 712, column: 7, scope: !1518)
!1529 = !DILocation(line: 712, column: 7, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !82, line: 712, column: 7)
!1531 = distinct !DILexicalBlock(scope: !1512, file: !82, line: 712, column: 7)
!1532 = !DILocation(line: 712, column: 7, scope: !1531)
!1533 = !DILocation(line: 715, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !82, line: 715, column: 7)
!1535 = distinct !DILexicalBlock(scope: !1102, file: !82, line: 715, column: 7)
!1536 = !DILocation(line: 715, column: 7, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !82, line: 715, column: 7)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !82, line: 715, column: 7)
!1539 = distinct !DILexicalBlock(scope: !1534, file: !82, line: 715, column: 7)
!1540 = !DILocation(line: 715, column: 7, scope: !1538)
!1541 = !DILocation(line: 715, column: 7, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !82, line: 715, column: 7)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !82, line: 715, column: 7)
!1544 = !DILocation(line: 715, column: 7, scope: !1543)
!1545 = !DILocation(line: 715, column: 7, scope: !1539)
!1546 = !DILocation(line: 716, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !82, line: 716, column: 7)
!1548 = distinct !DILexicalBlock(scope: !1102, file: !82, line: 716, column: 7)
!1549 = !DILocation(line: 716, column: 7, scope: !1548)
!1550 = !DILocation(line: 718, column: 13, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1102, file: !82, line: 718, column: 11)
!1552 = !DILocation(line: 718, column: 11, scope: !1102)
!1553 = !DILocation(line: 720, column: 5, scope: !1103)
!1554 = !DILocation(line: 392, column: 75, scope: !1103)
!1555 = !DILocation(line: 392, column: 3, scope: !1103)
!1556 = distinct !{!1556, !1216, !1557}
!1557 = !DILocation(line: 720, column: 5, scope: !1104)
!1558 = !DILocation(line: 722, column: 11, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1075, file: !82, line: 722, column: 7)
!1560 = !DILocation(line: 722, column: 16, scope: !1559)
!1561 = !DILocation(line: 730, column: 51, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1075, file: !82, line: 730, column: 7)
!1563 = !DILocation(line: 731, column: 10, scope: !1562)
!1564 = !DILocation(line: 733, column: 11, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !82, line: 733, column: 11)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !82, line: 732, column: 5)
!1567 = !DILocation(line: 733, column: 11, scope: !1566)
!1568 = !DILocation(line: 734, column: 16, scope: !1565)
!1569 = !DILocation(line: 734, column: 9, scope: !1565)
!1570 = !DILocation(line: 738, column: 18, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1565, file: !82, line: 738, column: 16)
!1572 = !DILocation(line: 738, column: 32, scope: !1571)
!1573 = !DILocation(line: 738, column: 29, scope: !1571)
!1574 = !DILocation(line: 747, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1075, file: !82, line: 747, column: 7)
!1576 = !DILocation(line: 747, column: 20, scope: !1575)
!1577 = !DILocation(line: 748, column: 12, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !82, line: 748, column: 5)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !82, line: 748, column: 5)
!1580 = !DILocation(line: 748, column: 5, scope: !1579)
!1581 = !DILocation(line: 749, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !82, line: 749, column: 7)
!1583 = distinct !DILexicalBlock(scope: !1578, file: !82, line: 749, column: 7)
!1584 = !DILocation(line: 749, column: 7, scope: !1583)
!1585 = !DILocation(line: 748, column: 39, scope: !1578)
!1586 = distinct !{!1586, !1580, !1587}
!1587 = !DILocation(line: 749, column: 7, scope: !1579)
!1588 = !DILocation(line: 751, column: 11, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1075, file: !82, line: 751, column: 7)
!1590 = !DILocation(line: 751, column: 7, scope: !1075)
!1591 = !DILocation(line: 752, column: 5, scope: !1589)
!1592 = !DILocation(line: 752, column: 17, scope: !1589)
!1593 = !DILocation(line: 758, column: 21, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1075, file: !82, line: 758, column: 7)
!1595 = !DILocation(line: 758, column: 54, scope: !1594)
!1596 = !DILocation(line: 758, column: 51, scope: !1594)
!1597 = !DILocation(line: 762, column: 42, scope: !1075)
!1598 = !DILocation(line: 760, column: 10, scope: !1075)
!1599 = !DILocation(line: 760, column: 3, scope: !1075)
!1600 = !DILocation(line: 764, column: 1, scope: !1075)
!1601 = distinct !DISubprogram(name: "gettext_quote", scope: !82, file: !82, line: 199, type: !1602, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!6, !6, !40}
!1604 = !{!1605, !1606, !1607, !1608}
!1605 = !DILocalVariable(name: "msgid", arg: 1, scope: !1601, file: !82, line: 199, type: !6)
!1606 = !DILocalVariable(name: "s", arg: 2, scope: !1601, file: !82, line: 199, type: !40)
!1607 = !DILocalVariable(name: "translation", scope: !1601, file: !82, line: 201, type: !6)
!1608 = !DILocalVariable(name: "locale_code", scope: !1601, file: !82, line: 202, type: !6)
!1609 = !DILocation(line: 199, column: 28, scope: !1601)
!1610 = !DILocation(line: 199, column: 54, scope: !1601)
!1611 = !DILocation(line: 201, column: 29, scope: !1601)
!1612 = !DILocation(line: 201, column: 15, scope: !1601)
!1613 = !DILocation(line: 204, column: 19, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1601, file: !82, line: 204, column: 7)
!1615 = !DILocation(line: 204, column: 7, scope: !1601)
!1616 = !DILocation(line: 225, column: 17, scope: !1601)
!1617 = !DILocation(line: 202, column: 15, scope: !1601)
!1618 = !DILocalVariable(name: "s2", arg: 2, scope: !1619, file: !1620, line: 160, type: !6)
!1619 = distinct !DISubprogram(name: "strcaseeq0", scope: !1620, file: !1620, line: 160, type: !1621, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1623)
!1620 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1623 = !{!1624, !1618, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633}
!1624 = !DILocalVariable(name: "s1", arg: 1, scope: !1619, file: !1620, line: 160, type: !6)
!1625 = !DILocalVariable(name: "s20", arg: 3, scope: !1619, file: !1620, line: 160, type: !8)
!1626 = !DILocalVariable(name: "s21", arg: 4, scope: !1619, file: !1620, line: 160, type: !8)
!1627 = !DILocalVariable(name: "s22", arg: 5, scope: !1619, file: !1620, line: 160, type: !8)
!1628 = !DILocalVariable(name: "s23", arg: 6, scope: !1619, file: !1620, line: 160, type: !8)
!1629 = !DILocalVariable(name: "s24", arg: 7, scope: !1619, file: !1620, line: 160, type: !8)
!1630 = !DILocalVariable(name: "s25", arg: 8, scope: !1619, file: !1620, line: 160, type: !8)
!1631 = !DILocalVariable(name: "s26", arg: 9, scope: !1619, file: !1620, line: 160, type: !8)
!1632 = !DILocalVariable(name: "s27", arg: 10, scope: !1619, file: !1620, line: 160, type: !8)
!1633 = !DILocalVariable(name: "s28", arg: 11, scope: !1619, file: !1620, line: 160, type: !8)
!1634 = !DILocation(line: 160, column: 41, scope: !1619, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 226, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1601, file: !82, line: 226, column: 7)
!1637 = !DILocation(line: 160, column: 120, scope: !1619, inlinedAt: !1635)
!1638 = !DILocation(line: 160, column: 130, scope: !1619, inlinedAt: !1635)
!1639 = !DILocation(line: 162, column: 7, scope: !1640, inlinedAt: !1635)
!1640 = distinct !DILexicalBlock(scope: !1619, file: !1620, line: 162, column: 7)
!1641 = !DILocalVariable(name: "s2", arg: 2, scope: !1642, file: !1620, line: 146, type: !6)
!1642 = distinct !DISubprogram(name: "strcaseeq1", scope: !1620, file: !1620, line: 146, type: !1643, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1645)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1645 = !{!1646, !1641, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654}
!1646 = !DILocalVariable(name: "s1", arg: 1, scope: !1642, file: !1620, line: 146, type: !6)
!1647 = !DILocalVariable(name: "s21", arg: 3, scope: !1642, file: !1620, line: 146, type: !8)
!1648 = !DILocalVariable(name: "s22", arg: 4, scope: !1642, file: !1620, line: 146, type: !8)
!1649 = !DILocalVariable(name: "s23", arg: 5, scope: !1642, file: !1620, line: 146, type: !8)
!1650 = !DILocalVariable(name: "s24", arg: 6, scope: !1642, file: !1620, line: 146, type: !8)
!1651 = !DILocalVariable(name: "s25", arg: 7, scope: !1642, file: !1620, line: 146, type: !8)
!1652 = !DILocalVariable(name: "s26", arg: 8, scope: !1642, file: !1620, line: 146, type: !8)
!1653 = !DILocalVariable(name: "s27", arg: 9, scope: !1642, file: !1620, line: 146, type: !8)
!1654 = !DILocalVariable(name: "s28", arg: 10, scope: !1642, file: !1620, line: 146, type: !8)
!1655 = !DILocation(line: 146, column: 41, scope: !1642, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 167, column: 16, scope: !1657, inlinedAt: !1635)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !1620, line: 164, column: 11)
!1658 = distinct !DILexicalBlock(scope: !1640, file: !1620, line: 163, column: 5)
!1659 = !DILocation(line: 146, column: 110, scope: !1642, inlinedAt: !1656)
!1660 = !DILocation(line: 146, column: 120, scope: !1642, inlinedAt: !1656)
!1661 = !DILocation(line: 148, column: 7, scope: !1662, inlinedAt: !1656)
!1662 = distinct !DILexicalBlock(scope: !1642, file: !1620, line: 148, column: 7)
!1663 = !DILocalVariable(name: "s2", arg: 2, scope: !1664, file: !1620, line: 132, type: !6)
!1664 = distinct !DISubprogram(name: "strcaseeq2", scope: !1620, file: !1620, line: 132, type: !1665, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1667 = !{!1668, !1663, !1669, !1670, !1671, !1672, !1673, !1674, !1675}
!1668 = !DILocalVariable(name: "s1", arg: 1, scope: !1664, file: !1620, line: 132, type: !6)
!1669 = !DILocalVariable(name: "s22", arg: 3, scope: !1664, file: !1620, line: 132, type: !8)
!1670 = !DILocalVariable(name: "s23", arg: 4, scope: !1664, file: !1620, line: 132, type: !8)
!1671 = !DILocalVariable(name: "s24", arg: 5, scope: !1664, file: !1620, line: 132, type: !8)
!1672 = !DILocalVariable(name: "s25", arg: 6, scope: !1664, file: !1620, line: 132, type: !8)
!1673 = !DILocalVariable(name: "s26", arg: 7, scope: !1664, file: !1620, line: 132, type: !8)
!1674 = !DILocalVariable(name: "s27", arg: 8, scope: !1664, file: !1620, line: 132, type: !8)
!1675 = !DILocalVariable(name: "s28", arg: 9, scope: !1664, file: !1620, line: 132, type: !8)
!1676 = !DILocation(line: 132, column: 41, scope: !1664, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 153, column: 16, scope: !1678, inlinedAt: !1656)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !1620, line: 150, column: 11)
!1679 = distinct !DILexicalBlock(scope: !1662, file: !1620, line: 149, column: 5)
!1680 = !DILocation(line: 132, column: 100, scope: !1664, inlinedAt: !1677)
!1681 = !DILocation(line: 132, column: 110, scope: !1664, inlinedAt: !1677)
!1682 = !DILocation(line: 134, column: 7, scope: !1683, inlinedAt: !1677)
!1683 = distinct !DILexicalBlock(scope: !1664, file: !1620, line: 134, column: 7)
!1684 = !DILocalVariable(name: "s2", arg: 2, scope: !1685, file: !1620, line: 118, type: !6)
!1685 = distinct !DISubprogram(name: "strcaseeq3", scope: !1620, file: !1620, line: 118, type: !1686, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1688)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1688 = !{!1689, !1684, !1690, !1691, !1692, !1693, !1694, !1695}
!1689 = !DILocalVariable(name: "s1", arg: 1, scope: !1685, file: !1620, line: 118, type: !6)
!1690 = !DILocalVariable(name: "s23", arg: 3, scope: !1685, file: !1620, line: 118, type: !8)
!1691 = !DILocalVariable(name: "s24", arg: 4, scope: !1685, file: !1620, line: 118, type: !8)
!1692 = !DILocalVariable(name: "s25", arg: 5, scope: !1685, file: !1620, line: 118, type: !8)
!1693 = !DILocalVariable(name: "s26", arg: 6, scope: !1685, file: !1620, line: 118, type: !8)
!1694 = !DILocalVariable(name: "s27", arg: 7, scope: !1685, file: !1620, line: 118, type: !8)
!1695 = !DILocalVariable(name: "s28", arg: 8, scope: !1685, file: !1620, line: 118, type: !8)
!1696 = !DILocation(line: 118, column: 41, scope: !1685, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 139, column: 16, scope: !1698, inlinedAt: !1677)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !1620, line: 136, column: 11)
!1699 = distinct !DILexicalBlock(scope: !1683, file: !1620, line: 135, column: 5)
!1700 = !DILocation(line: 118, column: 90, scope: !1685, inlinedAt: !1697)
!1701 = !DILocation(line: 118, column: 100, scope: !1685, inlinedAt: !1697)
!1702 = !DILocation(line: 120, column: 7, scope: !1703, inlinedAt: !1697)
!1703 = distinct !DILexicalBlock(scope: !1685, file: !1620, line: 120, column: 7)
!1704 = !DILocation(line: 120, column: 7, scope: !1685, inlinedAt: !1697)
!1705 = !DILocalVariable(name: "s2", arg: 2, scope: !1706, file: !1620, line: 104, type: !6)
!1706 = distinct !DISubprogram(name: "strcaseeq4", scope: !1620, file: !1620, line: 104, type: !1707, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1709 = !{!1710, !1705, !1711, !1712, !1713, !1714, !1715}
!1710 = !DILocalVariable(name: "s1", arg: 1, scope: !1706, file: !1620, line: 104, type: !6)
!1711 = !DILocalVariable(name: "s24", arg: 3, scope: !1706, file: !1620, line: 104, type: !8)
!1712 = !DILocalVariable(name: "s25", arg: 4, scope: !1706, file: !1620, line: 104, type: !8)
!1713 = !DILocalVariable(name: "s26", arg: 5, scope: !1706, file: !1620, line: 104, type: !8)
!1714 = !DILocalVariable(name: "s27", arg: 6, scope: !1706, file: !1620, line: 104, type: !8)
!1715 = !DILocalVariable(name: "s28", arg: 7, scope: !1706, file: !1620, line: 104, type: !8)
!1716 = !DILocation(line: 104, column: 41, scope: !1706, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 125, column: 16, scope: !1718, inlinedAt: !1697)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !1620, line: 122, column: 11)
!1719 = distinct !DILexicalBlock(scope: !1703, file: !1620, line: 121, column: 5)
!1720 = !DILocation(line: 104, column: 80, scope: !1706, inlinedAt: !1717)
!1721 = !DILocation(line: 104, column: 90, scope: !1706, inlinedAt: !1717)
!1722 = !DILocation(line: 106, column: 7, scope: !1723, inlinedAt: !1717)
!1723 = distinct !DILexicalBlock(scope: !1706, file: !1620, line: 106, column: 7)
!1724 = !DILocation(line: 106, column: 7, scope: !1706, inlinedAt: !1717)
!1725 = !DILocalVariable(name: "s2", arg: 2, scope: !1726, file: !1620, line: 90, type: !6)
!1726 = distinct !DISubprogram(name: "strcaseeq5", scope: !1620, file: !1620, line: 90, type: !1727, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!25, !6, !6, !8, !8, !8, !8}
!1729 = !{!1730, !1725, !1731, !1732, !1733, !1734}
!1730 = !DILocalVariable(name: "s1", arg: 1, scope: !1726, file: !1620, line: 90, type: !6)
!1731 = !DILocalVariable(name: "s25", arg: 3, scope: !1726, file: !1620, line: 90, type: !8)
!1732 = !DILocalVariable(name: "s26", arg: 4, scope: !1726, file: !1620, line: 90, type: !8)
!1733 = !DILocalVariable(name: "s27", arg: 5, scope: !1726, file: !1620, line: 90, type: !8)
!1734 = !DILocalVariable(name: "s28", arg: 6, scope: !1726, file: !1620, line: 90, type: !8)
!1735 = !DILocation(line: 90, column: 41, scope: !1726, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 111, column: 16, scope: !1737, inlinedAt: !1717)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !1620, line: 108, column: 11)
!1738 = distinct !DILexicalBlock(scope: !1723, file: !1620, line: 107, column: 5)
!1739 = !DILocation(line: 90, column: 70, scope: !1726, inlinedAt: !1736)
!1740 = !DILocation(line: 90, column: 80, scope: !1726, inlinedAt: !1736)
!1741 = !DILocation(line: 92, column: 7, scope: !1742, inlinedAt: !1736)
!1742 = distinct !DILexicalBlock(scope: !1726, file: !1620, line: 92, column: 7)
!1743 = !DILocation(line: 92, column: 7, scope: !1726, inlinedAt: !1736)
!1744 = !DILocation(line: 227, column: 12, scope: !1636)
!1745 = !DILocation(line: 227, column: 21, scope: !1636)
!1746 = !DILocation(line: 227, column: 5, scope: !1636)
!1747 = !DILocation(line: 146, column: 41, scope: !1642, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 167, column: 16, scope: !1657, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 228, column: 7, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1601, file: !82, line: 228, column: 7)
!1751 = !DILocation(line: 146, column: 110, scope: !1642, inlinedAt: !1748)
!1752 = !DILocation(line: 146, column: 120, scope: !1642, inlinedAt: !1748)
!1753 = !DILocation(line: 148, column: 7, scope: !1662, inlinedAt: !1748)
!1754 = !DILocation(line: 132, column: 41, scope: !1664, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 153, column: 16, scope: !1678, inlinedAt: !1748)
!1756 = !DILocation(line: 132, column: 100, scope: !1664, inlinedAt: !1755)
!1757 = !DILocation(line: 132, column: 110, scope: !1664, inlinedAt: !1755)
!1758 = !DILocation(line: 134, column: 7, scope: !1683, inlinedAt: !1755)
!1759 = !DILocation(line: 134, column: 7, scope: !1664, inlinedAt: !1755)
!1760 = !DILocation(line: 118, column: 41, scope: !1685, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 139, column: 16, scope: !1698, inlinedAt: !1755)
!1762 = !DILocation(line: 118, column: 90, scope: !1685, inlinedAt: !1761)
!1763 = !DILocation(line: 118, column: 100, scope: !1685, inlinedAt: !1761)
!1764 = !DILocation(line: 120, column: 7, scope: !1703, inlinedAt: !1761)
!1765 = !DILocation(line: 120, column: 7, scope: !1685, inlinedAt: !1761)
!1766 = !DILocation(line: 104, column: 41, scope: !1706, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 125, column: 16, scope: !1718, inlinedAt: !1761)
!1768 = !DILocation(line: 104, column: 80, scope: !1706, inlinedAt: !1767)
!1769 = !DILocation(line: 104, column: 90, scope: !1706, inlinedAt: !1767)
!1770 = !DILocation(line: 106, column: 7, scope: !1723, inlinedAt: !1767)
!1771 = !DILocation(line: 106, column: 7, scope: !1706, inlinedAt: !1767)
!1772 = !DILocation(line: 90, column: 41, scope: !1726, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 111, column: 16, scope: !1737, inlinedAt: !1767)
!1774 = !DILocation(line: 90, column: 70, scope: !1726, inlinedAt: !1773)
!1775 = !DILocation(line: 90, column: 80, scope: !1726, inlinedAt: !1773)
!1776 = !DILocation(line: 92, column: 7, scope: !1742, inlinedAt: !1773)
!1777 = !DILocation(line: 92, column: 7, scope: !1726, inlinedAt: !1773)
!1778 = !DILocalVariable(name: "s2", arg: 2, scope: !1779, file: !1620, line: 76, type: !6)
!1779 = distinct !DISubprogram(name: "strcaseeq6", scope: !1620, file: !1620, line: 76, type: !1780, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1782)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!25, !6, !6, !8, !8, !8}
!1782 = !{!1783, !1778, !1784, !1785, !1786}
!1783 = !DILocalVariable(name: "s1", arg: 1, scope: !1779, file: !1620, line: 76, type: !6)
!1784 = !DILocalVariable(name: "s26", arg: 3, scope: !1779, file: !1620, line: 76, type: !8)
!1785 = !DILocalVariable(name: "s27", arg: 4, scope: !1779, file: !1620, line: 76, type: !8)
!1786 = !DILocalVariable(name: "s28", arg: 5, scope: !1779, file: !1620, line: 76, type: !8)
!1787 = !DILocation(line: 76, column: 41, scope: !1779, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 97, column: 16, scope: !1789, inlinedAt: !1773)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !1620, line: 94, column: 11)
!1790 = distinct !DILexicalBlock(scope: !1742, file: !1620, line: 93, column: 5)
!1791 = !DILocation(line: 76, column: 60, scope: !1779, inlinedAt: !1788)
!1792 = !DILocation(line: 76, column: 70, scope: !1779, inlinedAt: !1788)
!1793 = !DILocation(line: 78, column: 7, scope: !1794, inlinedAt: !1788)
!1794 = distinct !DILexicalBlock(scope: !1779, file: !1620, line: 78, column: 7)
!1795 = !DILocation(line: 78, column: 7, scope: !1779, inlinedAt: !1788)
!1796 = !DILocalVariable(name: "s2", arg: 2, scope: !1797, file: !1620, line: 62, type: !6)
!1797 = distinct !DISubprogram(name: "strcaseeq7", scope: !1620, file: !1620, line: 62, type: !1798, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!25, !6, !6, !8, !8}
!1800 = !{!1801, !1796, !1802, !1803}
!1801 = !DILocalVariable(name: "s1", arg: 1, scope: !1797, file: !1620, line: 62, type: !6)
!1802 = !DILocalVariable(name: "s27", arg: 3, scope: !1797, file: !1620, line: 62, type: !8)
!1803 = !DILocalVariable(name: "s28", arg: 4, scope: !1797, file: !1620, line: 62, type: !8)
!1804 = !DILocation(line: 62, column: 41, scope: !1797, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 83, column: 16, scope: !1806, inlinedAt: !1788)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !1620, line: 80, column: 11)
!1807 = distinct !DILexicalBlock(scope: !1794, file: !1620, line: 79, column: 5)
!1808 = !DILocation(line: 62, column: 50, scope: !1797, inlinedAt: !1805)
!1809 = !DILocation(line: 62, column: 60, scope: !1797, inlinedAt: !1805)
!1810 = !DILocation(line: 64, column: 7, scope: !1811, inlinedAt: !1805)
!1811 = distinct !DILexicalBlock(scope: !1797, file: !1620, line: 64, column: 7)
!1812 = !DILocation(line: 228, column: 7, scope: !1601)
!1813 = !DILocation(line: 229, column: 12, scope: !1750)
!1814 = !DILocation(line: 229, column: 21, scope: !1750)
!1815 = !DILocation(line: 229, column: 5, scope: !1750)
!1816 = !DILocation(line: 231, column: 13, scope: !1601)
!1817 = !DILocation(line: 231, column: 11, scope: !1601)
!1818 = !DILocation(line: 231, column: 3, scope: !1601)
!1819 = !DILocation(line: 232, column: 1, scope: !1601)
!1820 = distinct !DISubprogram(name: "quotearg_alloc", scope: !82, file: !82, line: 791, type: !1821, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1823)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!32, !6, !76, !947}
!1823 = !{!1824, !1825, !1826}
!1824 = !DILocalVariable(name: "arg", arg: 1, scope: !1820, file: !82, line: 791, type: !6)
!1825 = !DILocalVariable(name: "argsize", arg: 2, scope: !1820, file: !82, line: 791, type: !76)
!1826 = !DILocalVariable(name: "o", arg: 3, scope: !1820, file: !82, line: 792, type: !947)
!1827 = !DILocation(line: 791, column: 29, scope: !1820)
!1828 = !DILocation(line: 791, column: 41, scope: !1820)
!1829 = !DILocation(line: 792, column: 47, scope: !1820)
!1830 = !DILocalVariable(name: "arg", arg: 1, scope: !1831, file: !82, line: 804, type: !6)
!1831 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 804, type: !1832, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1834)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!32, !6, !76, !524, !947}
!1834 = !{!1830, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842}
!1835 = !DILocalVariable(name: "argsize", arg: 2, scope: !1831, file: !82, line: 804, type: !76)
!1836 = !DILocalVariable(name: "size", arg: 3, scope: !1831, file: !82, line: 804, type: !524)
!1837 = !DILocalVariable(name: "o", arg: 4, scope: !1831, file: !82, line: 805, type: !947)
!1838 = !DILocalVariable(name: "p", scope: !1831, file: !82, line: 807, type: !947)
!1839 = !DILocalVariable(name: "e", scope: !1831, file: !82, line: 808, type: !25)
!1840 = !DILocalVariable(name: "flags", scope: !1831, file: !82, line: 810, type: !25)
!1841 = !DILocalVariable(name: "bufsize", scope: !1831, file: !82, line: 811, type: !76)
!1842 = !DILocalVariable(name: "buf", scope: !1831, file: !82, line: 815, type: !32)
!1843 = !DILocation(line: 804, column: 33, scope: !1831, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 794, column: 10, scope: !1820)
!1845 = !DILocation(line: 804, column: 45, scope: !1831, inlinedAt: !1844)
!1846 = !DILocation(line: 804, column: 62, scope: !1831, inlinedAt: !1844)
!1847 = !DILocation(line: 805, column: 51, scope: !1831, inlinedAt: !1844)
!1848 = !DILocation(line: 807, column: 37, scope: !1831, inlinedAt: !1844)
!1849 = !DILocation(line: 807, column: 33, scope: !1831, inlinedAt: !1844)
!1850 = !DILocation(line: 808, column: 11, scope: !1831, inlinedAt: !1844)
!1851 = !DILocation(line: 808, column: 7, scope: !1831, inlinedAt: !1844)
!1852 = !DILocation(line: 810, column: 18, scope: !1831, inlinedAt: !1844)
!1853 = !DILocation(line: 810, column: 24, scope: !1831, inlinedAt: !1844)
!1854 = !DILocation(line: 810, column: 7, scope: !1831, inlinedAt: !1844)
!1855 = !DILocation(line: 811, column: 69, scope: !1831, inlinedAt: !1844)
!1856 = !DILocation(line: 812, column: 53, scope: !1831, inlinedAt: !1844)
!1857 = !DILocation(line: 813, column: 49, scope: !1831, inlinedAt: !1844)
!1858 = !DILocation(line: 814, column: 49, scope: !1831, inlinedAt: !1844)
!1859 = !DILocation(line: 811, column: 20, scope: !1831, inlinedAt: !1844)
!1860 = !DILocation(line: 814, column: 62, scope: !1831, inlinedAt: !1844)
!1861 = !DILocation(line: 811, column: 10, scope: !1831, inlinedAt: !1844)
!1862 = !DILocalVariable(name: "n", arg: 1, scope: !1863, file: !520, line: 220, type: !76)
!1863 = distinct !DISubprogram(name: "xcharalloc", scope: !520, file: !520, line: 220, type: !1864, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1866)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!32, !76}
!1866 = !{!1862}
!1867 = !DILocation(line: 220, column: 20, scope: !1863, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 815, column: 15, scope: !1831, inlinedAt: !1844)
!1869 = !DILocation(line: 222, column: 10, scope: !1863, inlinedAt: !1868)
!1870 = !DILocation(line: 815, column: 9, scope: !1831, inlinedAt: !1844)
!1871 = !DILocation(line: 816, column: 60, scope: !1831, inlinedAt: !1844)
!1872 = !DILocation(line: 818, column: 32, scope: !1831, inlinedAt: !1844)
!1873 = !DILocation(line: 818, column: 47, scope: !1831, inlinedAt: !1844)
!1874 = !DILocation(line: 816, column: 3, scope: !1831, inlinedAt: !1844)
!1875 = !DILocation(line: 819, column: 9, scope: !1831, inlinedAt: !1844)
!1876 = !DILocation(line: 794, column: 3, scope: !1820)
!1877 = !DILocation(line: 804, column: 33, scope: !1831)
!1878 = !DILocation(line: 804, column: 45, scope: !1831)
!1879 = !DILocation(line: 804, column: 62, scope: !1831)
!1880 = !DILocation(line: 805, column: 51, scope: !1831)
!1881 = !DILocation(line: 807, column: 37, scope: !1831)
!1882 = !DILocation(line: 807, column: 33, scope: !1831)
!1883 = !DILocation(line: 808, column: 11, scope: !1831)
!1884 = !DILocation(line: 808, column: 7, scope: !1831)
!1885 = !DILocation(line: 810, column: 18, scope: !1831)
!1886 = !DILocation(line: 810, column: 27, scope: !1831)
!1887 = !DILocation(line: 810, column: 24, scope: !1831)
!1888 = !DILocation(line: 810, column: 7, scope: !1831)
!1889 = !DILocation(line: 811, column: 69, scope: !1831)
!1890 = !DILocation(line: 812, column: 53, scope: !1831)
!1891 = !DILocation(line: 813, column: 49, scope: !1831)
!1892 = !DILocation(line: 814, column: 49, scope: !1831)
!1893 = !DILocation(line: 811, column: 20, scope: !1831)
!1894 = !DILocation(line: 814, column: 62, scope: !1831)
!1895 = !DILocation(line: 811, column: 10, scope: !1831)
!1896 = !DILocation(line: 220, column: 20, scope: !1863, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 815, column: 15, scope: !1831)
!1898 = !DILocation(line: 222, column: 10, scope: !1863, inlinedAt: !1897)
!1899 = !DILocation(line: 815, column: 9, scope: !1831)
!1900 = !DILocation(line: 816, column: 60, scope: !1831)
!1901 = !DILocation(line: 818, column: 32, scope: !1831)
!1902 = !DILocation(line: 818, column: 47, scope: !1831)
!1903 = !DILocation(line: 816, column: 3, scope: !1831)
!1904 = !DILocation(line: 819, column: 9, scope: !1831)
!1905 = !DILocation(line: 820, column: 7, scope: !1831)
!1906 = !DILocation(line: 821, column: 11, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1831, file: !82, line: 820, column: 7)
!1908 = !{!795, !795, i64 0}
!1909 = !DILocation(line: 821, column: 5, scope: !1907)
!1910 = !DILocation(line: 822, column: 3, scope: !1831)
!1911 = distinct !DISubprogram(name: "quotearg_free", scope: !82, file: !82, line: 840, type: !853, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1912)
!1912 = !{!1913, !1914}
!1913 = !DILocalVariable(name: "sv", scope: !1911, file: !82, line: 842, type: !109)
!1914 = !DILocalVariable(name: "i", scope: !1911, file: !82, line: 843, type: !25)
!1915 = !DILocation(line: 842, column: 24, scope: !1911)
!1916 = !DILocation(line: 842, column: 19, scope: !1911)
!1917 = !DILocation(line: 843, column: 7, scope: !1911)
!1918 = !DILocation(line: 844, column: 19, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !82, line: 844, column: 3)
!1920 = distinct !DILexicalBlock(scope: !1911, file: !82, line: 844, column: 3)
!1921 = !DILocation(line: 844, column: 17, scope: !1919)
!1922 = !DILocation(line: 844, column: 3, scope: !1920)
!1923 = !DILocation(line: 845, column: 17, scope: !1919)
!1924 = !{!1925, !569, i64 8}
!1925 = !{!"slotvec", !795, i64 0, !569, i64 8}
!1926 = !DILocation(line: 845, column: 5, scope: !1919)
!1927 = !DILocation(line: 844, column: 28, scope: !1919)
!1928 = distinct !{!1928, !1922, !1929}
!1929 = !DILocation(line: 845, column: 20, scope: !1920)
!1930 = !DILocation(line: 846, column: 13, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1911, file: !82, line: 846, column: 7)
!1932 = !DILocation(line: 846, column: 17, scope: !1931)
!1933 = !DILocation(line: 846, column: 7, scope: !1911)
!1934 = !DILocation(line: 848, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1931, file: !82, line: 847, column: 5)
!1936 = !DILocation(line: 849, column: 21, scope: !1935)
!1937 = !{!1925, !795, i64 0}
!1938 = !DILocation(line: 850, column: 20, scope: !1935)
!1939 = !DILocation(line: 851, column: 5, scope: !1935)
!1940 = !DILocation(line: 852, column: 10, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1911, file: !82, line: 852, column: 7)
!1942 = !DILocation(line: 852, column: 7, scope: !1911)
!1943 = !DILocation(line: 854, column: 13, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1941, file: !82, line: 853, column: 5)
!1945 = !DILocation(line: 854, column: 7, scope: !1944)
!1946 = !DILocation(line: 855, column: 15, scope: !1944)
!1947 = !DILocation(line: 856, column: 5, scope: !1944)
!1948 = !DILocation(line: 857, column: 10, scope: !1911)
!1949 = !DILocation(line: 858, column: 1, scope: !1911)
!1950 = distinct !DISubprogram(name: "quotearg_n", scope: !82, file: !82, line: 922, type: !1951, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!32, !25, !6}
!1953 = !{!1954, !1955}
!1954 = !DILocalVariable(name: "n", arg: 1, scope: !1950, file: !82, line: 922, type: !25)
!1955 = !DILocalVariable(name: "arg", arg: 2, scope: !1950, file: !82, line: 922, type: !6)
!1956 = !DILocation(line: 922, column: 17, scope: !1950)
!1957 = !DILocation(line: 922, column: 32, scope: !1950)
!1958 = !DILocation(line: 924, column: 10, scope: !1950)
!1959 = !DILocation(line: 924, column: 3, scope: !1950)
!1960 = distinct !DISubprogram(name: "quotearg_n_options", scope: !82, file: !82, line: 869, type: !1961, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !1963)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!32, !25, !6, !76, !947}
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970, !1973, !1975, !1976, !1977}
!1964 = !DILocalVariable(name: "n", arg: 1, scope: !1960, file: !82, line: 869, type: !25)
!1965 = !DILocalVariable(name: "arg", arg: 2, scope: !1960, file: !82, line: 869, type: !6)
!1966 = !DILocalVariable(name: "argsize", arg: 3, scope: !1960, file: !82, line: 869, type: !76)
!1967 = !DILocalVariable(name: "options", arg: 4, scope: !1960, file: !82, line: 870, type: !947)
!1968 = !DILocalVariable(name: "e", scope: !1960, file: !82, line: 872, type: !25)
!1969 = !DILocalVariable(name: "sv", scope: !1960, file: !82, line: 874, type: !109)
!1970 = !DILocalVariable(name: "preallocated", scope: !1971, file: !82, line: 881, type: !17)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !82, line: 880, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1960, file: !82, line: 879, column: 7)
!1973 = !DILocalVariable(name: "size", scope: !1974, file: !82, line: 894, type: !76)
!1974 = distinct !DILexicalBlock(scope: !1960, file: !82, line: 893, column: 3)
!1975 = !DILocalVariable(name: "val", scope: !1974, file: !82, line: 895, type: !32)
!1976 = !DILocalVariable(name: "flags", scope: !1974, file: !82, line: 897, type: !25)
!1977 = !DILocalVariable(name: "qsize", scope: !1974, file: !82, line: 898, type: !76)
!1978 = !DILocation(line: 869, column: 25, scope: !1960)
!1979 = !DILocation(line: 869, column: 40, scope: !1960)
!1980 = !DILocation(line: 869, column: 52, scope: !1960)
!1981 = !DILocation(line: 870, column: 51, scope: !1960)
!1982 = !DILocation(line: 872, column: 11, scope: !1960)
!1983 = !DILocation(line: 872, column: 7, scope: !1960)
!1984 = !DILocation(line: 874, column: 24, scope: !1960)
!1985 = !DILocation(line: 874, column: 19, scope: !1960)
!1986 = !DILocation(line: 876, column: 9, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1960, file: !82, line: 876, column: 7)
!1988 = !DILocation(line: 876, column: 7, scope: !1960)
!1989 = !DILocation(line: 877, column: 5, scope: !1987)
!1990 = !DILocation(line: 879, column: 7, scope: !1972)
!1991 = !DILocation(line: 879, column: 14, scope: !1972)
!1992 = !DILocation(line: 879, column: 7, scope: !1960)
!1993 = !DILocation(line: 881, column: 31, scope: !1971)
!1994 = !DILocation(line: 883, column: 67, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1971, file: !82, line: 883, column: 11)
!1996 = !DILocation(line: 883, column: 11, scope: !1971)
!1997 = !DILocation(line: 884, column: 9, scope: !1995)
!1998 = !DILocation(line: 886, column: 32, scope: !1971)
!1999 = !DILocation(line: 886, column: 61, scope: !1971)
!2000 = !DILocation(line: 886, column: 58, scope: !1971)
!2001 = !DILocation(line: 886, column: 66, scope: !1971)
!2002 = !DILocation(line: 886, column: 22, scope: !1971)
!2003 = !DILocation(line: 886, column: 15, scope: !1971)
!2004 = !DILocation(line: 887, column: 11, scope: !1971)
!2005 = !DILocation(line: 888, column: 15, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1971, file: !82, line: 887, column: 11)
!2007 = !{i64 0, i64 8, !1908, i64 8, i64 8, !568}
!2008 = !DILocation(line: 888, column: 9, scope: !2006)
!2009 = !DILocation(line: 889, column: 20, scope: !1971)
!2010 = !DILocation(line: 889, column: 18, scope: !1971)
!2011 = !DILocation(line: 889, column: 7, scope: !1971)
!2012 = !DILocation(line: 889, column: 38, scope: !1971)
!2013 = !DILocation(line: 889, column: 31, scope: !1971)
!2014 = !DILocation(line: 889, column: 48, scope: !1971)
!2015 = !DILocation(line: 890, column: 14, scope: !1971)
!2016 = !DILocation(line: 891, column: 5, scope: !1971)
!2017 = !DILocation(line: 894, column: 19, scope: !1974)
!2018 = !DILocation(line: 894, column: 25, scope: !1974)
!2019 = !DILocation(line: 894, column: 12, scope: !1974)
!2020 = !DILocation(line: 895, column: 23, scope: !1974)
!2021 = !DILocation(line: 895, column: 11, scope: !1974)
!2022 = !DILocation(line: 897, column: 26, scope: !1974)
!2023 = !DILocation(line: 897, column: 32, scope: !1974)
!2024 = !DILocation(line: 897, column: 9, scope: !1974)
!2025 = !DILocation(line: 899, column: 55, scope: !1974)
!2026 = !DILocation(line: 900, column: 46, scope: !1974)
!2027 = !DILocation(line: 901, column: 55, scope: !1974)
!2028 = !DILocation(line: 902, column: 55, scope: !1974)
!2029 = !DILocation(line: 898, column: 20, scope: !1974)
!2030 = !DILocation(line: 898, column: 12, scope: !1974)
!2031 = !DILocation(line: 904, column: 14, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1974, file: !82, line: 904, column: 9)
!2033 = !DILocation(line: 904, column: 9, scope: !1974)
!2034 = !DILocation(line: 906, column: 35, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2032, file: !82, line: 905, column: 7)
!2036 = !DILocation(line: 906, column: 20, scope: !2035)
!2037 = !DILocation(line: 907, column: 17, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2035, file: !82, line: 907, column: 13)
!2039 = !DILocation(line: 907, column: 13, scope: !2035)
!2040 = !DILocation(line: 908, column: 11, scope: !2038)
!2041 = !DILocation(line: 220, column: 20, scope: !1863, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 909, column: 27, scope: !2035)
!2043 = !DILocation(line: 222, column: 10, scope: !1863, inlinedAt: !2042)
!2044 = !DILocation(line: 909, column: 19, scope: !2035)
!2045 = !DILocation(line: 910, column: 69, scope: !2035)
!2046 = !DILocation(line: 912, column: 44, scope: !2035)
!2047 = !DILocation(line: 913, column: 44, scope: !2035)
!2048 = !DILocation(line: 910, column: 9, scope: !2035)
!2049 = !DILocation(line: 914, column: 7, scope: !2035)
!2050 = !DILocation(line: 916, column: 11, scope: !1974)
!2051 = !DILocation(line: 917, column: 5, scope: !1974)
!2052 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !82, file: !82, line: 928, type: !2053, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!32, !25, !6, !76}
!2055 = !{!2056, !2057, !2058}
!2056 = !DILocalVariable(name: "n", arg: 1, scope: !2052, file: !82, line: 928, type: !25)
!2057 = !DILocalVariable(name: "arg", arg: 2, scope: !2052, file: !82, line: 928, type: !6)
!2058 = !DILocalVariable(name: "argsize", arg: 3, scope: !2052, file: !82, line: 928, type: !76)
!2059 = !DILocation(line: 928, column: 21, scope: !2052)
!2060 = !DILocation(line: 928, column: 36, scope: !2052)
!2061 = !DILocation(line: 928, column: 48, scope: !2052)
!2062 = !DILocation(line: 930, column: 10, scope: !2052)
!2063 = !DILocation(line: 930, column: 3, scope: !2052)
!2064 = distinct !DISubprogram(name: "quotearg", scope: !82, file: !82, line: 934, type: !2065, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!32, !6}
!2067 = !{!2068}
!2068 = !DILocalVariable(name: "arg", arg: 1, scope: !2064, file: !82, line: 934, type: !6)
!2069 = !DILocation(line: 934, column: 23, scope: !2064)
!2070 = !DILocation(line: 922, column: 17, scope: !1950, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 936, column: 10, scope: !2064)
!2072 = !DILocation(line: 922, column: 32, scope: !1950, inlinedAt: !2071)
!2073 = !DILocation(line: 924, column: 10, scope: !1950, inlinedAt: !2071)
!2074 = !DILocation(line: 936, column: 3, scope: !2064)
!2075 = distinct !DISubprogram(name: "quotearg_mem", scope: !82, file: !82, line: 940, type: !2076, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!32, !6, !76}
!2078 = !{!2079, !2080}
!2079 = !DILocalVariable(name: "arg", arg: 1, scope: !2075, file: !82, line: 940, type: !6)
!2080 = !DILocalVariable(name: "argsize", arg: 2, scope: !2075, file: !82, line: 940, type: !76)
!2081 = !DILocation(line: 940, column: 27, scope: !2075)
!2082 = !DILocation(line: 940, column: 39, scope: !2075)
!2083 = !DILocation(line: 928, column: 21, scope: !2052, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 942, column: 10, scope: !2075)
!2085 = !DILocation(line: 928, column: 36, scope: !2052, inlinedAt: !2084)
!2086 = !DILocation(line: 928, column: 48, scope: !2052, inlinedAt: !2084)
!2087 = !DILocation(line: 930, column: 10, scope: !2052, inlinedAt: !2084)
!2088 = !DILocation(line: 942, column: 3, scope: !2075)
!2089 = distinct !DISubprogram(name: "quotearg_n_style", scope: !82, file: !82, line: 946, type: !2090, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!32, !25, !40, !6}
!2092 = !{!2093, !2094, !2095, !2096}
!2093 = !DILocalVariable(name: "n", arg: 1, scope: !2089, file: !82, line: 946, type: !25)
!2094 = !DILocalVariable(name: "s", arg: 2, scope: !2089, file: !82, line: 946, type: !40)
!2095 = !DILocalVariable(name: "arg", arg: 3, scope: !2089, file: !82, line: 946, type: !6)
!2096 = !DILocalVariable(name: "o", scope: !2089, file: !82, line: 948, type: !948)
!2097 = !DILocalVariable(name: "o", scope: !2098, file: !82, line: 187, type: !89)
!2098 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !82, file: !82, line: 185, type: !2099, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2101)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!89, !40}
!2101 = !{!2102, !2097}
!2102 = !DILocalVariable(name: "style", arg: 1, scope: !2098, file: !82, line: 185, type: !40)
!2103 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2104 = !DILocation(line: 187, column: 26, scope: !2098, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 948, column: 36, scope: !2089)
!2106 = !DILocation(line: 946, column: 23, scope: !2089)
!2107 = !DILocation(line: 946, column: 45, scope: !2089)
!2108 = !DILocation(line: 946, column: 60, scope: !2089)
!2109 = !DILocation(line: 948, column: 3, scope: !2089)
!2110 = !DILocation(line: 948, column: 32, scope: !2089)
!2111 = !DILocation(line: 185, column: 48, scope: !2098, inlinedAt: !2105)
!2112 = !DILocation(line: 187, column: 3, scope: !2098, inlinedAt: !2105)
!2113 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2114 = !DILocation(line: 188, column: 13, scope: !2115, inlinedAt: !2105)
!2115 = distinct !DILexicalBlock(scope: !2098, file: !82, line: 188, column: 7)
!2116 = !DILocation(line: 188, column: 7, scope: !2098, inlinedAt: !2105)
!2117 = !DILocation(line: 189, column: 5, scope: !2115, inlinedAt: !2105)
!2118 = !{!2119}
!2119 = distinct !{!2119, !2120, !"quoting_options_from_style: argument 0"}
!2120 = distinct !{!2120, !"quoting_options_from_style"}
!2121 = !DILocation(line: 191, column: 10, scope: !2098, inlinedAt: !2105)
!2122 = !DILocation(line: 192, column: 1, scope: !2098, inlinedAt: !2105)
!2123 = !DILocation(line: 949, column: 10, scope: !2089)
!2124 = !DILocation(line: 950, column: 1, scope: !2089)
!2125 = !DILocation(line: 949, column: 3, scope: !2089)
!2126 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !82, file: !82, line: 953, type: !2127, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!32, !25, !40, !6, !76}
!2129 = !{!2130, !2131, !2132, !2133, !2134}
!2130 = !DILocalVariable(name: "n", arg: 1, scope: !2126, file: !82, line: 953, type: !25)
!2131 = !DILocalVariable(name: "s", arg: 2, scope: !2126, file: !82, line: 953, type: !40)
!2132 = !DILocalVariable(name: "arg", arg: 3, scope: !2126, file: !82, line: 954, type: !6)
!2133 = !DILocalVariable(name: "argsize", arg: 4, scope: !2126, file: !82, line: 954, type: !76)
!2134 = !DILocalVariable(name: "o", scope: !2126, file: !82, line: 956, type: !948)
!2135 = !DILocation(line: 187, column: 26, scope: !2098, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 956, column: 36, scope: !2126)
!2137 = !DILocation(line: 953, column: 27, scope: !2126)
!2138 = !DILocation(line: 953, column: 49, scope: !2126)
!2139 = !DILocation(line: 954, column: 35, scope: !2126)
!2140 = !DILocation(line: 954, column: 47, scope: !2126)
!2141 = !DILocation(line: 956, column: 3, scope: !2126)
!2142 = !DILocation(line: 956, column: 32, scope: !2126)
!2143 = !DILocation(line: 185, column: 48, scope: !2098, inlinedAt: !2136)
!2144 = !DILocation(line: 187, column: 3, scope: !2098, inlinedAt: !2136)
!2145 = !DILocation(line: 188, column: 13, scope: !2115, inlinedAt: !2136)
!2146 = !DILocation(line: 188, column: 7, scope: !2098, inlinedAt: !2136)
!2147 = !DILocation(line: 189, column: 5, scope: !2115, inlinedAt: !2136)
!2148 = !{!2149}
!2149 = distinct !{!2149, !2150, !"quoting_options_from_style: argument 0"}
!2150 = distinct !{!2150, !"quoting_options_from_style"}
!2151 = !DILocation(line: 191, column: 10, scope: !2098, inlinedAt: !2136)
!2152 = !DILocation(line: 192, column: 1, scope: !2098, inlinedAt: !2136)
!2153 = !DILocation(line: 957, column: 10, scope: !2126)
!2154 = !DILocation(line: 958, column: 1, scope: !2126)
!2155 = !DILocation(line: 957, column: 3, scope: !2126)
!2156 = distinct !DISubprogram(name: "quotearg_style", scope: !82, file: !82, line: 961, type: !2157, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!32, !40, !6}
!2159 = !{!2160, !2161}
!2160 = !DILocalVariable(name: "s", arg: 1, scope: !2156, file: !82, line: 961, type: !40)
!2161 = !DILocalVariable(name: "arg", arg: 2, scope: !2156, file: !82, line: 961, type: !6)
!2162 = !DILocation(line: 187, column: 26, scope: !2098, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 948, column: 36, scope: !2089, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 963, column: 10, scope: !2156)
!2165 = !DILocation(line: 961, column: 36, scope: !2156)
!2166 = !DILocation(line: 961, column: 51, scope: !2156)
!2167 = !DILocation(line: 946, column: 23, scope: !2089, inlinedAt: !2164)
!2168 = !DILocation(line: 946, column: 45, scope: !2089, inlinedAt: !2164)
!2169 = !DILocation(line: 946, column: 60, scope: !2089, inlinedAt: !2164)
!2170 = !DILocation(line: 948, column: 3, scope: !2089, inlinedAt: !2164)
!2171 = !DILocation(line: 948, column: 32, scope: !2089, inlinedAt: !2164)
!2172 = !DILocation(line: 185, column: 48, scope: !2098, inlinedAt: !2163)
!2173 = !DILocation(line: 187, column: 3, scope: !2098, inlinedAt: !2163)
!2174 = !DILocation(line: 188, column: 13, scope: !2115, inlinedAt: !2163)
!2175 = !DILocation(line: 188, column: 7, scope: !2098, inlinedAt: !2163)
!2176 = !DILocation(line: 189, column: 5, scope: !2115, inlinedAt: !2163)
!2177 = !{!2178}
!2178 = distinct !{!2178, !2179, !"quoting_options_from_style: argument 0"}
!2179 = distinct !{!2179, !"quoting_options_from_style"}
!2180 = !DILocation(line: 191, column: 10, scope: !2098, inlinedAt: !2163)
!2181 = !DILocation(line: 192, column: 1, scope: !2098, inlinedAt: !2163)
!2182 = !DILocation(line: 949, column: 10, scope: !2089, inlinedAt: !2164)
!2183 = !DILocation(line: 950, column: 1, scope: !2089, inlinedAt: !2164)
!2184 = !DILocation(line: 963, column: 3, scope: !2156)
!2185 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !82, file: !82, line: 967, type: !2186, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!32, !40, !6, !76}
!2188 = !{!2189, !2190, !2191}
!2189 = !DILocalVariable(name: "s", arg: 1, scope: !2185, file: !82, line: 967, type: !40)
!2190 = !DILocalVariable(name: "arg", arg: 2, scope: !2185, file: !82, line: 967, type: !6)
!2191 = !DILocalVariable(name: "argsize", arg: 3, scope: !2185, file: !82, line: 967, type: !76)
!2192 = !DILocation(line: 187, column: 26, scope: !2098, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 956, column: 36, scope: !2126, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 969, column: 10, scope: !2185)
!2195 = !DILocation(line: 967, column: 40, scope: !2185)
!2196 = !DILocation(line: 967, column: 55, scope: !2185)
!2197 = !DILocation(line: 967, column: 67, scope: !2185)
!2198 = !DILocation(line: 953, column: 27, scope: !2126, inlinedAt: !2194)
!2199 = !DILocation(line: 953, column: 49, scope: !2126, inlinedAt: !2194)
!2200 = !DILocation(line: 954, column: 35, scope: !2126, inlinedAt: !2194)
!2201 = !DILocation(line: 954, column: 47, scope: !2126, inlinedAt: !2194)
!2202 = !DILocation(line: 956, column: 3, scope: !2126, inlinedAt: !2194)
!2203 = !DILocation(line: 956, column: 32, scope: !2126, inlinedAt: !2194)
!2204 = !DILocation(line: 185, column: 48, scope: !2098, inlinedAt: !2193)
!2205 = !DILocation(line: 187, column: 3, scope: !2098, inlinedAt: !2193)
!2206 = !DILocation(line: 188, column: 13, scope: !2115, inlinedAt: !2193)
!2207 = !DILocation(line: 188, column: 7, scope: !2098, inlinedAt: !2193)
!2208 = !DILocation(line: 189, column: 5, scope: !2115, inlinedAt: !2193)
!2209 = !{!2210}
!2210 = distinct !{!2210, !2211, !"quoting_options_from_style: argument 0"}
!2211 = distinct !{!2211, !"quoting_options_from_style"}
!2212 = !DILocation(line: 191, column: 10, scope: !2098, inlinedAt: !2193)
!2213 = !DILocation(line: 192, column: 1, scope: !2098, inlinedAt: !2193)
!2214 = !DILocation(line: 957, column: 10, scope: !2126, inlinedAt: !2194)
!2215 = !DILocation(line: 958, column: 1, scope: !2126, inlinedAt: !2194)
!2216 = !DILocation(line: 969, column: 3, scope: !2185)
!2217 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !82, file: !82, line: 973, type: !2218, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!32, !6, !76, !8}
!2220 = !{!2221, !2222, !2223, !2224}
!2221 = !DILocalVariable(name: "arg", arg: 1, scope: !2217, file: !82, line: 973, type: !6)
!2222 = !DILocalVariable(name: "argsize", arg: 2, scope: !2217, file: !82, line: 973, type: !76)
!2223 = !DILocalVariable(name: "ch", arg: 3, scope: !2217, file: !82, line: 973, type: !8)
!2224 = !DILocalVariable(name: "options", scope: !2217, file: !82, line: 975, type: !89)
!2225 = !DILocation(line: 973, column: 32, scope: !2217)
!2226 = !DILocation(line: 973, column: 44, scope: !2217)
!2227 = !DILocation(line: 973, column: 58, scope: !2217)
!2228 = !DILocation(line: 975, column: 3, scope: !2217)
!2229 = !DILocation(line: 976, column: 13, scope: !2217)
!2230 = !{i64 0, i64 4, !659, i64 4, i64 4, !869, i64 8, i64 32, !659, i64 40, i64 8, !568, i64 48, i64 8, !568}
!2231 = !DILocation(line: 975, column: 26, scope: !2217)
!2232 = !DILocation(line: 144, column: 43, scope: !969, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 977, column: 3, scope: !2217)
!2234 = !DILocation(line: 144, column: 51, scope: !969, inlinedAt: !2233)
!2235 = !DILocation(line: 144, column: 58, scope: !969, inlinedAt: !2233)
!2236 = !DILocation(line: 146, column: 17, scope: !969, inlinedAt: !2233)
!2237 = !DILocation(line: 148, column: 62, scope: !969, inlinedAt: !2233)
!2238 = !DILocation(line: 148, column: 57, scope: !969, inlinedAt: !2233)
!2239 = !DILocation(line: 147, column: 17, scope: !969, inlinedAt: !2233)
!2240 = !DILocation(line: 149, column: 18, scope: !969, inlinedAt: !2233)
!2241 = !DILocation(line: 149, column: 15, scope: !969, inlinedAt: !2233)
!2242 = !DILocation(line: 149, column: 7, scope: !969, inlinedAt: !2233)
!2243 = !DILocation(line: 150, column: 12, scope: !969, inlinedAt: !2233)
!2244 = !DILocation(line: 150, column: 15, scope: !969, inlinedAt: !2233)
!2245 = !DILocation(line: 150, column: 25, scope: !969, inlinedAt: !2233)
!2246 = !DILocation(line: 150, column: 7, scope: !969, inlinedAt: !2233)
!2247 = !DILocation(line: 151, column: 18, scope: !969, inlinedAt: !2233)
!2248 = !DILocation(line: 151, column: 23, scope: !969, inlinedAt: !2233)
!2249 = !DILocation(line: 151, column: 6, scope: !969, inlinedAt: !2233)
!2250 = !DILocation(line: 978, column: 10, scope: !2217)
!2251 = !DILocation(line: 979, column: 1, scope: !2217)
!2252 = !DILocation(line: 978, column: 3, scope: !2217)
!2253 = distinct !DISubprogram(name: "quotearg_char", scope: !82, file: !82, line: 982, type: !2254, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2256)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!32, !6, !8}
!2256 = !{!2257, !2258}
!2257 = !DILocalVariable(name: "arg", arg: 1, scope: !2253, file: !82, line: 982, type: !6)
!2258 = !DILocalVariable(name: "ch", arg: 2, scope: !2253, file: !82, line: 982, type: !8)
!2259 = !DILocation(line: 982, column: 28, scope: !2253)
!2260 = !DILocation(line: 982, column: 38, scope: !2253)
!2261 = !DILocation(line: 973, column: 32, scope: !2217, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 984, column: 10, scope: !2253)
!2263 = !DILocation(line: 973, column: 44, scope: !2217, inlinedAt: !2262)
!2264 = !DILocation(line: 973, column: 58, scope: !2217, inlinedAt: !2262)
!2265 = !DILocation(line: 975, column: 3, scope: !2217, inlinedAt: !2262)
!2266 = !DILocation(line: 976, column: 13, scope: !2217, inlinedAt: !2262)
!2267 = !DILocation(line: 975, column: 26, scope: !2217, inlinedAt: !2262)
!2268 = !DILocation(line: 144, column: 43, scope: !969, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 977, column: 3, scope: !2217, inlinedAt: !2262)
!2270 = !DILocation(line: 144, column: 51, scope: !969, inlinedAt: !2269)
!2271 = !DILocation(line: 144, column: 58, scope: !969, inlinedAt: !2269)
!2272 = !DILocation(line: 146, column: 17, scope: !969, inlinedAt: !2269)
!2273 = !DILocation(line: 148, column: 62, scope: !969, inlinedAt: !2269)
!2274 = !DILocation(line: 148, column: 57, scope: !969, inlinedAt: !2269)
!2275 = !DILocation(line: 147, column: 17, scope: !969, inlinedAt: !2269)
!2276 = !DILocation(line: 149, column: 18, scope: !969, inlinedAt: !2269)
!2277 = !DILocation(line: 149, column: 15, scope: !969, inlinedAt: !2269)
!2278 = !DILocation(line: 149, column: 7, scope: !969, inlinedAt: !2269)
!2279 = !DILocation(line: 150, column: 12, scope: !969, inlinedAt: !2269)
!2280 = !DILocation(line: 150, column: 15, scope: !969, inlinedAt: !2269)
!2281 = !DILocation(line: 150, column: 25, scope: !969, inlinedAt: !2269)
!2282 = !DILocation(line: 150, column: 7, scope: !969, inlinedAt: !2269)
!2283 = !DILocation(line: 151, column: 18, scope: !969, inlinedAt: !2269)
!2284 = !DILocation(line: 151, column: 23, scope: !969, inlinedAt: !2269)
!2285 = !DILocation(line: 151, column: 6, scope: !969, inlinedAt: !2269)
!2286 = !DILocation(line: 978, column: 10, scope: !2217, inlinedAt: !2262)
!2287 = !DILocation(line: 979, column: 1, scope: !2217, inlinedAt: !2262)
!2288 = !DILocation(line: 984, column: 3, scope: !2253)
!2289 = distinct !DISubprogram(name: "quotearg_colon", scope: !82, file: !82, line: 988, type: !2065, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2290)
!2290 = !{!2291}
!2291 = !DILocalVariable(name: "arg", arg: 1, scope: !2289, file: !82, line: 988, type: !6)
!2292 = !DILocation(line: 988, column: 29, scope: !2289)
!2293 = !DILocation(line: 982, column: 28, scope: !2253, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 990, column: 10, scope: !2289)
!2295 = !DILocation(line: 982, column: 38, scope: !2253, inlinedAt: !2294)
!2296 = !DILocation(line: 973, column: 32, scope: !2217, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 984, column: 10, scope: !2253, inlinedAt: !2294)
!2298 = !DILocation(line: 973, column: 44, scope: !2217, inlinedAt: !2297)
!2299 = !DILocation(line: 973, column: 58, scope: !2217, inlinedAt: !2297)
!2300 = !DILocation(line: 975, column: 3, scope: !2217, inlinedAt: !2297)
!2301 = !DILocation(line: 976, column: 13, scope: !2217, inlinedAt: !2297)
!2302 = !DILocation(line: 975, column: 26, scope: !2217, inlinedAt: !2297)
!2303 = !DILocation(line: 144, column: 43, scope: !969, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 977, column: 3, scope: !2217, inlinedAt: !2297)
!2305 = !DILocation(line: 144, column: 51, scope: !969, inlinedAt: !2304)
!2306 = !DILocation(line: 144, column: 58, scope: !969, inlinedAt: !2304)
!2307 = !DILocation(line: 146, column: 17, scope: !969, inlinedAt: !2304)
!2308 = !DILocation(line: 148, column: 57, scope: !969, inlinedAt: !2304)
!2309 = !DILocation(line: 147, column: 17, scope: !969, inlinedAt: !2304)
!2310 = !DILocation(line: 149, column: 7, scope: !969, inlinedAt: !2304)
!2311 = !DILocation(line: 150, column: 12, scope: !969, inlinedAt: !2304)
!2312 = !DILocation(line: 151, column: 6, scope: !969, inlinedAt: !2304)
!2313 = !DILocation(line: 978, column: 10, scope: !2217, inlinedAt: !2297)
!2314 = !DILocation(line: 979, column: 1, scope: !2217, inlinedAt: !2297)
!2315 = !DILocation(line: 990, column: 3, scope: !2289)
!2316 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !82, file: !82, line: 994, type: !2076, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2317)
!2317 = !{!2318, !2319}
!2318 = !DILocalVariable(name: "arg", arg: 1, scope: !2316, file: !82, line: 994, type: !6)
!2319 = !DILocalVariable(name: "argsize", arg: 2, scope: !2316, file: !82, line: 994, type: !76)
!2320 = !DILocation(line: 994, column: 33, scope: !2316)
!2321 = !DILocation(line: 994, column: 45, scope: !2316)
!2322 = !DILocation(line: 973, column: 32, scope: !2217, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 996, column: 10, scope: !2316)
!2324 = !DILocation(line: 973, column: 44, scope: !2217, inlinedAt: !2323)
!2325 = !DILocation(line: 973, column: 58, scope: !2217, inlinedAt: !2323)
!2326 = !DILocation(line: 975, column: 3, scope: !2217, inlinedAt: !2323)
!2327 = !DILocation(line: 976, column: 13, scope: !2217, inlinedAt: !2323)
!2328 = !DILocation(line: 975, column: 26, scope: !2217, inlinedAt: !2323)
!2329 = !DILocation(line: 144, column: 43, scope: !969, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 977, column: 3, scope: !2217, inlinedAt: !2323)
!2331 = !DILocation(line: 144, column: 51, scope: !969, inlinedAt: !2330)
!2332 = !DILocation(line: 144, column: 58, scope: !969, inlinedAt: !2330)
!2333 = !DILocation(line: 146, column: 17, scope: !969, inlinedAt: !2330)
!2334 = !DILocation(line: 148, column: 57, scope: !969, inlinedAt: !2330)
!2335 = !DILocation(line: 147, column: 17, scope: !969, inlinedAt: !2330)
!2336 = !DILocation(line: 149, column: 7, scope: !969, inlinedAt: !2330)
!2337 = !DILocation(line: 150, column: 12, scope: !969, inlinedAt: !2330)
!2338 = !DILocation(line: 151, column: 6, scope: !969, inlinedAt: !2330)
!2339 = !DILocation(line: 978, column: 10, scope: !2217, inlinedAt: !2323)
!2340 = !DILocation(line: 979, column: 1, scope: !2217, inlinedAt: !2323)
!2341 = !DILocation(line: 996, column: 3, scope: !2316)
!2342 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !82, file: !82, line: 1000, type: !2090, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2343)
!2343 = !{!2344, !2345, !2346, !2347}
!2344 = !DILocalVariable(name: "n", arg: 1, scope: !2342, file: !82, line: 1000, type: !25)
!2345 = !DILocalVariable(name: "s", arg: 2, scope: !2342, file: !82, line: 1000, type: !40)
!2346 = !DILocalVariable(name: "arg", arg: 3, scope: !2342, file: !82, line: 1000, type: !6)
!2347 = !DILocalVariable(name: "options", scope: !2342, file: !82, line: 1002, type: !89)
!2348 = !DILocation(line: 187, column: 26, scope: !2098, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 1003, column: 13, scope: !2342)
!2350 = !DILocation(line: 1000, column: 29, scope: !2342)
!2351 = !DILocation(line: 1000, column: 51, scope: !2342)
!2352 = !DILocation(line: 1000, column: 66, scope: !2342)
!2353 = !DILocation(line: 1002, column: 3, scope: !2342)
!2354 = !DILocation(line: 185, column: 48, scope: !2098, inlinedAt: !2349)
!2355 = !DILocation(line: 187, column: 3, scope: !2098, inlinedAt: !2349)
!2356 = !DILocation(line: 188, column: 13, scope: !2115, inlinedAt: !2349)
!2357 = !DILocation(line: 188, column: 7, scope: !2098, inlinedAt: !2349)
!2358 = !DILocation(line: 189, column: 5, scope: !2115, inlinedAt: !2349)
!2359 = !{!2360}
!2360 = distinct !{!2360, !2361, !"quoting_options_from_style: argument 0"}
!2361 = distinct !{!2361, !"quoting_options_from_style"}
!2362 = !DILocation(line: 191, column: 10, scope: !2098, inlinedAt: !2349)
!2363 = !DILocation(line: 192, column: 1, scope: !2098, inlinedAt: !2349)
!2364 = !DILocation(line: 1003, column: 13, scope: !2342)
!2365 = !DILocation(line: 1002, column: 26, scope: !2342)
!2366 = !DILocation(line: 144, column: 43, scope: !969, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 1004, column: 3, scope: !2342)
!2368 = !DILocation(line: 144, column: 51, scope: !969, inlinedAt: !2367)
!2369 = !DILocation(line: 144, column: 58, scope: !969, inlinedAt: !2367)
!2370 = !DILocation(line: 146, column: 17, scope: !969, inlinedAt: !2367)
!2371 = !DILocation(line: 148, column: 57, scope: !969, inlinedAt: !2367)
!2372 = !DILocation(line: 147, column: 17, scope: !969, inlinedAt: !2367)
!2373 = !DILocation(line: 149, column: 7, scope: !969, inlinedAt: !2367)
!2374 = !DILocation(line: 150, column: 12, scope: !969, inlinedAt: !2367)
!2375 = !DILocation(line: 151, column: 6, scope: !969, inlinedAt: !2367)
!2376 = !DILocation(line: 1005, column: 10, scope: !2342)
!2377 = !DILocation(line: 1006, column: 1, scope: !2342)
!2378 = !DILocation(line: 1005, column: 3, scope: !2342)
!2379 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !82, file: !82, line: 1009, type: !2380, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!32, !25, !6, !6, !6}
!2382 = !{!2383, !2384, !2385, !2386}
!2383 = !DILocalVariable(name: "n", arg: 1, scope: !2379, file: !82, line: 1009, type: !25)
!2384 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2379, file: !82, line: 1009, type: !6)
!2385 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2379, file: !82, line: 1010, type: !6)
!2386 = !DILocalVariable(name: "arg", arg: 4, scope: !2379, file: !82, line: 1010, type: !6)
!2387 = !DILocation(line: 1009, column: 24, scope: !2379)
!2388 = !DILocation(line: 1009, column: 39, scope: !2379)
!2389 = !DILocation(line: 1010, column: 32, scope: !2379)
!2390 = !DILocation(line: 1010, column: 57, scope: !2379)
!2391 = !DILocalVariable(name: "n", arg: 1, scope: !2392, file: !82, line: 1017, type: !25)
!2392 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 1017, type: !2393, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!32, !25, !6, !6, !6, !76}
!2395 = !{!2391, !2396, !2397, !2398, !2399, !2400}
!2396 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2392, file: !82, line: 1017, type: !6)
!2397 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2392, file: !82, line: 1018, type: !6)
!2398 = !DILocalVariable(name: "arg", arg: 4, scope: !2392, file: !82, line: 1019, type: !6)
!2399 = !DILocalVariable(name: "argsize", arg: 5, scope: !2392, file: !82, line: 1019, type: !76)
!2400 = !DILocalVariable(name: "o", scope: !2392, file: !82, line: 1021, type: !89)
!2401 = !DILocation(line: 1017, column: 28, scope: !2392, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 1012, column: 10, scope: !2379)
!2403 = !DILocation(line: 1017, column: 43, scope: !2392, inlinedAt: !2402)
!2404 = !DILocation(line: 1018, column: 36, scope: !2392, inlinedAt: !2402)
!2405 = !DILocation(line: 1019, column: 36, scope: !2392, inlinedAt: !2402)
!2406 = !DILocation(line: 1019, column: 48, scope: !2392, inlinedAt: !2402)
!2407 = !DILocation(line: 1021, column: 3, scope: !2392, inlinedAt: !2402)
!2408 = !DILocation(line: 1021, column: 30, scope: !2392, inlinedAt: !2402)
!2409 = !DILocation(line: 1021, column: 26, scope: !2392, inlinedAt: !2402)
!2410 = !DILocation(line: 171, column: 45, scope: !1018, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1022, column: 3, scope: !2392, inlinedAt: !2402)
!2412 = !DILocation(line: 172, column: 33, scope: !1018, inlinedAt: !2411)
!2413 = !DILocation(line: 172, column: 57, scope: !1018, inlinedAt: !2411)
!2414 = !DILocation(line: 176, column: 6, scope: !1018, inlinedAt: !2411)
!2415 = !DILocation(line: 176, column: 12, scope: !1018, inlinedAt: !2411)
!2416 = !DILocation(line: 177, column: 8, scope: !1034, inlinedAt: !2411)
!2417 = !DILocation(line: 177, column: 23, scope: !1034, inlinedAt: !2411)
!2418 = !DILocation(line: 177, column: 19, scope: !1034, inlinedAt: !2411)
!2419 = !DILocation(line: 178, column: 5, scope: !1034, inlinedAt: !2411)
!2420 = !DILocation(line: 179, column: 6, scope: !1018, inlinedAt: !2411)
!2421 = !DILocation(line: 179, column: 17, scope: !1018, inlinedAt: !2411)
!2422 = !DILocation(line: 180, column: 6, scope: !1018, inlinedAt: !2411)
!2423 = !DILocation(line: 180, column: 18, scope: !1018, inlinedAt: !2411)
!2424 = !DILocation(line: 1023, column: 10, scope: !2392, inlinedAt: !2402)
!2425 = !DILocation(line: 1024, column: 1, scope: !2392, inlinedAt: !2402)
!2426 = !DILocation(line: 1012, column: 3, scope: !2379)
!2427 = !DILocation(line: 1017, column: 28, scope: !2392)
!2428 = !DILocation(line: 1017, column: 43, scope: !2392)
!2429 = !DILocation(line: 1018, column: 36, scope: !2392)
!2430 = !DILocation(line: 1019, column: 36, scope: !2392)
!2431 = !DILocation(line: 1019, column: 48, scope: !2392)
!2432 = !DILocation(line: 1021, column: 3, scope: !2392)
!2433 = !DILocation(line: 1021, column: 30, scope: !2392)
!2434 = !DILocation(line: 1021, column: 26, scope: !2392)
!2435 = !DILocation(line: 171, column: 45, scope: !1018, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 1022, column: 3, scope: !2392)
!2437 = !DILocation(line: 172, column: 33, scope: !1018, inlinedAt: !2436)
!2438 = !DILocation(line: 172, column: 57, scope: !1018, inlinedAt: !2436)
!2439 = !DILocation(line: 176, column: 6, scope: !1018, inlinedAt: !2436)
!2440 = !DILocation(line: 176, column: 12, scope: !1018, inlinedAt: !2436)
!2441 = !DILocation(line: 177, column: 8, scope: !1034, inlinedAt: !2436)
!2442 = !DILocation(line: 177, column: 23, scope: !1034, inlinedAt: !2436)
!2443 = !DILocation(line: 177, column: 19, scope: !1034, inlinedAt: !2436)
!2444 = !DILocation(line: 178, column: 5, scope: !1034, inlinedAt: !2436)
!2445 = !DILocation(line: 179, column: 6, scope: !1018, inlinedAt: !2436)
!2446 = !DILocation(line: 179, column: 17, scope: !1018, inlinedAt: !2436)
!2447 = !DILocation(line: 180, column: 6, scope: !1018, inlinedAt: !2436)
!2448 = !DILocation(line: 180, column: 18, scope: !1018, inlinedAt: !2436)
!2449 = !DILocation(line: 1023, column: 10, scope: !2392)
!2450 = !DILocation(line: 1024, column: 1, scope: !2392)
!2451 = !DILocation(line: 1023, column: 3, scope: !2392)
!2452 = distinct !DISubprogram(name: "quotearg_custom", scope: !82, file: !82, line: 1027, type: !2453, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!32, !6, !6, !6}
!2455 = !{!2456, !2457, !2458}
!2456 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2452, file: !82, line: 1027, type: !6)
!2457 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2452, file: !82, line: 1027, type: !6)
!2458 = !DILocalVariable(name: "arg", arg: 3, scope: !2452, file: !82, line: 1028, type: !6)
!2459 = !DILocation(line: 1027, column: 30, scope: !2452)
!2460 = !DILocation(line: 1027, column: 54, scope: !2452)
!2461 = !DILocation(line: 1028, column: 30, scope: !2452)
!2462 = !DILocation(line: 1009, column: 24, scope: !2379, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 1030, column: 10, scope: !2452)
!2464 = !DILocation(line: 1009, column: 39, scope: !2379, inlinedAt: !2463)
!2465 = !DILocation(line: 1010, column: 32, scope: !2379, inlinedAt: !2463)
!2466 = !DILocation(line: 1010, column: 57, scope: !2379, inlinedAt: !2463)
!2467 = !DILocation(line: 1017, column: 28, scope: !2392, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 1012, column: 10, scope: !2379, inlinedAt: !2463)
!2469 = !DILocation(line: 1017, column: 43, scope: !2392, inlinedAt: !2468)
!2470 = !DILocation(line: 1018, column: 36, scope: !2392, inlinedAt: !2468)
!2471 = !DILocation(line: 1019, column: 36, scope: !2392, inlinedAt: !2468)
!2472 = !DILocation(line: 1019, column: 48, scope: !2392, inlinedAt: !2468)
!2473 = !DILocation(line: 1021, column: 3, scope: !2392, inlinedAt: !2468)
!2474 = !DILocation(line: 1021, column: 30, scope: !2392, inlinedAt: !2468)
!2475 = !DILocation(line: 1021, column: 26, scope: !2392, inlinedAt: !2468)
!2476 = !DILocation(line: 171, column: 45, scope: !1018, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 1022, column: 3, scope: !2392, inlinedAt: !2468)
!2478 = !DILocation(line: 172, column: 33, scope: !1018, inlinedAt: !2477)
!2479 = !DILocation(line: 172, column: 57, scope: !1018, inlinedAt: !2477)
!2480 = !DILocation(line: 176, column: 6, scope: !1018, inlinedAt: !2477)
!2481 = !DILocation(line: 176, column: 12, scope: !1018, inlinedAt: !2477)
!2482 = !DILocation(line: 177, column: 8, scope: !1034, inlinedAt: !2477)
!2483 = !DILocation(line: 177, column: 23, scope: !1034, inlinedAt: !2477)
!2484 = !DILocation(line: 177, column: 19, scope: !1034, inlinedAt: !2477)
!2485 = !DILocation(line: 178, column: 5, scope: !1034, inlinedAt: !2477)
!2486 = !DILocation(line: 179, column: 6, scope: !1018, inlinedAt: !2477)
!2487 = !DILocation(line: 179, column: 17, scope: !1018, inlinedAt: !2477)
!2488 = !DILocation(line: 180, column: 6, scope: !1018, inlinedAt: !2477)
!2489 = !DILocation(line: 180, column: 18, scope: !1018, inlinedAt: !2477)
!2490 = !DILocation(line: 1023, column: 10, scope: !2392, inlinedAt: !2468)
!2491 = !DILocation(line: 1024, column: 1, scope: !2392, inlinedAt: !2468)
!2492 = !DILocation(line: 1030, column: 3, scope: !2452)
!2493 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !82, file: !82, line: 1034, type: !2494, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!32, !6, !6, !6, !76}
!2496 = !{!2497, !2498, !2499, !2500}
!2497 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2493, file: !82, line: 1034, type: !6)
!2498 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2493, file: !82, line: 1034, type: !6)
!2499 = !DILocalVariable(name: "arg", arg: 3, scope: !2493, file: !82, line: 1035, type: !6)
!2500 = !DILocalVariable(name: "argsize", arg: 4, scope: !2493, file: !82, line: 1035, type: !76)
!2501 = !DILocation(line: 1034, column: 34, scope: !2493)
!2502 = !DILocation(line: 1034, column: 58, scope: !2493)
!2503 = !DILocation(line: 1035, column: 34, scope: !2493)
!2504 = !DILocation(line: 1035, column: 46, scope: !2493)
!2505 = !DILocation(line: 1017, column: 28, scope: !2392, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 1037, column: 10, scope: !2493)
!2507 = !DILocation(line: 1017, column: 43, scope: !2392, inlinedAt: !2506)
!2508 = !DILocation(line: 1018, column: 36, scope: !2392, inlinedAt: !2506)
!2509 = !DILocation(line: 1019, column: 36, scope: !2392, inlinedAt: !2506)
!2510 = !DILocation(line: 1019, column: 48, scope: !2392, inlinedAt: !2506)
!2511 = !DILocation(line: 1021, column: 3, scope: !2392, inlinedAt: !2506)
!2512 = !DILocation(line: 1021, column: 30, scope: !2392, inlinedAt: !2506)
!2513 = !DILocation(line: 1021, column: 26, scope: !2392, inlinedAt: !2506)
!2514 = !DILocation(line: 171, column: 45, scope: !1018, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 1022, column: 3, scope: !2392, inlinedAt: !2506)
!2516 = !DILocation(line: 172, column: 33, scope: !1018, inlinedAt: !2515)
!2517 = !DILocation(line: 172, column: 57, scope: !1018, inlinedAt: !2515)
!2518 = !DILocation(line: 176, column: 6, scope: !1018, inlinedAt: !2515)
!2519 = !DILocation(line: 176, column: 12, scope: !1018, inlinedAt: !2515)
!2520 = !DILocation(line: 177, column: 8, scope: !1034, inlinedAt: !2515)
!2521 = !DILocation(line: 177, column: 23, scope: !1034, inlinedAt: !2515)
!2522 = !DILocation(line: 177, column: 19, scope: !1034, inlinedAt: !2515)
!2523 = !DILocation(line: 178, column: 5, scope: !1034, inlinedAt: !2515)
!2524 = !DILocation(line: 179, column: 6, scope: !1018, inlinedAt: !2515)
!2525 = !DILocation(line: 179, column: 17, scope: !1018, inlinedAt: !2515)
!2526 = !DILocation(line: 180, column: 6, scope: !1018, inlinedAt: !2515)
!2527 = !DILocation(line: 180, column: 18, scope: !1018, inlinedAt: !2515)
!2528 = !DILocation(line: 1023, column: 10, scope: !2392, inlinedAt: !2506)
!2529 = !DILocation(line: 1024, column: 1, scope: !2392, inlinedAt: !2506)
!2530 = !DILocation(line: 1037, column: 3, scope: !2493)
!2531 = distinct !DISubprogram(name: "quote_n_mem", scope: !82, file: !82, line: 1052, type: !2532, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!6, !25, !6, !76}
!2534 = !{!2535, !2536, !2537}
!2535 = !DILocalVariable(name: "n", arg: 1, scope: !2531, file: !82, line: 1052, type: !25)
!2536 = !DILocalVariable(name: "arg", arg: 2, scope: !2531, file: !82, line: 1052, type: !6)
!2537 = !DILocalVariable(name: "argsize", arg: 3, scope: !2531, file: !82, line: 1052, type: !76)
!2538 = !DILocation(line: 1052, column: 18, scope: !2531)
!2539 = !DILocation(line: 1052, column: 33, scope: !2531)
!2540 = !DILocation(line: 1052, column: 45, scope: !2531)
!2541 = !DILocation(line: 1054, column: 10, scope: !2531)
!2542 = !DILocation(line: 1054, column: 3, scope: !2531)
!2543 = distinct !DISubprogram(name: "quote_mem", scope: !82, file: !82, line: 1058, type: !2544, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!6, !6, !76}
!2546 = !{!2547, !2548}
!2547 = !DILocalVariable(name: "arg", arg: 1, scope: !2543, file: !82, line: 1058, type: !6)
!2548 = !DILocalVariable(name: "argsize", arg: 2, scope: !2543, file: !82, line: 1058, type: !76)
!2549 = !DILocation(line: 1058, column: 24, scope: !2543)
!2550 = !DILocation(line: 1058, column: 36, scope: !2543)
!2551 = !DILocation(line: 1052, column: 18, scope: !2531, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 1060, column: 10, scope: !2543)
!2553 = !DILocation(line: 1052, column: 33, scope: !2531, inlinedAt: !2552)
!2554 = !DILocation(line: 1052, column: 45, scope: !2531, inlinedAt: !2552)
!2555 = !DILocation(line: 1054, column: 10, scope: !2531, inlinedAt: !2552)
!2556 = !DILocation(line: 1060, column: 3, scope: !2543)
!2557 = distinct !DISubprogram(name: "quote_n", scope: !82, file: !82, line: 1064, type: !2558, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!6, !25, !6}
!2560 = !{!2561, !2562}
!2561 = !DILocalVariable(name: "n", arg: 1, scope: !2557, file: !82, line: 1064, type: !25)
!2562 = !DILocalVariable(name: "arg", arg: 2, scope: !2557, file: !82, line: 1064, type: !6)
!2563 = !DILocation(line: 1064, column: 14, scope: !2557)
!2564 = !DILocation(line: 1064, column: 29, scope: !2557)
!2565 = !DILocation(line: 1052, column: 18, scope: !2531, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1066, column: 10, scope: !2557)
!2567 = !DILocation(line: 1052, column: 33, scope: !2531, inlinedAt: !2566)
!2568 = !DILocation(line: 1052, column: 45, scope: !2531, inlinedAt: !2566)
!2569 = !DILocation(line: 1054, column: 10, scope: !2531, inlinedAt: !2566)
!2570 = !DILocation(line: 1066, column: 3, scope: !2557)
!2571 = distinct !DISubprogram(name: "quote", scope: !82, file: !82, line: 1070, type: !2572, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !37, variables: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!6, !6}
!2574 = !{!2575}
!2575 = !DILocalVariable(name: "arg", arg: 1, scope: !2571, file: !82, line: 1070, type: !6)
!2576 = !DILocation(line: 1070, column: 20, scope: !2571)
!2577 = !DILocation(line: 1064, column: 14, scope: !2557, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 1072, column: 10, scope: !2571)
!2579 = !DILocation(line: 1064, column: 29, scope: !2557, inlinedAt: !2578)
!2580 = !DILocation(line: 1052, column: 18, scope: !2531, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 1066, column: 10, scope: !2557, inlinedAt: !2578)
!2582 = !DILocation(line: 1052, column: 33, scope: !2531, inlinedAt: !2581)
!2583 = !DILocation(line: 1052, column: 45, scope: !2531, inlinedAt: !2581)
!2584 = !DILocation(line: 1054, column: 10, scope: !2531, inlinedAt: !2581)
!2585 = !DILocation(line: 1072, column: 3, scope: !2571)
!2586 = distinct !DISubprogram(name: "version_etc_arn", scope: !512, file: !512, line: 62, type: !2587, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !508, variables: !2645)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !2589, !6, !6, !6, !2644, !76}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2591, line: 7, baseType: !2592)
!2591 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2593, line: 241, size: 1728, elements: !2594)
!2593 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2594 = !{!2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2615, !2616, !2617, !2618, !2622, !2623, !2625, !2629, !2632, !2634, !2635, !2636, !2637, !2638, !2639, !2640}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2592, file: !2593, line: 242, baseType: !25, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2592, file: !2593, line: 247, baseType: !32, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2592, file: !2593, line: 248, baseType: !32, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2592, file: !2593, line: 249, baseType: !32, size: 64, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2592, file: !2593, line: 250, baseType: !32, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2592, file: !2593, line: 251, baseType: !32, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2592, file: !2593, line: 252, baseType: !32, size: 64, offset: 384)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2592, file: !2593, line: 253, baseType: !32, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2592, file: !2593, line: 254, baseType: !32, size: 64, offset: 512)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2592, file: !2593, line: 256, baseType: !32, size: 64, offset: 576)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2592, file: !2593, line: 257, baseType: !32, size: 64, offset: 640)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2592, file: !2593, line: 258, baseType: !32, size: 64, offset: 704)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2592, file: !2593, line: 260, baseType: !2608, size: 64, offset: 768)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2593, line: 156, size: 192, elements: !2610)
!2610 = !{!2611, !2612, !2614}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2609, file: !2593, line: 157, baseType: !2608, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2609, file: !2593, line: 158, baseType: !2613, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2609, file: !2593, line: 162, baseType: !25, size: 32, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2592, file: !2593, line: 262, baseType: !2613, size: 64, offset: 832)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2592, file: !2593, line: 264, baseType: !25, size: 32, offset: 896)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2592, file: !2593, line: 268, baseType: !25, size: 32, offset: 928)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2592, file: !2593, line: 270, baseType: !2619, size: 64, offset: 960)
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2620, line: 140, baseType: !2621)
!2620 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2621 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2592, file: !2593, line: 274, baseType: !75, size: 16, offset: 1024)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2592, file: !2593, line: 275, baseType: !2624, size: 8, offset: 1040)
!2624 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2592, file: !2593, line: 276, baseType: !2626, size: 8, offset: 1048)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2627)
!2627 = !{!2628}
!2628 = !DISubrange(count: 1)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2592, file: !2593, line: 280, baseType: !2630, size: 64, offset: 1088)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2593, line: 150, baseType: null)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2592, file: !2593, line: 289, baseType: !2633, size: 64, offset: 1152)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2620, line: 141, baseType: !2621)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2592, file: !2593, line: 297, baseType: !31, size: 64, offset: 1216)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2592, file: !2593, line: 298, baseType: !31, size: 64, offset: 1280)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2592, file: !2593, line: 299, baseType: !31, size: 64, offset: 1344)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2592, file: !2593, line: 300, baseType: !31, size: 64, offset: 1408)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2592, file: !2593, line: 302, baseType: !76, size: 64, offset: 1472)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2592, file: !2593, line: 303, baseType: !25, size: 32, offset: 1536)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2592, file: !2593, line: 305, baseType: !2641, size: 160, offset: 1568)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2642)
!2642 = !{!2643}
!2643 = !DISubrange(count: 20)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651}
!2646 = !DILocalVariable(name: "stream", arg: 1, scope: !2586, file: !512, line: 62, type: !2589)
!2647 = !DILocalVariable(name: "command_name", arg: 2, scope: !2586, file: !512, line: 63, type: !6)
!2648 = !DILocalVariable(name: "package", arg: 3, scope: !2586, file: !512, line: 63, type: !6)
!2649 = !DILocalVariable(name: "version", arg: 4, scope: !2586, file: !512, line: 64, type: !6)
!2650 = !DILocalVariable(name: "authors", arg: 5, scope: !2586, file: !512, line: 65, type: !2644)
!2651 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2586, file: !512, line: 65, type: !76)
!2652 = !DILocation(line: 62, column: 24, scope: !2586)
!2653 = !DILocation(line: 63, column: 30, scope: !2586)
!2654 = !DILocation(line: 63, column: 56, scope: !2586)
!2655 = !DILocation(line: 64, column: 30, scope: !2586)
!2656 = !DILocation(line: 65, column: 39, scope: !2586)
!2657 = !DILocation(line: 65, column: 55, scope: !2586)
!2658 = !DILocation(line: 67, column: 7, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2586, file: !512, line: 67, column: 7)
!2660 = !DILocation(line: 67, column: 7, scope: !2586)
!2661 = !DILocation(line: 68, column: 5, scope: !2659)
!2662 = !DILocation(line: 70, column: 5, scope: !2659)
!2663 = !DILocation(line: 84, column: 3, scope: !2586)
!2664 = !DILocation(line: 86, column: 3, scope: !2586)
!2665 = !DILocation(line: 95, column: 3, scope: !2586)
!2666 = !DILocation(line: 99, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2586, file: !512, line: 96, column: 5)
!2668 = !DILocation(line: 102, column: 7, scope: !2667)
!2669 = !DILocation(line: 103, column: 7, scope: !2667)
!2670 = !DILocation(line: 106, column: 7, scope: !2667)
!2671 = !DILocation(line: 107, column: 7, scope: !2667)
!2672 = !DILocation(line: 110, column: 7, scope: !2667)
!2673 = !DILocation(line: 112, column: 7, scope: !2667)
!2674 = !DILocation(line: 117, column: 7, scope: !2667)
!2675 = !DILocation(line: 119, column: 7, scope: !2667)
!2676 = !DILocation(line: 124, column: 7, scope: !2667)
!2677 = !DILocation(line: 126, column: 7, scope: !2667)
!2678 = !DILocation(line: 131, column: 7, scope: !2667)
!2679 = !DILocation(line: 134, column: 7, scope: !2667)
!2680 = !DILocation(line: 139, column: 7, scope: !2667)
!2681 = !DILocation(line: 142, column: 7, scope: !2667)
!2682 = !DILocation(line: 147, column: 7, scope: !2667)
!2683 = !DILocation(line: 151, column: 7, scope: !2667)
!2684 = !DILocation(line: 156, column: 7, scope: !2667)
!2685 = !DILocation(line: 160, column: 7, scope: !2667)
!2686 = !DILocation(line: 167, column: 7, scope: !2667)
!2687 = !DILocation(line: 171, column: 7, scope: !2667)
!2688 = !DILocation(line: 173, column: 1, scope: !2586)
!2689 = distinct !DISubprogram(name: "version_etc_ar", scope: !512, file: !512, line: 180, type: !2690, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !508, variables: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{null, !2589, !6, !6, !6, !2644}
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698}
!2693 = !DILocalVariable(name: "stream", arg: 1, scope: !2689, file: !512, line: 180, type: !2589)
!2694 = !DILocalVariable(name: "command_name", arg: 2, scope: !2689, file: !512, line: 181, type: !6)
!2695 = !DILocalVariable(name: "package", arg: 3, scope: !2689, file: !512, line: 181, type: !6)
!2696 = !DILocalVariable(name: "version", arg: 4, scope: !2689, file: !512, line: 182, type: !6)
!2697 = !DILocalVariable(name: "authors", arg: 5, scope: !2689, file: !512, line: 182, type: !2644)
!2698 = !DILocalVariable(name: "n_authors", scope: !2689, file: !512, line: 184, type: !76)
!2699 = !DILocation(line: 180, column: 23, scope: !2689)
!2700 = !DILocation(line: 181, column: 29, scope: !2689)
!2701 = !DILocation(line: 181, column: 55, scope: !2689)
!2702 = !DILocation(line: 182, column: 29, scope: !2689)
!2703 = !DILocation(line: 182, column: 59, scope: !2689)
!2704 = !DILocation(line: 184, column: 10, scope: !2689)
!2705 = !DILocation(line: 186, column: 8, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2689, file: !512, line: 186, column: 3)
!2707 = !DILocation(line: 186, column: 23, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2706, file: !512, line: 186, column: 3)
!2709 = !DILocation(line: 186, column: 3, scope: !2706)
!2710 = !DILocation(line: 186, column: 52, scope: !2708)
!2711 = distinct !{!2711, !2709, !2712}
!2712 = !DILocation(line: 187, column: 5, scope: !2706)
!2713 = !DILocation(line: 188, column: 3, scope: !2689)
!2714 = !DILocation(line: 189, column: 1, scope: !2689)
!2715 = distinct !DISubprogram(name: "version_etc_va", scope: !512, file: !512, line: 196, type: !2716, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !508, variables: !2725)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !2589, !6, !6, !6, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !509, line: 189, size: 192, elements: !2720)
!2720 = !{!2721, !2722, !2723, !2724}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2719, file: !509, line: 189, baseType: !95, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2719, file: !509, line: 189, baseType: !95, size: 32, offset: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2719, file: !509, line: 189, baseType: !31, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2719, file: !509, line: 189, baseType: !31, size: 64, offset: 128)
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2732}
!2726 = !DILocalVariable(name: "stream", arg: 1, scope: !2715, file: !512, line: 196, type: !2589)
!2727 = !DILocalVariable(name: "command_name", arg: 2, scope: !2715, file: !512, line: 197, type: !6)
!2728 = !DILocalVariable(name: "package", arg: 3, scope: !2715, file: !512, line: 197, type: !6)
!2729 = !DILocalVariable(name: "version", arg: 4, scope: !2715, file: !512, line: 198, type: !6)
!2730 = !DILocalVariable(name: "authors", arg: 5, scope: !2715, file: !512, line: 198, type: !2718)
!2731 = !DILocalVariable(name: "n_authors", scope: !2715, file: !512, line: 200, type: !76)
!2732 = !DILocalVariable(name: "authtab", scope: !2715, file: !512, line: 201, type: !2733)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !85)
!2734 = !DILocation(line: 196, column: 23, scope: !2715)
!2735 = !DILocation(line: 197, column: 29, scope: !2715)
!2736 = !DILocation(line: 197, column: 55, scope: !2715)
!2737 = !DILocation(line: 198, column: 29, scope: !2715)
!2738 = !DILocation(line: 198, column: 46, scope: !2715)
!2739 = !DILocation(line: 201, column: 3, scope: !2715)
!2740 = !DILocation(line: 201, column: 15, scope: !2715)
!2741 = !DILocation(line: 200, column: 10, scope: !2715)
!2742 = !DILocation(line: 205, column: 35, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !512, line: 203, column: 3)
!2744 = distinct !DILexicalBlock(scope: !2715, file: !512, line: 203, column: 3)
!2745 = !DILocation(line: 205, column: 14, scope: !2743)
!2746 = !DILocation(line: 205, column: 33, scope: !2743)
!2747 = !DILocation(line: 205, column: 67, scope: !2743)
!2748 = !DILocation(line: 203, column: 3, scope: !2744)
!2749 = !DILocation(line: 208, column: 3, scope: !2715)
!2750 = !DILocation(line: 210, column: 1, scope: !2715)
!2751 = distinct !DISubprogram(name: "version_etc", scope: !512, file: !512, line: 227, type: !2752, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !508, variables: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{null, !2589, !6, !6, !6, null}
!2754 = !{!2755, !2756, !2757, !2758, !2759}
!2755 = !DILocalVariable(name: "stream", arg: 1, scope: !2751, file: !512, line: 227, type: !2589)
!2756 = !DILocalVariable(name: "command_name", arg: 2, scope: !2751, file: !512, line: 228, type: !6)
!2757 = !DILocalVariable(name: "package", arg: 3, scope: !2751, file: !512, line: 228, type: !6)
!2758 = !DILocalVariable(name: "version", arg: 4, scope: !2751, file: !512, line: 229, type: !6)
!2759 = !DILocalVariable(name: "authors", scope: !2751, file: !512, line: 231, type: !2760)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2761, line: 46, baseType: !2762)
!2761 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2763, line: 48, baseType: !2764)
!2763 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !509, line: 231, baseType: !2765)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2719, size: 192, elements: !2627)
!2766 = !DILocation(line: 227, column: 20, scope: !2751)
!2767 = !DILocation(line: 228, column: 26, scope: !2751)
!2768 = !DILocation(line: 228, column: 52, scope: !2751)
!2769 = !DILocation(line: 229, column: 26, scope: !2751)
!2770 = !DILocation(line: 231, column: 3, scope: !2751)
!2771 = !DILocation(line: 231, column: 11, scope: !2751)
!2772 = !DILocation(line: 233, column: 3, scope: !2751)
!2773 = !DILocation(line: 234, column: 3, scope: !2751)
!2774 = !DILocation(line: 235, column: 3, scope: !2751)
!2775 = !DILocation(line: 236, column: 1, scope: !2751)
!2776 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !512, file: !512, line: 239, type: !853, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !508, variables: !4)
!2777 = !DILocation(line: 245, column: 3, scope: !2776)
!2778 = !DILocation(line: 251, column: 3, scope: !2776)
!2779 = !DILocation(line: 256, column: 3, scope: !2776)
!2780 = !DILocation(line: 258, column: 1, scope: !2776)
!2781 = distinct !DISubprogram(name: "xnmalloc", scope: !520, file: !520, line: 105, type: !2782, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!31, !76, !76}
!2784 = !{!2785, !2786}
!2785 = !DILocalVariable(name: "n", arg: 1, scope: !2781, file: !520, line: 105, type: !76)
!2786 = !DILocalVariable(name: "s", arg: 2, scope: !2781, file: !520, line: 105, type: !76)
!2787 = !DILocation(line: 105, column: 18, scope: !2781)
!2788 = !DILocation(line: 105, column: 28, scope: !2781)
!2789 = !DILocation(line: 107, column: 7, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2781, file: !520, line: 107, column: 7)
!2791 = !DILocation(line: 107, column: 7, scope: !2781)
!2792 = !DILocation(line: 108, column: 5, scope: !2790)
!2793 = !DILocation(line: 109, column: 21, scope: !2781)
!2794 = !DILocalVariable(name: "n", arg: 1, scope: !2795, file: !2796, line: 39, type: !76)
!2795 = distinct !DISubprogram(name: "xmalloc", scope: !2796, file: !2796, line: 39, type: !2797, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2799)
!2796 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!31, !76}
!2799 = !{!2794, !2800}
!2800 = !DILocalVariable(name: "p", scope: !2795, file: !2796, line: 41, type: !31)
!2801 = !DILocation(line: 39, column: 17, scope: !2795, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 109, column: 10, scope: !2781)
!2803 = !DILocation(line: 41, column: 13, scope: !2795, inlinedAt: !2802)
!2804 = !DILocation(line: 41, column: 9, scope: !2795, inlinedAt: !2802)
!2805 = !DILocation(line: 42, column: 8, scope: !2806, inlinedAt: !2802)
!2806 = distinct !DILexicalBlock(scope: !2795, file: !2796, line: 42, column: 7)
!2807 = !DILocation(line: 42, column: 15, scope: !2806, inlinedAt: !2802)
!2808 = !DILocation(line: 42, column: 10, scope: !2806, inlinedAt: !2802)
!2809 = !DILocation(line: 43, column: 5, scope: !2806, inlinedAt: !2802)
!2810 = !DILocation(line: 109, column: 3, scope: !2781)
!2811 = !DILocation(line: 39, column: 17, scope: !2795)
!2812 = !DILocation(line: 41, column: 13, scope: !2795)
!2813 = !DILocation(line: 41, column: 9, scope: !2795)
!2814 = !DILocation(line: 42, column: 8, scope: !2806)
!2815 = !DILocation(line: 42, column: 15, scope: !2806)
!2816 = !DILocation(line: 42, column: 10, scope: !2806)
!2817 = !DILocation(line: 43, column: 5, scope: !2806)
!2818 = !DILocation(line: 44, column: 3, scope: !2795)
!2819 = distinct !DISubprogram(name: "xnrealloc", scope: !520, file: !520, line: 118, type: !2820, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!31, !31, !76, !76}
!2822 = !{!2823, !2824, !2825}
!2823 = !DILocalVariable(name: "p", arg: 1, scope: !2819, file: !520, line: 118, type: !31)
!2824 = !DILocalVariable(name: "n", arg: 2, scope: !2819, file: !520, line: 118, type: !76)
!2825 = !DILocalVariable(name: "s", arg: 3, scope: !2819, file: !520, line: 118, type: !76)
!2826 = !DILocation(line: 118, column: 18, scope: !2819)
!2827 = !DILocation(line: 118, column: 28, scope: !2819)
!2828 = !DILocation(line: 118, column: 38, scope: !2819)
!2829 = !DILocation(line: 120, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2819, file: !520, line: 120, column: 7)
!2831 = !DILocation(line: 120, column: 7, scope: !2819)
!2832 = !DILocation(line: 121, column: 5, scope: !2830)
!2833 = !DILocation(line: 122, column: 25, scope: !2819)
!2834 = !DILocalVariable(name: "p", arg: 1, scope: !2835, file: !2796, line: 51, type: !31)
!2835 = distinct !DISubprogram(name: "xrealloc", scope: !2796, file: !2796, line: 51, type: !2836, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!31, !31, !76}
!2838 = !{!2834, !2839}
!2839 = !DILocalVariable(name: "n", arg: 2, scope: !2835, file: !2796, line: 51, type: !76)
!2840 = !DILocation(line: 51, column: 17, scope: !2835, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 122, column: 10, scope: !2819)
!2842 = !DILocation(line: 51, column: 27, scope: !2835, inlinedAt: !2841)
!2843 = !DILocation(line: 53, column: 8, scope: !2844, inlinedAt: !2841)
!2844 = distinct !DILexicalBlock(scope: !2835, file: !2796, line: 53, column: 7)
!2845 = !DILocation(line: 53, column: 13, scope: !2844, inlinedAt: !2841)
!2846 = !DILocation(line: 53, column: 10, scope: !2844, inlinedAt: !2841)
!2847 = !DILocation(line: 57, column: 7, scope: !2848, inlinedAt: !2841)
!2848 = distinct !DILexicalBlock(scope: !2844, file: !2796, line: 54, column: 5)
!2849 = !DILocation(line: 58, column: 7, scope: !2848, inlinedAt: !2841)
!2850 = !DILocation(line: 61, column: 7, scope: !2835, inlinedAt: !2841)
!2851 = !DILocation(line: 62, column: 8, scope: !2852, inlinedAt: !2841)
!2852 = distinct !DILexicalBlock(scope: !2835, file: !2796, line: 62, column: 7)
!2853 = !DILocation(line: 62, column: 13, scope: !2852, inlinedAt: !2841)
!2854 = !DILocation(line: 62, column: 10, scope: !2852, inlinedAt: !2841)
!2855 = !DILocation(line: 63, column: 5, scope: !2852, inlinedAt: !2841)
!2856 = !DILocation(line: 122, column: 3, scope: !2819)
!2857 = !DILocation(line: 51, column: 17, scope: !2835)
!2858 = !DILocation(line: 51, column: 27, scope: !2835)
!2859 = !DILocation(line: 53, column: 8, scope: !2844)
!2860 = !DILocation(line: 53, column: 13, scope: !2844)
!2861 = !DILocation(line: 53, column: 10, scope: !2844)
!2862 = !DILocation(line: 57, column: 7, scope: !2848)
!2863 = !DILocation(line: 58, column: 7, scope: !2848)
!2864 = !DILocation(line: 61, column: 7, scope: !2835)
!2865 = !DILocation(line: 62, column: 8, scope: !2852)
!2866 = !DILocation(line: 62, column: 13, scope: !2852)
!2867 = !DILocation(line: 62, column: 10, scope: !2852)
!2868 = !DILocation(line: 63, column: 5, scope: !2852)
!2869 = !DILocation(line: 65, column: 1, scope: !2835)
!2870 = !DILocation(line: 180, column: 19, scope: !521)
!2871 = !DILocation(line: 180, column: 30, scope: !521)
!2872 = !DILocation(line: 180, column: 41, scope: !521)
!2873 = !DILocation(line: 182, column: 14, scope: !521)
!2874 = !DILocation(line: 182, column: 10, scope: !521)
!2875 = !DILocation(line: 184, column: 9, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !521, file: !520, line: 184, column: 7)
!2877 = !DILocation(line: 184, column: 7, scope: !521)
!2878 = !DILocation(line: 186, column: 13, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !520, line: 186, column: 11)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !520, line: 185, column: 5)
!2881 = !DILocation(line: 186, column: 11, scope: !2880)
!2882 = !DILocation(line: 194, column: 30, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2879, file: !520, line: 187, column: 9)
!2884 = !DILocation(line: 195, column: 16, scope: !2883)
!2885 = !DILocation(line: 195, column: 13, scope: !2883)
!2886 = !DILocation(line: 196, column: 9, scope: !2883)
!2887 = !DILocation(line: 204, column: 69, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !520, line: 204, column: 11)
!2889 = distinct !DILexicalBlock(scope: !2876, file: !520, line: 199, column: 5)
!2890 = !DILocation(line: 205, column: 11, scope: !2888)
!2891 = !DILocation(line: 204, column: 11, scope: !2889)
!2892 = !DILocation(line: 206, column: 9, scope: !2888)
!2893 = !DILocation(line: 210, column: 7, scope: !521)
!2894 = !DILocation(line: 211, column: 25, scope: !521)
!2895 = !DILocation(line: 51, column: 17, scope: !2835, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 211, column: 10, scope: !521)
!2897 = !DILocation(line: 51, column: 27, scope: !2835, inlinedAt: !2896)
!2898 = !DILocation(line: 53, column: 10, scope: !2844, inlinedAt: !2896)
!2899 = !DILocation(line: 207, column: 14, scope: !2889)
!2900 = !DILocation(line: 207, column: 18, scope: !2889)
!2901 = !DILocation(line: 207, column: 9, scope: !2889)
!2902 = !DILocation(line: 53, column: 8, scope: !2844, inlinedAt: !2896)
!2903 = !DILocation(line: 57, column: 7, scope: !2848, inlinedAt: !2896)
!2904 = !DILocation(line: 58, column: 7, scope: !2848, inlinedAt: !2896)
!2905 = !DILocation(line: 61, column: 7, scope: !2835, inlinedAt: !2896)
!2906 = !DILocation(line: 62, column: 8, scope: !2852, inlinedAt: !2896)
!2907 = !DILocation(line: 62, column: 13, scope: !2852, inlinedAt: !2896)
!2908 = !DILocation(line: 62, column: 10, scope: !2852, inlinedAt: !2896)
!2909 = !DILocation(line: 63, column: 5, scope: !2852, inlinedAt: !2896)
!2910 = !DILocation(line: 211, column: 3, scope: !521)
!2911 = distinct !DISubprogram(name: "xcharalloc", scope: !520, file: !520, line: 220, type: !1864, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2912)
!2912 = !{!2913}
!2913 = !DILocalVariable(name: "n", arg: 1, scope: !2911, file: !520, line: 220, type: !76)
!2914 = !DILocation(line: 220, column: 20, scope: !2911)
!2915 = !DILocation(line: 39, column: 17, scope: !2795, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 222, column: 10, scope: !2911)
!2917 = !DILocation(line: 41, column: 13, scope: !2795, inlinedAt: !2916)
!2918 = !DILocation(line: 41, column: 9, scope: !2795, inlinedAt: !2916)
!2919 = !DILocation(line: 42, column: 8, scope: !2806, inlinedAt: !2916)
!2920 = !DILocation(line: 42, column: 15, scope: !2806, inlinedAt: !2916)
!2921 = !DILocation(line: 42, column: 10, scope: !2806, inlinedAt: !2916)
!2922 = !DILocation(line: 43, column: 5, scope: !2806, inlinedAt: !2916)
!2923 = !DILocation(line: 222, column: 3, scope: !2911)
!2924 = distinct !DISubprogram(name: "x2realloc", scope: !2796, file: !2796, line: 74, type: !2925, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!31, !31, !524}
!2927 = !{!2928, !2929}
!2928 = !DILocalVariable(name: "p", arg: 1, scope: !2924, file: !2796, line: 74, type: !31)
!2929 = !DILocalVariable(name: "pn", arg: 2, scope: !2924, file: !2796, line: 74, type: !524)
!2930 = !DILocation(line: 74, column: 18, scope: !2924)
!2931 = !DILocation(line: 74, column: 29, scope: !2924)
!2932 = !DILocation(line: 180, column: 19, scope: !521, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 76, column: 10, scope: !2924)
!2934 = !DILocation(line: 180, column: 30, scope: !521, inlinedAt: !2933)
!2935 = !DILocation(line: 180, column: 41, scope: !521, inlinedAt: !2933)
!2936 = !DILocation(line: 182, column: 14, scope: !521, inlinedAt: !2933)
!2937 = !DILocation(line: 182, column: 10, scope: !521, inlinedAt: !2933)
!2938 = !DILocation(line: 184, column: 9, scope: !2876, inlinedAt: !2933)
!2939 = !DILocation(line: 184, column: 7, scope: !521, inlinedAt: !2933)
!2940 = !DILocation(line: 186, column: 13, scope: !2879, inlinedAt: !2933)
!2941 = !DILocation(line: 186, column: 11, scope: !2880, inlinedAt: !2933)
!2942 = !DILocation(line: 210, column: 7, scope: !521, inlinedAt: !2933)
!2943 = !DILocation(line: 51, column: 17, scope: !2835, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 211, column: 10, scope: !521, inlinedAt: !2933)
!2945 = !DILocation(line: 51, column: 27, scope: !2835, inlinedAt: !2944)
!2946 = !DILocation(line: 53, column: 10, scope: !2844, inlinedAt: !2944)
!2947 = !DILocation(line: 205, column: 11, scope: !2888, inlinedAt: !2933)
!2948 = !DILocation(line: 204, column: 11, scope: !2889, inlinedAt: !2933)
!2949 = !DILocation(line: 206, column: 9, scope: !2888, inlinedAt: !2933)
!2950 = !DILocation(line: 207, column: 14, scope: !2889, inlinedAt: !2933)
!2951 = !DILocation(line: 207, column: 18, scope: !2889, inlinedAt: !2933)
!2952 = !DILocation(line: 207, column: 9, scope: !2889, inlinedAt: !2933)
!2953 = !DILocation(line: 53, column: 8, scope: !2844, inlinedAt: !2944)
!2954 = !DILocation(line: 57, column: 7, scope: !2848, inlinedAt: !2944)
!2955 = !DILocation(line: 58, column: 7, scope: !2848, inlinedAt: !2944)
!2956 = !DILocation(line: 61, column: 7, scope: !2835, inlinedAt: !2944)
!2957 = !DILocation(line: 62, column: 8, scope: !2852, inlinedAt: !2944)
!2958 = !DILocation(line: 62, column: 13, scope: !2852, inlinedAt: !2944)
!2959 = !DILocation(line: 62, column: 10, scope: !2852, inlinedAt: !2944)
!2960 = !DILocation(line: 63, column: 5, scope: !2852, inlinedAt: !2944)
!2961 = !DILocation(line: 76, column: 3, scope: !2924)
!2962 = distinct !DISubprogram(name: "xzalloc", scope: !2796, file: !2796, line: 84, type: !2797, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2963)
!2963 = !{!2964}
!2964 = !DILocalVariable(name: "s", arg: 1, scope: !2962, file: !2796, line: 84, type: !76)
!2965 = !DILocation(line: 84, column: 17, scope: !2962)
!2966 = !DILocation(line: 39, column: 17, scope: !2795, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 86, column: 18, scope: !2962)
!2968 = !DILocation(line: 41, column: 13, scope: !2795, inlinedAt: !2967)
!2969 = !DILocation(line: 41, column: 9, scope: !2795, inlinedAt: !2967)
!2970 = !DILocation(line: 42, column: 8, scope: !2806, inlinedAt: !2967)
!2971 = !DILocation(line: 42, column: 15, scope: !2806, inlinedAt: !2967)
!2972 = !DILocation(line: 42, column: 10, scope: !2806, inlinedAt: !2967)
!2973 = !DILocation(line: 43, column: 5, scope: !2806, inlinedAt: !2967)
!2974 = !DILocation(line: 86, column: 10, scope: !2962)
!2975 = !DILocation(line: 86, column: 3, scope: !2962)
!2976 = distinct !DISubprogram(name: "xcalloc", scope: !2796, file: !2796, line: 93, type: !2782, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2977)
!2977 = !{!2978, !2979, !2980}
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2976, file: !2796, line: 93, type: !76)
!2979 = !DILocalVariable(name: "s", arg: 2, scope: !2976, file: !2796, line: 93, type: !76)
!2980 = !DILocalVariable(name: "p", scope: !2976, file: !2796, line: 95, type: !31)
!2981 = !DILocation(line: 93, column: 17, scope: !2976)
!2982 = !DILocation(line: 93, column: 27, scope: !2976)
!2983 = !DILocation(line: 100, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2976, file: !2796, line: 100, column: 7)
!2985 = !DILocation(line: 101, column: 7, scope: !2984)
!2986 = !DILocation(line: 101, column: 18, scope: !2984)
!2987 = !DILocation(line: 95, column: 9, scope: !2976)
!2988 = !DILocation(line: 101, column: 16, scope: !2984)
!2989 = !DILocation(line: 100, column: 7, scope: !2976)
!2990 = !DILocation(line: 102, column: 5, scope: !2984)
!2991 = !DILocation(line: 103, column: 3, scope: !2976)
!2992 = distinct !DISubprogram(name: "xmemdup", scope: !2796, file: !2796, line: 111, type: !2993, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !2997)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!31, !2995, !76}
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2997 = !{!2998, !2999}
!2998 = !DILocalVariable(name: "p", arg: 1, scope: !2992, file: !2796, line: 111, type: !2995)
!2999 = !DILocalVariable(name: "s", arg: 2, scope: !2992, file: !2796, line: 111, type: !76)
!3000 = !DILocation(line: 111, column: 22, scope: !2992)
!3001 = !DILocation(line: 111, column: 32, scope: !2992)
!3002 = !DILocation(line: 39, column: 17, scope: !2795, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 113, column: 18, scope: !2992)
!3004 = !DILocation(line: 41, column: 13, scope: !2795, inlinedAt: !3003)
!3005 = !DILocation(line: 41, column: 9, scope: !2795, inlinedAt: !3003)
!3006 = !DILocation(line: 42, column: 8, scope: !2806, inlinedAt: !3003)
!3007 = !DILocation(line: 42, column: 15, scope: !2806, inlinedAt: !3003)
!3008 = !DILocation(line: 42, column: 10, scope: !2806, inlinedAt: !3003)
!3009 = !DILocation(line: 43, column: 5, scope: !2806, inlinedAt: !3003)
!3010 = !DILocation(line: 113, column: 10, scope: !2992)
!3011 = !DILocation(line: 113, column: 3, scope: !2992)
!3012 = distinct !DISubprogram(name: "xstrdup", scope: !2796, file: !2796, line: 119, type: !2065, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !516, variables: !3013)
!3013 = !{!3014}
!3014 = !DILocalVariable(name: "string", arg: 1, scope: !3012, file: !2796, line: 119, type: !6)
!3015 = !DILocation(line: 119, column: 22, scope: !3012)
!3016 = !DILocation(line: 121, column: 27, scope: !3012)
!3017 = !DILocation(line: 121, column: 43, scope: !3012)
!3018 = !DILocation(line: 111, column: 22, scope: !2992, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 121, column: 10, scope: !3012)
!3020 = !DILocation(line: 111, column: 32, scope: !2992, inlinedAt: !3019)
!3021 = !DILocation(line: 39, column: 17, scope: !2795, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 113, column: 18, scope: !2992, inlinedAt: !3019)
!3023 = !DILocation(line: 41, column: 13, scope: !2795, inlinedAt: !3022)
!3024 = !DILocation(line: 41, column: 9, scope: !2795, inlinedAt: !3022)
!3025 = !DILocation(line: 42, column: 8, scope: !2806, inlinedAt: !3022)
!3026 = !DILocation(line: 42, column: 15, scope: !2806, inlinedAt: !3022)
!3027 = !DILocation(line: 42, column: 10, scope: !2806, inlinedAt: !3022)
!3028 = !DILocation(line: 43, column: 5, scope: !2806, inlinedAt: !3022)
!3029 = !DILocation(line: 113, column: 10, scope: !2992, inlinedAt: !3019)
!3030 = !DILocation(line: 121, column: 3, scope: !3012)
!3031 = distinct !DISubprogram(name: "xalloc_die", scope: !3032, file: !3032, line: 32, type: !853, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !533, variables: !4)
!3032 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3033 = !DILocation(line: 34, column: 10, scope: !3031)
!3034 = !DILocation(line: 34, column: 33, scope: !3031)
!3035 = !DILocation(line: 34, column: 3, scope: !3031)
!3036 = !DILocation(line: 40, column: 3, scope: !3031)
!3037 = distinct !DISubprogram(name: "rpl_calloc", scope: !3038, file: !3038, line: 42, type: !2782, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !535, variables: !3039)
!3038 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3039 = !{!3040, !3041, !3042, !3043}
!3040 = !DILocalVariable(name: "n", arg: 1, scope: !3037, file: !3038, line: 42, type: !76)
!3041 = !DILocalVariable(name: "s", arg: 2, scope: !3037, file: !3038, line: 42, type: !76)
!3042 = !DILocalVariable(name: "result", scope: !3037, file: !3038, line: 44, type: !31)
!3043 = !DILocalVariable(name: "bytes", scope: !3044, file: !3038, line: 56, type: !76)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !3038, line: 53, column: 5)
!3045 = distinct !DILexicalBlock(scope: !3037, file: !3038, line: 47, column: 7)
!3046 = !DILocation(line: 42, column: 20, scope: !3037)
!3047 = !DILocation(line: 42, column: 30, scope: !3037)
!3048 = !DILocation(line: 47, column: 9, scope: !3045)
!3049 = !DILocation(line: 47, column: 19, scope: !3045)
!3050 = !DILocation(line: 47, column: 14, scope: !3045)
!3051 = !DILocation(line: 56, column: 24, scope: !3044)
!3052 = !DILocation(line: 56, column: 14, scope: !3044)
!3053 = !DILocation(line: 57, column: 17, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3044, file: !3038, line: 57, column: 11)
!3055 = !DILocation(line: 57, column: 21, scope: !3054)
!3056 = !DILocation(line: 57, column: 11, scope: !3044)
!3057 = !DILocation(line: 59, column: 11, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3054, file: !3038, line: 58, column: 9)
!3059 = !DILocation(line: 59, column: 17, scope: !3058)
!3060 = !DILocation(line: 65, column: 12, scope: !3037)
!3061 = !DILocation(line: 44, column: 9, scope: !3037)
!3062 = !DILocation(line: 72, column: 3, scope: !3037)
!3063 = !DILocation(line: 73, column: 1, scope: !3037)
!3064 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3065, file: !3065, line: 334, type: !3066, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !537, variables: !3080)
!3065 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!76, !3068, !6, !76, !3069}
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1117, line: 6, baseType: !3071)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1119, line: 21, baseType: !3072)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1119, line: 13, size: 64, elements: !3073)
!3073 = !{!3074, !3075}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3072, file: !1119, line: 15, baseType: !25, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3072, file: !1119, line: 20, baseType: !3076, size: 32, offset: 32)
!3076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3072, file: !1119, line: 16, size: 32, elements: !3077)
!3077 = !{!3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3076, file: !1119, line: 18, baseType: !95, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3076, file: !1119, line: 19, baseType: !1128, size: 32)
!3080 = !{!3081, !3082, !3083, !3084, !3085, !3086, !3087}
!3081 = !DILocalVariable(name: "pwc", arg: 1, scope: !3064, file: !3065, line: 334, type: !3068)
!3082 = !DILocalVariable(name: "s", arg: 2, scope: !3064, file: !3065, line: 334, type: !6)
!3083 = !DILocalVariable(name: "n", arg: 3, scope: !3064, file: !3065, line: 334, type: !76)
!3084 = !DILocalVariable(name: "ps", arg: 4, scope: !3064, file: !3065, line: 334, type: !3069)
!3085 = !DILocalVariable(name: "ret", scope: !3064, file: !3065, line: 336, type: !76)
!3086 = !DILocalVariable(name: "wc", scope: !3064, file: !3065, line: 337, type: !1133)
!3087 = !DILocalVariable(name: "uc", scope: !3088, file: !3065, line: 398, type: !476)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !3065, line: 397, column: 5)
!3089 = distinct !DILexicalBlock(scope: !3064, file: !3065, line: 396, column: 7)
!3090 = !DILocation(line: 334, column: 23, scope: !3064)
!3091 = !DILocation(line: 334, column: 40, scope: !3064)
!3092 = !DILocation(line: 334, column: 50, scope: !3064)
!3093 = !DILocation(line: 334, column: 64, scope: !3064)
!3094 = !DILocation(line: 337, column: 3, scope: !3064)
!3095 = !DILocation(line: 353, column: 9, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3064, file: !3065, line: 353, column: 7)
!3097 = !DILocation(line: 353, column: 7, scope: !3064)
!3098 = !DILocation(line: 388, column: 9, scope: !3064)
!3099 = !DILocation(line: 336, column: 10, scope: !3064)
!3100 = !DILocation(line: 396, column: 19, scope: !3089)
!3101 = !DILocation(line: 396, column: 31, scope: !3089)
!3102 = !DILocation(line: 396, column: 26, scope: !3089)
!3103 = !DILocation(line: 396, column: 41, scope: !3089)
!3104 = !DILocation(line: 396, column: 7, scope: !3064)
!3105 = !DILocation(line: 398, column: 26, scope: !3088)
!3106 = !DILocation(line: 398, column: 21, scope: !3088)
!3107 = !DILocation(line: 399, column: 14, scope: !3088)
!3108 = !DILocation(line: 399, column: 12, scope: !3088)
!3109 = !DILocation(line: 405, column: 1, scope: !3064)
!3110 = distinct !DISubprogram(name: "close_stream", scope: !3111, file: !3111, line: 56, type: !3112, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3154)
!3111 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!25, !3114}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2591, line: 7, baseType: !3116)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2593, line: 241, size: 1728, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3116, file: !2593, line: 242, baseType: !25, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3116, file: !2593, line: 247, baseType: !32, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3116, file: !2593, line: 248, baseType: !32, size: 64, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3116, file: !2593, line: 249, baseType: !32, size: 64, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3116, file: !2593, line: 250, baseType: !32, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3116, file: !2593, line: 251, baseType: !32, size: 64, offset: 320)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3116, file: !2593, line: 252, baseType: !32, size: 64, offset: 384)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3116, file: !2593, line: 253, baseType: !32, size: 64, offset: 448)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3116, file: !2593, line: 254, baseType: !32, size: 64, offset: 512)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3116, file: !2593, line: 256, baseType: !32, size: 64, offset: 576)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3116, file: !2593, line: 257, baseType: !32, size: 64, offset: 640)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3116, file: !2593, line: 258, baseType: !32, size: 64, offset: 704)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3116, file: !2593, line: 260, baseType: !3131, size: 64, offset: 768)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2593, line: 156, size: 192, elements: !3133)
!3133 = !{!3134, !3135, !3137}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3132, file: !2593, line: 157, baseType: !3131, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3132, file: !2593, line: 158, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3132, file: !2593, line: 162, baseType: !25, size: 32, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3116, file: !2593, line: 262, baseType: !3136, size: 64, offset: 832)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3116, file: !2593, line: 264, baseType: !25, size: 32, offset: 896)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3116, file: !2593, line: 268, baseType: !25, size: 32, offset: 928)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3116, file: !2593, line: 270, baseType: !2619, size: 64, offset: 960)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3116, file: !2593, line: 274, baseType: !75, size: 16, offset: 1024)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3116, file: !2593, line: 275, baseType: !2624, size: 8, offset: 1040)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3116, file: !2593, line: 276, baseType: !2626, size: 8, offset: 1048)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3116, file: !2593, line: 280, baseType: !2630, size: 64, offset: 1088)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3116, file: !2593, line: 289, baseType: !2633, size: 64, offset: 1152)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3116, file: !2593, line: 297, baseType: !31, size: 64, offset: 1216)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3116, file: !2593, line: 298, baseType: !31, size: 64, offset: 1280)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3116, file: !2593, line: 299, baseType: !31, size: 64, offset: 1344)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3116, file: !2593, line: 300, baseType: !31, size: 64, offset: 1408)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3116, file: !2593, line: 302, baseType: !76, size: 64, offset: 1472)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3116, file: !2593, line: 303, baseType: !25, size: 32, offset: 1536)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3116, file: !2593, line: 305, baseType: !2641, size: 160, offset: 1568)
!3154 = !{!3155, !3156, !3158, !3159}
!3155 = !DILocalVariable(name: "stream", arg: 1, scope: !3110, file: !3111, line: 56, type: !3114)
!3156 = !DILocalVariable(name: "some_pending", scope: !3110, file: !3111, line: 58, type: !3157)
!3157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3158 = !DILocalVariable(name: "prev_fail", scope: !3110, file: !3111, line: 59, type: !3157)
!3159 = !DILocalVariable(name: "fclose_fail", scope: !3110, file: !3111, line: 60, type: !3157)
!3160 = !DILocation(line: 56, column: 21, scope: !3110)
!3161 = !DILocation(line: 58, column: 30, scope: !3110)
!3162 = !DILocalVariable(name: "__stream", arg: 1, scope: !3163, file: !785, line: 132, type: !3114)
!3163 = distinct !DISubprogram(name: "ferror_unlocked", scope: !785, file: !785, line: 132, type: !3112, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !540, variables: !3164)
!3164 = !{!3162}
!3165 = !DILocation(line: 132, column: 1, scope: !3163, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 59, column: 27, scope: !3110)
!3167 = !DILocation(line: 134, column: 10, scope: !3163, inlinedAt: !3166)
!3168 = !{!793, !794, i64 0}
!3169 = !DILocation(line: 59, column: 43, scope: !3110)
!3170 = !DILocation(line: 60, column: 29, scope: !3110)
!3171 = !DILocation(line: 60, column: 45, scope: !3110)
!3172 = !DILocation(line: 70, column: 17, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3110, file: !3111, line: 70, column: 7)
!3174 = !DILocation(line: 58, column: 50, scope: !3110)
!3175 = !DILocation(line: 70, column: 33, scope: !3173)
!3176 = !DILocation(line: 70, column: 53, scope: !3173)
!3177 = !DILocation(line: 70, column: 59, scope: !3173)
!3178 = !DILocation(line: 70, column: 7, scope: !3110)
!3179 = !DILocation(line: 72, column: 11, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3173, file: !3111, line: 71, column: 5)
!3181 = !DILocation(line: 73, column: 9, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3180, file: !3111, line: 72, column: 11)
!3183 = !DILocation(line: 73, column: 15, scope: !3182)
!3184 = !DILocation(line: 78, column: 1, scope: !3110)
!3185 = distinct !DISubprogram(name: "hard_locale", scope: !3186, file: !3186, line: 38, type: !3187, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !542, variables: !3189)
!3186 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!17, !25}
!3189 = !{!3190, !3191, !3192}
!3190 = !DILocalVariable(name: "category", arg: 1, scope: !3185, file: !3186, line: 38, type: !25)
!3191 = !DILocalVariable(name: "hard", scope: !3185, file: !3186, line: 40, type: !17)
!3192 = !DILocalVariable(name: "p", scope: !3185, file: !3186, line: 41, type: !6)
!3193 = !DILocation(line: 38, column: 18, scope: !3185)
!3194 = !DILocation(line: 40, column: 8, scope: !3185)
!3195 = !DILocation(line: 41, column: 19, scope: !3185)
!3196 = !DILocation(line: 41, column: 15, scope: !3185)
!3197 = !DILocation(line: 43, column: 7, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3185, file: !3186, line: 43, column: 7)
!3199 = !DILocation(line: 43, column: 7, scope: !3185)
!3200 = !DILocation(line: 47, column: 15, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !3186, line: 47, column: 15)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3186, line: 46, column: 9)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !3186, line: 45, column: 11)
!3204 = distinct !DILexicalBlock(scope: !3198, file: !3186, line: 44, column: 5)
!3205 = !DILocation(line: 47, column: 31, scope: !3201)
!3206 = !DILocation(line: 47, column: 36, scope: !3201)
!3207 = !DILocation(line: 47, column: 39, scope: !3201)
!3208 = !DILocation(line: 47, column: 59, scope: !3201)
!3209 = !DILocation(line: 47, column: 15, scope: !3202)
!3210 = !DILocation(line: 48, column: 13, scope: !3201)
!3211 = !DILocation(line: 71, column: 3, scope: !3185)
!3212 = distinct !DISubprogram(name: "locale_charset", scope: !478, file: !478, line: 393, type: !3213, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!6}
!3215 = !{!3216, !3217}
!3216 = !DILocalVariable(name: "codeset", scope: !3212, file: !478, line: 395, type: !6)
!3217 = !DILocalVariable(name: "aliases", scope: !3212, file: !478, line: 396, type: !6)
!3218 = !DILocalVariable(name: "buf1", scope: !3219, file: !478, line: 196, type: !3286)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !478, line: 194, column: 21)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !478, line: 193, column: 19)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !478, line: 193, column: 19)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !478, line: 188, column: 17)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !478, line: 181, column: 19)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !478, line: 177, column: 13)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !478, line: 173, column: 15)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !478, line: 161, column: 9)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !478, line: 157, column: 11)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !478, line: 130, column: 5)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !478, line: 129, column: 7)
!3230 = distinct !DISubprogram(name: "get_charset_aliases", scope: !478, file: !478, line: 124, type: !3213, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3231)
!3231 = !{!3232, !3233, !3234, !3235, !3236, !3238, !3239, !3240, !3241, !3282, !3283, !3284, !3218, !3285, !3289, !3290, !3291}
!3232 = !DILocalVariable(name: "cp", scope: !3230, file: !478, line: 126, type: !6)
!3233 = !DILocalVariable(name: "dir", scope: !3228, file: !478, line: 132, type: !6)
!3234 = !DILocalVariable(name: "base", scope: !3228, file: !478, line: 133, type: !6)
!3235 = !DILocalVariable(name: "file_name", scope: !3228, file: !478, line: 134, type: !32)
!3236 = !DILocalVariable(name: "dir_len", scope: !3237, file: !478, line: 144, type: !76)
!3237 = distinct !DILexicalBlock(scope: !3228, file: !478, line: 143, column: 7)
!3238 = !DILocalVariable(name: "base_len", scope: !3237, file: !478, line: 145, type: !76)
!3239 = !DILocalVariable(name: "add_slash", scope: !3237, file: !478, line: 146, type: !25)
!3240 = !DILocalVariable(name: "fd", scope: !3226, file: !478, line: 162, type: !25)
!3241 = !DILocalVariable(name: "fp", scope: !3224, file: !478, line: 178, type: !3242)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2591, line: 7, baseType: !3244)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2593, line: 241, size: 1728, elements: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3244, file: !2593, line: 242, baseType: !25, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3244, file: !2593, line: 247, baseType: !32, size: 64, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3244, file: !2593, line: 248, baseType: !32, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3244, file: !2593, line: 249, baseType: !32, size: 64, offset: 192)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3244, file: !2593, line: 250, baseType: !32, size: 64, offset: 256)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3244, file: !2593, line: 251, baseType: !32, size: 64, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3244, file: !2593, line: 252, baseType: !32, size: 64, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3244, file: !2593, line: 253, baseType: !32, size: 64, offset: 448)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3244, file: !2593, line: 254, baseType: !32, size: 64, offset: 512)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3244, file: !2593, line: 256, baseType: !32, size: 64, offset: 576)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3244, file: !2593, line: 257, baseType: !32, size: 64, offset: 640)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3244, file: !2593, line: 258, baseType: !32, size: 64, offset: 704)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3244, file: !2593, line: 260, baseType: !3259, size: 64, offset: 768)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2593, line: 156, size: 192, elements: !3261)
!3261 = !{!3262, !3263, !3265}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3260, file: !2593, line: 157, baseType: !3259, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3260, file: !2593, line: 158, baseType: !3264, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3260, file: !2593, line: 162, baseType: !25, size: 32, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3244, file: !2593, line: 262, baseType: !3264, size: 64, offset: 832)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3244, file: !2593, line: 264, baseType: !25, size: 32, offset: 896)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3244, file: !2593, line: 268, baseType: !25, size: 32, offset: 928)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3244, file: !2593, line: 270, baseType: !2619, size: 64, offset: 960)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3244, file: !2593, line: 274, baseType: !75, size: 16, offset: 1024)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3244, file: !2593, line: 275, baseType: !2624, size: 8, offset: 1040)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3244, file: !2593, line: 276, baseType: !2626, size: 8, offset: 1048)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3244, file: !2593, line: 280, baseType: !2630, size: 64, offset: 1088)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3244, file: !2593, line: 289, baseType: !2633, size: 64, offset: 1152)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3244, file: !2593, line: 297, baseType: !31, size: 64, offset: 1216)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3244, file: !2593, line: 298, baseType: !31, size: 64, offset: 1280)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3244, file: !2593, line: 299, baseType: !31, size: 64, offset: 1344)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3244, file: !2593, line: 300, baseType: !31, size: 64, offset: 1408)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3244, file: !2593, line: 302, baseType: !76, size: 64, offset: 1472)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3244, file: !2593, line: 303, baseType: !25, size: 32, offset: 1536)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3244, file: !2593, line: 305, baseType: !2641, size: 160, offset: 1568)
!3282 = !DILocalVariable(name: "res_ptr", scope: !3222, file: !478, line: 190, type: !32)
!3283 = !DILocalVariable(name: "res_size", scope: !3222, file: !478, line: 191, type: !76)
!3284 = !DILocalVariable(name: "c", scope: !3219, file: !478, line: 195, type: !25)
!3285 = !DILocalVariable(name: "buf2", scope: !3219, file: !478, line: 197, type: !3286)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 408, elements: !3287)
!3287 = !{!3288}
!3288 = !DISubrange(count: 51)
!3289 = !DILocalVariable(name: "l1", scope: !3219, file: !478, line: 198, type: !76)
!3290 = !DILocalVariable(name: "l2", scope: !3219, file: !478, line: 198, type: !76)
!3291 = !DILocalVariable(name: "old_res_ptr", scope: !3219, file: !478, line: 199, type: !32)
!3292 = !DILocation(line: 196, column: 28, scope: !3219, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 589, column: 18, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3212, file: !478, line: 589, column: 3)
!3295 = !DILocation(line: 197, column: 28, scope: !3219, inlinedAt: !3293)
!3296 = !DILocation(line: 403, column: 13, scope: !3212)
!3297 = !DILocation(line: 395, column: 15, scope: !3212)
!3298 = !DILocation(line: 584, column: 15, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3212, file: !478, line: 584, column: 7)
!3300 = !DILocation(line: 584, column: 7, scope: !3212)
!3301 = !DILocation(line: 128, column: 8, scope: !3230, inlinedAt: !3293)
!3302 = !DILocation(line: 126, column: 15, scope: !3230, inlinedAt: !3293)
!3303 = !DILocation(line: 129, column: 10, scope: !3229, inlinedAt: !3293)
!3304 = !DILocation(line: 129, column: 7, scope: !3230, inlinedAt: !3293)
!3305 = !DILocation(line: 138, column: 13, scope: !3228, inlinedAt: !3293)
!3306 = !DILocation(line: 132, column: 19, scope: !3228, inlinedAt: !3293)
!3307 = !DILocation(line: 139, column: 15, scope: !3308, inlinedAt: !3293)
!3308 = distinct !DILexicalBlock(scope: !3228, file: !478, line: 139, column: 11)
!3309 = !DILocation(line: 139, column: 23, scope: !3308, inlinedAt: !3293)
!3310 = !DILocation(line: 139, column: 26, scope: !3308, inlinedAt: !3293)
!3311 = !DILocation(line: 139, column: 33, scope: !3308, inlinedAt: !3293)
!3312 = !DILocation(line: 139, column: 11, scope: !3228, inlinedAt: !3293)
!3313 = !DILocation(line: 140, column: 9, scope: !3308, inlinedAt: !3293)
!3314 = !DILocation(line: 144, column: 26, scope: !3237, inlinedAt: !3293)
!3315 = !DILocation(line: 144, column: 16, scope: !3237, inlinedAt: !3293)
!3316 = !DILocation(line: 145, column: 16, scope: !3237, inlinedAt: !3293)
!3317 = !DILocation(line: 146, column: 34, scope: !3237, inlinedAt: !3293)
!3318 = !DILocation(line: 146, column: 38, scope: !3237, inlinedAt: !3293)
!3319 = !DILocation(line: 146, column: 42, scope: !3237, inlinedAt: !3293)
!3320 = !DILocation(line: 147, column: 48, scope: !3237, inlinedAt: !3293)
!3321 = !DILocation(line: 147, column: 46, scope: !3237, inlinedAt: !3293)
!3322 = !DILocation(line: 147, column: 69, scope: !3237, inlinedAt: !3293)
!3323 = !DILocation(line: 147, column: 30, scope: !3237, inlinedAt: !3293)
!3324 = !DILocation(line: 134, column: 13, scope: !3228, inlinedAt: !3293)
!3325 = !DILocation(line: 148, column: 13, scope: !3237, inlinedAt: !3293)
!3326 = !DILocation(line: 150, column: 13, scope: !3327, inlinedAt: !3293)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !478, line: 149, column: 11)
!3328 = distinct !DILexicalBlock(scope: !3237, file: !478, line: 148, column: 13)
!3329 = !DILocation(line: 151, column: 17, scope: !3327, inlinedAt: !3293)
!3330 = !DILocation(line: 152, column: 34, scope: !3331, inlinedAt: !3293)
!3331 = distinct !DILexicalBlock(scope: !3327, file: !478, line: 151, column: 17)
!3332 = !DILocation(line: 153, column: 41, scope: !3327, inlinedAt: !3293)
!3333 = !DILocation(line: 153, column: 13, scope: !3327, inlinedAt: !3293)
!3334 = !DILocation(line: 157, column: 11, scope: !3228, inlinedAt: !3293)
!3335 = !DILocation(line: 171, column: 16, scope: !3226, inlinedAt: !3293)
!3336 = !DILocation(line: 162, column: 15, scope: !3226, inlinedAt: !3293)
!3337 = !DILocation(line: 173, column: 18, scope: !3225, inlinedAt: !3293)
!3338 = !DILocation(line: 173, column: 15, scope: !3226, inlinedAt: !3293)
!3339 = !DILocation(line: 180, column: 20, scope: !3224, inlinedAt: !3293)
!3340 = !DILocation(line: 178, column: 21, scope: !3224, inlinedAt: !3293)
!3341 = !DILocation(line: 181, column: 22, scope: !3223, inlinedAt: !3293)
!3342 = !DILocation(line: 181, column: 19, scope: !3224, inlinedAt: !3293)
!3343 = !DILocation(line: 184, column: 19, scope: !3344, inlinedAt: !3293)
!3344 = distinct !DILexicalBlock(scope: !3223, file: !478, line: 182, column: 17)
!3345 = !DILocation(line: 186, column: 17, scope: !3344, inlinedAt: !3293)
!3346 = !DILocation(line: 190, column: 25, scope: !3222, inlinedAt: !3293)
!3347 = !DILocation(line: 191, column: 26, scope: !3222, inlinedAt: !3293)
!3348 = !DILocation(line: 193, column: 19, scope: !3222, inlinedAt: !3293)
!3349 = !DILocation(line: 196, column: 23, scope: !3219, inlinedAt: !3293)
!3350 = !DILocation(line: 197, column: 23, scope: !3219, inlinedAt: !3293)
!3351 = !DILocalVariable(name: "__fp", arg: 1, scope: !3352, file: !785, line: 63, type: !3242)
!3352 = distinct !DISubprogram(name: "getc_unlocked", scope: !785, file: !785, line: 63, type: !3353, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!25, !3242}
!3355 = !{!3351}
!3356 = !DILocation(line: 63, column: 22, scope: !3352, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 201, column: 27, scope: !3219, inlinedAt: !3293)
!3358 = !DILocation(line: 65, column: 10, scope: !3352, inlinedAt: !3357)
!3359 = !{!793, !569, i64 8}
!3360 = !{!793, !569, i64 16}
!3361 = !DILocation(line: 195, column: 27, scope: !3219, inlinedAt: !3293)
!3362 = !DILocation(line: 202, column: 27, scope: !3219, inlinedAt: !3293)
!3363 = distinct !{!3363, !3364, !3367}
!3364 = !DILocation(line: 209, column: 27, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !478, line: 207, column: 25)
!3366 = distinct !DILexicalBlock(scope: !3219, file: !478, line: 206, column: 27)
!3367 = !DILocation(line: 211, column: 58, scope: !3365)
!3368 = !DILocation(line: 65, column: 10, scope: !3352, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 210, column: 33, scope: !3365, inlinedAt: !3293)
!3370 = !DILocation(line: 63, column: 22, scope: !3352, inlinedAt: !3369)
!3371 = !DILocation(line: 210, column: 29, scope: !3365, inlinedAt: !3293)
!3372 = distinct !{!3372, !3373, !3374}
!3373 = !DILocation(line: 193, column: 19, scope: !3221)
!3374 = !DILocation(line: 241, column: 21, scope: !3221)
!3375 = !DILocation(line: 216, column: 23, scope: !3219, inlinedAt: !3293)
!3376 = !DILocation(line: 217, column: 27, scope: !3377, inlinedAt: !3293)
!3377 = distinct !DILexicalBlock(scope: !3219, file: !478, line: 217, column: 27)
!3378 = !DILocation(line: 217, column: 64, scope: !3377, inlinedAt: !3293)
!3379 = !DILocation(line: 217, column: 27, scope: !3219, inlinedAt: !3293)
!3380 = !DILocation(line: 219, column: 28, scope: !3219, inlinedAt: !3293)
!3381 = !DILocation(line: 198, column: 30, scope: !3219, inlinedAt: !3293)
!3382 = !DILocation(line: 220, column: 28, scope: !3219, inlinedAt: !3293)
!3383 = !DILocation(line: 198, column: 34, scope: !3219, inlinedAt: !3293)
!3384 = !DILocation(line: 199, column: 29, scope: !3219, inlinedAt: !3293)
!3385 = !DILocation(line: 222, column: 36, scope: !3386, inlinedAt: !3293)
!3386 = distinct !DILexicalBlock(scope: !3219, file: !478, line: 222, column: 27)
!3387 = !DILocation(line: 222, column: 27, scope: !3219, inlinedAt: !3293)
!3388 = !DILocation(line: 225, column: 63, scope: !3389, inlinedAt: !3293)
!3389 = distinct !DILexicalBlock(scope: !3386, file: !478, line: 223, column: 25)
!3390 = !DILocation(line: 225, column: 46, scope: !3389, inlinedAt: !3293)
!3391 = !DILocation(line: 226, column: 25, scope: !3389, inlinedAt: !3293)
!3392 = !DILocation(line: 229, column: 36, scope: !3393, inlinedAt: !3293)
!3393 = distinct !DILexicalBlock(scope: !3386, file: !478, line: 228, column: 25)
!3394 = !DILocation(line: 230, column: 73, scope: !3393, inlinedAt: !3293)
!3395 = !DILocation(line: 230, column: 46, scope: !3393, inlinedAt: !3293)
!3396 = !DILocation(line: 232, column: 35, scope: !3397, inlinedAt: !3293)
!3397 = distinct !DILexicalBlock(scope: !3219, file: !478, line: 232, column: 27)
!3398 = !DILocation(line: 232, column: 27, scope: !3219, inlinedAt: !3293)
!3399 = !DILocation(line: 236, column: 27, scope: !3400, inlinedAt: !3293)
!3400 = distinct !DILexicalBlock(scope: !3397, file: !478, line: 233, column: 25)
!3401 = !DILocation(line: 237, column: 27, scope: !3400, inlinedAt: !3293)
!3402 = !DILocation(line: 241, column: 21, scope: !3220, inlinedAt: !3293)
!3403 = !DILocation(line: 239, column: 39, scope: !3219, inlinedAt: !3293)
!3404 = !DILocation(line: 239, column: 50, scope: !3219, inlinedAt: !3293)
!3405 = !DILocation(line: 239, column: 61, scope: !3219, inlinedAt: !3293)
!3406 = !DILocalVariable(name: "__dest", arg: 1, scope: !3407, file: !3408, line: 88, type: !3411)
!3407 = distinct !DISubprogram(name: "strcpy", scope: !3408, file: !3408, line: 88, type: !3409, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3413)
!3408 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!32, !3411, !3412}
!3411 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!3412 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3413 = !{!3406, !3414}
!3414 = !DILocalVariable(name: "__src", arg: 2, scope: !3407, file: !3408, line: 88, type: !3412)
!3415 = !DILocation(line: 88, column: 1, scope: !3407, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 239, column: 23, scope: !3219, inlinedAt: !3293)
!3417 = !DILocation(line: 90, column: 49, scope: !3407, inlinedAt: !3416)
!3418 = !DILocation(line: 90, column: 10, scope: !3407, inlinedAt: !3416)
!3419 = !DILocation(line: 88, column: 1, scope: !3407, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 240, column: 23, scope: !3219, inlinedAt: !3293)
!3421 = !DILocation(line: 90, column: 49, scope: !3407, inlinedAt: !3420)
!3422 = !DILocation(line: 90, column: 10, scope: !3407, inlinedAt: !3420)
!3423 = !DILocation(line: 193, column: 19, scope: !3220, inlinedAt: !3293)
!3424 = !DILocation(line: 242, column: 19, scope: !3222, inlinedAt: !3293)
!3425 = !DILocation(line: 243, column: 32, scope: !3426, inlinedAt: !3293)
!3426 = distinct !DILexicalBlock(scope: !3222, file: !478, line: 243, column: 23)
!3427 = !DILocation(line: 243, column: 23, scope: !3222, inlinedAt: !3293)
!3428 = !DILocation(line: 247, column: 33, scope: !3429, inlinedAt: !3293)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !478, line: 246, column: 21)
!3430 = !DILocation(line: 247, column: 45, scope: !3429, inlinedAt: !3293)
!3431 = !DILocation(line: 253, column: 11, scope: !3226, inlinedAt: !3293)
!3432 = !DILocation(line: 377, column: 23, scope: !3228, inlinedAt: !3293)
!3433 = !DILocation(line: 378, column: 5, scope: !3228, inlinedAt: !3293)
!3434 = !DILocation(line: 396, column: 15, scope: !3212)
!3435 = !DILocation(line: 590, column: 8, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3294, file: !478, line: 589, column: 3)
!3437 = !DILocation(line: 590, column: 17, scope: !3436)
!3438 = !DILocation(line: 589, column: 3, scope: !3294)
!3439 = !DILocation(line: 592, column: 9, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3436, file: !478, line: 592, column: 9)
!3441 = !DILocation(line: 592, column: 35, scope: !3440)
!3442 = !DILocation(line: 593, column: 9, scope: !3440)
!3443 = !DILocation(line: 593, column: 24, scope: !3440)
!3444 = !DILocation(line: 593, column: 31, scope: !3440)
!3445 = !DILocation(line: 593, column: 34, scope: !3440)
!3446 = !DILocation(line: 593, column: 45, scope: !3440)
!3447 = !DILocation(line: 592, column: 9, scope: !3436)
!3448 = !DILocation(line: 595, column: 29, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3440, file: !478, line: 594, column: 7)
!3450 = !DILocation(line: 595, column: 27, scope: !3449)
!3451 = !DILocation(line: 595, column: 46, scope: !3449)
!3452 = !DILocation(line: 596, column: 9, scope: !3449)
!3453 = !DILocation(line: 591, column: 19, scope: !3436)
!3454 = !DILocation(line: 591, column: 36, scope: !3436)
!3455 = !DILocation(line: 591, column: 16, scope: !3436)
!3456 = !DILocation(line: 591, column: 52, scope: !3436)
!3457 = !DILocation(line: 591, column: 69, scope: !3436)
!3458 = !DILocation(line: 591, column: 49, scope: !3436)
!3459 = distinct !{!3459, !3438, !3460}
!3460 = !DILocation(line: 597, column: 7, scope: !3294)
!3461 = !DILocation(line: 602, column: 7, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3212, file: !478, line: 602, column: 7)
!3463 = !DILocation(line: 602, column: 18, scope: !3462)
!3464 = !DILocation(line: 602, column: 7, scope: !3212)
!3465 = !DILocation(line: 612, column: 3, scope: !3212)
!3466 = distinct !DISubprogram(name: "rpl_fclose", scope: !3467, file: !3467, line: 56, type: !3468, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !3510)
!3467 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!25, !3470}
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2591, line: 7, baseType: !3472)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2593, line: 241, size: 1728, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3472, file: !2593, line: 242, baseType: !25, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3472, file: !2593, line: 247, baseType: !32, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3472, file: !2593, line: 248, baseType: !32, size: 64, offset: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3472, file: !2593, line: 249, baseType: !32, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3472, file: !2593, line: 250, baseType: !32, size: 64, offset: 256)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3472, file: !2593, line: 251, baseType: !32, size: 64, offset: 320)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3472, file: !2593, line: 252, baseType: !32, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3472, file: !2593, line: 253, baseType: !32, size: 64, offset: 448)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3472, file: !2593, line: 254, baseType: !32, size: 64, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3472, file: !2593, line: 256, baseType: !32, size: 64, offset: 576)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3472, file: !2593, line: 257, baseType: !32, size: 64, offset: 640)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3472, file: !2593, line: 258, baseType: !32, size: 64, offset: 704)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3472, file: !2593, line: 260, baseType: !3487, size: 64, offset: 768)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2593, line: 156, size: 192, elements: !3489)
!3489 = !{!3490, !3491, !3493}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3488, file: !2593, line: 157, baseType: !3487, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3488, file: !2593, line: 158, baseType: !3492, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3488, file: !2593, line: 162, baseType: !25, size: 32, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3472, file: !2593, line: 262, baseType: !3492, size: 64, offset: 832)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3472, file: !2593, line: 264, baseType: !25, size: 32, offset: 896)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3472, file: !2593, line: 268, baseType: !25, size: 32, offset: 928)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3472, file: !2593, line: 270, baseType: !2619, size: 64, offset: 960)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3472, file: !2593, line: 274, baseType: !75, size: 16, offset: 1024)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3472, file: !2593, line: 275, baseType: !2624, size: 8, offset: 1040)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3472, file: !2593, line: 276, baseType: !2626, size: 8, offset: 1048)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3472, file: !2593, line: 280, baseType: !2630, size: 64, offset: 1088)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3472, file: !2593, line: 289, baseType: !2633, size: 64, offset: 1152)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3472, file: !2593, line: 297, baseType: !31, size: 64, offset: 1216)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3472, file: !2593, line: 298, baseType: !31, size: 64, offset: 1280)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3472, file: !2593, line: 299, baseType: !31, size: 64, offset: 1344)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3472, file: !2593, line: 300, baseType: !31, size: 64, offset: 1408)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3472, file: !2593, line: 302, baseType: !76, size: 64, offset: 1472)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3472, file: !2593, line: 303, baseType: !25, size: 32, offset: 1536)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3472, file: !2593, line: 305, baseType: !2641, size: 160, offset: 1568)
!3510 = !{!3511, !3512, !3513, !3514}
!3511 = !DILocalVariable(name: "fp", arg: 1, scope: !3466, file: !3467, line: 56, type: !3470)
!3512 = !DILocalVariable(name: "saved_errno", scope: !3466, file: !3467, line: 58, type: !25)
!3513 = !DILocalVariable(name: "fd", scope: !3466, file: !3467, line: 59, type: !25)
!3514 = !DILocalVariable(name: "result", scope: !3466, file: !3467, line: 60, type: !25)
!3515 = !DILocation(line: 56, column: 19, scope: !3466)
!3516 = !DILocation(line: 58, column: 7, scope: !3466)
!3517 = !DILocation(line: 60, column: 7, scope: !3466)
!3518 = !DILocation(line: 63, column: 8, scope: !3466)
!3519 = !DILocation(line: 59, column: 7, scope: !3466)
!3520 = !DILocation(line: 64, column: 10, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3466, file: !3467, line: 64, column: 7)
!3522 = !DILocation(line: 64, column: 7, scope: !3466)
!3523 = !DILocation(line: 65, column: 12, scope: !3521)
!3524 = !DILocation(line: 65, column: 5, scope: !3521)
!3525 = !DILocation(line: 70, column: 9, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3466, file: !3467, line: 70, column: 7)
!3527 = !DILocation(line: 70, column: 23, scope: !3526)
!3528 = !DILocation(line: 70, column: 33, scope: !3526)
!3529 = !DILocation(line: 70, column: 26, scope: !3526)
!3530 = !DILocation(line: 70, column: 59, scope: !3526)
!3531 = !DILocation(line: 71, column: 7, scope: !3526)
!3532 = !DILocation(line: 71, column: 10, scope: !3526)
!3533 = !DILocation(line: 70, column: 7, scope: !3466)
!3534 = !DILocation(line: 98, column: 12, scope: !3466)
!3535 = !DILocation(line: 103, column: 7, scope: !3466)
!3536 = !DILocation(line: 72, column: 19, scope: !3526)
!3537 = !DILocation(line: 103, column: 19, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3466, file: !3467, line: 103, column: 7)
!3539 = !DILocation(line: 105, column: 13, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3538, file: !3467, line: 104, column: 5)
!3541 = !DILocation(line: 107, column: 5, scope: !3540)
!3542 = !DILocation(line: 110, column: 1, scope: !3466)
!3543 = distinct !DISubprogram(name: "rpl_fflush", scope: !3544, file: !3544, line: 127, type: !3545, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3587)
!3544 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!25, !3547}
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2591, line: 7, baseType: !3549)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2593, line: 241, size: 1728, elements: !3550)
!3550 = !{!3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3549, file: !2593, line: 242, baseType: !25, size: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3549, file: !2593, line: 247, baseType: !32, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3549, file: !2593, line: 248, baseType: !32, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3549, file: !2593, line: 249, baseType: !32, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3549, file: !2593, line: 250, baseType: !32, size: 64, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3549, file: !2593, line: 251, baseType: !32, size: 64, offset: 320)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3549, file: !2593, line: 252, baseType: !32, size: 64, offset: 384)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3549, file: !2593, line: 253, baseType: !32, size: 64, offset: 448)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3549, file: !2593, line: 254, baseType: !32, size: 64, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3549, file: !2593, line: 256, baseType: !32, size: 64, offset: 576)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3549, file: !2593, line: 257, baseType: !32, size: 64, offset: 640)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3549, file: !2593, line: 258, baseType: !32, size: 64, offset: 704)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3549, file: !2593, line: 260, baseType: !3564, size: 64, offset: 768)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2593, line: 156, size: 192, elements: !3566)
!3566 = !{!3567, !3568, !3570}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3565, file: !2593, line: 157, baseType: !3564, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3565, file: !2593, line: 158, baseType: !3569, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3565, file: !2593, line: 162, baseType: !25, size: 32, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3549, file: !2593, line: 262, baseType: !3569, size: 64, offset: 832)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3549, file: !2593, line: 264, baseType: !25, size: 32, offset: 896)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3549, file: !2593, line: 268, baseType: !25, size: 32, offset: 928)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3549, file: !2593, line: 270, baseType: !2619, size: 64, offset: 960)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3549, file: !2593, line: 274, baseType: !75, size: 16, offset: 1024)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3549, file: !2593, line: 275, baseType: !2624, size: 8, offset: 1040)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3549, file: !2593, line: 276, baseType: !2626, size: 8, offset: 1048)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3549, file: !2593, line: 280, baseType: !2630, size: 64, offset: 1088)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3549, file: !2593, line: 289, baseType: !2633, size: 64, offset: 1152)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3549, file: !2593, line: 297, baseType: !31, size: 64, offset: 1216)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3549, file: !2593, line: 298, baseType: !31, size: 64, offset: 1280)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3549, file: !2593, line: 299, baseType: !31, size: 64, offset: 1344)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3549, file: !2593, line: 300, baseType: !31, size: 64, offset: 1408)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3549, file: !2593, line: 302, baseType: !76, size: 64, offset: 1472)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3549, file: !2593, line: 303, baseType: !25, size: 32, offset: 1536)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3549, file: !2593, line: 305, baseType: !2641, size: 160, offset: 1568)
!3587 = !{!3588}
!3588 = !DILocalVariable(name: "stream", arg: 1, scope: !3543, file: !3544, line: 127, type: !3547)
!3589 = !DILocation(line: 127, column: 19, scope: !3543)
!3590 = !DILocation(line: 148, column: 14, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3543, file: !3544, line: 148, column: 7)
!3592 = !DILocation(line: 148, column: 22, scope: !3591)
!3593 = !DILocation(line: 148, column: 27, scope: !3591)
!3594 = !DILocation(line: 148, column: 7, scope: !3543)
!3595 = !DILocation(line: 149, column: 12, scope: !3591)
!3596 = !DILocation(line: 149, column: 5, scope: !3591)
!3597 = !DILocalVariable(name: "fp", arg: 1, scope: !3598, file: !3544, line: 40, type: !3547)
!3598 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3544, file: !3544, line: 40, type: !3599, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !546, variables: !3601)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !3547}
!3601 = !{!3597}
!3602 = !DILocation(line: 40, column: 48, scope: !3598, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 153, column: 3, scope: !3543)
!3604 = !DILocation(line: 42, column: 11, scope: !3605, inlinedAt: !3603)
!3605 = distinct !DILexicalBlock(scope: !3598, file: !3544, line: 42, column: 7)
!3606 = !DILocation(line: 42, column: 18, scope: !3605, inlinedAt: !3603)
!3607 = !DILocation(line: 42, column: 7, scope: !3598, inlinedAt: !3603)
!3608 = !DILocation(line: 44, column: 5, scope: !3605, inlinedAt: !3603)
!3609 = !DILocation(line: 155, column: 10, scope: !3543)
!3610 = !DILocation(line: 155, column: 3, scope: !3543)
!3611 = !DILocation(line: 229, column: 1, scope: !3543)
!3612 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3613, file: !3613, line: 28, type: !3614, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !548, variables: !3657)
!3613 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!25, !3616, !3656, !25}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2591, line: 7, baseType: !3618)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2593, line: 241, size: 1728, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3618, file: !2593, line: 242, baseType: !25, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3618, file: !2593, line: 247, baseType: !32, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3618, file: !2593, line: 248, baseType: !32, size: 64, offset: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3618, file: !2593, line: 249, baseType: !32, size: 64, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3618, file: !2593, line: 250, baseType: !32, size: 64, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3618, file: !2593, line: 251, baseType: !32, size: 64, offset: 320)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3618, file: !2593, line: 252, baseType: !32, size: 64, offset: 384)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3618, file: !2593, line: 253, baseType: !32, size: 64, offset: 448)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3618, file: !2593, line: 254, baseType: !32, size: 64, offset: 512)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3618, file: !2593, line: 256, baseType: !32, size: 64, offset: 576)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3618, file: !2593, line: 257, baseType: !32, size: 64, offset: 640)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3618, file: !2593, line: 258, baseType: !32, size: 64, offset: 704)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3618, file: !2593, line: 260, baseType: !3633, size: 64, offset: 768)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2593, line: 156, size: 192, elements: !3635)
!3635 = !{!3636, !3637, !3639}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3634, file: !2593, line: 157, baseType: !3633, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3634, file: !2593, line: 158, baseType: !3638, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3634, file: !2593, line: 162, baseType: !25, size: 32, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3618, file: !2593, line: 262, baseType: !3638, size: 64, offset: 832)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3618, file: !2593, line: 264, baseType: !25, size: 32, offset: 896)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3618, file: !2593, line: 268, baseType: !25, size: 32, offset: 928)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3618, file: !2593, line: 270, baseType: !2619, size: 64, offset: 960)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3618, file: !2593, line: 274, baseType: !75, size: 16, offset: 1024)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3618, file: !2593, line: 275, baseType: !2624, size: 8, offset: 1040)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3618, file: !2593, line: 276, baseType: !2626, size: 8, offset: 1048)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3618, file: !2593, line: 280, baseType: !2630, size: 64, offset: 1088)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3618, file: !2593, line: 289, baseType: !2633, size: 64, offset: 1152)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3618, file: !2593, line: 297, baseType: !31, size: 64, offset: 1216)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3618, file: !2593, line: 298, baseType: !31, size: 64, offset: 1280)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3618, file: !2593, line: 299, baseType: !31, size: 64, offset: 1344)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3618, file: !2593, line: 300, baseType: !31, size: 64, offset: 1408)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3618, file: !2593, line: 302, baseType: !76, size: 64, offset: 1472)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3618, file: !2593, line: 303, baseType: !25, size: 32, offset: 1536)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3618, file: !2593, line: 305, baseType: !2641, size: 160, offset: 1568)
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2761, line: 57, baseType: !2619)
!3657 = !{!3658, !3659, !3660, !3661}
!3658 = !DILocalVariable(name: "fp", arg: 1, scope: !3612, file: !3613, line: 28, type: !3616)
!3659 = !DILocalVariable(name: "offset", arg: 2, scope: !3612, file: !3613, line: 28, type: !3656)
!3660 = !DILocalVariable(name: "whence", arg: 3, scope: !3612, file: !3613, line: 28, type: !25)
!3661 = !DILocalVariable(name: "pos", scope: !3662, file: !3613, line: 116, type: !3656)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !3613, line: 112, column: 5)
!3663 = distinct !DILexicalBlock(scope: !3612, file: !3613, line: 51, column: 7)
!3664 = !DILocation(line: 28, column: 15, scope: !3612)
!3665 = !DILocation(line: 28, column: 25, scope: !3612)
!3666 = !DILocation(line: 28, column: 37, scope: !3612)
!3667 = !DILocation(line: 51, column: 11, scope: !3663)
!3668 = !DILocation(line: 51, column: 31, scope: !3663)
!3669 = !DILocation(line: 51, column: 24, scope: !3663)
!3670 = !DILocation(line: 52, column: 7, scope: !3663)
!3671 = !DILocation(line: 52, column: 14, scope: !3663)
!3672 = !DILocation(line: 52, column: 35, scope: !3663)
!3673 = !{!793, !569, i64 32}
!3674 = !DILocation(line: 52, column: 28, scope: !3663)
!3675 = !DILocation(line: 53, column: 7, scope: !3663)
!3676 = !DILocation(line: 53, column: 14, scope: !3663)
!3677 = !{!793, !569, i64 72}
!3678 = !DILocation(line: 53, column: 28, scope: !3663)
!3679 = !DILocation(line: 51, column: 7, scope: !3612)
!3680 = !DILocation(line: 116, column: 26, scope: !3662)
!3681 = !DILocation(line: 116, column: 19, scope: !3662)
!3682 = !DILocation(line: 116, column: 13, scope: !3662)
!3683 = !DILocation(line: 117, column: 15, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3662, file: !3613, line: 117, column: 11)
!3685 = !DILocation(line: 117, column: 11, scope: !3662)
!3686 = !DILocation(line: 127, column: 11, scope: !3662)
!3687 = !DILocation(line: 127, column: 18, scope: !3662)
!3688 = !DILocation(line: 128, column: 11, scope: !3662)
!3689 = !DILocation(line: 128, column: 19, scope: !3662)
!3690 = !{!793, !795, i64 144}
!3691 = !DILocation(line: 159, column: 7, scope: !3662)
!3692 = !DILocation(line: 161, column: 10, scope: !3612)
!3693 = !DILocation(line: 161, column: 3, scope: !3612)
!3694 = !DILocation(line: 162, column: 1, scope: !3612)
