; ModuleID = 'coreutils-8.27/src/basename.bc'
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
@.str.1 = private unnamed_addr constant [53 x i8] c"Usage: %s NAME [SUFFIX]\0A  or:  %s OPTION... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"Print NAME with any leading directory components removed.\0AIf specified, also remove a trailing SUFFIX.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [202 x i8] c"  -a, --multiple       support multiple arguments and treat each as a NAME\0A  -s, --suffix=SUFFIX  remove a trailing SUFFIX; implies -a\0A  -z, --zero           end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AExamples:\0A  %s /usr/bin/sort          -> \22sort\22\0A  %s include/stdio.h .h     -> \22stdio\22\0A  %s -s .h include/stdio.h  -> \22stdio\22\0A  %s -a any/str1 any/str2   -> \22str1\22 followed by \22str2\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"basename\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"+as:z\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !46
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !51
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !56
@.str.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !60
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !67
@.str.37 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.38 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.39 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.43, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.45, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.49, i32 0, i32 0), i8* null], align 16, !dbg !74
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !119
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !126
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !139
@.str.11.50 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.51 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.52 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.53 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.54 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.55 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !146
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !153
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !141
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !155
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
@.str.16.78 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.79 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.80 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !161
@.str.1.91 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.104 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.107 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !170
@.str.3.108 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.109 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.110 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.111 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.112 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.113 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !575 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !579, metadata !580), !dbg !581
  %2 = icmp eq i32 %0, 0, !dbg !582
  br i1 %2, label %8, label %3, !dbg !584

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !585, !tbaa !587
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !585
  %6 = load i8*, i8** @program_name, align 8, !dbg !585, !tbaa !587
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !585
  br label %45, !dbg !585

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !591
  %10 = load i8*, i8** @program_name, align 8, !dbg !591, !tbaa !587
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #11, !dbg !591
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !593
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !593, !tbaa !587
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !593
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !594
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !594, !tbaa !587
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !594
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !599
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !599, !tbaa !587
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !599
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !600
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !600, !tbaa !587
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !600
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !601
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !601, !tbaa !587
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !601
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !602
  %28 = load i8*, i8** @program_name, align 8, !dbg !602, !tbaa !587
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* %28, i8* %28, i8* %28, i8* %28) #11, !dbg !602
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !21, metadata !580) #11, !dbg !603
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !21, metadata !580) #11, !dbg !603
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !605
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !605
  %32 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !606
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !29, metadata !580) #11, !dbg !607
  %33 = icmp eq i8* %32, null, !dbg !608
  br i1 %33, label %40, label %34, !dbg !610

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #14, !dbg !611
  %36 = icmp eq i32 %35, 0, !dbg !611
  br i1 %36, label %40, label %37, !dbg !612

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !613
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !613
  br label %40, !dbg !615

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !616
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !616
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !617
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #11, !dbg !617
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #15, !dbg !618
  unreachable, !dbg !618
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !619 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !624, metadata !580), !dbg !631
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !625, metadata !580), !dbg !632
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !626, metadata !580), !dbg !633
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !627, metadata !580), !dbg !634
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !628, metadata !580), !dbg !635
  %3 = load i8*, i8** %1, align 8, !dbg !636, !tbaa !587
  tail call void @set_program_name(i8* %3) #11, !dbg !637
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !638
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !639
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !640
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !641
  br label %17, !dbg !642

; <label>:8:                                      ; preds = %12
  br label %9, !dbg !643

; <label>:9:                                      ; preds = %17, %8
  %10 = phi i8 [ 1, %8 ], [ %18, %17 ]
  %11 = phi i8 [ %13, %8 ], [ %19, %17 ]
  br label %12, !dbg !643

; <label>:12:                                     ; preds = %9, %21
  %13 = phi i8 [ 1, %21 ], [ %11, %9 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !628, metadata !580), !dbg !635
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !627, metadata !580), !dbg !634
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !626, metadata !580), !dbg !633
  %14 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !643
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !629, metadata !580), !dbg !644
  switch i32 %14, label %26 [
    i32 -1, label %27
    i32 115, label %15
    i32 97, label %8
    i32 122, label %21
    i32 -130, label %22
    i32 -131, label %23
  ], !dbg !645, !llvm.loop !646

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** @optarg, align 8, !dbg !648, !tbaa !587
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !628, metadata !580), !dbg !635
  br label %17, !dbg !650, !llvm.loop !646

; <label>:17:                                     ; preds = %2, %15
  %18 = phi i8 [ 0, %2 ], [ 1, %15 ]
  %19 = phi i8 [ 0, %2 ], [ %13, %15 ]
  %20 = phi i8* [ null, %2 ], [ %16, %15 ]
  br label %9, !dbg !643

; <label>:21:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !627, metadata !580), !dbg !634
  br label %12, !dbg !651, !llvm.loop !646

; <label>:22:                                     ; preds = %12
  tail call void @usage(i32 0) #16, !dbg !652
  unreachable, !dbg !652

; <label>:23:                                     ; preds = %12
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !587
  %25 = load i8*, i8** @Version, align 8, !dbg !653, !tbaa !587
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !653
  tail call void @exit(i32 0) #15, !dbg !653
  unreachable, !dbg !653

; <label>:26:                                     ; preds = %12
  tail call void @usage(i32 1) #16, !dbg !654
  unreachable, !dbg !654

; <label>:27:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !628, metadata !580), !dbg !635
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !627, metadata !580), !dbg !634
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !626, metadata !580), !dbg !633
  %28 = load i32, i32* @optind, align 4, !dbg !655, !tbaa !657
  %29 = icmp slt i32 %28, %0, !dbg !659
  br i1 %29, label %32, label %30, !dbg !660

; <label>:30:                                     ; preds = %27
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !661
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %31) #11, !dbg !663
  tail call void @usage(i32 1) #16, !dbg !664
  unreachable, !dbg !664

; <label>:32:                                     ; preds = %27
  %33 = icmp ne i8 %10, 0, !dbg !665
  %34 = xor i1 %33, true, !dbg !667
  %35 = add nsw i32 %28, 2, !dbg !668
  %36 = icmp slt i32 %35, %0, !dbg !669
  %37 = and i1 %36, %34, !dbg !667
  br i1 %37, label %38, label %46, !dbg !667

; <label>:38:                                     ; preds = %32
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #11, !dbg !670
  %40 = load i32, i32* @optind, align 4, !dbg !672, !tbaa !657
  %41 = add nsw i32 %40, 2, !dbg !673
  %42 = sext i32 %41 to i64, !dbg !674
  %43 = getelementptr inbounds i8*, i8** %1, i64 %42, !dbg !674
  %44 = load i8*, i8** %43, align 8, !dbg !674, !tbaa !587
  %45 = tail call i8* @quote(i8* %44) #11, !dbg !675
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39, i8* %45) #11, !dbg !676
  tail call void @usage(i32 1) #16, !dbg !677
  unreachable, !dbg !677

; <label>:46:                                     ; preds = %32
  br i1 %33, label %47, label %57, !dbg !678

; <label>:47:                                     ; preds = %46
  %48 = icmp ne i8 %13, 0
  br label %49, !dbg !679

; <label>:49:                                     ; preds = %47, %49
  %50 = phi i32 [ %28, %47 ], [ %55, %49 ]
  %51 = sext i32 %50 to i64, !dbg !683
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !683
  %53 = load i8*, i8** %52, align 8, !dbg !683, !tbaa !587
  tail call fastcc void @perform_basename(i8* %53, i8* %20, i1 zeroext %48), !dbg !685
  %54 = load i32, i32* @optind, align 4, !dbg !686, !tbaa !657
  %55 = add nsw i32 %54, 1, !dbg !686
  store i32 %55, i32* @optind, align 4, !dbg !686, !tbaa !657
  %56 = icmp slt i32 %55, %0, !dbg !687
  br i1 %56, label %49, label %70, !dbg !679, !llvm.loop !688

; <label>:57:                                     ; preds = %46
  %58 = sext i32 %28 to i64, !dbg !690
  %59 = getelementptr inbounds i8*, i8** %1, i64 %58, !dbg !690
  %60 = load i8*, i8** %59, align 8, !dbg !690, !tbaa !587
  %61 = icmp eq i32 %35, %0, !dbg !691
  br i1 %61, label %62, label %67, !dbg !692

; <label>:62:                                     ; preds = %57
  %63 = add nsw i32 %28, 1, !dbg !693
  %64 = sext i32 %63 to i64, !dbg !694
  %65 = getelementptr inbounds i8*, i8** %1, i64 %64, !dbg !694
  %66 = load i8*, i8** %65, align 8, !dbg !694, !tbaa !587
  br label %67, !dbg !692

; <label>:67:                                     ; preds = %57, %62
  %68 = phi i8* [ %66, %62 ], [ null, %57 ], !dbg !692
  %69 = icmp ne i8 %13, 0, !dbg !695
  tail call fastcc void @perform_basename(i8* %60, i8* %68, i1 zeroext %69), !dbg !696
  br label %70

; <label>:70:                                     ; preds = %49, %67
  ret i32 0, !dbg !697
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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @perform_basename(i8*, i8* readonly, i1 zeroext) unnamed_addr #6 !dbg !698 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !702, metadata !580), !dbg !706
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !703, metadata !580), !dbg !707
  tail call void @llvm.dbg.value(metadata i1 %2, i64 0, metadata !704, metadata !580), !dbg !708
  %4 = tail call i8* @base_name(i8* %0) #11, !dbg !709
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !705, metadata !580), !dbg !710
  %5 = tail call zeroext i1 @strip_trailing_slashes(i8* %4) #11, !dbg !711
  %6 = icmp eq i8* %1, null, !dbg !712
  br i1 %6, label %35, label %7, !dbg !714

; <label>:7:                                      ; preds = %3
  %8 = load i8, i8* %4, align 1, !dbg !715, !tbaa !716
  %9 = icmp eq i8 %8, 47, !dbg !715
  br i1 %9, label %35, label %10, !dbg !717

; <label>:10:                                     ; preds = %7
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !718, metadata !580) #11, !dbg !726
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !723, metadata !580) #11, !dbg !728
  %11 = tail call i64 @strlen(i8* nonnull %4) #14, !dbg !729
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !730
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !724, metadata !580) #11, !dbg !731
  %13 = tail call i64 @strlen(i8* nonnull %1) #14, !dbg !732
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !724, metadata !580) #11, !dbg !731
  %14 = icmp sgt i64 %11, 0, !dbg !733
  %15 = icmp sgt i64 %13, 0, !dbg !734
  %16 = and i1 %14, %15, !dbg !735
  br i1 %16, label %17, label %31, !dbg !736

; <label>:17:                                     ; preds = %10
  %18 = getelementptr inbounds i8, i8* %1, i64 %13, !dbg !737
  br label %23, !dbg !736

; <label>:19:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !725, metadata !580) #11, !dbg !738
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !724, metadata !580) #11, !dbg !731
  %20 = icmp ugt i8* %26, %4, !dbg !733
  %21 = icmp ugt i8* %28, %1, !dbg !734
  %22 = and i1 %21, %20, !dbg !735
  br i1 %22, label %23, label %31, !dbg !736, !llvm.loop !739

; <label>:23:                                     ; preds = %19, %17
  %24 = phi i8* [ %18, %17 ], [ %28, %19 ]
  %25 = phi i8* [ %12, %17 ], [ %26, %19 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !724, metadata !580) #11, !dbg !731
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !725, metadata !580) #11, !dbg !738
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !742
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !724, metadata !580) #11, !dbg !731
  %27 = load i8, i8* %26, align 1, !dbg !744, !tbaa !716
  %28 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !745
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !725, metadata !580) #11, !dbg !738
  %29 = load i8, i8* %28, align 1, !dbg !746, !tbaa !716
  %30 = icmp eq i8 %27, %29, !dbg !747
  br i1 %30, label %19, label %35, !dbg !748

; <label>:31:                                     ; preds = %19, %10
  %32 = phi i8* [ %12, %10 ], [ %26, %19 ]
  %33 = phi i1 [ %14, %10 ], [ %20, %19 ]
  br i1 %33, label %34, label %35, !dbg !749

; <label>:34:                                     ; preds = %31
  store i8 0, i8* %32, align 1, !dbg !750, !tbaa !716
  br label %35, !dbg !752

; <label>:35:                                     ; preds = %23, %34, %31, %3, %7
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !753, !tbaa !587
  %37 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %36) #11, !dbg !753
  %38 = select i1 %2, i32 0, i32 10, !dbg !754
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !755, metadata !580) #11, !dbg !761
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !587
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !763
  %41 = load i8*, i8** %40, align 8, !dbg !763, !tbaa !764
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !763
  %43 = load i8*, i8** %42, align 8, !dbg !763, !tbaa !768
  %44 = icmp ult i8* %41, %43, !dbg !763
  br i1 %44, label %47, label %45, !dbg !763, !prof !769

; <label>:45:                                     ; preds = %35
  %46 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 %38) #11, !dbg !763
  br label %50, !dbg !763

; <label>:47:                                     ; preds = %35
  %48 = trunc i32 %38 to i8, !dbg !763
  %49 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !763
  store i8* %49, i8** %40, align 8, !dbg !763, !tbaa !764
  store i8 %48, i8* %41, align 1, !dbg !763, !tbaa !716
  br label %50, !dbg !763

; <label>:50:                                     ; preds = %45, %47
  tail call void @free(i8* %4) #11, !dbg !770
  ret void, !dbg !771
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !772 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !774, metadata !580), !dbg !775
  store i8* %0, i8** @file_name, align 8, !dbg !776, !tbaa !587
  ret void, !dbg !777
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !778 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !782, metadata !580), !dbg !783
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !784, !tbaa !785
  ret void, !dbg !787
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !788 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !793, !tbaa !587
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !794
  %3 = icmp eq i32 %2, 0, !dbg !795
  br i1 %3, label %21, label %4, !dbg !796

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !797, !tbaa !785, !range !798
  %6 = icmp eq i8 %5, 0, !dbg !797
  %7 = tail call i32* @__errno_location() #17, !dbg !799
  br i1 %6, label %11, label %8, !dbg !801

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !802, !tbaa !657
  %10 = icmp eq i32 %9, 32, !dbg !803
  br i1 %10, label %21, label %11, !dbg !804

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !805
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !790, metadata !580), !dbg !806
  %13 = load i8*, i8** @file_name, align 8, !dbg !807, !tbaa !587
  %14 = icmp eq i8* %13, null, !dbg !807
  %15 = load i32, i32* %7, align 4, !tbaa !657
  br i1 %14, label %18, label %16, !dbg !808

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !809
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.21, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !810
  br label %19, !dbg !810

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.22, i64 0, i64 0), i8* %12) #11, !dbg !811
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !812, !tbaa !657
  tail call void @_exit(i32 %20) #15, !dbg !813
  unreachable, !dbg !813

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !814, !tbaa !587
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !816
  %24 = icmp eq i32 %23, 0, !dbg !817
  br i1 %24, label %27, label %25, !dbg !818

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !819, !tbaa !657
  tail call void @_exit(i32 %26) #15, !dbg !820
  unreachable, !dbg !820

; <label>:27:                                     ; preds = %21
  ret void, !dbg !821
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @base_name(i8*) local_unnamed_addr #6 !dbg !822 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !827, metadata !580), !dbg !830
  %2 = tail call i8* @last_component(i8* %0) #14, !dbg !831
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !828, metadata !580), !dbg !832
  %3 = load i8, i8* %2, align 1, !dbg !833, !tbaa !716
  %4 = icmp eq i8 %3, 0, !dbg !833
  br i1 %4, label %5, label %8, !dbg !835

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @base_len(i8* %0) #14, !dbg !836
  %7 = tail call i8* @xstrndup(i8* %0, i64 %6) #11, !dbg !837
  br label %16, !dbg !838

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @base_len(i8* %2) #14, !dbg !839
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !829, metadata !580), !dbg !840
  %10 = getelementptr inbounds i8, i8* %2, i64 %9, !dbg !841
  %11 = load i8, i8* %10, align 1, !dbg !841, !tbaa !716
  %12 = icmp eq i8 %11, 47, !dbg !841
  %13 = zext i1 %12 to i64, !dbg !843
  %14 = add i64 %9, %13, !dbg !843
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !829, metadata !580), !dbg !840
  %15 = tail call i8* @xstrndup(i8* %2, i64 %14) #11, !dbg !844
  br label %16, !dbg !845

; <label>:16:                                     ; preds = %8, %5
  %17 = phi i8* [ %15, %8 ], [ %7, %5 ]
  ret i8* %17, !dbg !846
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #10 !dbg !847 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !850, metadata !580), !dbg !854
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !851, metadata !580), !dbg !855
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !853, metadata !580), !dbg !856
  br label %2, !dbg !857

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !851, metadata !580), !dbg !855
  %4 = load i8, i8* %3, align 1, !dbg !858, !tbaa !716
  %5 = icmp eq i8 %4, 47, !dbg !858
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !859
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !851, metadata !580), !dbg !855
  br i1 %5, label %2, label %7, !dbg !857, !llvm.loop !860

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !861

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !863
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !853, metadata !580), !dbg !856
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !852, metadata !580), !dbg !865
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !851, metadata !580), !dbg !855
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !861

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !866
  %15 = icmp eq i8 %14, 0, !dbg !866
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !851, metadata !580), !dbg !855
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !853, metadata !580), !dbg !856
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !870
  %17 = select i1 %15, i8 %12, i8 0, !dbg !870
  br label %18, !dbg !870

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !853, metadata !580), !dbg !856
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !851, metadata !580), !dbg !855
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !871
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !852, metadata !580), !dbg !865
  %22 = load i8, i8* %21, align 1, !dbg !863, !tbaa !716
  br label %8, !dbg !872, !llvm.loop !873

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !875
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #10 !dbg !876 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !880, metadata !580), !dbg !883
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !882, metadata !580), !dbg !884
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !885
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !881, metadata !580), !dbg !887
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !881, metadata !580), !dbg !887
  %3 = icmp ugt i64 %2, 1, !dbg !888
  br i1 %3, label %4, label %13, !dbg !890

; <label>:4:                                      ; preds = %1
  br label %7, !dbg !891

; <label>:5:                                      ; preds = %7
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !881, metadata !580), !dbg !887
  %6 = icmp ugt i64 %9, 1, !dbg !888
  br i1 %6, label %7, label %13, !dbg !890, !llvm.loop !892

; <label>:7:                                      ; preds = %4, %5
  %8 = phi i64 [ %9, %5 ], [ %2, %4 ]
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !881, metadata !580), !dbg !887
  %9 = add i64 %8, -1, !dbg !891
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !891
  %11 = load i8, i8* %10, align 1, !dbg !891, !tbaa !716
  %12 = icmp eq i8 %11, 47, !dbg !891
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !881, metadata !580), !dbg !887
  br i1 %12, label %5, label %13, !dbg !893

; <label>:13:                                     ; preds = %7, %5, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %5 ], [ %8, %7 ]
  ret i64 %14, !dbg !895
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @strip_trailing_slashes(i8*) local_unnamed_addr #6 !dbg !896 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !901, metadata !580), !dbg !905
  %2 = tail call i8* @last_component(i8* %0) #14, !dbg !906
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !902, metadata !580), !dbg !907
  %3 = load i8, i8* %2, align 1, !dbg !908, !tbaa !716
  %4 = icmp eq i8 %3, 0, !dbg !908
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !902, metadata !580), !dbg !907
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !910
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !902, metadata !580), !dbg !907
  %6 = tail call i64 @base_len(i8* %5) #14, !dbg !911
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !912
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !903, metadata !580), !dbg !913
  %8 = load i8, i8* %7, align 1, !dbg !914, !tbaa !716
  %9 = icmp ne i8 %8, 0, !dbg !915
  store i8 0, i8* %7, align 1, !dbg !916, !tbaa !716
  ret i1 %9, !dbg !917
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !918 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !920, metadata !580), !dbg !923
  %2 = icmp eq i8* %0, null, !dbg !924
  br i1 %2, label %3, label %6, !dbg !926

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !927, !tbaa !587
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !929
  tail call void @abort() #15, !dbg !930
  unreachable, !dbg !930

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !931
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !921, metadata !580), !dbg !932
  %8 = icmp eq i8* %7, null, !dbg !933
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !934
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !935
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !922, metadata !580), !dbg !936
  %11 = ptrtoint i8* %10 to i64, !dbg !937
  %12 = ptrtoint i8* %0 to i64, !dbg !937
  %13 = sub i64 %11, %12, !dbg !937
  %14 = icmp sgt i64 %13, 6, !dbg !939
  br i1 %14, label %15, label %24, !dbg !940

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !941
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.38, i64 0, i64 0), i64 7) #14, !dbg !942
  %18 = icmp eq i32 %17, 0, !dbg !943
  br i1 %18, label %19, label %24, !dbg !944

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !920, metadata !580), !dbg !923
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.39, i64 0, i64 0), i64 3) #14, !dbg !945
  %21 = icmp eq i32 %20, 0, !dbg !948
  br i1 %21, label %22, label %24, !dbg !949

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !950
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !920, metadata !580), !dbg !923
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !952, !tbaa !587
  br label %24, !dbg !953

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !920, metadata !580), !dbg !923
  store i8* %25, i8** @program_name, align 8, !dbg !954, !tbaa !587
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !955, !tbaa !587
  ret void, !dbg !956
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !957 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !962, metadata !580), !dbg !965
  %2 = tail call i32* @__errno_location() #17, !dbg !966
  %3 = load i32, i32* %2, align 4, !dbg !966, !tbaa !657
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !963, metadata !580), !dbg !967
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !968
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !968
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !968
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !969
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !969
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !964, metadata !580), !dbg !970
  store i32 %3, i32* %2, align 4, !dbg !971, !tbaa !657
  ret %struct.quoting_options* %8, !dbg !972
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !973 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !979, metadata !580), !dbg !980
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !981
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !981
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !982
  %5 = load i32, i32* %4, align 8, !dbg !982, !tbaa !983
  ret i32 %5, !dbg !985
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !986 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !990, metadata !580), !dbg !992
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !991, metadata !580), !dbg !993
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !994
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !994
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !995
  store i32 %1, i32* %5, align 8, !dbg !996, !tbaa !983
  ret void, !dbg !997
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !998 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1002, metadata !580), !dbg !1010
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1003, metadata !580), !dbg !1011
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1004, metadata !580), !dbg !1012
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1005, metadata !580), !dbg !1013
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1014
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1014
  %6 = lshr i8 %1, 5, !dbg !1015
  %7 = zext i8 %6 to i64, !dbg !1015
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1016
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1006, metadata !580), !dbg !1017
  %9 = and i8 %1, 31, !dbg !1018
  %10 = zext i8 %9 to i32, !dbg !1019
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1008, metadata !580), !dbg !1020
  %11 = load i32, i32* %8, align 4, !dbg !1021, !tbaa !657
  %12 = lshr i32 %11, %10, !dbg !1022
  %13 = and i32 %12, 1, !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1009, metadata !580), !dbg !1024
  %14 = and i32 %2, 1, !dbg !1025
  %15 = xor i32 %13, %14, !dbg !1026
  %16 = shl i32 %15, %10, !dbg !1027
  %17 = xor i32 %16, %11, !dbg !1028
  store i32 %17, i32* %8, align 4, !dbg !1028, !tbaa !657
  ret i32 %13, !dbg !1029
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1030 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1034, metadata !580), !dbg !1037
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1035, metadata !580), !dbg !1038
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1039
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1034, metadata !580), !dbg !1037
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1041
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1034, metadata !580), !dbg !1037
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1042
  %6 = load i32, i32* %5, align 4, !dbg !1042, !tbaa !1043
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1036, metadata !580), !dbg !1044
  store i32 %1, i32* %5, align 4, !dbg !1045, !tbaa !1043
  ret i32 %6, !dbg !1046
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1047 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1051, metadata !580), !dbg !1054
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1052, metadata !580), !dbg !1055
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1053, metadata !580), !dbg !1056
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1051, metadata !580), !dbg !1054
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1059
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1051, metadata !580), !dbg !1054
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1060
  store i32 10, i32* %6, align 8, !dbg !1061, !tbaa !983
  %7 = icmp ne i8* %1, null, !dbg !1062
  %8 = icmp ne i8* %2, null, !dbg !1064
  %9 = and i1 %7, %8, !dbg !1065
  br i1 %9, label %11, label %10, !dbg !1065

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1066
  unreachable, !dbg !1066

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1067
  store i8* %1, i8** %12, align 8, !dbg !1068, !tbaa !1069
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1070
  store i8* %2, i8** %13, align 8, !dbg !1071, !tbaa !1072
  ret void, !dbg !1073
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1074 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1078, metadata !580), !dbg !1086
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1079, metadata !580), !dbg !1087
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1080, metadata !580), !dbg !1088
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1081, metadata !580), !dbg !1089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1082, metadata !580), !dbg !1090
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1091
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1091
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1083, metadata !580), !dbg !1092
  %8 = tail call i32* @__errno_location() #17, !dbg !1093
  %9 = load i32, i32* %8, align 4, !dbg !1093, !tbaa !657
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1084, metadata !580), !dbg !1094
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1095
  %11 = load i32, i32* %10, align 8, !dbg !1095, !tbaa !983
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1096
  %13 = load i32, i32* %12, align 4, !dbg !1096, !tbaa !1043
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1097
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1098
  %16 = load i8*, i8** %15, align 8, !dbg !1098, !tbaa !1069
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1099
  %18 = load i8*, i8** %17, align 8, !dbg !1099, !tbaa !1072
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1100
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1085, metadata !580), !dbg !1101
  store i32 %9, i32* %8, align 4, !dbg !1102, !tbaa !657
  ret i64 %19, !dbg !1103
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1104 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1110, metadata !580), !dbg !1174
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1111, metadata !580), !dbg !1175
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1112, metadata !580), !dbg !1176
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1113, metadata !580), !dbg !1177
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1114, metadata !580), !dbg !1178
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1115, metadata !580), !dbg !1179
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1116, metadata !580), !dbg !1180
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1117, metadata !580), !dbg !1181
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1118, metadata !580), !dbg !1182
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1120, metadata !580), !dbg !1183
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1121, metadata !580), !dbg !1184
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1122, metadata !580), !dbg !1185
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1123, metadata !580), !dbg !1186
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1124, metadata !580), !dbg !1187
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1188
  %14 = icmp eq i64 %13, 1, !dbg !1189
  %15 = lshr i32 %5, 1, !dbg !1190
  %16 = trunc i32 %15 to i8, !dbg !1190
  %17 = and i8 %16, 1, !dbg !1190
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1126, metadata !580), !dbg !1190
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1127, metadata !580), !dbg !1191
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1128, metadata !580), !dbg !1192
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1129, metadata !580), !dbg !1193
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1194

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1111, metadata !580), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1129, metadata !580), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1128, metadata !580), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1126, metadata !580), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1113, metadata !580), !dbg !1177
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1124, metadata !580), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1123, metadata !580), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1122, metadata !580), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1121, metadata !580), !dbg !1184
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1118, metadata !580), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1117, metadata !580), !dbg !1181
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1114, metadata !580), !dbg !1178
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
  ], !dbg !1195

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1114, metadata !580), !dbg !1178
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1126, metadata !580), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1126, metadata !580), !dbg !1190
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1114, metadata !580), !dbg !1178
  br label %94, !dbg !1196

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1126, metadata !580), !dbg !1190
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1114, metadata !580), !dbg !1178
  %43 = and i8 %36, 1, !dbg !1198
  %44 = icmp eq i8 %43, 0, !dbg !1198
  br i1 %44, label %45, label %94, !dbg !1196

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1200
  br i1 %46, label %94, label %47, !dbg !1203

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1200, !tbaa !716
  br label %94, !dbg !1200

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.50, i64 0, i64 0), i32 %28), !dbg !1204
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1117, metadata !580), !dbg !1181
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), i32 %28), !dbg !1208
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1118, metadata !580), !dbg !1182
  br label %51, !dbg !1209

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1118, metadata !580), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1117, metadata !580), !dbg !1181
  %54 = and i8 %36, 1, !dbg !1210
  %55 = icmp eq i8 %54, 0, !dbg !1210
  br i1 %55, label %56, label %72, !dbg !1212

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1122, metadata !580), !dbg !1185
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1122, metadata !580), !dbg !1185
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1120, metadata !580), !dbg !1183
  %57 = load i8, i8* %52, align 1, !dbg !1213, !tbaa !716
  %58 = icmp eq i8 %57, 0, !dbg !1216
  br i1 %58, label %72, label %59, !dbg !1216

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1217

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1122, metadata !580), !dbg !1185
  %64 = icmp ult i64 %63, %40, !dbg !1217
  br i1 %64, label %65, label %67, !dbg !1220

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1217
  store i8 %61, i8* %66, align 1, !dbg !1217, !tbaa !716
  br label %67, !dbg !1217

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1120, metadata !580), !dbg !1183
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1221
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1122, metadata !580), !dbg !1185
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1122, metadata !580), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1120, metadata !580), !dbg !1183
  %70 = load i8, i8* %69, align 1, !dbg !1213, !tbaa !716
  %71 = icmp eq i8 %70, 0, !dbg !1216
  br i1 %71, label %72, label %60, !dbg !1216, !llvm.loop !1222

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1124, metadata !580), !dbg !1187
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1122, metadata !580), !dbg !1185
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1123, metadata !580), !dbg !1186
  br label %94, !dbg !1225

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1124, metadata !580), !dbg !1187
  br label %76, !dbg !1226

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !1124, metadata !580), !dbg !1187
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1126, metadata !580), !dbg !1190
  br label %78, !dbg !1227

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1126, metadata !580), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !1124, metadata !580), !dbg !1187
  %81 = and i8 %80, 1, !dbg !1228
  %82 = icmp eq i8 %81, 0, !dbg !1228
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1124, metadata !580), !dbg !1187
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1230
  br label %84, !dbg !1230

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1126, metadata !580), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !1124, metadata !580), !dbg !1187
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1114, metadata !580), !dbg !1178
  %87 = and i8 %86, 1, !dbg !1231
  %88 = icmp eq i8 %87, 0, !dbg !1231
  br i1 %88, label %89, label %94, !dbg !1233

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1234
  br i1 %90, label %94, label %91, !dbg !1237

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1234, !tbaa !716
  br label %94, !dbg !1234

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1126, metadata !580), !dbg !1190
  br label %94, !dbg !1238

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1239
  unreachable, !dbg !1239

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1126, metadata !580), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1124, metadata !580), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !1123, metadata !580), !dbg !1186
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1122, metadata !580), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1118, metadata !580), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1117, metadata !580), !dbg !1181
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !1114, metadata !580), !dbg !1178
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1119, metadata !580), !dbg !1240
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
  br label %122, !dbg !1241

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1111, metadata !580), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1129, metadata !580), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1128, metadata !580), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1113, metadata !580), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1121, metadata !580), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1119, metadata !580), !dbg !1240
  %131 = icmp eq i64 %126, -1, !dbg !1242
  br i1 %131, label %134, label %132, !dbg !1243

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1244
  br i1 %133, label %590, label %138, !dbg !1245

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1246
  %136 = load i8, i8* %135, align 1, !dbg !1246, !tbaa !716
  %137 = icmp eq i8 %136, 0, !dbg !1247
  br i1 %137, label %590, label %138, !dbg !1245

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1135, metadata !580), !dbg !1248
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1136, metadata !580), !dbg !1249
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1137, metadata !580), !dbg !1250
  br i1 %108, label %139, label %154, !dbg !1251

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1253
  %141 = and i1 %109, %131, !dbg !1254
  br i1 %141, label %142, label %144, !dbg !1254

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !1113, metadata !580), !dbg !1177
  br label %144, !dbg !1256

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !1113, metadata !580), !dbg !1177
  %146 = icmp ugt i64 %140, %145, !dbg !1257
  br i1 %146, label %154, label %147, !dbg !1258

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1259
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1260
  %150 = icmp ne i32 %149, 0, !dbg !1261
  %151 = or i1 %150, %111, !dbg !1262
  %152 = xor i1 %150, true, !dbg !1262
  %153 = zext i1 %152 to i8, !dbg !1262
  br i1 %151, label %154, label %635, !dbg !1262

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1135, metadata !580), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !1113, metadata !580), !dbg !1177
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1263
  %158 = load i8, i8* %157, align 1, !dbg !1263, !tbaa !716
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1130, metadata !580), !dbg !1264
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
  ], !dbg !1265

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1266

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1267

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1136, metadata !580), !dbg !1249
  %162 = and i8 %127, 1, !dbg !1271
  %163 = icmp eq i8 %162, 0, !dbg !1271
  %164 = and i1 %113, %163, !dbg !1271
  br i1 %164, label %165, label %181, !dbg !1271

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1273
  br i1 %166, label %167, label %169, !dbg !1277

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1273
  store i8 39, i8* %168, align 1, !dbg !1273, !tbaa !716
  br label %169, !dbg !1273

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !1120, metadata !580), !dbg !1183
  %171 = icmp ult i64 %170, %130, !dbg !1278
  br i1 %171, label %172, label %174, !dbg !1281

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1278
  store i8 36, i8* %173, align 1, !dbg !1278, !tbaa !716
  br label %174, !dbg !1278

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !1120, metadata !580), !dbg !1183
  %176 = icmp ult i64 %175, %130, !dbg !1282
  br i1 %176, label %177, label %179, !dbg !1285

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1282
  store i8 39, i8* %178, align 1, !dbg !1282, !tbaa !716
  br label %179, !dbg !1282

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1127, metadata !580), !dbg !1191
  br label %181, !dbg !1286

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !1120, metadata !580), !dbg !1183
  %184 = icmp ult i64 %182, %130, !dbg !1287
  br i1 %184, label %185, label %187, !dbg !1290

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1287
  store i8 92, i8* %186, align 1, !dbg !1287, !tbaa !716
  br label %187, !dbg !1287

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !1120, metadata !580), !dbg !1183
  br i1 %105, label %189, label %470, !dbg !1291

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1293
  %191 = icmp ult i64 %190, %155, !dbg !1294
  br i1 %191, label %192, label %470, !dbg !1295

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1296
  %194 = load i8, i8* %193, align 1, !dbg !1296, !tbaa !716
  %195 = add i8 %194, -48, !dbg !1297
  %196 = icmp ult i8 %195, 10, !dbg !1297
  br i1 %196, label %197, label %470, !dbg !1297

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1298
  br i1 %198, label %199, label %201, !dbg !1302

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1298
  store i8 48, i8* %200, align 1, !dbg !1298, !tbaa !716
  br label %201, !dbg !1298

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !1120, metadata !580), !dbg !1183
  %203 = icmp ult i64 %202, %130, !dbg !1303
  br i1 %203, label %204, label %206, !dbg !1306

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1303
  store i8 48, i8* %205, align 1, !dbg !1303, !tbaa !716
  br label %206, !dbg !1303

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !1120, metadata !580), !dbg !1183
  br label %470, !dbg !1307

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1308

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1309

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1310

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1312

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1314
  %214 = icmp ult i64 %213, %155, !dbg !1315
  br i1 %214, label %215, label %470, !dbg !1316

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1317
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1318
  %218 = load i8, i8* %217, align 1, !dbg !1318, !tbaa !716
  %219 = icmp eq i8 %218, 63, !dbg !1319
  br i1 %219, label %220, label %470, !dbg !1320

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1321
  %222 = load i8, i8* %221, align 1, !dbg !1321, !tbaa !716
  %223 = sext i8 %222 to i32, !dbg !1321
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
  ], !dbg !1322

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1323

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1130, metadata !580), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !1119, metadata !580), !dbg !1240
  %226 = icmp ult i64 %124, %130, !dbg !1325
  br i1 %226, label %227, label %229, !dbg !1328

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1325
  store i8 63, i8* %228, align 1, !dbg !1325, !tbaa !716
  br label %229, !dbg !1325

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !1120, metadata !580), !dbg !1183
  %231 = icmp ult i64 %230, %130, !dbg !1329
  br i1 %231, label %232, label %234, !dbg !1332

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1329
  store i8 34, i8* %233, align 1, !dbg !1329, !tbaa !716
  br label %234, !dbg !1329

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1120, metadata !580), !dbg !1183
  %236 = icmp ult i64 %235, %130, !dbg !1333
  br i1 %236, label %237, label %239, !dbg !1336

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1333
  store i8 34, i8* %238, align 1, !dbg !1333, !tbaa !716
  br label %239, !dbg !1333

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !1120, metadata !580), !dbg !1183
  %241 = icmp ult i64 %240, %130, !dbg !1337
  br i1 %241, label %242, label %244, !dbg !1340

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1337
  store i8 63, i8* %243, align 1, !dbg !1337, !tbaa !716
  br label %244, !dbg !1337

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !1120, metadata !580), !dbg !1183
  br label %470, !dbg !1341

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1134, metadata !580), !dbg !1342
  br label %256, !dbg !1343

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1134, metadata !580), !dbg !1342
  br label %256, !dbg !1344

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1134, metadata !580), !dbg !1342
  br label %254, !dbg !1345

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1134, metadata !580), !dbg !1342
  br label %254, !dbg !1346

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1134, metadata !580), !dbg !1342
  br label %256, !dbg !1347

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1134, metadata !580), !dbg !1342
  br i1 %113, label %252, label %253, !dbg !1348

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1349

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1352

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1134, metadata !580), !dbg !1342
  br i1 %117, label %256, label %635, !dbg !1354

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1134, metadata !580), !dbg !1342
  br i1 %104, label %497, label %470, !dbg !1356

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1357
  br i1 %259, label %260, label %265, !dbg !1359

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1360, !tbaa !716
  %262 = icmp ne i8 %261, 0, !dbg !1361
  %263 = icmp ne i64 %123, 0, !dbg !1362
  %264 = or i1 %263, %262, !dbg !1364
  br i1 %264, label %470, label %271, !dbg !1364

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1365
  %267 = icmp ne i64 %123, 0, !dbg !1362
  %268 = or i1 %267, %266, !dbg !1359
  br i1 %268, label %470, label %271, !dbg !1359

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1362
  br i1 %270, label %271, label %470, !dbg !1366

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1137, metadata !580), !dbg !1250
  br label %272, !dbg !1367

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1137, metadata !580), !dbg !1250
  br i1 %117, label %470, label %635, !dbg !1368

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1128, metadata !580), !dbg !1192
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1137, metadata !580), !dbg !1250
  br i1 %113, label %275, label %470, !dbg !1370

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1371

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1374
  %278 = icmp ne i64 %125, 0, !dbg !1376
  %279 = or i1 %278, %277, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1121, metadata !580), !dbg !1184
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1111, metadata !580), !dbg !1175
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1377
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1111, metadata !580), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1121, metadata !580), !dbg !1184
  %282 = icmp ult i64 %124, %281, !dbg !1378
  br i1 %282, label %283, label %285, !dbg !1381

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1378
  store i8 39, i8* %284, align 1, !dbg !1378, !tbaa !716
  br label %285, !dbg !1378

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !1120, metadata !580), !dbg !1183
  %287 = icmp ult i64 %286, %281, !dbg !1382
  br i1 %287, label %288, label %290, !dbg !1385

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1382
  store i8 92, i8* %289, align 1, !dbg !1382, !tbaa !716
  br label %290, !dbg !1382

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !1120, metadata !580), !dbg !1183
  %292 = icmp ult i64 %291, %281, !dbg !1386
  br i1 %292, label %293, label %295, !dbg !1389

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1386
  store i8 39, i8* %294, align 1, !dbg !1386, !tbaa !716
  br label %295, !dbg !1386

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1127, metadata !580), !dbg !1191
  br label %470, !dbg !1390

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1391

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1138, metadata !580), !dbg !1392
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1393
  %300 = load i16*, i16** %299, align 8, !dbg !1393, !tbaa !587
  %301 = zext i8 %158 to i64, !dbg !1393
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1393
  %303 = load i16, i16* %302, align 2, !dbg !1393, !tbaa !1395
  %304 = lshr i16 %303, 14, !dbg !1396
  %305 = trunc i16 %304 to i8, !dbg !1396
  %306 = and i8 %305, 1, !dbg !1396
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1141, metadata !580), !dbg !1397
  br label %362, !dbg !1398

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1399
  store i64 0, i64* %10, align 8, !dbg !1400
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1138, metadata !580), !dbg !1392
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1141, metadata !580), !dbg !1397
  %308 = icmp eq i64 %155, -1, !dbg !1401
  br i1 %308, label %309, label %311, !dbg !1403

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !1113, metadata !580), !dbg !1177
  br label %311, !dbg !1405

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !1113, metadata !580), !dbg !1177
  br label %313, !dbg !1406, !llvm.loop !1407

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1141, metadata !580), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1138, metadata !580), !dbg !1392
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1409
  %316 = add i64 %314, %123, !dbg !1410
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1411
  %318 = sub i64 %312, %316, !dbg !1412
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1142, metadata !580), !dbg !1413
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1160, metadata !580), !dbg !1414
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #11, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1163, metadata !580), !dbg !1416
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1417

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1141, metadata !580), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1138, metadata !580), !dbg !1392
  %321 = icmp ugt i64 %312, %316, !dbg !1418
  br i1 %321, label %322, label %347, !dbg !1420

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1421

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1138, metadata !580), !dbg !1392
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1421
  %327 = load i8, i8* %326, align 1, !dbg !1421, !tbaa !716
  %328 = icmp eq i8 %327, 0, !dbg !1420
  br i1 %328, label %347, label %329, !dbg !1422

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1138, metadata !580), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1138, metadata !580), !dbg !1392
  %331 = add i64 %330, %123, !dbg !1424
  %332 = icmp ult i64 %331, %312, !dbg !1418
  br i1 %332, label %323, label %347, !dbg !1420, !llvm.loop !1425

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1426
  %335 = and i1 %115, %334, !dbg !1429
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1164, metadata !580), !dbg !1430
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1164, metadata !580), !dbg !1430
  br i1 %335, label %336, label %350, !dbg !1429

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1431

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1164, metadata !580), !dbg !1430
  %339 = add i64 %338, %316, !dbg !1431
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1432
  %341 = load i8, i8* %340, align 1, !dbg !1432, !tbaa !716
  %342 = sext i8 %341 to i32, !dbg !1432
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1433

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1164, metadata !580), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1164, metadata !580), !dbg !1430
  %345 = icmp ult i64 %344, %319, !dbg !1426
  br i1 %345, label %337, label %350, !dbg !1435, !llvm.loop !1436

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1438

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1141, metadata !580), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1138, metadata !580), !dbg !1392
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1438
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1439, !tbaa !657
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1160, metadata !580), !dbg !1414
  %352 = call i32 @iswprint(i32 %351) #11, !dbg !1441
  %353 = icmp eq i32 %352, 0, !dbg !1441
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1141, metadata !580), !dbg !1397
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1442
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1141, metadata !580), !dbg !1397
  %355 = add i64 %319, %314, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1138, metadata !580), !dbg !1392
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1141, metadata !580), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1138, metadata !580), !dbg !1392
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1438
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1142, metadata !580), !dbg !1413
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1444
  %357 = icmp eq i32 %356, 0, !dbg !1445
  br i1 %357, label %313, label %358, !dbg !1446, !llvm.loop !1407

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1447
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1141, metadata !580), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1138, metadata !580), !dbg !1392
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #11, !dbg !1438
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11, !dbg !1447
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1141, metadata !580), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1138, metadata !580), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !1113, metadata !580), !dbg !1177
  %366 = and i8 %365, 1, !dbg !1448
  %367 = icmp ne i8 %366, 0, !dbg !1448
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1137, metadata !580), !dbg !1250
  %368 = icmp ult i64 %364, 2, !dbg !1449
  %369 = or i1 %367, %112, !dbg !1450
  %370 = and i1 %368, %369, !dbg !1451
  br i1 %370, label %470, label %371, !dbg !1451

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1171, metadata !580), !dbg !1453
  br label %373, !dbg !1454

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1136, metadata !580), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1135, metadata !580), !dbg !1248
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1130, metadata !580), !dbg !1264
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1119, metadata !580), !dbg !1240
  br i1 %369, label %426, label %380, !dbg !1455

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1460

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1136, metadata !580), !dbg !1249
  %382 = and i8 %376, 1, !dbg !1463
  %383 = icmp eq i8 %382, 0, !dbg !1463
  %384 = and i1 %113, %383, !dbg !1463
  br i1 %384, label %385, label %401, !dbg !1463

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1465
  br i1 %386, label %387, label %389, !dbg !1469

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1465
  store i8 39, i8* %388, align 1, !dbg !1465, !tbaa !716
  br label %389, !dbg !1465

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !1120, metadata !580), !dbg !1183
  %391 = icmp ult i64 %390, %130, !dbg !1470
  br i1 %391, label %392, label %394, !dbg !1473

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1470
  store i8 36, i8* %393, align 1, !dbg !1470, !tbaa !716
  br label %394, !dbg !1470

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !1120, metadata !580), !dbg !1183
  %396 = icmp ult i64 %395, %130, !dbg !1474
  br i1 %396, label %397, label %399, !dbg !1477

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1474
  store i8 39, i8* %398, align 1, !dbg !1474, !tbaa !716
  br label %399, !dbg !1474

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1127, metadata !580), !dbg !1191
  br label %401, !dbg !1478

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !1120, metadata !580), !dbg !1183
  %404 = icmp ult i64 %402, %130, !dbg !1479
  br i1 %404, label %405, label %407, !dbg !1482

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1479
  store i8 92, i8* %406, align 1, !dbg !1479, !tbaa !716
  br label %407, !dbg !1479

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1120, metadata !580), !dbg !1183
  %409 = icmp ult i64 %408, %130, !dbg !1483
  br i1 %409, label %410, label %414, !dbg !1486

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1483
  %412 = or i8 %411, 48, !dbg !1483
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1483
  store i8 %412, i8* %413, align 1, !dbg !1483, !tbaa !716
  br label %414, !dbg !1483

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !1120, metadata !580), !dbg !1183
  %416 = icmp ult i64 %415, %130, !dbg !1487
  br i1 %416, label %417, label %422, !dbg !1490

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1487
  %419 = and i8 %418, 7, !dbg !1487
  %420 = or i8 %419, 48, !dbg !1487
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1487
  store i8 %420, i8* %421, align 1, !dbg !1487, !tbaa !716
  br label %422, !dbg !1487

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !1120, metadata !580), !dbg !1183
  %424 = and i8 %377, 7, !dbg !1491
  %425 = or i8 %424, 48, !dbg !1492
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1130, metadata !580), !dbg !1264
  br label %435, !dbg !1493

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1494
  %428 = icmp eq i8 %427, 0, !dbg !1494
  br i1 %428, label %435, label %429, !dbg !1496

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1497
  br i1 %430, label %431, label %433, !dbg !1501

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1497
  store i8 92, i8* %432, align 1, !dbg !1497, !tbaa !716
  br label %433, !dbg !1497

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1135, metadata !580), !dbg !1248
  br label %435, !dbg !1502

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1136, metadata !580), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1135, metadata !580), !dbg !1248
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1130, metadata !580), !dbg !1264
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !1120, metadata !580), !dbg !1183
  %441 = add i64 %374, 1, !dbg !1503
  %442 = icmp ugt i64 %372, %441, !dbg !1505
  br i1 %442, label %443, label %535, !dbg !1506

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1507
  %445 = icmp ne i8 %444, 0, !dbg !1507
  %446 = and i8 %440, 1, !dbg !1507
  %447 = icmp eq i8 %446, 0, !dbg !1507
  %448 = and i1 %445, %447, !dbg !1507
  br i1 %448, label %449, label %460, !dbg !1507

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1510
  br i1 %450, label %451, label %453, !dbg !1514

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1510
  store i8 39, i8* %452, align 1, !dbg !1510, !tbaa !716
  br label %453, !dbg !1510

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1514
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !1120, metadata !580), !dbg !1183
  %455 = icmp ult i64 %454, %130, !dbg !1515
  br i1 %455, label %456, label %458, !dbg !1518

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1515
  store i8 39, i8* %457, align 1, !dbg !1515, !tbaa !716
  br label %458, !dbg !1515

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1127, metadata !580), !dbg !1191
  br label %460, !dbg !1519

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !1120, metadata !580), !dbg !1183
  %463 = icmp ult i64 %461, %130, !dbg !1520
  br i1 %463, label %464, label %466, !dbg !1523

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1520
  store i8 %438, i8* %465, align 1, !dbg !1520, !tbaa !716
  br label %466, !dbg !1520

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !1119, metadata !580), !dbg !1240
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1524
  %469 = load i8, i8* %468, align 1, !dbg !1524, !tbaa !716
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1130, metadata !580), !dbg !1264
  br label %373, !dbg !1525, !llvm.loop !1526

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1111, metadata !580), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1137, metadata !580), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1136, metadata !580), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1135, metadata !580), !dbg !1248
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1130, metadata !580), !dbg !1264
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1128, metadata !580), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !1113, metadata !580), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1121, metadata !580), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !1119, metadata !580), !dbg !1240
  br i1 %106, label %482, label %481, !dbg !1529

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1531

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1532

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1533
  %485 = zext i8 %484 to i64, !dbg !1533
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1534
  %487 = load i32, i32* %486, align 4, !dbg !1534, !tbaa !657
  %488 = and i8 %477, 31, !dbg !1535
  %489 = zext i8 %488 to i32, !dbg !1536
  %490 = shl i32 1, %489, !dbg !1537
  %491 = and i32 %487, %490, !dbg !1537
  %492 = icmp eq i32 %491, 0, !dbg !1537
  %493 = icmp eq i8 %156, 0, !dbg !1538
  %494 = and i1 %493, %492, !dbg !1539
  br i1 %494, label %535, label %497, !dbg !1539

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1538
  br i1 %496, label %535, label %497, !dbg !1540

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1111, metadata !580), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1137, metadata !580), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1130, metadata !580), !dbg !1264
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1128, metadata !580), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !1113, metadata !580), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !1121, metadata !580), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !1119, metadata !580), !dbg !1240
  br i1 %111, label %507, label %635, !dbg !1541

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1136, metadata !580), !dbg !1249
  %508 = and i8 %502, 1, !dbg !1543
  %509 = icmp eq i8 %508, 0, !dbg !1543
  %510 = and i1 %113, %509, !dbg !1543
  br i1 %510, label %511, label %527, !dbg !1543

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1545
  br i1 %512, label %513, label %515, !dbg !1549

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1545
  store i8 39, i8* %514, align 1, !dbg !1545, !tbaa !716
  br label %515, !dbg !1545

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !1120, metadata !580), !dbg !1183
  %517 = icmp ult i64 %516, %506, !dbg !1550
  br i1 %517, label %518, label %520, !dbg !1553

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1550
  store i8 36, i8* %519, align 1, !dbg !1550, !tbaa !716
  br label %520, !dbg !1550

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !1120, metadata !580), !dbg !1183
  %522 = icmp ult i64 %521, %506, !dbg !1554
  br i1 %522, label %523, label %525, !dbg !1557

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1554
  store i8 39, i8* %524, align 1, !dbg !1554, !tbaa !716
  br label %525, !dbg !1554

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1127, metadata !580), !dbg !1191
  br label %527, !dbg !1558

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !1120, metadata !580), !dbg !1183
  %530 = icmp ult i64 %528, %506, !dbg !1559
  br i1 %530, label %531, label %533, !dbg !1562

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1559
  store i8 92, i8* %532, align 1, !dbg !1559, !tbaa !716
  br label %533, !dbg !1559

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1111, metadata !580), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1137, metadata !580), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1136, metadata !580), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1130, metadata !580), !dbg !1264
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1128, metadata !580), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1113, metadata !580), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1121, metadata !580), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1119, metadata !580), !dbg !1240
  br label %562, !dbg !1563

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1111, metadata !580), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1137, metadata !580), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1136, metadata !580), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1130, metadata !580), !dbg !1264
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1128, metadata !580), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1113, metadata !580), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !1121, metadata !580), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !1119, metadata !580), !dbg !1240
  %546 = and i8 %540, 1, !dbg !1563
  %547 = icmp ne i8 %546, 0, !dbg !1563
  %548 = and i8 %543, 1, !dbg !1563
  %549 = icmp eq i8 %548, 0, !dbg !1563
  %550 = and i1 %547, %549, !dbg !1563
  br i1 %550, label %551, label %562, !dbg !1563

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1566
  br i1 %552, label %553, label %555, !dbg !1570

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1566
  store i8 39, i8* %554, align 1, !dbg !1566, !tbaa !716
  br label %555, !dbg !1566

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !1120, metadata !580), !dbg !1183
  %557 = icmp ult i64 %556, %545, !dbg !1571
  br i1 %557, label %558, label %560, !dbg !1574

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1571
  store i8 39, i8* %559, align 1, !dbg !1571, !tbaa !716
  br label %560, !dbg !1571

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1127, metadata !580), !dbg !1191
  br label %562, !dbg !1575

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !1120, metadata !580), !dbg !1183
  %572 = icmp ult i64 %570, %563, !dbg !1576
  br i1 %572, label %573, label %575, !dbg !1579

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1576
  store i8 %565, i8* %574, align 1, !dbg !1576, !tbaa !716
  br label %575, !dbg !1576

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !1120, metadata !580), !dbg !1183
  %577 = and i8 %564, 1, !dbg !1580
  %578 = icmp eq i8 %577, 0, !dbg !1580
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1129, metadata !580), !dbg !1193
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1582
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1129, metadata !580), !dbg !1193
  br label %580, !dbg !1583

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !1111, metadata !580), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1129, metadata !580), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1128, metadata !580), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !1127, metadata !580), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !1113, metadata !580), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1121, metadata !580), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !1119, metadata !580), !dbg !1240
  %589 = add i64 %581, 1, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !1119, metadata !580), !dbg !1240
  br label %122, !dbg !1585, !llvm.loop !1586

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1588
  %593 = and i1 %113, %592, !dbg !1590
  %594 = xor i1 %593, true, !dbg !1590
  %595 = or i1 %111, %594, !dbg !1590
  br i1 %595, label %596, label %635, !dbg !1590

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1591
  %598 = xor i1 %597, true, !dbg !1591
  %599 = and i8 %128, 1, !dbg !1593
  %600 = icmp eq i8 %599, 0, !dbg !1593
  %601 = or i1 %600, %598, !dbg !1591
  br i1 %601, label %611, label %602, !dbg !1591

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1594
  %604 = icmp eq i8 %603, 0, !dbg !1594
  br i1 %604, label %607, label %605, !dbg !1597

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1598
  br label %645, !dbg !1599

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1600
  %609 = icmp ne i64 %125, 0, !dbg !1602
  %610 = and i1 %609, %608, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1111, metadata !580), !dbg !1175
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1120, metadata !580), !dbg !1183
  br i1 %610, label %27, label %611, !dbg !1603

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1604
  %613 = and i1 %612, %111, !dbg !1606
  br i1 %613, label %614, label %630, !dbg !1606

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !1122, metadata !580), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1120, metadata !580), !dbg !1183
  %615 = load i8, i8* %99, align 1, !dbg !1607, !tbaa !716
  %616 = icmp eq i8 %615, 0, !dbg !1610
  br i1 %616, label %630, label %617, !dbg !1610

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1611

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !1120, metadata !580), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1122, metadata !580), !dbg !1185
  %622 = icmp ult i64 %621, %130, !dbg !1611
  br i1 %622, label %623, label %625, !dbg !1614

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1611
  store i8 %619, i8* %624, align 1, !dbg !1611, !tbaa !716
  br label %625, !dbg !1611

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1120, metadata !580), !dbg !1183
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1615
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1122, metadata !580), !dbg !1185
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !1122, metadata !580), !dbg !1185
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !1120, metadata !580), !dbg !1183
  %628 = load i8, i8* %627, align 1, !dbg !1607, !tbaa !716
  %629 = icmp eq i8 %628, 0, !dbg !1610
  br i1 %629, label %630, label %618, !dbg !1610, !llvm.loop !1616

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !1120, metadata !580), !dbg !1183
  %632 = icmp ult i64 %631, %130, !dbg !1618
  br i1 %632, label %633, label %645, !dbg !1620

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1621
  store i8 0, i8* %634, align 1, !dbg !1622, !tbaa !716
  br label %645, !dbg !1621

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !1111, metadata !580), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !1113, metadata !580), !dbg !1177
  %639 = icmp ne i32 %636, 2, !dbg !1623
  %640 = icmp eq i8 %103, 0, !dbg !1625
  %641 = or i1 %639, %640, !dbg !1626
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1114, metadata !580), !dbg !1178
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1626
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !1114, metadata !580), !dbg !1178
  %643 = and i32 %5, -3, !dbg !1627
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1628
  br label %645, !dbg !1629

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1630
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1631 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1635, metadata !580), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1636, metadata !580), !dbg !1640
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1641
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1637, metadata !580), !dbg !1642
  %4 = icmp eq i8* %3, %0, !dbg !1643
  br i1 %4, label %5, label %75, !dbg !1645

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1646
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1638, metadata !580), !dbg !1647
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1648, metadata !580), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1662, metadata !580), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1663, metadata !580), !dbg !1668
  %7 = load i8, i8* %6, align 1, !dbg !1669, !tbaa !716
  %8 = sext i8 %7 to i32, !dbg !1669
  %9 = and i32 %8, -33, !dbg !1669
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1669

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1671, metadata !580), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1683, metadata !580), !dbg !1689
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1684, metadata !580), !dbg !1690
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1691
  %12 = load i8, i8* %11, align 1, !dbg !1691, !tbaa !716
  %13 = sext i8 %12 to i32, !dbg !1691
  %14 = and i32 %13, -33, !dbg !1691
  %15 = icmp eq i32 %14, 84, !dbg !1691
  br i1 %15, label %16, label %72, !dbg !1691

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1693, metadata !580), !dbg !1706
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1704, metadata !580), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1705, metadata !580), !dbg !1711
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1712
  %18 = load i8, i8* %17, align 1, !dbg !1712, !tbaa !716
  %19 = sext i8 %18 to i32, !dbg !1712
  %20 = and i32 %19, -33, !dbg !1712
  %21 = icmp eq i32 %20, 70, !dbg !1712
  br i1 %21, label %22, label %72, !dbg !1712

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1714, metadata !580), !dbg !1726
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1724, metadata !580), !dbg !1730
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1725, metadata !580), !dbg !1731
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1732
  %24 = load i8, i8* %23, align 1, !dbg !1732, !tbaa !716
  %25 = icmp eq i8 %24, 45, !dbg !1732
  br i1 %25, label %26, label %72, !dbg !1734

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1735, metadata !580), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !580), !dbg !1750
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1745, metadata !580), !dbg !1751
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1752
  %28 = load i8, i8* %27, align 1, !dbg !1752, !tbaa !716
  %29 = icmp eq i8 %28, 56, !dbg !1752
  br i1 %29, label %30, label %72, !dbg !1754

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1755, metadata !580), !dbg !1765
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1763, metadata !580), !dbg !1769
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1764, metadata !580), !dbg !1770
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1771
  %32 = load i8, i8* %31, align 1, !dbg !1771, !tbaa !716
  %33 = icmp eq i8 %32, 0, !dbg !1771
  br i1 %33, label %34, label %72, !dbg !1773

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1774, !tbaa !716
  %36 = icmp eq i8 %35, 96, !dbg !1775
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.54, i64 0, i64 0), !dbg !1774
  br label %75, !dbg !1776

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1671, metadata !580), !dbg !1777
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1683, metadata !580), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1684, metadata !580), !dbg !1782
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1783
  %40 = load i8, i8* %39, align 1, !dbg !1783, !tbaa !716
  %41 = sext i8 %40 to i32, !dbg !1783
  %42 = and i32 %41, -33, !dbg !1783
  %43 = icmp eq i32 %42, 66, !dbg !1783
  br i1 %43, label %44, label %72, !dbg !1783

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1693, metadata !580), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1704, metadata !580), !dbg !1786
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1705, metadata !580), !dbg !1787
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1788
  %46 = load i8, i8* %45, align 1, !dbg !1788, !tbaa !716
  %47 = icmp eq i8 %46, 49, !dbg !1788
  br i1 %47, label %48, label %72, !dbg !1789

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1714, metadata !580), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1724, metadata !580), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1725, metadata !580), !dbg !1793
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1794
  %50 = load i8, i8* %49, align 1, !dbg !1794, !tbaa !716
  %51 = icmp eq i8 %50, 56, !dbg !1794
  br i1 %51, label %52, label %72, !dbg !1795

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1735, metadata !580), !dbg !1796
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1744, metadata !580), !dbg !1798
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1745, metadata !580), !dbg !1799
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1800
  %54 = load i8, i8* %53, align 1, !dbg !1800, !tbaa !716
  %55 = icmp eq i8 %54, 48, !dbg !1800
  br i1 %55, label %56, label %72, !dbg !1801

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1755, metadata !580), !dbg !1802
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1763, metadata !580), !dbg !1804
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1764, metadata !580), !dbg !1805
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1806
  %58 = load i8, i8* %57, align 1, !dbg !1806, !tbaa !716
  %59 = icmp eq i8 %58, 51, !dbg !1806
  br i1 %59, label %60, label %72, !dbg !1807

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1808, metadata !580), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1815, metadata !580), !dbg !1821
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1816, metadata !580), !dbg !1822
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1823
  %62 = load i8, i8* %61, align 1, !dbg !1823, !tbaa !716
  %63 = icmp eq i8 %62, 48, !dbg !1823
  br i1 %63, label %64, label %72, !dbg !1825

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1826, metadata !580), !dbg !1834
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1832, metadata !580), !dbg !1838
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1833, metadata !580), !dbg !1839
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1840
  %66 = load i8, i8* %65, align 1, !dbg !1840, !tbaa !716
  %67 = icmp eq i8 %66, 0, !dbg !1840
  br i1 %67, label %68, label %72, !dbg !1842

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1843, !tbaa !716
  %70 = icmp eq i8 %69, 96, !dbg !1844
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.55, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !1843
  br label %75, !dbg !1845

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1846
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.52, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.51, i64 0, i64 0), !dbg !1847
  br label %75, !dbg !1848

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1849
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #12

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1850 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1854, metadata !580), !dbg !1857
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1855, metadata !580), !dbg !1858
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1856, metadata !580), !dbg !1859
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1860, metadata !580) #11, !dbg !1873
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1865, metadata !580) #11, !dbg !1875
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1866, metadata !580) #11, !dbg !1876
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1867, metadata !580) #11, !dbg !1877
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1878
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1878
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1868, metadata !580) #11, !dbg !1879
  %6 = tail call i32* @__errno_location() #17, !dbg !1880
  %7 = load i32, i32* %6, align 4, !dbg !1880, !tbaa !657
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1869, metadata !580) #11, !dbg !1881
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1882
  %9 = load i32, i32* %8, align 4, !dbg !1882, !tbaa !1043
  %10 = or i32 %9, 1, !dbg !1883
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1870, metadata !580) #11, !dbg !1884
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1885
  %12 = load i32, i32* %11, align 8, !dbg !1885, !tbaa !983
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1886
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1887
  %15 = load i8*, i8** %14, align 8, !dbg !1887, !tbaa !1069
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1888
  %17 = load i8*, i8** %16, align 8, !dbg !1888, !tbaa !1072
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !1889
  %19 = add i64 %18, 1, !dbg !1890
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1871, metadata !580) #11, !dbg !1891
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1892, metadata !580) #11, !dbg !1897
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !1899
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1872, metadata !580) #11, !dbg !1900
  %21 = load i32, i32* %11, align 8, !dbg !1901, !tbaa !983
  %22 = load i8*, i8** %14, align 8, !dbg !1902, !tbaa !1069
  %23 = load i8*, i8** %16, align 8, !dbg !1903, !tbaa !1072
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !1904
  store i32 %7, i32* %6, align 4, !dbg !1905, !tbaa !657
  ret i8* %20, !dbg !1906
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1861 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1860, metadata !580), !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1865, metadata !580), !dbg !1908
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1866, metadata !580), !dbg !1909
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1867, metadata !580), !dbg !1910
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1911
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1911
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1868, metadata !580), !dbg !1912
  %7 = tail call i32* @__errno_location() #17, !dbg !1913
  %8 = load i32, i32* %7, align 4, !dbg !1913, !tbaa !657
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1869, metadata !580), !dbg !1914
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1915
  %10 = load i32, i32* %9, align 4, !dbg !1915, !tbaa !1043
  %11 = icmp ne i64* %2, null, !dbg !1916
  %12 = xor i1 %11, true, !dbg !1916
  %13 = zext i1 %12 to i32, !dbg !1916
  %14 = or i32 %10, %13, !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1870, metadata !580), !dbg !1918
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1919
  %16 = load i32, i32* %15, align 8, !dbg !1919, !tbaa !983
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1920
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1921
  %19 = load i8*, i8** %18, align 8, !dbg !1921, !tbaa !1069
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1922
  %21 = load i8*, i8** %20, align 8, !dbg !1922, !tbaa !1072
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1923
  %23 = add i64 %22, 1, !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1871, metadata !580), !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1892, metadata !580) #11, !dbg !1926
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !1928
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1872, metadata !580), !dbg !1929
  %25 = load i32, i32* %15, align 8, !dbg !1930, !tbaa !983
  %26 = load i8*, i8** %18, align 8, !dbg !1931, !tbaa !1069
  %27 = load i8*, i8** %20, align 8, !dbg !1932, !tbaa !1072
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1933
  store i32 %8, i32* %7, align 4, !dbg !1934, !tbaa !657
  br i1 %11, label %29, label %30, !dbg !1935

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1936, !tbaa !1938
  br label %30, !dbg !1939

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1940
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1941 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1945, !tbaa !587
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1943, metadata !580), !dbg !1946
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1944, metadata !580), !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1944, metadata !580), !dbg !1947
  %2 = load i32, i32* @nslots, align 4, !dbg !1948, !tbaa !657
  %3 = icmp sgt i32 %2, 1, !dbg !1951
  br i1 %3, label %4, label %13, !dbg !1952

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1953

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1944, metadata !580), !dbg !1947
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1953
  %8 = load i8*, i8** %7, align 8, !dbg !1953, !tbaa !1954
  tail call void @free(i8* %8) #11, !dbg !1956
  %9 = add nuw i64 %6, 1, !dbg !1957
  %10 = load i32, i32* @nslots, align 4, !dbg !1948, !tbaa !657
  %11 = sext i32 %10 to i64, !dbg !1951
  %12 = icmp slt i64 %9, %11, !dbg !1951
  br i1 %12, label %5, label %13, !dbg !1952, !llvm.loop !1958

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1960
  %15 = load i8*, i8** %14, align 8, !dbg !1960, !tbaa !1954
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1962
  br i1 %16, label %18, label %17, !dbg !1963

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #11, !dbg !1964
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1966, !tbaa !1967
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1968, !tbaa !1954
  br label %18, !dbg !1969

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1970
  br i1 %19, label %22, label %20, !dbg !1972

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1973
  tail call void @free(i8* %21) #11, !dbg !1975
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1976, !tbaa !587
  br label %22, !dbg !1977

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1978, !tbaa !657
  ret void, !dbg !1979
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1980 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1984, metadata !580), !dbg !1986
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1985, metadata !580), !dbg !1987
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1988
  ret i8* %3, !dbg !1989
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1990 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1994, metadata !580), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1995, metadata !580), !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1996, metadata !580), !dbg !2010
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1997, metadata !580), !dbg !2011
  %5 = tail call i32* @__errno_location() #17, !dbg !2012
  %6 = load i32, i32* %5, align 4, !dbg !2012, !tbaa !657
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1998, metadata !580), !dbg !2013
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2014, !tbaa !587
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1999, metadata !580), !dbg !2015
  %8 = icmp slt i32 %0, 0, !dbg !2016
  br i1 %8, label %9, label %10, !dbg !2018

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2019
  unreachable, !dbg !2019

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2020, !tbaa !657
  %12 = icmp sgt i32 %11, %0, !dbg !2021
  br i1 %12, label %34, label %13, !dbg !2022

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2023
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2024
  br i1 %15, label %16, label %17, !dbg !2026

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2027
  unreachable, !dbg !2027

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2028
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2028
  %20 = add nsw i32 %0, 1, !dbg !2029
  %21 = sext i32 %20 to i64, !dbg !2030
  %22 = shl nsw i64 %21, 4, !dbg !2031
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2032
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2032
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1999, metadata !580), !dbg !2015
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2033, !tbaa !587
  br i1 %14, label %25, label %26, !dbg !2034

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2035, !tbaa.struct !2037
  br label %26, !dbg !2038

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2039, !tbaa !657
  %28 = sext i32 %27 to i64, !dbg !2040
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2040
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2041
  %31 = sub nsw i32 %20, %27, !dbg !2042
  %32 = sext i32 %31 to i64, !dbg !2043
  %33 = shl nsw i64 %32, 4, !dbg !2044
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2041
  store i32 %20, i32* @nslots, align 4, !dbg !2045, !tbaa !657
  br label %34, !dbg !2046

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1999, metadata !580), !dbg !2015
  %36 = sext i32 %0 to i64, !dbg !2047
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2048
  %38 = load i64, i64* %37, align 8, !dbg !2048, !tbaa !1967
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2003, metadata !580), !dbg !2049
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2050
  %40 = load i8*, i8** %39, align 8, !dbg !2050, !tbaa !1954
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2005, metadata !580), !dbg !2051
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2052
  %42 = load i32, i32* %41, align 4, !dbg !2052, !tbaa !1043
  %43 = or i32 %42, 1, !dbg !2053
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2006, metadata !580), !dbg !2054
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2055
  %45 = load i32, i32* %44, align 8, !dbg !2055, !tbaa !983
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2056
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2057
  %48 = load i8*, i8** %47, align 8, !dbg !2057, !tbaa !1069
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2058
  %50 = load i8*, i8** %49, align 8, !dbg !2058, !tbaa !1072
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2059
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2007, metadata !580), !dbg !2060
  %52 = icmp ugt i64 %38, %51, !dbg !2061
  br i1 %52, label %63, label %53, !dbg !2063

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2064
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2003, metadata !580), !dbg !2049
  store i64 %54, i64* %37, align 8, !dbg !2066, !tbaa !1967
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2067
  br i1 %55, label %57, label %56, !dbg !2069

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2070
  br label %57, !dbg !2070

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1892, metadata !580) #11, !dbg !2071
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2073
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2005, metadata !580), !dbg !2051
  store i8* %58, i8** %39, align 8, !dbg !2074, !tbaa !1954
  %59 = load i32, i32* %44, align 8, !dbg !2075, !tbaa !983
  %60 = load i8*, i8** %47, align 8, !dbg !2076, !tbaa !1069
  %61 = load i8*, i8** %49, align 8, !dbg !2077, !tbaa !1072
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2078
  br label %63, !dbg !2079

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2005, metadata !580), !dbg !2051
  store i32 %6, i32* %5, align 4, !dbg !2080, !tbaa !657
  ret i8* %64, !dbg !2081
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #12

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2082 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2086, metadata !580), !dbg !2089
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2087, metadata !580), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2088, metadata !580), !dbg !2091
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2092
  ret i8* %4, !dbg !2093
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2094 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2096, metadata !580), !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1984, metadata !580) #11, !dbg !2098
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1985, metadata !580) #11, !dbg !2100
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2101
  ret i8* %2, !dbg !2102
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2103 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2107, metadata !580), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2108, metadata !580), !dbg !2110
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2086, metadata !580) #11, !dbg !2111
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2087, metadata !580) #11, !dbg !2113
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2088, metadata !580) #11, !dbg !2114
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2115
  ret i8* %3, !dbg !2116
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2117 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2125, metadata !2131), !dbg !2132
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2121, metadata !580), !dbg !2134
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2122, metadata !580), !dbg !2135
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2123, metadata !580), !dbg !2136
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2137
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2124, metadata !580), !dbg !2138
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2130, metadata !580) #11, !dbg !2139
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2140
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2140
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2125, metadata !580) #11, !dbg !2132
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2125, metadata !2141) #11, !dbg !2132
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2132
  %8 = icmp eq i32 %1, 10, !dbg !2142
  br i1 %8, label %9, label %10, !dbg !2144

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2145, !noalias !2146
  unreachable, !dbg !2145

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2125, metadata !2141) #11, !dbg !2132
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2149
  store i32 %1, i32* %11, align 8, !dbg !2149, !alias.scope !2146
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2149
  %13 = bitcast i32* %12 to i8*, !dbg !2149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2149
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2150
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2124, metadata !580), !dbg !2138
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2151
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2152
  ret i8* %14, !dbg !2153
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2154 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2125, metadata !2131), !dbg !2163
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2158, metadata !580), !dbg !2165
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2159, metadata !580), !dbg !2166
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2160, metadata !580), !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2161, metadata !580), !dbg !2168
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2169
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2169
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2162, metadata !580), !dbg !2170
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2130, metadata !580) #11, !dbg !2171
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2172
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2172
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2125, metadata !580) #11, !dbg !2163
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2125, metadata !2141) #11, !dbg !2163
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2163
  %9 = icmp eq i32 %1, 10, !dbg !2173
  br i1 %9, label %10, label %11, !dbg !2174

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2175, !noalias !2176
  unreachable, !dbg !2175

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2125, metadata !2141) #11, !dbg !2163
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2179
  store i32 %1, i32* %12, align 8, !dbg !2179, !alias.scope !2176
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2179
  %14 = bitcast i32* %13 to i8*, !dbg !2179
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2179
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2180
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2162, metadata !580), !dbg !2170
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2181
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2182
  ret i8* %15, !dbg !2183
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2184 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2125, metadata !2131), !dbg !2190
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2188, metadata !580), !dbg !2193
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2189, metadata !580), !dbg !2194
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2121, metadata !580) #11, !dbg !2195
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2122, metadata !580) #11, !dbg !2196
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2123, metadata !580) #11, !dbg !2197
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2198
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2198
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2124, metadata !580) #11, !dbg !2199
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2130, metadata !580) #11, !dbg !2200
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2201
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2201
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2125, metadata !580) #11, !dbg !2190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2125, metadata !2141) #11, !dbg !2190
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2190
  %7 = icmp eq i32 %0, 10, !dbg !2202
  br i1 %7, label %8, label %9, !dbg !2203

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2204, !noalias !2205
  unreachable, !dbg !2204

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2125, metadata !2141) #11, !dbg !2190
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2208
  store i32 %0, i32* %10, align 8, !dbg !2208, !alias.scope !2205
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2208
  %12 = bitcast i32* %11 to i8*, !dbg !2208
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !2208
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2209
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2124, metadata !580) #11, !dbg !2199
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2210
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2211
  ret i8* %13, !dbg !2212
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2213 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2125, metadata !2131), !dbg !2220
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2217, metadata !580), !dbg !2223
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2218, metadata !580), !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2219, metadata !580), !dbg !2225
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2158, metadata !580) #11, !dbg !2226
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2159, metadata !580) #11, !dbg !2227
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2160, metadata !580) #11, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2161, metadata !580) #11, !dbg !2229
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2230
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2230
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2162, metadata !580) #11, !dbg !2231
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2130, metadata !580) #11, !dbg !2232
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2233
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2233
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2125, metadata !580) #11, !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2125, metadata !2141) #11, !dbg !2220
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2220
  %8 = icmp eq i32 %0, 10, !dbg !2234
  br i1 %8, label %9, label %10, !dbg !2235

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2236, !noalias !2237
  unreachable, !dbg !2236

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2125, metadata !2141) #11, !dbg !2220
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2240
  store i32 %0, i32* %11, align 8, !dbg !2240, !alias.scope !2237
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2240
  %13 = bitcast i32* %12 to i8*, !dbg !2240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2241
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2162, metadata !580) #11, !dbg !2231
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !2242
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2243
  ret i8* %14, !dbg !2244
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2245 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2249, metadata !580), !dbg !2253
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2250, metadata !580), !dbg !2254
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2251, metadata !580), !dbg !2255
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2256
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2257, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2252, metadata !580), !dbg !2259
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1002, metadata !580), !dbg !2260
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1003, metadata !580), !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1004, metadata !580), !dbg !2263
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1005, metadata !580), !dbg !2264
  %6 = lshr i8 %2, 5, !dbg !2265
  %7 = zext i8 %6 to i64, !dbg !2265
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2266
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1006, metadata !580), !dbg !2267
  %9 = and i8 %2, 31, !dbg !2268
  %10 = zext i8 %9 to i32, !dbg !2269
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1008, metadata !580), !dbg !2270
  %11 = load i32, i32* %8, align 4, !dbg !2271, !tbaa !657
  %12 = lshr i32 %11, %10, !dbg !2272
  %13 = and i32 %12, 1, !dbg !2273
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1009, metadata !580), !dbg !2274
  %14 = xor i32 %13, 1, !dbg !2275
  %15 = shl i32 %14, %10, !dbg !2276
  %16 = xor i32 %15, %11, !dbg !2277
  store i32 %16, i32* %8, align 4, !dbg !2277, !tbaa !657
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2252, metadata !580), !dbg !2259
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2278
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2279
  ret i8* %17, !dbg !2280
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2281 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2285, metadata !580), !dbg !2287
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2286, metadata !580), !dbg !2288
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2249, metadata !580) #11, !dbg !2289
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2250, metadata !580) #11, !dbg !2291
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2251, metadata !580) #11, !dbg !2292
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2293
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2293
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2294, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2252, metadata !580) #11, !dbg !2295
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1002, metadata !580) #11, !dbg !2296
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1003, metadata !580) #11, !dbg !2298
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1004, metadata !580) #11, !dbg !2299
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1005, metadata !580) #11, !dbg !2300
  %5 = lshr i8 %1, 5, !dbg !2301
  %6 = zext i8 %5 to i64, !dbg !2301
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2302
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1006, metadata !580) #11, !dbg !2303
  %8 = and i8 %1, 31, !dbg !2304
  %9 = zext i8 %8 to i32, !dbg !2305
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1008, metadata !580) #11, !dbg !2306
  %10 = load i32, i32* %7, align 4, !dbg !2307, !tbaa !657
  %11 = lshr i32 %10, %9, !dbg !2308
  %12 = and i32 %11, 1, !dbg !2309
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1009, metadata !580) #11, !dbg !2310
  %13 = xor i32 %12, 1, !dbg !2311
  %14 = shl i32 %13, %9, !dbg !2312
  %15 = xor i32 %14, %10, !dbg !2313
  store i32 %15, i32* %7, align 4, !dbg !2313, !tbaa !657
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2252, metadata !580) #11, !dbg !2295
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2314
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2315
  ret i8* %16, !dbg !2316
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2317 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2319, metadata !580), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2285, metadata !580) #11, !dbg !2321
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2286, metadata !580) #11, !dbg !2323
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2249, metadata !580) #11, !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2250, metadata !580) #11, !dbg !2326
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2251, metadata !580) #11, !dbg !2327
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2328
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2329, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2252, metadata !580) #11, !dbg !2330
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1002, metadata !580) #11, !dbg !2331
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1003, metadata !580) #11, !dbg !2333
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1004, metadata !580) #11, !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1005, metadata !580) #11, !dbg !2335
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2336
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1006, metadata !580) #11, !dbg !2337
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1008, metadata !580) #11, !dbg !2338
  %5 = load i32, i32* %4, align 4, !dbg !2339, !tbaa !657
  %6 = or i32 %5, 67108864, !dbg !2340
  store i32 %6, i32* %4, align 4, !dbg !2340, !tbaa !657
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2252, metadata !580) #11, !dbg !2330
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2341
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2342
  ret i8* %7, !dbg !2343
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2344 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2346, metadata !580), !dbg !2348
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2347, metadata !580), !dbg !2349
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2249, metadata !580) #11, !dbg !2350
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2250, metadata !580) #11, !dbg !2352
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2251, metadata !580) #11, !dbg !2353
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2354
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2354
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2355, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2252, metadata !580) #11, !dbg !2356
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1002, metadata !580) #11, !dbg !2357
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1003, metadata !580) #11, !dbg !2359
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1004, metadata !580) #11, !dbg !2360
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1005, metadata !580) #11, !dbg !2361
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2362
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1006, metadata !580) #11, !dbg !2363
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1008, metadata !580) #11, !dbg !2364
  %6 = load i32, i32* %5, align 4, !dbg !2365, !tbaa !657
  %7 = or i32 %6, 67108864, !dbg !2366
  store i32 %7, i32* %5, align 4, !dbg !2366, !tbaa !657
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2252, metadata !580) #11, !dbg !2356
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2367
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2368
  ret i8* %8, !dbg !2369
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2370 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2125, metadata !2131), !dbg !2376
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2372, metadata !580), !dbg !2378
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2373, metadata !580), !dbg !2379
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2374, metadata !580), !dbg !2380
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2381
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2381
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2130, metadata !580) #11, !dbg !2382
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2383
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2383
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2125, metadata !580) #11, !dbg !2376
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2125, metadata !2141) #11, !dbg !2376
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2376
  %9 = icmp eq i32 %1, 10, !dbg !2384
  br i1 %9, label %10, label %11, !dbg !2385

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2386, !noalias !2387
  unreachable, !dbg !2386

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2125, metadata !2141) #11, !dbg !2376
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2390
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2391
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2392
  store i32 %1, i32* %13, align 8, !dbg !2392
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2392
  %15 = bitcast i32* %14 to i8*, !dbg !2392
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2392
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2375, metadata !580), !dbg !2393
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1002, metadata !580), !dbg !2394
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1003, metadata !580), !dbg !2396
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1004, metadata !580), !dbg !2397
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1005, metadata !580), !dbg !2398
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2399
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1006, metadata !580), !dbg !2400
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1008, metadata !580), !dbg !2401
  %17 = load i32, i32* %16, align 4, !dbg !2402, !tbaa !657
  %18 = or i32 %17, 67108864, !dbg !2403
  store i32 %18, i32* %16, align 4, !dbg !2403, !tbaa !657
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2375, metadata !580), !dbg !2393
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2404
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2405
  ret i8* %19, !dbg !2406
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2407 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2411, metadata !580), !dbg !2415
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2412, metadata !580), !dbg !2416
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2413, metadata !580), !dbg !2417
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2414, metadata !580), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2419, metadata !580) #11, !dbg !2429
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2424, metadata !580) #11, !dbg !2431
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2425, metadata !580) #11, !dbg !2432
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2426, metadata !580) #11, !dbg !2433
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2427, metadata !580) #11, !dbg !2434
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2435
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2436, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2428, metadata !580) #11, !dbg !2437
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1051, metadata !580) #11, !dbg !2438
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1052, metadata !580) #11, !dbg !2440
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1053, metadata !580) #11, !dbg !2441
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1051, metadata !580) #11, !dbg !2438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1051, metadata !580) #11, !dbg !2438
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2442
  store i32 10, i32* %7, align 8, !dbg !2443, !tbaa !983
  %8 = icmp ne i8* %1, null, !dbg !2444
  %9 = icmp ne i8* %2, null, !dbg !2445
  %10 = and i1 %8, %9, !dbg !2446
  br i1 %10, label %12, label %11, !dbg !2446

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2447
  unreachable, !dbg !2447

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2448
  store i8* %1, i8** %13, align 8, !dbg !2449, !tbaa !1069
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2450
  store i8* %2, i8** %14, align 8, !dbg !2451, !tbaa !1072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2428, metadata !580) #11, !dbg !2437
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2452
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2453
  ret i8* %15, !dbg !2454
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2420 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2419, metadata !580), !dbg !2455
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2424, metadata !580), !dbg !2456
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2425, metadata !580), !dbg !2457
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2426, metadata !580), !dbg !2458
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2427, metadata !580), !dbg !2459
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2460
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2460
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2461, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2428, metadata !580), !dbg !2462
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1051, metadata !580) #11, !dbg !2463
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1052, metadata !580) #11, !dbg !2465
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1053, metadata !580) #11, !dbg !2466
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1051, metadata !580) #11, !dbg !2463
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1051, metadata !580) #11, !dbg !2463
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2467
  store i32 10, i32* %8, align 8, !dbg !2468, !tbaa !983
  %9 = icmp ne i8* %1, null, !dbg !2469
  %10 = icmp ne i8* %2, null, !dbg !2470
  %11 = and i1 %9, %10, !dbg !2471
  br i1 %11, label %13, label %12, !dbg !2471

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2472
  unreachable, !dbg !2472

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2473
  store i8* %1, i8** %14, align 8, !dbg !2474, !tbaa !1069
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2475
  store i8* %2, i8** %15, align 8, !dbg !2476, !tbaa !1072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2428, metadata !580), !dbg !2462
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2477
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2478
  ret i8* %16, !dbg !2479
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2480 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2484, metadata !580), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2485, metadata !580), !dbg !2488
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2486, metadata !580), !dbg !2489
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2411, metadata !580) #11, !dbg !2490
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2412, metadata !580) #11, !dbg !2492
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2413, metadata !580) #11, !dbg !2493
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2414, metadata !580) #11, !dbg !2494
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2419, metadata !580) #11, !dbg !2495
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2424, metadata !580) #11, !dbg !2497
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2425, metadata !580) #11, !dbg !2498
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2426, metadata !580) #11, !dbg !2499
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2427, metadata !580) #11, !dbg !2500
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2501
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2502, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2428, metadata !580) #11, !dbg !2503
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1051, metadata !580) #11, !dbg !2504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1052, metadata !580) #11, !dbg !2506
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1053, metadata !580) #11, !dbg !2507
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1051, metadata !580) #11, !dbg !2504
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1051, metadata !580) #11, !dbg !2504
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2508
  store i32 10, i32* %6, align 8, !dbg !2509, !tbaa !983
  %7 = icmp ne i8* %0, null, !dbg !2510
  %8 = icmp ne i8* %1, null, !dbg !2511
  %9 = and i1 %7, %8, !dbg !2512
  br i1 %9, label %11, label %10, !dbg !2512

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2513
  unreachable, !dbg !2513

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2514
  store i8* %0, i8** %12, align 8, !dbg !2515, !tbaa !1069
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2516
  store i8* %1, i8** %13, align 8, !dbg !2517, !tbaa !1072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2428, metadata !580) #11, !dbg !2503
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2518
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2519
  ret i8* %14, !dbg !2520
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2521 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2525, metadata !580), !dbg !2529
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2526, metadata !580), !dbg !2530
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2527, metadata !580), !dbg !2531
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2528, metadata !580), !dbg !2532
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2419, metadata !580) #11, !dbg !2533
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2424, metadata !580) #11, !dbg !2535
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2425, metadata !580) #11, !dbg !2536
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2426, metadata !580) #11, !dbg !2537
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2427, metadata !580) #11, !dbg !2538
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2539
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !2540, !tbaa.struct !2258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2428, metadata !580) #11, !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1051, metadata !580) #11, !dbg !2542
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1052, metadata !580) #11, !dbg !2544
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1053, metadata !580) #11, !dbg !2545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1051, metadata !580) #11, !dbg !2542
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1051, metadata !580) #11, !dbg !2542
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2546
  store i32 10, i32* %7, align 8, !dbg !2547, !tbaa !983
  %8 = icmp ne i8* %0, null, !dbg !2548
  %9 = icmp ne i8* %1, null, !dbg !2549
  %10 = and i1 %8, %9, !dbg !2550
  br i1 %10, label %12, label %11, !dbg !2550

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2551
  unreachable, !dbg !2551

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2552
  store i8* %0, i8** %13, align 8, !dbg !2553, !tbaa !1069
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2554
  store i8* %1, i8** %14, align 8, !dbg !2555, !tbaa !1072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2428, metadata !580) #11, !dbg !2541
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2556
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2557
  ret i8* %15, !dbg !2558
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2559 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2563, metadata !580), !dbg !2566
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2564, metadata !580), !dbg !2567
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2565, metadata !580), !dbg !2568
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2569
  ret i8* %4, !dbg !2570
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2571 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2575, metadata !580), !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2576, metadata !580), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2563, metadata !580) #11, !dbg !2579
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2564, metadata !580) #11, !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2565, metadata !580) #11, !dbg !2582
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2583
  ret i8* %3, !dbg !2584
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2585 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2589, metadata !580), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2590, metadata !580), !dbg !2592
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2563, metadata !580) #11, !dbg !2593
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2564, metadata !580) #11, !dbg !2595
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2565, metadata !580) #11, !dbg !2596
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2597
  ret i8* %3, !dbg !2598
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2599 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2603, metadata !580), !dbg !2604
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2589, metadata !580) #11, !dbg !2605
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2590, metadata !580) #11, !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2563, metadata !580) #11, !dbg !2608
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2564, metadata !580) #11, !dbg !2610
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2565, metadata !580) #11, !dbg !2611
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2612
  ret i8* %2, !dbg !2613
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2614 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2674, metadata !580), !dbg !2680
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2675, metadata !580), !dbg !2681
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2676, metadata !580), !dbg !2682
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2677, metadata !580), !dbg !2683
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2678, metadata !580), !dbg !2684
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2679, metadata !580), !dbg !2685
  %7 = icmp eq i8* %1, null, !dbg !2686
  br i1 %7, label %10, label %8, !dbg !2688

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !2689
  br label %12, !dbg !2689

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.61, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !2690
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i32 5) #11, !dbg !2691
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !2691
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.63, i64 0, i64 0), i32 5) #11, !dbg !2692
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !2692
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
  ], !dbg !2693

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2694
  unreachable, !dbg !2694

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.64, i64 0, i64 0), i32 5) #11, !dbg !2696
  %20 = load i8*, i8** %4, align 8, !dbg !2696, !tbaa !587
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !2696
  br label %146, !dbg !2697

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.65, i64 0, i64 0), i32 5) #11, !dbg !2698
  %24 = load i8*, i8** %4, align 8, !dbg !2698, !tbaa !587
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2698
  %26 = load i8*, i8** %25, align 8, !dbg !2698, !tbaa !587
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !2698
  br label %146, !dbg !2699

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.66, i64 0, i64 0), i32 5) #11, !dbg !2700
  %30 = load i8*, i8** %4, align 8, !dbg !2700, !tbaa !587
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2700
  %32 = load i8*, i8** %31, align 8, !dbg !2700, !tbaa !587
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2700
  %34 = load i8*, i8** %33, align 8, !dbg !2700, !tbaa !587
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !2700
  br label %146, !dbg !2701

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.67, i64 0, i64 0), i32 5) #11, !dbg !2702
  %38 = load i8*, i8** %4, align 8, !dbg !2702, !tbaa !587
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2702
  %40 = load i8*, i8** %39, align 8, !dbg !2702, !tbaa !587
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2702
  %42 = load i8*, i8** %41, align 8, !dbg !2702, !tbaa !587
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2702
  %44 = load i8*, i8** %43, align 8, !dbg !2702, !tbaa !587
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !2702
  br label %146, !dbg !2703

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.68, i64 0, i64 0), i32 5) #11, !dbg !2704
  %48 = load i8*, i8** %4, align 8, !dbg !2704, !tbaa !587
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2704
  %50 = load i8*, i8** %49, align 8, !dbg !2704, !tbaa !587
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2704
  %52 = load i8*, i8** %51, align 8, !dbg !2704, !tbaa !587
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2704
  %54 = load i8*, i8** %53, align 8, !dbg !2704, !tbaa !587
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2704
  %56 = load i8*, i8** %55, align 8, !dbg !2704, !tbaa !587
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !2704
  br label %146, !dbg !2705

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.69, i64 0, i64 0), i32 5) #11, !dbg !2706
  %60 = load i8*, i8** %4, align 8, !dbg !2706, !tbaa !587
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2706
  %62 = load i8*, i8** %61, align 8, !dbg !2706, !tbaa !587
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2706
  %64 = load i8*, i8** %63, align 8, !dbg !2706, !tbaa !587
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2706
  %66 = load i8*, i8** %65, align 8, !dbg !2706, !tbaa !587
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2706
  %68 = load i8*, i8** %67, align 8, !dbg !2706, !tbaa !587
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2706
  %70 = load i8*, i8** %69, align 8, !dbg !2706, !tbaa !587
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !2706
  br label %146, !dbg !2707

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.70, i64 0, i64 0), i32 5) #11, !dbg !2708
  %74 = load i8*, i8** %4, align 8, !dbg !2708, !tbaa !587
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2708
  %76 = load i8*, i8** %75, align 8, !dbg !2708, !tbaa !587
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2708
  %78 = load i8*, i8** %77, align 8, !dbg !2708, !tbaa !587
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2708
  %80 = load i8*, i8** %79, align 8, !dbg !2708, !tbaa !587
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2708
  %82 = load i8*, i8** %81, align 8, !dbg !2708, !tbaa !587
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2708
  %84 = load i8*, i8** %83, align 8, !dbg !2708, !tbaa !587
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2708
  %86 = load i8*, i8** %85, align 8, !dbg !2708, !tbaa !587
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !2708
  br label %146, !dbg !2709

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.71, i64 0, i64 0), i32 5) #11, !dbg !2710
  %90 = load i8*, i8** %4, align 8, !dbg !2710, !tbaa !587
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2710
  %92 = load i8*, i8** %91, align 8, !dbg !2710, !tbaa !587
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2710
  %94 = load i8*, i8** %93, align 8, !dbg !2710, !tbaa !587
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2710
  %96 = load i8*, i8** %95, align 8, !dbg !2710, !tbaa !587
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2710
  %98 = load i8*, i8** %97, align 8, !dbg !2710, !tbaa !587
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2710
  %100 = load i8*, i8** %99, align 8, !dbg !2710, !tbaa !587
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2710
  %102 = load i8*, i8** %101, align 8, !dbg !2710, !tbaa !587
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2710
  %104 = load i8*, i8** %103, align 8, !dbg !2710, !tbaa !587
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !2710
  br label %146, !dbg !2711

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.72, i64 0, i64 0), i32 5) #11, !dbg !2712
  %108 = load i8*, i8** %4, align 8, !dbg !2712, !tbaa !587
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2712
  %110 = load i8*, i8** %109, align 8, !dbg !2712, !tbaa !587
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2712
  %112 = load i8*, i8** %111, align 8, !dbg !2712, !tbaa !587
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2712
  %114 = load i8*, i8** %113, align 8, !dbg !2712, !tbaa !587
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2712
  %116 = load i8*, i8** %115, align 8, !dbg !2712, !tbaa !587
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2712
  %118 = load i8*, i8** %117, align 8, !dbg !2712, !tbaa !587
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2712
  %120 = load i8*, i8** %119, align 8, !dbg !2712, !tbaa !587
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2712
  %122 = load i8*, i8** %121, align 8, !dbg !2712, !tbaa !587
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2712
  %124 = load i8*, i8** %123, align 8, !dbg !2712, !tbaa !587
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !2712
  br label %146, !dbg !2713

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.73, i64 0, i64 0), i32 5) #11, !dbg !2714
  %128 = load i8*, i8** %4, align 8, !dbg !2714, !tbaa !587
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2714
  %130 = load i8*, i8** %129, align 8, !dbg !2714, !tbaa !587
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2714
  %132 = load i8*, i8** %131, align 8, !dbg !2714, !tbaa !587
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2714
  %134 = load i8*, i8** %133, align 8, !dbg !2714, !tbaa !587
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2714
  %136 = load i8*, i8** %135, align 8, !dbg !2714, !tbaa !587
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2714
  %138 = load i8*, i8** %137, align 8, !dbg !2714, !tbaa !587
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2714
  %140 = load i8*, i8** %139, align 8, !dbg !2714, !tbaa !587
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2714
  %142 = load i8*, i8** %141, align 8, !dbg !2714, !tbaa !587
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2714
  %144 = load i8*, i8** %143, align 8, !dbg !2714, !tbaa !587
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !2714
  br label %146, !dbg !2715

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2717 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2721, metadata !580), !dbg !2727
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2722, metadata !580), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2723, metadata !580), !dbg !2729
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2724, metadata !580), !dbg !2730
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2725, metadata !580), !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2726, metadata !580), !dbg !2732
  br label %6, !dbg !2733

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2726, metadata !580), !dbg !2732
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2735
  %9 = load i8*, i8** %8, align 8, !dbg !2735, !tbaa !587
  %10 = icmp eq i8* %9, null, !dbg !2737
  %11 = add i64 %7, 1, !dbg !2738
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2726, metadata !580), !dbg !2732
  br i1 %10, label %12, label %6, !dbg !2737, !llvm.loop !2739

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2741
  ret void, !dbg !2742
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2743 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2754, metadata !580), !dbg !2762
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2755, metadata !580), !dbg !2763
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2756, metadata !580), !dbg !2764
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2757, metadata !580), !dbg !2765
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2758, metadata !580), !dbg !2766
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2767
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2767
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2760, metadata !580), !dbg !2768
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  %11 = load i32, i32* %8, align 8, !dbg !2770
  %12 = icmp ult i32 %11, 41, !dbg !2770
  br i1 %12, label %13, label %18, !dbg !2770

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2770
  %15 = sext i32 %11 to i64, !dbg !2770
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2770
  %17 = add i32 %11, 8, !dbg !2770
  store i32 %17, i32* %8, align 8, !dbg !2770
  br label %21, !dbg !2770

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2770
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2770
  store i8* %20, i8** %10, align 8, !dbg !2770
  br label %21, !dbg !2770

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2770
  %25 = load i8*, i8** %24, align 8, !dbg !2770
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2773
  store i8* %25, i8** %26, align 16, !dbg !2774, !tbaa !587
  %27 = icmp eq i8* %25, null, !dbg !2775
  br i1 %27, label %30, label %28, !dbg !2776

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  %29 = icmp ult i32 %22, 41, !dbg !2770
  br i1 %29, label %35, label %32, !dbg !2770

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2777
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2778
  ret void, !dbg !2778

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2770
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2770
  store i8* %34, i8** %10, align 8, !dbg !2770
  br label %40, !dbg !2770

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2770
  %37 = sext i32 %22 to i64, !dbg !2770
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2770
  %39 = add i32 %22, 8, !dbg !2770
  store i32 %39, i32* %8, align 8, !dbg !2770
  br label %40, !dbg !2770

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2770
  %44 = load i8*, i8** %43, align 8, !dbg !2770
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2773
  store i8* %44, i8** %45, align 8, !dbg !2774, !tbaa !587
  %46 = icmp eq i8* %44, null, !dbg !2775
  br i1 %46, label %30, label %47, !dbg !2776

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  %48 = icmp ult i32 %41, 41, !dbg !2770
  br i1 %48, label %52, label %49, !dbg !2770

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2770
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2770
  store i8* %51, i8** %10, align 8, !dbg !2770
  br label %57, !dbg !2770

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2770
  %54 = sext i32 %41 to i64, !dbg !2770
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2770
  %56 = add i32 %41, 8, !dbg !2770
  store i32 %56, i32* %8, align 8, !dbg !2770
  br label %57, !dbg !2770

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2770
  %61 = load i8*, i8** %60, align 8, !dbg !2770
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2773
  store i8* %61, i8** %62, align 16, !dbg !2774, !tbaa !587
  %63 = icmp eq i8* %61, null, !dbg !2775
  br i1 %63, label %30, label %64, !dbg !2776

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  %65 = icmp ult i32 %58, 41, !dbg !2770
  br i1 %65, label %69, label %66, !dbg !2770

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2770
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2770
  store i8* %68, i8** %10, align 8, !dbg !2770
  br label %74, !dbg !2770

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2770
  %71 = sext i32 %58 to i64, !dbg !2770
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2770
  %73 = add i32 %58, 8, !dbg !2770
  store i32 %73, i32* %8, align 8, !dbg !2770
  br label %74, !dbg !2770

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2770
  %78 = load i8*, i8** %77, align 8, !dbg !2770
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2773
  store i8* %78, i8** %79, align 8, !dbg !2774, !tbaa !587
  %80 = icmp eq i8* %78, null, !dbg !2775
  br i1 %80, label %30, label %81, !dbg !2776

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  %82 = icmp ult i32 %75, 41, !dbg !2770
  br i1 %82, label %86, label %83, !dbg !2770

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2770
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2770
  store i8* %85, i8** %10, align 8, !dbg !2770
  br label %91, !dbg !2770

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2770
  %88 = sext i32 %75 to i64, !dbg !2770
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2770
  %90 = add i32 %75, 8, !dbg !2770
  store i32 %90, i32* %8, align 8, !dbg !2770
  br label %91, !dbg !2770

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2770
  %95 = load i8*, i8** %94, align 8, !dbg !2770
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2773
  store i8* %95, i8** %96, align 16, !dbg !2774, !tbaa !587
  %97 = icmp eq i8* %95, null, !dbg !2775
  br i1 %97, label %30, label %98, !dbg !2776

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  %99 = icmp ult i32 %92, 41, !dbg !2770
  br i1 %99, label %103, label %100, !dbg !2770

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2770
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2770
  store i8* %102, i8** %10, align 8, !dbg !2770
  br label %108, !dbg !2770

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2770
  %105 = sext i32 %92 to i64, !dbg !2770
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2770
  %107 = add i32 %92, 8, !dbg !2770
  store i32 %107, i32* %8, align 8, !dbg !2770
  br label %108, !dbg !2770

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2770
  %111 = load i8*, i8** %110, align 8, !dbg !2770
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2773
  store i8* %111, i8** %112, align 8, !dbg !2774, !tbaa !587
  %113 = icmp eq i8* %111, null, !dbg !2775
  br i1 %113, label %30, label %114, !dbg !2776

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  %115 = load i8*, i8** %10, align 8, !dbg !2770
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2770
  store i8* %116, i8** %10, align 8, !dbg !2770
  %117 = bitcast i8* %115 to i8**, !dbg !2770
  %118 = load i8*, i8** %117, align 8, !dbg !2770
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2773
  store i8* %118, i8** %119, align 16, !dbg !2774, !tbaa !587
  %120 = icmp eq i8* %118, null, !dbg !2775
  br i1 %120, label %30, label %121, !dbg !2776

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  %122 = load i8*, i8** %10, align 8, !dbg !2770
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2770
  store i8* %123, i8** %10, align 8, !dbg !2770
  %124 = bitcast i8* %122 to i8**, !dbg !2770
  %125 = load i8*, i8** %124, align 8, !dbg !2770
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2773
  store i8* %125, i8** %126, align 8, !dbg !2774, !tbaa !587
  %127 = icmp eq i8* %125, null, !dbg !2775
  br i1 %127, label %30, label %128, !dbg !2776

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  %129 = load i8*, i8** %10, align 8, !dbg !2770
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2770
  store i8* %130, i8** %10, align 8, !dbg !2770
  %131 = bitcast i8* %129 to i8**, !dbg !2770
  %132 = load i8*, i8** %131, align 8, !dbg !2770
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2773
  store i8* %132, i8** %133, align 16, !dbg !2774, !tbaa !587
  %134 = icmp eq i8* %132, null, !dbg !2775
  br i1 %134, label %30, label %135, !dbg !2776

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !580), !dbg !2769
  %136 = load i8*, i8** %10, align 8, !dbg !2770
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2770
  store i8* %137, i8** %10, align 8, !dbg !2770
  %138 = bitcast i8* %136 to i8**, !dbg !2770
  %139 = load i8*, i8** %138, align 8, !dbg !2770
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2773
  store i8* %139, i8** %140, align 8, !dbg !2774, !tbaa !587
  %141 = icmp eq i8* %139, null, !dbg !2775
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2759, metadata !580), !dbg !2769
  %142 = select i1 %141, i64 9, i64 10, !dbg !2776
  br label %30, !dbg !2776
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2779 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2783, metadata !580), !dbg !2794
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2784, metadata !580), !dbg !2795
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2785, metadata !580), !dbg !2796
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2786, metadata !580), !dbg !2797
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2798
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2798
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2787, metadata !580), !dbg !2799
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2800
  call void @llvm.va_start(i8* nonnull %6), !dbg !2800
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2801
  call void @llvm.va_end(i8* nonnull %6), !dbg !2802
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2803
  ret void, !dbg !2803
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2804 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.76, i64 0, i64 0), i32 5) #11, !dbg !2805
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.77, i64 0, i64 0)) #11, !dbg !2805
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.78, i64 0, i64 0), i32 5) #11, !dbg !2806
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.80, i64 0, i64 0)) #11, !dbg !2806
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !2807
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2807, !tbaa !587
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !2807
  ret void, !dbg !2808
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2809 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2813, metadata !580), !dbg !2815
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2814, metadata !580), !dbg !2816
  %3 = udiv i64 9223372036854775807, %1, !dbg !2817
  %4 = icmp ult i64 %3, %0, !dbg !2817
  br i1 %4, label %5, label %6, !dbg !2819

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2820
  unreachable, !dbg !2820

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2821
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2822, metadata !580) #11, !dbg !2829
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !2831
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2828, metadata !580) #11, !dbg !2832
  %9 = icmp eq i8* %8, null, !dbg !2833
  %10 = icmp ne i64 %7, 0, !dbg !2835
  %11 = and i1 %10, %9, !dbg !2836
  br i1 %11, label %12, label %13, !dbg !2836

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2837
  unreachable, !dbg !2837

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2838
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2823 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2822, metadata !580), !dbg !2839
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2840
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2828, metadata !580), !dbg !2841
  %3 = icmp eq i8* %2, null, !dbg !2842
  %4 = icmp ne i64 %0, 0, !dbg !2843
  %5 = and i1 %4, %3, !dbg !2844
  br i1 %5, label %6, label %7, !dbg !2844

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2845
  unreachable, !dbg !2845

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2846
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2847 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2851, metadata !580), !dbg !2854
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2852, metadata !580), !dbg !2855
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2853, metadata !580), !dbg !2856
  %4 = udiv i64 9223372036854775807, %2, !dbg !2857
  %5 = icmp ult i64 %4, %1, !dbg !2857
  br i1 %5, label %6, label %7, !dbg !2859

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2860
  unreachable, !dbg !2860

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2861
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2862, metadata !580) #11, !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2867, metadata !580) #11, !dbg !2870
  %9 = icmp eq i64 %8, 0, !dbg !2871
  %10 = icmp ne i8* %0, null, !dbg !2873
  %11 = and i1 %10, %9, !dbg !2874
  br i1 %11, label %12, label %13, !dbg !2874

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !2875
  br label %19, !dbg !2877

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !2878
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2862, metadata !580) #11, !dbg !2868
  %15 = icmp eq i8* %14, null, !dbg !2879
  %16 = icmp ne i64 %8, 0, !dbg !2881
  %17 = and i1 %16, %15, !dbg !2882
  br i1 %17, label %18, label %19, !dbg !2882

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2883
  unreachable, !dbg !2883

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2884
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2863 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2862, metadata !580), !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2867, metadata !580), !dbg !2886
  %3 = icmp eq i64 %1, 0, !dbg !2887
  %4 = icmp ne i8* %0, null, !dbg !2888
  %5 = and i1 %4, %3, !dbg !2889
  br i1 %5, label %6, label %7, !dbg !2889

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !2890
  br label %13, !dbg !2891

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !2892
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2862, metadata !580), !dbg !2885
  %9 = icmp eq i8* %8, null, !dbg !2893
  %10 = icmp ne i64 %1, 0, !dbg !2894
  %11 = and i1 %10, %9, !dbg !2895
  br i1 %11, label %12, label %13, !dbg !2895

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2896
  unreachable, !dbg !2896

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2897
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !538 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !543, metadata !580), !dbg !2898
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !544, metadata !580), !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !545, metadata !580), !dbg !2900
  %4 = load i64, i64* %1, align 8, !dbg !2901, !tbaa !1938
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !546, metadata !580), !dbg !2902
  %5 = icmp eq i8* %0, null, !dbg !2903
  br i1 %5, label %6, label %13, !dbg !2905

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2906
  br i1 %7, label %8, label %17, !dbg !2909

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2910
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !546, metadata !580), !dbg !2902
  %10 = icmp ugt i64 %2, 128, !dbg !2912
  %11 = zext i1 %10 to i64, !dbg !2912
  %12 = add nuw nsw i64 %9, %11, !dbg !2913
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !546, metadata !580), !dbg !2902
  br label %17, !dbg !2914

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2915
  %15 = icmp ugt i64 %14, %4, !dbg !2918
  br i1 %15, label %20, label %16, !dbg !2919

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2920
  unreachable, !dbg !2920

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !546, metadata !580), !dbg !2902
  store i64 %18, i64* %1, align 8, !dbg !2921, !tbaa !1938
  %19 = mul i64 %18, %2, !dbg !2922
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2862, metadata !580) #11, !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2867, metadata !580) #11, !dbg !2925
  br label %27, !dbg !2926

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2927
  %22 = add i64 %4, 1, !dbg !2928
  %23 = add i64 %22, %21, !dbg !2929
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !546, metadata !580), !dbg !2902
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !546, metadata !580), !dbg !2902
  store i64 %23, i64* %1, align 8, !dbg !2921, !tbaa !1938
  %24 = mul i64 %23, %2, !dbg !2922
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2862, metadata !580) #11, !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2867, metadata !580) #11, !dbg !2925
  %25 = icmp eq i64 %24, 0, !dbg !2930
  br i1 %25, label %26, label %27, !dbg !2926

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !2931
  br label %34, !dbg !2932

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !2933
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2862, metadata !580) #11, !dbg !2923
  %30 = icmp eq i8* %29, null, !dbg !2934
  %31 = icmp ne i64 %28, 0, !dbg !2935
  %32 = and i1 %31, %30, !dbg !2936
  br i1 %32, label %33, label %34, !dbg !2936

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2937
  unreachable, !dbg !2937

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2938
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2939 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2941, metadata !580), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2822, metadata !580) #11, !dbg !2943
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2945
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2828, metadata !580) #11, !dbg !2946
  %3 = icmp eq i8* %2, null, !dbg !2947
  %4 = icmp ne i64 %0, 0, !dbg !2948
  %5 = and i1 %4, %3, !dbg !2949
  br i1 %5, label %6, label %7, !dbg !2949

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2950
  unreachable, !dbg !2950

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2951
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2952 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2956, metadata !580), !dbg !2958
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2957, metadata !580), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !543, metadata !580) #11, !dbg !2960
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !544, metadata !580) #11, !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !545, metadata !580) #11, !dbg !2963
  %3 = load i64, i64* %1, align 8, !dbg !2964, !tbaa !1938
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !546, metadata !580) #11, !dbg !2965
  %4 = icmp eq i8* %0, null, !dbg !2966
  br i1 %4, label %5, label %8, !dbg !2967

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !546, metadata !580) #11, !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !546, metadata !580) #11, !dbg !2965
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2969
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !546, metadata !580) #11, !dbg !2965
  store i64 %7, i64* %1, align 8, !dbg !2970, !tbaa !1938
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2862, metadata !580) #11, !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2867, metadata !580) #11, !dbg !2973
  br label %17, !dbg !2974

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2975
  br i1 %9, label %11, label %10, !dbg !2976

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2977
  unreachable, !dbg !2977

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2978
  %13 = add i64 %3, 1, !dbg !2979
  %14 = add i64 %13, %12, !dbg !2980
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !546, metadata !580) #11, !dbg !2965
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !546, metadata !580) #11, !dbg !2965
  store i64 %14, i64* %1, align 8, !dbg !2970, !tbaa !1938
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2862, metadata !580) #11, !dbg !2971
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2867, metadata !580) #11, !dbg !2973
  %15 = icmp eq i64 %14, 0, !dbg !2981
  br i1 %15, label %16, label %17, !dbg !2974

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !2982
  br label %24, !dbg !2983

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !2984
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2862, metadata !580) #11, !dbg !2971
  %20 = icmp eq i8* %19, null, !dbg !2985
  %21 = icmp ne i64 %18, 0, !dbg !2986
  %22 = and i1 %21, %20, !dbg !2987
  br i1 %22, label %23, label %24, !dbg !2987

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2988
  unreachable, !dbg !2988

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2989
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2990 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2992, metadata !580), !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2822, metadata !580) #11, !dbg !2994
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2996
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2828, metadata !580) #11, !dbg !2997
  %3 = icmp eq i8* %2, null, !dbg !2998
  %4 = icmp ne i64 %0, 0, !dbg !2999
  %5 = and i1 %4, %3, !dbg !3000
  br i1 %5, label %6, label %7, !dbg !3000

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3001
  unreachable, !dbg !3001

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3002
  ret i8* %2, !dbg !3003
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3004 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3006, metadata !580), !dbg !3009
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3007, metadata !580), !dbg !3010
  %3 = udiv i64 9223372036854775807, %1, !dbg !3011
  %4 = icmp ult i64 %3, %0, !dbg !3011
  br i1 %4, label %8, label %5, !dbg !3013

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3014
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3008, metadata !580), !dbg !3015
  %7 = icmp eq i8* %6, null, !dbg !3016
  br i1 %7, label %8, label %9, !dbg !3017

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3018
  unreachable, !dbg !3018

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3019
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3020 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3026, metadata !580), !dbg !3028
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3027, metadata !580), !dbg !3029
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2822, metadata !580) #11, !dbg !3030
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3032
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2828, metadata !580) #11, !dbg !3033
  %4 = icmp eq i8* %3, null, !dbg !3034
  %5 = icmp ne i64 %1, 0, !dbg !3035
  %6 = and i1 %5, %4, !dbg !3036
  br i1 %6, label %7, label %8, !dbg !3036

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3037
  unreachable, !dbg !3037

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3038
  ret i8* %3, !dbg !3039
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3040 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3042, metadata !580), !dbg !3043
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3044
  %3 = add i64 %2, 1, !dbg !3045
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3026, metadata !580) #11, !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3027, metadata !580) #11, !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2822, metadata !580) #11, !dbg !3049
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3051
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2828, metadata !580) #11, !dbg !3052
  %5 = icmp eq i8* %4, null, !dbg !3053
  %6 = icmp ne i64 %3, 0, !dbg !3054
  %7 = and i1 %6, %5, !dbg !3055
  br i1 %7, label %8, label %9, !dbg !3055

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3056
  unreachable, !dbg !3056

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !3057
  ret i8* %4, !dbg !3058
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3059 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3061, !tbaa !657
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.91, i64 0, i64 0), i32 5) #11, !dbg !3062
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i64 0, i64 0), i8* %2) #11, !dbg !3063
  tail call void @abort() #15, !dbg !3064
  unreachable, !dbg !3064
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3065 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3068, metadata !580), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3069, metadata !580), !dbg !3072
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #11, !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3070, metadata !580), !dbg !3074
  %4 = icmp eq i8* %3, null, !dbg !3075
  br i1 %4, label %5, label %6, !dbg !3077

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3078
  unreachable, !dbg !3078

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !3079
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !3080 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3083, metadata !580), !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3084, metadata !580), !dbg !3090
  %3 = icmp eq i64 %0, 0, !dbg !3091
  %4 = icmp eq i64 %1, 0, !dbg !3092
  %5 = or i1 %3, %4, !dbg !3093
  br i1 %5, label %12, label %6, !dbg !3093

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3094
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3086, metadata !580), !dbg !3095
  %8 = udiv i64 %7, %1, !dbg !3096
  %9 = icmp eq i64 %8, %0, !dbg !3098
  br i1 %9, label %12, label %10, !dbg !3099

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3100
  store i32 12, i32* %11, align 4, !dbg !3102, !tbaa !657
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3083, metadata !580), !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !3084, metadata !580), !dbg !3090
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3103
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !3085, metadata !580), !dbg !3104
  br label %16, !dbg !3105

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !3106
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !3107 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !3124, metadata !580), !dbg !3133
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3125, metadata !580), !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3126, metadata !580), !dbg !3135
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !3127, metadata !580), !dbg !3136
  %6 = bitcast i32* %5 to i8*, !dbg !3137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3137
  %7 = icmp eq i32* %0, null, !dbg !3138
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3124, metadata !580), !dbg !3133
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3140
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3124, metadata !580), !dbg !3133
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !3128, metadata !580), !dbg !3142
  %10 = icmp ugt i64 %9, -3, !dbg !3143
  %11 = icmp ne i64 %2, 0, !dbg !3144
  %12 = and i1 %11, %10, !dbg !3145
  br i1 %12, label %13, label %18, !dbg !3145

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3146
  br i1 %14, label %18, label %15, !dbg !3147

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3148, !tbaa !716
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !3130, metadata !580), !dbg !3149
  %17 = zext i8 %16 to i32, !dbg !3150
  store i32 %17, i32* %8, align 4, !dbg !3151, !tbaa !657
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3152
  ret i64 %19, !dbg !3152
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3153 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3198, metadata !580), !dbg !3203
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3204
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3205, metadata !580), !dbg !3208
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3210
  %4 = load i32, i32* %3, align 8, !dbg !3210, !tbaa !3211
  %5 = and i32 %4, 32, !dbg !3210
  %6 = icmp eq i32 %5, 0, !dbg !3212
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3213
  %8 = icmp ne i32 %7, 0, !dbg !3214
  br i1 %6, label %9, label %19, !dbg !3215

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3217
  %11 = xor i1 %8, true, !dbg !3218
  %12 = or i1 %10, %11, !dbg !3218
  %13 = sext i1 %8 to i32, !dbg !3218
  br i1 %12, label %22, label %14, !dbg !3218

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3219
  %16 = load i32, i32* %15, align 4, !dbg !3219, !tbaa !657
  %17 = icmp ne i32 %16, 9, !dbg !3220
  %18 = sext i1 %17 to i32, !dbg !3221
  br label %22, !dbg !3221

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3222

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3224
  store i32 0, i32* %21, align 4, !dbg !3226, !tbaa !657
  br label %22, !dbg !3224

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3227
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3228 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3233, metadata !580), !dbg !3236
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3234, metadata !580), !dbg !3237
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3238
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3235, metadata !580), !dbg !3239
  %3 = icmp eq i8* %2, null, !dbg !3240
  br i1 %3, label %11, label %4, !dbg !3242

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i64 0, i64 0)) #14, !dbg !3243
  %6 = icmp eq i32 %5, 0, !dbg !3248
  br i1 %6, label %10, label %7, !dbg !3249

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.104, i64 0, i64 0)) #14, !dbg !3250
  %9 = icmp eq i32 %8, 0, !dbg !3251
  br i1 %9, label %10, label %11, !dbg !3252

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3234, metadata !580), !dbg !3237
  br label %11, !dbg !3253

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3254
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3255 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3261, metadata !580), !dbg !3335
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3328, metadata !580), !dbg !3338
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3339
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3259, metadata !580), !dbg !3340
  %4 = icmp eq i8* %3, null, !dbg !3341
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.107, i64 0, i64 0), i8* %3, !dbg !3343
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3259, metadata !580), !dbg !3340
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3344, !tbaa !587
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3275, metadata !580) #11, !dbg !3345
  %7 = icmp eq i8* %6, null, !dbg !3346
  br i1 %7, label %8, label %123, !dbg !3347

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.108, i64 0, i64 0)) #11, !dbg !3348
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3276, metadata !580) #11, !dbg !3349
  %10 = icmp eq i8* %9, null, !dbg !3350
  br i1 %10, label %14, label %11, !dbg !3352

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3353, !tbaa !716
  %13 = icmp eq i8 %12, 0, !dbg !3354
  br i1 %13, label %14, label %15, !dbg !3355

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3356

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.109, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3276, metadata !580) #11, !dbg !3349
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3279, metadata !580) #11, !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3281, metadata !580) #11, !dbg !3359
  %18 = icmp eq i64 %17, 0, !dbg !3360
  br i1 %18, label %24, label %19, !dbg !3361

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3362
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3362
  %22 = load i8, i8* %21, align 1, !dbg !3362, !tbaa !716
  %23 = icmp ne i8 %22, 47, !dbg !3362
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3363
  %27 = add i64 %17, 14, !dbg !3364
  %28 = add i64 %27, %26, !dbg !3365
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !3366
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3278, metadata !580) #11, !dbg !3367
  %30 = icmp eq i8* %29, null, !dbg !3368
  br i1 %30, label %121, label %31, !dbg !3368

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !3369
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3372

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3373, !tbaa !716
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3375
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.110, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3376
  br label %37, !dbg !3377

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3375
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.110, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !3376
  br label %37, !dbg !3377

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !3378
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3283, metadata !580) #11, !dbg !3379
  %39 = icmp slt i32 %38, 0, !dbg !3380
  br i1 %39, label %119, label %40, !dbg !3381

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.111, i64 0, i64 0)) #11, !dbg !3382
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3284, metadata !580) #11, !dbg !3383
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3384
  br i1 %42, label %43, label %45, !dbg !3385

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #11, !dbg !3386
  br label %119, !dbg !3388

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3325, metadata !580) #11, !dbg !3389
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3326, metadata !580) #11, !dbg !3390
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3391

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3392

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3325, metadata !580) #11, !dbg !3389
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3326, metadata !580) #11, !dbg !3390
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3392
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3393
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3394, metadata !580) #11, !dbg !3399
  %54 = load i8*, i8** %48, align 8, !dbg !3401, !tbaa !3402
  %55 = load i8*, i8** %49, align 8, !dbg !3401, !tbaa !3403
  %56 = icmp ult i8* %54, %55, !dbg !3401
  br i1 %56, label %59, label %57, !dbg !3401, !prof !769

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3401
  br label %63, !dbg !3401

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3401
  store i8* %60, i8** %48, align 8, !dbg !3401, !tbaa !3402
  %61 = load i8, i8* %54, align 1, !dbg !3401, !tbaa !716
  %62 = zext i8 %61 to i32, !dbg !3401
  br label %63, !dbg !3401

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3401
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3327, metadata !580) #11, !dbg !3404
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3405, !llvm.loop !3406

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3411

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3394, metadata !580) #11, !dbg !3413
  %67 = load i8*, i8** %48, align 8, !dbg !3411, !tbaa !3402
  %68 = load i8*, i8** %49, align 8, !dbg !3411, !tbaa !3403
  %69 = icmp ult i8* %67, %68, !dbg !3411
  br i1 %69, label %72, label %70, !dbg !3411, !prof !769

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !3411
  br label %76, !dbg !3411

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3411
  store i8* %73, i8** %48, align 8, !dbg !3411, !tbaa !3402
  %74 = load i8, i8* %67, align 1, !dbg !3411, !tbaa !716
  %75 = zext i8 %74 to i32, !dbg !3411
  br label %76, !dbg !3411

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3411
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3327, metadata !580) #11, !dbg !3404
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3414, !llvm.loop !3415

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #11, !dbg !3418
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.112, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #11, !dbg !3419
  %81 = icmp slt i32 %80, 2, !dbg !3421
  br i1 %81, label %112, label %82, !dbg !3422

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3332, metadata !580) #11, !dbg !3424
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3333, metadata !580) #11, !dbg !3426
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3334, metadata !580) #11, !dbg !3427
  %85 = icmp eq i64 %51, 0, !dbg !3428
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3430

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3326, metadata !580) #11, !dbg !3390
  %90 = add i64 %87, 2, !dbg !3431
  %91 = call noalias i8* @malloc(i64 %90) #11, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3325, metadata !580) #11, !dbg !3389
  br label %96, !dbg !3434

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3326, metadata !580) #11, !dbg !3390
  %94 = add i64 %93, 1, !dbg !3437
  %95 = call i8* @realloc(i8* %52, i64 %94) #11, !dbg !3438
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3325, metadata !580) #11, !dbg !3389
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3325, metadata !580) #11, !dbg !3389
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3326, metadata !580) #11, !dbg !3390
  %99 = icmp eq i8* %98, null, !dbg !3439
  br i1 %99, label %100, label %102, !dbg !3441

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3326, metadata !580) #11, !dbg !3390
  call void @free(i8* %52) #11, !dbg !3442
  br label %112, !dbg !3444

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3445
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3445
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3446
  %104 = xor i64 %84, -1, !dbg !3447
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3447
  %106 = xor i64 %83, -1, !dbg !3448
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3448
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3449, metadata !580) #11, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3457, metadata !580) #11, !dbg !3458
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #11, !dbg !3460
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #11, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3449, metadata !580) #11, !dbg !3462
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3457, metadata !580) #11, !dbg !3462
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #11, !dbg !3464
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #11, !dbg !3465
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3325, metadata !580) #11, !dbg !3389
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3326, metadata !580) #11, !dbg !3390
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3445
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3445
  br label %50, !dbg !3466, !llvm.loop !3415

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #11, !dbg !3445
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #11, !dbg !3445
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !3467
  %116 = icmp eq i64 %113, 0, !dbg !3468
  br i1 %116, label %119, label %117, !dbg !3470

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3471
  store i8 0, i8* %118, align 1, !dbg !3473, !tbaa !716
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.107, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.107, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.107, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3275, metadata !580) #11, !dbg !3345
  call void @free(i8* %29) #11, !dbg !3474
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.107, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3275, metadata !580) #11, !dbg !3345
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3475, !tbaa !587
  br label %123, !dbg !3476

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3275, metadata !580) #11, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3260, metadata !580), !dbg !3477
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3260, metadata !580), !dbg !3477
  %125 = load i8, i8* %124, align 1, !dbg !3478, !tbaa !716
  %126 = icmp eq i8 %125, 0, !dbg !3480
  br i1 %126, label %152, label %127, !dbg !3481

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3482

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3260, metadata !580), !dbg !3477
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3482
  %132 = icmp eq i32 %131, 0, !dbg !3484
  br i1 %132, label %139, label %133, !dbg !3485

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3486
  br i1 %134, label %135, label %143, !dbg !3487

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3488
  %137 = load i8, i8* %136, align 1, !dbg !3488, !tbaa !716
  %138 = icmp eq i8 %137, 0, !dbg !3489
  br i1 %138, label %139, label %143, !dbg !3490

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3491
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3493
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3259, metadata !580), !dbg !3340
  br label %152, !dbg !3495

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3496
  %145 = add i64 %144, 1, !dbg !3497
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3498
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3260, metadata !580), !dbg !3477
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3499
  %148 = add i64 %147, 1, !dbg !3500
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3260, metadata !580), !dbg !3477
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3260, metadata !580), !dbg !3477
  %150 = load i8, i8* %149, align 1, !dbg !3478, !tbaa !716
  %151 = icmp eq i8 %150, 0, !dbg !3480
  br i1 %151, label %152, label %128, !dbg !3481, !llvm.loop !3502

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3259, metadata !580), !dbg !3340
  %154 = load i8, i8* %153, align 1, !dbg !3504, !tbaa !716
  %155 = icmp eq i8 %154, 0, !dbg !3506
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.113, i64 0, i64 0), i8* %153, !dbg !3507
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3259, metadata !580), !dbg !3340
  ret i8* %156, !dbg !3508
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3509 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3554, metadata !580), !dbg !3558
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3555, metadata !580), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3557, metadata !580), !dbg !3560
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3561
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3556, metadata !580), !dbg !3562
  %3 = icmp slt i32 %2, 0, !dbg !3563
  br i1 %3, label %4, label %6, !dbg !3565

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3566
  br label %24, !dbg !3567

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3568
  %8 = icmp eq i32 %7, 0, !dbg !3568
  br i1 %8, label %13, label %9, !dbg !3570

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3571
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3572
  %12 = icmp eq i64 %11, -1, !dbg !3573
  br i1 %12, label %16, label %13, !dbg !3574

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3575
  %15 = icmp eq i32 %14, 0, !dbg !3575
  br i1 %15, label %16, label %18, !dbg !3576

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3555, metadata !580), !dbg !3559
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3577
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3557, metadata !580), !dbg !3560
  br label %24, !dbg !3578

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3579
  %20 = load i32, i32* %19, align 4, !dbg !3579, !tbaa !657
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3555, metadata !580), !dbg !3559
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3555, metadata !580), !dbg !3559
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3577
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3557, metadata !580), !dbg !3560
  %22 = icmp eq i32 %20, 0, !dbg !3580
  br i1 %22, label %24, label %23, !dbg !3578

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3582, !tbaa !657
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3557, metadata !580), !dbg !3560
  br label %24, !dbg !3584

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3585
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3586 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3631, metadata !580), !dbg !3632
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3633
  br i1 %2, label %6, label %3, !dbg !3635

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3636
  %5 = icmp eq i32 %4, 0, !dbg !3636
  br i1 %5, label %6, label %8, !dbg !3637

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3638
  br label %17, !dbg !3639

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3640, metadata !580) #11, !dbg !3645
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3647
  %10 = load i32, i32* %9, align 8, !dbg !3647, !tbaa !3211
  %11 = and i32 %10, 256, !dbg !3649
  %12 = icmp eq i32 %11, 0, !dbg !3649
  br i1 %12, label %15, label %13, !dbg !3650

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !3651
  br label %15, !dbg !3651

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3652
  br label %17, !dbg !3653

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3654
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3655 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3701, metadata !580), !dbg !3707
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3702, metadata !580), !dbg !3708
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3703, metadata !580), !dbg !3709
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3710
  %5 = load i8*, i8** %4, align 8, !dbg !3710, !tbaa !3403
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3711
  %7 = load i8*, i8** %6, align 8, !dbg !3711, !tbaa !3402
  %8 = icmp eq i8* %5, %7, !dbg !3712
  br i1 %8, label %9, label %28, !dbg !3713

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3714
  %11 = load i8*, i8** %10, align 8, !dbg !3714, !tbaa !764
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3715
  %13 = load i8*, i8** %12, align 8, !dbg !3715, !tbaa !3716
  %14 = icmp eq i8* %11, %13, !dbg !3717
  br i1 %14, label %15, label %28, !dbg !3718

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3719
  %17 = load i8*, i8** %16, align 8, !dbg !3719, !tbaa !3720
  %18 = icmp eq i8* %17, null, !dbg !3721
  br i1 %18, label %19, label %28, !dbg !3722

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3723
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3724
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3704, metadata !580), !dbg !3725
  %22 = icmp eq i64 %21, -1, !dbg !3726
  br i1 %22, label %30, label %23, !dbg !3728

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3729
  %25 = load i32, i32* %24, align 8, !dbg !3730, !tbaa !3211
  %26 = and i32 %25, -17, !dbg !3730
  store i32 %26, i32* %24, align 8, !dbg !3730, !tbaa !3211
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3731
  store i64 %21, i64* %27, align 8, !dbg !3732, !tbaa !3733
  br label %30, !dbg !3734

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3735
  br label %30, !dbg !3736

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3737
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
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { argmemonly nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !48, !53, !518, !520, !523, !62, !69, !76, !525, !163, !533, !550, !552, !554, !556, !559, !561, !172, !563, !565, !567}
!llvm.ident = !{!569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569, !569}
!llvm.module.flags = !{!570, !571, !572, !573, !574}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 31, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/basename.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1536, elements: !44)
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
!45 = !DISubrange(count: 6)
!46 = !DIGlobalVariableExpression(var: !47)
!47 = distinct !DIGlobalVariable(name: "Version", scope: !48, file: !49, line: 2, type: !17, isLocal: false, isDefinition: true)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !50)
!49 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !{!46}
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "file_name", scope: !53, file: !58, line: 36, type: !17, isLocal: true, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !55)
!54 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !{!51, !56}
!56 = !DIGlobalVariableExpression(var: !57)
!57 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !53, file: !58, line: 46, type: !59, isLocal: true, isDefinition: true)
!58 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!59 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!60 = !DIGlobalVariableExpression(var: !61)
!61 = distinct !DIGlobalVariable(name: "exit_failure", scope: !62, file: !65, line: 24, type: !66, isLocal: false, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !64)
!63 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!64 = !{!60}
!65 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!66 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!67 = !DIGlobalVariableExpression(var: !68)
!68 = distinct !DIGlobalVariable(name: "program_name", scope: !69, file: !73, line: 33, type: !17, isLocal: false, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !71, globals: !72)
!70 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!71 = !{!8, !6}
!72 = !{!67}
!73 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !76, file: !121, line: 77, type: !157, isLocal: false, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !113, globals: !118)
!77 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!78 = !{!79, !93, !98}
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !80, line: 32, size: 32, elements: !81)
!80 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!82 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!83 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!84 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!85 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!86 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!87 = !DIEnumerator(name: "c_quoting_style", value: 5)
!88 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!89 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!90 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!91 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!92 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !80, line: 242, size: 32, elements: !94)
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!96 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!97 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 46, size: 32, elements: !100)
!99 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!101 = !DIEnumerator(name: "_ISupper", value: 256)
!102 = !DIEnumerator(name: "_ISlower", value: 512)
!103 = !DIEnumerator(name: "_ISalpha", value: 1024)
!104 = !DIEnumerator(name: "_ISdigit", value: 2048)
!105 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!106 = !DIEnumerator(name: "_ISspace", value: 8192)
!107 = !DIEnumerator(name: "_ISprint", value: 16384)
!108 = !DIEnumerator(name: "_ISgraph", value: 32768)
!109 = !DIEnumerator(name: "_ISblank", value: 1)
!110 = !DIEnumerator(name: "_IScntrl", value: 2)
!111 = !DIEnumerator(name: "_ISpunct", value: 4)
!112 = !DIEnumerator(name: "_ISalnum", value: 8)
!113 = !{!40, !114, !115, !6}
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 62, baseType: !117)
!116 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!118 = !{!74, !119, !126, !139, !141, !146, !153, !155}
!119 = !DIGlobalVariableExpression(var: !120)
!120 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !76, file: !121, line: 93, type: !122, isLocal: false, isDefinition: true)
!121 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 320, elements: !124)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!124 = !{!125}
!125 = !DISubrange(count: 10)
!126 = !DIGlobalVariableExpression(var: !127)
!127 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !76, file: !121, line: 1043, type: !128, isLocal: false, isDefinition: true)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !121, line: 57, size: 448, elements: !129)
!129 = !{!130, !131, !132, !137, !138}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !128, file: !121, line: 60, baseType: !79, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !121, line: 63, baseType: !40, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !128, file: !121, line: 67, baseType: !133, size: 256, offset: 64)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 256, elements: !135)
!134 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!135 = !{!136}
!136 = !DISubrange(count: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !128, file: !121, line: 70, baseType: !17, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !128, file: !121, line: 73, baseType: !17, size: 64, offset: 384)
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !76, file: !121, line: 108, type: !128, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "slot0", scope: !76, file: !121, line: 834, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 256)
!146 = !DIGlobalVariableExpression(var: !147)
!147 = distinct !DIGlobalVariable(name: "slotvec", scope: !76, file: !121, line: 837, type: !148, isLocal: true, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !121, line: 826, size: 128, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !149, file: !121, line: 828, baseType: !115, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !121, line: 829, baseType: !6, size: 64, offset: 64)
!153 = !DIGlobalVariableExpression(var: !154)
!154 = distinct !DIGlobalVariable(name: "nslots", scope: !76, file: !121, line: 835, type: !40, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "slotvec0", scope: !76, file: !121, line: 836, type: !149, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 704, elements: !159)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!159 = !{!160}
!160 = !DISubrange(count: 11)
!161 = !DIGlobalVariableExpression(var: !162)
!162 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !163, file: !166, line: 26, type: !167, isLocal: false, isDefinition: true)
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !165)
!164 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!165 = !{!161}
!166 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 47)
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !172, file: !516, line: 120, type: !517, isLocal: true, isDefinition: true)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !174, retainedTypes: !513, globals: !515)
!173 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!174 = !{!175}
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !176, line: 41, size: 32, elements: !177)
!176 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!178 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!179 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!180 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!181 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!182 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!183 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!184 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!185 = !DIEnumerator(name: "DAY_1", value: 131079)
!186 = !DIEnumerator(name: "DAY_2", value: 131080)
!187 = !DIEnumerator(name: "DAY_3", value: 131081)
!188 = !DIEnumerator(name: "DAY_4", value: 131082)
!189 = !DIEnumerator(name: "DAY_5", value: 131083)
!190 = !DIEnumerator(name: "DAY_6", value: 131084)
!191 = !DIEnumerator(name: "DAY_7", value: 131085)
!192 = !DIEnumerator(name: "ABMON_1", value: 131086)
!193 = !DIEnumerator(name: "ABMON_2", value: 131087)
!194 = !DIEnumerator(name: "ABMON_3", value: 131088)
!195 = !DIEnumerator(name: "ABMON_4", value: 131089)
!196 = !DIEnumerator(name: "ABMON_5", value: 131090)
!197 = !DIEnumerator(name: "ABMON_6", value: 131091)
!198 = !DIEnumerator(name: "ABMON_7", value: 131092)
!199 = !DIEnumerator(name: "ABMON_8", value: 131093)
!200 = !DIEnumerator(name: "ABMON_9", value: 131094)
!201 = !DIEnumerator(name: "ABMON_10", value: 131095)
!202 = !DIEnumerator(name: "ABMON_11", value: 131096)
!203 = !DIEnumerator(name: "ABMON_12", value: 131097)
!204 = !DIEnumerator(name: "MON_1", value: 131098)
!205 = !DIEnumerator(name: "MON_2", value: 131099)
!206 = !DIEnumerator(name: "MON_3", value: 131100)
!207 = !DIEnumerator(name: "MON_4", value: 131101)
!208 = !DIEnumerator(name: "MON_5", value: 131102)
!209 = !DIEnumerator(name: "MON_6", value: 131103)
!210 = !DIEnumerator(name: "MON_7", value: 131104)
!211 = !DIEnumerator(name: "MON_8", value: 131105)
!212 = !DIEnumerator(name: "MON_9", value: 131106)
!213 = !DIEnumerator(name: "MON_10", value: 131107)
!214 = !DIEnumerator(name: "MON_11", value: 131108)
!215 = !DIEnumerator(name: "MON_12", value: 131109)
!216 = !DIEnumerator(name: "AM_STR", value: 131110)
!217 = !DIEnumerator(name: "PM_STR", value: 131111)
!218 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!219 = !DIEnumerator(name: "D_FMT", value: 131113)
!220 = !DIEnumerator(name: "T_FMT", value: 131114)
!221 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!222 = !DIEnumerator(name: "ERA", value: 131116)
!223 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!224 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!225 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!226 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!227 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!228 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!229 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!230 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!231 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!232 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!233 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!234 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!235 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!236 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!237 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!238 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!239 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!240 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!241 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!242 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!243 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!244 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!245 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!246 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!247 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!248 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!249 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!250 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!251 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!252 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!253 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!254 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!255 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!256 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!257 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!258 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!259 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!260 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!261 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!262 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!263 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!264 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!265 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!266 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!267 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!268 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!269 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!270 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!271 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!272 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!273 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!274 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!275 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!276 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!277 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!278 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!279 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!280 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!281 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!282 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!283 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!284 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!285 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!286 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!287 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!288 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!289 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!290 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!291 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!292 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!293 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!294 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!295 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!296 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!297 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!298 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!299 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!300 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!301 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!302 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!303 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!304 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!305 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!306 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!307 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!308 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!309 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!310 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!311 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!312 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!313 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!314 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!315 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!316 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!317 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!318 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!319 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!320 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!321 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!322 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!323 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!324 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!325 = !DIEnumerator(name: "CODESET", value: 14)
!326 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!327 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!328 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!329 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!330 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!331 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!332 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!333 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!334 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!335 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!336 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!337 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!338 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!339 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!340 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!341 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!342 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!343 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!344 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!345 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!346 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!347 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!348 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!349 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!350 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!351 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!352 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!353 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!354 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!355 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!356 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!357 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!358 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!359 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!360 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!361 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!362 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!363 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!364 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!365 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!366 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!367 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!368 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!369 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!370 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!371 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!372 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!373 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!374 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!375 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!376 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!377 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!378 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!379 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!380 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!381 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!382 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!383 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!384 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!385 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!386 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!387 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!388 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!389 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!390 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!391 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!392 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!393 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!394 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!395 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!396 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!397 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!398 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!399 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!400 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!401 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!402 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!403 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!404 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!405 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!406 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!407 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!408 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!409 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!410 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!411 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!412 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!413 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!414 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!415 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!416 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!417 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!418 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!419 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!420 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!421 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!422 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!423 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!424 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!425 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!426 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!427 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!428 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!429 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!430 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!431 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!432 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!433 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!434 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!435 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!436 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!437 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!438 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!439 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!440 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!441 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!442 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!443 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!444 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!445 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!446 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!447 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!448 = !DIEnumerator(name: "THOUSEP", value: 65537)
!449 = !DIEnumerator(name: "__GROUPING", value: 65538)
!450 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!451 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!452 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!453 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!454 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!455 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!456 = !DIEnumerator(name: "__YESSTR", value: 327682)
!457 = !DIEnumerator(name: "__NOSTR", value: 327683)
!458 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!459 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!460 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!461 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!462 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!463 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!464 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!465 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!466 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!467 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!468 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!469 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!470 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!471 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!472 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!473 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!474 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!475 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!476 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!477 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!478 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!479 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!480 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!481 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!482 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!483 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!484 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!485 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!486 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!487 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!488 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!489 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!490 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!491 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!492 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!493 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!494 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!495 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!496 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!497 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!498 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!499 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!500 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!501 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!502 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!503 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!504 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!505 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!506 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!507 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!508 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!509 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!510 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!511 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!512 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!513 = !{!8, !6, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!515 = !{!170}
!516 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!517 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!519 = !DIFile(filename: "./lib/basename.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!520 = distinct !DICompileUnit(language: DW_LANG_C99, file: !521, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !522)
!521 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!522 = !{!6}
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!524 = !DIFile(filename: "./lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!525 = distinct !DICompileUnit(language: DW_LANG_C99, file: !526, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !527, retainedTypes: !532)
!526 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!527 = !{!528}
!528 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !529, line: 41, size: 32, elements: !530)
!529 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!530 = !{!531}
!531 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!532 = !{!8}
!533 = distinct !DICompileUnit(language: DW_LANG_C99, file: !534, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !535, retainedTypes: !549)
!534 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = !{!536}
!536 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !538, file: !537, line: 192, size: 32, elements: !547)
!537 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!538 = distinct !DISubprogram(name: "x2nrealloc", scope: !537, file: !537, line: 180, type: !539, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !542)
!539 = !DISubroutineType(types: !540)
!540 = !{!8, !8, !541, !115}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!542 = !{!543, !544, !545, !546}
!543 = !DILocalVariable(name: "p", arg: 1, scope: !538, file: !537, line: 180, type: !8)
!544 = !DILocalVariable(name: "pn", arg: 2, scope: !538, file: !537, line: 180, type: !541)
!545 = !DILocalVariable(name: "s", arg: 3, scope: !538, file: !537, line: 180, type: !115)
!546 = !DILocalVariable(name: "n", scope: !538, file: !537, line: 182, type: !115)
!547 = !{!548}
!548 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!549 = !{!115, !6, !8}
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!551 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = distinct !DICompileUnit(language: DW_LANG_C99, file: !553, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!553 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = distinct !DICompileUnit(language: DW_LANG_C99, file: !555, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !532)
!555 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !557, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !558)
!557 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = !{!115}
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!560 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!562 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!564 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = distinct !DICompileUnit(language: DW_LANG_C99, file: !566, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !532)
!566 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !532)
!568 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!569 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!570 = !{i32 2, !"Dwarf Version", i32 4}
!571 = !{i32 2, !"Debug Info Version", i32 3}
!572 = !{i32 1, !"wchar_size", i32 4}
!573 = !{i32 7, !"PIC Level", i32 2}
!574 = !{i32 7, !"PIE Level", i32 2}
!575 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 42, type: !576, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !40}
!578 = !{!579}
!579 = !DILocalVariable(name: "status", arg: 1, scope: !575, file: !3, line: 42, type: !40)
!580 = !DIExpression()
!581 = !DILocation(line: 42, column: 12, scope: !575)
!582 = !DILocation(line: 44, column: 14, scope: !583)
!583 = distinct !DILexicalBlock(scope: !575, file: !3, line: 44, column: 7)
!584 = !DILocation(line: 44, column: 7, scope: !575)
!585 = !DILocation(line: 45, column: 5, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !3, line: 45, column: 5)
!587 = !{!588, !588, i64 0}
!588 = !{!"any pointer", !589, i64 0}
!589 = !{!"omnipotent char", !590, i64 0}
!590 = !{!"Simple C/C++ TBAA"}
!591 = !DILocation(line: 48, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !583, file: !3, line: 47, column: 5)
!593 = !DILocation(line: 53, column: 7, scope: !592)
!594 = !DILocation(line: 587, column: 3, scope: !595, inlinedAt: !598)
!595 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !14, file: !14, line: 585, type: !596, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!596 = !DISubroutineType(types: !597)
!597 = !{null}
!598 = distinct !DILocation(line: 58, column: 7, scope: !592)
!599 = !DILocation(line: 60, column: 7, scope: !592)
!600 = !DILocation(line: 65, column: 7, scope: !592)
!601 = !DILocation(line: 66, column: 7, scope: !592)
!602 = !DILocation(line: 67, column: 7, scope: !592)
!603 = !DILocation(line: 642, column: 15, scope: !13, inlinedAt: !604)
!604 = distinct !DILocation(line: 76, column: 7, scope: !592)
!605 = !DILocation(line: 651, column: 3, scope: !13, inlinedAt: !604)
!606 = !DILocation(line: 655, column: 29, scope: !13, inlinedAt: !604)
!607 = !DILocation(line: 655, column: 15, scope: !13, inlinedAt: !604)
!608 = !DILocation(line: 656, column: 7, scope: !609, inlinedAt: !604)
!609 = distinct !DILexicalBlock(scope: !13, file: !14, line: 656, column: 7)
!610 = !DILocation(line: 656, column: 19, scope: !609, inlinedAt: !604)
!611 = !DILocation(line: 656, column: 22, scope: !609, inlinedAt: !604)
!612 = !DILocation(line: 656, column: 7, scope: !13, inlinedAt: !604)
!613 = !DILocation(line: 662, column: 7, scope: !614, inlinedAt: !604)
!614 = distinct !DILexicalBlock(scope: !609, file: !14, line: 657, column: 5)
!615 = !DILocation(line: 664, column: 5, scope: !614, inlinedAt: !604)
!616 = !DILocation(line: 665, column: 3, scope: !13, inlinedAt: !604)
!617 = !DILocation(line: 667, column: 3, scope: !13, inlinedAt: !604)
!618 = !DILocation(line: 78, column: 3, scope: !575)
!619 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 124, type: !620, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !623)
!620 = !DISubroutineType(types: !621)
!621 = !{!40, !40, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!623 = !{!624, !625, !626, !627, !628, !629}
!624 = !DILocalVariable(name: "argc", arg: 1, scope: !619, file: !3, line: 124, type: !40)
!625 = !DILocalVariable(name: "argv", arg: 2, scope: !619, file: !3, line: 124, type: !622)
!626 = !DILocalVariable(name: "multiple_names", scope: !619, file: !3, line: 126, type: !59)
!627 = !DILocalVariable(name: "use_nuls", scope: !619, file: !3, line: 127, type: !59)
!628 = !DILocalVariable(name: "suffix", scope: !619, file: !3, line: 128, type: !17)
!629 = !DILocalVariable(name: "c", scope: !630, file: !3, line: 140, type: !40)
!630 = distinct !DILexicalBlock(scope: !619, file: !3, line: 139, column: 5)
!631 = !DILocation(line: 124, column: 11, scope: !619)
!632 = !DILocation(line: 124, column: 24, scope: !619)
!633 = !DILocation(line: 126, column: 8, scope: !619)
!634 = !DILocation(line: 127, column: 8, scope: !619)
!635 = !DILocation(line: 128, column: 15, scope: !619)
!636 = !DILocation(line: 131, column: 21, scope: !619)
!637 = !DILocation(line: 131, column: 3, scope: !619)
!638 = !DILocation(line: 132, column: 3, scope: !619)
!639 = !DILocation(line: 133, column: 3, scope: !619)
!640 = !DILocation(line: 134, column: 3, scope: !619)
!641 = !DILocation(line: 136, column: 3, scope: !619)
!642 = !DILocation(line: 138, column: 3, scope: !619)
!643 = !DILocation(line: 140, column: 15, scope: !630)
!644 = !DILocation(line: 140, column: 11, scope: !630)
!645 = !DILocation(line: 142, column: 11, scope: !630)
!646 = distinct !{!646, !642, !647}
!647 = !DILocation(line: 166, column: 5, scope: !619)
!648 = !DILocation(line: 148, column: 20, scope: !649)
!649 = distinct !DILexicalBlock(scope: !630, file: !3, line: 146, column: 9)
!650 = !DILocation(line: 148, column: 11, scope: !649)
!651 = !DILocation(line: 158, column: 11, scope: !649)
!652 = !DILocation(line: 160, column: 9, scope: !649)
!653 = !DILocation(line: 161, column: 9, scope: !649)
!654 = !DILocation(line: 164, column: 11, scope: !649)
!655 = !DILocation(line: 168, column: 14, scope: !656)
!656 = distinct !DILexicalBlock(scope: !619, file: !3, line: 168, column: 7)
!657 = !{!658, !658, i64 0}
!658 = !{!"int", !589, i64 0}
!659 = !DILocation(line: 168, column: 12, scope: !656)
!660 = !DILocation(line: 168, column: 7, scope: !619)
!661 = !DILocation(line: 170, column: 20, scope: !662)
!662 = distinct !DILexicalBlock(scope: !656, file: !3, line: 169, column: 5)
!663 = !DILocation(line: 170, column: 7, scope: !662)
!664 = !DILocation(line: 171, column: 7, scope: !662)
!665 = !DILocation(line: 174, column: 8, scope: !666)
!666 = distinct !DILexicalBlock(scope: !619, file: !3, line: 174, column: 7)
!667 = !DILocation(line: 174, column: 23, scope: !666)
!668 = !DILocation(line: 174, column: 33, scope: !666)
!669 = !DILocation(line: 174, column: 37, scope: !666)
!670 = !DILocation(line: 176, column: 20, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !3, line: 175, column: 5)
!672 = !DILocation(line: 176, column: 55, scope: !671)
!673 = !DILocation(line: 176, column: 62, scope: !671)
!674 = !DILocation(line: 176, column: 50, scope: !671)
!675 = !DILocation(line: 176, column: 43, scope: !671)
!676 = !DILocation(line: 176, column: 7, scope: !671)
!677 = !DILocation(line: 177, column: 7, scope: !671)
!678 = !DILocation(line: 180, column: 7, scope: !619)
!679 = !DILocation(line: 182, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 182, column: 7)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 181, column: 5)
!682 = distinct !DILexicalBlock(scope: !619, file: !3, line: 180, column: 7)
!683 = !DILocation(line: 183, column: 27, scope: !684)
!684 = distinct !DILexicalBlock(scope: !680, file: !3, line: 182, column: 7)
!685 = !DILocation(line: 183, column: 9, scope: !684)
!686 = !DILocation(line: 182, column: 35, scope: !684)
!687 = !DILocation(line: 182, column: 21, scope: !684)
!688 = distinct !{!688, !679, !689}
!689 = !DILocation(line: 183, column: 57, scope: !680)
!690 = !DILocation(line: 186, column: 23, scope: !682)
!691 = !DILocation(line: 187, column: 34, scope: !682)
!692 = !DILocation(line: 187, column: 23, scope: !682)
!693 = !DILocation(line: 187, column: 56, scope: !682)
!694 = !DILocation(line: 187, column: 44, scope: !682)
!695 = !DILocation(line: 187, column: 69, scope: !682)
!696 = !DILocation(line: 186, column: 5, scope: !682)
!697 = !DILocation(line: 190, column: 1, scope: !619)
!698 = distinct !DISubprogram(name: "perform_basename", scope: !3, file: !3, line: 104, type: !699, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !17, !17, !59}
!701 = !{!702, !703, !704, !705}
!702 = !DILocalVariable(name: "string", arg: 1, scope: !698, file: !3, line: 104, type: !17)
!703 = !DILocalVariable(name: "suffix", arg: 2, scope: !698, file: !3, line: 104, type: !17)
!704 = !DILocalVariable(name: "use_nuls", arg: 3, scope: !698, file: !3, line: 104, type: !59)
!705 = !DILocalVariable(name: "name", scope: !698, file: !3, line: 106, type: !6)
!706 = !DILocation(line: 104, column: 31, scope: !698)
!707 = !DILocation(line: 104, column: 51, scope: !698)
!708 = !DILocation(line: 104, column: 64, scope: !698)
!709 = !DILocation(line: 106, column: 16, scope: !698)
!710 = !DILocation(line: 106, column: 9, scope: !698)
!711 = !DILocation(line: 107, column: 3, scope: !698)
!712 = !DILocation(line: 115, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !698, file: !3, line: 115, column: 7)
!714 = !DILocation(line: 115, column: 14, scope: !713)
!715 = !DILocation(line: 115, column: 17, scope: !713)
!716 = !{!589, !589, i64 0}
!717 = !DILocation(line: 115, column: 7, scope: !698)
!718 = !DILocalVariable(name: "name", arg: 1, scope: !719, file: !3, line: 85, type: !6)
!719 = distinct !DISubprogram(name: "remove_suffix", scope: !3, file: !3, line: 85, type: !720, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !6, !17}
!722 = !{!718, !723, !724, !725}
!723 = !DILocalVariable(name: "suffix", arg: 2, scope: !719, file: !3, line: 85, type: !17)
!724 = !DILocalVariable(name: "np", scope: !719, file: !3, line: 87, type: !6)
!725 = !DILocalVariable(name: "sp", scope: !719, file: !3, line: 88, type: !17)
!726 = !DILocation(line: 85, column: 22, scope: !719, inlinedAt: !727)
!727 = distinct !DILocation(line: 116, column: 5, scope: !713)
!728 = !DILocation(line: 85, column: 40, scope: !719, inlinedAt: !727)
!729 = !DILocation(line: 90, column: 15, scope: !719, inlinedAt: !727)
!730 = !DILocation(line: 90, column: 13, scope: !719, inlinedAt: !727)
!731 = !DILocation(line: 87, column: 9, scope: !719, inlinedAt: !727)
!732 = !DILocation(line: 91, column: 17, scope: !719, inlinedAt: !727)
!733 = !DILocation(line: 93, column: 13, scope: !719, inlinedAt: !727)
!734 = !DILocation(line: 93, column: 26, scope: !719, inlinedAt: !727)
!735 = !DILocation(line: 93, column: 20, scope: !719, inlinedAt: !727)
!736 = !DILocation(line: 93, column: 3, scope: !719, inlinedAt: !727)
!737 = !DILocation(line: 91, column: 15, scope: !719, inlinedAt: !727)
!738 = !DILocation(line: 88, column: 15, scope: !719, inlinedAt: !727)
!739 = distinct !{!739, !740, !741}
!740 = !DILocation(line: 93, column: 3, scope: !719)
!741 = !DILocation(line: 95, column: 7, scope: !719)
!742 = !DILocation(line: 94, column: 10, scope: !743, inlinedAt: !727)
!743 = distinct !DILexicalBlock(scope: !719, file: !3, line: 94, column: 9)
!744 = !DILocation(line: 94, column: 9, scope: !743, inlinedAt: !727)
!745 = !DILocation(line: 94, column: 19, scope: !743, inlinedAt: !727)
!746 = !DILocation(line: 94, column: 18, scope: !743, inlinedAt: !727)
!747 = !DILocation(line: 94, column: 15, scope: !743, inlinedAt: !727)
!748 = !DILocation(line: 94, column: 9, scope: !719, inlinedAt: !727)
!749 = !DILocation(line: 96, column: 7, scope: !719, inlinedAt: !727)
!750 = !DILocation(line: 97, column: 9, scope: !751, inlinedAt: !727)
!751 = distinct !DILexicalBlock(scope: !719, file: !3, line: 96, column: 7)
!752 = !DILocation(line: 97, column: 5, scope: !751, inlinedAt: !727)
!753 = !DILocation(line: 118, column: 3, scope: !698)
!754 = !DILocation(line: 119, column: 3, scope: !698)
!755 = !DILocalVariable(name: "__c", arg: 1, scope: !756, file: !757, line: 105, type: !40)
!756 = distinct !DISubprogram(name: "putchar_unlocked", scope: !757, file: !757, line: 105, type: !758, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !760)
!757 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!758 = !DISubroutineType(types: !759)
!759 = !{!40, !40}
!760 = !{!755}
!761 = !DILocation(line: 105, column: 23, scope: !756, inlinedAt: !762)
!762 = distinct !DILocation(line: 119, column: 3, scope: !698)
!763 = !DILocation(line: 107, column: 10, scope: !756, inlinedAt: !762)
!764 = !{!765, !588, i64 40}
!765 = !{!"_IO_FILE", !658, i64 0, !588, i64 8, !588, i64 16, !588, i64 24, !588, i64 32, !588, i64 40, !588, i64 48, !588, i64 56, !588, i64 64, !588, i64 72, !588, i64 80, !588, i64 88, !588, i64 96, !588, i64 104, !658, i64 112, !658, i64 116, !766, i64 120, !767, i64 128, !589, i64 130, !589, i64 131, !588, i64 136, !766, i64 144, !588, i64 152, !588, i64 160, !588, i64 168, !588, i64 176, !766, i64 184, !658, i64 192, !589, i64 196}
!766 = !{!"long", !589, i64 0}
!767 = !{!"short", !589, i64 0}
!768 = !{!765, !588, i64 48}
!769 = !{!"branch_weights", i32 2000, i32 1}
!770 = !DILocation(line: 120, column: 3, scope: !698)
!771 = !DILocation(line: 121, column: 1, scope: !698)
!772 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !58, file: !58, line: 41, type: !15, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !53, variables: !773)
!773 = !{!774}
!774 = !DILocalVariable(name: "file", arg: 1, scope: !772, file: !58, line: 41, type: !17)
!775 = !DILocation(line: 41, column: 41, scope: !772)
!776 = !DILocation(line: 43, column: 13, scope: !772)
!777 = !DILocation(line: 44, column: 1, scope: !772)
!778 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !58, file: !58, line: 78, type: !779, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !53, variables: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !59}
!781 = !{!782}
!782 = !DILocalVariable(name: "ignore", arg: 1, scope: !778, file: !58, line: 78, type: !59)
!783 = !DILocation(line: 78, column: 37, scope: !778)
!784 = !DILocation(line: 80, column: 16, scope: !778)
!785 = !{!786, !786, i64 0}
!786 = !{!"_Bool", !589, i64 0}
!787 = !DILocation(line: 81, column: 1, scope: !778)
!788 = distinct !DISubprogram(name: "close_stdout", scope: !58, file: !58, line: 107, type: !596, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !53, variables: !789)
!789 = !{!790}
!790 = !DILocalVariable(name: "write_error", scope: !791, file: !58, line: 112, type: !17)
!791 = distinct !DILexicalBlock(scope: !792, file: !58, line: 111, column: 5)
!792 = distinct !DILexicalBlock(scope: !788, file: !58, line: 109, column: 7)
!793 = !DILocation(line: 109, column: 21, scope: !792)
!794 = !DILocation(line: 109, column: 7, scope: !792)
!795 = !DILocation(line: 109, column: 29, scope: !792)
!796 = !DILocation(line: 110, column: 7, scope: !792)
!797 = !DILocation(line: 110, column: 12, scope: !792)
!798 = !{i8 0, i8 2}
!799 = !DILocation(line: 114, column: 19, scope: !800)
!800 = distinct !DILexicalBlock(scope: !791, file: !58, line: 113, column: 11)
!801 = !DILocation(line: 110, column: 25, scope: !792)
!802 = !DILocation(line: 110, column: 28, scope: !792)
!803 = !DILocation(line: 110, column: 34, scope: !792)
!804 = !DILocation(line: 109, column: 7, scope: !788)
!805 = !DILocation(line: 112, column: 33, scope: !791)
!806 = !DILocation(line: 112, column: 19, scope: !791)
!807 = !DILocation(line: 113, column: 11, scope: !800)
!808 = !DILocation(line: 113, column: 11, scope: !791)
!809 = !DILocation(line: 114, column: 36, scope: !800)
!810 = !DILocation(line: 114, column: 9, scope: !800)
!811 = !DILocation(line: 117, column: 9, scope: !800)
!812 = !DILocation(line: 119, column: 14, scope: !791)
!813 = !DILocation(line: 119, column: 7, scope: !791)
!814 = !DILocation(line: 122, column: 22, scope: !815)
!815 = distinct !DILexicalBlock(scope: !788, file: !58, line: 122, column: 8)
!816 = !DILocation(line: 122, column: 8, scope: !815)
!817 = !DILocation(line: 122, column: 30, scope: !815)
!818 = !DILocation(line: 122, column: 8, scope: !788)
!819 = !DILocation(line: 123, column: 13, scope: !815)
!820 = !DILocation(line: 123, column: 6, scope: !815)
!821 = !DILocation(line: 124, column: 1, scope: !788)
!822 = distinct !DISubprogram(name: "base_name", scope: !823, file: !823, line: 28, type: !824, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !518, variables: !826)
!823 = !DIFile(filename: "lib/basename.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!824 = !DISubroutineType(types: !825)
!825 = !{!6, !17}
!826 = !{!827, !828, !829}
!827 = !DILocalVariable(name: "name", arg: 1, scope: !822, file: !823, line: 28, type: !17)
!828 = !DILocalVariable(name: "base", scope: !822, file: !823, line: 30, type: !17)
!829 = !DILocalVariable(name: "length", scope: !822, file: !823, line: 31, type: !115)
!830 = !DILocation(line: 28, column: 24, scope: !822)
!831 = !DILocation(line: 30, column: 22, scope: !822)
!832 = !DILocation(line: 30, column: 15, scope: !822)
!833 = !DILocation(line: 35, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !822, file: !823, line: 35, column: 7)
!835 = !DILocation(line: 35, column: 7, scope: !822)
!836 = !DILocation(line: 36, column: 28, scope: !834)
!837 = !DILocation(line: 36, column: 12, scope: !834)
!838 = !DILocation(line: 36, column: 5, scope: !834)
!839 = !DILocation(line: 39, column: 12, scope: !822)
!840 = !DILocation(line: 31, column: 10, scope: !822)
!841 = !DILocation(line: 40, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !822, file: !823, line: 40, column: 7)
!843 = !DILocation(line: 40, column: 7, scope: !822)
!844 = !DILocation(line: 57, column: 10, scope: !822)
!845 = !DILocation(line: 57, column: 3, scope: !822)
!846 = !DILocation(line: 58, column: 1, scope: !822)
!847 = distinct !DISubprogram(name: "last_component", scope: !848, file: !848, line: 30, type: !824, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !520, variables: !849)
!848 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!849 = !{!850, !851, !852, !853}
!850 = !DILocalVariable(name: "name", arg: 1, scope: !847, file: !848, line: 30, type: !17)
!851 = !DILocalVariable(name: "base", scope: !847, file: !848, line: 32, type: !17)
!852 = !DILocalVariable(name: "p", scope: !847, file: !848, line: 33, type: !17)
!853 = !DILocalVariable(name: "saw_slash", scope: !847, file: !848, line: 34, type: !59)
!854 = !DILocation(line: 30, column: 29, scope: !847)
!855 = !DILocation(line: 32, column: 15, scope: !847)
!856 = !DILocation(line: 34, column: 8, scope: !847)
!857 = !DILocation(line: 36, column: 3, scope: !847)
!858 = !DILocation(line: 36, column: 10, scope: !847)
!859 = !DILocation(line: 37, column: 9, scope: !847)
!860 = distinct !{!860, !857, !859}
!861 = !DILocation(line: 39, column: 3, scope: !862)
!862 = distinct !DILexicalBlock(scope: !847, file: !848, line: 39, column: 3)
!863 = !DILocation(line: 39, column: 18, scope: !864)
!864 = distinct !DILexicalBlock(scope: !862, file: !848, line: 39, column: 3)
!865 = !DILocation(line: 33, column: 15, scope: !847)
!866 = !DILocation(line: 43, column: 16, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !848, line: 43, column: 16)
!868 = distinct !DILexicalBlock(scope: !869, file: !848, line: 41, column: 11)
!869 = distinct !DILexicalBlock(scope: !864, file: !848, line: 40, column: 5)
!870 = !DILocation(line: 43, column: 16, scope: !868)
!871 = !DILocation(line: 39, column: 23, scope: !864)
!872 = !DILocation(line: 39, column: 3, scope: !864)
!873 = distinct !{!873, !861, !874}
!874 = !DILocation(line: 48, column: 5, scope: !862)
!875 = !DILocation(line: 50, column: 3, scope: !847)
!876 = distinct !DISubprogram(name: "base_len", scope: !848, file: !848, line: 58, type: !877, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !520, variables: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{!115, !17}
!879 = !{!880, !881, !882}
!880 = !DILocalVariable(name: "name", arg: 1, scope: !876, file: !848, line: 58, type: !17)
!881 = !DILocalVariable(name: "len", scope: !876, file: !848, line: 60, type: !115)
!882 = !DILocalVariable(name: "prefix_len", scope: !876, file: !848, line: 61, type: !115)
!883 = !DILocation(line: 58, column: 23, scope: !876)
!884 = !DILocation(line: 61, column: 10, scope: !876)
!885 = !DILocation(line: 63, column: 14, scope: !886)
!886 = distinct !DILexicalBlock(scope: !876, file: !848, line: 63, column: 3)
!887 = !DILocation(line: 60, column: 10, scope: !876)
!888 = !DILocation(line: 63, column: 32, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !848, line: 63, column: 3)
!890 = !DILocation(line: 63, column: 38, scope: !889)
!891 = !DILocation(line: 63, column: 41, scope: !889)
!892 = distinct !{!892, !893, !894}
!893 = !DILocation(line: 63, column: 3, scope: !886)
!894 = !DILocation(line: 64, column: 5, scope: !886)
!895 = !DILocation(line: 74, column: 3, scope: !876)
!896 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !897, file: !897, line: 31, type: !898, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !523, variables: !900)
!897 = !DIFile(filename: "lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!898 = !DISubroutineType(types: !899)
!899 = !{!59, !6}
!900 = !{!901, !902, !903, !904}
!901 = !DILocalVariable(name: "file", arg: 1, scope: !896, file: !897, line: 31, type: !6)
!902 = !DILocalVariable(name: "base", scope: !896, file: !897, line: 33, type: !6)
!903 = !DILocalVariable(name: "base_lim", scope: !896, file: !897, line: 34, type: !6)
!904 = !DILocalVariable(name: "had_slash", scope: !896, file: !897, line: 35, type: !59)
!905 = !DILocation(line: 31, column: 31, scope: !896)
!906 = !DILocation(line: 33, column: 16, scope: !896)
!907 = !DILocation(line: 33, column: 9, scope: !896)
!908 = !DILocation(line: 39, column: 9, scope: !909)
!909 = distinct !DILexicalBlock(scope: !896, file: !897, line: 39, column: 7)
!910 = !DILocation(line: 39, column: 7, scope: !896)
!911 = !DILocation(line: 41, column: 21, scope: !896)
!912 = !DILocation(line: 41, column: 19, scope: !896)
!913 = !DILocation(line: 34, column: 9, scope: !896)
!914 = !DILocation(line: 42, column: 16, scope: !896)
!915 = !DILocation(line: 42, column: 26, scope: !896)
!916 = !DILocation(line: 43, column: 13, scope: !896)
!917 = !DILocation(line: 44, column: 3, scope: !896)
!918 = distinct !DISubprogram(name: "set_program_name", scope: !73, file: !73, line: 39, type: !15, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !69, variables: !919)
!919 = !{!920, !921, !922}
!920 = !DILocalVariable(name: "argv0", arg: 1, scope: !918, file: !73, line: 39, type: !17)
!921 = !DILocalVariable(name: "slash", scope: !918, file: !73, line: 46, type: !17)
!922 = !DILocalVariable(name: "base", scope: !918, file: !73, line: 47, type: !17)
!923 = !DILocation(line: 39, column: 31, scope: !918)
!924 = !DILocation(line: 51, column: 13, scope: !925)
!925 = distinct !DILexicalBlock(scope: !918, file: !73, line: 51, column: 7)
!926 = !DILocation(line: 51, column: 7, scope: !918)
!927 = !DILocation(line: 55, column: 14, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !73, line: 52, column: 5)
!929 = !DILocation(line: 54, column: 7, scope: !928)
!930 = !DILocation(line: 56, column: 7, scope: !928)
!931 = !DILocation(line: 59, column: 11, scope: !918)
!932 = !DILocation(line: 46, column: 15, scope: !918)
!933 = !DILocation(line: 60, column: 17, scope: !918)
!934 = !DILocation(line: 60, column: 33, scope: !918)
!935 = !DILocation(line: 60, column: 11, scope: !918)
!936 = !DILocation(line: 47, column: 15, scope: !918)
!937 = !DILocation(line: 61, column: 12, scope: !938)
!938 = distinct !DILexicalBlock(scope: !918, file: !73, line: 61, column: 7)
!939 = !DILocation(line: 61, column: 20, scope: !938)
!940 = !DILocation(line: 61, column: 25, scope: !938)
!941 = !DILocation(line: 61, column: 42, scope: !938)
!942 = !DILocation(line: 61, column: 28, scope: !938)
!943 = !DILocation(line: 61, column: 61, scope: !938)
!944 = !DILocation(line: 61, column: 7, scope: !918)
!945 = !DILocation(line: 64, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !73, line: 64, column: 11)
!947 = distinct !DILexicalBlock(scope: !938, file: !73, line: 62, column: 5)
!948 = !DILocation(line: 64, column: 36, scope: !946)
!949 = !DILocation(line: 64, column: 11, scope: !947)
!950 = !DILocation(line: 66, column: 24, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !73, line: 65, column: 9)
!952 = !DILocation(line: 70, column: 41, scope: !951)
!953 = !DILocation(line: 72, column: 9, scope: !951)
!954 = !DILocation(line: 84, column: 16, scope: !918)
!955 = !DILocation(line: 90, column: 27, scope: !918)
!956 = !DILocation(line: 92, column: 1, scope: !918)
!957 = distinct !DISubprogram(name: "clone_quoting_options", scope: !121, file: !121, line: 114, type: !958, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !961)
!958 = !DISubroutineType(types: !959)
!959 = !{!960, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!961 = !{!962, !963, !964}
!962 = !DILocalVariable(name: "o", arg: 1, scope: !957, file: !121, line: 114, type: !960)
!963 = !DILocalVariable(name: "e", scope: !957, file: !121, line: 116, type: !40)
!964 = !DILocalVariable(name: "p", scope: !957, file: !121, line: 117, type: !960)
!965 = !DILocation(line: 114, column: 48, scope: !957)
!966 = !DILocation(line: 116, column: 11, scope: !957)
!967 = !DILocation(line: 116, column: 7, scope: !957)
!968 = !DILocation(line: 117, column: 40, scope: !957)
!969 = !DILocation(line: 117, column: 31, scope: !957)
!970 = !DILocation(line: 117, column: 27, scope: !957)
!971 = !DILocation(line: 119, column: 9, scope: !957)
!972 = !DILocation(line: 120, column: 3, scope: !957)
!973 = distinct !DISubprogram(name: "get_quoting_style", scope: !121, file: !121, line: 125, type: !974, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !978)
!974 = !DISubroutineType(types: !975)
!975 = !{!79, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!978 = !{!979}
!979 = !DILocalVariable(name: "o", arg: 1, scope: !973, file: !121, line: 125, type: !976)
!980 = !DILocation(line: 125, column: 50, scope: !973)
!981 = !DILocation(line: 127, column: 11, scope: !973)
!982 = !DILocation(line: 127, column: 46, scope: !973)
!983 = !{!984, !589, i64 0}
!984 = !{!"quoting_options", !589, i64 0, !658, i64 4, !589, i64 8, !588, i64 40, !588, i64 48}
!985 = !DILocation(line: 127, column: 3, scope: !973)
!986 = distinct !DISubprogram(name: "set_quoting_style", scope: !121, file: !121, line: 133, type: !987, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !989)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !960, !79}
!989 = !{!990, !991}
!990 = !DILocalVariable(name: "o", arg: 1, scope: !986, file: !121, line: 133, type: !960)
!991 = !DILocalVariable(name: "s", arg: 2, scope: !986, file: !121, line: 133, type: !79)
!992 = !DILocation(line: 133, column: 44, scope: !986)
!993 = !DILocation(line: 133, column: 66, scope: !986)
!994 = !DILocation(line: 135, column: 4, scope: !986)
!995 = !DILocation(line: 135, column: 39, scope: !986)
!996 = !DILocation(line: 135, column: 45, scope: !986)
!997 = !DILocation(line: 136, column: 1, scope: !986)
!998 = distinct !DISubprogram(name: "set_char_quoting", scope: !121, file: !121, line: 144, type: !999, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!40, !960, !7, !40}
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1008, !1009}
!1002 = !DILocalVariable(name: "o", arg: 1, scope: !998, file: !121, line: 144, type: !960)
!1003 = !DILocalVariable(name: "c", arg: 2, scope: !998, file: !121, line: 144, type: !7)
!1004 = !DILocalVariable(name: "i", arg: 3, scope: !998, file: !121, line: 144, type: !40)
!1005 = !DILocalVariable(name: "uc", scope: !998, file: !121, line: 146, type: !9)
!1006 = !DILocalVariable(name: "p", scope: !998, file: !121, line: 147, type: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1008 = !DILocalVariable(name: "shift", scope: !998, file: !121, line: 149, type: !40)
!1009 = !DILocalVariable(name: "r", scope: !998, file: !121, line: 150, type: !40)
!1010 = !DILocation(line: 144, column: 43, scope: !998)
!1011 = !DILocation(line: 144, column: 51, scope: !998)
!1012 = !DILocation(line: 144, column: 58, scope: !998)
!1013 = !DILocation(line: 146, column: 17, scope: !998)
!1014 = !DILocation(line: 148, column: 6, scope: !998)
!1015 = !DILocation(line: 148, column: 62, scope: !998)
!1016 = !DILocation(line: 148, column: 57, scope: !998)
!1017 = !DILocation(line: 147, column: 17, scope: !998)
!1018 = !DILocation(line: 149, column: 18, scope: !998)
!1019 = !DILocation(line: 149, column: 15, scope: !998)
!1020 = !DILocation(line: 149, column: 7, scope: !998)
!1021 = !DILocation(line: 150, column: 12, scope: !998)
!1022 = !DILocation(line: 150, column: 15, scope: !998)
!1023 = !DILocation(line: 150, column: 25, scope: !998)
!1024 = !DILocation(line: 150, column: 7, scope: !998)
!1025 = !DILocation(line: 151, column: 13, scope: !998)
!1026 = !DILocation(line: 151, column: 18, scope: !998)
!1027 = !DILocation(line: 151, column: 23, scope: !998)
!1028 = !DILocation(line: 151, column: 6, scope: !998)
!1029 = !DILocation(line: 152, column: 3, scope: !998)
!1030 = distinct !DISubprogram(name: "set_quoting_flags", scope: !121, file: !121, line: 160, type: !1031, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!40, !960, !40}
!1033 = !{!1034, !1035, !1036}
!1034 = !DILocalVariable(name: "o", arg: 1, scope: !1030, file: !121, line: 160, type: !960)
!1035 = !DILocalVariable(name: "i", arg: 2, scope: !1030, file: !121, line: 160, type: !40)
!1036 = !DILocalVariable(name: "r", scope: !1030, file: !121, line: 162, type: !40)
!1037 = !DILocation(line: 160, column: 44, scope: !1030)
!1038 = !DILocation(line: 160, column: 51, scope: !1030)
!1039 = !DILocation(line: 163, column: 8, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1030, file: !121, line: 163, column: 7)
!1041 = !DILocation(line: 163, column: 7, scope: !1030)
!1042 = !DILocation(line: 165, column: 10, scope: !1030)
!1043 = !{!984, !658, i64 4}
!1044 = !DILocation(line: 162, column: 7, scope: !1030)
!1045 = !DILocation(line: 166, column: 12, scope: !1030)
!1046 = !DILocation(line: 167, column: 3, scope: !1030)
!1047 = distinct !DISubprogram(name: "set_custom_quoting", scope: !121, file: !121, line: 171, type: !1048, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !960, !17, !17}
!1050 = !{!1051, !1052, !1053}
!1051 = !DILocalVariable(name: "o", arg: 1, scope: !1047, file: !121, line: 171, type: !960)
!1052 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1047, file: !121, line: 172, type: !17)
!1053 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1047, file: !121, line: 172, type: !17)
!1054 = !DILocation(line: 171, column: 45, scope: !1047)
!1055 = !DILocation(line: 172, column: 33, scope: !1047)
!1056 = !DILocation(line: 172, column: 57, scope: !1047)
!1057 = !DILocation(line: 174, column: 8, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1047, file: !121, line: 174, column: 7)
!1059 = !DILocation(line: 174, column: 7, scope: !1047)
!1060 = !DILocation(line: 176, column: 6, scope: !1047)
!1061 = !DILocation(line: 176, column: 12, scope: !1047)
!1062 = !DILocation(line: 177, column: 8, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1047, file: !121, line: 177, column: 7)
!1064 = !DILocation(line: 177, column: 23, scope: !1063)
!1065 = !DILocation(line: 177, column: 19, scope: !1063)
!1066 = !DILocation(line: 178, column: 5, scope: !1063)
!1067 = !DILocation(line: 179, column: 6, scope: !1047)
!1068 = !DILocation(line: 179, column: 17, scope: !1047)
!1069 = !{!984, !588, i64 40}
!1070 = !DILocation(line: 180, column: 6, scope: !1047)
!1071 = !DILocation(line: 180, column: 18, scope: !1047)
!1072 = !{!984, !588, i64 48}
!1073 = !DILocation(line: 181, column: 1, scope: !1047)
!1074 = distinct !DISubprogram(name: "quotearg_buffer", scope: !121, file: !121, line: 776, type: !1075, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!115, !6, !115, !17, !115, !976}
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085}
!1078 = !DILocalVariable(name: "buffer", arg: 1, scope: !1074, file: !121, line: 776, type: !6)
!1079 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1074, file: !121, line: 776, type: !115)
!1080 = !DILocalVariable(name: "arg", arg: 3, scope: !1074, file: !121, line: 777, type: !17)
!1081 = !DILocalVariable(name: "argsize", arg: 4, scope: !1074, file: !121, line: 777, type: !115)
!1082 = !DILocalVariable(name: "o", arg: 5, scope: !1074, file: !121, line: 778, type: !976)
!1083 = !DILocalVariable(name: "p", scope: !1074, file: !121, line: 780, type: !976)
!1084 = !DILocalVariable(name: "e", scope: !1074, file: !121, line: 781, type: !40)
!1085 = !DILocalVariable(name: "r", scope: !1074, file: !121, line: 782, type: !115)
!1086 = !DILocation(line: 776, column: 24, scope: !1074)
!1087 = !DILocation(line: 776, column: 39, scope: !1074)
!1088 = !DILocation(line: 777, column: 30, scope: !1074)
!1089 = !DILocation(line: 777, column: 42, scope: !1074)
!1090 = !DILocation(line: 778, column: 48, scope: !1074)
!1091 = !DILocation(line: 780, column: 37, scope: !1074)
!1092 = !DILocation(line: 780, column: 33, scope: !1074)
!1093 = !DILocation(line: 781, column: 11, scope: !1074)
!1094 = !DILocation(line: 781, column: 7, scope: !1074)
!1095 = !DILocation(line: 783, column: 43, scope: !1074)
!1096 = !DILocation(line: 783, column: 53, scope: !1074)
!1097 = !DILocation(line: 783, column: 60, scope: !1074)
!1098 = !DILocation(line: 784, column: 43, scope: !1074)
!1099 = !DILocation(line: 784, column: 58, scope: !1074)
!1100 = !DILocation(line: 782, column: 14, scope: !1074)
!1101 = !DILocation(line: 782, column: 10, scope: !1074)
!1102 = !DILocation(line: 785, column: 9, scope: !1074)
!1103 = !DILocation(line: 786, column: 3, scope: !1074)
!1104 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !121, file: !121, line: 248, type: !1105, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1109)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!115, !6, !115, !17, !115, !79, !40, !1107, !17, !17}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1134, !1135, !1136, !1137, !1138, !1141, !1142, !1160, !1163, !1164, !1171}
!1110 = !DILocalVariable(name: "buffer", arg: 1, scope: !1104, file: !121, line: 248, type: !6)
!1111 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1104, file: !121, line: 248, type: !115)
!1112 = !DILocalVariable(name: "arg", arg: 3, scope: !1104, file: !121, line: 249, type: !17)
!1113 = !DILocalVariable(name: "argsize", arg: 4, scope: !1104, file: !121, line: 249, type: !115)
!1114 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1104, file: !121, line: 250, type: !79)
!1115 = !DILocalVariable(name: "flags", arg: 6, scope: !1104, file: !121, line: 250, type: !40)
!1116 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1104, file: !121, line: 251, type: !1107)
!1117 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1104, file: !121, line: 252, type: !17)
!1118 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1104, file: !121, line: 253, type: !17)
!1119 = !DILocalVariable(name: "i", scope: !1104, file: !121, line: 255, type: !115)
!1120 = !DILocalVariable(name: "len", scope: !1104, file: !121, line: 256, type: !115)
!1121 = !DILocalVariable(name: "orig_buffersize", scope: !1104, file: !121, line: 257, type: !115)
!1122 = !DILocalVariable(name: "quote_string", scope: !1104, file: !121, line: 258, type: !17)
!1123 = !DILocalVariable(name: "quote_string_len", scope: !1104, file: !121, line: 259, type: !115)
!1124 = !DILocalVariable(name: "backslash_escapes", scope: !1104, file: !121, line: 260, type: !59)
!1125 = !DILocalVariable(name: "unibyte_locale", scope: !1104, file: !121, line: 261, type: !59)
!1126 = !DILocalVariable(name: "elide_outer_quotes", scope: !1104, file: !121, line: 262, type: !59)
!1127 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1104, file: !121, line: 263, type: !59)
!1128 = !DILocalVariable(name: "encountered_single_quote", scope: !1104, file: !121, line: 264, type: !59)
!1129 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1104, file: !121, line: 265, type: !59)
!1130 = !DILocalVariable(name: "c", scope: !1131, file: !121, line: 394, type: !9)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !121, line: 393, column: 5)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !121, line: 392, column: 3)
!1133 = distinct !DILexicalBlock(scope: !1104, file: !121, line: 392, column: 3)
!1134 = !DILocalVariable(name: "esc", scope: !1131, file: !121, line: 395, type: !9)
!1135 = !DILocalVariable(name: "is_right_quote", scope: !1131, file: !121, line: 396, type: !59)
!1136 = !DILocalVariable(name: "escaping", scope: !1131, file: !121, line: 397, type: !59)
!1137 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1131, file: !121, line: 398, type: !59)
!1138 = !DILocalVariable(name: "m", scope: !1139, file: !121, line: 602, type: !115)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !121, line: 600, column: 11)
!1140 = distinct !DILexicalBlock(scope: !1131, file: !121, line: 418, column: 9)
!1141 = !DILocalVariable(name: "printable", scope: !1139, file: !121, line: 604, type: !59)
!1142 = !DILocalVariable(name: "mbstate", scope: !1143, file: !121, line: 613, type: !1145)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !121, line: 612, column: 15)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !121, line: 606, column: 17)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1146, line: 6, baseType: !1147)
!1146 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1148, line: 21, baseType: !1149)
!1148 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1148, line: 13, size: 64, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1149, file: !1148, line: 15, baseType: !40, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1149, file: !1148, line: 20, baseType: !1153, size: 32, offset: 32)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1149, file: !1148, line: 16, size: 32, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1153, file: !1148, line: 18, baseType: !134, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1153, file: !1148, line: 19, baseType: !1157, size: 32)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1158)
!1158 = !{!1159}
!1159 = !DISubrange(count: 4)
!1160 = !DILocalVariable(name: "w", scope: !1161, file: !121, line: 623, type: !1162)
!1161 = distinct !DILexicalBlock(scope: !1143, file: !121, line: 622, column: 19)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !116, line: 90, baseType: !40)
!1163 = !DILocalVariable(name: "bytes", scope: !1161, file: !121, line: 624, type: !115)
!1164 = !DILocalVariable(name: "j", scope: !1165, file: !121, line: 649, type: !115)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !121, line: 648, column: 27)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !121, line: 646, column: 29)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !121, line: 641, column: 23)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !121, line: 633, column: 30)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !121, line: 628, column: 30)
!1170 = distinct !DILexicalBlock(scope: !1161, file: !121, line: 626, column: 25)
!1171 = !DILocalVariable(name: "ilim", scope: !1172, file: !121, line: 676, type: !115)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !121, line: 673, column: 15)
!1173 = distinct !DILexicalBlock(scope: !1139, file: !121, line: 672, column: 17)
!1174 = !DILocation(line: 248, column: 33, scope: !1104)
!1175 = !DILocation(line: 248, column: 48, scope: !1104)
!1176 = !DILocation(line: 249, column: 39, scope: !1104)
!1177 = !DILocation(line: 249, column: 51, scope: !1104)
!1178 = !DILocation(line: 250, column: 46, scope: !1104)
!1179 = !DILocation(line: 250, column: 65, scope: !1104)
!1180 = !DILocation(line: 251, column: 47, scope: !1104)
!1181 = !DILocation(line: 252, column: 39, scope: !1104)
!1182 = !DILocation(line: 253, column: 39, scope: !1104)
!1183 = !DILocation(line: 256, column: 10, scope: !1104)
!1184 = !DILocation(line: 257, column: 10, scope: !1104)
!1185 = !DILocation(line: 258, column: 15, scope: !1104)
!1186 = !DILocation(line: 259, column: 10, scope: !1104)
!1187 = !DILocation(line: 260, column: 8, scope: !1104)
!1188 = !DILocation(line: 261, column: 25, scope: !1104)
!1189 = !DILocation(line: 261, column: 36, scope: !1104)
!1190 = !DILocation(line: 262, column: 8, scope: !1104)
!1191 = !DILocation(line: 263, column: 8, scope: !1104)
!1192 = !DILocation(line: 264, column: 8, scope: !1104)
!1193 = !DILocation(line: 265, column: 8, scope: !1104)
!1194 = !DILocation(line: 265, column: 3, scope: !1104)
!1195 = !DILocation(line: 308, column: 3, scope: !1104)
!1196 = !DILocation(line: 315, column: 11, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1104, file: !121, line: 309, column: 5)
!1198 = !DILocation(line: 315, column: 12, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1197, file: !121, line: 315, column: 11)
!1200 = !DILocation(line: 316, column: 9, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !121, line: 316, column: 9)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !121, line: 316, column: 9)
!1203 = !DILocation(line: 316, column: 9, scope: !1202)
!1204 = !DILocation(line: 354, column: 26, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !121, line: 332, column: 11)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !121, line: 331, column: 13)
!1207 = distinct !DILexicalBlock(scope: !1197, file: !121, line: 330, column: 7)
!1208 = !DILocation(line: 355, column: 27, scope: !1205)
!1209 = !DILocation(line: 356, column: 11, scope: !1205)
!1210 = !DILocation(line: 357, column: 14, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !121, line: 357, column: 13)
!1212 = !DILocation(line: 357, column: 13, scope: !1207)
!1213 = !DILocation(line: 358, column: 43, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !121, line: 358, column: 11)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !121, line: 358, column: 11)
!1216 = !DILocation(line: 358, column: 11, scope: !1215)
!1217 = !DILocation(line: 359, column: 13, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !121, line: 359, column: 13)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !121, line: 359, column: 13)
!1220 = !DILocation(line: 359, column: 13, scope: !1219)
!1221 = !DILocation(line: 358, column: 70, scope: !1214)
!1222 = distinct !{!1222, !1216, !1223}
!1223 = !DILocation(line: 359, column: 13, scope: !1215)
!1224 = !DILocation(line: 362, column: 28, scope: !1207)
!1225 = !DILocation(line: 364, column: 7, scope: !1197)
!1226 = !DILocation(line: 367, column: 7, scope: !1197)
!1227 = !DILocation(line: 370, column: 7, scope: !1197)
!1228 = !DILocation(line: 373, column: 12, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1197, file: !121, line: 373, column: 11)
!1230 = !DILocation(line: 373, column: 11, scope: !1197)
!1231 = !DILocation(line: 378, column: 12, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1197, file: !121, line: 378, column: 11)
!1233 = !DILocation(line: 378, column: 11, scope: !1197)
!1234 = !DILocation(line: 379, column: 9, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !121, line: 379, column: 9)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !121, line: 379, column: 9)
!1237 = !DILocation(line: 379, column: 9, scope: !1236)
!1238 = !DILocation(line: 386, column: 7, scope: !1197)
!1239 = !DILocation(line: 389, column: 7, scope: !1197)
!1240 = !DILocation(line: 255, column: 10, scope: !1104)
!1241 = !DILocation(line: 392, column: 8, scope: !1133)
!1242 = !DILocation(line: 392, column: 27, scope: !1132)
!1243 = !DILocation(line: 392, column: 19, scope: !1132)
!1244 = !DILocation(line: 392, column: 60, scope: !1132)
!1245 = !DILocation(line: 392, column: 3, scope: !1133)
!1246 = !DILocation(line: 392, column: 41, scope: !1132)
!1247 = !DILocation(line: 392, column: 48, scope: !1132)
!1248 = !DILocation(line: 396, column: 12, scope: !1131)
!1249 = !DILocation(line: 397, column: 12, scope: !1131)
!1250 = !DILocation(line: 398, column: 12, scope: !1131)
!1251 = !DILocation(line: 401, column: 11, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1131, file: !121, line: 400, column: 11)
!1253 = !DILocation(line: 403, column: 17, scope: !1252)
!1254 = !DILocation(line: 404, column: 39, scope: !1252)
!1255 = !DILocation(line: 408, column: 32, scope: !1252)
!1256 = !DILocation(line: 404, column: 19, scope: !1252)
!1257 = !DILocation(line: 404, column: 15, scope: !1252)
!1258 = !DILocation(line: 409, column: 11, scope: !1252)
!1259 = !DILocation(line: 409, column: 26, scope: !1252)
!1260 = !DILocation(line: 409, column: 14, scope: !1252)
!1261 = !DILocation(line: 409, column: 63, scope: !1252)
!1262 = !DILocation(line: 400, column: 11, scope: !1131)
!1263 = !DILocation(line: 416, column: 11, scope: !1131)
!1264 = !DILocation(line: 394, column: 21, scope: !1131)
!1265 = !DILocation(line: 417, column: 7, scope: !1131)
!1266 = !DILocation(line: 420, column: 15, scope: !1140)
!1267 = !DILocation(line: 422, column: 15, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !121, line: 422, column: 15)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !121, line: 421, column: 13)
!1270 = distinct !DILexicalBlock(scope: !1140, file: !121, line: 420, column: 15)
!1271 = !DILocation(line: 422, column: 15, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !121, line: 422, column: 15)
!1273 = !DILocation(line: 422, column: 15, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !121, line: 422, column: 15)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !121, line: 422, column: 15)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !121, line: 422, column: 15)
!1277 = !DILocation(line: 422, column: 15, scope: !1275)
!1278 = !DILocation(line: 422, column: 15, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !121, line: 422, column: 15)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !121, line: 422, column: 15)
!1281 = !DILocation(line: 422, column: 15, scope: !1280)
!1282 = !DILocation(line: 422, column: 15, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !121, line: 422, column: 15)
!1284 = distinct !DILexicalBlock(scope: !1276, file: !121, line: 422, column: 15)
!1285 = !DILocation(line: 422, column: 15, scope: !1284)
!1286 = !DILocation(line: 422, column: 15, scope: !1276)
!1287 = !DILocation(line: 422, column: 15, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !121, line: 422, column: 15)
!1289 = distinct !DILexicalBlock(scope: !1268, file: !121, line: 422, column: 15)
!1290 = !DILocation(line: 422, column: 15, scope: !1289)
!1291 = !DILocation(line: 430, column: 19, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1269, file: !121, line: 429, column: 19)
!1293 = !DILocation(line: 430, column: 24, scope: !1292)
!1294 = !DILocation(line: 430, column: 28, scope: !1292)
!1295 = !DILocation(line: 430, column: 38, scope: !1292)
!1296 = !DILocation(line: 430, column: 48, scope: !1292)
!1297 = !DILocation(line: 430, column: 59, scope: !1292)
!1298 = !DILocation(line: 432, column: 19, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !121, line: 432, column: 19)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !121, line: 432, column: 19)
!1301 = distinct !DILexicalBlock(scope: !1292, file: !121, line: 431, column: 17)
!1302 = !DILocation(line: 432, column: 19, scope: !1300)
!1303 = !DILocation(line: 433, column: 19, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !121, line: 433, column: 19)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !121, line: 433, column: 19)
!1306 = !DILocation(line: 433, column: 19, scope: !1305)
!1307 = !DILocation(line: 434, column: 17, scope: !1301)
!1308 = !DILocation(line: 441, column: 20, scope: !1270)
!1309 = !DILocation(line: 446, column: 11, scope: !1140)
!1310 = !DILocation(line: 449, column: 19, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1140, file: !121, line: 447, column: 13)
!1312 = !DILocation(line: 455, column: 19, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1311, file: !121, line: 454, column: 19)
!1314 = !DILocation(line: 455, column: 24, scope: !1313)
!1315 = !DILocation(line: 455, column: 28, scope: !1313)
!1316 = !DILocation(line: 455, column: 38, scope: !1313)
!1317 = !DILocation(line: 455, column: 47, scope: !1313)
!1318 = !DILocation(line: 455, column: 41, scope: !1313)
!1319 = !DILocation(line: 455, column: 52, scope: !1313)
!1320 = !DILocation(line: 454, column: 19, scope: !1311)
!1321 = !DILocation(line: 456, column: 25, scope: !1313)
!1322 = !DILocation(line: 456, column: 17, scope: !1313)
!1323 = !DILocation(line: 463, column: 25, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1313, file: !121, line: 457, column: 19)
!1325 = !DILocation(line: 467, column: 21, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !121, line: 467, column: 21)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !121, line: 467, column: 21)
!1328 = !DILocation(line: 467, column: 21, scope: !1327)
!1329 = !DILocation(line: 468, column: 21, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !121, line: 468, column: 21)
!1331 = distinct !DILexicalBlock(scope: !1324, file: !121, line: 468, column: 21)
!1332 = !DILocation(line: 468, column: 21, scope: !1331)
!1333 = !DILocation(line: 469, column: 21, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !121, line: 469, column: 21)
!1335 = distinct !DILexicalBlock(scope: !1324, file: !121, line: 469, column: 21)
!1336 = !DILocation(line: 469, column: 21, scope: !1335)
!1337 = !DILocation(line: 470, column: 21, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !121, line: 470, column: 21)
!1339 = distinct !DILexicalBlock(scope: !1324, file: !121, line: 470, column: 21)
!1340 = !DILocation(line: 470, column: 21, scope: !1339)
!1341 = !DILocation(line: 471, column: 21, scope: !1324)
!1342 = !DILocation(line: 395, column: 21, scope: !1131)
!1343 = !DILocation(line: 484, column: 31, scope: !1140)
!1344 = !DILocation(line: 485, column: 31, scope: !1140)
!1345 = !DILocation(line: 487, column: 31, scope: !1140)
!1346 = !DILocation(line: 488, column: 31, scope: !1140)
!1347 = !DILocation(line: 489, column: 31, scope: !1140)
!1348 = !DILocation(line: 492, column: 15, scope: !1140)
!1349 = !DILocation(line: 494, column: 19, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !121, line: 493, column: 13)
!1351 = distinct !DILexicalBlock(scope: !1140, file: !121, line: 492, column: 15)
!1352 = !DILocation(line: 501, column: 33, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1140, file: !121, line: 501, column: 15)
!1354 = !DILocation(line: 506, column: 15, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1140, file: !121, line: 505, column: 15)
!1356 = !DILocation(line: 510, column: 15, scope: !1140)
!1357 = !DILocation(line: 518, column: 26, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1140, file: !121, line: 518, column: 15)
!1359 = !DILocation(line: 518, column: 15, scope: !1140)
!1360 = !DILocation(line: 518, column: 40, scope: !1358)
!1361 = !DILocation(line: 518, column: 47, scope: !1358)
!1362 = !DILocation(line: 522, column: 17, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1140, file: !121, line: 522, column: 15)
!1364 = !DILocation(line: 518, column: 18, scope: !1358)
!1365 = !DILocation(line: 518, column: 65, scope: !1358)
!1366 = !DILocation(line: 522, column: 15, scope: !1140)
!1367 = !DILocation(line: 526, column: 11, scope: !1140)
!1368 = !DILocation(line: 541, column: 15, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1140, file: !121, line: 540, column: 15)
!1370 = !DILocation(line: 548, column: 15, scope: !1140)
!1371 = !DILocation(line: 550, column: 19, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !121, line: 549, column: 13)
!1373 = distinct !DILexicalBlock(scope: !1140, file: !121, line: 548, column: 15)
!1374 = !DILocation(line: 553, column: 19, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !121, line: 553, column: 19)
!1376 = !DILocation(line: 553, column: 35, scope: !1375)
!1377 = !DILocation(line: 553, column: 30, scope: !1375)
!1378 = !DILocation(line: 562, column: 15, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !121, line: 562, column: 15)
!1380 = distinct !DILexicalBlock(scope: !1372, file: !121, line: 562, column: 15)
!1381 = !DILocation(line: 562, column: 15, scope: !1380)
!1382 = !DILocation(line: 563, column: 15, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !121, line: 563, column: 15)
!1384 = distinct !DILexicalBlock(scope: !1372, file: !121, line: 563, column: 15)
!1385 = !DILocation(line: 563, column: 15, scope: !1384)
!1386 = !DILocation(line: 564, column: 15, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !121, line: 564, column: 15)
!1388 = distinct !DILexicalBlock(scope: !1372, file: !121, line: 564, column: 15)
!1389 = !DILocation(line: 564, column: 15, scope: !1388)
!1390 = !DILocation(line: 566, column: 13, scope: !1372)
!1391 = !DILocation(line: 606, column: 17, scope: !1139)
!1392 = !DILocation(line: 602, column: 20, scope: !1139)
!1393 = !DILocation(line: 609, column: 29, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1144, file: !121, line: 607, column: 15)
!1395 = !{!767, !767, i64 0}
!1396 = !DILocation(line: 609, column: 27, scope: !1394)
!1397 = !DILocation(line: 604, column: 18, scope: !1139)
!1398 = !DILocation(line: 610, column: 15, scope: !1394)
!1399 = !DILocation(line: 613, column: 17, scope: !1143)
!1400 = !DILocation(line: 614, column: 17, scope: !1143)
!1401 = !DILocation(line: 618, column: 29, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1143, file: !121, line: 618, column: 21)
!1403 = !DILocation(line: 618, column: 21, scope: !1143)
!1404 = !DILocation(line: 619, column: 29, scope: !1402)
!1405 = !DILocation(line: 619, column: 19, scope: !1402)
!1406 = !DILocation(line: 621, column: 17, scope: !1143)
!1407 = distinct !{!1407, !1406, !1408}
!1408 = !DILocation(line: 667, column: 44, scope: !1143)
!1409 = !DILocation(line: 623, column: 21, scope: !1161)
!1410 = !DILocation(line: 624, column: 56, scope: !1161)
!1411 = !DILocation(line: 624, column: 50, scope: !1161)
!1412 = !DILocation(line: 625, column: 53, scope: !1161)
!1413 = !DILocation(line: 613, column: 27, scope: !1143)
!1414 = !DILocation(line: 623, column: 29, scope: !1161)
!1415 = !DILocation(line: 624, column: 36, scope: !1161)
!1416 = !DILocation(line: 624, column: 28, scope: !1161)
!1417 = !DILocation(line: 626, column: 25, scope: !1161)
!1418 = !DILocation(line: 636, column: 38, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1168, file: !121, line: 634, column: 23)
!1420 = !DILocation(line: 636, column: 48, scope: !1419)
!1421 = !DILocation(line: 636, column: 51, scope: !1419)
!1422 = !DILocation(line: 636, column: 25, scope: !1419)
!1423 = !DILocation(line: 637, column: 28, scope: !1419)
!1424 = !DILocation(line: 636, column: 34, scope: !1419)
!1425 = distinct !{!1425, !1422, !1423}
!1426 = !DILocation(line: 650, column: 43, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !121, line: 650, column: 29)
!1428 = distinct !DILexicalBlock(scope: !1165, file: !121, line: 650, column: 29)
!1429 = !DILocation(line: 647, column: 29, scope: !1166)
!1430 = !DILocation(line: 649, column: 36, scope: !1165)
!1431 = !DILocation(line: 651, column: 49, scope: !1427)
!1432 = !DILocation(line: 651, column: 39, scope: !1427)
!1433 = !DILocation(line: 651, column: 31, scope: !1427)
!1434 = !DILocation(line: 650, column: 53, scope: !1427)
!1435 = !DILocation(line: 650, column: 29, scope: !1428)
!1436 = distinct !{!1436, !1435, !1437}
!1437 = !DILocation(line: 659, column: 33, scope: !1428)
!1438 = !DILocation(line: 666, column: 19, scope: !1143)
!1439 = !DILocation(line: 662, column: 41, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1167, file: !121, line: 662, column: 29)
!1441 = !DILocation(line: 662, column: 31, scope: !1440)
!1442 = !DILocation(line: 662, column: 29, scope: !1167)
!1443 = !DILocation(line: 664, column: 27, scope: !1167)
!1444 = !DILocation(line: 667, column: 26, scope: !1143)
!1445 = !DILocation(line: 667, column: 24, scope: !1143)
!1446 = !DILocation(line: 666, column: 19, scope: !1161)
!1447 = !DILocation(line: 668, column: 15, scope: !1144)
!1448 = !DILocation(line: 670, column: 40, scope: !1139)
!1449 = !DILocation(line: 672, column: 19, scope: !1173)
!1450 = !DILocation(line: 672, column: 45, scope: !1173)
!1451 = !DILocation(line: 672, column: 23, scope: !1173)
!1452 = !DILocation(line: 676, column: 33, scope: !1172)
!1453 = !DILocation(line: 676, column: 24, scope: !1172)
!1454 = !DILocation(line: 678, column: 17, scope: !1172)
!1455 = !DILocation(line: 680, column: 43, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !121, line: 680, column: 25)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !121, line: 679, column: 19)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !121, line: 678, column: 17)
!1459 = distinct !DILexicalBlock(scope: !1172, file: !121, line: 678, column: 17)
!1460 = !DILocation(line: 682, column: 25, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !121, line: 682, column: 25)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !121, line: 681, column: 23)
!1463 = !DILocation(line: 682, column: 25, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1461, file: !121, line: 682, column: 25)
!1465 = !DILocation(line: 682, column: 25, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !121, line: 682, column: 25)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !121, line: 682, column: 25)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !121, line: 682, column: 25)
!1469 = !DILocation(line: 682, column: 25, scope: !1467)
!1470 = !DILocation(line: 682, column: 25, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !121, line: 682, column: 25)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !121, line: 682, column: 25)
!1473 = !DILocation(line: 682, column: 25, scope: !1472)
!1474 = !DILocation(line: 682, column: 25, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !121, line: 682, column: 25)
!1476 = distinct !DILexicalBlock(scope: !1468, file: !121, line: 682, column: 25)
!1477 = !DILocation(line: 682, column: 25, scope: !1476)
!1478 = !DILocation(line: 682, column: 25, scope: !1468)
!1479 = !DILocation(line: 682, column: 25, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !121, line: 682, column: 25)
!1481 = distinct !DILexicalBlock(scope: !1461, file: !121, line: 682, column: 25)
!1482 = !DILocation(line: 682, column: 25, scope: !1481)
!1483 = !DILocation(line: 683, column: 25, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !121, line: 683, column: 25)
!1485 = distinct !DILexicalBlock(scope: !1462, file: !121, line: 683, column: 25)
!1486 = !DILocation(line: 683, column: 25, scope: !1485)
!1487 = !DILocation(line: 684, column: 25, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !121, line: 684, column: 25)
!1489 = distinct !DILexicalBlock(scope: !1462, file: !121, line: 684, column: 25)
!1490 = !DILocation(line: 684, column: 25, scope: !1489)
!1491 = !DILocation(line: 685, column: 38, scope: !1462)
!1492 = !DILocation(line: 685, column: 33, scope: !1462)
!1493 = !DILocation(line: 686, column: 23, scope: !1462)
!1494 = !DILocation(line: 687, column: 30, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1456, file: !121, line: 687, column: 30)
!1496 = !DILocation(line: 687, column: 30, scope: !1456)
!1497 = !DILocation(line: 689, column: 25, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !121, line: 689, column: 25)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !121, line: 689, column: 25)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !121, line: 688, column: 23)
!1501 = !DILocation(line: 689, column: 25, scope: !1499)
!1502 = !DILocation(line: 691, column: 23, scope: !1500)
!1503 = !DILocation(line: 692, column: 35, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1457, file: !121, line: 692, column: 25)
!1505 = !DILocation(line: 692, column: 30, scope: !1504)
!1506 = !DILocation(line: 692, column: 25, scope: !1457)
!1507 = !DILocation(line: 694, column: 21, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !121, line: 694, column: 21)
!1509 = distinct !DILexicalBlock(scope: !1457, file: !121, line: 694, column: 21)
!1510 = !DILocation(line: 694, column: 21, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !121, line: 694, column: 21)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !121, line: 694, column: 21)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !121, line: 694, column: 21)
!1514 = !DILocation(line: 694, column: 21, scope: !1512)
!1515 = !DILocation(line: 694, column: 21, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !121, line: 694, column: 21)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !121, line: 694, column: 21)
!1518 = !DILocation(line: 694, column: 21, scope: !1517)
!1519 = !DILocation(line: 694, column: 21, scope: !1513)
!1520 = !DILocation(line: 695, column: 21, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !121, line: 695, column: 21)
!1522 = distinct !DILexicalBlock(scope: !1457, file: !121, line: 695, column: 21)
!1523 = !DILocation(line: 695, column: 21, scope: !1522)
!1524 = !DILocation(line: 696, column: 25, scope: !1457)
!1525 = !DILocation(line: 678, column: 17, scope: !1458)
!1526 = distinct !{!1526, !1527, !1528}
!1527 = !DILocation(line: 678, column: 17, scope: !1459)
!1528 = !DILocation(line: 697, column: 19, scope: !1459)
!1529 = !DILocation(line: 704, column: 34, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1131, file: !121, line: 704, column: 11)
!1531 = !DILocation(line: 706, column: 14, scope: !1530)
!1532 = !DILocation(line: 707, column: 14, scope: !1530)
!1533 = !DILocation(line: 707, column: 35, scope: !1530)
!1534 = !DILocation(line: 707, column: 17, scope: !1530)
!1535 = !DILocation(line: 707, column: 53, scope: !1530)
!1536 = !DILocation(line: 707, column: 47, scope: !1530)
!1537 = !DILocation(line: 707, column: 65, scope: !1530)
!1538 = !DILocation(line: 708, column: 15, scope: !1530)
!1539 = !DILocation(line: 708, column: 11, scope: !1530)
!1540 = !DILocation(line: 704, column: 11, scope: !1131)
!1541 = !DILocation(line: 712, column: 7, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1131, file: !121, line: 712, column: 7)
!1543 = !DILocation(line: 712, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1542, file: !121, line: 712, column: 7)
!1545 = !DILocation(line: 712, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !121, line: 712, column: 7)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !121, line: 712, column: 7)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !121, line: 712, column: 7)
!1549 = !DILocation(line: 712, column: 7, scope: !1547)
!1550 = !DILocation(line: 712, column: 7, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !121, line: 712, column: 7)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !121, line: 712, column: 7)
!1553 = !DILocation(line: 712, column: 7, scope: !1552)
!1554 = !DILocation(line: 712, column: 7, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !121, line: 712, column: 7)
!1556 = distinct !DILexicalBlock(scope: !1548, file: !121, line: 712, column: 7)
!1557 = !DILocation(line: 712, column: 7, scope: !1556)
!1558 = !DILocation(line: 712, column: 7, scope: !1548)
!1559 = !DILocation(line: 712, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !121, line: 712, column: 7)
!1561 = distinct !DILexicalBlock(scope: !1542, file: !121, line: 712, column: 7)
!1562 = !DILocation(line: 712, column: 7, scope: !1561)
!1563 = !DILocation(line: 715, column: 7, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !121, line: 715, column: 7)
!1565 = distinct !DILexicalBlock(scope: !1131, file: !121, line: 715, column: 7)
!1566 = !DILocation(line: 715, column: 7, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !121, line: 715, column: 7)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !121, line: 715, column: 7)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !121, line: 715, column: 7)
!1570 = !DILocation(line: 715, column: 7, scope: !1568)
!1571 = !DILocation(line: 715, column: 7, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !121, line: 715, column: 7)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !121, line: 715, column: 7)
!1574 = !DILocation(line: 715, column: 7, scope: !1573)
!1575 = !DILocation(line: 715, column: 7, scope: !1569)
!1576 = !DILocation(line: 716, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !121, line: 716, column: 7)
!1578 = distinct !DILexicalBlock(scope: !1131, file: !121, line: 716, column: 7)
!1579 = !DILocation(line: 716, column: 7, scope: !1578)
!1580 = !DILocation(line: 718, column: 13, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1131, file: !121, line: 718, column: 11)
!1582 = !DILocation(line: 718, column: 11, scope: !1131)
!1583 = !DILocation(line: 720, column: 5, scope: !1132)
!1584 = !DILocation(line: 392, column: 75, scope: !1132)
!1585 = !DILocation(line: 392, column: 3, scope: !1132)
!1586 = distinct !{!1586, !1245, !1587}
!1587 = !DILocation(line: 720, column: 5, scope: !1133)
!1588 = !DILocation(line: 722, column: 11, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1104, file: !121, line: 722, column: 7)
!1590 = !DILocation(line: 722, column: 16, scope: !1589)
!1591 = !DILocation(line: 730, column: 51, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1104, file: !121, line: 730, column: 7)
!1593 = !DILocation(line: 731, column: 10, scope: !1592)
!1594 = !DILocation(line: 733, column: 11, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !121, line: 733, column: 11)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !121, line: 732, column: 5)
!1597 = !DILocation(line: 733, column: 11, scope: !1596)
!1598 = !DILocation(line: 734, column: 16, scope: !1595)
!1599 = !DILocation(line: 734, column: 9, scope: !1595)
!1600 = !DILocation(line: 738, column: 18, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1595, file: !121, line: 738, column: 16)
!1602 = !DILocation(line: 738, column: 32, scope: !1601)
!1603 = !DILocation(line: 738, column: 29, scope: !1601)
!1604 = !DILocation(line: 747, column: 7, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1104, file: !121, line: 747, column: 7)
!1606 = !DILocation(line: 747, column: 20, scope: !1605)
!1607 = !DILocation(line: 748, column: 12, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !121, line: 748, column: 5)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !121, line: 748, column: 5)
!1610 = !DILocation(line: 748, column: 5, scope: !1609)
!1611 = !DILocation(line: 749, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !121, line: 749, column: 7)
!1613 = distinct !DILexicalBlock(scope: !1608, file: !121, line: 749, column: 7)
!1614 = !DILocation(line: 749, column: 7, scope: !1613)
!1615 = !DILocation(line: 748, column: 39, scope: !1608)
!1616 = distinct !{!1616, !1610, !1617}
!1617 = !DILocation(line: 749, column: 7, scope: !1609)
!1618 = !DILocation(line: 751, column: 11, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1104, file: !121, line: 751, column: 7)
!1620 = !DILocation(line: 751, column: 7, scope: !1104)
!1621 = !DILocation(line: 752, column: 5, scope: !1619)
!1622 = !DILocation(line: 752, column: 17, scope: !1619)
!1623 = !DILocation(line: 758, column: 21, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1104, file: !121, line: 758, column: 7)
!1625 = !DILocation(line: 758, column: 54, scope: !1624)
!1626 = !DILocation(line: 758, column: 51, scope: !1624)
!1627 = !DILocation(line: 762, column: 42, scope: !1104)
!1628 = !DILocation(line: 760, column: 10, scope: !1104)
!1629 = !DILocation(line: 760, column: 3, scope: !1104)
!1630 = !DILocation(line: 764, column: 1, scope: !1104)
!1631 = distinct !DISubprogram(name: "gettext_quote", scope: !121, file: !121, line: 199, type: !1632, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!17, !17, !79}
!1634 = !{!1635, !1636, !1637, !1638}
!1635 = !DILocalVariable(name: "msgid", arg: 1, scope: !1631, file: !121, line: 199, type: !17)
!1636 = !DILocalVariable(name: "s", arg: 2, scope: !1631, file: !121, line: 199, type: !79)
!1637 = !DILocalVariable(name: "translation", scope: !1631, file: !121, line: 201, type: !17)
!1638 = !DILocalVariable(name: "locale_code", scope: !1631, file: !121, line: 202, type: !17)
!1639 = !DILocation(line: 199, column: 28, scope: !1631)
!1640 = !DILocation(line: 199, column: 54, scope: !1631)
!1641 = !DILocation(line: 201, column: 29, scope: !1631)
!1642 = !DILocation(line: 201, column: 15, scope: !1631)
!1643 = !DILocation(line: 204, column: 19, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1631, file: !121, line: 204, column: 7)
!1645 = !DILocation(line: 204, column: 7, scope: !1631)
!1646 = !DILocation(line: 225, column: 17, scope: !1631)
!1647 = !DILocation(line: 202, column: 15, scope: !1631)
!1648 = !DILocalVariable(name: "s2", arg: 2, scope: !1649, file: !1650, line: 160, type: !17)
!1649 = distinct !DISubprogram(name: "strcaseeq0", scope: !1650, file: !1650, line: 160, type: !1651, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1653)
!1650 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1653 = !{!1654, !1648, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663}
!1654 = !DILocalVariable(name: "s1", arg: 1, scope: !1649, file: !1650, line: 160, type: !17)
!1655 = !DILocalVariable(name: "s20", arg: 3, scope: !1649, file: !1650, line: 160, type: !7)
!1656 = !DILocalVariable(name: "s21", arg: 4, scope: !1649, file: !1650, line: 160, type: !7)
!1657 = !DILocalVariable(name: "s22", arg: 5, scope: !1649, file: !1650, line: 160, type: !7)
!1658 = !DILocalVariable(name: "s23", arg: 6, scope: !1649, file: !1650, line: 160, type: !7)
!1659 = !DILocalVariable(name: "s24", arg: 7, scope: !1649, file: !1650, line: 160, type: !7)
!1660 = !DILocalVariable(name: "s25", arg: 8, scope: !1649, file: !1650, line: 160, type: !7)
!1661 = !DILocalVariable(name: "s26", arg: 9, scope: !1649, file: !1650, line: 160, type: !7)
!1662 = !DILocalVariable(name: "s27", arg: 10, scope: !1649, file: !1650, line: 160, type: !7)
!1663 = !DILocalVariable(name: "s28", arg: 11, scope: !1649, file: !1650, line: 160, type: !7)
!1664 = !DILocation(line: 160, column: 41, scope: !1649, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 226, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1631, file: !121, line: 226, column: 7)
!1667 = !DILocation(line: 160, column: 120, scope: !1649, inlinedAt: !1665)
!1668 = !DILocation(line: 160, column: 130, scope: !1649, inlinedAt: !1665)
!1669 = !DILocation(line: 162, column: 7, scope: !1670, inlinedAt: !1665)
!1670 = distinct !DILexicalBlock(scope: !1649, file: !1650, line: 162, column: 7)
!1671 = !DILocalVariable(name: "s2", arg: 2, scope: !1672, file: !1650, line: 146, type: !17)
!1672 = distinct !DISubprogram(name: "strcaseeq1", scope: !1650, file: !1650, line: 146, type: !1673, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1675)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1675 = !{!1676, !1671, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684}
!1676 = !DILocalVariable(name: "s1", arg: 1, scope: !1672, file: !1650, line: 146, type: !17)
!1677 = !DILocalVariable(name: "s21", arg: 3, scope: !1672, file: !1650, line: 146, type: !7)
!1678 = !DILocalVariable(name: "s22", arg: 4, scope: !1672, file: !1650, line: 146, type: !7)
!1679 = !DILocalVariable(name: "s23", arg: 5, scope: !1672, file: !1650, line: 146, type: !7)
!1680 = !DILocalVariable(name: "s24", arg: 6, scope: !1672, file: !1650, line: 146, type: !7)
!1681 = !DILocalVariable(name: "s25", arg: 7, scope: !1672, file: !1650, line: 146, type: !7)
!1682 = !DILocalVariable(name: "s26", arg: 8, scope: !1672, file: !1650, line: 146, type: !7)
!1683 = !DILocalVariable(name: "s27", arg: 9, scope: !1672, file: !1650, line: 146, type: !7)
!1684 = !DILocalVariable(name: "s28", arg: 10, scope: !1672, file: !1650, line: 146, type: !7)
!1685 = !DILocation(line: 146, column: 41, scope: !1672, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 167, column: 16, scope: !1687, inlinedAt: !1665)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !1650, line: 164, column: 11)
!1688 = distinct !DILexicalBlock(scope: !1670, file: !1650, line: 163, column: 5)
!1689 = !DILocation(line: 146, column: 110, scope: !1672, inlinedAt: !1686)
!1690 = !DILocation(line: 146, column: 120, scope: !1672, inlinedAt: !1686)
!1691 = !DILocation(line: 148, column: 7, scope: !1692, inlinedAt: !1686)
!1692 = distinct !DILexicalBlock(scope: !1672, file: !1650, line: 148, column: 7)
!1693 = !DILocalVariable(name: "s2", arg: 2, scope: !1694, file: !1650, line: 132, type: !17)
!1694 = distinct !DISubprogram(name: "strcaseeq2", scope: !1650, file: !1650, line: 132, type: !1695, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1697 = !{!1698, !1693, !1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1698 = !DILocalVariable(name: "s1", arg: 1, scope: !1694, file: !1650, line: 132, type: !17)
!1699 = !DILocalVariable(name: "s22", arg: 3, scope: !1694, file: !1650, line: 132, type: !7)
!1700 = !DILocalVariable(name: "s23", arg: 4, scope: !1694, file: !1650, line: 132, type: !7)
!1701 = !DILocalVariable(name: "s24", arg: 5, scope: !1694, file: !1650, line: 132, type: !7)
!1702 = !DILocalVariable(name: "s25", arg: 6, scope: !1694, file: !1650, line: 132, type: !7)
!1703 = !DILocalVariable(name: "s26", arg: 7, scope: !1694, file: !1650, line: 132, type: !7)
!1704 = !DILocalVariable(name: "s27", arg: 8, scope: !1694, file: !1650, line: 132, type: !7)
!1705 = !DILocalVariable(name: "s28", arg: 9, scope: !1694, file: !1650, line: 132, type: !7)
!1706 = !DILocation(line: 132, column: 41, scope: !1694, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 153, column: 16, scope: !1708, inlinedAt: !1686)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !1650, line: 150, column: 11)
!1709 = distinct !DILexicalBlock(scope: !1692, file: !1650, line: 149, column: 5)
!1710 = !DILocation(line: 132, column: 100, scope: !1694, inlinedAt: !1707)
!1711 = !DILocation(line: 132, column: 110, scope: !1694, inlinedAt: !1707)
!1712 = !DILocation(line: 134, column: 7, scope: !1713, inlinedAt: !1707)
!1713 = distinct !DILexicalBlock(scope: !1694, file: !1650, line: 134, column: 7)
!1714 = !DILocalVariable(name: "s2", arg: 2, scope: !1715, file: !1650, line: 118, type: !17)
!1715 = distinct !DISubprogram(name: "strcaseeq3", scope: !1650, file: !1650, line: 118, type: !1716, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1718)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!40, !17, !17, !7, !7, !7, !7, !7, !7}
!1718 = !{!1719, !1714, !1720, !1721, !1722, !1723, !1724, !1725}
!1719 = !DILocalVariable(name: "s1", arg: 1, scope: !1715, file: !1650, line: 118, type: !17)
!1720 = !DILocalVariable(name: "s23", arg: 3, scope: !1715, file: !1650, line: 118, type: !7)
!1721 = !DILocalVariable(name: "s24", arg: 4, scope: !1715, file: !1650, line: 118, type: !7)
!1722 = !DILocalVariable(name: "s25", arg: 5, scope: !1715, file: !1650, line: 118, type: !7)
!1723 = !DILocalVariable(name: "s26", arg: 6, scope: !1715, file: !1650, line: 118, type: !7)
!1724 = !DILocalVariable(name: "s27", arg: 7, scope: !1715, file: !1650, line: 118, type: !7)
!1725 = !DILocalVariable(name: "s28", arg: 8, scope: !1715, file: !1650, line: 118, type: !7)
!1726 = !DILocation(line: 118, column: 41, scope: !1715, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 139, column: 16, scope: !1728, inlinedAt: !1707)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !1650, line: 136, column: 11)
!1729 = distinct !DILexicalBlock(scope: !1713, file: !1650, line: 135, column: 5)
!1730 = !DILocation(line: 118, column: 90, scope: !1715, inlinedAt: !1727)
!1731 = !DILocation(line: 118, column: 100, scope: !1715, inlinedAt: !1727)
!1732 = !DILocation(line: 120, column: 7, scope: !1733, inlinedAt: !1727)
!1733 = distinct !DILexicalBlock(scope: !1715, file: !1650, line: 120, column: 7)
!1734 = !DILocation(line: 120, column: 7, scope: !1715, inlinedAt: !1727)
!1735 = !DILocalVariable(name: "s2", arg: 2, scope: !1736, file: !1650, line: 104, type: !17)
!1736 = distinct !DISubprogram(name: "strcaseeq4", scope: !1650, file: !1650, line: 104, type: !1737, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1739)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!40, !17, !17, !7, !7, !7, !7, !7}
!1739 = !{!1740, !1735, !1741, !1742, !1743, !1744, !1745}
!1740 = !DILocalVariable(name: "s1", arg: 1, scope: !1736, file: !1650, line: 104, type: !17)
!1741 = !DILocalVariable(name: "s24", arg: 3, scope: !1736, file: !1650, line: 104, type: !7)
!1742 = !DILocalVariable(name: "s25", arg: 4, scope: !1736, file: !1650, line: 104, type: !7)
!1743 = !DILocalVariable(name: "s26", arg: 5, scope: !1736, file: !1650, line: 104, type: !7)
!1744 = !DILocalVariable(name: "s27", arg: 6, scope: !1736, file: !1650, line: 104, type: !7)
!1745 = !DILocalVariable(name: "s28", arg: 7, scope: !1736, file: !1650, line: 104, type: !7)
!1746 = !DILocation(line: 104, column: 41, scope: !1736, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 125, column: 16, scope: !1748, inlinedAt: !1727)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !1650, line: 122, column: 11)
!1749 = distinct !DILexicalBlock(scope: !1733, file: !1650, line: 121, column: 5)
!1750 = !DILocation(line: 104, column: 80, scope: !1736, inlinedAt: !1747)
!1751 = !DILocation(line: 104, column: 90, scope: !1736, inlinedAt: !1747)
!1752 = !DILocation(line: 106, column: 7, scope: !1753, inlinedAt: !1747)
!1753 = distinct !DILexicalBlock(scope: !1736, file: !1650, line: 106, column: 7)
!1754 = !DILocation(line: 106, column: 7, scope: !1736, inlinedAt: !1747)
!1755 = !DILocalVariable(name: "s2", arg: 2, scope: !1756, file: !1650, line: 90, type: !17)
!1756 = distinct !DISubprogram(name: "strcaseeq5", scope: !1650, file: !1650, line: 90, type: !1757, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1759)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!40, !17, !17, !7, !7, !7, !7}
!1759 = !{!1760, !1755, !1761, !1762, !1763, !1764}
!1760 = !DILocalVariable(name: "s1", arg: 1, scope: !1756, file: !1650, line: 90, type: !17)
!1761 = !DILocalVariable(name: "s25", arg: 3, scope: !1756, file: !1650, line: 90, type: !7)
!1762 = !DILocalVariable(name: "s26", arg: 4, scope: !1756, file: !1650, line: 90, type: !7)
!1763 = !DILocalVariable(name: "s27", arg: 5, scope: !1756, file: !1650, line: 90, type: !7)
!1764 = !DILocalVariable(name: "s28", arg: 6, scope: !1756, file: !1650, line: 90, type: !7)
!1765 = !DILocation(line: 90, column: 41, scope: !1756, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 111, column: 16, scope: !1767, inlinedAt: !1747)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !1650, line: 108, column: 11)
!1768 = distinct !DILexicalBlock(scope: !1753, file: !1650, line: 107, column: 5)
!1769 = !DILocation(line: 90, column: 70, scope: !1756, inlinedAt: !1766)
!1770 = !DILocation(line: 90, column: 80, scope: !1756, inlinedAt: !1766)
!1771 = !DILocation(line: 92, column: 7, scope: !1772, inlinedAt: !1766)
!1772 = distinct !DILexicalBlock(scope: !1756, file: !1650, line: 92, column: 7)
!1773 = !DILocation(line: 92, column: 7, scope: !1756, inlinedAt: !1766)
!1774 = !DILocation(line: 227, column: 12, scope: !1666)
!1775 = !DILocation(line: 227, column: 21, scope: !1666)
!1776 = !DILocation(line: 227, column: 5, scope: !1666)
!1777 = !DILocation(line: 146, column: 41, scope: !1672, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 167, column: 16, scope: !1687, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 228, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1631, file: !121, line: 228, column: 7)
!1781 = !DILocation(line: 146, column: 110, scope: !1672, inlinedAt: !1778)
!1782 = !DILocation(line: 146, column: 120, scope: !1672, inlinedAt: !1778)
!1783 = !DILocation(line: 148, column: 7, scope: !1692, inlinedAt: !1778)
!1784 = !DILocation(line: 132, column: 41, scope: !1694, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 153, column: 16, scope: !1708, inlinedAt: !1778)
!1786 = !DILocation(line: 132, column: 100, scope: !1694, inlinedAt: !1785)
!1787 = !DILocation(line: 132, column: 110, scope: !1694, inlinedAt: !1785)
!1788 = !DILocation(line: 134, column: 7, scope: !1713, inlinedAt: !1785)
!1789 = !DILocation(line: 134, column: 7, scope: !1694, inlinedAt: !1785)
!1790 = !DILocation(line: 118, column: 41, scope: !1715, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 139, column: 16, scope: !1728, inlinedAt: !1785)
!1792 = !DILocation(line: 118, column: 90, scope: !1715, inlinedAt: !1791)
!1793 = !DILocation(line: 118, column: 100, scope: !1715, inlinedAt: !1791)
!1794 = !DILocation(line: 120, column: 7, scope: !1733, inlinedAt: !1791)
!1795 = !DILocation(line: 120, column: 7, scope: !1715, inlinedAt: !1791)
!1796 = !DILocation(line: 104, column: 41, scope: !1736, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 125, column: 16, scope: !1748, inlinedAt: !1791)
!1798 = !DILocation(line: 104, column: 80, scope: !1736, inlinedAt: !1797)
!1799 = !DILocation(line: 104, column: 90, scope: !1736, inlinedAt: !1797)
!1800 = !DILocation(line: 106, column: 7, scope: !1753, inlinedAt: !1797)
!1801 = !DILocation(line: 106, column: 7, scope: !1736, inlinedAt: !1797)
!1802 = !DILocation(line: 90, column: 41, scope: !1756, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 111, column: 16, scope: !1767, inlinedAt: !1797)
!1804 = !DILocation(line: 90, column: 70, scope: !1756, inlinedAt: !1803)
!1805 = !DILocation(line: 90, column: 80, scope: !1756, inlinedAt: !1803)
!1806 = !DILocation(line: 92, column: 7, scope: !1772, inlinedAt: !1803)
!1807 = !DILocation(line: 92, column: 7, scope: !1756, inlinedAt: !1803)
!1808 = !DILocalVariable(name: "s2", arg: 2, scope: !1809, file: !1650, line: 76, type: !17)
!1809 = distinct !DISubprogram(name: "strcaseeq6", scope: !1650, file: !1650, line: 76, type: !1810, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1812)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!40, !17, !17, !7, !7, !7}
!1812 = !{!1813, !1808, !1814, !1815, !1816}
!1813 = !DILocalVariable(name: "s1", arg: 1, scope: !1809, file: !1650, line: 76, type: !17)
!1814 = !DILocalVariable(name: "s26", arg: 3, scope: !1809, file: !1650, line: 76, type: !7)
!1815 = !DILocalVariable(name: "s27", arg: 4, scope: !1809, file: !1650, line: 76, type: !7)
!1816 = !DILocalVariable(name: "s28", arg: 5, scope: !1809, file: !1650, line: 76, type: !7)
!1817 = !DILocation(line: 76, column: 41, scope: !1809, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 97, column: 16, scope: !1819, inlinedAt: !1803)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !1650, line: 94, column: 11)
!1820 = distinct !DILexicalBlock(scope: !1772, file: !1650, line: 93, column: 5)
!1821 = !DILocation(line: 76, column: 60, scope: !1809, inlinedAt: !1818)
!1822 = !DILocation(line: 76, column: 70, scope: !1809, inlinedAt: !1818)
!1823 = !DILocation(line: 78, column: 7, scope: !1824, inlinedAt: !1818)
!1824 = distinct !DILexicalBlock(scope: !1809, file: !1650, line: 78, column: 7)
!1825 = !DILocation(line: 78, column: 7, scope: !1809, inlinedAt: !1818)
!1826 = !DILocalVariable(name: "s2", arg: 2, scope: !1827, file: !1650, line: 62, type: !17)
!1827 = distinct !DISubprogram(name: "strcaseeq7", scope: !1650, file: !1650, line: 62, type: !1828, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1830)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!40, !17, !17, !7, !7}
!1830 = !{!1831, !1826, !1832, !1833}
!1831 = !DILocalVariable(name: "s1", arg: 1, scope: !1827, file: !1650, line: 62, type: !17)
!1832 = !DILocalVariable(name: "s27", arg: 3, scope: !1827, file: !1650, line: 62, type: !7)
!1833 = !DILocalVariable(name: "s28", arg: 4, scope: !1827, file: !1650, line: 62, type: !7)
!1834 = !DILocation(line: 62, column: 41, scope: !1827, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 83, column: 16, scope: !1836, inlinedAt: !1818)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !1650, line: 80, column: 11)
!1837 = distinct !DILexicalBlock(scope: !1824, file: !1650, line: 79, column: 5)
!1838 = !DILocation(line: 62, column: 50, scope: !1827, inlinedAt: !1835)
!1839 = !DILocation(line: 62, column: 60, scope: !1827, inlinedAt: !1835)
!1840 = !DILocation(line: 64, column: 7, scope: !1841, inlinedAt: !1835)
!1841 = distinct !DILexicalBlock(scope: !1827, file: !1650, line: 64, column: 7)
!1842 = !DILocation(line: 228, column: 7, scope: !1631)
!1843 = !DILocation(line: 229, column: 12, scope: !1780)
!1844 = !DILocation(line: 229, column: 21, scope: !1780)
!1845 = !DILocation(line: 229, column: 5, scope: !1780)
!1846 = !DILocation(line: 231, column: 13, scope: !1631)
!1847 = !DILocation(line: 231, column: 11, scope: !1631)
!1848 = !DILocation(line: 231, column: 3, scope: !1631)
!1849 = !DILocation(line: 232, column: 1, scope: !1631)
!1850 = distinct !DISubprogram(name: "quotearg_alloc", scope: !121, file: !121, line: 791, type: !1851, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!6, !17, !115, !976}
!1853 = !{!1854, !1855, !1856}
!1854 = !DILocalVariable(name: "arg", arg: 1, scope: !1850, file: !121, line: 791, type: !17)
!1855 = !DILocalVariable(name: "argsize", arg: 2, scope: !1850, file: !121, line: 791, type: !115)
!1856 = !DILocalVariable(name: "o", arg: 3, scope: !1850, file: !121, line: 792, type: !976)
!1857 = !DILocation(line: 791, column: 29, scope: !1850)
!1858 = !DILocation(line: 791, column: 41, scope: !1850)
!1859 = !DILocation(line: 792, column: 47, scope: !1850)
!1860 = !DILocalVariable(name: "arg", arg: 1, scope: !1861, file: !121, line: 804, type: !17)
!1861 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !121, file: !121, line: 804, type: !1862, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1864)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!6, !17, !115, !541, !976}
!1864 = !{!1860, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872}
!1865 = !DILocalVariable(name: "argsize", arg: 2, scope: !1861, file: !121, line: 804, type: !115)
!1866 = !DILocalVariable(name: "size", arg: 3, scope: !1861, file: !121, line: 804, type: !541)
!1867 = !DILocalVariable(name: "o", arg: 4, scope: !1861, file: !121, line: 805, type: !976)
!1868 = !DILocalVariable(name: "p", scope: !1861, file: !121, line: 807, type: !976)
!1869 = !DILocalVariable(name: "e", scope: !1861, file: !121, line: 808, type: !40)
!1870 = !DILocalVariable(name: "flags", scope: !1861, file: !121, line: 810, type: !40)
!1871 = !DILocalVariable(name: "bufsize", scope: !1861, file: !121, line: 811, type: !115)
!1872 = !DILocalVariable(name: "buf", scope: !1861, file: !121, line: 815, type: !6)
!1873 = !DILocation(line: 804, column: 33, scope: !1861, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 794, column: 10, scope: !1850)
!1875 = !DILocation(line: 804, column: 45, scope: !1861, inlinedAt: !1874)
!1876 = !DILocation(line: 804, column: 62, scope: !1861, inlinedAt: !1874)
!1877 = !DILocation(line: 805, column: 51, scope: !1861, inlinedAt: !1874)
!1878 = !DILocation(line: 807, column: 37, scope: !1861, inlinedAt: !1874)
!1879 = !DILocation(line: 807, column: 33, scope: !1861, inlinedAt: !1874)
!1880 = !DILocation(line: 808, column: 11, scope: !1861, inlinedAt: !1874)
!1881 = !DILocation(line: 808, column: 7, scope: !1861, inlinedAt: !1874)
!1882 = !DILocation(line: 810, column: 18, scope: !1861, inlinedAt: !1874)
!1883 = !DILocation(line: 810, column: 24, scope: !1861, inlinedAt: !1874)
!1884 = !DILocation(line: 810, column: 7, scope: !1861, inlinedAt: !1874)
!1885 = !DILocation(line: 811, column: 69, scope: !1861, inlinedAt: !1874)
!1886 = !DILocation(line: 812, column: 53, scope: !1861, inlinedAt: !1874)
!1887 = !DILocation(line: 813, column: 49, scope: !1861, inlinedAt: !1874)
!1888 = !DILocation(line: 814, column: 49, scope: !1861, inlinedAt: !1874)
!1889 = !DILocation(line: 811, column: 20, scope: !1861, inlinedAt: !1874)
!1890 = !DILocation(line: 814, column: 62, scope: !1861, inlinedAt: !1874)
!1891 = !DILocation(line: 811, column: 10, scope: !1861, inlinedAt: !1874)
!1892 = !DILocalVariable(name: "n", arg: 1, scope: !1893, file: !537, line: 220, type: !115)
!1893 = distinct !DISubprogram(name: "xcharalloc", scope: !537, file: !537, line: 220, type: !1894, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!6, !115}
!1896 = !{!1892}
!1897 = !DILocation(line: 220, column: 20, scope: !1893, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 815, column: 15, scope: !1861, inlinedAt: !1874)
!1899 = !DILocation(line: 222, column: 10, scope: !1893, inlinedAt: !1898)
!1900 = !DILocation(line: 815, column: 9, scope: !1861, inlinedAt: !1874)
!1901 = !DILocation(line: 816, column: 60, scope: !1861, inlinedAt: !1874)
!1902 = !DILocation(line: 818, column: 32, scope: !1861, inlinedAt: !1874)
!1903 = !DILocation(line: 818, column: 47, scope: !1861, inlinedAt: !1874)
!1904 = !DILocation(line: 816, column: 3, scope: !1861, inlinedAt: !1874)
!1905 = !DILocation(line: 819, column: 9, scope: !1861, inlinedAt: !1874)
!1906 = !DILocation(line: 794, column: 3, scope: !1850)
!1907 = !DILocation(line: 804, column: 33, scope: !1861)
!1908 = !DILocation(line: 804, column: 45, scope: !1861)
!1909 = !DILocation(line: 804, column: 62, scope: !1861)
!1910 = !DILocation(line: 805, column: 51, scope: !1861)
!1911 = !DILocation(line: 807, column: 37, scope: !1861)
!1912 = !DILocation(line: 807, column: 33, scope: !1861)
!1913 = !DILocation(line: 808, column: 11, scope: !1861)
!1914 = !DILocation(line: 808, column: 7, scope: !1861)
!1915 = !DILocation(line: 810, column: 18, scope: !1861)
!1916 = !DILocation(line: 810, column: 27, scope: !1861)
!1917 = !DILocation(line: 810, column: 24, scope: !1861)
!1918 = !DILocation(line: 810, column: 7, scope: !1861)
!1919 = !DILocation(line: 811, column: 69, scope: !1861)
!1920 = !DILocation(line: 812, column: 53, scope: !1861)
!1921 = !DILocation(line: 813, column: 49, scope: !1861)
!1922 = !DILocation(line: 814, column: 49, scope: !1861)
!1923 = !DILocation(line: 811, column: 20, scope: !1861)
!1924 = !DILocation(line: 814, column: 62, scope: !1861)
!1925 = !DILocation(line: 811, column: 10, scope: !1861)
!1926 = !DILocation(line: 220, column: 20, scope: !1893, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 815, column: 15, scope: !1861)
!1928 = !DILocation(line: 222, column: 10, scope: !1893, inlinedAt: !1927)
!1929 = !DILocation(line: 815, column: 9, scope: !1861)
!1930 = !DILocation(line: 816, column: 60, scope: !1861)
!1931 = !DILocation(line: 818, column: 32, scope: !1861)
!1932 = !DILocation(line: 818, column: 47, scope: !1861)
!1933 = !DILocation(line: 816, column: 3, scope: !1861)
!1934 = !DILocation(line: 819, column: 9, scope: !1861)
!1935 = !DILocation(line: 820, column: 7, scope: !1861)
!1936 = !DILocation(line: 821, column: 11, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1861, file: !121, line: 820, column: 7)
!1938 = !{!766, !766, i64 0}
!1939 = !DILocation(line: 821, column: 5, scope: !1937)
!1940 = !DILocation(line: 822, column: 3, scope: !1861)
!1941 = distinct !DISubprogram(name: "quotearg_free", scope: !121, file: !121, line: 840, type: !596, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1942)
!1942 = !{!1943, !1944}
!1943 = !DILocalVariable(name: "sv", scope: !1941, file: !121, line: 842, type: !148)
!1944 = !DILocalVariable(name: "i", scope: !1941, file: !121, line: 843, type: !40)
!1945 = !DILocation(line: 842, column: 24, scope: !1941)
!1946 = !DILocation(line: 842, column: 19, scope: !1941)
!1947 = !DILocation(line: 843, column: 7, scope: !1941)
!1948 = !DILocation(line: 844, column: 19, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !121, line: 844, column: 3)
!1950 = distinct !DILexicalBlock(scope: !1941, file: !121, line: 844, column: 3)
!1951 = !DILocation(line: 844, column: 17, scope: !1949)
!1952 = !DILocation(line: 844, column: 3, scope: !1950)
!1953 = !DILocation(line: 845, column: 17, scope: !1949)
!1954 = !{!1955, !588, i64 8}
!1955 = !{!"slotvec", !766, i64 0, !588, i64 8}
!1956 = !DILocation(line: 845, column: 5, scope: !1949)
!1957 = !DILocation(line: 844, column: 28, scope: !1949)
!1958 = distinct !{!1958, !1952, !1959}
!1959 = !DILocation(line: 845, column: 20, scope: !1950)
!1960 = !DILocation(line: 846, column: 13, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1941, file: !121, line: 846, column: 7)
!1962 = !DILocation(line: 846, column: 17, scope: !1961)
!1963 = !DILocation(line: 846, column: 7, scope: !1941)
!1964 = !DILocation(line: 848, column: 7, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1961, file: !121, line: 847, column: 5)
!1966 = !DILocation(line: 849, column: 21, scope: !1965)
!1967 = !{!1955, !766, i64 0}
!1968 = !DILocation(line: 850, column: 20, scope: !1965)
!1969 = !DILocation(line: 851, column: 5, scope: !1965)
!1970 = !DILocation(line: 852, column: 10, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1941, file: !121, line: 852, column: 7)
!1972 = !DILocation(line: 852, column: 7, scope: !1941)
!1973 = !DILocation(line: 854, column: 13, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !121, line: 853, column: 5)
!1975 = !DILocation(line: 854, column: 7, scope: !1974)
!1976 = !DILocation(line: 855, column: 15, scope: !1974)
!1977 = !DILocation(line: 856, column: 5, scope: !1974)
!1978 = !DILocation(line: 857, column: 10, scope: !1941)
!1979 = !DILocation(line: 858, column: 1, scope: !1941)
!1980 = distinct !DISubprogram(name: "quotearg_n", scope: !121, file: !121, line: 922, type: !1981, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!6, !40, !17}
!1983 = !{!1984, !1985}
!1984 = !DILocalVariable(name: "n", arg: 1, scope: !1980, file: !121, line: 922, type: !40)
!1985 = !DILocalVariable(name: "arg", arg: 2, scope: !1980, file: !121, line: 922, type: !17)
!1986 = !DILocation(line: 922, column: 17, scope: !1980)
!1987 = !DILocation(line: 922, column: 32, scope: !1980)
!1988 = !DILocation(line: 924, column: 10, scope: !1980)
!1989 = !DILocation(line: 924, column: 3, scope: !1980)
!1990 = distinct !DISubprogram(name: "quotearg_n_options", scope: !121, file: !121, line: 869, type: !1991, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!6, !40, !17, !115, !976}
!1993 = !{!1994, !1995, !1996, !1997, !1998, !1999, !2000, !2003, !2005, !2006, !2007}
!1994 = !DILocalVariable(name: "n", arg: 1, scope: !1990, file: !121, line: 869, type: !40)
!1995 = !DILocalVariable(name: "arg", arg: 2, scope: !1990, file: !121, line: 869, type: !17)
!1996 = !DILocalVariable(name: "argsize", arg: 3, scope: !1990, file: !121, line: 869, type: !115)
!1997 = !DILocalVariable(name: "options", arg: 4, scope: !1990, file: !121, line: 870, type: !976)
!1998 = !DILocalVariable(name: "e", scope: !1990, file: !121, line: 872, type: !40)
!1999 = !DILocalVariable(name: "sv", scope: !1990, file: !121, line: 874, type: !148)
!2000 = !DILocalVariable(name: "preallocated", scope: !2001, file: !121, line: 881, type: !59)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !121, line: 880, column: 5)
!2002 = distinct !DILexicalBlock(scope: !1990, file: !121, line: 879, column: 7)
!2003 = !DILocalVariable(name: "size", scope: !2004, file: !121, line: 894, type: !115)
!2004 = distinct !DILexicalBlock(scope: !1990, file: !121, line: 893, column: 3)
!2005 = !DILocalVariable(name: "val", scope: !2004, file: !121, line: 895, type: !6)
!2006 = !DILocalVariable(name: "flags", scope: !2004, file: !121, line: 897, type: !40)
!2007 = !DILocalVariable(name: "qsize", scope: !2004, file: !121, line: 898, type: !115)
!2008 = !DILocation(line: 869, column: 25, scope: !1990)
!2009 = !DILocation(line: 869, column: 40, scope: !1990)
!2010 = !DILocation(line: 869, column: 52, scope: !1990)
!2011 = !DILocation(line: 870, column: 51, scope: !1990)
!2012 = !DILocation(line: 872, column: 11, scope: !1990)
!2013 = !DILocation(line: 872, column: 7, scope: !1990)
!2014 = !DILocation(line: 874, column: 24, scope: !1990)
!2015 = !DILocation(line: 874, column: 19, scope: !1990)
!2016 = !DILocation(line: 876, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1990, file: !121, line: 876, column: 7)
!2018 = !DILocation(line: 876, column: 7, scope: !1990)
!2019 = !DILocation(line: 877, column: 5, scope: !2017)
!2020 = !DILocation(line: 879, column: 7, scope: !2002)
!2021 = !DILocation(line: 879, column: 14, scope: !2002)
!2022 = !DILocation(line: 879, column: 7, scope: !1990)
!2023 = !DILocation(line: 881, column: 31, scope: !2001)
!2024 = !DILocation(line: 883, column: 67, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2001, file: !121, line: 883, column: 11)
!2026 = !DILocation(line: 883, column: 11, scope: !2001)
!2027 = !DILocation(line: 884, column: 9, scope: !2025)
!2028 = !DILocation(line: 886, column: 32, scope: !2001)
!2029 = !DILocation(line: 886, column: 61, scope: !2001)
!2030 = !DILocation(line: 886, column: 58, scope: !2001)
!2031 = !DILocation(line: 886, column: 66, scope: !2001)
!2032 = !DILocation(line: 886, column: 22, scope: !2001)
!2033 = !DILocation(line: 886, column: 15, scope: !2001)
!2034 = !DILocation(line: 887, column: 11, scope: !2001)
!2035 = !DILocation(line: 888, column: 15, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2001, file: !121, line: 887, column: 11)
!2037 = !{i64 0, i64 8, !1938, i64 8, i64 8, !587}
!2038 = !DILocation(line: 888, column: 9, scope: !2036)
!2039 = !DILocation(line: 889, column: 20, scope: !2001)
!2040 = !DILocation(line: 889, column: 18, scope: !2001)
!2041 = !DILocation(line: 889, column: 7, scope: !2001)
!2042 = !DILocation(line: 889, column: 38, scope: !2001)
!2043 = !DILocation(line: 889, column: 31, scope: !2001)
!2044 = !DILocation(line: 889, column: 48, scope: !2001)
!2045 = !DILocation(line: 890, column: 14, scope: !2001)
!2046 = !DILocation(line: 891, column: 5, scope: !2001)
!2047 = !DILocation(line: 894, column: 19, scope: !2004)
!2048 = !DILocation(line: 894, column: 25, scope: !2004)
!2049 = !DILocation(line: 894, column: 12, scope: !2004)
!2050 = !DILocation(line: 895, column: 23, scope: !2004)
!2051 = !DILocation(line: 895, column: 11, scope: !2004)
!2052 = !DILocation(line: 897, column: 26, scope: !2004)
!2053 = !DILocation(line: 897, column: 32, scope: !2004)
!2054 = !DILocation(line: 897, column: 9, scope: !2004)
!2055 = !DILocation(line: 899, column: 55, scope: !2004)
!2056 = !DILocation(line: 900, column: 46, scope: !2004)
!2057 = !DILocation(line: 901, column: 55, scope: !2004)
!2058 = !DILocation(line: 902, column: 55, scope: !2004)
!2059 = !DILocation(line: 898, column: 20, scope: !2004)
!2060 = !DILocation(line: 898, column: 12, scope: !2004)
!2061 = !DILocation(line: 904, column: 14, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2004, file: !121, line: 904, column: 9)
!2063 = !DILocation(line: 904, column: 9, scope: !2004)
!2064 = !DILocation(line: 906, column: 35, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !121, line: 905, column: 7)
!2066 = !DILocation(line: 906, column: 20, scope: !2065)
!2067 = !DILocation(line: 907, column: 17, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !121, line: 907, column: 13)
!2069 = !DILocation(line: 907, column: 13, scope: !2065)
!2070 = !DILocation(line: 908, column: 11, scope: !2068)
!2071 = !DILocation(line: 220, column: 20, scope: !1893, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 909, column: 27, scope: !2065)
!2073 = !DILocation(line: 222, column: 10, scope: !1893, inlinedAt: !2072)
!2074 = !DILocation(line: 909, column: 19, scope: !2065)
!2075 = !DILocation(line: 910, column: 69, scope: !2065)
!2076 = !DILocation(line: 912, column: 44, scope: !2065)
!2077 = !DILocation(line: 913, column: 44, scope: !2065)
!2078 = !DILocation(line: 910, column: 9, scope: !2065)
!2079 = !DILocation(line: 914, column: 7, scope: !2065)
!2080 = !DILocation(line: 916, column: 11, scope: !2004)
!2081 = !DILocation(line: 917, column: 5, scope: !2004)
!2082 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !121, file: !121, line: 928, type: !2083, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2085)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!6, !40, !17, !115}
!2085 = !{!2086, !2087, !2088}
!2086 = !DILocalVariable(name: "n", arg: 1, scope: !2082, file: !121, line: 928, type: !40)
!2087 = !DILocalVariable(name: "arg", arg: 2, scope: !2082, file: !121, line: 928, type: !17)
!2088 = !DILocalVariable(name: "argsize", arg: 3, scope: !2082, file: !121, line: 928, type: !115)
!2089 = !DILocation(line: 928, column: 21, scope: !2082)
!2090 = !DILocation(line: 928, column: 36, scope: !2082)
!2091 = !DILocation(line: 928, column: 48, scope: !2082)
!2092 = !DILocation(line: 930, column: 10, scope: !2082)
!2093 = !DILocation(line: 930, column: 3, scope: !2082)
!2094 = distinct !DISubprogram(name: "quotearg", scope: !121, file: !121, line: 934, type: !824, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2095)
!2095 = !{!2096}
!2096 = !DILocalVariable(name: "arg", arg: 1, scope: !2094, file: !121, line: 934, type: !17)
!2097 = !DILocation(line: 934, column: 23, scope: !2094)
!2098 = !DILocation(line: 922, column: 17, scope: !1980, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 936, column: 10, scope: !2094)
!2100 = !DILocation(line: 922, column: 32, scope: !1980, inlinedAt: !2099)
!2101 = !DILocation(line: 924, column: 10, scope: !1980, inlinedAt: !2099)
!2102 = !DILocation(line: 936, column: 3, scope: !2094)
!2103 = distinct !DISubprogram(name: "quotearg_mem", scope: !121, file: !121, line: 940, type: !2104, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2106)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!6, !17, !115}
!2106 = !{!2107, !2108}
!2107 = !DILocalVariable(name: "arg", arg: 1, scope: !2103, file: !121, line: 940, type: !17)
!2108 = !DILocalVariable(name: "argsize", arg: 2, scope: !2103, file: !121, line: 940, type: !115)
!2109 = !DILocation(line: 940, column: 27, scope: !2103)
!2110 = !DILocation(line: 940, column: 39, scope: !2103)
!2111 = !DILocation(line: 928, column: 21, scope: !2082, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 942, column: 10, scope: !2103)
!2113 = !DILocation(line: 928, column: 36, scope: !2082, inlinedAt: !2112)
!2114 = !DILocation(line: 928, column: 48, scope: !2082, inlinedAt: !2112)
!2115 = !DILocation(line: 930, column: 10, scope: !2082, inlinedAt: !2112)
!2116 = !DILocation(line: 942, column: 3, scope: !2103)
!2117 = distinct !DISubprogram(name: "quotearg_n_style", scope: !121, file: !121, line: 946, type: !2118, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!6, !40, !79, !17}
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DILocalVariable(name: "n", arg: 1, scope: !2117, file: !121, line: 946, type: !40)
!2122 = !DILocalVariable(name: "s", arg: 2, scope: !2117, file: !121, line: 946, type: !79)
!2123 = !DILocalVariable(name: "arg", arg: 3, scope: !2117, file: !121, line: 946, type: !17)
!2124 = !DILocalVariable(name: "o", scope: !2117, file: !121, line: 948, type: !977)
!2125 = !DILocalVariable(name: "o", scope: !2126, file: !121, line: 187, type: !128)
!2126 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !121, file: !121, line: 185, type: !2127, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!128, !79}
!2129 = !{!2130, !2125}
!2130 = !DILocalVariable(name: "style", arg: 1, scope: !2126, file: !121, line: 185, type: !79)
!2131 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2132 = !DILocation(line: 187, column: 26, scope: !2126, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 948, column: 36, scope: !2117)
!2134 = !DILocation(line: 946, column: 23, scope: !2117)
!2135 = !DILocation(line: 946, column: 45, scope: !2117)
!2136 = !DILocation(line: 946, column: 60, scope: !2117)
!2137 = !DILocation(line: 948, column: 3, scope: !2117)
!2138 = !DILocation(line: 948, column: 32, scope: !2117)
!2139 = !DILocation(line: 185, column: 48, scope: !2126, inlinedAt: !2133)
!2140 = !DILocation(line: 187, column: 3, scope: !2126, inlinedAt: !2133)
!2141 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2142 = !DILocation(line: 188, column: 13, scope: !2143, inlinedAt: !2133)
!2143 = distinct !DILexicalBlock(scope: !2126, file: !121, line: 188, column: 7)
!2144 = !DILocation(line: 188, column: 7, scope: !2126, inlinedAt: !2133)
!2145 = !DILocation(line: 189, column: 5, scope: !2143, inlinedAt: !2133)
!2146 = !{!2147}
!2147 = distinct !{!2147, !2148, !"quoting_options_from_style: argument 0"}
!2148 = distinct !{!2148, !"quoting_options_from_style"}
!2149 = !DILocation(line: 191, column: 10, scope: !2126, inlinedAt: !2133)
!2150 = !DILocation(line: 192, column: 1, scope: !2126, inlinedAt: !2133)
!2151 = !DILocation(line: 949, column: 10, scope: !2117)
!2152 = !DILocation(line: 950, column: 1, scope: !2117)
!2153 = !DILocation(line: 949, column: 3, scope: !2117)
!2154 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !121, file: !121, line: 953, type: !2155, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!6, !40, !79, !17, !115}
!2157 = !{!2158, !2159, !2160, !2161, !2162}
!2158 = !DILocalVariable(name: "n", arg: 1, scope: !2154, file: !121, line: 953, type: !40)
!2159 = !DILocalVariable(name: "s", arg: 2, scope: !2154, file: !121, line: 953, type: !79)
!2160 = !DILocalVariable(name: "arg", arg: 3, scope: !2154, file: !121, line: 954, type: !17)
!2161 = !DILocalVariable(name: "argsize", arg: 4, scope: !2154, file: !121, line: 954, type: !115)
!2162 = !DILocalVariable(name: "o", scope: !2154, file: !121, line: 956, type: !977)
!2163 = !DILocation(line: 187, column: 26, scope: !2126, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 956, column: 36, scope: !2154)
!2165 = !DILocation(line: 953, column: 27, scope: !2154)
!2166 = !DILocation(line: 953, column: 49, scope: !2154)
!2167 = !DILocation(line: 954, column: 35, scope: !2154)
!2168 = !DILocation(line: 954, column: 47, scope: !2154)
!2169 = !DILocation(line: 956, column: 3, scope: !2154)
!2170 = !DILocation(line: 956, column: 32, scope: !2154)
!2171 = !DILocation(line: 185, column: 48, scope: !2126, inlinedAt: !2164)
!2172 = !DILocation(line: 187, column: 3, scope: !2126, inlinedAt: !2164)
!2173 = !DILocation(line: 188, column: 13, scope: !2143, inlinedAt: !2164)
!2174 = !DILocation(line: 188, column: 7, scope: !2126, inlinedAt: !2164)
!2175 = !DILocation(line: 189, column: 5, scope: !2143, inlinedAt: !2164)
!2176 = !{!2177}
!2177 = distinct !{!2177, !2178, !"quoting_options_from_style: argument 0"}
!2178 = distinct !{!2178, !"quoting_options_from_style"}
!2179 = !DILocation(line: 191, column: 10, scope: !2126, inlinedAt: !2164)
!2180 = !DILocation(line: 192, column: 1, scope: !2126, inlinedAt: !2164)
!2181 = !DILocation(line: 957, column: 10, scope: !2154)
!2182 = !DILocation(line: 958, column: 1, scope: !2154)
!2183 = !DILocation(line: 957, column: 3, scope: !2154)
!2184 = distinct !DISubprogram(name: "quotearg_style", scope: !121, file: !121, line: 961, type: !2185, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!6, !79, !17}
!2187 = !{!2188, !2189}
!2188 = !DILocalVariable(name: "s", arg: 1, scope: !2184, file: !121, line: 961, type: !79)
!2189 = !DILocalVariable(name: "arg", arg: 2, scope: !2184, file: !121, line: 961, type: !17)
!2190 = !DILocation(line: 187, column: 26, scope: !2126, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 948, column: 36, scope: !2117, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 963, column: 10, scope: !2184)
!2193 = !DILocation(line: 961, column: 36, scope: !2184)
!2194 = !DILocation(line: 961, column: 51, scope: !2184)
!2195 = !DILocation(line: 946, column: 23, scope: !2117, inlinedAt: !2192)
!2196 = !DILocation(line: 946, column: 45, scope: !2117, inlinedAt: !2192)
!2197 = !DILocation(line: 946, column: 60, scope: !2117, inlinedAt: !2192)
!2198 = !DILocation(line: 948, column: 3, scope: !2117, inlinedAt: !2192)
!2199 = !DILocation(line: 948, column: 32, scope: !2117, inlinedAt: !2192)
!2200 = !DILocation(line: 185, column: 48, scope: !2126, inlinedAt: !2191)
!2201 = !DILocation(line: 187, column: 3, scope: !2126, inlinedAt: !2191)
!2202 = !DILocation(line: 188, column: 13, scope: !2143, inlinedAt: !2191)
!2203 = !DILocation(line: 188, column: 7, scope: !2126, inlinedAt: !2191)
!2204 = !DILocation(line: 189, column: 5, scope: !2143, inlinedAt: !2191)
!2205 = !{!2206}
!2206 = distinct !{!2206, !2207, !"quoting_options_from_style: argument 0"}
!2207 = distinct !{!2207, !"quoting_options_from_style"}
!2208 = !DILocation(line: 191, column: 10, scope: !2126, inlinedAt: !2191)
!2209 = !DILocation(line: 192, column: 1, scope: !2126, inlinedAt: !2191)
!2210 = !DILocation(line: 949, column: 10, scope: !2117, inlinedAt: !2192)
!2211 = !DILocation(line: 950, column: 1, scope: !2117, inlinedAt: !2192)
!2212 = !DILocation(line: 963, column: 3, scope: !2184)
!2213 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !121, file: !121, line: 967, type: !2214, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!6, !79, !17, !115}
!2216 = !{!2217, !2218, !2219}
!2217 = !DILocalVariable(name: "s", arg: 1, scope: !2213, file: !121, line: 967, type: !79)
!2218 = !DILocalVariable(name: "arg", arg: 2, scope: !2213, file: !121, line: 967, type: !17)
!2219 = !DILocalVariable(name: "argsize", arg: 3, scope: !2213, file: !121, line: 967, type: !115)
!2220 = !DILocation(line: 187, column: 26, scope: !2126, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 956, column: 36, scope: !2154, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 969, column: 10, scope: !2213)
!2223 = !DILocation(line: 967, column: 40, scope: !2213)
!2224 = !DILocation(line: 967, column: 55, scope: !2213)
!2225 = !DILocation(line: 967, column: 67, scope: !2213)
!2226 = !DILocation(line: 953, column: 27, scope: !2154, inlinedAt: !2222)
!2227 = !DILocation(line: 953, column: 49, scope: !2154, inlinedAt: !2222)
!2228 = !DILocation(line: 954, column: 35, scope: !2154, inlinedAt: !2222)
!2229 = !DILocation(line: 954, column: 47, scope: !2154, inlinedAt: !2222)
!2230 = !DILocation(line: 956, column: 3, scope: !2154, inlinedAt: !2222)
!2231 = !DILocation(line: 956, column: 32, scope: !2154, inlinedAt: !2222)
!2232 = !DILocation(line: 185, column: 48, scope: !2126, inlinedAt: !2221)
!2233 = !DILocation(line: 187, column: 3, scope: !2126, inlinedAt: !2221)
!2234 = !DILocation(line: 188, column: 13, scope: !2143, inlinedAt: !2221)
!2235 = !DILocation(line: 188, column: 7, scope: !2126, inlinedAt: !2221)
!2236 = !DILocation(line: 189, column: 5, scope: !2143, inlinedAt: !2221)
!2237 = !{!2238}
!2238 = distinct !{!2238, !2239, !"quoting_options_from_style: argument 0"}
!2239 = distinct !{!2239, !"quoting_options_from_style"}
!2240 = !DILocation(line: 191, column: 10, scope: !2126, inlinedAt: !2221)
!2241 = !DILocation(line: 192, column: 1, scope: !2126, inlinedAt: !2221)
!2242 = !DILocation(line: 957, column: 10, scope: !2154, inlinedAt: !2222)
!2243 = !DILocation(line: 958, column: 1, scope: !2154, inlinedAt: !2222)
!2244 = !DILocation(line: 969, column: 3, scope: !2213)
!2245 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !121, file: !121, line: 973, type: !2246, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!6, !17, !115, !7}
!2248 = !{!2249, !2250, !2251, !2252}
!2249 = !DILocalVariable(name: "arg", arg: 1, scope: !2245, file: !121, line: 973, type: !17)
!2250 = !DILocalVariable(name: "argsize", arg: 2, scope: !2245, file: !121, line: 973, type: !115)
!2251 = !DILocalVariable(name: "ch", arg: 3, scope: !2245, file: !121, line: 973, type: !7)
!2252 = !DILocalVariable(name: "options", scope: !2245, file: !121, line: 975, type: !128)
!2253 = !DILocation(line: 973, column: 32, scope: !2245)
!2254 = !DILocation(line: 973, column: 44, scope: !2245)
!2255 = !DILocation(line: 973, column: 58, scope: !2245)
!2256 = !DILocation(line: 975, column: 3, scope: !2245)
!2257 = !DILocation(line: 976, column: 13, scope: !2245)
!2258 = !{i64 0, i64 4, !716, i64 4, i64 4, !657, i64 8, i64 32, !716, i64 40, i64 8, !587, i64 48, i64 8, !587}
!2259 = !DILocation(line: 975, column: 26, scope: !2245)
!2260 = !DILocation(line: 144, column: 43, scope: !998, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 977, column: 3, scope: !2245)
!2262 = !DILocation(line: 144, column: 51, scope: !998, inlinedAt: !2261)
!2263 = !DILocation(line: 144, column: 58, scope: !998, inlinedAt: !2261)
!2264 = !DILocation(line: 146, column: 17, scope: !998, inlinedAt: !2261)
!2265 = !DILocation(line: 148, column: 62, scope: !998, inlinedAt: !2261)
!2266 = !DILocation(line: 148, column: 57, scope: !998, inlinedAt: !2261)
!2267 = !DILocation(line: 147, column: 17, scope: !998, inlinedAt: !2261)
!2268 = !DILocation(line: 149, column: 18, scope: !998, inlinedAt: !2261)
!2269 = !DILocation(line: 149, column: 15, scope: !998, inlinedAt: !2261)
!2270 = !DILocation(line: 149, column: 7, scope: !998, inlinedAt: !2261)
!2271 = !DILocation(line: 150, column: 12, scope: !998, inlinedAt: !2261)
!2272 = !DILocation(line: 150, column: 15, scope: !998, inlinedAt: !2261)
!2273 = !DILocation(line: 150, column: 25, scope: !998, inlinedAt: !2261)
!2274 = !DILocation(line: 150, column: 7, scope: !998, inlinedAt: !2261)
!2275 = !DILocation(line: 151, column: 18, scope: !998, inlinedAt: !2261)
!2276 = !DILocation(line: 151, column: 23, scope: !998, inlinedAt: !2261)
!2277 = !DILocation(line: 151, column: 6, scope: !998, inlinedAt: !2261)
!2278 = !DILocation(line: 978, column: 10, scope: !2245)
!2279 = !DILocation(line: 979, column: 1, scope: !2245)
!2280 = !DILocation(line: 978, column: 3, scope: !2245)
!2281 = distinct !DISubprogram(name: "quotearg_char", scope: !121, file: !121, line: 982, type: !2282, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2284)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!6, !17, !7}
!2284 = !{!2285, !2286}
!2285 = !DILocalVariable(name: "arg", arg: 1, scope: !2281, file: !121, line: 982, type: !17)
!2286 = !DILocalVariable(name: "ch", arg: 2, scope: !2281, file: !121, line: 982, type: !7)
!2287 = !DILocation(line: 982, column: 28, scope: !2281)
!2288 = !DILocation(line: 982, column: 38, scope: !2281)
!2289 = !DILocation(line: 973, column: 32, scope: !2245, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 984, column: 10, scope: !2281)
!2291 = !DILocation(line: 973, column: 44, scope: !2245, inlinedAt: !2290)
!2292 = !DILocation(line: 973, column: 58, scope: !2245, inlinedAt: !2290)
!2293 = !DILocation(line: 975, column: 3, scope: !2245, inlinedAt: !2290)
!2294 = !DILocation(line: 976, column: 13, scope: !2245, inlinedAt: !2290)
!2295 = !DILocation(line: 975, column: 26, scope: !2245, inlinedAt: !2290)
!2296 = !DILocation(line: 144, column: 43, scope: !998, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 977, column: 3, scope: !2245, inlinedAt: !2290)
!2298 = !DILocation(line: 144, column: 51, scope: !998, inlinedAt: !2297)
!2299 = !DILocation(line: 144, column: 58, scope: !998, inlinedAt: !2297)
!2300 = !DILocation(line: 146, column: 17, scope: !998, inlinedAt: !2297)
!2301 = !DILocation(line: 148, column: 62, scope: !998, inlinedAt: !2297)
!2302 = !DILocation(line: 148, column: 57, scope: !998, inlinedAt: !2297)
!2303 = !DILocation(line: 147, column: 17, scope: !998, inlinedAt: !2297)
!2304 = !DILocation(line: 149, column: 18, scope: !998, inlinedAt: !2297)
!2305 = !DILocation(line: 149, column: 15, scope: !998, inlinedAt: !2297)
!2306 = !DILocation(line: 149, column: 7, scope: !998, inlinedAt: !2297)
!2307 = !DILocation(line: 150, column: 12, scope: !998, inlinedAt: !2297)
!2308 = !DILocation(line: 150, column: 15, scope: !998, inlinedAt: !2297)
!2309 = !DILocation(line: 150, column: 25, scope: !998, inlinedAt: !2297)
!2310 = !DILocation(line: 150, column: 7, scope: !998, inlinedAt: !2297)
!2311 = !DILocation(line: 151, column: 18, scope: !998, inlinedAt: !2297)
!2312 = !DILocation(line: 151, column: 23, scope: !998, inlinedAt: !2297)
!2313 = !DILocation(line: 151, column: 6, scope: !998, inlinedAt: !2297)
!2314 = !DILocation(line: 978, column: 10, scope: !2245, inlinedAt: !2290)
!2315 = !DILocation(line: 979, column: 1, scope: !2245, inlinedAt: !2290)
!2316 = !DILocation(line: 984, column: 3, scope: !2281)
!2317 = distinct !DISubprogram(name: "quotearg_colon", scope: !121, file: !121, line: 988, type: !824, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2318)
!2318 = !{!2319}
!2319 = !DILocalVariable(name: "arg", arg: 1, scope: !2317, file: !121, line: 988, type: !17)
!2320 = !DILocation(line: 988, column: 29, scope: !2317)
!2321 = !DILocation(line: 982, column: 28, scope: !2281, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 990, column: 10, scope: !2317)
!2323 = !DILocation(line: 982, column: 38, scope: !2281, inlinedAt: !2322)
!2324 = !DILocation(line: 973, column: 32, scope: !2245, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 984, column: 10, scope: !2281, inlinedAt: !2322)
!2326 = !DILocation(line: 973, column: 44, scope: !2245, inlinedAt: !2325)
!2327 = !DILocation(line: 973, column: 58, scope: !2245, inlinedAt: !2325)
!2328 = !DILocation(line: 975, column: 3, scope: !2245, inlinedAt: !2325)
!2329 = !DILocation(line: 976, column: 13, scope: !2245, inlinedAt: !2325)
!2330 = !DILocation(line: 975, column: 26, scope: !2245, inlinedAt: !2325)
!2331 = !DILocation(line: 144, column: 43, scope: !998, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 977, column: 3, scope: !2245, inlinedAt: !2325)
!2333 = !DILocation(line: 144, column: 51, scope: !998, inlinedAt: !2332)
!2334 = !DILocation(line: 144, column: 58, scope: !998, inlinedAt: !2332)
!2335 = !DILocation(line: 146, column: 17, scope: !998, inlinedAt: !2332)
!2336 = !DILocation(line: 148, column: 57, scope: !998, inlinedAt: !2332)
!2337 = !DILocation(line: 147, column: 17, scope: !998, inlinedAt: !2332)
!2338 = !DILocation(line: 149, column: 7, scope: !998, inlinedAt: !2332)
!2339 = !DILocation(line: 150, column: 12, scope: !998, inlinedAt: !2332)
!2340 = !DILocation(line: 151, column: 6, scope: !998, inlinedAt: !2332)
!2341 = !DILocation(line: 978, column: 10, scope: !2245, inlinedAt: !2325)
!2342 = !DILocation(line: 979, column: 1, scope: !2245, inlinedAt: !2325)
!2343 = !DILocation(line: 990, column: 3, scope: !2317)
!2344 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !121, file: !121, line: 994, type: !2104, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2345)
!2345 = !{!2346, !2347}
!2346 = !DILocalVariable(name: "arg", arg: 1, scope: !2344, file: !121, line: 994, type: !17)
!2347 = !DILocalVariable(name: "argsize", arg: 2, scope: !2344, file: !121, line: 994, type: !115)
!2348 = !DILocation(line: 994, column: 33, scope: !2344)
!2349 = !DILocation(line: 994, column: 45, scope: !2344)
!2350 = !DILocation(line: 973, column: 32, scope: !2245, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 996, column: 10, scope: !2344)
!2352 = !DILocation(line: 973, column: 44, scope: !2245, inlinedAt: !2351)
!2353 = !DILocation(line: 973, column: 58, scope: !2245, inlinedAt: !2351)
!2354 = !DILocation(line: 975, column: 3, scope: !2245, inlinedAt: !2351)
!2355 = !DILocation(line: 976, column: 13, scope: !2245, inlinedAt: !2351)
!2356 = !DILocation(line: 975, column: 26, scope: !2245, inlinedAt: !2351)
!2357 = !DILocation(line: 144, column: 43, scope: !998, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 977, column: 3, scope: !2245, inlinedAt: !2351)
!2359 = !DILocation(line: 144, column: 51, scope: !998, inlinedAt: !2358)
!2360 = !DILocation(line: 144, column: 58, scope: !998, inlinedAt: !2358)
!2361 = !DILocation(line: 146, column: 17, scope: !998, inlinedAt: !2358)
!2362 = !DILocation(line: 148, column: 57, scope: !998, inlinedAt: !2358)
!2363 = !DILocation(line: 147, column: 17, scope: !998, inlinedAt: !2358)
!2364 = !DILocation(line: 149, column: 7, scope: !998, inlinedAt: !2358)
!2365 = !DILocation(line: 150, column: 12, scope: !998, inlinedAt: !2358)
!2366 = !DILocation(line: 151, column: 6, scope: !998, inlinedAt: !2358)
!2367 = !DILocation(line: 978, column: 10, scope: !2245, inlinedAt: !2351)
!2368 = !DILocation(line: 979, column: 1, scope: !2245, inlinedAt: !2351)
!2369 = !DILocation(line: 996, column: 3, scope: !2344)
!2370 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !121, file: !121, line: 1000, type: !2118, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2371)
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DILocalVariable(name: "n", arg: 1, scope: !2370, file: !121, line: 1000, type: !40)
!2373 = !DILocalVariable(name: "s", arg: 2, scope: !2370, file: !121, line: 1000, type: !79)
!2374 = !DILocalVariable(name: "arg", arg: 3, scope: !2370, file: !121, line: 1000, type: !17)
!2375 = !DILocalVariable(name: "options", scope: !2370, file: !121, line: 1002, type: !128)
!2376 = !DILocation(line: 187, column: 26, scope: !2126, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 1003, column: 13, scope: !2370)
!2378 = !DILocation(line: 1000, column: 29, scope: !2370)
!2379 = !DILocation(line: 1000, column: 51, scope: !2370)
!2380 = !DILocation(line: 1000, column: 66, scope: !2370)
!2381 = !DILocation(line: 1002, column: 3, scope: !2370)
!2382 = !DILocation(line: 185, column: 48, scope: !2126, inlinedAt: !2377)
!2383 = !DILocation(line: 187, column: 3, scope: !2126, inlinedAt: !2377)
!2384 = !DILocation(line: 188, column: 13, scope: !2143, inlinedAt: !2377)
!2385 = !DILocation(line: 188, column: 7, scope: !2126, inlinedAt: !2377)
!2386 = !DILocation(line: 189, column: 5, scope: !2143, inlinedAt: !2377)
!2387 = !{!2388}
!2388 = distinct !{!2388, !2389, !"quoting_options_from_style: argument 0"}
!2389 = distinct !{!2389, !"quoting_options_from_style"}
!2390 = !DILocation(line: 191, column: 10, scope: !2126, inlinedAt: !2377)
!2391 = !DILocation(line: 192, column: 1, scope: !2126, inlinedAt: !2377)
!2392 = !DILocation(line: 1003, column: 13, scope: !2370)
!2393 = !DILocation(line: 1002, column: 26, scope: !2370)
!2394 = !DILocation(line: 144, column: 43, scope: !998, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 1004, column: 3, scope: !2370)
!2396 = !DILocation(line: 144, column: 51, scope: !998, inlinedAt: !2395)
!2397 = !DILocation(line: 144, column: 58, scope: !998, inlinedAt: !2395)
!2398 = !DILocation(line: 146, column: 17, scope: !998, inlinedAt: !2395)
!2399 = !DILocation(line: 148, column: 57, scope: !998, inlinedAt: !2395)
!2400 = !DILocation(line: 147, column: 17, scope: !998, inlinedAt: !2395)
!2401 = !DILocation(line: 149, column: 7, scope: !998, inlinedAt: !2395)
!2402 = !DILocation(line: 150, column: 12, scope: !998, inlinedAt: !2395)
!2403 = !DILocation(line: 151, column: 6, scope: !998, inlinedAt: !2395)
!2404 = !DILocation(line: 1005, column: 10, scope: !2370)
!2405 = !DILocation(line: 1006, column: 1, scope: !2370)
!2406 = !DILocation(line: 1005, column: 3, scope: !2370)
!2407 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !121, file: !121, line: 1009, type: !2408, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!6, !40, !17, !17, !17}
!2410 = !{!2411, !2412, !2413, !2414}
!2411 = !DILocalVariable(name: "n", arg: 1, scope: !2407, file: !121, line: 1009, type: !40)
!2412 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2407, file: !121, line: 1009, type: !17)
!2413 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2407, file: !121, line: 1010, type: !17)
!2414 = !DILocalVariable(name: "arg", arg: 4, scope: !2407, file: !121, line: 1010, type: !17)
!2415 = !DILocation(line: 1009, column: 24, scope: !2407)
!2416 = !DILocation(line: 1009, column: 39, scope: !2407)
!2417 = !DILocation(line: 1010, column: 32, scope: !2407)
!2418 = !DILocation(line: 1010, column: 57, scope: !2407)
!2419 = !DILocalVariable(name: "n", arg: 1, scope: !2420, file: !121, line: 1017, type: !40)
!2420 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !121, file: !121, line: 1017, type: !2421, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!6, !40, !17, !17, !17, !115}
!2423 = !{!2419, !2424, !2425, !2426, !2427, !2428}
!2424 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2420, file: !121, line: 1017, type: !17)
!2425 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2420, file: !121, line: 1018, type: !17)
!2426 = !DILocalVariable(name: "arg", arg: 4, scope: !2420, file: !121, line: 1019, type: !17)
!2427 = !DILocalVariable(name: "argsize", arg: 5, scope: !2420, file: !121, line: 1019, type: !115)
!2428 = !DILocalVariable(name: "o", scope: !2420, file: !121, line: 1021, type: !128)
!2429 = !DILocation(line: 1017, column: 28, scope: !2420, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 1012, column: 10, scope: !2407)
!2431 = !DILocation(line: 1017, column: 43, scope: !2420, inlinedAt: !2430)
!2432 = !DILocation(line: 1018, column: 36, scope: !2420, inlinedAt: !2430)
!2433 = !DILocation(line: 1019, column: 36, scope: !2420, inlinedAt: !2430)
!2434 = !DILocation(line: 1019, column: 48, scope: !2420, inlinedAt: !2430)
!2435 = !DILocation(line: 1021, column: 3, scope: !2420, inlinedAt: !2430)
!2436 = !DILocation(line: 1021, column: 30, scope: !2420, inlinedAt: !2430)
!2437 = !DILocation(line: 1021, column: 26, scope: !2420, inlinedAt: !2430)
!2438 = !DILocation(line: 171, column: 45, scope: !1047, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 1022, column: 3, scope: !2420, inlinedAt: !2430)
!2440 = !DILocation(line: 172, column: 33, scope: !1047, inlinedAt: !2439)
!2441 = !DILocation(line: 172, column: 57, scope: !1047, inlinedAt: !2439)
!2442 = !DILocation(line: 176, column: 6, scope: !1047, inlinedAt: !2439)
!2443 = !DILocation(line: 176, column: 12, scope: !1047, inlinedAt: !2439)
!2444 = !DILocation(line: 177, column: 8, scope: !1063, inlinedAt: !2439)
!2445 = !DILocation(line: 177, column: 23, scope: !1063, inlinedAt: !2439)
!2446 = !DILocation(line: 177, column: 19, scope: !1063, inlinedAt: !2439)
!2447 = !DILocation(line: 178, column: 5, scope: !1063, inlinedAt: !2439)
!2448 = !DILocation(line: 179, column: 6, scope: !1047, inlinedAt: !2439)
!2449 = !DILocation(line: 179, column: 17, scope: !1047, inlinedAt: !2439)
!2450 = !DILocation(line: 180, column: 6, scope: !1047, inlinedAt: !2439)
!2451 = !DILocation(line: 180, column: 18, scope: !1047, inlinedAt: !2439)
!2452 = !DILocation(line: 1023, column: 10, scope: !2420, inlinedAt: !2430)
!2453 = !DILocation(line: 1024, column: 1, scope: !2420, inlinedAt: !2430)
!2454 = !DILocation(line: 1012, column: 3, scope: !2407)
!2455 = !DILocation(line: 1017, column: 28, scope: !2420)
!2456 = !DILocation(line: 1017, column: 43, scope: !2420)
!2457 = !DILocation(line: 1018, column: 36, scope: !2420)
!2458 = !DILocation(line: 1019, column: 36, scope: !2420)
!2459 = !DILocation(line: 1019, column: 48, scope: !2420)
!2460 = !DILocation(line: 1021, column: 3, scope: !2420)
!2461 = !DILocation(line: 1021, column: 30, scope: !2420)
!2462 = !DILocation(line: 1021, column: 26, scope: !2420)
!2463 = !DILocation(line: 171, column: 45, scope: !1047, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 1022, column: 3, scope: !2420)
!2465 = !DILocation(line: 172, column: 33, scope: !1047, inlinedAt: !2464)
!2466 = !DILocation(line: 172, column: 57, scope: !1047, inlinedAt: !2464)
!2467 = !DILocation(line: 176, column: 6, scope: !1047, inlinedAt: !2464)
!2468 = !DILocation(line: 176, column: 12, scope: !1047, inlinedAt: !2464)
!2469 = !DILocation(line: 177, column: 8, scope: !1063, inlinedAt: !2464)
!2470 = !DILocation(line: 177, column: 23, scope: !1063, inlinedAt: !2464)
!2471 = !DILocation(line: 177, column: 19, scope: !1063, inlinedAt: !2464)
!2472 = !DILocation(line: 178, column: 5, scope: !1063, inlinedAt: !2464)
!2473 = !DILocation(line: 179, column: 6, scope: !1047, inlinedAt: !2464)
!2474 = !DILocation(line: 179, column: 17, scope: !1047, inlinedAt: !2464)
!2475 = !DILocation(line: 180, column: 6, scope: !1047, inlinedAt: !2464)
!2476 = !DILocation(line: 180, column: 18, scope: !1047, inlinedAt: !2464)
!2477 = !DILocation(line: 1023, column: 10, scope: !2420)
!2478 = !DILocation(line: 1024, column: 1, scope: !2420)
!2479 = !DILocation(line: 1023, column: 3, scope: !2420)
!2480 = distinct !DISubprogram(name: "quotearg_custom", scope: !121, file: !121, line: 1027, type: !2481, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!6, !17, !17, !17}
!2483 = !{!2484, !2485, !2486}
!2484 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2480, file: !121, line: 1027, type: !17)
!2485 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2480, file: !121, line: 1027, type: !17)
!2486 = !DILocalVariable(name: "arg", arg: 3, scope: !2480, file: !121, line: 1028, type: !17)
!2487 = !DILocation(line: 1027, column: 30, scope: !2480)
!2488 = !DILocation(line: 1027, column: 54, scope: !2480)
!2489 = !DILocation(line: 1028, column: 30, scope: !2480)
!2490 = !DILocation(line: 1009, column: 24, scope: !2407, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 1030, column: 10, scope: !2480)
!2492 = !DILocation(line: 1009, column: 39, scope: !2407, inlinedAt: !2491)
!2493 = !DILocation(line: 1010, column: 32, scope: !2407, inlinedAt: !2491)
!2494 = !DILocation(line: 1010, column: 57, scope: !2407, inlinedAt: !2491)
!2495 = !DILocation(line: 1017, column: 28, scope: !2420, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 1012, column: 10, scope: !2407, inlinedAt: !2491)
!2497 = !DILocation(line: 1017, column: 43, scope: !2420, inlinedAt: !2496)
!2498 = !DILocation(line: 1018, column: 36, scope: !2420, inlinedAt: !2496)
!2499 = !DILocation(line: 1019, column: 36, scope: !2420, inlinedAt: !2496)
!2500 = !DILocation(line: 1019, column: 48, scope: !2420, inlinedAt: !2496)
!2501 = !DILocation(line: 1021, column: 3, scope: !2420, inlinedAt: !2496)
!2502 = !DILocation(line: 1021, column: 30, scope: !2420, inlinedAt: !2496)
!2503 = !DILocation(line: 1021, column: 26, scope: !2420, inlinedAt: !2496)
!2504 = !DILocation(line: 171, column: 45, scope: !1047, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 1022, column: 3, scope: !2420, inlinedAt: !2496)
!2506 = !DILocation(line: 172, column: 33, scope: !1047, inlinedAt: !2505)
!2507 = !DILocation(line: 172, column: 57, scope: !1047, inlinedAt: !2505)
!2508 = !DILocation(line: 176, column: 6, scope: !1047, inlinedAt: !2505)
!2509 = !DILocation(line: 176, column: 12, scope: !1047, inlinedAt: !2505)
!2510 = !DILocation(line: 177, column: 8, scope: !1063, inlinedAt: !2505)
!2511 = !DILocation(line: 177, column: 23, scope: !1063, inlinedAt: !2505)
!2512 = !DILocation(line: 177, column: 19, scope: !1063, inlinedAt: !2505)
!2513 = !DILocation(line: 178, column: 5, scope: !1063, inlinedAt: !2505)
!2514 = !DILocation(line: 179, column: 6, scope: !1047, inlinedAt: !2505)
!2515 = !DILocation(line: 179, column: 17, scope: !1047, inlinedAt: !2505)
!2516 = !DILocation(line: 180, column: 6, scope: !1047, inlinedAt: !2505)
!2517 = !DILocation(line: 180, column: 18, scope: !1047, inlinedAt: !2505)
!2518 = !DILocation(line: 1023, column: 10, scope: !2420, inlinedAt: !2496)
!2519 = !DILocation(line: 1024, column: 1, scope: !2420, inlinedAt: !2496)
!2520 = !DILocation(line: 1030, column: 3, scope: !2480)
!2521 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !121, file: !121, line: 1034, type: !2522, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!6, !17, !17, !17, !115}
!2524 = !{!2525, !2526, !2527, !2528}
!2525 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2521, file: !121, line: 1034, type: !17)
!2526 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2521, file: !121, line: 1034, type: !17)
!2527 = !DILocalVariable(name: "arg", arg: 3, scope: !2521, file: !121, line: 1035, type: !17)
!2528 = !DILocalVariable(name: "argsize", arg: 4, scope: !2521, file: !121, line: 1035, type: !115)
!2529 = !DILocation(line: 1034, column: 34, scope: !2521)
!2530 = !DILocation(line: 1034, column: 58, scope: !2521)
!2531 = !DILocation(line: 1035, column: 34, scope: !2521)
!2532 = !DILocation(line: 1035, column: 46, scope: !2521)
!2533 = !DILocation(line: 1017, column: 28, scope: !2420, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 1037, column: 10, scope: !2521)
!2535 = !DILocation(line: 1017, column: 43, scope: !2420, inlinedAt: !2534)
!2536 = !DILocation(line: 1018, column: 36, scope: !2420, inlinedAt: !2534)
!2537 = !DILocation(line: 1019, column: 36, scope: !2420, inlinedAt: !2534)
!2538 = !DILocation(line: 1019, column: 48, scope: !2420, inlinedAt: !2534)
!2539 = !DILocation(line: 1021, column: 3, scope: !2420, inlinedAt: !2534)
!2540 = !DILocation(line: 1021, column: 30, scope: !2420, inlinedAt: !2534)
!2541 = !DILocation(line: 1021, column: 26, scope: !2420, inlinedAt: !2534)
!2542 = !DILocation(line: 171, column: 45, scope: !1047, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 1022, column: 3, scope: !2420, inlinedAt: !2534)
!2544 = !DILocation(line: 172, column: 33, scope: !1047, inlinedAt: !2543)
!2545 = !DILocation(line: 172, column: 57, scope: !1047, inlinedAt: !2543)
!2546 = !DILocation(line: 176, column: 6, scope: !1047, inlinedAt: !2543)
!2547 = !DILocation(line: 176, column: 12, scope: !1047, inlinedAt: !2543)
!2548 = !DILocation(line: 177, column: 8, scope: !1063, inlinedAt: !2543)
!2549 = !DILocation(line: 177, column: 23, scope: !1063, inlinedAt: !2543)
!2550 = !DILocation(line: 177, column: 19, scope: !1063, inlinedAt: !2543)
!2551 = !DILocation(line: 178, column: 5, scope: !1063, inlinedAt: !2543)
!2552 = !DILocation(line: 179, column: 6, scope: !1047, inlinedAt: !2543)
!2553 = !DILocation(line: 179, column: 17, scope: !1047, inlinedAt: !2543)
!2554 = !DILocation(line: 180, column: 6, scope: !1047, inlinedAt: !2543)
!2555 = !DILocation(line: 180, column: 18, scope: !1047, inlinedAt: !2543)
!2556 = !DILocation(line: 1023, column: 10, scope: !2420, inlinedAt: !2534)
!2557 = !DILocation(line: 1024, column: 1, scope: !2420, inlinedAt: !2534)
!2558 = !DILocation(line: 1037, column: 3, scope: !2521)
!2559 = distinct !DISubprogram(name: "quote_n_mem", scope: !121, file: !121, line: 1052, type: !2560, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!17, !40, !17, !115}
!2562 = !{!2563, !2564, !2565}
!2563 = !DILocalVariable(name: "n", arg: 1, scope: !2559, file: !121, line: 1052, type: !40)
!2564 = !DILocalVariable(name: "arg", arg: 2, scope: !2559, file: !121, line: 1052, type: !17)
!2565 = !DILocalVariable(name: "argsize", arg: 3, scope: !2559, file: !121, line: 1052, type: !115)
!2566 = !DILocation(line: 1052, column: 18, scope: !2559)
!2567 = !DILocation(line: 1052, column: 33, scope: !2559)
!2568 = !DILocation(line: 1052, column: 45, scope: !2559)
!2569 = !DILocation(line: 1054, column: 10, scope: !2559)
!2570 = !DILocation(line: 1054, column: 3, scope: !2559)
!2571 = distinct !DISubprogram(name: "quote_mem", scope: !121, file: !121, line: 1058, type: !2572, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!17, !17, !115}
!2574 = !{!2575, !2576}
!2575 = !DILocalVariable(name: "arg", arg: 1, scope: !2571, file: !121, line: 1058, type: !17)
!2576 = !DILocalVariable(name: "argsize", arg: 2, scope: !2571, file: !121, line: 1058, type: !115)
!2577 = !DILocation(line: 1058, column: 24, scope: !2571)
!2578 = !DILocation(line: 1058, column: 36, scope: !2571)
!2579 = !DILocation(line: 1052, column: 18, scope: !2559, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 1060, column: 10, scope: !2571)
!2581 = !DILocation(line: 1052, column: 33, scope: !2559, inlinedAt: !2580)
!2582 = !DILocation(line: 1052, column: 45, scope: !2559, inlinedAt: !2580)
!2583 = !DILocation(line: 1054, column: 10, scope: !2559, inlinedAt: !2580)
!2584 = !DILocation(line: 1060, column: 3, scope: !2571)
!2585 = distinct !DISubprogram(name: "quote_n", scope: !121, file: !121, line: 1064, type: !2586, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!17, !40, !17}
!2588 = !{!2589, !2590}
!2589 = !DILocalVariable(name: "n", arg: 1, scope: !2585, file: !121, line: 1064, type: !40)
!2590 = !DILocalVariable(name: "arg", arg: 2, scope: !2585, file: !121, line: 1064, type: !17)
!2591 = !DILocation(line: 1064, column: 14, scope: !2585)
!2592 = !DILocation(line: 1064, column: 29, scope: !2585)
!2593 = !DILocation(line: 1052, column: 18, scope: !2559, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 1066, column: 10, scope: !2585)
!2595 = !DILocation(line: 1052, column: 33, scope: !2559, inlinedAt: !2594)
!2596 = !DILocation(line: 1052, column: 45, scope: !2559, inlinedAt: !2594)
!2597 = !DILocation(line: 1054, column: 10, scope: !2559, inlinedAt: !2594)
!2598 = !DILocation(line: 1066, column: 3, scope: !2585)
!2599 = distinct !DISubprogram(name: "quote", scope: !121, file: !121, line: 1070, type: !2600, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !76, variables: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!17, !17}
!2602 = !{!2603}
!2603 = !DILocalVariable(name: "arg", arg: 1, scope: !2599, file: !121, line: 1070, type: !17)
!2604 = !DILocation(line: 1070, column: 20, scope: !2599)
!2605 = !DILocation(line: 1064, column: 14, scope: !2585, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 1072, column: 10, scope: !2599)
!2607 = !DILocation(line: 1064, column: 29, scope: !2585, inlinedAt: !2606)
!2608 = !DILocation(line: 1052, column: 18, scope: !2559, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1066, column: 10, scope: !2585, inlinedAt: !2606)
!2610 = !DILocation(line: 1052, column: 33, scope: !2559, inlinedAt: !2609)
!2611 = !DILocation(line: 1052, column: 45, scope: !2559, inlinedAt: !2609)
!2612 = !DILocation(line: 1054, column: 10, scope: !2559, inlinedAt: !2609)
!2613 = !DILocation(line: 1072, column: 3, scope: !2599)
!2614 = distinct !DISubprogram(name: "version_etc_arn", scope: !529, file: !529, line: 62, type: !2615, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !2673)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !2617, !17, !17, !17, !2672, !115}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !2620)
!2619 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !2622)
!2621 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2622 = !{!2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2643, !2644, !2645, !2646, !2650, !2651, !2653, !2657, !2660, !2662, !2663, !2664, !2665, !2666, !2667, !2668}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2620, file: !2621, line: 242, baseType: !40, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2620, file: !2621, line: 247, baseType: !6, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2620, file: !2621, line: 248, baseType: !6, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2620, file: !2621, line: 249, baseType: !6, size: 64, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2620, file: !2621, line: 250, baseType: !6, size: 64, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2620, file: !2621, line: 251, baseType: !6, size: 64, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2620, file: !2621, line: 252, baseType: !6, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2620, file: !2621, line: 253, baseType: !6, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2620, file: !2621, line: 254, baseType: !6, size: 64, offset: 512)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2620, file: !2621, line: 256, baseType: !6, size: 64, offset: 576)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2620, file: !2621, line: 257, baseType: !6, size: 64, offset: 640)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2620, file: !2621, line: 258, baseType: !6, size: 64, offset: 704)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2620, file: !2621, line: 260, baseType: !2636, size: 64, offset: 768)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !2638)
!2638 = !{!2639, !2640, !2642}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2637, file: !2621, line: 157, baseType: !2636, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2637, file: !2621, line: 158, baseType: !2641, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2637, file: !2621, line: 162, baseType: !40, size: 32, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2620, file: !2621, line: 262, baseType: !2641, size: 64, offset: 832)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2620, file: !2621, line: 264, baseType: !40, size: 32, offset: 896)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2620, file: !2621, line: 268, baseType: !40, size: 32, offset: 928)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2620, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2648, line: 140, baseType: !2649)
!2648 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2649 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2620, file: !2621, line: 274, baseType: !114, size: 16, offset: 1024)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2620, file: !2621, line: 275, baseType: !2652, size: 8, offset: 1040)
!2652 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2620, file: !2621, line: 276, baseType: !2654, size: 8, offset: 1048)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2655)
!2655 = !{!2656}
!2656 = !DISubrange(count: 1)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2620, file: !2621, line: 280, baseType: !2658, size: 64, offset: 1088)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2621, line: 150, baseType: null)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2620, file: !2621, line: 289, baseType: !2661, size: 64, offset: 1152)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2648, line: 141, baseType: !2649)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2620, file: !2621, line: 297, baseType: !8, size: 64, offset: 1216)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2620, file: !2621, line: 298, baseType: !8, size: 64, offset: 1280)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2620, file: !2621, line: 299, baseType: !8, size: 64, offset: 1344)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2620, file: !2621, line: 300, baseType: !8, size: 64, offset: 1408)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2620, file: !2621, line: 302, baseType: !115, size: 64, offset: 1472)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2620, file: !2621, line: 303, baseType: !40, size: 32, offset: 1536)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2620, file: !2621, line: 305, baseType: !2669, size: 160, offset: 1568)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2670)
!2670 = !{!2671}
!2671 = !DISubrange(count: 20)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2679}
!2674 = !DILocalVariable(name: "stream", arg: 1, scope: !2614, file: !529, line: 62, type: !2617)
!2675 = !DILocalVariable(name: "command_name", arg: 2, scope: !2614, file: !529, line: 63, type: !17)
!2676 = !DILocalVariable(name: "package", arg: 3, scope: !2614, file: !529, line: 63, type: !17)
!2677 = !DILocalVariable(name: "version", arg: 4, scope: !2614, file: !529, line: 64, type: !17)
!2678 = !DILocalVariable(name: "authors", arg: 5, scope: !2614, file: !529, line: 65, type: !2672)
!2679 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2614, file: !529, line: 65, type: !115)
!2680 = !DILocation(line: 62, column: 24, scope: !2614)
!2681 = !DILocation(line: 63, column: 30, scope: !2614)
!2682 = !DILocation(line: 63, column: 56, scope: !2614)
!2683 = !DILocation(line: 64, column: 30, scope: !2614)
!2684 = !DILocation(line: 65, column: 39, scope: !2614)
!2685 = !DILocation(line: 65, column: 55, scope: !2614)
!2686 = !DILocation(line: 67, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2614, file: !529, line: 67, column: 7)
!2688 = !DILocation(line: 67, column: 7, scope: !2614)
!2689 = !DILocation(line: 68, column: 5, scope: !2687)
!2690 = !DILocation(line: 70, column: 5, scope: !2687)
!2691 = !DILocation(line: 84, column: 3, scope: !2614)
!2692 = !DILocation(line: 86, column: 3, scope: !2614)
!2693 = !DILocation(line: 95, column: 3, scope: !2614)
!2694 = !DILocation(line: 99, column: 7, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2614, file: !529, line: 96, column: 5)
!2696 = !DILocation(line: 102, column: 7, scope: !2695)
!2697 = !DILocation(line: 103, column: 7, scope: !2695)
!2698 = !DILocation(line: 106, column: 7, scope: !2695)
!2699 = !DILocation(line: 107, column: 7, scope: !2695)
!2700 = !DILocation(line: 110, column: 7, scope: !2695)
!2701 = !DILocation(line: 112, column: 7, scope: !2695)
!2702 = !DILocation(line: 117, column: 7, scope: !2695)
!2703 = !DILocation(line: 119, column: 7, scope: !2695)
!2704 = !DILocation(line: 124, column: 7, scope: !2695)
!2705 = !DILocation(line: 126, column: 7, scope: !2695)
!2706 = !DILocation(line: 131, column: 7, scope: !2695)
!2707 = !DILocation(line: 134, column: 7, scope: !2695)
!2708 = !DILocation(line: 139, column: 7, scope: !2695)
!2709 = !DILocation(line: 142, column: 7, scope: !2695)
!2710 = !DILocation(line: 147, column: 7, scope: !2695)
!2711 = !DILocation(line: 151, column: 7, scope: !2695)
!2712 = !DILocation(line: 156, column: 7, scope: !2695)
!2713 = !DILocation(line: 160, column: 7, scope: !2695)
!2714 = !DILocation(line: 167, column: 7, scope: !2695)
!2715 = !DILocation(line: 171, column: 7, scope: !2695)
!2716 = !DILocation(line: 173, column: 1, scope: !2614)
!2717 = distinct !DISubprogram(name: "version_etc_ar", scope: !529, file: !529, line: 180, type: !2718, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !2617, !17, !17, !17, !2672}
!2720 = !{!2721, !2722, !2723, !2724, !2725, !2726}
!2721 = !DILocalVariable(name: "stream", arg: 1, scope: !2717, file: !529, line: 180, type: !2617)
!2722 = !DILocalVariable(name: "command_name", arg: 2, scope: !2717, file: !529, line: 181, type: !17)
!2723 = !DILocalVariable(name: "package", arg: 3, scope: !2717, file: !529, line: 181, type: !17)
!2724 = !DILocalVariable(name: "version", arg: 4, scope: !2717, file: !529, line: 182, type: !17)
!2725 = !DILocalVariable(name: "authors", arg: 5, scope: !2717, file: !529, line: 182, type: !2672)
!2726 = !DILocalVariable(name: "n_authors", scope: !2717, file: !529, line: 184, type: !115)
!2727 = !DILocation(line: 180, column: 23, scope: !2717)
!2728 = !DILocation(line: 181, column: 29, scope: !2717)
!2729 = !DILocation(line: 181, column: 55, scope: !2717)
!2730 = !DILocation(line: 182, column: 29, scope: !2717)
!2731 = !DILocation(line: 182, column: 59, scope: !2717)
!2732 = !DILocation(line: 184, column: 10, scope: !2717)
!2733 = !DILocation(line: 186, column: 8, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2717, file: !529, line: 186, column: 3)
!2735 = !DILocation(line: 186, column: 23, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2734, file: !529, line: 186, column: 3)
!2737 = !DILocation(line: 186, column: 3, scope: !2734)
!2738 = !DILocation(line: 186, column: 52, scope: !2736)
!2739 = distinct !{!2739, !2737, !2740}
!2740 = !DILocation(line: 187, column: 5, scope: !2734)
!2741 = !DILocation(line: 188, column: 3, scope: !2717)
!2742 = !DILocation(line: 189, column: 1, scope: !2717)
!2743 = distinct !DISubprogram(name: "version_etc_va", scope: !529, file: !529, line: 196, type: !2744, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !2753)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{null, !2617, !17, !17, !17, !2746}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !526, line: 189, size: 192, elements: !2748)
!2748 = !{!2749, !2750, !2751, !2752}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2747, file: !526, line: 189, baseType: !134, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2747, file: !526, line: 189, baseType: !134, size: 32, offset: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2747, file: !526, line: 189, baseType: !8, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2747, file: !526, line: 189, baseType: !8, size: 64, offset: 128)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759, !2760}
!2754 = !DILocalVariable(name: "stream", arg: 1, scope: !2743, file: !529, line: 196, type: !2617)
!2755 = !DILocalVariable(name: "command_name", arg: 2, scope: !2743, file: !529, line: 197, type: !17)
!2756 = !DILocalVariable(name: "package", arg: 3, scope: !2743, file: !529, line: 197, type: !17)
!2757 = !DILocalVariable(name: "version", arg: 4, scope: !2743, file: !529, line: 198, type: !17)
!2758 = !DILocalVariable(name: "authors", arg: 5, scope: !2743, file: !529, line: 198, type: !2746)
!2759 = !DILocalVariable(name: "n_authors", scope: !2743, file: !529, line: 200, type: !115)
!2760 = !DILocalVariable(name: "authtab", scope: !2743, file: !529, line: 201, type: !2761)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !124)
!2762 = !DILocation(line: 196, column: 23, scope: !2743)
!2763 = !DILocation(line: 197, column: 29, scope: !2743)
!2764 = !DILocation(line: 197, column: 55, scope: !2743)
!2765 = !DILocation(line: 198, column: 29, scope: !2743)
!2766 = !DILocation(line: 198, column: 46, scope: !2743)
!2767 = !DILocation(line: 201, column: 3, scope: !2743)
!2768 = !DILocation(line: 201, column: 15, scope: !2743)
!2769 = !DILocation(line: 200, column: 10, scope: !2743)
!2770 = !DILocation(line: 205, column: 35, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !529, line: 203, column: 3)
!2772 = distinct !DILexicalBlock(scope: !2743, file: !529, line: 203, column: 3)
!2773 = !DILocation(line: 205, column: 14, scope: !2771)
!2774 = !DILocation(line: 205, column: 33, scope: !2771)
!2775 = !DILocation(line: 205, column: 67, scope: !2771)
!2776 = !DILocation(line: 203, column: 3, scope: !2772)
!2777 = !DILocation(line: 208, column: 3, scope: !2743)
!2778 = !DILocation(line: 210, column: 1, scope: !2743)
!2779 = distinct !DISubprogram(name: "version_etc", scope: !529, file: !529, line: 227, type: !2780, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !2617, !17, !17, !17, null}
!2782 = !{!2783, !2784, !2785, !2786, !2787}
!2783 = !DILocalVariable(name: "stream", arg: 1, scope: !2779, file: !529, line: 227, type: !2617)
!2784 = !DILocalVariable(name: "command_name", arg: 2, scope: !2779, file: !529, line: 228, type: !17)
!2785 = !DILocalVariable(name: "package", arg: 3, scope: !2779, file: !529, line: 228, type: !17)
!2786 = !DILocalVariable(name: "version", arg: 4, scope: !2779, file: !529, line: 229, type: !17)
!2787 = !DILocalVariable(name: "authors", scope: !2779, file: !529, line: 231, type: !2788)
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2789, line: 46, baseType: !2790)
!2789 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2791, line: 48, baseType: !2792)
!2791 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !526, line: 231, baseType: !2793)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2747, size: 192, elements: !2655)
!2794 = !DILocation(line: 227, column: 20, scope: !2779)
!2795 = !DILocation(line: 228, column: 26, scope: !2779)
!2796 = !DILocation(line: 228, column: 52, scope: !2779)
!2797 = !DILocation(line: 229, column: 26, scope: !2779)
!2798 = !DILocation(line: 231, column: 3, scope: !2779)
!2799 = !DILocation(line: 231, column: 11, scope: !2779)
!2800 = !DILocation(line: 233, column: 3, scope: !2779)
!2801 = !DILocation(line: 234, column: 3, scope: !2779)
!2802 = !DILocation(line: 235, column: 3, scope: !2779)
!2803 = !DILocation(line: 236, column: 1, scope: !2779)
!2804 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !529, file: !529, line: 239, type: !596, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !525, variables: !4)
!2805 = !DILocation(line: 245, column: 3, scope: !2804)
!2806 = !DILocation(line: 251, column: 3, scope: !2804)
!2807 = !DILocation(line: 256, column: 3, scope: !2804)
!2808 = !DILocation(line: 258, column: 1, scope: !2804)
!2809 = distinct !DISubprogram(name: "xnmalloc", scope: !537, file: !537, line: 105, type: !2810, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!8, !115, !115}
!2812 = !{!2813, !2814}
!2813 = !DILocalVariable(name: "n", arg: 1, scope: !2809, file: !537, line: 105, type: !115)
!2814 = !DILocalVariable(name: "s", arg: 2, scope: !2809, file: !537, line: 105, type: !115)
!2815 = !DILocation(line: 105, column: 18, scope: !2809)
!2816 = !DILocation(line: 105, column: 28, scope: !2809)
!2817 = !DILocation(line: 107, column: 7, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2809, file: !537, line: 107, column: 7)
!2819 = !DILocation(line: 107, column: 7, scope: !2809)
!2820 = !DILocation(line: 108, column: 5, scope: !2818)
!2821 = !DILocation(line: 109, column: 21, scope: !2809)
!2822 = !DILocalVariable(name: "n", arg: 1, scope: !2823, file: !2824, line: 39, type: !115)
!2823 = distinct !DISubprogram(name: "xmalloc", scope: !2824, file: !2824, line: 39, type: !2825, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2827)
!2824 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!8, !115}
!2827 = !{!2822, !2828}
!2828 = !DILocalVariable(name: "p", scope: !2823, file: !2824, line: 41, type: !8)
!2829 = !DILocation(line: 39, column: 17, scope: !2823, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 109, column: 10, scope: !2809)
!2831 = !DILocation(line: 41, column: 13, scope: !2823, inlinedAt: !2830)
!2832 = !DILocation(line: 41, column: 9, scope: !2823, inlinedAt: !2830)
!2833 = !DILocation(line: 42, column: 8, scope: !2834, inlinedAt: !2830)
!2834 = distinct !DILexicalBlock(scope: !2823, file: !2824, line: 42, column: 7)
!2835 = !DILocation(line: 42, column: 15, scope: !2834, inlinedAt: !2830)
!2836 = !DILocation(line: 42, column: 10, scope: !2834, inlinedAt: !2830)
!2837 = !DILocation(line: 43, column: 5, scope: !2834, inlinedAt: !2830)
!2838 = !DILocation(line: 109, column: 3, scope: !2809)
!2839 = !DILocation(line: 39, column: 17, scope: !2823)
!2840 = !DILocation(line: 41, column: 13, scope: !2823)
!2841 = !DILocation(line: 41, column: 9, scope: !2823)
!2842 = !DILocation(line: 42, column: 8, scope: !2834)
!2843 = !DILocation(line: 42, column: 15, scope: !2834)
!2844 = !DILocation(line: 42, column: 10, scope: !2834)
!2845 = !DILocation(line: 43, column: 5, scope: !2834)
!2846 = !DILocation(line: 44, column: 3, scope: !2823)
!2847 = distinct !DISubprogram(name: "xnrealloc", scope: !537, file: !537, line: 118, type: !2848, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!8, !8, !115, !115}
!2850 = !{!2851, !2852, !2853}
!2851 = !DILocalVariable(name: "p", arg: 1, scope: !2847, file: !537, line: 118, type: !8)
!2852 = !DILocalVariable(name: "n", arg: 2, scope: !2847, file: !537, line: 118, type: !115)
!2853 = !DILocalVariable(name: "s", arg: 3, scope: !2847, file: !537, line: 118, type: !115)
!2854 = !DILocation(line: 118, column: 18, scope: !2847)
!2855 = !DILocation(line: 118, column: 28, scope: !2847)
!2856 = !DILocation(line: 118, column: 38, scope: !2847)
!2857 = !DILocation(line: 120, column: 7, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2847, file: !537, line: 120, column: 7)
!2859 = !DILocation(line: 120, column: 7, scope: !2847)
!2860 = !DILocation(line: 121, column: 5, scope: !2858)
!2861 = !DILocation(line: 122, column: 25, scope: !2847)
!2862 = !DILocalVariable(name: "p", arg: 1, scope: !2863, file: !2824, line: 51, type: !8)
!2863 = distinct !DISubprogram(name: "xrealloc", scope: !2824, file: !2824, line: 51, type: !2864, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!8, !8, !115}
!2866 = !{!2862, !2867}
!2867 = !DILocalVariable(name: "n", arg: 2, scope: !2863, file: !2824, line: 51, type: !115)
!2868 = !DILocation(line: 51, column: 17, scope: !2863, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 122, column: 10, scope: !2847)
!2870 = !DILocation(line: 51, column: 27, scope: !2863, inlinedAt: !2869)
!2871 = !DILocation(line: 53, column: 8, scope: !2872, inlinedAt: !2869)
!2872 = distinct !DILexicalBlock(scope: !2863, file: !2824, line: 53, column: 7)
!2873 = !DILocation(line: 53, column: 13, scope: !2872, inlinedAt: !2869)
!2874 = !DILocation(line: 53, column: 10, scope: !2872, inlinedAt: !2869)
!2875 = !DILocation(line: 57, column: 7, scope: !2876, inlinedAt: !2869)
!2876 = distinct !DILexicalBlock(scope: !2872, file: !2824, line: 54, column: 5)
!2877 = !DILocation(line: 58, column: 7, scope: !2876, inlinedAt: !2869)
!2878 = !DILocation(line: 61, column: 7, scope: !2863, inlinedAt: !2869)
!2879 = !DILocation(line: 62, column: 8, scope: !2880, inlinedAt: !2869)
!2880 = distinct !DILexicalBlock(scope: !2863, file: !2824, line: 62, column: 7)
!2881 = !DILocation(line: 62, column: 13, scope: !2880, inlinedAt: !2869)
!2882 = !DILocation(line: 62, column: 10, scope: !2880, inlinedAt: !2869)
!2883 = !DILocation(line: 63, column: 5, scope: !2880, inlinedAt: !2869)
!2884 = !DILocation(line: 122, column: 3, scope: !2847)
!2885 = !DILocation(line: 51, column: 17, scope: !2863)
!2886 = !DILocation(line: 51, column: 27, scope: !2863)
!2887 = !DILocation(line: 53, column: 8, scope: !2872)
!2888 = !DILocation(line: 53, column: 13, scope: !2872)
!2889 = !DILocation(line: 53, column: 10, scope: !2872)
!2890 = !DILocation(line: 57, column: 7, scope: !2876)
!2891 = !DILocation(line: 58, column: 7, scope: !2876)
!2892 = !DILocation(line: 61, column: 7, scope: !2863)
!2893 = !DILocation(line: 62, column: 8, scope: !2880)
!2894 = !DILocation(line: 62, column: 13, scope: !2880)
!2895 = !DILocation(line: 62, column: 10, scope: !2880)
!2896 = !DILocation(line: 63, column: 5, scope: !2880)
!2897 = !DILocation(line: 65, column: 1, scope: !2863)
!2898 = !DILocation(line: 180, column: 19, scope: !538)
!2899 = !DILocation(line: 180, column: 30, scope: !538)
!2900 = !DILocation(line: 180, column: 41, scope: !538)
!2901 = !DILocation(line: 182, column: 14, scope: !538)
!2902 = !DILocation(line: 182, column: 10, scope: !538)
!2903 = !DILocation(line: 184, column: 9, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !538, file: !537, line: 184, column: 7)
!2905 = !DILocation(line: 184, column: 7, scope: !538)
!2906 = !DILocation(line: 186, column: 13, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !537, line: 186, column: 11)
!2908 = distinct !DILexicalBlock(scope: !2904, file: !537, line: 185, column: 5)
!2909 = !DILocation(line: 186, column: 11, scope: !2908)
!2910 = !DILocation(line: 194, column: 30, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2907, file: !537, line: 187, column: 9)
!2912 = !DILocation(line: 195, column: 16, scope: !2911)
!2913 = !DILocation(line: 195, column: 13, scope: !2911)
!2914 = !DILocation(line: 196, column: 9, scope: !2911)
!2915 = !DILocation(line: 204, column: 69, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !537, line: 204, column: 11)
!2917 = distinct !DILexicalBlock(scope: !2904, file: !537, line: 199, column: 5)
!2918 = !DILocation(line: 205, column: 11, scope: !2916)
!2919 = !DILocation(line: 204, column: 11, scope: !2917)
!2920 = !DILocation(line: 206, column: 9, scope: !2916)
!2921 = !DILocation(line: 210, column: 7, scope: !538)
!2922 = !DILocation(line: 211, column: 25, scope: !538)
!2923 = !DILocation(line: 51, column: 17, scope: !2863, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 211, column: 10, scope: !538)
!2925 = !DILocation(line: 51, column: 27, scope: !2863, inlinedAt: !2924)
!2926 = !DILocation(line: 53, column: 10, scope: !2872, inlinedAt: !2924)
!2927 = !DILocation(line: 207, column: 14, scope: !2917)
!2928 = !DILocation(line: 207, column: 18, scope: !2917)
!2929 = !DILocation(line: 207, column: 9, scope: !2917)
!2930 = !DILocation(line: 53, column: 8, scope: !2872, inlinedAt: !2924)
!2931 = !DILocation(line: 57, column: 7, scope: !2876, inlinedAt: !2924)
!2932 = !DILocation(line: 58, column: 7, scope: !2876, inlinedAt: !2924)
!2933 = !DILocation(line: 61, column: 7, scope: !2863, inlinedAt: !2924)
!2934 = !DILocation(line: 62, column: 8, scope: !2880, inlinedAt: !2924)
!2935 = !DILocation(line: 62, column: 13, scope: !2880, inlinedAt: !2924)
!2936 = !DILocation(line: 62, column: 10, scope: !2880, inlinedAt: !2924)
!2937 = !DILocation(line: 63, column: 5, scope: !2880, inlinedAt: !2924)
!2938 = !DILocation(line: 211, column: 3, scope: !538)
!2939 = distinct !DISubprogram(name: "xcharalloc", scope: !537, file: !537, line: 220, type: !1894, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2940)
!2940 = !{!2941}
!2941 = !DILocalVariable(name: "n", arg: 1, scope: !2939, file: !537, line: 220, type: !115)
!2942 = !DILocation(line: 220, column: 20, scope: !2939)
!2943 = !DILocation(line: 39, column: 17, scope: !2823, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 222, column: 10, scope: !2939)
!2945 = !DILocation(line: 41, column: 13, scope: !2823, inlinedAt: !2944)
!2946 = !DILocation(line: 41, column: 9, scope: !2823, inlinedAt: !2944)
!2947 = !DILocation(line: 42, column: 8, scope: !2834, inlinedAt: !2944)
!2948 = !DILocation(line: 42, column: 15, scope: !2834, inlinedAt: !2944)
!2949 = !DILocation(line: 42, column: 10, scope: !2834, inlinedAt: !2944)
!2950 = !DILocation(line: 43, column: 5, scope: !2834, inlinedAt: !2944)
!2951 = !DILocation(line: 222, column: 3, scope: !2939)
!2952 = distinct !DISubprogram(name: "x2realloc", scope: !2824, file: !2824, line: 74, type: !2953, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!8, !8, !541}
!2955 = !{!2956, !2957}
!2956 = !DILocalVariable(name: "p", arg: 1, scope: !2952, file: !2824, line: 74, type: !8)
!2957 = !DILocalVariable(name: "pn", arg: 2, scope: !2952, file: !2824, line: 74, type: !541)
!2958 = !DILocation(line: 74, column: 18, scope: !2952)
!2959 = !DILocation(line: 74, column: 29, scope: !2952)
!2960 = !DILocation(line: 180, column: 19, scope: !538, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 76, column: 10, scope: !2952)
!2962 = !DILocation(line: 180, column: 30, scope: !538, inlinedAt: !2961)
!2963 = !DILocation(line: 180, column: 41, scope: !538, inlinedAt: !2961)
!2964 = !DILocation(line: 182, column: 14, scope: !538, inlinedAt: !2961)
!2965 = !DILocation(line: 182, column: 10, scope: !538, inlinedAt: !2961)
!2966 = !DILocation(line: 184, column: 9, scope: !2904, inlinedAt: !2961)
!2967 = !DILocation(line: 184, column: 7, scope: !538, inlinedAt: !2961)
!2968 = !DILocation(line: 186, column: 13, scope: !2907, inlinedAt: !2961)
!2969 = !DILocation(line: 186, column: 11, scope: !2908, inlinedAt: !2961)
!2970 = !DILocation(line: 210, column: 7, scope: !538, inlinedAt: !2961)
!2971 = !DILocation(line: 51, column: 17, scope: !2863, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 211, column: 10, scope: !538, inlinedAt: !2961)
!2973 = !DILocation(line: 51, column: 27, scope: !2863, inlinedAt: !2972)
!2974 = !DILocation(line: 53, column: 10, scope: !2872, inlinedAt: !2972)
!2975 = !DILocation(line: 205, column: 11, scope: !2916, inlinedAt: !2961)
!2976 = !DILocation(line: 204, column: 11, scope: !2917, inlinedAt: !2961)
!2977 = !DILocation(line: 206, column: 9, scope: !2916, inlinedAt: !2961)
!2978 = !DILocation(line: 207, column: 14, scope: !2917, inlinedAt: !2961)
!2979 = !DILocation(line: 207, column: 18, scope: !2917, inlinedAt: !2961)
!2980 = !DILocation(line: 207, column: 9, scope: !2917, inlinedAt: !2961)
!2981 = !DILocation(line: 53, column: 8, scope: !2872, inlinedAt: !2972)
!2982 = !DILocation(line: 57, column: 7, scope: !2876, inlinedAt: !2972)
!2983 = !DILocation(line: 58, column: 7, scope: !2876, inlinedAt: !2972)
!2984 = !DILocation(line: 61, column: 7, scope: !2863, inlinedAt: !2972)
!2985 = !DILocation(line: 62, column: 8, scope: !2880, inlinedAt: !2972)
!2986 = !DILocation(line: 62, column: 13, scope: !2880, inlinedAt: !2972)
!2987 = !DILocation(line: 62, column: 10, scope: !2880, inlinedAt: !2972)
!2988 = !DILocation(line: 63, column: 5, scope: !2880, inlinedAt: !2972)
!2989 = !DILocation(line: 76, column: 3, scope: !2952)
!2990 = distinct !DISubprogram(name: "xzalloc", scope: !2824, file: !2824, line: 84, type: !2825, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !2991)
!2991 = !{!2992}
!2992 = !DILocalVariable(name: "s", arg: 1, scope: !2990, file: !2824, line: 84, type: !115)
!2993 = !DILocation(line: 84, column: 17, scope: !2990)
!2994 = !DILocation(line: 39, column: 17, scope: !2823, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 86, column: 18, scope: !2990)
!2996 = !DILocation(line: 41, column: 13, scope: !2823, inlinedAt: !2995)
!2997 = !DILocation(line: 41, column: 9, scope: !2823, inlinedAt: !2995)
!2998 = !DILocation(line: 42, column: 8, scope: !2834, inlinedAt: !2995)
!2999 = !DILocation(line: 42, column: 15, scope: !2834, inlinedAt: !2995)
!3000 = !DILocation(line: 42, column: 10, scope: !2834, inlinedAt: !2995)
!3001 = !DILocation(line: 43, column: 5, scope: !2834, inlinedAt: !2995)
!3002 = !DILocation(line: 86, column: 10, scope: !2990)
!3003 = !DILocation(line: 86, column: 3, scope: !2990)
!3004 = distinct !DISubprogram(name: "xcalloc", scope: !2824, file: !2824, line: 93, type: !2810, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !3005)
!3005 = !{!3006, !3007, !3008}
!3006 = !DILocalVariable(name: "n", arg: 1, scope: !3004, file: !2824, line: 93, type: !115)
!3007 = !DILocalVariable(name: "s", arg: 2, scope: !3004, file: !2824, line: 93, type: !115)
!3008 = !DILocalVariable(name: "p", scope: !3004, file: !2824, line: 95, type: !8)
!3009 = !DILocation(line: 93, column: 17, scope: !3004)
!3010 = !DILocation(line: 93, column: 27, scope: !3004)
!3011 = !DILocation(line: 100, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3004, file: !2824, line: 100, column: 7)
!3013 = !DILocation(line: 101, column: 7, scope: !3012)
!3014 = !DILocation(line: 101, column: 18, scope: !3012)
!3015 = !DILocation(line: 95, column: 9, scope: !3004)
!3016 = !DILocation(line: 101, column: 16, scope: !3012)
!3017 = !DILocation(line: 100, column: 7, scope: !3004)
!3018 = !DILocation(line: 102, column: 5, scope: !3012)
!3019 = !DILocation(line: 103, column: 3, scope: !3004)
!3020 = distinct !DISubprogram(name: "xmemdup", scope: !2824, file: !2824, line: 111, type: !3021, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !3025)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!8, !3023, !115}
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3025 = !{!3026, !3027}
!3026 = !DILocalVariable(name: "p", arg: 1, scope: !3020, file: !2824, line: 111, type: !3023)
!3027 = !DILocalVariable(name: "s", arg: 2, scope: !3020, file: !2824, line: 111, type: !115)
!3028 = !DILocation(line: 111, column: 22, scope: !3020)
!3029 = !DILocation(line: 111, column: 32, scope: !3020)
!3030 = !DILocation(line: 39, column: 17, scope: !2823, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 113, column: 18, scope: !3020)
!3032 = !DILocation(line: 41, column: 13, scope: !2823, inlinedAt: !3031)
!3033 = !DILocation(line: 41, column: 9, scope: !2823, inlinedAt: !3031)
!3034 = !DILocation(line: 42, column: 8, scope: !2834, inlinedAt: !3031)
!3035 = !DILocation(line: 42, column: 15, scope: !2834, inlinedAt: !3031)
!3036 = !DILocation(line: 42, column: 10, scope: !2834, inlinedAt: !3031)
!3037 = !DILocation(line: 43, column: 5, scope: !2834, inlinedAt: !3031)
!3038 = !DILocation(line: 113, column: 10, scope: !3020)
!3039 = !DILocation(line: 113, column: 3, scope: !3020)
!3040 = distinct !DISubprogram(name: "xstrdup", scope: !2824, file: !2824, line: 119, type: !824, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !533, variables: !3041)
!3041 = !{!3042}
!3042 = !DILocalVariable(name: "string", arg: 1, scope: !3040, file: !2824, line: 119, type: !17)
!3043 = !DILocation(line: 119, column: 22, scope: !3040)
!3044 = !DILocation(line: 121, column: 27, scope: !3040)
!3045 = !DILocation(line: 121, column: 43, scope: !3040)
!3046 = !DILocation(line: 111, column: 22, scope: !3020, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 121, column: 10, scope: !3040)
!3048 = !DILocation(line: 111, column: 32, scope: !3020, inlinedAt: !3047)
!3049 = !DILocation(line: 39, column: 17, scope: !2823, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 113, column: 18, scope: !3020, inlinedAt: !3047)
!3051 = !DILocation(line: 41, column: 13, scope: !2823, inlinedAt: !3050)
!3052 = !DILocation(line: 41, column: 9, scope: !2823, inlinedAt: !3050)
!3053 = !DILocation(line: 42, column: 8, scope: !2834, inlinedAt: !3050)
!3054 = !DILocation(line: 42, column: 15, scope: !2834, inlinedAt: !3050)
!3055 = !DILocation(line: 42, column: 10, scope: !2834, inlinedAt: !3050)
!3056 = !DILocation(line: 43, column: 5, scope: !2834, inlinedAt: !3050)
!3057 = !DILocation(line: 113, column: 10, scope: !3020, inlinedAt: !3047)
!3058 = !DILocation(line: 121, column: 3, scope: !3040)
!3059 = distinct !DISubprogram(name: "xalloc_die", scope: !3060, file: !3060, line: 32, type: !596, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !550, variables: !4)
!3060 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3061 = !DILocation(line: 34, column: 10, scope: !3059)
!3062 = !DILocation(line: 34, column: 33, scope: !3059)
!3063 = !DILocation(line: 34, column: 3, scope: !3059)
!3064 = !DILocation(line: 40, column: 3, scope: !3059)
!3065 = distinct !DISubprogram(name: "xstrndup", scope: !3066, file: !3066, line: 30, type: !2104, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !552, variables: !3067)
!3066 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3067 = !{!3068, !3069, !3070}
!3068 = !DILocalVariable(name: "string", arg: 1, scope: !3065, file: !3066, line: 30, type: !17)
!3069 = !DILocalVariable(name: "n", arg: 2, scope: !3065, file: !3066, line: 30, type: !115)
!3070 = !DILocalVariable(name: "s", scope: !3065, file: !3066, line: 32, type: !6)
!3071 = !DILocation(line: 30, column: 23, scope: !3065)
!3072 = !DILocation(line: 30, column: 38, scope: !3065)
!3073 = !DILocation(line: 32, column: 13, scope: !3065)
!3074 = !DILocation(line: 32, column: 9, scope: !3065)
!3075 = !DILocation(line: 33, column: 9, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3065, file: !3066, line: 33, column: 7)
!3077 = !DILocation(line: 33, column: 7, scope: !3065)
!3078 = !DILocation(line: 34, column: 5, scope: !3076)
!3079 = !DILocation(line: 35, column: 3, scope: !3065)
!3080 = distinct !DISubprogram(name: "rpl_calloc", scope: !3081, file: !3081, line: 42, type: !2810, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !554, variables: !3082)
!3081 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3082 = !{!3083, !3084, !3085, !3086}
!3083 = !DILocalVariable(name: "n", arg: 1, scope: !3080, file: !3081, line: 42, type: !115)
!3084 = !DILocalVariable(name: "s", arg: 2, scope: !3080, file: !3081, line: 42, type: !115)
!3085 = !DILocalVariable(name: "result", scope: !3080, file: !3081, line: 44, type: !8)
!3086 = !DILocalVariable(name: "bytes", scope: !3087, file: !3081, line: 56, type: !115)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3081, line: 53, column: 5)
!3088 = distinct !DILexicalBlock(scope: !3080, file: !3081, line: 47, column: 7)
!3089 = !DILocation(line: 42, column: 20, scope: !3080)
!3090 = !DILocation(line: 42, column: 30, scope: !3080)
!3091 = !DILocation(line: 47, column: 9, scope: !3088)
!3092 = !DILocation(line: 47, column: 19, scope: !3088)
!3093 = !DILocation(line: 47, column: 14, scope: !3088)
!3094 = !DILocation(line: 56, column: 24, scope: !3087)
!3095 = !DILocation(line: 56, column: 14, scope: !3087)
!3096 = !DILocation(line: 57, column: 17, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3087, file: !3081, line: 57, column: 11)
!3098 = !DILocation(line: 57, column: 21, scope: !3097)
!3099 = !DILocation(line: 57, column: 11, scope: !3087)
!3100 = !DILocation(line: 59, column: 11, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !3081, line: 58, column: 9)
!3102 = !DILocation(line: 59, column: 17, scope: !3101)
!3103 = !DILocation(line: 65, column: 12, scope: !3080)
!3104 = !DILocation(line: 44, column: 9, scope: !3080)
!3105 = !DILocation(line: 72, column: 3, scope: !3080)
!3106 = !DILocation(line: 73, column: 1, scope: !3080)
!3107 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3108, file: !3108, line: 334, type: !3109, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !556, variables: !3123)
!3108 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!115, !3111, !17, !115, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1146, line: 6, baseType: !3114)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1148, line: 21, baseType: !3115)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1148, line: 13, size: 64, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3115, file: !1148, line: 15, baseType: !40, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3115, file: !1148, line: 20, baseType: !3119, size: 32, offset: 32)
!3119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3115, file: !1148, line: 16, size: 32, elements: !3120)
!3120 = !{!3121, !3122}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3119, file: !1148, line: 18, baseType: !134, size: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3119, file: !1148, line: 19, baseType: !1157, size: 32)
!3123 = !{!3124, !3125, !3126, !3127, !3128, !3129, !3130}
!3124 = !DILocalVariable(name: "pwc", arg: 1, scope: !3107, file: !3108, line: 334, type: !3111)
!3125 = !DILocalVariable(name: "s", arg: 2, scope: !3107, file: !3108, line: 334, type: !17)
!3126 = !DILocalVariable(name: "n", arg: 3, scope: !3107, file: !3108, line: 334, type: !115)
!3127 = !DILocalVariable(name: "ps", arg: 4, scope: !3107, file: !3108, line: 334, type: !3112)
!3128 = !DILocalVariable(name: "ret", scope: !3107, file: !3108, line: 336, type: !115)
!3129 = !DILocalVariable(name: "wc", scope: !3107, file: !3108, line: 337, type: !1162)
!3130 = !DILocalVariable(name: "uc", scope: !3131, file: !3108, line: 398, type: !9)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !3108, line: 397, column: 5)
!3132 = distinct !DILexicalBlock(scope: !3107, file: !3108, line: 396, column: 7)
!3133 = !DILocation(line: 334, column: 23, scope: !3107)
!3134 = !DILocation(line: 334, column: 40, scope: !3107)
!3135 = !DILocation(line: 334, column: 50, scope: !3107)
!3136 = !DILocation(line: 334, column: 64, scope: !3107)
!3137 = !DILocation(line: 337, column: 3, scope: !3107)
!3138 = !DILocation(line: 353, column: 9, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3107, file: !3108, line: 353, column: 7)
!3140 = !DILocation(line: 353, column: 7, scope: !3107)
!3141 = !DILocation(line: 388, column: 9, scope: !3107)
!3142 = !DILocation(line: 336, column: 10, scope: !3107)
!3143 = !DILocation(line: 396, column: 19, scope: !3132)
!3144 = !DILocation(line: 396, column: 31, scope: !3132)
!3145 = !DILocation(line: 396, column: 26, scope: !3132)
!3146 = !DILocation(line: 396, column: 41, scope: !3132)
!3147 = !DILocation(line: 396, column: 7, scope: !3107)
!3148 = !DILocation(line: 398, column: 26, scope: !3131)
!3149 = !DILocation(line: 398, column: 21, scope: !3131)
!3150 = !DILocation(line: 399, column: 14, scope: !3131)
!3151 = !DILocation(line: 399, column: 12, scope: !3131)
!3152 = !DILocation(line: 405, column: 1, scope: !3107)
!3153 = distinct !DISubprogram(name: "close_stream", scope: !3154, file: !3154, line: 56, type: !3155, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3197)
!3154 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!40, !3157}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !3159)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !3160)
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3159, file: !2621, line: 242, baseType: !40, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3159, file: !2621, line: 247, baseType: !6, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3159, file: !2621, line: 248, baseType: !6, size: 64, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3159, file: !2621, line: 249, baseType: !6, size: 64, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3159, file: !2621, line: 250, baseType: !6, size: 64, offset: 256)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3159, file: !2621, line: 251, baseType: !6, size: 64, offset: 320)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3159, file: !2621, line: 252, baseType: !6, size: 64, offset: 384)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3159, file: !2621, line: 253, baseType: !6, size: 64, offset: 448)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3159, file: !2621, line: 254, baseType: !6, size: 64, offset: 512)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3159, file: !2621, line: 256, baseType: !6, size: 64, offset: 576)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3159, file: !2621, line: 257, baseType: !6, size: 64, offset: 640)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3159, file: !2621, line: 258, baseType: !6, size: 64, offset: 704)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3159, file: !2621, line: 260, baseType: !3174, size: 64, offset: 768)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !3176)
!3176 = !{!3177, !3178, !3180}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3175, file: !2621, line: 157, baseType: !3174, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3175, file: !2621, line: 158, baseType: !3179, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3175, file: !2621, line: 162, baseType: !40, size: 32, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3159, file: !2621, line: 262, baseType: !3179, size: 64, offset: 832)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3159, file: !2621, line: 264, baseType: !40, size: 32, offset: 896)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3159, file: !2621, line: 268, baseType: !40, size: 32, offset: 928)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3159, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3159, file: !2621, line: 274, baseType: !114, size: 16, offset: 1024)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3159, file: !2621, line: 275, baseType: !2652, size: 8, offset: 1040)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3159, file: !2621, line: 276, baseType: !2654, size: 8, offset: 1048)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3159, file: !2621, line: 280, baseType: !2658, size: 64, offset: 1088)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3159, file: !2621, line: 289, baseType: !2661, size: 64, offset: 1152)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3159, file: !2621, line: 297, baseType: !8, size: 64, offset: 1216)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3159, file: !2621, line: 298, baseType: !8, size: 64, offset: 1280)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3159, file: !2621, line: 299, baseType: !8, size: 64, offset: 1344)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3159, file: !2621, line: 300, baseType: !8, size: 64, offset: 1408)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3159, file: !2621, line: 302, baseType: !115, size: 64, offset: 1472)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3159, file: !2621, line: 303, baseType: !40, size: 32, offset: 1536)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3159, file: !2621, line: 305, baseType: !2669, size: 160, offset: 1568)
!3197 = !{!3198, !3199, !3201, !3202}
!3198 = !DILocalVariable(name: "stream", arg: 1, scope: !3153, file: !3154, line: 56, type: !3157)
!3199 = !DILocalVariable(name: "some_pending", scope: !3153, file: !3154, line: 58, type: !3200)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!3201 = !DILocalVariable(name: "prev_fail", scope: !3153, file: !3154, line: 59, type: !3200)
!3202 = !DILocalVariable(name: "fclose_fail", scope: !3153, file: !3154, line: 60, type: !3200)
!3203 = !DILocation(line: 56, column: 21, scope: !3153)
!3204 = !DILocation(line: 58, column: 30, scope: !3153)
!3205 = !DILocalVariable(name: "__stream", arg: 1, scope: !3206, file: !757, line: 132, type: !3157)
!3206 = distinct !DISubprogram(name: "ferror_unlocked", scope: !757, file: !757, line: 132, type: !3155, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !559, variables: !3207)
!3207 = !{!3205}
!3208 = !DILocation(line: 132, column: 1, scope: !3206, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 59, column: 27, scope: !3153)
!3210 = !DILocation(line: 134, column: 10, scope: !3206, inlinedAt: !3209)
!3211 = !{!765, !658, i64 0}
!3212 = !DILocation(line: 59, column: 43, scope: !3153)
!3213 = !DILocation(line: 60, column: 29, scope: !3153)
!3214 = !DILocation(line: 60, column: 45, scope: !3153)
!3215 = !DILocation(line: 70, column: 17, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3153, file: !3154, line: 70, column: 7)
!3217 = !DILocation(line: 58, column: 50, scope: !3153)
!3218 = !DILocation(line: 70, column: 33, scope: !3216)
!3219 = !DILocation(line: 70, column: 53, scope: !3216)
!3220 = !DILocation(line: 70, column: 59, scope: !3216)
!3221 = !DILocation(line: 70, column: 7, scope: !3153)
!3222 = !DILocation(line: 72, column: 11, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3216, file: !3154, line: 71, column: 5)
!3224 = !DILocation(line: 73, column: 9, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3223, file: !3154, line: 72, column: 11)
!3226 = !DILocation(line: 73, column: 15, scope: !3225)
!3227 = !DILocation(line: 78, column: 1, scope: !3153)
!3228 = distinct !DISubprogram(name: "hard_locale", scope: !3229, file: !3229, line: 38, type: !3230, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !561, variables: !3232)
!3229 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!59, !40}
!3232 = !{!3233, !3234, !3235}
!3233 = !DILocalVariable(name: "category", arg: 1, scope: !3228, file: !3229, line: 38, type: !40)
!3234 = !DILocalVariable(name: "hard", scope: !3228, file: !3229, line: 40, type: !59)
!3235 = !DILocalVariable(name: "p", scope: !3228, file: !3229, line: 41, type: !17)
!3236 = !DILocation(line: 38, column: 18, scope: !3228)
!3237 = !DILocation(line: 40, column: 8, scope: !3228)
!3238 = !DILocation(line: 41, column: 19, scope: !3228)
!3239 = !DILocation(line: 41, column: 15, scope: !3228)
!3240 = !DILocation(line: 43, column: 7, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3228, file: !3229, line: 43, column: 7)
!3242 = !DILocation(line: 43, column: 7, scope: !3228)
!3243 = !DILocation(line: 47, column: 15, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !3229, line: 47, column: 15)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !3229, line: 46, column: 9)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !3229, line: 45, column: 11)
!3247 = distinct !DILexicalBlock(scope: !3241, file: !3229, line: 44, column: 5)
!3248 = !DILocation(line: 47, column: 31, scope: !3244)
!3249 = !DILocation(line: 47, column: 36, scope: !3244)
!3250 = !DILocation(line: 47, column: 39, scope: !3244)
!3251 = !DILocation(line: 47, column: 59, scope: !3244)
!3252 = !DILocation(line: 47, column: 15, scope: !3245)
!3253 = !DILocation(line: 48, column: 13, scope: !3244)
!3254 = !DILocation(line: 71, column: 3, scope: !3228)
!3255 = distinct !DISubprogram(name: "locale_charset", scope: !516, file: !516, line: 393, type: !3256, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !172, variables: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!17}
!3258 = !{!3259, !3260}
!3259 = !DILocalVariable(name: "codeset", scope: !3255, file: !516, line: 395, type: !17)
!3260 = !DILocalVariable(name: "aliases", scope: !3255, file: !516, line: 396, type: !17)
!3261 = !DILocalVariable(name: "buf1", scope: !3262, file: !516, line: 196, type: !3329)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !516, line: 194, column: 21)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !516, line: 193, column: 19)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !516, line: 193, column: 19)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !516, line: 188, column: 17)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !516, line: 181, column: 19)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !516, line: 177, column: 13)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !516, line: 173, column: 15)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !516, line: 161, column: 9)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !516, line: 157, column: 11)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !516, line: 130, column: 5)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !516, line: 129, column: 7)
!3273 = distinct !DISubprogram(name: "get_charset_aliases", scope: !516, file: !516, line: 124, type: !3256, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !172, variables: !3274)
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3281, !3282, !3283, !3284, !3325, !3326, !3327, !3261, !3328, !3332, !3333, !3334}
!3275 = !DILocalVariable(name: "cp", scope: !3273, file: !516, line: 126, type: !17)
!3276 = !DILocalVariable(name: "dir", scope: !3271, file: !516, line: 132, type: !17)
!3277 = !DILocalVariable(name: "base", scope: !3271, file: !516, line: 133, type: !17)
!3278 = !DILocalVariable(name: "file_name", scope: !3271, file: !516, line: 134, type: !6)
!3279 = !DILocalVariable(name: "dir_len", scope: !3280, file: !516, line: 144, type: !115)
!3280 = distinct !DILexicalBlock(scope: !3271, file: !516, line: 143, column: 7)
!3281 = !DILocalVariable(name: "base_len", scope: !3280, file: !516, line: 145, type: !115)
!3282 = !DILocalVariable(name: "add_slash", scope: !3280, file: !516, line: 146, type: !40)
!3283 = !DILocalVariable(name: "fd", scope: !3269, file: !516, line: 162, type: !40)
!3284 = !DILocalVariable(name: "fp", scope: !3267, file: !516, line: 178, type: !3285)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !3287)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !3288)
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3287, file: !2621, line: 242, baseType: !40, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3287, file: !2621, line: 247, baseType: !6, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3287, file: !2621, line: 248, baseType: !6, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3287, file: !2621, line: 249, baseType: !6, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3287, file: !2621, line: 250, baseType: !6, size: 64, offset: 256)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3287, file: !2621, line: 251, baseType: !6, size: 64, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3287, file: !2621, line: 252, baseType: !6, size: 64, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3287, file: !2621, line: 253, baseType: !6, size: 64, offset: 448)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3287, file: !2621, line: 254, baseType: !6, size: 64, offset: 512)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3287, file: !2621, line: 256, baseType: !6, size: 64, offset: 576)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3287, file: !2621, line: 257, baseType: !6, size: 64, offset: 640)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3287, file: !2621, line: 258, baseType: !6, size: 64, offset: 704)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3287, file: !2621, line: 260, baseType: !3302, size: 64, offset: 768)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !3304)
!3304 = !{!3305, !3306, !3308}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3303, file: !2621, line: 157, baseType: !3302, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3303, file: !2621, line: 158, baseType: !3307, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3303, file: !2621, line: 162, baseType: !40, size: 32, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3287, file: !2621, line: 262, baseType: !3307, size: 64, offset: 832)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3287, file: !2621, line: 264, baseType: !40, size: 32, offset: 896)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3287, file: !2621, line: 268, baseType: !40, size: 32, offset: 928)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3287, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3287, file: !2621, line: 274, baseType: !114, size: 16, offset: 1024)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3287, file: !2621, line: 275, baseType: !2652, size: 8, offset: 1040)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3287, file: !2621, line: 276, baseType: !2654, size: 8, offset: 1048)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3287, file: !2621, line: 280, baseType: !2658, size: 64, offset: 1088)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3287, file: !2621, line: 289, baseType: !2661, size: 64, offset: 1152)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3287, file: !2621, line: 297, baseType: !8, size: 64, offset: 1216)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3287, file: !2621, line: 298, baseType: !8, size: 64, offset: 1280)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3287, file: !2621, line: 299, baseType: !8, size: 64, offset: 1344)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3287, file: !2621, line: 300, baseType: !8, size: 64, offset: 1408)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3287, file: !2621, line: 302, baseType: !115, size: 64, offset: 1472)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3287, file: !2621, line: 303, baseType: !40, size: 32, offset: 1536)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3287, file: !2621, line: 305, baseType: !2669, size: 160, offset: 1568)
!3325 = !DILocalVariable(name: "res_ptr", scope: !3265, file: !516, line: 190, type: !6)
!3326 = !DILocalVariable(name: "res_size", scope: !3265, file: !516, line: 191, type: !115)
!3327 = !DILocalVariable(name: "c", scope: !3262, file: !516, line: 195, type: !40)
!3328 = !DILocalVariable(name: "buf2", scope: !3262, file: !516, line: 197, type: !3329)
!3329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !3330)
!3330 = !{!3331}
!3331 = !DISubrange(count: 51)
!3332 = !DILocalVariable(name: "l1", scope: !3262, file: !516, line: 198, type: !115)
!3333 = !DILocalVariable(name: "l2", scope: !3262, file: !516, line: 198, type: !115)
!3334 = !DILocalVariable(name: "old_res_ptr", scope: !3262, file: !516, line: 199, type: !6)
!3335 = !DILocation(line: 196, column: 28, scope: !3262, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 589, column: 18, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3255, file: !516, line: 589, column: 3)
!3338 = !DILocation(line: 197, column: 28, scope: !3262, inlinedAt: !3336)
!3339 = !DILocation(line: 403, column: 13, scope: !3255)
!3340 = !DILocation(line: 395, column: 15, scope: !3255)
!3341 = !DILocation(line: 584, column: 15, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3255, file: !516, line: 584, column: 7)
!3343 = !DILocation(line: 584, column: 7, scope: !3255)
!3344 = !DILocation(line: 128, column: 8, scope: !3273, inlinedAt: !3336)
!3345 = !DILocation(line: 126, column: 15, scope: !3273, inlinedAt: !3336)
!3346 = !DILocation(line: 129, column: 10, scope: !3272, inlinedAt: !3336)
!3347 = !DILocation(line: 129, column: 7, scope: !3273, inlinedAt: !3336)
!3348 = !DILocation(line: 138, column: 13, scope: !3271, inlinedAt: !3336)
!3349 = !DILocation(line: 132, column: 19, scope: !3271, inlinedAt: !3336)
!3350 = !DILocation(line: 139, column: 15, scope: !3351, inlinedAt: !3336)
!3351 = distinct !DILexicalBlock(scope: !3271, file: !516, line: 139, column: 11)
!3352 = !DILocation(line: 139, column: 23, scope: !3351, inlinedAt: !3336)
!3353 = !DILocation(line: 139, column: 26, scope: !3351, inlinedAt: !3336)
!3354 = !DILocation(line: 139, column: 33, scope: !3351, inlinedAt: !3336)
!3355 = !DILocation(line: 139, column: 11, scope: !3271, inlinedAt: !3336)
!3356 = !DILocation(line: 140, column: 9, scope: !3351, inlinedAt: !3336)
!3357 = !DILocation(line: 144, column: 26, scope: !3280, inlinedAt: !3336)
!3358 = !DILocation(line: 144, column: 16, scope: !3280, inlinedAt: !3336)
!3359 = !DILocation(line: 145, column: 16, scope: !3280, inlinedAt: !3336)
!3360 = !DILocation(line: 146, column: 34, scope: !3280, inlinedAt: !3336)
!3361 = !DILocation(line: 146, column: 38, scope: !3280, inlinedAt: !3336)
!3362 = !DILocation(line: 146, column: 42, scope: !3280, inlinedAt: !3336)
!3363 = !DILocation(line: 147, column: 48, scope: !3280, inlinedAt: !3336)
!3364 = !DILocation(line: 147, column: 46, scope: !3280, inlinedAt: !3336)
!3365 = !DILocation(line: 147, column: 69, scope: !3280, inlinedAt: !3336)
!3366 = !DILocation(line: 147, column: 30, scope: !3280, inlinedAt: !3336)
!3367 = !DILocation(line: 134, column: 13, scope: !3271, inlinedAt: !3336)
!3368 = !DILocation(line: 148, column: 13, scope: !3280, inlinedAt: !3336)
!3369 = !DILocation(line: 150, column: 13, scope: !3370, inlinedAt: !3336)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !516, line: 149, column: 11)
!3371 = distinct !DILexicalBlock(scope: !3280, file: !516, line: 148, column: 13)
!3372 = !DILocation(line: 151, column: 17, scope: !3370, inlinedAt: !3336)
!3373 = !DILocation(line: 152, column: 34, scope: !3374, inlinedAt: !3336)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !516, line: 151, column: 17)
!3375 = !DILocation(line: 153, column: 41, scope: !3370, inlinedAt: !3336)
!3376 = !DILocation(line: 153, column: 13, scope: !3370, inlinedAt: !3336)
!3377 = !DILocation(line: 157, column: 11, scope: !3271, inlinedAt: !3336)
!3378 = !DILocation(line: 171, column: 16, scope: !3269, inlinedAt: !3336)
!3379 = !DILocation(line: 162, column: 15, scope: !3269, inlinedAt: !3336)
!3380 = !DILocation(line: 173, column: 18, scope: !3268, inlinedAt: !3336)
!3381 = !DILocation(line: 173, column: 15, scope: !3269, inlinedAt: !3336)
!3382 = !DILocation(line: 180, column: 20, scope: !3267, inlinedAt: !3336)
!3383 = !DILocation(line: 178, column: 21, scope: !3267, inlinedAt: !3336)
!3384 = !DILocation(line: 181, column: 22, scope: !3266, inlinedAt: !3336)
!3385 = !DILocation(line: 181, column: 19, scope: !3267, inlinedAt: !3336)
!3386 = !DILocation(line: 184, column: 19, scope: !3387, inlinedAt: !3336)
!3387 = distinct !DILexicalBlock(scope: !3266, file: !516, line: 182, column: 17)
!3388 = !DILocation(line: 186, column: 17, scope: !3387, inlinedAt: !3336)
!3389 = !DILocation(line: 190, column: 25, scope: !3265, inlinedAt: !3336)
!3390 = !DILocation(line: 191, column: 26, scope: !3265, inlinedAt: !3336)
!3391 = !DILocation(line: 193, column: 19, scope: !3265, inlinedAt: !3336)
!3392 = !DILocation(line: 196, column: 23, scope: !3262, inlinedAt: !3336)
!3393 = !DILocation(line: 197, column: 23, scope: !3262, inlinedAt: !3336)
!3394 = !DILocalVariable(name: "__fp", arg: 1, scope: !3395, file: !757, line: 63, type: !3285)
!3395 = distinct !DISubprogram(name: "getc_unlocked", scope: !757, file: !757, line: 63, type: !3396, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !172, variables: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!40, !3285}
!3398 = !{!3394}
!3399 = !DILocation(line: 63, column: 22, scope: !3395, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 201, column: 27, scope: !3262, inlinedAt: !3336)
!3401 = !DILocation(line: 65, column: 10, scope: !3395, inlinedAt: !3400)
!3402 = !{!765, !588, i64 8}
!3403 = !{!765, !588, i64 16}
!3404 = !DILocation(line: 195, column: 27, scope: !3262, inlinedAt: !3336)
!3405 = !DILocation(line: 202, column: 27, scope: !3262, inlinedAt: !3336)
!3406 = distinct !{!3406, !3407, !3410}
!3407 = !DILocation(line: 209, column: 27, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3409, file: !516, line: 207, column: 25)
!3409 = distinct !DILexicalBlock(scope: !3262, file: !516, line: 206, column: 27)
!3410 = !DILocation(line: 211, column: 58, scope: !3408)
!3411 = !DILocation(line: 65, column: 10, scope: !3395, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 210, column: 33, scope: !3408, inlinedAt: !3336)
!3413 = !DILocation(line: 63, column: 22, scope: !3395, inlinedAt: !3412)
!3414 = !DILocation(line: 210, column: 29, scope: !3408, inlinedAt: !3336)
!3415 = distinct !{!3415, !3416, !3417}
!3416 = !DILocation(line: 193, column: 19, scope: !3264)
!3417 = !DILocation(line: 241, column: 21, scope: !3264)
!3418 = !DILocation(line: 216, column: 23, scope: !3262, inlinedAt: !3336)
!3419 = !DILocation(line: 217, column: 27, scope: !3420, inlinedAt: !3336)
!3420 = distinct !DILexicalBlock(scope: !3262, file: !516, line: 217, column: 27)
!3421 = !DILocation(line: 217, column: 64, scope: !3420, inlinedAt: !3336)
!3422 = !DILocation(line: 217, column: 27, scope: !3262, inlinedAt: !3336)
!3423 = !DILocation(line: 219, column: 28, scope: !3262, inlinedAt: !3336)
!3424 = !DILocation(line: 198, column: 30, scope: !3262, inlinedAt: !3336)
!3425 = !DILocation(line: 220, column: 28, scope: !3262, inlinedAt: !3336)
!3426 = !DILocation(line: 198, column: 34, scope: !3262, inlinedAt: !3336)
!3427 = !DILocation(line: 199, column: 29, scope: !3262, inlinedAt: !3336)
!3428 = !DILocation(line: 222, column: 36, scope: !3429, inlinedAt: !3336)
!3429 = distinct !DILexicalBlock(scope: !3262, file: !516, line: 222, column: 27)
!3430 = !DILocation(line: 222, column: 27, scope: !3262, inlinedAt: !3336)
!3431 = !DILocation(line: 225, column: 63, scope: !3432, inlinedAt: !3336)
!3432 = distinct !DILexicalBlock(scope: !3429, file: !516, line: 223, column: 25)
!3433 = !DILocation(line: 225, column: 46, scope: !3432, inlinedAt: !3336)
!3434 = !DILocation(line: 226, column: 25, scope: !3432, inlinedAt: !3336)
!3435 = !DILocation(line: 229, column: 36, scope: !3436, inlinedAt: !3336)
!3436 = distinct !DILexicalBlock(scope: !3429, file: !516, line: 228, column: 25)
!3437 = !DILocation(line: 230, column: 73, scope: !3436, inlinedAt: !3336)
!3438 = !DILocation(line: 230, column: 46, scope: !3436, inlinedAt: !3336)
!3439 = !DILocation(line: 232, column: 35, scope: !3440, inlinedAt: !3336)
!3440 = distinct !DILexicalBlock(scope: !3262, file: !516, line: 232, column: 27)
!3441 = !DILocation(line: 232, column: 27, scope: !3262, inlinedAt: !3336)
!3442 = !DILocation(line: 236, column: 27, scope: !3443, inlinedAt: !3336)
!3443 = distinct !DILexicalBlock(scope: !3440, file: !516, line: 233, column: 25)
!3444 = !DILocation(line: 237, column: 27, scope: !3443, inlinedAt: !3336)
!3445 = !DILocation(line: 241, column: 21, scope: !3263, inlinedAt: !3336)
!3446 = !DILocation(line: 239, column: 39, scope: !3262, inlinedAt: !3336)
!3447 = !DILocation(line: 239, column: 50, scope: !3262, inlinedAt: !3336)
!3448 = !DILocation(line: 239, column: 61, scope: !3262, inlinedAt: !3336)
!3449 = !DILocalVariable(name: "__dest", arg: 1, scope: !3450, file: !3451, line: 88, type: !3454)
!3450 = distinct !DISubprogram(name: "strcpy", scope: !3451, file: !3451, line: 88, type: !3452, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !172, variables: !3456)
!3451 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!6, !3454, !3455}
!3454 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3455 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!3456 = !{!3449, !3457}
!3457 = !DILocalVariable(name: "__src", arg: 2, scope: !3450, file: !3451, line: 88, type: !3455)
!3458 = !DILocation(line: 88, column: 1, scope: !3450, inlinedAt: !3459)
!3459 = distinct !DILocation(line: 239, column: 23, scope: !3262, inlinedAt: !3336)
!3460 = !DILocation(line: 90, column: 49, scope: !3450, inlinedAt: !3459)
!3461 = !DILocation(line: 90, column: 10, scope: !3450, inlinedAt: !3459)
!3462 = !DILocation(line: 88, column: 1, scope: !3450, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 240, column: 23, scope: !3262, inlinedAt: !3336)
!3464 = !DILocation(line: 90, column: 49, scope: !3450, inlinedAt: !3463)
!3465 = !DILocation(line: 90, column: 10, scope: !3450, inlinedAt: !3463)
!3466 = !DILocation(line: 193, column: 19, scope: !3263, inlinedAt: !3336)
!3467 = !DILocation(line: 242, column: 19, scope: !3265, inlinedAt: !3336)
!3468 = !DILocation(line: 243, column: 32, scope: !3469, inlinedAt: !3336)
!3469 = distinct !DILexicalBlock(scope: !3265, file: !516, line: 243, column: 23)
!3470 = !DILocation(line: 243, column: 23, scope: !3265, inlinedAt: !3336)
!3471 = !DILocation(line: 247, column: 33, scope: !3472, inlinedAt: !3336)
!3472 = distinct !DILexicalBlock(scope: !3469, file: !516, line: 246, column: 21)
!3473 = !DILocation(line: 247, column: 45, scope: !3472, inlinedAt: !3336)
!3474 = !DILocation(line: 253, column: 11, scope: !3269, inlinedAt: !3336)
!3475 = !DILocation(line: 377, column: 23, scope: !3271, inlinedAt: !3336)
!3476 = !DILocation(line: 378, column: 5, scope: !3271, inlinedAt: !3336)
!3477 = !DILocation(line: 396, column: 15, scope: !3255)
!3478 = !DILocation(line: 590, column: 8, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3337, file: !516, line: 589, column: 3)
!3480 = !DILocation(line: 590, column: 17, scope: !3479)
!3481 = !DILocation(line: 589, column: 3, scope: !3337)
!3482 = !DILocation(line: 592, column: 9, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3479, file: !516, line: 592, column: 9)
!3484 = !DILocation(line: 592, column: 35, scope: !3483)
!3485 = !DILocation(line: 593, column: 9, scope: !3483)
!3486 = !DILocation(line: 593, column: 24, scope: !3483)
!3487 = !DILocation(line: 593, column: 31, scope: !3483)
!3488 = !DILocation(line: 593, column: 34, scope: !3483)
!3489 = !DILocation(line: 593, column: 45, scope: !3483)
!3490 = !DILocation(line: 592, column: 9, scope: !3479)
!3491 = !DILocation(line: 595, column: 29, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3483, file: !516, line: 594, column: 7)
!3493 = !DILocation(line: 595, column: 27, scope: !3492)
!3494 = !DILocation(line: 595, column: 46, scope: !3492)
!3495 = !DILocation(line: 596, column: 9, scope: !3492)
!3496 = !DILocation(line: 591, column: 19, scope: !3479)
!3497 = !DILocation(line: 591, column: 36, scope: !3479)
!3498 = !DILocation(line: 591, column: 16, scope: !3479)
!3499 = !DILocation(line: 591, column: 52, scope: !3479)
!3500 = !DILocation(line: 591, column: 69, scope: !3479)
!3501 = !DILocation(line: 591, column: 49, scope: !3479)
!3502 = distinct !{!3502, !3481, !3503}
!3503 = !DILocation(line: 597, column: 7, scope: !3337)
!3504 = !DILocation(line: 602, column: 7, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3255, file: !516, line: 602, column: 7)
!3506 = !DILocation(line: 602, column: 18, scope: !3505)
!3507 = !DILocation(line: 602, column: 7, scope: !3255)
!3508 = !DILocation(line: 612, column: 3, scope: !3255)
!3509 = distinct !DISubprogram(name: "rpl_fclose", scope: !3510, file: !3510, line: 56, type: !3511, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3553)
!3510 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!40, !3513}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !3515)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3515, file: !2621, line: 242, baseType: !40, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3515, file: !2621, line: 247, baseType: !6, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3515, file: !2621, line: 248, baseType: !6, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3515, file: !2621, line: 249, baseType: !6, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3515, file: !2621, line: 250, baseType: !6, size: 64, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3515, file: !2621, line: 251, baseType: !6, size: 64, offset: 320)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3515, file: !2621, line: 252, baseType: !6, size: 64, offset: 384)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3515, file: !2621, line: 253, baseType: !6, size: 64, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3515, file: !2621, line: 254, baseType: !6, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3515, file: !2621, line: 256, baseType: !6, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3515, file: !2621, line: 257, baseType: !6, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3515, file: !2621, line: 258, baseType: !6, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3515, file: !2621, line: 260, baseType: !3530, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !3532)
!3532 = !{!3533, !3534, !3536}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3531, file: !2621, line: 157, baseType: !3530, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3531, file: !2621, line: 158, baseType: !3535, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3531, file: !2621, line: 162, baseType: !40, size: 32, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3515, file: !2621, line: 262, baseType: !3535, size: 64, offset: 832)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3515, file: !2621, line: 264, baseType: !40, size: 32, offset: 896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3515, file: !2621, line: 268, baseType: !40, size: 32, offset: 928)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3515, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3515, file: !2621, line: 274, baseType: !114, size: 16, offset: 1024)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3515, file: !2621, line: 275, baseType: !2652, size: 8, offset: 1040)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3515, file: !2621, line: 276, baseType: !2654, size: 8, offset: 1048)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3515, file: !2621, line: 280, baseType: !2658, size: 64, offset: 1088)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3515, file: !2621, line: 289, baseType: !2661, size: 64, offset: 1152)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3515, file: !2621, line: 297, baseType: !8, size: 64, offset: 1216)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3515, file: !2621, line: 298, baseType: !8, size: 64, offset: 1280)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3515, file: !2621, line: 299, baseType: !8, size: 64, offset: 1344)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3515, file: !2621, line: 300, baseType: !8, size: 64, offset: 1408)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3515, file: !2621, line: 302, baseType: !115, size: 64, offset: 1472)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3515, file: !2621, line: 303, baseType: !40, size: 32, offset: 1536)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3515, file: !2621, line: 305, baseType: !2669, size: 160, offset: 1568)
!3553 = !{!3554, !3555, !3556, !3557}
!3554 = !DILocalVariable(name: "fp", arg: 1, scope: !3509, file: !3510, line: 56, type: !3513)
!3555 = !DILocalVariable(name: "saved_errno", scope: !3509, file: !3510, line: 58, type: !40)
!3556 = !DILocalVariable(name: "fd", scope: !3509, file: !3510, line: 59, type: !40)
!3557 = !DILocalVariable(name: "result", scope: !3509, file: !3510, line: 60, type: !40)
!3558 = !DILocation(line: 56, column: 19, scope: !3509)
!3559 = !DILocation(line: 58, column: 7, scope: !3509)
!3560 = !DILocation(line: 60, column: 7, scope: !3509)
!3561 = !DILocation(line: 63, column: 8, scope: !3509)
!3562 = !DILocation(line: 59, column: 7, scope: !3509)
!3563 = !DILocation(line: 64, column: 10, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3509, file: !3510, line: 64, column: 7)
!3565 = !DILocation(line: 64, column: 7, scope: !3509)
!3566 = !DILocation(line: 65, column: 12, scope: !3564)
!3567 = !DILocation(line: 65, column: 5, scope: !3564)
!3568 = !DILocation(line: 70, column: 9, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3509, file: !3510, line: 70, column: 7)
!3570 = !DILocation(line: 70, column: 23, scope: !3569)
!3571 = !DILocation(line: 70, column: 33, scope: !3569)
!3572 = !DILocation(line: 70, column: 26, scope: !3569)
!3573 = !DILocation(line: 70, column: 59, scope: !3569)
!3574 = !DILocation(line: 71, column: 7, scope: !3569)
!3575 = !DILocation(line: 71, column: 10, scope: !3569)
!3576 = !DILocation(line: 70, column: 7, scope: !3509)
!3577 = !DILocation(line: 98, column: 12, scope: !3509)
!3578 = !DILocation(line: 103, column: 7, scope: !3509)
!3579 = !DILocation(line: 72, column: 19, scope: !3569)
!3580 = !DILocation(line: 103, column: 19, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3509, file: !3510, line: 103, column: 7)
!3582 = !DILocation(line: 105, column: 13, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3581, file: !3510, line: 104, column: 5)
!3584 = !DILocation(line: 107, column: 5, scope: !3583)
!3585 = !DILocation(line: 110, column: 1, scope: !3509)
!3586 = distinct !DISubprogram(name: "rpl_fflush", scope: !3587, file: !3587, line: 127, type: !3588, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3630)
!3587 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!40, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !3592)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !3593)
!3593 = !{!3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3592, file: !2621, line: 242, baseType: !40, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3592, file: !2621, line: 247, baseType: !6, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3592, file: !2621, line: 248, baseType: !6, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3592, file: !2621, line: 249, baseType: !6, size: 64, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3592, file: !2621, line: 250, baseType: !6, size: 64, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3592, file: !2621, line: 251, baseType: !6, size: 64, offset: 320)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3592, file: !2621, line: 252, baseType: !6, size: 64, offset: 384)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3592, file: !2621, line: 253, baseType: !6, size: 64, offset: 448)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3592, file: !2621, line: 254, baseType: !6, size: 64, offset: 512)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3592, file: !2621, line: 256, baseType: !6, size: 64, offset: 576)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3592, file: !2621, line: 257, baseType: !6, size: 64, offset: 640)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3592, file: !2621, line: 258, baseType: !6, size: 64, offset: 704)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3592, file: !2621, line: 260, baseType: !3607, size: 64, offset: 768)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !3609)
!3609 = !{!3610, !3611, !3613}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3608, file: !2621, line: 157, baseType: !3607, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3608, file: !2621, line: 158, baseType: !3612, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3608, file: !2621, line: 162, baseType: !40, size: 32, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3592, file: !2621, line: 262, baseType: !3612, size: 64, offset: 832)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3592, file: !2621, line: 264, baseType: !40, size: 32, offset: 896)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3592, file: !2621, line: 268, baseType: !40, size: 32, offset: 928)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3592, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3592, file: !2621, line: 274, baseType: !114, size: 16, offset: 1024)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3592, file: !2621, line: 275, baseType: !2652, size: 8, offset: 1040)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3592, file: !2621, line: 276, baseType: !2654, size: 8, offset: 1048)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3592, file: !2621, line: 280, baseType: !2658, size: 64, offset: 1088)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3592, file: !2621, line: 289, baseType: !2661, size: 64, offset: 1152)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3592, file: !2621, line: 297, baseType: !8, size: 64, offset: 1216)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3592, file: !2621, line: 298, baseType: !8, size: 64, offset: 1280)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3592, file: !2621, line: 299, baseType: !8, size: 64, offset: 1344)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3592, file: !2621, line: 300, baseType: !8, size: 64, offset: 1408)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3592, file: !2621, line: 302, baseType: !115, size: 64, offset: 1472)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3592, file: !2621, line: 303, baseType: !40, size: 32, offset: 1536)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3592, file: !2621, line: 305, baseType: !2669, size: 160, offset: 1568)
!3630 = !{!3631}
!3631 = !DILocalVariable(name: "stream", arg: 1, scope: !3586, file: !3587, line: 127, type: !3590)
!3632 = !DILocation(line: 127, column: 19, scope: !3586)
!3633 = !DILocation(line: 148, column: 14, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3586, file: !3587, line: 148, column: 7)
!3635 = !DILocation(line: 148, column: 22, scope: !3634)
!3636 = !DILocation(line: 148, column: 27, scope: !3634)
!3637 = !DILocation(line: 148, column: 7, scope: !3586)
!3638 = !DILocation(line: 149, column: 12, scope: !3634)
!3639 = !DILocation(line: 149, column: 5, scope: !3634)
!3640 = !DILocalVariable(name: "fp", arg: 1, scope: !3641, file: !3587, line: 40, type: !3590)
!3641 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3587, file: !3587, line: 40, type: !3642, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !565, variables: !3644)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !3590}
!3644 = !{!3640}
!3645 = !DILocation(line: 40, column: 48, scope: !3641, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 153, column: 3, scope: !3586)
!3647 = !DILocation(line: 42, column: 11, scope: !3648, inlinedAt: !3646)
!3648 = distinct !DILexicalBlock(scope: !3641, file: !3587, line: 42, column: 7)
!3649 = !DILocation(line: 42, column: 18, scope: !3648, inlinedAt: !3646)
!3650 = !DILocation(line: 42, column: 7, scope: !3641, inlinedAt: !3646)
!3651 = !DILocation(line: 44, column: 5, scope: !3648, inlinedAt: !3646)
!3652 = !DILocation(line: 155, column: 10, scope: !3586)
!3653 = !DILocation(line: 155, column: 3, scope: !3586)
!3654 = !DILocation(line: 229, column: 1, scope: !3586)
!3655 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3656, file: !3656, line: 28, type: !3657, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !567, variables: !3700)
!3656 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!40, !3659, !3699, !40}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2619, line: 7, baseType: !3661)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2621, line: 241, size: 1728, elements: !3662)
!3662 = !{!3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3661, file: !2621, line: 242, baseType: !40, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3661, file: !2621, line: 247, baseType: !6, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3661, file: !2621, line: 248, baseType: !6, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3661, file: !2621, line: 249, baseType: !6, size: 64, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3661, file: !2621, line: 250, baseType: !6, size: 64, offset: 256)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3661, file: !2621, line: 251, baseType: !6, size: 64, offset: 320)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3661, file: !2621, line: 252, baseType: !6, size: 64, offset: 384)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3661, file: !2621, line: 253, baseType: !6, size: 64, offset: 448)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3661, file: !2621, line: 254, baseType: !6, size: 64, offset: 512)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3661, file: !2621, line: 256, baseType: !6, size: 64, offset: 576)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3661, file: !2621, line: 257, baseType: !6, size: 64, offset: 640)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3661, file: !2621, line: 258, baseType: !6, size: 64, offset: 704)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3661, file: !2621, line: 260, baseType: !3676, size: 64, offset: 768)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2621, line: 156, size: 192, elements: !3678)
!3678 = !{!3679, !3680, !3682}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3677, file: !2621, line: 157, baseType: !3676, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3677, file: !2621, line: 158, baseType: !3681, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3677, file: !2621, line: 162, baseType: !40, size: 32, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3661, file: !2621, line: 262, baseType: !3681, size: 64, offset: 832)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3661, file: !2621, line: 264, baseType: !40, size: 32, offset: 896)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3661, file: !2621, line: 268, baseType: !40, size: 32, offset: 928)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3661, file: !2621, line: 270, baseType: !2647, size: 64, offset: 960)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3661, file: !2621, line: 274, baseType: !114, size: 16, offset: 1024)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3661, file: !2621, line: 275, baseType: !2652, size: 8, offset: 1040)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3661, file: !2621, line: 276, baseType: !2654, size: 8, offset: 1048)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3661, file: !2621, line: 280, baseType: !2658, size: 64, offset: 1088)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3661, file: !2621, line: 289, baseType: !2661, size: 64, offset: 1152)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3661, file: !2621, line: 297, baseType: !8, size: 64, offset: 1216)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3661, file: !2621, line: 298, baseType: !8, size: 64, offset: 1280)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3661, file: !2621, line: 299, baseType: !8, size: 64, offset: 1344)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3661, file: !2621, line: 300, baseType: !8, size: 64, offset: 1408)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3661, file: !2621, line: 302, baseType: !115, size: 64, offset: 1472)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3661, file: !2621, line: 303, baseType: !40, size: 32, offset: 1536)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3661, file: !2621, line: 305, baseType: !2669, size: 160, offset: 1568)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2789, line: 57, baseType: !2647)
!3700 = !{!3701, !3702, !3703, !3704}
!3701 = !DILocalVariable(name: "fp", arg: 1, scope: !3655, file: !3656, line: 28, type: !3659)
!3702 = !DILocalVariable(name: "offset", arg: 2, scope: !3655, file: !3656, line: 28, type: !3699)
!3703 = !DILocalVariable(name: "whence", arg: 3, scope: !3655, file: !3656, line: 28, type: !40)
!3704 = !DILocalVariable(name: "pos", scope: !3705, file: !3656, line: 116, type: !3699)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !3656, line: 112, column: 5)
!3706 = distinct !DILexicalBlock(scope: !3655, file: !3656, line: 51, column: 7)
!3707 = !DILocation(line: 28, column: 15, scope: !3655)
!3708 = !DILocation(line: 28, column: 25, scope: !3655)
!3709 = !DILocation(line: 28, column: 37, scope: !3655)
!3710 = !DILocation(line: 51, column: 11, scope: !3706)
!3711 = !DILocation(line: 51, column: 31, scope: !3706)
!3712 = !DILocation(line: 51, column: 24, scope: !3706)
!3713 = !DILocation(line: 52, column: 7, scope: !3706)
!3714 = !DILocation(line: 52, column: 14, scope: !3706)
!3715 = !DILocation(line: 52, column: 35, scope: !3706)
!3716 = !{!765, !588, i64 32}
!3717 = !DILocation(line: 52, column: 28, scope: !3706)
!3718 = !DILocation(line: 53, column: 7, scope: !3706)
!3719 = !DILocation(line: 53, column: 14, scope: !3706)
!3720 = !{!765, !588, i64 72}
!3721 = !DILocation(line: 53, column: 28, scope: !3706)
!3722 = !DILocation(line: 51, column: 7, scope: !3655)
!3723 = !DILocation(line: 116, column: 26, scope: !3705)
!3724 = !DILocation(line: 116, column: 19, scope: !3705)
!3725 = !DILocation(line: 116, column: 13, scope: !3705)
!3726 = !DILocation(line: 117, column: 15, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3705, file: !3656, line: 117, column: 11)
!3728 = !DILocation(line: 117, column: 11, scope: !3705)
!3729 = !DILocation(line: 127, column: 11, scope: !3705)
!3730 = !DILocation(line: 127, column: 18, scope: !3705)
!3731 = !DILocation(line: 128, column: 11, scope: !3705)
!3732 = !DILocation(line: 128, column: 19, scope: !3705)
!3733 = !{!765, !766, i64 144}
!3734 = !DILocation(line: 159, column: 7, scope: !3705)
!3735 = !DILocation(line: 161, column: 10, scope: !3655)
!3736 = !DILocation(line: 161, column: 3, scope: !3655)
!3737 = !DILocation(line: 162, column: 1, scope: !3655)
