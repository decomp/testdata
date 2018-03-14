; ModuleID = 'coreutils-8.27/src/env.bc'
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
@.str.1 = private unnamed_addr constant [62 x i8] c"Usage: %s [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Set each NAME to VALUE in the environment and run COMMAND.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [187 x i8] c"  -i, --ignore-environment  start with an empty environment\0A  -0, --null           end each output line with NUL, not newline\0A  -u, --unset=NAME     remove variable from the environment\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"\0AA mere - implies -i.  If no COMMAND, print the resulting environment.\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"+iu:0\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 1, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.13 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@main.dummy_environ = internal global [1 x i8*] zeroinitializer, align 8, !dbg !17
@environ = external local_unnamed_addr global i8**, align 8
@optarg = external local_unnamed_addr global i8*, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c"cannot unset %s\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"cannot set %s\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"cannot specify --null (-0) with command\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"ignore-environment\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), align 8, !dbg !74
@.str.22 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !80
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !85
@.str.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !88
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !95
@.str.42 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.43 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.44 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.47, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.48, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.49, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.54, i32 0, i32 0), i8* null], align 16, !dbg !102
@.str.45 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.46 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.47 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.48 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.49 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.50 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.51 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.52 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.53 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.54 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !147
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !154
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !167
@.str.11.55 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.56 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.57 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.58 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.59 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.60 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.61 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !174
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !181
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !169
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !183
@.str.66 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.69 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.70 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.71 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.72 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.73 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.74 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.75 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.76 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.77 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.78 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.79 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.82 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.83 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.84 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.85 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.86 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.87 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !189
@.str.1.98 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.109 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.112 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !198
@.str.3.113 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.114 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.115 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.116 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.117 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !595 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !599, metadata !600), !dbg !601
  %2 = icmp eq i32 %0, 0, !dbg !602
  br i1 %2, label %8, label %3, !dbg !604

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !605, !tbaa !607
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !605
  %6 = load i8*, i8** @program_name, align 8, !dbg !605, !tbaa !607
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !605
  br label %45, !dbg !605

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !611
  %10 = load i8*, i8** @program_name, align 8, !dbg !611, !tbaa !607
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !611
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !613
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !613, !tbaa !607
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !613
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #9, !dbg !614
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !607
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !614
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !619
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !619, !tbaa !607
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !619
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !620
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !607
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !620
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !621
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !607
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9, !dbg !621
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !622
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !607
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #9, !dbg !622
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !50, metadata !600) #9, !dbg !623
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !50, metadata !600) #9, !dbg !623
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #9, !dbg !625
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !625
  %32 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !626
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !58, metadata !600) #9, !dbg !627
  %33 = icmp eq i8* %32, null, !dbg !628
  br i1 %33, label %40, label %34, !dbg !630

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #14, !dbg !631
  %36 = icmp eq i32 %35, 0, !dbg !631
  br i1 %36, label %40, label %37, !dbg !632

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #9, !dbg !633
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !633
  br label %40, !dbg !635

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #9, !dbg !636
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !636
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #9, !dbg !637
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #9, !dbg !637
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #15, !dbg !638
  unreachable, !dbg !638
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !19 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !25, metadata !600), !dbg !639
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !26, metadata !600), !dbg !640
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !28, metadata !600), !dbg !641
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !30, metadata !600), !dbg !642
  %3 = load i8*, i8** %1, align 8, !dbg !643, !tbaa !607
  tail call void @set_program_name(i8* %3) #9, !dbg !644
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !645
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !646
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !647
  tail call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !648, metadata !600), !dbg !651
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !653, !tbaa !655
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !657
  br label %8, !dbg !658

; <label>:8:                                      ; preds = %15, %2
  %9 = phi i8 [ 1, %15 ], [ 0, %2 ]
  %10 = phi i8 [ %12, %15 ], [ 0, %2 ]
  br label %11, !dbg !659

; <label>:11:                                     ; preds = %8, %16
  %12 = phi i8 [ %10, %8 ], [ 1, %16 ]
  br label %13, !dbg !659

; <label>:13:                                     ; preds = %11, %13
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !30, metadata !600), !dbg !642
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !28, metadata !600), !dbg !641
  %14 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !27, metadata !600), !dbg !660
  switch i32 %14, label %21 [
    i32 -1, label %22
    i32 105, label %15
    i32 117, label %13
    i32 48, label %16
    i32 -130, label %17
    i32 -131, label %18
  ], !dbg !658, !llvm.loop !661

; <label>:15:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !28, metadata !600), !dbg !641
  br label %8, !dbg !663, !llvm.loop !661

; <label>:16:                                     ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !30, metadata !600), !dbg !642
  br label %11, !dbg !666, !llvm.loop !661

; <label>:17:                                     ; preds = %13
  tail call void @usage(i32 0) #16, !dbg !667
  unreachable, !dbg !667

; <label>:18:                                     ; preds = %13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !607
  %20 = load i8*, i8** @Version, align 8, !dbg !668, !tbaa !607
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #9, !dbg !668
  tail call void @exit(i32 0) #15, !dbg !668
  unreachable, !dbg !668

; <label>:21:                                     ; preds = %13
  tail call void @usage(i32 125) #16, !dbg !669
  unreachable, !dbg !669

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* @optind, align 4, !dbg !670, !tbaa !655
  %24 = icmp slt i32 %23, %0, !dbg !672
  br i1 %24, label %25, label %32, !dbg !673

; <label>:25:                                     ; preds = %22
  %26 = sext i32 %23 to i64, !dbg !674
  %27 = getelementptr inbounds i8*, i8** %1, i64 %26, !dbg !674
  %28 = load i8*, i8** %27, align 8, !dbg !674, !tbaa !607
  %29 = tail call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #14, !dbg !674
  %30 = icmp eq i32 %29, 0, !dbg !674
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !28, metadata !600), !dbg !641
  %31 = select i1 %30, i8 1, i8 %9, !dbg !675
  br label %32, !dbg !675

; <label>:32:                                     ; preds = %25, %22
  %33 = phi i8 [ %9, %22 ], [ %31, %25 ]
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !28, metadata !600), !dbg !641
  %34 = and i8 %33, 1, !dbg !676
  %35 = icmp eq i8 %34, 0, !dbg !676
  br i1 %35, label %37, label %36, !dbg !678

; <label>:36:                                     ; preds = %32
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @main.dummy_environ, i64 0, i64 0), i8*** @environ, align 8, !dbg !679, !tbaa !607
  br label %37, !dbg !681

; <label>:37:                                     ; preds = %32, %36
  store i32 0, i32* @optind, align 4, !dbg !682, !tbaa !655
  br label %38, !dbg !683

; <label>:38:                                     ; preds = %40, %37
  %39 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !684
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !27, metadata !600), !dbg !660
  switch i32 %39, label %40 [
    i32 -1, label %51
    i32 117, label %41
  ], !dbg !683

; <label>:40:                                     ; preds = %38, %41
  br label %38, !dbg !684, !llvm.loop !685

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** @optarg, align 8, !dbg !687, !tbaa !607
  %43 = tail call i32 @unsetenv(i8* %42) #9, !dbg !689
  %44 = icmp eq i32 %43, 0, !dbg !689
  br i1 %44, label %40, label %45, !dbg !690

; <label>:45:                                     ; preds = %41
  %46 = tail call i32* @__errno_location() #17, !dbg !691
  %47 = load i32, i32* %46, align 4, !dbg !691, !tbaa !655
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !691
  %49 = load i8*, i8** @optarg, align 8, !dbg !691, !tbaa !607
  %50 = tail call i8* @quote(i8* %49) #9, !dbg !691
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %47, i8* %48, i8* %50) #9, !dbg !691
  unreachable, !dbg !691

; <label>:51:                                     ; preds = %38
  %52 = load i32, i32* @optind, align 4, !dbg !692, !tbaa !655
  %53 = icmp slt i32 %52, %0, !dbg !694
  br i1 %53, label %54, label %62, !dbg !695

; <label>:54:                                     ; preds = %51
  %55 = sext i32 %52 to i64, !dbg !696
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !696
  %57 = load i8*, i8** %56, align 8, !dbg !696, !tbaa !607
  %58 = tail call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #14, !dbg !696
  %59 = icmp eq i32 %58, 0, !dbg !696
  br i1 %59, label %60, label %62, !dbg !697

; <label>:60:                                     ; preds = %54
  %61 = add nsw i32 %52, 1, !dbg !698
  store i32 %61, i32* @optind, align 4, !dbg !698, !tbaa !655
  br label %62, !dbg !698

; <label>:62:                                     ; preds = %60, %54, %51
  %63 = phi i32 [ %61, %60 ], [ %52, %54 ], [ %52, %51 ], !dbg !699
  %64 = icmp slt i32 %63, %0, !dbg !700
  br i1 %64, label %65, label %89, !dbg !701

; <label>:65:                                     ; preds = %62
  br label %66, !dbg !702

; <label>:66:                                     ; preds = %65, %85
  %67 = phi i32 [ %87, %85 ], [ %63, %65 ]
  %68 = sext i32 %67 to i64, !dbg !702
  %69 = getelementptr inbounds i8*, i8** %1, i64 %68, !dbg !702
  %70 = load i8*, i8** %69, align 8, !dbg !702, !tbaa !607
  %71 = tail call i8* @strchr(i8* %70, i32 61) #14, !dbg !703
  tail call void @llvm.dbg.value(metadata i8* %71, i64 0, metadata !31, metadata !600), !dbg !704
  %72 = icmp eq i8* %71, null, !dbg !701
  br i1 %72, label %103, label %73, !dbg !705

; <label>:73:                                     ; preds = %66
  %74 = tail call i32 @putenv(i8* %70) #9, !dbg !706
  %75 = icmp eq i32 %74, 0, !dbg !706
  br i1 %75, label %85, label %76, !dbg !709

; <label>:76:                                     ; preds = %73
  store i8 0, i8* %71, align 1, !dbg !710, !tbaa !712
  %77 = tail call i32* @__errno_location() #17, !dbg !713
  %78 = load i32, i32* %77, align 4, !dbg !713, !tbaa !655
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 5) #9, !dbg !713
  %80 = load i32, i32* @optind, align 4, !dbg !713, !tbaa !655
  %81 = sext i32 %80 to i64, !dbg !713
  %82 = getelementptr inbounds i8*, i8** %1, i64 %81, !dbg !713
  %83 = load i8*, i8** %82, align 8, !dbg !713, !tbaa !607
  %84 = tail call i8* @quote(i8* %83) #9, !dbg !713
  tail call void (i32, i32, i8*, ...) @error(i32 125, i32 %78, i8* %79, i8* %84) #9, !dbg !713
  unreachable, !dbg !713

; <label>:85:                                     ; preds = %73
  %86 = load i32, i32* @optind, align 4, !dbg !714, !tbaa !655
  %87 = add nsw i32 %86, 1, !dbg !714
  store i32 %87, i32* @optind, align 4, !dbg !714, !tbaa !655
  %88 = icmp slt i32 %87, %0, !dbg !700
  br i1 %88, label %66, label %89, !dbg !701, !llvm.loop !715

; <label>:89:                                     ; preds = %85, %62
  %90 = load i8**, i8*** @environ, align 8, !dbg !717, !tbaa !607
  tail call void @llvm.dbg.value(metadata i8** %90, i64 0, metadata !32, metadata !600), !dbg !718
  tail call void @llvm.dbg.value(metadata i8** %90, i64 0, metadata !32, metadata !600), !dbg !718
  %91 = load i8*, i8** %90, align 8, !dbg !719, !tbaa !607
  %92 = icmp eq i8* %91, null, !dbg !720
  br i1 %92, label %120, label %93, !dbg !720

; <label>:93:                                     ; preds = %89
  %94 = icmp eq i8 %12, 0
  %95 = select i1 %94, i32 10, i32 0
  br label %96, !dbg !720

; <label>:96:                                     ; preds = %93, %96
  %97 = phi i8* [ %91, %93 ], [ %101, %96 ]
  %98 = phi i8** [ %90, %93 ], [ %99, %96 ]
  tail call void @llvm.dbg.value(metadata i8** %98, i64 0, metadata !32, metadata !600), !dbg !718
  %99 = getelementptr inbounds i8*, i8** %98, i64 1, !dbg !721
  tail call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !32, metadata !600), !dbg !718
  %100 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* nonnull %97, i32 %95) #9, !dbg !721
  tail call void @llvm.dbg.value(metadata i8** %99, i64 0, metadata !32, metadata !600), !dbg !718
  %101 = load i8*, i8** %99, align 8, !dbg !719, !tbaa !607
  %102 = icmp eq i8* %101, null, !dbg !720
  br i1 %102, label %120, label %96, !dbg !720, !llvm.loop !722

; <label>:103:                                    ; preds = %66
  %104 = icmp eq i8 %12, 0, !dbg !723
  br i1 %104, label %109, label %105, !dbg !725

; <label>:105:                                    ; preds = %103
  %106 = tail call i32* @__errno_location() #17, !dbg !726
  %107 = load i32, i32* %106, align 4, !dbg !726, !tbaa !655
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !728
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %107, i8* %108) #9, !dbg !729
  tail call void @usage(i32 125) #16, !dbg !730
  unreachable, !dbg !730

; <label>:109:                                    ; preds = %103
  %110 = tail call i32 @execvp(i8* %70, i8** %69) #9, !dbg !731
  %111 = tail call i32* @__errno_location() #17, !dbg !732
  %112 = load i32, i32* %111, align 4, !dbg !732, !tbaa !655
  %113 = icmp eq i32 %112, 2, !dbg !733
  %114 = select i1 %113, i32 127, i32 126, !dbg !732
  tail call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !37, metadata !600), !dbg !734
  %115 = load i32, i32* @optind, align 4, !dbg !735, !tbaa !655
  %116 = sext i32 %115 to i64, !dbg !736
  %117 = getelementptr inbounds i8*, i8** %1, i64 %116, !dbg !736
  %118 = load i8*, i8** %117, align 8, !dbg !736, !tbaa !607
  %119 = tail call i8* @quote(i8* %118) #9, !dbg !737
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %119) #9, !dbg !738
  br label %120

; <label>:120:                                    ; preds = %96, %89, %109
  %121 = phi i32 [ %114, %109 ], [ 0, %89 ], [ 0, %96 ]
  ret i32 %121, !dbg !739
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
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @unsetenv(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @putenv(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !740 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !742, metadata !600), !dbg !743
  store i8* %0, i8** @file_name, align 8, !dbg !744, !tbaa !607
  ret void, !dbg !745
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !746 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !750, metadata !600), !dbg !751
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !752, !tbaa !753
  ret void, !dbg !755
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !756 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !607
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !762
  %3 = icmp eq i32 %2, 0, !dbg !763
  br i1 %3, label %21, label %4, !dbg !764

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !765, !tbaa !753, !range !766
  %6 = icmp eq i8 %5, 0, !dbg !765
  %7 = tail call i32* @__errno_location() #17, !dbg !767
  br i1 %6, label %11, label %8, !dbg !769

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !770, !tbaa !655
  %10 = icmp eq i32 %9, 32, !dbg !771
  br i1 %10, label %21, label %11, !dbg !772

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 5) #9, !dbg !773
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !758, metadata !600), !dbg !774
  %13 = load i8*, i8** @file_name, align 8, !dbg !775, !tbaa !607
  %14 = icmp eq i8* %13, null, !dbg !775
  %15 = load i32, i32* %7, align 4, !tbaa !655
  br i1 %14, label %18, label %16, !dbg !776

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !777
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.26, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !778
  br label %19, !dbg !778

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.27, i64 0, i64 0), i8* %12) #9, !dbg !779
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !780, !tbaa !655
  tail call void @_exit(i32 %20) #15, !dbg !781
  unreachable, !dbg !781

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !782, !tbaa !607
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !784
  %24 = icmp eq i32 %23, 0, !dbg !785
  br i1 %24, label %27, label %25, !dbg !786

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !787, !tbaa !655
  tail call void @_exit(i32 %26) #15, !dbg !788
  unreachable, !dbg !788

; <label>:27:                                     ; preds = %21
  ret void, !dbg !789
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !790 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !792, metadata !600), !dbg !795
  %2 = icmp eq i8* %0, null, !dbg !796
  br i1 %2, label %3, label %6, !dbg !798

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !799, !tbaa !607
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.42, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !801
  tail call void @abort() #15, !dbg !802
  unreachable, !dbg !802

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !803
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !793, metadata !600), !dbg !804
  %8 = icmp eq i8* %7, null, !dbg !805
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !806
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !807
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !794, metadata !600), !dbg !808
  %11 = ptrtoint i8* %10 to i64, !dbg !809
  %12 = ptrtoint i8* %0 to i64, !dbg !809
  %13 = sub i64 %11, %12, !dbg !809
  %14 = icmp sgt i64 %13, 6, !dbg !811
  br i1 %14, label %15, label %24, !dbg !812

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !813
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.43, i64 0, i64 0), i64 7) #14, !dbg !814
  %18 = icmp eq i32 %17, 0, !dbg !815
  br i1 %18, label %19, label %24, !dbg !816

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !792, metadata !600), !dbg !795
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.44, i64 0, i64 0), i64 3) #14, !dbg !817
  %21 = icmp eq i32 %20, 0, !dbg !820
  br i1 %21, label %22, label %24, !dbg !821

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !822
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !792, metadata !600), !dbg !795
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !824, !tbaa !607
  br label %24, !dbg !825

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !792, metadata !600), !dbg !795
  store i8* %25, i8** @program_name, align 8, !dbg !826, !tbaa !607
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !827, !tbaa !607
  ret void, !dbg !828
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !829 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !834, metadata !600), !dbg !837
  %2 = tail call i32* @__errno_location() #17, !dbg !838
  %3 = load i32, i32* %2, align 4, !dbg !838, !tbaa !655
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !835, metadata !600), !dbg !839
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !840
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !840
  %6 = select i1 %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i8* %5, !dbg !840
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !841
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !841
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !836, metadata !600), !dbg !842
  store i32 %3, i32* %2, align 4, !dbg !843, !tbaa !655
  ret %struct.quoting_options* %8, !dbg !844
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !845 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !851, metadata !600), !dbg !852
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !853
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !853
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !854
  %5 = load i32, i32* %4, align 8, !dbg !854, !tbaa !855
  ret i32 %5, !dbg !857
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !858 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !862, metadata !600), !dbg !864
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !863, metadata !600), !dbg !865
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !866
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !866
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !867
  store i32 %1, i32* %5, align 8, !dbg !868, !tbaa !855
  ret void, !dbg !869
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !870 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !874, metadata !600), !dbg !882
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !875, metadata !600), !dbg !883
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !876, metadata !600), !dbg !884
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !877, metadata !600), !dbg !885
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !886
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !886
  %6 = lshr i8 %1, 5, !dbg !887
  %7 = zext i8 %6 to i64, !dbg !887
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !888
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !878, metadata !600), !dbg !889
  %9 = and i8 %1, 31, !dbg !890
  %10 = zext i8 %9 to i32, !dbg !891
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !880, metadata !600), !dbg !892
  %11 = load i32, i32* %8, align 4, !dbg !893, !tbaa !655
  %12 = lshr i32 %11, %10, !dbg !894
  %13 = and i32 %12, 1, !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !881, metadata !600), !dbg !896
  %14 = and i32 %2, 1, !dbg !897
  %15 = xor i32 %13, %14, !dbg !898
  %16 = shl i32 %15, %10, !dbg !899
  %17 = xor i32 %16, %11, !dbg !900
  store i32 %17, i32* %8, align 4, !dbg !900, !tbaa !655
  ret i32 %13, !dbg !901
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !902 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !906, metadata !600), !dbg !909
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !907, metadata !600), !dbg !910
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !911
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !906, metadata !600), !dbg !909
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !913
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !906, metadata !600), !dbg !909
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !914
  %6 = load i32, i32* %5, align 4, !dbg !914, !tbaa !915
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !908, metadata !600), !dbg !916
  store i32 %1, i32* %5, align 4, !dbg !917, !tbaa !915
  ret i32 %6, !dbg !918
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !919 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !923, metadata !600), !dbg !926
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !924, metadata !600), !dbg !927
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !925, metadata !600), !dbg !928
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !929
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !923, metadata !600), !dbg !926
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !931
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !923, metadata !600), !dbg !926
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
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !950, metadata !600), !dbg !958
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !951, metadata !600), !dbg !959
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !952, metadata !600), !dbg !960
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !953, metadata !600), !dbg !961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !954, metadata !600), !dbg !962
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !963
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !963
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !955, metadata !600), !dbg !964
  %8 = tail call i32* @__errno_location() #17, !dbg !965
  %9 = load i32, i32* %8, align 4, !dbg !965, !tbaa !655
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !956, metadata !600), !dbg !966
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
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !957, metadata !600), !dbg !973
  store i32 %9, i32* %8, align 4, !dbg !974, !tbaa !655
  ret i64 %19, !dbg !975
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !976 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !982, metadata !600), !dbg !1046
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !983, metadata !600), !dbg !1047
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !984, metadata !600), !dbg !1048
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !985, metadata !600), !dbg !1049
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !986, metadata !600), !dbg !1050
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !987, metadata !600), !dbg !1051
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !988, metadata !600), !dbg !1052
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !989, metadata !600), !dbg !1053
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !990, metadata !600), !dbg !1054
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !992, metadata !600), !dbg !1055
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !993, metadata !600), !dbg !1056
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !994, metadata !600), !dbg !1057
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !995, metadata !600), !dbg !1058
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !996, metadata !600), !dbg !1059
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1060
  %14 = icmp eq i64 %13, 1, !dbg !1061
  %15 = lshr i32 %5, 1, !dbg !1062
  %16 = trunc i32 %15 to i8, !dbg !1062
  %17 = and i8 %16, 1, !dbg !1062
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !998, metadata !600), !dbg !1062
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !999, metadata !600), !dbg !1063
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1000, metadata !600), !dbg !1064
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1001, metadata !600), !dbg !1065
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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !983, metadata !600), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1001, metadata !600), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1000, metadata !600), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !998, metadata !600), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !985, metadata !600), !dbg !1049
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !996, metadata !600), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !995, metadata !600), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !994, metadata !600), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !993, metadata !600), !dbg !1056
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !990, metadata !600), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !989, metadata !600), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !986, metadata !600), !dbg !1050
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
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !986, metadata !600), !dbg !1050
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !998, metadata !600), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !998, metadata !600), !dbg !1062
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !986, metadata !600), !dbg !1050
  br label %94, !dbg !1068

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !998, metadata !600), !dbg !1062
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !986, metadata !600), !dbg !1050
  %43 = and i8 %36, 1, !dbg !1070
  %44 = icmp eq i8 %43, 0, !dbg !1070
  br i1 %44, label %45, label %94, !dbg !1068

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1072
  br i1 %46, label %94, label %47, !dbg !1075

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1072, !tbaa !712
  br label %94, !dbg !1072

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.55, i64 0, i64 0), i32 %28), !dbg !1076
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !989, metadata !600), !dbg !1053
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.56, i64 0, i64 0), i32 %28), !dbg !1080
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !990, metadata !600), !dbg !1054
  br label %51, !dbg !1081

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !990, metadata !600), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !989, metadata !600), !dbg !1053
  %54 = and i8 %36, 1, !dbg !1082
  %55 = icmp eq i8 %54, 0, !dbg !1082
  br i1 %55, label %56, label %72, !dbg !1084

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !994, metadata !600), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !994, metadata !600), !dbg !1057
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !992, metadata !600), !dbg !1055
  %57 = load i8, i8* %52, align 1, !dbg !1085, !tbaa !712
  %58 = icmp eq i8 %57, 0, !dbg !1088
  br i1 %58, label %72, label %59, !dbg !1088

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1089

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !994, metadata !600), !dbg !1057
  %64 = icmp ult i64 %63, %40, !dbg !1089
  br i1 %64, label %65, label %67, !dbg !1092

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1089
  store i8 %61, i8* %66, align 1, !dbg !1089, !tbaa !712
  br label %67, !dbg !1089

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !992, metadata !600), !dbg !1055
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1093
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !994, metadata !600), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !994, metadata !600), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !992, metadata !600), !dbg !1055
  %70 = load i8, i8* %69, align 1, !dbg !1085, !tbaa !712
  %71 = icmp eq i8 %70, 0, !dbg !1088
  br i1 %71, label %72, label %60, !dbg !1088, !llvm.loop !1094

; <label>:72:                                     ; preds = %67, %56, %51
  %73 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !996, metadata !600), !dbg !1059
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !994, metadata !600), !dbg !1057
  %74 = call i64 @strlen(i8* %53) #14, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !995, metadata !600), !dbg !1058
  br label %94, !dbg !1097

; <label>:75:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !996, metadata !600), !dbg !1059
  br label %76, !dbg !1098

; <label>:76:                                     ; preds = %27, %75
  %77 = phi i8 [ %34, %27 ], [ 1, %75 ]
  call void @llvm.dbg.value(metadata i8 %77, i64 0, metadata !996, metadata !600), !dbg !1059
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !998, metadata !600), !dbg !1062
  br label %78, !dbg !1099

; <label>:78:                                     ; preds = %27, %76
  %79 = phi i8 [ %34, %27 ], [ %77, %76 ]
  %80 = phi i8 [ %36, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !998, metadata !600), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %79, i64 0, metadata !996, metadata !600), !dbg !1059
  %81 = and i8 %80, 1, !dbg !1100
  %82 = icmp eq i8 %81, 0, !dbg !1100
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !996, metadata !600), !dbg !1059
  %83 = select i1 %82, i8 1, i8 %79, !dbg !1102
  br label %84, !dbg !1102

; <label>:84:                                     ; preds = %78, %27
  %85 = phi i8 [ %34, %27 ], [ %83, %78 ]
  %86 = phi i8 [ %36, %27 ], [ %80, %78 ]
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !998, metadata !600), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !996, metadata !600), !dbg !1059
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !986, metadata !600), !dbg !1050
  %87 = and i8 %86, 1, !dbg !1103
  %88 = icmp eq i8 %87, 0, !dbg !1103
  br i1 %88, label %89, label %94, !dbg !1105

; <label>:89:                                     ; preds = %84
  %90 = icmp eq i64 %40, 0, !dbg !1106
  br i1 %90, label %94, label %91, !dbg !1109

; <label>:91:                                     ; preds = %89
  store i8 39, i8* %0, align 1, !dbg !1106, !tbaa !712
  br label %94, !dbg !1106

; <label>:92:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !998, metadata !600), !dbg !1062
  br label %94, !dbg !1110

; <label>:93:                                     ; preds = %27
  call void @abort() #15, !dbg !1111
  unreachable, !dbg !1111

; <label>:94:                                     ; preds = %41, %84, %89, %91, %27, %42, %45, %47, %92, %72
  %95 = phi i32 [ 0, %92 ], [ %28, %72 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %91 ], [ 2, %89 ], [ 2, %84 ], [ 5, %41 ]
  %96 = phi i8* [ %29, %92 ], [ %52, %72 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %91 ], [ %29, %89 ], [ %29, %84 ], [ %29, %41 ]
  %97 = phi i8* [ %30, %92 ], [ %53, %72 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %91 ], [ %30, %89 ], [ %30, %84 ], [ %30, %41 ]
  %98 = phi i64 [ 0, %92 ], [ %73, %72 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %91 ], [ 1, %89 ], [ 0, %84 ], [ 0, %41 ]
  %99 = phi i8* [ %32, %92 ], [ %53, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.57, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.57, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.57, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.56, i64 0, i64 0), %91 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.56, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.56, i64 0, i64 0), %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.57, i64 0, i64 0), %41 ]
  %100 = phi i64 [ %33, %92 ], [ %74, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %91 ], [ 1, %89 ], [ 1, %84 ], [ 1, %41 ]
  %101 = phi i8 [ %34, %92 ], [ 1, %72 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %85, %91 ], [ %85, %89 ], [ %85, %84 ], [ 1, %41 ]
  %102 = phi i8 [ 0, %92 ], [ %36, %72 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %86, %91 ], [ %86, %89 ], [ %86, %84 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !998, metadata !600), !dbg !1062
  call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !996, metadata !600), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !995, metadata !600), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !994, metadata !600), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !990, metadata !600), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !989, metadata !600), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !986, metadata !600), !dbg !1050
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !991, metadata !600), !dbg !1112
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
  br label %122, !dbg !1113

; <label>:122:                                    ; preds = %580, %94
  %123 = phi i64 [ 0, %94 ], [ %589, %580 ]
  %124 = phi i64 [ %98, %94 ], [ %582, %580 ]
  %125 = phi i64 [ %31, %94 ], [ %583, %580 ]
  %126 = phi i64 [ %35, %94 ], [ %584, %580 ]
  %127 = phi i8 [ %37, %94 ], [ %585, %580 ]
  %128 = phi i8 [ %38, %94 ], [ %586, %580 ]
  %129 = phi i8 [ %39, %94 ], [ %587, %580 ]
  %130 = phi i64 [ %40, %94 ], [ %588, %580 ]
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !983, metadata !600), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1001, metadata !600), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1000, metadata !600), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %127, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !985, metadata !600), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !993, metadata !600), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !991, metadata !600), !dbg !1112
  %131 = icmp eq i64 %126, -1, !dbg !1114
  br i1 %131, label %134, label %132, !dbg !1115

; <label>:132:                                    ; preds = %122
  %133 = icmp eq i64 %123, %126, !dbg !1116
  br i1 %133, label %590, label %138, !dbg !1117

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1118
  %136 = load i8, i8* %135, align 1, !dbg !1118, !tbaa !712
  %137 = icmp eq i8 %136, 0, !dbg !1119
  br i1 %137, label %590, label %138, !dbg !1117

; <label>:138:                                    ; preds = %132, %134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1007, metadata !600), !dbg !1120
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1008, metadata !600), !dbg !1121
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1009, metadata !600), !dbg !1122
  br i1 %108, label %139, label %154, !dbg !1123

; <label>:139:                                    ; preds = %138
  %140 = add i64 %123, %100, !dbg !1125
  %141 = and i1 %109, %131, !dbg !1126
  br i1 %141, label %142, label %144, !dbg !1126

; <label>:142:                                    ; preds = %139
  %143 = call i64 @strlen(i8* %2) #14, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !985, metadata !600), !dbg !1049
  br label %144, !dbg !1128

; <label>:144:                                    ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !985, metadata !600), !dbg !1049
  %146 = icmp ugt i64 %140, %145, !dbg !1129
  br i1 %146, label %154, label %147, !dbg !1130

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1131
  %149 = call i32 @memcmp(i8* %148, i8* %99, i64 %100) #14, !dbg !1132
  %150 = icmp ne i32 %149, 0, !dbg !1133
  %151 = or i1 %150, %111, !dbg !1134
  %152 = xor i1 %150, true, !dbg !1134
  %153 = zext i1 %152 to i8, !dbg !1134
  br i1 %151, label %154, label %635, !dbg !1134

; <label>:154:                                    ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ]
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1007, metadata !600), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !985, metadata !600), !dbg !1049
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1135
  %158 = load i8, i8* %157, align 1, !dbg !1135, !tbaa !712
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1002, metadata !600), !dbg !1136
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
  ], !dbg !1137

; <label>:159:                                    ; preds = %154
  br i1 %104, label %160, label %208, !dbg !1138

; <label>:160:                                    ; preds = %159
  br i1 %111, label %161, label %635, !dbg !1139

; <label>:161:                                    ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1008, metadata !600), !dbg !1121
  %162 = and i8 %127, 1, !dbg !1143
  %163 = icmp eq i8 %162, 0, !dbg !1143
  %164 = and i1 %113, %163, !dbg !1143
  br i1 %164, label %165, label %181, !dbg !1143

; <label>:165:                                    ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1145
  br i1 %166, label %167, label %169, !dbg !1149

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1145
  store i8 39, i8* %168, align 1, !dbg !1145, !tbaa !712
  br label %169, !dbg !1145

; <label>:169:                                    ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %170, i64 0, metadata !992, metadata !600), !dbg !1055
  %171 = icmp ult i64 %170, %130, !dbg !1150
  br i1 %171, label %172, label %174, !dbg !1153

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1150
  store i8 36, i8* %173, align 1, !dbg !1150, !tbaa !712
  br label %174, !dbg !1150

; <label>:174:                                    ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !992, metadata !600), !dbg !1055
  %176 = icmp ult i64 %175, %130, !dbg !1154
  br i1 %176, label %177, label %179, !dbg !1157

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1154
  store i8 39, i8* %178, align 1, !dbg !1154, !tbaa !712
  br label %179, !dbg !1154

; <label>:179:                                    ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !999, metadata !600), !dbg !1063
  br label %181, !dbg !1158

; <label>:181:                                    ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ]
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ]
  call void @llvm.dbg.value(metadata i8 %183, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %182, i64 0, metadata !992, metadata !600), !dbg !1055
  %184 = icmp ult i64 %182, %130, !dbg !1159
  br i1 %184, label %185, label %187, !dbg !1162

; <label>:185:                                    ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1159
  store i8 92, i8* %186, align 1, !dbg !1159, !tbaa !712
  br label %187, !dbg !1159

; <label>:187:                                    ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !992, metadata !600), !dbg !1055
  br i1 %105, label %189, label %470, !dbg !1163

; <label>:189:                                    ; preds = %187
  %190 = add i64 %123, 1, !dbg !1165
  %191 = icmp ult i64 %190, %155, !dbg !1166
  br i1 %191, label %192, label %470, !dbg !1167

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1168
  %194 = load i8, i8* %193, align 1, !dbg !1168, !tbaa !712
  %195 = add i8 %194, -48, !dbg !1169
  %196 = icmp ult i8 %195, 10, !dbg !1169
  br i1 %196, label %197, label %470, !dbg !1169

; <label>:197:                                    ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1170
  br i1 %198, label %199, label %201, !dbg !1174

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1170
  store i8 48, i8* %200, align 1, !dbg !1170, !tbaa !712
  br label %201, !dbg !1170

; <label>:201:                                    ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %202, i64 0, metadata !992, metadata !600), !dbg !1055
  %203 = icmp ult i64 %202, %130, !dbg !1175
  br i1 %203, label %204, label %206, !dbg !1178

; <label>:204:                                    ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1175
  store i8 48, i8* %205, align 1, !dbg !1175, !tbaa !712
  br label %206, !dbg !1175

; <label>:206:                                    ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1178
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !992, metadata !600), !dbg !1055
  br label %470, !dbg !1179

; <label>:208:                                    ; preds = %159
  br i1 %23, label %470, label %580, !dbg !1180

; <label>:209:                                    ; preds = %154
  switch i32 %95, label %470 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1181

; <label>:210:                                    ; preds = %209
  br i1 %111, label %470, label %635, !dbg !1182

; <label>:211:                                    ; preds = %209
  br i1 %25, label %470, label %212, !dbg !1184

; <label>:212:                                    ; preds = %211
  %213 = add i64 %123, 2, !dbg !1186
  %214 = icmp ult i64 %213, %155, !dbg !1187
  br i1 %214, label %215, label %470, !dbg !1188

; <label>:215:                                    ; preds = %212
  %216 = add i64 %123, 1, !dbg !1189
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1190
  %218 = load i8, i8* %217, align 1, !dbg !1190, !tbaa !712
  %219 = icmp eq i8 %218, 63, !dbg !1191
  br i1 %219, label %220, label %470, !dbg !1192

; <label>:220:                                    ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1193
  %222 = load i8, i8* %221, align 1, !dbg !1193, !tbaa !712
  %223 = sext i8 %222 to i32, !dbg !1193
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
  ], !dbg !1194

; <label>:224:                                    ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %111, label %225, label %635, !dbg !1195

; <label>:225:                                    ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, i64 0, metadata !1002, metadata !600), !dbg !1136
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !991, metadata !600), !dbg !1112
  %226 = icmp ult i64 %124, %130, !dbg !1197
  br i1 %226, label %227, label %229, !dbg !1200

; <label>:227:                                    ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1197
  store i8 63, i8* %228, align 1, !dbg !1197, !tbaa !712
  br label %229, !dbg !1197

; <label>:229:                                    ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1200
  call void @llvm.dbg.value(metadata i64 %230, i64 0, metadata !992, metadata !600), !dbg !1055
  %231 = icmp ult i64 %230, %130, !dbg !1201
  br i1 %231, label %232, label %234, !dbg !1204

; <label>:232:                                    ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1201
  store i8 34, i8* %233, align 1, !dbg !1201, !tbaa !712
  br label %234, !dbg !1201

; <label>:234:                                    ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !992, metadata !600), !dbg !1055
  %236 = icmp ult i64 %235, %130, !dbg !1205
  br i1 %236, label %237, label %239, !dbg !1208

; <label>:237:                                    ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1205
  store i8 34, i8* %238, align 1, !dbg !1205, !tbaa !712
  br label %239, !dbg !1205

; <label>:239:                                    ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %240, i64 0, metadata !992, metadata !600), !dbg !1055
  %241 = icmp ult i64 %240, %130, !dbg !1209
  br i1 %241, label %242, label %244, !dbg !1212

; <label>:242:                                    ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1209
  store i8 63, i8* %243, align 1, !dbg !1209, !tbaa !712
  br label %244, !dbg !1209

; <label>:244:                                    ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !992, metadata !600), !dbg !1055
  br label %470, !dbg !1213

; <label>:246:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1006, metadata !600), !dbg !1214
  br label %256, !dbg !1215

; <label>:247:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1006, metadata !600), !dbg !1214
  br label %256, !dbg !1216

; <label>:248:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1006, metadata !600), !dbg !1214
  br label %254, !dbg !1217

; <label>:249:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1006, metadata !600), !dbg !1214
  br label %254, !dbg !1218

; <label>:250:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1006, metadata !600), !dbg !1214
  br label %256, !dbg !1219

; <label>:251:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, i64 0, metadata !1006, metadata !600), !dbg !1214
  br i1 %113, label %252, label %253, !dbg !1220

; <label>:252:                                    ; preds = %251
  br i1 %111, label %535, label %635, !dbg !1221

; <label>:253:                                    ; preds = %251
  br i1 %121, label %535, label %254, !dbg !1224

; <label>:254:                                    ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ]
  call void @llvm.dbg.value(metadata i8 %255, i64 0, metadata !1006, metadata !600), !dbg !1214
  br i1 %117, label %256, label %635, !dbg !1226

; <label>:256:                                    ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ]
  call void @llvm.dbg.value(metadata i8 %257, i64 0, metadata !1006, metadata !600), !dbg !1214
  br i1 %104, label %497, label %470, !dbg !1228

; <label>:258:                                    ; preds = %154, %154
  %259 = icmp eq i64 %155, -1, !dbg !1229
  br i1 %259, label %260, label %265, !dbg !1231

; <label>:260:                                    ; preds = %258
  %261 = load i8, i8* %26, align 1, !dbg !1232, !tbaa !712
  %262 = icmp ne i8 %261, 0, !dbg !1233
  %263 = icmp ne i64 %123, 0, !dbg !1234
  %264 = or i1 %263, %262, !dbg !1236
  br i1 %264, label %470, label %271, !dbg !1236

; <label>:265:                                    ; preds = %258
  %266 = icmp ne i64 %155, 1, !dbg !1237
  %267 = icmp ne i64 %123, 0, !dbg !1234
  %268 = or i1 %267, %266, !dbg !1231
  br i1 %268, label %470, label %271, !dbg !1231

; <label>:269:                                    ; preds = %154, %154
  %270 = icmp eq i64 %123, 0, !dbg !1234
  br i1 %270, label %271, label %470, !dbg !1238

; <label>:271:                                    ; preds = %269, %265, %260, %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1009, metadata !600), !dbg !1122
  br label %272, !dbg !1239

; <label>:272:                                    ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %271
  %273 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %271 ]
  call void @llvm.dbg.value(metadata i8 %273, i64 0, metadata !1009, metadata !600), !dbg !1122
  br i1 %117, label %470, label %635, !dbg !1240

; <label>:274:                                    ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1000, metadata !600), !dbg !1064
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1009, metadata !600), !dbg !1122
  br i1 %113, label %275, label %470, !dbg !1242

; <label>:275:                                    ; preds = %274
  br i1 %111, label %276, label %635, !dbg !1243

; <label>:276:                                    ; preds = %275
  %277 = icmp eq i64 %130, 0, !dbg !1246
  %278 = icmp ne i64 %125, 0, !dbg !1248
  %279 = or i1 %278, %277, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !993, metadata !600), !dbg !1056
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !983, metadata !600), !dbg !1047
  %280 = select i1 %279, i64 %125, i64 %130, !dbg !1249
  %281 = select i1 %279, i64 %130, i64 0, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !983, metadata !600), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !993, metadata !600), !dbg !1056
  %282 = icmp ult i64 %124, %281, !dbg !1250
  br i1 %282, label %283, label %285, !dbg !1253

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1250
  store i8 39, i8* %284, align 1, !dbg !1250, !tbaa !712
  br label %285, !dbg !1250

; <label>:285:                                    ; preds = %283, %276
  %286 = add i64 %124, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !992, metadata !600), !dbg !1055
  %287 = icmp ult i64 %286, %281, !dbg !1254
  br i1 %287, label %288, label %290, !dbg !1257

; <label>:288:                                    ; preds = %285
  %289 = getelementptr inbounds i8, i8* %0, i64 %286, !dbg !1254
  store i8 92, i8* %289, align 1, !dbg !1254, !tbaa !712
  br label %290, !dbg !1254

; <label>:290:                                    ; preds = %288, %285
  %291 = add i64 %124, 2, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %291, i64 0, metadata !992, metadata !600), !dbg !1055
  %292 = icmp ult i64 %291, %281, !dbg !1258
  br i1 %292, label %293, label %295, !dbg !1261

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds i8, i8* %0, i64 %291, !dbg !1258
  store i8 39, i8* %294, align 1, !dbg !1258, !tbaa !712
  br label %295, !dbg !1258

; <label>:295:                                    ; preds = %293, %290
  %296 = add i64 %124, 3, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %296, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !999, metadata !600), !dbg !1063
  br label %470, !dbg !1262

; <label>:297:                                    ; preds = %154
  br i1 %14, label %298, label %307, !dbg !1263

; <label>:298:                                    ; preds = %297
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1010, metadata !600), !dbg !1264
  %299 = tail call i16** @__ctype_b_loc() #17, !dbg !1265
  %300 = load i16*, i16** %299, align 8, !dbg !1265, !tbaa !607
  %301 = zext i8 %158 to i64, !dbg !1265
  %302 = getelementptr inbounds i16, i16* %300, i64 %301, !dbg !1265
  %303 = load i16, i16* %302, align 2, !dbg !1265, !tbaa !1267
  %304 = lshr i16 %303, 14, !dbg !1269
  %305 = trunc i16 %304 to i8, !dbg !1269
  %306 = and i8 %305, 1, !dbg !1269
  call void @llvm.dbg.value(metadata i8 %306, i64 0, metadata !1013, metadata !600), !dbg !1270
  br label %362, !dbg !1271

; <label>:307:                                    ; preds = %297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1272
  store i64 0, i64* %10, align 8, !dbg !1273
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1010, metadata !600), !dbg !1264
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1013, metadata !600), !dbg !1270
  %308 = icmp eq i64 %155, -1, !dbg !1274
  br i1 %308, label %309, label %311, !dbg !1276

; <label>:309:                                    ; preds = %307
  %310 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %310, i64 0, metadata !985, metadata !600), !dbg !1049
  br label %311, !dbg !1278

; <label>:311:                                    ; preds = %309, %307
  %312 = phi i64 [ %310, %309 ], [ %155, %307 ]
  call void @llvm.dbg.value(metadata i64 %312, i64 0, metadata !985, metadata !600), !dbg !1049
  br label %313, !dbg !1279, !llvm.loop !1280

; <label>:313:                                    ; preds = %350, %311
  %314 = phi i64 [ 0, %311 ], [ %355, %350 ]
  %315 = phi i8 [ 1, %311 ], [ %354, %350 ]
  call void @llvm.dbg.value(metadata i8 %315, i64 0, metadata !1013, metadata !600), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1010, metadata !600), !dbg !1264
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1282
  %316 = add i64 %314, %123, !dbg !1283
  %317 = getelementptr inbounds i8, i8* %2, i64 %316, !dbg !1284
  %318 = sub i64 %312, %316, !dbg !1285
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1014, metadata !600), !dbg !1286
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1032, metadata !600), !dbg !1287
  %319 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %317, i64 %318, %struct.__mbstate_t* nonnull %11) #9, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %319, i64 0, metadata !1035, metadata !600), !dbg !1289
  switch i64 %319, label %333 [
    i64 0, label %346
    i64 -1, label %347
    i64 -2, label %320
  ], !dbg !1290

; <label>:320:                                    ; preds = %313
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1013, metadata !600), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !1010, metadata !600), !dbg !1264
  %321 = icmp ugt i64 %312, %316, !dbg !1291
  br i1 %321, label %322, label %347, !dbg !1293

; <label>:322:                                    ; preds = %320
  br label %323, !dbg !1294

; <label>:323:                                    ; preds = %322, %329
  %324 = phi i64 [ %331, %329 ], [ %316, %322 ]
  %325 = phi i64 [ %330, %329 ], [ %314, %322 ]
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1010, metadata !600), !dbg !1264
  %326 = getelementptr inbounds i8, i8* %2, i64 %324, !dbg !1294
  %327 = load i8, i8* %326, align 1, !dbg !1294, !tbaa !712
  %328 = icmp eq i8 %327, 0, !dbg !1293
  br i1 %328, label %347, label %329, !dbg !1295

; <label>:329:                                    ; preds = %323
  %330 = add i64 %325, 1, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1010, metadata !600), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %330, i64 0, metadata !1010, metadata !600), !dbg !1264
  %331 = add i64 %330, %123, !dbg !1297
  %332 = icmp ult i64 %331, %312, !dbg !1291
  br i1 %332, label %323, label %347, !dbg !1293, !llvm.loop !1298

; <label>:333:                                    ; preds = %313
  %334 = icmp ugt i64 %319, 1, !dbg !1299
  %335 = and i1 %115, %334, !dbg !1302
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1036, metadata !600), !dbg !1303
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1036, metadata !600), !dbg !1303
  br i1 %335, label %336, label %350, !dbg !1302

; <label>:336:                                    ; preds = %333
  br label %337, !dbg !1304

; <label>:337:                                    ; preds = %336, %343
  %338 = phi i64 [ %344, %343 ], [ 1, %336 ]
  call void @llvm.dbg.value(metadata i64 %338, i64 0, metadata !1036, metadata !600), !dbg !1303
  %339 = add i64 %338, %316, !dbg !1304
  %340 = getelementptr inbounds i8, i8* %2, i64 %339, !dbg !1305
  %341 = load i8, i8* %340, align 1, !dbg !1305, !tbaa !712
  %342 = sext i8 %341 to i32, !dbg !1305
  switch i32 %342, label %343 [
    i32 91, label %361
    i32 92, label %361
    i32 94, label %361
    i32 96, label %361
    i32 124, label %361
  ], !dbg !1306

; <label>:343:                                    ; preds = %337
  %344 = add nuw i64 %338, 1, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1036, metadata !600), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1036, metadata !600), !dbg !1303
  %345 = icmp ult i64 %344, %319, !dbg !1299
  br i1 %345, label %337, label %350, !dbg !1308, !llvm.loop !1309

; <label>:346:                                    ; preds = %313
  br label %347, !dbg !1311

; <label>:347:                                    ; preds = %329, %323, %313, %346, %320
  %348 = phi i64 [ %314, %320 ], [ %314, %346 ], [ %314, %313 ], [ %330, %329 ], [ %325, %323 ]
  %349 = phi i8 [ 0, %320 ], [ %315, %346 ], [ 0, %313 ], [ 0, %323 ], [ 0, %329 ]
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1013, metadata !600), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1010, metadata !600), !dbg !1264
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1311
  br label %358

; <label>:350:                                    ; preds = %343, %333
  %351 = load i32, i32* %12, align 4, !dbg !1312, !tbaa !655
  call void @llvm.dbg.value(metadata i32 %351, i64 0, metadata !1032, metadata !600), !dbg !1287
  %352 = call i32 @iswprint(i32 %351) #9, !dbg !1314
  %353 = icmp eq i32 %352, 0, !dbg !1314
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1013, metadata !600), !dbg !1270
  %354 = select i1 %353, i8 0, i8 %315, !dbg !1315
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1013, metadata !600), !dbg !1270
  %355 = add i64 %319, %314, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1010, metadata !600), !dbg !1264
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1013, metadata !600), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1010, metadata !600), !dbg !1264
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1311
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1014, metadata !600), !dbg !1286
  %356 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1317
  %357 = icmp eq i32 %356, 0, !dbg !1318
  br i1 %357, label %313, label %358, !dbg !1319, !llvm.loop !1280

; <label>:358:                                    ; preds = %350, %347
  %359 = phi i8 [ %349, %347 ], [ %354, %350 ]
  %360 = phi i64 [ %348, %347 ], [ %355, %350 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1320
  br label %362

; <label>:361:                                    ; preds = %337, %337, %337, %337, %337
  call void @llvm.dbg.value(metadata i8 %354, i64 0, metadata !1013, metadata !600), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1010, metadata !600), !dbg !1264
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !1311
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9, !dbg !1320
  br label %635

; <label>:362:                                    ; preds = %358, %298
  %363 = phi i64 [ %155, %298 ], [ %312, %358 ]
  %364 = phi i64 [ 1, %298 ], [ %360, %358 ]
  %365 = phi i8 [ %306, %298 ], [ %359, %358 ]
  call void @llvm.dbg.value(metadata i8 %365, i64 0, metadata !1013, metadata !600), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %364, i64 0, metadata !1010, metadata !600), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %363, i64 0, metadata !985, metadata !600), !dbg !1049
  %366 = and i8 %365, 1, !dbg !1321
  %367 = icmp ne i8 %366, 0, !dbg !1321
  call void @llvm.dbg.value(metadata i8 %366, i64 0, metadata !1009, metadata !600), !dbg !1122
  %368 = icmp ult i64 %364, 2, !dbg !1322
  %369 = or i1 %367, %112, !dbg !1323
  %370 = and i1 %368, %369, !dbg !1324
  br i1 %370, label %470, label %371, !dbg !1324

; <label>:371:                                    ; preds = %362
  %372 = add i64 %364, %123, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1043, metadata !600), !dbg !1326
  br label %373, !dbg !1327

; <label>:373:                                    ; preds = %466, %371
  %374 = phi i64 [ %123, %371 ], [ %441, %466 ]
  %375 = phi i64 [ %124, %371 ], [ %467, %466 ]
  %376 = phi i8 [ %127, %371 ], [ %462, %466 ]
  %377 = phi i8 [ %158, %371 ], [ %469, %466 ]
  %378 = phi i8 [ %156, %371 ], [ %439, %466 ]
  %379 = phi i8 [ 0, %371 ], [ %440, %466 ]
  call void @llvm.dbg.value(metadata i8 %379, i64 0, metadata !1008, metadata !600), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %378, i64 0, metadata !1007, metadata !600), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %377, i64 0, metadata !1002, metadata !600), !dbg !1136
  call void @llvm.dbg.value(metadata i8 %376, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %375, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !991, metadata !600), !dbg !1112
  br i1 %369, label %426, label %380, !dbg !1328

; <label>:380:                                    ; preds = %373
  br i1 %111, label %381, label %635, !dbg !1333

; <label>:381:                                    ; preds = %380
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1008, metadata !600), !dbg !1121
  %382 = and i8 %376, 1, !dbg !1336
  %383 = icmp eq i8 %382, 0, !dbg !1336
  %384 = and i1 %113, %383, !dbg !1336
  br i1 %384, label %385, label %401, !dbg !1336

; <label>:385:                                    ; preds = %381
  %386 = icmp ult i64 %375, %130, !dbg !1338
  br i1 %386, label %387, label %389, !dbg !1342

; <label>:387:                                    ; preds = %385
  %388 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1338
  store i8 39, i8* %388, align 1, !dbg !1338, !tbaa !712
  br label %389, !dbg !1338

; <label>:389:                                    ; preds = %387, %385
  %390 = add i64 %375, 1, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %390, i64 0, metadata !992, metadata !600), !dbg !1055
  %391 = icmp ult i64 %390, %130, !dbg !1343
  br i1 %391, label %392, label %394, !dbg !1346

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1343
  store i8 36, i8* %393, align 1, !dbg !1343, !tbaa !712
  br label %394, !dbg !1343

; <label>:394:                                    ; preds = %392, %389
  %395 = add i64 %375, 2, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %395, i64 0, metadata !992, metadata !600), !dbg !1055
  %396 = icmp ult i64 %395, %130, !dbg !1347
  br i1 %396, label %397, label %399, !dbg !1350

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1347
  store i8 39, i8* %398, align 1, !dbg !1347, !tbaa !712
  br label %399, !dbg !1347

; <label>:399:                                    ; preds = %397, %394
  %400 = add i64 %375, 3, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %400, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !999, metadata !600), !dbg !1063
  br label %401, !dbg !1351

; <label>:401:                                    ; preds = %381, %399
  %402 = phi i64 [ %400, %399 ], [ %375, %381 ]
  %403 = phi i8 [ 1, %399 ], [ %376, %381 ]
  call void @llvm.dbg.value(metadata i8 %403, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %402, i64 0, metadata !992, metadata !600), !dbg !1055
  %404 = icmp ult i64 %402, %130, !dbg !1352
  br i1 %404, label %405, label %407, !dbg !1355

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds i8, i8* %0, i64 %402, !dbg !1352
  store i8 92, i8* %406, align 1, !dbg !1352, !tbaa !712
  br label %407, !dbg !1352

; <label>:407:                                    ; preds = %405, %401
  %408 = add i64 %402, 1, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !992, metadata !600), !dbg !1055
  %409 = icmp ult i64 %408, %130, !dbg !1356
  br i1 %409, label %410, label %414, !dbg !1359

; <label>:410:                                    ; preds = %407
  %411 = lshr i8 %377, 6, !dbg !1356
  %412 = or i8 %411, 48, !dbg !1356
  %413 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1356
  store i8 %412, i8* %413, align 1, !dbg !1356, !tbaa !712
  br label %414, !dbg !1356

; <label>:414:                                    ; preds = %410, %407
  %415 = add i64 %402, 2, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %415, i64 0, metadata !992, metadata !600), !dbg !1055
  %416 = icmp ult i64 %415, %130, !dbg !1360
  br i1 %416, label %417, label %422, !dbg !1363

; <label>:417:                                    ; preds = %414
  %418 = lshr i8 %377, 3, !dbg !1360
  %419 = and i8 %418, 7, !dbg !1360
  %420 = or i8 %419, 48, !dbg !1360
  %421 = getelementptr inbounds i8, i8* %0, i64 %415, !dbg !1360
  store i8 %420, i8* %421, align 1, !dbg !1360, !tbaa !712
  br label %422, !dbg !1360

; <label>:422:                                    ; preds = %417, %414
  %423 = add i64 %402, 3, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %423, i64 0, metadata !992, metadata !600), !dbg !1055
  %424 = and i8 %377, 7, !dbg !1364
  %425 = or i8 %424, 48, !dbg !1365
  call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !1002, metadata !600), !dbg !1136
  br label %435, !dbg !1366

; <label>:426:                                    ; preds = %373
  %427 = and i8 %378, 1, !dbg !1367
  %428 = icmp eq i8 %427, 0, !dbg !1367
  br i1 %428, label %435, label %429, !dbg !1369

; <label>:429:                                    ; preds = %426
  %430 = icmp ult i64 %375, %130, !dbg !1370
  br i1 %430, label %431, label %433, !dbg !1374

; <label>:431:                                    ; preds = %429
  %432 = getelementptr inbounds i8, i8* %0, i64 %375, !dbg !1370
  store i8 92, i8* %432, align 1, !dbg !1370, !tbaa !712
  br label %433, !dbg !1370

; <label>:433:                                    ; preds = %431, %429
  %434 = add i64 %375, 1, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %434, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1007, metadata !600), !dbg !1120
  br label %435, !dbg !1375

; <label>:435:                                    ; preds = %426, %433, %422
  %436 = phi i64 [ %434, %433 ], [ %375, %426 ], [ %423, %422 ]
  %437 = phi i8 [ %376, %433 ], [ %376, %426 ], [ %403, %422 ]
  %438 = phi i8 [ %377, %433 ], [ %377, %426 ], [ %425, %422 ]
  %439 = phi i8 [ 0, %433 ], [ %378, %426 ], [ %378, %422 ]
  %440 = phi i8 [ %379, %433 ], [ %379, %426 ], [ 1, %422 ]
  call void @llvm.dbg.value(metadata i8 %440, i64 0, metadata !1008, metadata !600), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1007, metadata !600), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %438, i64 0, metadata !1002, metadata !600), !dbg !1136
  call void @llvm.dbg.value(metadata i8 %437, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %436, i64 0, metadata !992, metadata !600), !dbg !1055
  %441 = add i64 %374, 1, !dbg !1376
  %442 = icmp ugt i64 %372, %441, !dbg !1378
  br i1 %442, label %443, label %535, !dbg !1379

; <label>:443:                                    ; preds = %435
  %444 = and i8 %437, 1, !dbg !1380
  %445 = icmp ne i8 %444, 0, !dbg !1380
  %446 = and i8 %440, 1, !dbg !1380
  %447 = icmp eq i8 %446, 0, !dbg !1380
  %448 = and i1 %445, %447, !dbg !1380
  br i1 %448, label %449, label %460, !dbg !1380

; <label>:449:                                    ; preds = %443
  %450 = icmp ult i64 %436, %130, !dbg !1383
  br i1 %450, label %451, label %453, !dbg !1387

; <label>:451:                                    ; preds = %449
  %452 = getelementptr inbounds i8, i8* %0, i64 %436, !dbg !1383
  store i8 39, i8* %452, align 1, !dbg !1383, !tbaa !712
  br label %453, !dbg !1383

; <label>:453:                                    ; preds = %451, %449
  %454 = add i64 %436, 1, !dbg !1387
  call void @llvm.dbg.value(metadata i64 %454, i64 0, metadata !992, metadata !600), !dbg !1055
  %455 = icmp ult i64 %454, %130, !dbg !1388
  br i1 %455, label %456, label %458, !dbg !1391

; <label>:456:                                    ; preds = %453
  %457 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1388
  store i8 39, i8* %457, align 1, !dbg !1388, !tbaa !712
  br label %458, !dbg !1388

; <label>:458:                                    ; preds = %456, %453
  %459 = add i64 %436, 2, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %459, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !999, metadata !600), !dbg !1063
  br label %460, !dbg !1392

; <label>:460:                                    ; preds = %443, %458
  %461 = phi i64 [ %459, %458 ], [ %436, %443 ]
  %462 = phi i8 [ 0, %458 ], [ %437, %443 ]
  call void @llvm.dbg.value(metadata i8 %462, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %461, i64 0, metadata !992, metadata !600), !dbg !1055
  %463 = icmp ult i64 %461, %130, !dbg !1393
  br i1 %463, label %464, label %466, !dbg !1396

; <label>:464:                                    ; preds = %460
  %465 = getelementptr inbounds i8, i8* %0, i64 %461, !dbg !1393
  store i8 %438, i8* %465, align 1, !dbg !1393, !tbaa !712
  br label %466, !dbg !1393

; <label>:466:                                    ; preds = %464, %460
  %467 = add i64 %461, 1, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %441, i64 0, metadata !991, metadata !600), !dbg !1112
  %468 = getelementptr inbounds i8, i8* %2, i64 %441, !dbg !1397
  %469 = load i8, i8* %468, align 1, !dbg !1397, !tbaa !712
  call void @llvm.dbg.value(metadata i8 %469, i64 0, metadata !1002, metadata !600), !dbg !1136
  br label %373, !dbg !1398, !llvm.loop !1399

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
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !983, metadata !600), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %479, i64 0, metadata !1009, metadata !600), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %478, i64 0, metadata !1008, metadata !600), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %156, i64 0, metadata !1007, metadata !600), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %477, i64 0, metadata !1002, metadata !600), !dbg !1136
  call void @llvm.dbg.value(metadata i8 %476, i64 0, metadata !1000, metadata !600), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %474, i64 0, metadata !985, metadata !600), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !993, metadata !600), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %472, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %471, i64 0, metadata !991, metadata !600), !dbg !1112
  br i1 %106, label %482, label %481, !dbg !1402

; <label>:481:                                    ; preds = %470
  br i1 %116, label %483, label %495, !dbg !1404

; <label>:482:                                    ; preds = %470
  br i1 %20, label %495, label %483, !dbg !1405

; <label>:483:                                    ; preds = %482, %481
  %484 = lshr i8 %477, 5, !dbg !1406
  %485 = zext i8 %484 to i64, !dbg !1406
  %486 = getelementptr inbounds i32, i32* %6, i64 %485, !dbg !1407
  %487 = load i32, i32* %486, align 4, !dbg !1407, !tbaa !655
  %488 = and i8 %477, 31, !dbg !1408
  %489 = zext i8 %488 to i32, !dbg !1409
  %490 = shl i32 1, %489, !dbg !1410
  %491 = and i32 %487, %490, !dbg !1410
  %492 = icmp eq i32 %491, 0, !dbg !1410
  %493 = icmp eq i8 %156, 0, !dbg !1411
  %494 = and i1 %493, %492, !dbg !1412
  br i1 %494, label %535, label %497, !dbg !1412

; <label>:495:                                    ; preds = %482, %481
  %496 = icmp eq i8 %156, 0, !dbg !1411
  br i1 %496, label %535, label %497, !dbg !1413

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
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !983, metadata !600), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %505, i64 0, metadata !1009, metadata !600), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %504, i64 0, metadata !1002, metadata !600), !dbg !1136
  call void @llvm.dbg.value(metadata i8 %503, i64 0, metadata !1000, metadata !600), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %502, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %501, i64 0, metadata !985, metadata !600), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %500, i64 0, metadata !993, metadata !600), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %499, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %498, i64 0, metadata !991, metadata !600), !dbg !1112
  br i1 %111, label %507, label %635, !dbg !1414

; <label>:507:                                    ; preds = %497
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1008, metadata !600), !dbg !1121
  %508 = and i8 %502, 1, !dbg !1416
  %509 = icmp eq i8 %508, 0, !dbg !1416
  %510 = and i1 %113, %509, !dbg !1416
  br i1 %510, label %511, label %527, !dbg !1416

; <label>:511:                                    ; preds = %507
  %512 = icmp ult i64 %499, %506, !dbg !1418
  br i1 %512, label %513, label %515, !dbg !1422

; <label>:513:                                    ; preds = %511
  %514 = getelementptr inbounds i8, i8* %0, i64 %499, !dbg !1418
  store i8 39, i8* %514, align 1, !dbg !1418, !tbaa !712
  br label %515, !dbg !1418

; <label>:515:                                    ; preds = %513, %511
  %516 = add i64 %499, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %516, i64 0, metadata !992, metadata !600), !dbg !1055
  %517 = icmp ult i64 %516, %506, !dbg !1423
  br i1 %517, label %518, label %520, !dbg !1426

; <label>:518:                                    ; preds = %515
  %519 = getelementptr inbounds i8, i8* %0, i64 %516, !dbg !1423
  store i8 36, i8* %519, align 1, !dbg !1423, !tbaa !712
  br label %520, !dbg !1423

; <label>:520:                                    ; preds = %518, %515
  %521 = add i64 %499, 2, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %521, i64 0, metadata !992, metadata !600), !dbg !1055
  %522 = icmp ult i64 %521, %506, !dbg !1427
  br i1 %522, label %523, label %525, !dbg !1430

; <label>:523:                                    ; preds = %520
  %524 = getelementptr inbounds i8, i8* %0, i64 %521, !dbg !1427
  store i8 39, i8* %524, align 1, !dbg !1427, !tbaa !712
  br label %525, !dbg !1427

; <label>:525:                                    ; preds = %523, %520
  %526 = add i64 %499, 3, !dbg !1430
  call void @llvm.dbg.value(metadata i64 %526, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !999, metadata !600), !dbg !1063
  br label %527, !dbg !1431

; <label>:527:                                    ; preds = %507, %525
  %528 = phi i64 [ %526, %525 ], [ %499, %507 ]
  %529 = phi i8 [ 1, %525 ], [ %502, %507 ]
  call void @llvm.dbg.value(metadata i8 %529, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %528, i64 0, metadata !992, metadata !600), !dbg !1055
  %530 = icmp ult i64 %528, %506, !dbg !1432
  br i1 %530, label %531, label %533, !dbg !1435

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1432
  store i8 92, i8* %532, align 1, !dbg !1432, !tbaa !712
  br label %533, !dbg !1432

; <label>:533:                                    ; preds = %527, %531
  %534 = add i64 %528, 1, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !983, metadata !600), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1009, metadata !600), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1008, metadata !600), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1002, metadata !600), !dbg !1136
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1000, metadata !600), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !985, metadata !600), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !993, metadata !600), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !991, metadata !600), !dbg !1112
  br label %562, !dbg !1436

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
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !983, metadata !600), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %544, i64 0, metadata !1009, metadata !600), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %543, i64 0, metadata !1008, metadata !600), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %542, i64 0, metadata !1002, metadata !600), !dbg !1136
  call void @llvm.dbg.value(metadata i8 %541, i64 0, metadata !1000, metadata !600), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %540, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !985, metadata !600), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %538, i64 0, metadata !993, metadata !600), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %537, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !991, metadata !600), !dbg !1112
  %546 = and i8 %540, 1, !dbg !1436
  %547 = icmp ne i8 %546, 0, !dbg !1436
  %548 = and i8 %543, 1, !dbg !1436
  %549 = icmp eq i8 %548, 0, !dbg !1436
  %550 = and i1 %547, %549, !dbg !1436
  br i1 %550, label %551, label %562, !dbg !1436

; <label>:551:                                    ; preds = %535
  %552 = icmp ult i64 %537, %545, !dbg !1439
  br i1 %552, label %553, label %555, !dbg !1443

; <label>:553:                                    ; preds = %551
  %554 = getelementptr inbounds i8, i8* %0, i64 %537, !dbg !1439
  store i8 39, i8* %554, align 1, !dbg !1439, !tbaa !712
  br label %555, !dbg !1439

; <label>:555:                                    ; preds = %553, %551
  %556 = add i64 %537, 1, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %556, i64 0, metadata !992, metadata !600), !dbg !1055
  %557 = icmp ult i64 %556, %545, !dbg !1444
  br i1 %557, label %558, label %560, !dbg !1447

; <label>:558:                                    ; preds = %555
  %559 = getelementptr inbounds i8, i8* %0, i64 %556, !dbg !1444
  store i8 39, i8* %559, align 1, !dbg !1444, !tbaa !712
  br label %560, !dbg !1444

; <label>:560:                                    ; preds = %558, %555
  %561 = add i64 %537, 2, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %561, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !999, metadata !600), !dbg !1063
  br label %562, !dbg !1448

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
  call void @llvm.dbg.value(metadata i8 %571, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %570, i64 0, metadata !992, metadata !600), !dbg !1055
  %572 = icmp ult i64 %570, %563, !dbg !1449
  br i1 %572, label %573, label %575, !dbg !1452

; <label>:573:                                    ; preds = %562
  %574 = getelementptr inbounds i8, i8* %0, i64 %570, !dbg !1449
  store i8 %565, i8* %574, align 1, !dbg !1449, !tbaa !712
  br label %575, !dbg !1449

; <label>:575:                                    ; preds = %573, %562
  %576 = add i64 %570, 1, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %576, i64 0, metadata !992, metadata !600), !dbg !1055
  %577 = and i8 %564, 1, !dbg !1453
  %578 = icmp eq i8 %577, 0, !dbg !1453
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1001, metadata !600), !dbg !1065
  %579 = select i1 %578, i8 0, i8 %129, !dbg !1455
  call void @llvm.dbg.value(metadata i8 %579, i64 0, metadata !1001, metadata !600), !dbg !1065
  br label %580, !dbg !1456

; <label>:580:                                    ; preds = %575, %208
  %581 = phi i64 [ %569, %575 ], [ %123, %208 ]
  %582 = phi i64 [ %576, %575 ], [ %124, %208 ]
  %583 = phi i64 [ %568, %575 ], [ %125, %208 ]
  %584 = phi i64 [ %567, %575 ], [ %155, %208 ]
  %585 = phi i8 [ %571, %575 ], [ %127, %208 ]
  %586 = phi i8 [ %566, %575 ], [ %128, %208 ]
  %587 = phi i8 [ %579, %575 ], [ %129, %208 ]
  %588 = phi i64 [ %563, %575 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %588, i64 0, metadata !983, metadata !600), !dbg !1047
  call void @llvm.dbg.value(metadata i8 %587, i64 0, metadata !1001, metadata !600), !dbg !1065
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1000, metadata !600), !dbg !1064
  call void @llvm.dbg.value(metadata i8 %585, i64 0, metadata !999, metadata !600), !dbg !1063
  call void @llvm.dbg.value(metadata i64 %584, i64 0, metadata !985, metadata !600), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !993, metadata !600), !dbg !1056
  call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !991, metadata !600), !dbg !1112
  %589 = add i64 %581, 1, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %589, i64 0, metadata !991, metadata !600), !dbg !1112
  br label %122, !dbg !1458, !llvm.loop !1459

; <label>:590:                                    ; preds = %132, %134
  %591 = phi i64 [ %123, %132 ], [ -1, %134 ]
  %592 = icmp eq i64 %124, 0, !dbg !1461
  %593 = and i1 %113, %592, !dbg !1463
  %594 = xor i1 %593, true, !dbg !1463
  %595 = or i1 %111, %594, !dbg !1463
  br i1 %595, label %596, label %635, !dbg !1463

; <label>:596:                                    ; preds = %590
  %597 = and i1 %113, %111, !dbg !1464
  %598 = xor i1 %597, true, !dbg !1464
  %599 = and i8 %128, 1, !dbg !1466
  %600 = icmp eq i8 %599, 0, !dbg !1466
  %601 = or i1 %600, %598, !dbg !1464
  br i1 %601, label %611, label %602, !dbg !1464

; <label>:602:                                    ; preds = %596
  %603 = and i8 %129, 1, !dbg !1467
  %604 = icmp eq i8 %603, 0, !dbg !1467
  br i1 %604, label %607, label %605, !dbg !1470

; <label>:605:                                    ; preds = %602
  %606 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %591, i32 5, i32 %5, i32* %6, i8* %96, i8* %97), !dbg !1471
  br label %645, !dbg !1472

; <label>:607:                                    ; preds = %602
  %608 = icmp eq i64 %130, 0, !dbg !1473
  %609 = icmp ne i64 %125, 0, !dbg !1475
  %610 = and i1 %609, %608, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !983, metadata !600), !dbg !1047
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !992, metadata !600), !dbg !1055
  br i1 %610, label %27, label %611, !dbg !1476

; <label>:611:                                    ; preds = %596, %607
  %612 = icmp ne i8* %99, null, !dbg !1477
  %613 = and i1 %612, %111, !dbg !1479
  br i1 %613, label %614, label %630, !dbg !1479

; <label>:614:                                    ; preds = %611
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !994, metadata !600), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !992, metadata !600), !dbg !1055
  %615 = load i8, i8* %99, align 1, !dbg !1480, !tbaa !712
  %616 = icmp eq i8 %615, 0, !dbg !1483
  br i1 %616, label %630, label %617, !dbg !1483

; <label>:617:                                    ; preds = %614
  br label %618, !dbg !1484

; <label>:618:                                    ; preds = %617, %625
  %619 = phi i8 [ %628, %625 ], [ %615, %617 ]
  %620 = phi i8* [ %627, %625 ], [ %99, %617 ]
  %621 = phi i64 [ %626, %625 ], [ %124, %617 ]
  call void @llvm.dbg.value(metadata i64 %621, i64 0, metadata !992, metadata !600), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !994, metadata !600), !dbg !1057
  %622 = icmp ult i64 %621, %130, !dbg !1484
  br i1 %622, label %623, label %625, !dbg !1487

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1484
  store i8 %619, i8* %624, align 1, !dbg !1484, !tbaa !712
  br label %625, !dbg !1484

; <label>:625:                                    ; preds = %623, %618
  %626 = add i64 %621, 1, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !992, metadata !600), !dbg !1055
  %627 = getelementptr inbounds i8, i8* %620, i64 1, !dbg !1488
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !994, metadata !600), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %627, i64 0, metadata !994, metadata !600), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %626, i64 0, metadata !992, metadata !600), !dbg !1055
  %628 = load i8, i8* %627, align 1, !dbg !1480, !tbaa !712
  %629 = icmp eq i8 %628, 0, !dbg !1483
  br i1 %629, label %630, label %618, !dbg !1483, !llvm.loop !1489

; <label>:630:                                    ; preds = %625, %614, %611
  %631 = phi i64 [ %124, %611 ], [ %124, %614 ], [ %626, %625 ]
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !992, metadata !600), !dbg !1055
  %632 = icmp ult i64 %631, %130, !dbg !1491
  br i1 %632, label %633, label %645, !dbg !1493

; <label>:633:                                    ; preds = %630
  %634 = getelementptr inbounds i8, i8* %0, i64 %631, !dbg !1494
  store i8 0, i8* %634, align 1, !dbg !1495, !tbaa !712
  br label %645, !dbg !1494

; <label>:635:                                    ; preds = %590, %497, %275, %272, %254, %252, %224, %210, %160, %147, %380, %361
  %636 = phi i32 [ 2, %361 ], [ %95, %380 ], [ %95, %147 ], [ %95, %160 ], [ 2, %210 ], [ 5, %224 ], [ 2, %252 ], [ 2, %254 ], [ 2, %272 ], [ 2, %275 ], [ %95, %497 ], [ %95, %590 ]
  %637 = phi i64 [ %312, %361 ], [ %363, %380 ], [ %145, %147 ], [ %155, %160 ], [ %155, %210 ], [ %155, %224 ], [ %155, %252 ], [ %155, %254 ], [ %155, %272 ], [ %155, %275 ], [ %501, %497 ], [ %591, %590 ]
  %638 = phi i64 [ %130, %361 ], [ %130, %380 ], [ %130, %147 ], [ %130, %160 ], [ %130, %210 ], [ %130, %224 ], [ %130, %252 ], [ %130, %254 ], [ %130, %272 ], [ %130, %275 ], [ %506, %497 ], [ %130, %590 ]
  call void @llvm.dbg.value(metadata i64 %638, i64 0, metadata !983, metadata !600), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %637, i64 0, metadata !985, metadata !600), !dbg !1049
  %639 = icmp ne i32 %636, 2, !dbg !1496
  %640 = icmp eq i8 %103, 0, !dbg !1498
  %641 = or i1 %639, %640, !dbg !1499
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !986, metadata !600), !dbg !1050
  %642 = select i1 %641, i32 %636, i32 4, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %642, i64 0, metadata !986, metadata !600), !dbg !1050
  %643 = and i32 %5, -3, !dbg !1500
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %638, i8* %2, i64 %637, i32 %642, i32 %643, i32* null, i8* %96, i8* %97), !dbg !1501
  br label %645, !dbg !1502

; <label>:645:                                    ; preds = %630, %633, %635, %605
  %646 = phi i64 [ %644, %635 ], [ %606, %605 ], [ %631, %633 ], [ %631, %630 ]
  ret i64 %646, !dbg !1503
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !1504 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1508, metadata !600), !dbg !1512
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1509, metadata !600), !dbg !1513
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1514
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1510, metadata !600), !dbg !1515
  %4 = icmp eq i8* %3, %0, !dbg !1516
  br i1 %4, label %5, label %75, !dbg !1518

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1519
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1511, metadata !600), !dbg !1520
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1521, metadata !600), !dbg !1537
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1535, metadata !600), !dbg !1540
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1536, metadata !600), !dbg !1541
  %7 = load i8, i8* %6, align 1, !dbg !1542, !tbaa !712
  %8 = sext i8 %7 to i32, !dbg !1542
  %9 = and i32 %8, -33, !dbg !1542
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !1542

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1544, metadata !600), !dbg !1558
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1556, metadata !600), !dbg !1562
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1557, metadata !600), !dbg !1563
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1564
  %12 = load i8, i8* %11, align 1, !dbg !1564, !tbaa !712
  %13 = sext i8 %12 to i32, !dbg !1564
  %14 = and i32 %13, -33, !dbg !1564
  %15 = icmp eq i32 %14, 84, !dbg !1564
  br i1 %15, label %16, label %72, !dbg !1564

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1566, metadata !600), !dbg !1579
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1577, metadata !600), !dbg !1583
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1578, metadata !600), !dbg !1584
  %17 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1585
  %18 = load i8, i8* %17, align 1, !dbg !1585, !tbaa !712
  %19 = sext i8 %18 to i32, !dbg !1585
  %20 = and i32 %19, -33, !dbg !1585
  %21 = icmp eq i32 %20, 70, !dbg !1585
  br i1 %21, label %22, label %72, !dbg !1585

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1587, metadata !600), !dbg !1599
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1597, metadata !600), !dbg !1603
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1598, metadata !600), !dbg !1604
  %23 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1605
  %24 = load i8, i8* %23, align 1, !dbg !1605, !tbaa !712
  %25 = icmp eq i8 %24, 45, !dbg !1605
  br i1 %25, label %26, label %72, !dbg !1607

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1608, metadata !600), !dbg !1619
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1617, metadata !600), !dbg !1623
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1618, metadata !600), !dbg !1624
  %27 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1625
  %28 = load i8, i8* %27, align 1, !dbg !1625, !tbaa !712
  %29 = icmp eq i8 %28, 56, !dbg !1625
  br i1 %29, label %30, label %72, !dbg !1627

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1628, metadata !600), !dbg !1638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1636, metadata !600), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1637, metadata !600), !dbg !1643
  %31 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1644
  %32 = load i8, i8* %31, align 1, !dbg !1644, !tbaa !712
  %33 = icmp eq i8 %32, 0, !dbg !1644
  br i1 %33, label %34, label %72, !dbg !1646

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !1647, !tbaa !712
  %36 = icmp eq i8 %35, 96, !dbg !1648
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.58, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.59, i64 0, i64 0), !dbg !1647
  br label %75, !dbg !1649

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1544, metadata !600), !dbg !1650
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1556, metadata !600), !dbg !1654
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1557, metadata !600), !dbg !1655
  %39 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1656
  %40 = load i8, i8* %39, align 1, !dbg !1656, !tbaa !712
  %41 = sext i8 %40 to i32, !dbg !1656
  %42 = and i32 %41, -33, !dbg !1656
  %43 = icmp eq i32 %42, 66, !dbg !1656
  br i1 %43, label %44, label %72, !dbg !1656

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1566, metadata !600), !dbg !1657
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1577, metadata !600), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1578, metadata !600), !dbg !1660
  %45 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1661
  %46 = load i8, i8* %45, align 1, !dbg !1661, !tbaa !712
  %47 = icmp eq i8 %46, 49, !dbg !1661
  br i1 %47, label %48, label %72, !dbg !1662

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1587, metadata !600), !dbg !1663
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1597, metadata !600), !dbg !1665
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1598, metadata !600), !dbg !1666
  %49 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1667
  %50 = load i8, i8* %49, align 1, !dbg !1667, !tbaa !712
  %51 = icmp eq i8 %50, 56, !dbg !1667
  br i1 %51, label %52, label %72, !dbg !1668

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1608, metadata !600), !dbg !1669
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1617, metadata !600), !dbg !1671
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1618, metadata !600), !dbg !1672
  %53 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1673
  %54 = load i8, i8* %53, align 1, !dbg !1673, !tbaa !712
  %55 = icmp eq i8 %54, 48, !dbg !1673
  br i1 %55, label %56, label %72, !dbg !1674

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1628, metadata !600), !dbg !1675
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1636, metadata !600), !dbg !1677
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1637, metadata !600), !dbg !1678
  %57 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1679
  %58 = load i8, i8* %57, align 1, !dbg !1679, !tbaa !712
  %59 = icmp eq i8 %58, 51, !dbg !1679
  br i1 %59, label %60, label %72, !dbg !1680

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1681, metadata !600), !dbg !1690
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1688, metadata !600), !dbg !1694
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1689, metadata !600), !dbg !1695
  %61 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1696
  %62 = load i8, i8* %61, align 1, !dbg !1696, !tbaa !712
  %63 = icmp eq i8 %62, 48, !dbg !1696
  br i1 %63, label %64, label %72, !dbg !1698

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1699, metadata !600), !dbg !1707
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1705, metadata !600), !dbg !1711
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1706, metadata !600), !dbg !1712
  %65 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1713
  %66 = load i8, i8* %65, align 1, !dbg !1713, !tbaa !712
  %67 = icmp eq i8 %66, 0, !dbg !1713
  br i1 %67, label %68, label %72, !dbg !1715

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !1716, !tbaa !712
  %70 = icmp eq i8 %69, 96, !dbg !1717
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.60, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.61, i64 0, i64 0), !dbg !1716
  br label %75, !dbg !1718

; <label>:72:                                     ; preds = %64, %5, %30, %26, %22, %16, %10, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !1719
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.57, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.56, i64 0, i64 0), !dbg !1720
  br label %75, !dbg !1721

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !1722
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1723 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1727, metadata !600), !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1728, metadata !600), !dbg !1731
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1729, metadata !600), !dbg !1732
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1733, metadata !600) #9, !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1738, metadata !600) #9, !dbg !1748
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !1739, metadata !600) #9, !dbg !1749
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1740, metadata !600) #9, !dbg !1750
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1751
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1751
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1741, metadata !600) #9, !dbg !1752
  %6 = tail call i32* @__errno_location() #17, !dbg !1753
  %7 = load i32, i32* %6, align 4, !dbg !1753, !tbaa !655
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1742, metadata !600) #9, !dbg !1754
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1755
  %9 = load i32, i32* %8, align 4, !dbg !1755, !tbaa !915
  %10 = or i32 %9, 1, !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1743, metadata !600) #9, !dbg !1757
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1758
  %12 = load i32, i32* %11, align 8, !dbg !1758, !tbaa !855
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1759
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1760
  %15 = load i8*, i8** %14, align 8, !dbg !1760, !tbaa !941
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1761
  %17 = load i8*, i8** %16, align 8, !dbg !1761, !tbaa !944
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !1762
  %19 = add i64 %18, 1, !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1744, metadata !600) #9, !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1765, metadata !600) #9, !dbg !1770
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !1772
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1745, metadata !600) #9, !dbg !1773
  %21 = load i32, i32* %11, align 8, !dbg !1774, !tbaa !855
  %22 = load i8*, i8** %14, align 8, !dbg !1775, !tbaa !941
  %23 = load i8*, i8** %16, align 8, !dbg !1776, !tbaa !944
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !1777
  store i32 %7, i32* %6, align 4, !dbg !1778, !tbaa !655
  ret i8* %20, !dbg !1779
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !1734 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1733, metadata !600), !dbg !1780
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1738, metadata !600), !dbg !1781
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1739, metadata !600), !dbg !1782
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1740, metadata !600), !dbg !1783
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1784
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1784
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1741, metadata !600), !dbg !1785
  %7 = tail call i32* @__errno_location() #17, !dbg !1786
  %8 = load i32, i32* %7, align 4, !dbg !1786, !tbaa !655
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1742, metadata !600), !dbg !1787
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1788
  %10 = load i32, i32* %9, align 4, !dbg !1788, !tbaa !915
  %11 = icmp ne i64* %2, null, !dbg !1789
  %12 = xor i1 %11, true, !dbg !1789
  %13 = zext i1 %12 to i32, !dbg !1789
  %14 = or i32 %10, %13, !dbg !1790
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1743, metadata !600), !dbg !1791
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1792
  %16 = load i32, i32* %15, align 8, !dbg !1792, !tbaa !855
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1793
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1794
  %19 = load i8*, i8** %18, align 8, !dbg !1794, !tbaa !941
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1795
  %21 = load i8*, i8** %20, align 8, !dbg !1795, !tbaa !944
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !1796
  %23 = add i64 %22, 1, !dbg !1797
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1744, metadata !600), !dbg !1798
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !1765, metadata !600) #9, !dbg !1799
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !1801
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !1745, metadata !600), !dbg !1802
  %25 = load i32, i32* %15, align 8, !dbg !1803, !tbaa !855
  %26 = load i8*, i8** %18, align 8, !dbg !1804, !tbaa !941
  %27 = load i8*, i8** %20, align 8, !dbg !1805, !tbaa !944
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !1806
  store i32 %8, i32* %7, align 4, !dbg !1807, !tbaa !655
  br i1 %11, label %29, label %30, !dbg !1808

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1809, !tbaa !1811
  br label %30, !dbg !1813

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1814
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !1815 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1819, !tbaa !607
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !1817, metadata !600), !dbg !1820
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1818, metadata !600), !dbg !1821
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1818, metadata !600), !dbg !1821
  %2 = load i32, i32* @nslots, align 4, !dbg !1822, !tbaa !655
  %3 = icmp sgt i32 %2, 1, !dbg !1825
  br i1 %3, label %4, label %13, !dbg !1826

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !1827

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1818, metadata !600), !dbg !1821
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !1827
  %8 = load i8*, i8** %7, align 8, !dbg !1827, !tbaa !1828
  tail call void @free(i8* %8) #9, !dbg !1830
  %9 = add nuw i64 %6, 1, !dbg !1831
  %10 = load i32, i32* @nslots, align 4, !dbg !1822, !tbaa !655
  %11 = sext i32 %10 to i64, !dbg !1825
  %12 = icmp slt i64 %9, %11, !dbg !1825
  br i1 %12, label %5, label %13, !dbg !1826, !llvm.loop !1832

; <label>:13:                                     ; preds = %5, %0
  %14 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1834
  %15 = load i8*, i8** %14, align 8, !dbg !1834, !tbaa !1828
  %16 = icmp eq i8* %15, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1836
  br i1 %16, label %18, label %17, !dbg !1837

; <label>:17:                                     ; preds = %13
  tail call void @free(i8* %15) #9, !dbg !1838
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1840, !tbaa !1841
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1842, !tbaa !1828
  br label %18, !dbg !1843

; <label>:18:                                     ; preds = %13, %17
  %19 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1844
  br i1 %19, label %22, label %20, !dbg !1846

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.slotvec* %1 to i8*, !dbg !1847
  tail call void @free(i8* %21) #9, !dbg !1849
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1850, !tbaa !607
  br label %22, !dbg !1851

; <label>:22:                                     ; preds = %18, %20
  store i32 1, i32* @nslots, align 4, !dbg !1852, !tbaa !655
  ret void, !dbg !1853
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !1854 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1858, metadata !600), !dbg !1860
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1859, metadata !600), !dbg !1861
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1862
  ret i8* %3, !dbg !1863
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !1864 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1868, metadata !600), !dbg !1882
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1869, metadata !600), !dbg !1883
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1870, metadata !600), !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1871, metadata !600), !dbg !1885
  %5 = tail call i32* @__errno_location() #17, !dbg !1886
  %6 = load i32, i32* %5, align 4, !dbg !1886, !tbaa !655
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1872, metadata !600), !dbg !1887
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1888, !tbaa !607
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !1873, metadata !600), !dbg !1889
  %8 = icmp slt i32 %0, 0, !dbg !1890
  br i1 %8, label %9, label %10, !dbg !1892

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !1893
  unreachable, !dbg !1893

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1894, !tbaa !655
  %12 = icmp sgt i32 %11, %0, !dbg !1895
  br i1 %12, label %34, label %13, !dbg !1896

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1897
  %15 = icmp ugt i32 %0, 2147483646, !dbg !1898
  br i1 %15, label %16, label %17, !dbg !1900

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !1901
  unreachable, !dbg !1901

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !1902
  %19 = select i1 %14, i8* null, i8* %18, !dbg !1902
  %20 = add nsw i32 %0, 1, !dbg !1903
  %21 = sext i32 %20 to i64, !dbg !1904
  %22 = shl nsw i64 %21, 4, !dbg !1905
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !1906
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1906
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !1873, metadata !600), !dbg !1889
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1907, !tbaa !607
  br i1 %14, label %25, label %26, !dbg !1908

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1909, !tbaa.struct !1911
  br label %26, !dbg !1912

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1913, !tbaa !655
  %28 = sext i32 %27 to i64, !dbg !1914
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1914
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1915
  %31 = sub nsw i32 %20, %27, !dbg !1916
  %32 = sext i32 %31 to i64, !dbg !1917
  %33 = shl nsw i64 %32, 4, !dbg !1918
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !1915
  store i32 %20, i32* @nslots, align 4, !dbg !1919, !tbaa !655
  br label %34, !dbg !1920

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !1873, metadata !600), !dbg !1889
  %36 = sext i32 %0 to i64, !dbg !1921
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1922
  %38 = load i64, i64* %37, align 8, !dbg !1922, !tbaa !1841
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1877, metadata !600), !dbg !1923
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1924
  %40 = load i8*, i8** %39, align 8, !dbg !1924, !tbaa !1828
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !1879, metadata !600), !dbg !1925
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1926
  %42 = load i32, i32* %41, align 4, !dbg !1926, !tbaa !915
  %43 = or i32 %42, 1, !dbg !1927
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !1880, metadata !600), !dbg !1928
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1929
  %45 = load i32, i32* %44, align 8, !dbg !1929, !tbaa !855
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1930
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1931
  %48 = load i8*, i8** %47, align 8, !dbg !1931, !tbaa !941
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1932
  %50 = load i8*, i8** %49, align 8, !dbg !1932, !tbaa !944
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !1933
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !1881, metadata !600), !dbg !1934
  %52 = icmp ugt i64 %38, %51, !dbg !1935
  br i1 %52, label %63, label %53, !dbg !1937

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !1938
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1877, metadata !600), !dbg !1923
  store i64 %54, i64* %37, align 8, !dbg !1940, !tbaa !1841
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1941
  br i1 %55, label %57, label %56, !dbg !1943

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !1944
  br label %57, !dbg !1944

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !1765, metadata !600) #9, !dbg !1945
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !1947
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1879, metadata !600), !dbg !1925
  store i8* %58, i8** %39, align 8, !dbg !1948, !tbaa !1828
  %59 = load i32, i32* %44, align 8, !dbg !1949, !tbaa !855
  %60 = load i8*, i8** %47, align 8, !dbg !1950, !tbaa !941
  %61 = load i8*, i8** %49, align 8, !dbg !1951, !tbaa !944
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !1952
  br label %63, !dbg !1953

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1879, metadata !600), !dbg !1925
  store i32 %6, i32* %5, align 4, !dbg !1954, !tbaa !655
  ret i8* %64, !dbg !1955
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #12

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #12

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !1956 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1960, metadata !600), !dbg !1963
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1961, metadata !600), !dbg !1964
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1962, metadata !600), !dbg !1965
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1966
  ret i8* %4, !dbg !1967
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !1968 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1972, metadata !600), !dbg !1973
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1858, metadata !600) #9, !dbg !1974
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1859, metadata !600) #9, !dbg !1976
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !1977
  ret i8* %2, !dbg !1978
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !1979 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1983, metadata !600), !dbg !1985
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1984, metadata !600), !dbg !1986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1960, metadata !600) #9, !dbg !1987
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1961, metadata !600) #9, !dbg !1989
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1962, metadata !600) #9, !dbg !1990
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !1991
  ret i8* %3, !dbg !1992
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !1993 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2001, metadata !2007), !dbg !2008
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1997, metadata !600), !dbg !2010
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1998, metadata !600), !dbg !2011
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1999, metadata !600), !dbg !2012
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2013
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2013
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2000, metadata !600), !dbg !2014
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2006, metadata !600) #9, !dbg !2015
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2016
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2016
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2001, metadata !600) #9, !dbg !2008
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2001, metadata !2017) #9, !dbg !2008
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2008
  %8 = icmp eq i32 %1, 10, !dbg !2018
  br i1 %8, label %9, label %10, !dbg !2020

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2021, !noalias !2022
  unreachable, !dbg !2021

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2001, metadata !2017) #9, !dbg !2008
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2025
  store i32 %1, i32* %11, align 8, !dbg !2025, !alias.scope !2022
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2025
  %13 = bitcast i32* %12 to i8*, !dbg !2025
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2025
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2026
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2000, metadata !600), !dbg !2014
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2027
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2028
  ret i8* %14, !dbg !2029
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2030 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2001, metadata !2007), !dbg !2039
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2034, metadata !600), !dbg !2041
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2035, metadata !600), !dbg !2042
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2036, metadata !600), !dbg !2043
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2037, metadata !600), !dbg !2044
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2045
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2045
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2038, metadata !600), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2006, metadata !600) #9, !dbg !2047
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2048
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2048
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2001, metadata !600) #9, !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2001, metadata !2017) #9, !dbg !2039
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2039
  %9 = icmp eq i32 %1, 10, !dbg !2049
  br i1 %9, label %10, label %11, !dbg !2050

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2051, !noalias !2052
  unreachable, !dbg !2051

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2001, metadata !2017) #9, !dbg !2039
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2055
  store i32 %1, i32* %12, align 8, !dbg !2055, !alias.scope !2052
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2055
  %14 = bitcast i32* %13 to i8*, !dbg !2055
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !2055
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2056
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2038, metadata !600), !dbg !2046
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2057
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2058
  ret i8* %15, !dbg !2059
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2060 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2001, metadata !2007), !dbg !2066
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2064, metadata !600), !dbg !2069
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2065, metadata !600), !dbg !2070
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1997, metadata !600) #9, !dbg !2071
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1998, metadata !600) #9, !dbg !2072
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1999, metadata !600) #9, !dbg !2073
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2074
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2074
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2000, metadata !600) #9, !dbg !2075
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2006, metadata !600) #9, !dbg !2076
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2077
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %6), !dbg !2077
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2001, metadata !600) #9, !dbg !2066
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2001, metadata !2017) #9, !dbg !2066
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2066
  %7 = icmp eq i32 %0, 10, !dbg !2078
  br i1 %7, label %8, label %9, !dbg !2079

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2080, !noalias !2081
  unreachable, !dbg !2080

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2001, metadata !2017) #9, !dbg !2066
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2084
  store i32 %0, i32* %10, align 8, !dbg !2084, !alias.scope !2081
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2084
  %12 = bitcast i32* %11 to i8*, !dbg !2084
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !2084
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %6), !dbg !2085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2000, metadata !600) #9, !dbg !2075
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2086
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2087
  ret i8* %13, !dbg !2088
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2089 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2001, metadata !2007), !dbg !2096
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2093, metadata !600), !dbg !2099
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2094, metadata !600), !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2095, metadata !600), !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2034, metadata !600) #9, !dbg !2102
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2035, metadata !600) #9, !dbg !2103
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2036, metadata !600) #9, !dbg !2104
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2037, metadata !600) #9, !dbg !2105
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2106
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2106
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2038, metadata !600) #9, !dbg !2107
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2006, metadata !600) #9, !dbg !2108
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2109
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2109
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2001, metadata !600) #9, !dbg !2096
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2001, metadata !2017) #9, !dbg !2096
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2096
  %8 = icmp eq i32 %0, 10, !dbg !2110
  br i1 %8, label %9, label %10, !dbg !2111

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2112, !noalias !2113
  unreachable, !dbg !2112

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2001, metadata !2017) #9, !dbg !2096
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2116
  store i32 %0, i32* %11, align 8, !dbg !2116, !alias.scope !2113
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2116
  %13 = bitcast i32* %12 to i8*, !dbg !2116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !2116
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2117
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2038, metadata !600) #9, !dbg !2107
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !2118
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2119
  ret i8* %14, !dbg !2120
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2121 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2125, metadata !600), !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2126, metadata !600), !dbg !2130
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2127, metadata !600), !dbg !2131
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2132
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2133, !tbaa.struct !2134
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2128, metadata !600), !dbg !2135
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !874, metadata !600), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !875, metadata !600), !dbg !2138
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !876, metadata !600), !dbg !2139
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !877, metadata !600), !dbg !2140
  %6 = lshr i8 %2, 5, !dbg !2141
  %7 = zext i8 %6 to i64, !dbg !2141
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2142
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !878, metadata !600), !dbg !2143
  %9 = and i8 %2, 31, !dbg !2144
  %10 = zext i8 %9 to i32, !dbg !2145
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !880, metadata !600), !dbg !2146
  %11 = load i32, i32* %8, align 4, !dbg !2147, !tbaa !655
  %12 = lshr i32 %11, %10, !dbg !2148
  %13 = and i32 %12, 1, !dbg !2149
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !881, metadata !600), !dbg !2150
  %14 = xor i32 %13, 1, !dbg !2151
  %15 = shl i32 %14, %10, !dbg !2152
  %16 = xor i32 %15, %11, !dbg !2153
  store i32 %16, i32* %8, align 4, !dbg !2153, !tbaa !655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2128, metadata !600), !dbg !2135
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2155
  ret i8* %17, !dbg !2156
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2157 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2161, metadata !600), !dbg !2163
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2162, metadata !600), !dbg !2164
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2125, metadata !600) #9, !dbg !2165
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2126, metadata !600) #9, !dbg !2167
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2127, metadata !600) #9, !dbg !2168
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2169
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2169
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2170, !tbaa.struct !2134
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2128, metadata !600) #9, !dbg !2171
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !874, metadata !600) #9, !dbg !2172
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !875, metadata !600) #9, !dbg !2174
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !876, metadata !600) #9, !dbg !2175
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !877, metadata !600) #9, !dbg !2176
  %5 = lshr i8 %1, 5, !dbg !2177
  %6 = zext i8 %5 to i64, !dbg !2177
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2178
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !878, metadata !600) #9, !dbg !2179
  %8 = and i8 %1, 31, !dbg !2180
  %9 = zext i8 %8 to i32, !dbg !2181
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !880, metadata !600) #9, !dbg !2182
  %10 = load i32, i32* %7, align 4, !dbg !2183, !tbaa !655
  %11 = lshr i32 %10, %9, !dbg !2184
  %12 = and i32 %11, 1, !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !881, metadata !600) #9, !dbg !2186
  %13 = xor i32 %12, 1, !dbg !2187
  %14 = shl i32 %13, %9, !dbg !2188
  %15 = xor i32 %14, %10, !dbg !2189
  store i32 %15, i32* %7, align 4, !dbg !2189, !tbaa !655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2128, metadata !600) #9, !dbg !2171
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2190
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2191
  ret i8* %16, !dbg !2192
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2193 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2195, metadata !600), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2161, metadata !600) #9, !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2162, metadata !600) #9, !dbg !2199
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2125, metadata !600) #9, !dbg !2200
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2126, metadata !600) #9, !dbg !2202
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2127, metadata !600) #9, !dbg !2203
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2204
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2205, !tbaa.struct !2134
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2128, metadata !600) #9, !dbg !2206
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !874, metadata !600) #9, !dbg !2207
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !875, metadata !600) #9, !dbg !2209
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !876, metadata !600) #9, !dbg !2210
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !877, metadata !600) #9, !dbg !2211
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2212
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !878, metadata !600) #9, !dbg !2213
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !880, metadata !600) #9, !dbg !2214
  %5 = load i32, i32* %4, align 4, !dbg !2215, !tbaa !655
  %6 = or i32 %5, 67108864, !dbg !2216
  store i32 %6, i32* %4, align 4, !dbg !2216, !tbaa !655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2128, metadata !600) #9, !dbg !2206
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2217
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2218
  ret i8* %7, !dbg !2219
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2220 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2222, metadata !600), !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2223, metadata !600), !dbg !2225
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2125, metadata !600) #9, !dbg !2226
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2126, metadata !600) #9, !dbg !2228
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2127, metadata !600) #9, !dbg !2229
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2230
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2230
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2231, !tbaa.struct !2134
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2128, metadata !600) #9, !dbg !2232
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !874, metadata !600) #9, !dbg !2233
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !875, metadata !600) #9, !dbg !2235
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !876, metadata !600) #9, !dbg !2236
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !877, metadata !600) #9, !dbg !2237
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2238
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !878, metadata !600) #9, !dbg !2239
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !880, metadata !600) #9, !dbg !2240
  %6 = load i32, i32* %5, align 4, !dbg !2241, !tbaa !655
  %7 = or i32 %6, 67108864, !dbg !2242
  store i32 %7, i32* %5, align 4, !dbg !2242, !tbaa !655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2128, metadata !600) #9, !dbg !2232
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2243
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2244
  ret i8* %8, !dbg !2245
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2246 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2001, metadata !2007), !dbg !2252
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2248, metadata !600), !dbg !2254
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2249, metadata !600), !dbg !2255
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2250, metadata !600), !dbg !2256
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2257
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2257
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2006, metadata !600) #9, !dbg !2258
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2259
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %8), !dbg !2259
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2001, metadata !600) #9, !dbg !2252
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2001, metadata !2017) #9, !dbg !2252
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2252
  %9 = icmp eq i32 %1, 10, !dbg !2260
  br i1 %9, label %10, label %11, !dbg !2261

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2262, !noalias !2263
  unreachable, !dbg !2262

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2001, metadata !2017) #9, !dbg !2252
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2266
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %8), !dbg !2267
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2268
  store i32 %1, i32* %13, align 8, !dbg !2268
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2268
  %15 = bitcast i32* %14 to i8*, !dbg !2268
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2268
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2251, metadata !600), !dbg !2269
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !874, metadata !600), !dbg !2270
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !875, metadata !600), !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !876, metadata !600), !dbg !2273
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !877, metadata !600), !dbg !2274
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2275
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !878, metadata !600), !dbg !2276
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !880, metadata !600), !dbg !2277
  %17 = load i32, i32* %16, align 4, !dbg !2278, !tbaa !655
  %18 = or i32 %17, 67108864, !dbg !2279
  store i32 %18, i32* %16, align 4, !dbg !2279, !tbaa !655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2251, metadata !600), !dbg !2269
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2280
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2281
  ret i8* %19, !dbg !2282
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2283 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2287, metadata !600), !dbg !2291
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2288, metadata !600), !dbg !2292
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2289, metadata !600), !dbg !2293
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2290, metadata !600), !dbg !2294
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2295, metadata !600) #9, !dbg !2305
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2300, metadata !600) #9, !dbg !2307
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2301, metadata !600) #9, !dbg !2308
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2302, metadata !600) #9, !dbg !2309
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2303, metadata !600) #9, !dbg !2310
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2311
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2311
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2312, !tbaa.struct !2134
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2304, metadata !600) #9, !dbg !2313
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !923, metadata !600) #9, !dbg !2314
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !924, metadata !600) #9, !dbg !2316
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !925, metadata !600) #9, !dbg !2317
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !923, metadata !600) #9, !dbg !2314
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !923, metadata !600) #9, !dbg !2314
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2318
  store i32 10, i32* %7, align 8, !dbg !2319, !tbaa !855
  %8 = icmp ne i8* %1, null, !dbg !2320
  %9 = icmp ne i8* %2, null, !dbg !2321
  %10 = and i1 %8, %9, !dbg !2322
  br i1 %10, label %12, label %11, !dbg !2322

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2323
  unreachable, !dbg !2323

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2324
  store i8* %1, i8** %13, align 8, !dbg !2325, !tbaa !941
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2326
  store i8* %2, i8** %14, align 8, !dbg !2327, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2304, metadata !600) #9, !dbg !2313
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2328
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2329
  ret i8* %15, !dbg !2330
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2296 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2295, metadata !600), !dbg !2331
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2300, metadata !600), !dbg !2332
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2301, metadata !600), !dbg !2333
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2302, metadata !600), !dbg !2334
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2303, metadata !600), !dbg !2335
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2336
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2336
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2337, !tbaa.struct !2134
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2304, metadata !600), !dbg !2338
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !923, metadata !600) #9, !dbg !2339
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !924, metadata !600) #9, !dbg !2341
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !925, metadata !600) #9, !dbg !2342
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !923, metadata !600) #9, !dbg !2339
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !923, metadata !600) #9, !dbg !2339
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2343
  store i32 10, i32* %8, align 8, !dbg !2344, !tbaa !855
  %9 = icmp ne i8* %1, null, !dbg !2345
  %10 = icmp ne i8* %2, null, !dbg !2346
  %11 = and i1 %9, %10, !dbg !2347
  br i1 %11, label %13, label %12, !dbg !2347

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2348
  unreachable, !dbg !2348

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2349
  store i8* %1, i8** %14, align 8, !dbg !2350, !tbaa !941
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2351
  store i8* %2, i8** %15, align 8, !dbg !2352, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2304, metadata !600), !dbg !2338
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2353
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2354
  ret i8* %16, !dbg !2355
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2356 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2360, metadata !600), !dbg !2363
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2361, metadata !600), !dbg !2364
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2362, metadata !600), !dbg !2365
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2287, metadata !600) #9, !dbg !2366
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2288, metadata !600) #9, !dbg !2368
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2289, metadata !600) #9, !dbg !2369
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2290, metadata !600) #9, !dbg !2370
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2295, metadata !600) #9, !dbg !2371
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2300, metadata !600) #9, !dbg !2373
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2301, metadata !600) #9, !dbg !2374
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2302, metadata !600) #9, !dbg !2375
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2303, metadata !600) #9, !dbg !2376
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2377
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2377
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2378, !tbaa.struct !2134
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2304, metadata !600) #9, !dbg !2379
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !923, metadata !600) #9, !dbg !2380
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !924, metadata !600) #9, !dbg !2382
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !925, metadata !600) #9, !dbg !2383
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !923, metadata !600) #9, !dbg !2380
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !923, metadata !600) #9, !dbg !2380
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2384
  store i32 10, i32* %6, align 8, !dbg !2385, !tbaa !855
  %7 = icmp ne i8* %0, null, !dbg !2386
  %8 = icmp ne i8* %1, null, !dbg !2387
  %9 = and i1 %7, %8, !dbg !2388
  br i1 %9, label %11, label %10, !dbg !2388

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2389
  unreachable, !dbg !2389

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2390
  store i8* %0, i8** %12, align 8, !dbg !2391, !tbaa !941
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2392
  store i8* %1, i8** %13, align 8, !dbg !2393, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2304, metadata !600) #9, !dbg !2379
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2394
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2395
  ret i8* %14, !dbg !2396
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !2397 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2401, metadata !600), !dbg !2405
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2402, metadata !600), !dbg !2406
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2403, metadata !600), !dbg !2407
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2404, metadata !600), !dbg !2408
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2295, metadata !600) #9, !dbg !2409
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2300, metadata !600) #9, !dbg !2411
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2301, metadata !600) #9, !dbg !2412
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2302, metadata !600) #9, !dbg !2413
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2303, metadata !600) #9, !dbg !2414
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2415
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2415
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !2416, !tbaa.struct !2134
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2304, metadata !600) #9, !dbg !2417
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !923, metadata !600) #9, !dbg !2418
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !924, metadata !600) #9, !dbg !2420
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !925, metadata !600) #9, !dbg !2421
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !923, metadata !600) #9, !dbg !2418
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !923, metadata !600) #9, !dbg !2418
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2422
  store i32 10, i32* %7, align 8, !dbg !2423, !tbaa !855
  %8 = icmp ne i8* %0, null, !dbg !2424
  %9 = icmp ne i8* %1, null, !dbg !2425
  %10 = and i1 %8, %9, !dbg !2426
  br i1 %10, label %12, label %11, !dbg !2426

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2427
  unreachable, !dbg !2427

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2428
  store i8* %0, i8** %13, align 8, !dbg !2429, !tbaa !941
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2430
  store i8* %1, i8** %14, align 8, !dbg !2431, !tbaa !944
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2304, metadata !600) #9, !dbg !2417
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2432
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2433
  ret i8* %15, !dbg !2434
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2435 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2439, metadata !600), !dbg !2442
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2440, metadata !600), !dbg !2443
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2441, metadata !600), !dbg !2444
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2445
  ret i8* %4, !dbg !2446
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !2447 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2451, metadata !600), !dbg !2453
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2452, metadata !600), !dbg !2454
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2439, metadata !600) #9, !dbg !2455
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2440, metadata !600) #9, !dbg !2457
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2441, metadata !600) #9, !dbg !2458
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2459
  ret i8* %3, !dbg !2460
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !2461 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2465, metadata !600), !dbg !2467
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2466, metadata !600), !dbg !2468
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2439, metadata !600) #9, !dbg !2469
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2440, metadata !600) #9, !dbg !2471
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2441, metadata !600) #9, !dbg !2472
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2473
  ret i8* %3, !dbg !2474
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !2475 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2479, metadata !600), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2465, metadata !600) #9, !dbg !2481
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2466, metadata !600) #9, !dbg !2483
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2439, metadata !600) #9, !dbg !2484
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2440, metadata !600) #9, !dbg !2486
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2441, metadata !600) #9, !dbg !2487
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2488
  ret i8* %2, !dbg !2489
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !2490 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2548, metadata !600), !dbg !2554
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2549, metadata !600), !dbg !2555
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2550, metadata !600), !dbg !2556
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2551, metadata !600), !dbg !2557
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2552, metadata !600), !dbg !2558
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2553, metadata !600), !dbg !2559
  %7 = icmp eq i8* %1, null, !dbg !2560
  br i1 %7, label %10, label %8, !dbg !2562

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2563
  br label %12, !dbg !2563

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.67, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2564
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i32 5) #9, !dbg !2565
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !2565
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.69, i64 0, i64 0), i32 5) #9, !dbg !2566
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !2566
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.70, i64 0, i64 0), i32 5) #9, !dbg !2570
  %20 = load i8*, i8** %4, align 8, !dbg !2570, !tbaa !607
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2570
  br label %146, !dbg !2571

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.71, i64 0, i64 0), i32 5) #9, !dbg !2572
  %24 = load i8*, i8** %4, align 8, !dbg !2572, !tbaa !607
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2572
  %26 = load i8*, i8** %25, align 8, !dbg !2572, !tbaa !607
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2572
  br label %146, !dbg !2573

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.72, i64 0, i64 0), i32 5) #9, !dbg !2574
  %30 = load i8*, i8** %4, align 8, !dbg !2574, !tbaa !607
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2574
  %32 = load i8*, i8** %31, align 8, !dbg !2574, !tbaa !607
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2574
  %34 = load i8*, i8** %33, align 8, !dbg !2574, !tbaa !607
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2574
  br label %146, !dbg !2575

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.73, i64 0, i64 0), i32 5) #9, !dbg !2576
  %38 = load i8*, i8** %4, align 8, !dbg !2576, !tbaa !607
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2576
  %40 = load i8*, i8** %39, align 8, !dbg !2576, !tbaa !607
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2576
  %42 = load i8*, i8** %41, align 8, !dbg !2576, !tbaa !607
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2576
  %44 = load i8*, i8** %43, align 8, !dbg !2576, !tbaa !607
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2576
  br label %146, !dbg !2577

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.74, i64 0, i64 0), i32 5) #9, !dbg !2578
  %48 = load i8*, i8** %4, align 8, !dbg !2578, !tbaa !607
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2578
  %50 = load i8*, i8** %49, align 8, !dbg !2578, !tbaa !607
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2578
  %52 = load i8*, i8** %51, align 8, !dbg !2578, !tbaa !607
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2578
  %54 = load i8*, i8** %53, align 8, !dbg !2578, !tbaa !607
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2578
  %56 = load i8*, i8** %55, align 8, !dbg !2578, !tbaa !607
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2578
  br label %146, !dbg !2579

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.75, i64 0, i64 0), i32 5) #9, !dbg !2580
  %60 = load i8*, i8** %4, align 8, !dbg !2580, !tbaa !607
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2580
  %62 = load i8*, i8** %61, align 8, !dbg !2580, !tbaa !607
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2580
  %64 = load i8*, i8** %63, align 8, !dbg !2580, !tbaa !607
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2580
  %66 = load i8*, i8** %65, align 8, !dbg !2580, !tbaa !607
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2580
  %68 = load i8*, i8** %67, align 8, !dbg !2580, !tbaa !607
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2580
  %70 = load i8*, i8** %69, align 8, !dbg !2580, !tbaa !607
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2580
  br label %146, !dbg !2581

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.76, i64 0, i64 0), i32 5) #9, !dbg !2582
  %74 = load i8*, i8** %4, align 8, !dbg !2582, !tbaa !607
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2582
  %76 = load i8*, i8** %75, align 8, !dbg !2582, !tbaa !607
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2582
  %78 = load i8*, i8** %77, align 8, !dbg !2582, !tbaa !607
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2582
  %80 = load i8*, i8** %79, align 8, !dbg !2582, !tbaa !607
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2582
  %82 = load i8*, i8** %81, align 8, !dbg !2582, !tbaa !607
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2582
  %84 = load i8*, i8** %83, align 8, !dbg !2582, !tbaa !607
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2582
  %86 = load i8*, i8** %85, align 8, !dbg !2582, !tbaa !607
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2582
  br label %146, !dbg !2583

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.77, i64 0, i64 0), i32 5) #9, !dbg !2584
  %90 = load i8*, i8** %4, align 8, !dbg !2584, !tbaa !607
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2584
  %92 = load i8*, i8** %91, align 8, !dbg !2584, !tbaa !607
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2584
  %94 = load i8*, i8** %93, align 8, !dbg !2584, !tbaa !607
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2584
  %96 = load i8*, i8** %95, align 8, !dbg !2584, !tbaa !607
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2584
  %98 = load i8*, i8** %97, align 8, !dbg !2584, !tbaa !607
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2584
  %100 = load i8*, i8** %99, align 8, !dbg !2584, !tbaa !607
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2584
  %102 = load i8*, i8** %101, align 8, !dbg !2584, !tbaa !607
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2584
  %104 = load i8*, i8** %103, align 8, !dbg !2584, !tbaa !607
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2584
  br label %146, !dbg !2585

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.78, i64 0, i64 0), i32 5) #9, !dbg !2586
  %108 = load i8*, i8** %4, align 8, !dbg !2586, !tbaa !607
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2586
  %110 = load i8*, i8** %109, align 8, !dbg !2586, !tbaa !607
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2586
  %112 = load i8*, i8** %111, align 8, !dbg !2586, !tbaa !607
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2586
  %114 = load i8*, i8** %113, align 8, !dbg !2586, !tbaa !607
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2586
  %116 = load i8*, i8** %115, align 8, !dbg !2586, !tbaa !607
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2586
  %118 = load i8*, i8** %117, align 8, !dbg !2586, !tbaa !607
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2586
  %120 = load i8*, i8** %119, align 8, !dbg !2586, !tbaa !607
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2586
  %122 = load i8*, i8** %121, align 8, !dbg !2586, !tbaa !607
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2586
  %124 = load i8*, i8** %123, align 8, !dbg !2586, !tbaa !607
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2586
  br label %146, !dbg !2587

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.79, i64 0, i64 0), i32 5) #9, !dbg !2588
  %128 = load i8*, i8** %4, align 8, !dbg !2588, !tbaa !607
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2588
  %130 = load i8*, i8** %129, align 8, !dbg !2588, !tbaa !607
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2588
  %132 = load i8*, i8** %131, align 8, !dbg !2588, !tbaa !607
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2588
  %134 = load i8*, i8** %133, align 8, !dbg !2588, !tbaa !607
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2588
  %136 = load i8*, i8** %135, align 8, !dbg !2588, !tbaa !607
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2588
  %138 = load i8*, i8** %137, align 8, !dbg !2588, !tbaa !607
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2588
  %140 = load i8*, i8** %139, align 8, !dbg !2588, !tbaa !607
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2588
  %142 = load i8*, i8** %141, align 8, !dbg !2588, !tbaa !607
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2588
  %144 = load i8*, i8** %143, align 8, !dbg !2588, !tbaa !607
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2588
  br label %146, !dbg !2589

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2590
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !2591 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2595, metadata !600), !dbg !2601
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2596, metadata !600), !dbg !2602
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2597, metadata !600), !dbg !2603
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2598, metadata !600), !dbg !2604
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !2599, metadata !600), !dbg !2605
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2600, metadata !600), !dbg !2606
  br label %6, !dbg !2607

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2600, metadata !600), !dbg !2606
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2609
  %9 = load i8*, i8** %8, align 8, !dbg !2609, !tbaa !607
  %10 = icmp eq i8* %9, null, !dbg !2611
  %11 = add i64 %7, 1, !dbg !2612
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2600, metadata !600), !dbg !2606
  br i1 %10, label %12, label %6, !dbg !2611, !llvm.loop !2613

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2615
  ret void, !dbg !2616
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !2617 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2628, metadata !600), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2629, metadata !600), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2630, metadata !600), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2631, metadata !600), !dbg !2639
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !2632, metadata !600), !dbg !2640
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2641
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2634, metadata !600), !dbg !2642
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
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
  store i8* %25, i8** %26, align 16, !dbg !2648, !tbaa !607
  %27 = icmp eq i8* %25, null, !dbg !2649
  br i1 %27, label %30, label %28, !dbg !2650

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
  %29 = icmp ult i32 %22, 41, !dbg !2644
  br i1 %29, label %35, label %32, !dbg !2644

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2651
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !2652
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
  store i8* %44, i8** %45, align 8, !dbg !2648, !tbaa !607
  %46 = icmp eq i8* %44, null, !dbg !2649
  br i1 %46, label %30, label %47, !dbg !2650

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
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
  store i8* %61, i8** %62, align 16, !dbg !2648, !tbaa !607
  %63 = icmp eq i8* %61, null, !dbg !2649
  br i1 %63, label %30, label %64, !dbg !2650

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
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
  store i8* %78, i8** %79, align 8, !dbg !2648, !tbaa !607
  %80 = icmp eq i8* %78, null, !dbg !2649
  br i1 %80, label %30, label %81, !dbg !2650

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
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
  store i8* %95, i8** %96, align 16, !dbg !2648, !tbaa !607
  %97 = icmp eq i8* %95, null, !dbg !2649
  br i1 %97, label %30, label %98, !dbg !2650

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
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
  store i8* %111, i8** %112, align 8, !dbg !2648, !tbaa !607
  %113 = icmp eq i8* %111, null, !dbg !2649
  br i1 %113, label %30, label %114, !dbg !2650

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
  %115 = load i8*, i8** %10, align 8, !dbg !2644
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2644
  store i8* %116, i8** %10, align 8, !dbg !2644
  %117 = bitcast i8* %115 to i8**, !dbg !2644
  %118 = load i8*, i8** %117, align 8, !dbg !2644
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2647
  store i8* %118, i8** %119, align 16, !dbg !2648, !tbaa !607
  %120 = icmp eq i8* %118, null, !dbg !2649
  br i1 %120, label %30, label %121, !dbg !2650

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
  %122 = load i8*, i8** %10, align 8, !dbg !2644
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2644
  store i8* %123, i8** %10, align 8, !dbg !2644
  %124 = bitcast i8* %122 to i8**, !dbg !2644
  %125 = load i8*, i8** %124, align 8, !dbg !2644
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2647
  store i8* %125, i8** %126, align 8, !dbg !2648, !tbaa !607
  %127 = icmp eq i8* %125, null, !dbg !2649
  br i1 %127, label %30, label %128, !dbg !2650

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
  %129 = load i8*, i8** %10, align 8, !dbg !2644
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2644
  store i8* %130, i8** %10, align 8, !dbg !2644
  %131 = bitcast i8* %129 to i8**, !dbg !2644
  %132 = load i8*, i8** %131, align 8, !dbg !2644
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2647
  store i8* %132, i8** %133, align 16, !dbg !2648, !tbaa !607
  %134 = icmp eq i8* %132, null, !dbg !2649
  br i1 %134, label %30, label %135, !dbg !2650

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2633, metadata !600), !dbg !2643
  %136 = load i8*, i8** %10, align 8, !dbg !2644
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2644
  store i8* %137, i8** %10, align 8, !dbg !2644
  %138 = bitcast i8* %136 to i8**, !dbg !2644
  %139 = load i8*, i8** %138, align 8, !dbg !2644
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2647
  store i8* %139, i8** %140, align 8, !dbg !2648, !tbaa !607
  %141 = icmp eq i8* %139, null, !dbg !2649
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2633, metadata !600), !dbg !2643
  %142 = select i1 %141, i64 9, i64 10, !dbg !2650
  br label %30, !dbg !2650
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !2653 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !2657, metadata !600), !dbg !2668
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2658, metadata !600), !dbg !2669
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2659, metadata !600), !dbg !2670
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2660, metadata !600), !dbg !2671
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2672
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2672
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2661, metadata !600), !dbg !2673
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2674
  call void @llvm.va_start(i8* nonnull %6), !dbg !2674
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2675
  call void @llvm.va_end(i8* nonnull %6), !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !2677
  ret void, !dbg !2677
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !2678 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.82, i64 0, i64 0), i32 5) #9, !dbg !2679
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.83, i64 0, i64 0)) #9, !dbg !2679
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.84, i64 0, i64 0), i32 5) #9, !dbg !2680
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.85, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.86, i64 0, i64 0)) #9, !dbg !2680
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.87, i64 0, i64 0), i32 5) #9, !dbg !2681
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2681, !tbaa !607
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !2681
  ret void, !dbg !2682
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2683 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2687, metadata !600), !dbg !2689
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2688, metadata !600), !dbg !2690
  %3 = udiv i64 9223372036854775807, %1, !dbg !2691
  %4 = icmp ult i64 %3, %0, !dbg !2691
  br i1 %4, label %5, label %6, !dbg !2693

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2694
  unreachable, !dbg !2694

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2695
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2696, metadata !600) #9, !dbg !2703
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !2705
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2702, metadata !600) #9, !dbg !2706
  %9 = icmp eq i8* %8, null, !dbg !2707
  %10 = icmp ne i64 %7, 0, !dbg !2709
  %11 = and i1 %10, %9, !dbg !2710
  br i1 %11, label %12, label %13, !dbg !2710

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2711
  unreachable, !dbg !2711

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2712
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !2697 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2696, metadata !600), !dbg !2713
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2714
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2702, metadata !600), !dbg !2715
  %3 = icmp eq i8* %2, null, !dbg !2716
  %4 = icmp ne i64 %0, 0, !dbg !2717
  %5 = and i1 %4, %3, !dbg !2718
  br i1 %5, label %6, label %7, !dbg !2718

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2719
  unreachable, !dbg !2719

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2720
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2721 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2725, metadata !600), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2726, metadata !600), !dbg !2729
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2727, metadata !600), !dbg !2730
  %4 = udiv i64 9223372036854775807, %2, !dbg !2731
  %5 = icmp ult i64 %4, %1, !dbg !2731
  br i1 %5, label %6, label %7, !dbg !2733

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2734
  unreachable, !dbg !2734

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2735
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2736, metadata !600) #9, !dbg !2742
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2741, metadata !600) #9, !dbg !2744
  %9 = icmp eq i64 %8, 0, !dbg !2745
  %10 = icmp ne i8* %0, null, !dbg !2747
  %11 = and i1 %10, %9, !dbg !2748
  br i1 %11, label %12, label %13, !dbg !2748

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !2749
  br label %19, !dbg !2751

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !2752
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !2736, metadata !600) #9, !dbg !2742
  %15 = icmp eq i8* %14, null, !dbg !2753
  %16 = icmp ne i64 %8, 0, !dbg !2755
  %17 = and i1 %16, %15, !dbg !2756
  br i1 %17, label %18, label %19, !dbg !2756

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2757
  unreachable, !dbg !2757

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !2758
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !2737 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2736, metadata !600), !dbg !2759
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2741, metadata !600), !dbg !2760
  %3 = icmp eq i64 %1, 0, !dbg !2761
  %4 = icmp ne i8* %0, null, !dbg !2762
  %5 = and i1 %4, %3, !dbg !2763
  br i1 %5, label %6, label %7, !dbg !2763

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !2764
  br label %13, !dbg !2765

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !2766
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2736, metadata !600), !dbg !2759
  %9 = icmp eq i8* %8, null, !dbg !2767
  %10 = icmp ne i64 %1, 0, !dbg !2768
  %11 = and i1 %10, %9, !dbg !2769
  br i1 %11, label %12, label %13, !dbg !2769

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2770
  unreachable, !dbg !2770

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !2771
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !560 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !565, metadata !600), !dbg !2772
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !566, metadata !600), !dbg !2773
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !567, metadata !600), !dbg !2774
  %4 = load i64, i64* %1, align 8, !dbg !2775, !tbaa !1811
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !568, metadata !600), !dbg !2776
  %5 = icmp eq i8* %0, null, !dbg !2777
  br i1 %5, label %6, label %13, !dbg !2779

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2780
  br i1 %7, label %8, label %17, !dbg !2783

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !568, metadata !600), !dbg !2776
  %10 = icmp ugt i64 %2, 128, !dbg !2786
  %11 = zext i1 %10 to i64, !dbg !2786
  %12 = add nuw nsw i64 %9, %11, !dbg !2787
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !568, metadata !600), !dbg !2776
  br label %17, !dbg !2788

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !2789
  %15 = icmp ugt i64 %14, %4, !dbg !2792
  br i1 %15, label %20, label %16, !dbg !2793

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2794
  unreachable, !dbg !2794

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !568, metadata !600), !dbg !2776
  store i64 %18, i64* %1, align 8, !dbg !2795, !tbaa !1811
  %19 = mul i64 %18, %2, !dbg !2796
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2736, metadata !600) #9, !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2741, metadata !600) #9, !dbg !2799
  br label %27, !dbg !2800

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !2801
  %22 = add i64 %4, 1, !dbg !2802
  %23 = add i64 %22, %21, !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !568, metadata !600), !dbg !2776
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !568, metadata !600), !dbg !2776
  store i64 %23, i64* %1, align 8, !dbg !2795, !tbaa !1811
  %24 = mul i64 %23, %2, !dbg !2796
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2736, metadata !600) #9, !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2741, metadata !600) #9, !dbg !2799
  %25 = icmp eq i64 %24, 0, !dbg !2804
  br i1 %25, label %26, label %27, !dbg !2800

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !2805
  br label %34, !dbg !2806

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !2807
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2736, metadata !600) #9, !dbg !2797
  %30 = icmp eq i8* %29, null, !dbg !2808
  %31 = icmp ne i64 %28, 0, !dbg !2809
  %32 = and i1 %31, %30, !dbg !2810
  br i1 %32, label %33, label %34, !dbg !2810

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !2811
  unreachable, !dbg !2811

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !2812
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2813 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2815, metadata !600), !dbg !2816
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2696, metadata !600) #9, !dbg !2817
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2819
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2702, metadata !600) #9, !dbg !2820
  %3 = icmp eq i8* %2, null, !dbg !2821
  %4 = icmp ne i64 %0, 0, !dbg !2822
  %5 = and i1 %4, %3, !dbg !2823
  br i1 %5, label %6, label %7, !dbg !2823

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2824
  unreachable, !dbg !2824

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2825
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !2826 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2830, metadata !600), !dbg !2832
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !2831, metadata !600), !dbg !2833
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !565, metadata !600) #9, !dbg !2834
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !566, metadata !600) #9, !dbg !2836
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !567, metadata !600) #9, !dbg !2837
  %3 = load i64, i64* %1, align 8, !dbg !2838, !tbaa !1811
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !568, metadata !600) #9, !dbg !2839
  %4 = icmp eq i8* %0, null, !dbg !2840
  br i1 %4, label %5, label %8, !dbg !2841

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2842
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !568, metadata !600) #9, !dbg !2839
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !568, metadata !600) #9, !dbg !2839
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2843
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !568, metadata !600) #9, !dbg !2839
  store i64 %7, i64* %1, align 8, !dbg !2844, !tbaa !1811
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2736, metadata !600) #9, !dbg !2845
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2741, metadata !600) #9, !dbg !2847
  br label %17, !dbg !2848

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !2849
  br i1 %9, label %11, label %10, !dbg !2850

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !2851
  unreachable, !dbg !2851

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !2852
  %13 = add i64 %3, 1, !dbg !2853
  %14 = add i64 %13, %12, !dbg !2854
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !568, metadata !600) #9, !dbg !2839
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !568, metadata !600) #9, !dbg !2839
  store i64 %14, i64* %1, align 8, !dbg !2844, !tbaa !1811
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2736, metadata !600) #9, !dbg !2845
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2741, metadata !600) #9, !dbg !2847
  %15 = icmp eq i64 %14, 0, !dbg !2855
  br i1 %15, label %16, label %17, !dbg !2848

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !2856
  br label %24, !dbg !2857

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !2858
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2736, metadata !600) #9, !dbg !2845
  %20 = icmp eq i8* %19, null, !dbg !2859
  %21 = icmp ne i64 %18, 0, !dbg !2860
  %22 = and i1 %21, %20, !dbg !2861
  br i1 %22, label %23, label %24, !dbg !2861

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !2862
  unreachable, !dbg !2862

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !2863
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !2864 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2866, metadata !600), !dbg !2867
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2696, metadata !600) #9, !dbg !2868
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !2870
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2702, metadata !600) #9, !dbg !2871
  %3 = icmp eq i8* %2, null, !dbg !2872
  %4 = icmp ne i64 %0, 0, !dbg !2873
  %5 = and i1 %4, %3, !dbg !2874
  br i1 %5, label %6, label %7, !dbg !2874

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2875
  unreachable, !dbg !2875

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !2876
  ret i8* %2, !dbg !2877
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !2878 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2880, metadata !600), !dbg !2883
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2881, metadata !600), !dbg !2884
  %3 = udiv i64 9223372036854775807, %1, !dbg !2885
  %4 = icmp ult i64 %3, %0, !dbg !2885
  br i1 %4, label %8, label %5, !dbg !2887

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !2888
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2882, metadata !600), !dbg !2889
  %7 = icmp eq i8* %6, null, !dbg !2890
  br i1 %7, label %8, label %9, !dbg !2891

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !2892
  unreachable, !dbg !2892

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !2893
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !2894 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2900, metadata !600), !dbg !2902
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2901, metadata !600), !dbg !2903
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2696, metadata !600) #9, !dbg !2904
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !2906
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2702, metadata !600) #9, !dbg !2907
  %4 = icmp eq i8* %3, null, !dbg !2908
  %5 = icmp ne i64 %1, 0, !dbg !2909
  %6 = and i1 %5, %4, !dbg !2910
  br i1 %6, label %7, label %8, !dbg !2910

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2911
  unreachable, !dbg !2911

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !2912
  ret i8* %3, !dbg !2913
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !2914 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2916, metadata !600), !dbg !2917
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !2918
  %3 = add i64 %2, 1, !dbg !2919
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2900, metadata !600) #9, !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2901, metadata !600) #9, !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2696, metadata !600) #9, !dbg !2923
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !2925
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2702, metadata !600) #9, !dbg !2926
  %5 = icmp eq i8* %4, null, !dbg !2927
  %6 = icmp ne i64 %3, 0, !dbg !2928
  %7 = and i1 %6, %5, !dbg !2929
  br i1 %7, label %8, label %9, !dbg !2929

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2930
  unreachable, !dbg !2930

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !2931
  ret i8* %4, !dbg !2932
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !2933 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2935, !tbaa !655
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.98, i64 0, i64 0), i32 5) #9, !dbg !2936
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), i8* %2) #9, !dbg !2937
  tail call void @abort() #15, !dbg !2938
  unreachable, !dbg !2938
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !2939 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2942, metadata !600), !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2943, metadata !600), !dbg !2949
  %3 = icmp eq i64 %0, 0, !dbg !2950
  %4 = icmp eq i64 %1, 0, !dbg !2951
  %5 = or i1 %3, %4, !dbg !2952
  br i1 %5, label %12, label %6, !dbg !2952

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2953
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2945, metadata !600), !dbg !2954
  %8 = udiv i64 %7, %1, !dbg !2955
  %9 = icmp eq i64 %8, %0, !dbg !2957
  br i1 %9, label %12, label %10, !dbg !2958

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !2959
  store i32 12, i32* %11, align 4, !dbg !2961, !tbaa !655
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2942, metadata !600), !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2943, metadata !600), !dbg !2949
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !2962
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2944, metadata !600), !dbg !2963
  br label %16, !dbg !2964

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !2965
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !2966 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !2983, metadata !600), !dbg !2992
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2984, metadata !600), !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2985, metadata !600), !dbg !2994
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !2986, metadata !600), !dbg !2995
  %6 = bitcast i32* %5 to i8*, !dbg !2996
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !2996
  %7 = icmp eq i32* %0, null, !dbg !2997
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2983, metadata !600), !dbg !2992
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2999
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2983, metadata !600), !dbg !2992
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2987, metadata !600), !dbg !3001
  %10 = icmp ugt i64 %9, -3, !dbg !3002
  %11 = icmp ne i64 %2, 0, !dbg !3003
  %12 = and i1 %11, %10, !dbg !3004
  br i1 %12, label %13, label %18, !dbg !3004

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3005
  br i1 %14, label %18, label %15, !dbg !3006

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3007, !tbaa !712
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !2989, metadata !600), !dbg !3008
  %17 = zext i8 %16 to i32, !dbg !3009
  store i32 %17, i32* %8, align 4, !dbg !3010, !tbaa !655
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !3011
  ret i64 %19, !dbg !3011
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3012 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3057, metadata !600), !dbg !3062
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3063
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3064, metadata !600), !dbg !3068
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3070
  %4 = load i32, i32* %3, align 8, !dbg !3070, !tbaa !3071
  %5 = and i32 %4, 32, !dbg !3070
  %6 = icmp eq i32 %5, 0, !dbg !3073
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3074
  %8 = icmp ne i32 %7, 0, !dbg !3075
  br i1 %6, label %9, label %19, !dbg !3076

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3078
  %11 = xor i1 %8, true, !dbg !3079
  %12 = or i1 %10, %11, !dbg !3079
  %13 = sext i1 %8 to i32, !dbg !3079
  br i1 %12, label %22, label %14, !dbg !3079

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3080
  %16 = load i32, i32* %15, align 4, !dbg !3080, !tbaa !655
  %17 = icmp ne i32 %16, 9, !dbg !3081
  %18 = sext i1 %17 to i32, !dbg !3082
  br label %22, !dbg !3082

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3083

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3085
  store i32 0, i32* %21, align 4, !dbg !3087, !tbaa !655
  br label %22, !dbg !3085

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !3088
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !3089 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3094, metadata !600), !dbg !3097
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3095, metadata !600), !dbg !3098
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3099
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3096, metadata !600), !dbg !3100
  %3 = icmp eq i8* %2, null, !dbg !3101
  br i1 %3, label %11, label %4, !dbg !3103

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i64 0, i64 0)) #14, !dbg !3104
  %6 = icmp eq i32 %5, 0, !dbg !3109
  br i1 %6, label %10, label %7, !dbg !3110

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.109, i64 0, i64 0)) #14, !dbg !3111
  %9 = icmp eq i32 %8, 0, !dbg !3112
  br i1 %9, label %10, label %11, !dbg !3113

; <label>:10:                                     ; preds = %7, %4
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3095, metadata !600), !dbg !3098
  br label %11, !dbg !3114

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3115
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !3116 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !3122, metadata !600), !dbg !3196
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !3189, metadata !600), !dbg !3199
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3200
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3120, metadata !600), !dbg !3201
  %4 = icmp eq i8* %3, null, !dbg !3202
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), i8* %3, !dbg !3204
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3120, metadata !600), !dbg !3201
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !3205, !tbaa !607
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3136, metadata !600) #9, !dbg !3206
  %7 = icmp eq i8* %6, null, !dbg !3207
  br i1 %7, label %8, label %123, !dbg !3208

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.113, i64 0, i64 0)) #9, !dbg !3209
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !3137, metadata !600) #9, !dbg !3210
  %10 = icmp eq i8* %9, null, !dbg !3211
  br i1 %10, label %14, label %11, !dbg !3213

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !3214, !tbaa !712
  %13 = icmp eq i8 %12, 0, !dbg !3215
  br i1 %13, label %14, label %15, !dbg !3216

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !3217

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.114, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !3137, metadata !600) #9, !dbg !3210
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !3140, metadata !600) #9, !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !3142, metadata !600) #9, !dbg !3220
  %18 = icmp eq i64 %17, 0, !dbg !3221
  br i1 %18, label %24, label %19, !dbg !3222

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !3223
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !3223
  %22 = load i8, i8* %21, align 1, !dbg !3223, !tbaa !712
  %23 = icmp ne i8 %22, 47, !dbg !3223
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !3224
  %27 = add i64 %17, 14, !dbg !3225
  %28 = add i64 %27, %26, !dbg !3226
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !3227
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3139, metadata !600) #9, !dbg !3228
  %30 = icmp eq i8* %29, null, !dbg !3229
  br i1 %30, label %121, label %31, !dbg !3229

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !3230
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !3233

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !3234, !tbaa !712
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3236
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.115, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3237
  br label %37, !dbg !3238

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !3236
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.115, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !3237
  br label %37, !dbg !3238

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !3239
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !3144, metadata !600) #9, !dbg !3240
  %39 = icmp slt i32 %38, 0, !dbg !3241
  br i1 %39, label %119, label %40, !dbg !3242

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.116, i64 0, i64 0)) #9, !dbg !3243
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3145, metadata !600) #9, !dbg !3244
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !3245
  br i1 %42, label %43, label %45, !dbg !3246

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @close(i32 %38) #9, !dbg !3247
  br label %119, !dbg !3249

; <label>:45:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3186, metadata !600) #9, !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3187, metadata !600) #9, !dbg !3251
  %46 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %49 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !3252

; <label>:50:                                     ; preds = %102, %45
  %51 = phi i64 [ %97, %102 ], [ 0, %45 ]
  %52 = phi i8* [ %98, %102 ], [ null, %45 ]
  br label %53, !dbg !3253

; <label>:53:                                     ; preds = %101, %50
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3186, metadata !600) #9, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3187, metadata !600) #9, !dbg !3251
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3253
  call void @llvm.lifetime.start.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3255, metadata !600) #9, !dbg !3260
  %54 = load i8*, i8** %48, align 8, !dbg !3262, !tbaa !3263
  %55 = load i8*, i8** %49, align 8, !dbg !3262, !tbaa !3264
  %56 = icmp ult i8* %54, %55, !dbg !3262
  br i1 %56, label %59, label %57, !dbg !3262, !prof !3265

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3262
  br label %63, !dbg !3262

; <label>:59:                                     ; preds = %53
  %60 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !3262
  store i8* %60, i8** %48, align 8, !dbg !3262, !tbaa !3263
  %61 = load i8, i8* %54, align 1, !dbg !3262, !tbaa !712
  %62 = zext i8 %61 to i32, !dbg !3262
  br label %63, !dbg !3262

; <label>:63:                                     ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ], !dbg !3262
  call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !3188, metadata !600) #9, !dbg !3266
  switch i32 %64, label %78 [
    i32 -1, label %112
    i32 32, label %101
    i32 10, label %101
    i32 9, label %101
    i32 35, label %65
  ], !dbg !3267, !llvm.loop !3268

; <label>:65:                                     ; preds = %63
  br label %66, !dbg !3273

; <label>:66:                                     ; preds = %65, %76
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !3255, metadata !600) #9, !dbg !3275
  %67 = load i8*, i8** %48, align 8, !dbg !3273, !tbaa !3263
  %68 = load i8*, i8** %49, align 8, !dbg !3273, !tbaa !3264
  %69 = icmp ult i8* %67, %68, !dbg !3273
  br i1 %69, label %72, label %70, !dbg !3273, !prof !3265

; <label>:70:                                     ; preds = %66
  %71 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !3273
  br label %76, !dbg !3273

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !3273
  store i8* %73, i8** %48, align 8, !dbg !3273, !tbaa !3263
  %74 = load i8, i8* %67, align 1, !dbg !3273, !tbaa !712
  %75 = zext i8 %74 to i32, !dbg !3273
  br label %76, !dbg !3273

; <label>:76:                                     ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ], !dbg !3273
  call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !3188, metadata !600) #9, !dbg !3266
  switch i32 %77, label %66 [
    i32 -1, label %112
    i32 10, label %101
  ], !dbg !3276, !llvm.loop !3277

; <label>:78:                                     ; preds = %63
  %79 = call i32 @ungetc(i32 %64, %struct._IO_FILE* nonnull %41) #9, !dbg !3280
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.117, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #9, !dbg !3281
  %81 = icmp slt i32 %80, 2, !dbg !3283
  br i1 %81, label %112, label %82, !dbg !3284

; <label>:82:                                     ; preds = %78
  %83 = call i64 @strlen(i8* nonnull %46) #14, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !3193, metadata !600) #9, !dbg !3286
  %84 = call i64 @strlen(i8* nonnull %47) #14, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !3194, metadata !600) #9, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3195, metadata !600) #9, !dbg !3289
  %85 = icmp eq i64 %51, 0, !dbg !3290
  %86 = add i64 %83, 1
  %87 = add i64 %86, %84
  %88 = add i64 %87, 1
  br i1 %85, label %89, label %92, !dbg !3292

; <label>:89:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i64 %88, i64 0, metadata !3187, metadata !600) #9, !dbg !3251
  %90 = add i64 %87, 2, !dbg !3293
  %91 = call noalias i8* @malloc(i64 %90) #9, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !3186, metadata !600) #9, !dbg !3250
  br label %96, !dbg !3296

; <label>:92:                                     ; preds = %82
  %93 = add i64 %88, %51, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !3187, metadata !600) #9, !dbg !3251
  %94 = add i64 %93, 1, !dbg !3299
  %95 = call i8* @realloc(i8* %52, i64 %94) #9, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !3186, metadata !600) #9, !dbg !3250
  br label %96

; <label>:96:                                     ; preds = %92, %89
  %97 = phi i64 [ %88, %89 ], [ %93, %92 ]
  %98 = phi i8* [ %91, %89 ], [ %95, %92 ]
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3186, metadata !600) #9, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3187, metadata !600) #9, !dbg !3251
  %99 = icmp eq i8* %98, null, !dbg !3301
  br i1 %99, label %100, label %102, !dbg !3303

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3187, metadata !600) #9, !dbg !3251
  call void @free(i8* %52) #9, !dbg !3304
  br label %112, !dbg !3306

; <label>:101:                                    ; preds = %76, %63, %63, %63
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3307
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3307
  br label %53

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %98, i64 %97, !dbg !3308
  %104 = xor i64 %84, -1, !dbg !3309
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !3309
  %106 = xor i64 %83, -1, !dbg !3310
  %107 = getelementptr inbounds i8, i8* %105, i64 %106, !dbg !3310
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !3311, metadata !600) #9, !dbg !3320
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !3319, metadata !600) #9, !dbg !3320
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %107, i1 false, i1 true) #9, !dbg !3322
  %109 = call i8* @__strcpy_chk(i8* nonnull %107, i8* nonnull %46, i64 %108) #9, !dbg !3323
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !3311, metadata !600) #9, !dbg !3324
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !3319, metadata !600) #9, !dbg !3324
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false, i1 true) #9, !dbg !3326
  %111 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %47, i64 %110) #9, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3186, metadata !600) #9, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !3187, metadata !600) #9, !dbg !3251
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3307
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3307
  br label %50, !dbg !3328, !llvm.loop !3277

; <label>:112:                                    ; preds = %78, %63, %76, %100
  %113 = phi i64 [ 0, %100 ], [ %51, %76 ], [ %51, %63 ], [ %51, %78 ]
  %114 = phi i8* [ null, %100 ], [ %52, %76 ], [ %52, %63 ], [ %52, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %47) #9, !dbg !3307
  call void @llvm.lifetime.end.p0i8(i64 51, i8* nonnull %46) #9, !dbg !3307
  %115 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !3329
  %116 = icmp eq i64 %113, 0, !dbg !3330
  br i1 %116, label %119, label %117, !dbg !3332

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !3333
  store i8 0, i8* %118, align 1, !dbg !3335, !tbaa !712
  br label %119

; <label>:119:                                    ; preds = %117, %112, %43, %37
  %120 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %43 ], [ %114, %117 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %112 ]
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !3136, metadata !600) #9, !dbg !3206
  call void @free(i8* %29) #9, !dbg !3336
  br label %121

; <label>:121:                                    ; preds = %119, %24
  %122 = phi i8* [ %120, %119 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.112, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !3136, metadata !600) #9, !dbg !3206
  store volatile i8* %122, i8** @charset_aliases, align 8, !dbg !3337, !tbaa !607
  br label %123, !dbg !3338

; <label>:123:                                    ; preds = %0, %121
  %124 = phi i8* [ %122, %121 ], [ %6, %0 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3136, metadata !600) #9, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3121, metadata !600), !dbg !3339
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !3121, metadata !600), !dbg !3339
  %125 = load i8, i8* %124, align 1, !dbg !3340, !tbaa !712
  %126 = icmp eq i8 %125, 0, !dbg !3342
  br i1 %126, label %152, label %127, !dbg !3343

; <label>:127:                                    ; preds = %123
  br label %128, !dbg !3344

; <label>:128:                                    ; preds = %127, %143
  %129 = phi i8 [ %150, %143 ], [ %125, %127 ]
  %130 = phi i8* [ %149, %143 ], [ %124, %127 ]
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !3121, metadata !600), !dbg !3339
  %131 = call i32 @strcmp(i8* %5, i8* %130) #14, !dbg !3344
  %132 = icmp eq i32 %131, 0, !dbg !3346
  br i1 %132, label %139, label %133, !dbg !3347

; <label>:133:                                    ; preds = %128
  %134 = icmp eq i8 %129, 42, !dbg !3348
  br i1 %134, label %135, label %143, !dbg !3349

; <label>:135:                                    ; preds = %133
  %136 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !3350
  %137 = load i8, i8* %136, align 1, !dbg !3350, !tbaa !712
  %138 = icmp eq i8 %137, 0, !dbg !3351
  br i1 %138, label %139, label %143, !dbg !3352

; <label>:139:                                    ; preds = %135, %128
  %140 = call i64 @strlen(i8* %130) #14, !dbg !3353
  %141 = getelementptr inbounds i8, i8* %130, i64 %140, !dbg !3355
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !3356
  call void @llvm.dbg.value(metadata i8* %142, i64 0, metadata !3120, metadata !600), !dbg !3201
  br label %152, !dbg !3357

; <label>:143:                                    ; preds = %133, %135
  %144 = call i64 @strlen(i8* %130) #14, !dbg !3358
  %145 = add i64 %144, 1, !dbg !3359
  %146 = getelementptr inbounds i8, i8* %130, i64 %145, !dbg !3360
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !3121, metadata !600), !dbg !3339
  %147 = call i64 @strlen(i8* %146) #14, !dbg !3361
  %148 = add i64 %147, 1, !dbg !3362
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !3363
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3121, metadata !600), !dbg !3339
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !3121, metadata !600), !dbg !3339
  %150 = load i8, i8* %149, align 1, !dbg !3340, !tbaa !712
  %151 = icmp eq i8 %150, 0, !dbg !3342
  br i1 %151, label %152, label %128, !dbg !3343, !llvm.loop !3364

; <label>:152:                                    ; preds = %143, %123, %139
  %153 = phi i8* [ %142, %139 ], [ %5, %123 ], [ %5, %143 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !3120, metadata !600), !dbg !3201
  %154 = load i8, i8* %153, align 1, !dbg !3366, !tbaa !712
  %155 = icmp eq i8 %154, 0, !dbg !3368
  %156 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i64 0, i64 0), i8* %153, !dbg !3369
  call void @llvm.dbg.value(metadata i8* %156, i64 0, metadata !3120, metadata !600), !dbg !3201
  ret i8* %156, !dbg !3370
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !3371 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3416, metadata !600), !dbg !3420
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3417, metadata !600), !dbg !3421
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3419, metadata !600), !dbg !3422
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3423
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3418, metadata !600), !dbg !3424
  %3 = icmp slt i32 %2, 0, !dbg !3425
  br i1 %3, label %4, label %6, !dbg !3427

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3428
  br label %24, !dbg !3429

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3430
  %8 = icmp eq i32 %7, 0, !dbg !3430
  br i1 %8, label %13, label %9, !dbg !3432

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3433
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3434
  %12 = icmp eq i64 %11, -1, !dbg !3435
  br i1 %12, label %16, label %13, !dbg !3436

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3437
  %15 = icmp eq i32 %14, 0, !dbg !3437
  br i1 %15, label %16, label %18, !dbg !3438

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3417, metadata !600), !dbg !3421
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3439
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3419, metadata !600), !dbg !3422
  br label %24, !dbg !3440

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3441
  %20 = load i32, i32* %19, align 4, !dbg !3441, !tbaa !655
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3417, metadata !600), !dbg !3421
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !3417, metadata !600), !dbg !3421
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3439
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !3419, metadata !600), !dbg !3422
  %22 = icmp eq i32 %20, 0, !dbg !3442
  br i1 %22, label %24, label %23, !dbg !3440

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3444, !tbaa !655
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3419, metadata !600), !dbg !3422
  br label %24, !dbg !3446

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !3447
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !3448 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3493, metadata !600), !dbg !3494
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3495
  br i1 %2, label %6, label %3, !dbg !3497

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3498
  %5 = icmp eq i32 %4, 0, !dbg !3498
  br i1 %5, label %6, label %8, !dbg !3499

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3500
  br label %17, !dbg !3501

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3502, metadata !600) #9, !dbg !3507
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3509
  %10 = load i32, i32* %9, align 8, !dbg !3509, !tbaa !3071
  %11 = and i32 %10, 256, !dbg !3511
  %12 = icmp eq i32 %11, 0, !dbg !3511
  br i1 %12, label %15, label %13, !dbg !3512

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3513
  br label %15, !dbg !3513

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3514
  br label %17, !dbg !3515

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !3516
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !3517 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3563, metadata !600), !dbg !3569
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3564, metadata !600), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3565, metadata !600), !dbg !3571
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3572
  %5 = load i8*, i8** %4, align 8, !dbg !3572, !tbaa !3264
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3573
  %7 = load i8*, i8** %6, align 8, !dbg !3573, !tbaa !3263
  %8 = icmp eq i8* %5, %7, !dbg !3574
  br i1 %8, label %9, label %28, !dbg !3575

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3576
  %11 = load i8*, i8** %10, align 8, !dbg !3576, !tbaa !3577
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3578
  %13 = load i8*, i8** %12, align 8, !dbg !3578, !tbaa !3579
  %14 = icmp eq i8* %11, %13, !dbg !3580
  br i1 %14, label %15, label %28, !dbg !3581

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3582
  %17 = load i8*, i8** %16, align 8, !dbg !3582, !tbaa !3583
  %18 = icmp eq i8* %17, null, !dbg !3584
  br i1 %18, label %19, label %28, !dbg !3585

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3586
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3587
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !3566, metadata !600), !dbg !3588
  %22 = icmp eq i64 %21, -1, !dbg !3589
  br i1 %22, label %30, label %23, !dbg !3591

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3592
  %25 = load i32, i32* %24, align 8, !dbg !3593, !tbaa !3071
  %26 = and i32 %25, -17, !dbg !3593
  store i32 %26, i32* %24, align 8, !dbg !3593, !tbaa !3071
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3594
  store i64 %21, i64* %27, align 8, !dbg !3595, !tbaa !3596
  br label %30, !dbg !3597

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3598
  br label %30, !dbg !3599

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !3600
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

!llvm.dbg.cu = !{!2, !76, !82, !90, !97, !104, !547, !191, !555, !572, !574, !576, !579, !581, !200, !583, !585, !587}
!llvm.ident = !{!589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589}
!llvm.module.flags = !{!590, !591, !592, !593, !594}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 36, type: !62, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !16)
!3 = !DIFile(filename: "src/env.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, size: 32, elements: !7)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!9 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!10 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!11 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{!17, !41, !0}
!17 = !DIGlobalVariableExpression(var: !18)
!18 = distinct !DIGlobalVariable(name: "dummy_environ", scope: !19, file: !3, line: 118, type: !38, isLocal: true, isDefinition: true)
!19 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 79, type: !20, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !24)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !22, !23}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!24 = !{!25, !26, !27, !28, !30, !31, !32, !37}
!25 = !DILocalVariable(name: "argc", arg: 1, scope: !19, file: !3, line: 79, type: !22)
!26 = !DILocalVariable(name: "argv", arg: 2, scope: !19, file: !3, line: 79, type: !23)
!27 = !DILocalVariable(name: "optc", scope: !19, file: !3, line: 81, type: !22)
!28 = !DILocalVariable(name: "ignore_environment", scope: !19, file: !3, line: 82, type: !29)
!29 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!30 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !19, file: !3, line: 83, type: !29)
!31 = !DILocalVariable(name: "eq", scope: !19, file: !3, line: 130, type: !13)
!32 = !DILocalVariable(name: "e", scope: !33, file: !3, line: 145, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !3, line: 144, column: 5)
!34 = distinct !DILexicalBlock(scope: !19, file: !3, line: 143, column: 7)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!37 = !DILocalVariable(name: "exit_status", scope: !19, file: !3, line: 159, type: !22)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 1)
!41 = !DIGlobalVariableExpression(var: !42)
!42 = distinct !DIGlobalVariable(name: "infomap", scope: !43, file: !6, line: 632, type: !59, isLocal: true, isDefinition: true)
!43 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !44, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !48)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!48 = !{!49, !50, !51, !58}
!49 = !DILocalVariable(name: "program", arg: 1, scope: !43, file: !6, line: 630, type: !46)
!50 = !DILocalVariable(name: "node", scope: !43, file: !6, line: 642, type: !46)
!51 = !DILocalVariable(name: "map_prog", scope: !43, file: !6, line: 643, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !43, file: !6, line: 632, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !54, file: !6, line: 632, baseType: !46, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !54, file: !6, line: 632, baseType: !46, size: 64, offset: 64)
!58 = !DILocalVariable(name: "lc_messages", scope: !43, file: !6, line: 655, type: !46)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 896, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 7)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 1536, elements: !72)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !65, line: 50, size: 256, elements: !66)
!65 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!66 = !{!67, !68, !69, !71}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !65, line: 52, baseType: !46, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !64, file: !65, line: 55, baseType: !22, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !64, file: !65, line: 56, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !64, file: !65, line: 57, baseType: !22, size: 32, offset: 192)
!72 = !{!73}
!73 = !DISubrange(count: 6)
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "Version", scope: !76, file: !77, line: 2, type: !46, isLocal: false, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, globals: !79)
!77 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!78 = !{}
!79 = !{!74}
!80 = !DIGlobalVariableExpression(var: !81)
!81 = distinct !DIGlobalVariable(name: "file_name", scope: !82, file: !87, line: 36, type: !46, isLocal: true, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, globals: !84)
!83 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!84 = !{!80, !85}
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !82, file: !87, line: 46, type: !29, isLocal: true, isDefinition: true)
!87 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "exit_failure", scope: !90, file: !93, line: 24, type: !94, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, globals: !92)
!91 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !{!88}
!93 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!94 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "program_name", scope: !97, file: !101, line: 33, type: !46, isLocal: false, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !99, globals: !100)
!98 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !{!15, !13}
!100 = !{!95}
!101 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !104, file: !149, line: 77, type: !185, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !141, globals: !146)
!105 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{!107, !121, !126}
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !108, line: 32, size: 32, elements: !109)
!108 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!110 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!111 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!112 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!113 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!114 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!115 = !DIEnumerator(name: "c_quoting_style", value: 5)
!116 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!117 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!118 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!119 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!120 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !108, line: 242, size: 32, elements: !122)
!122 = !{!123, !124, !125}
!123 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!124 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!125 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !127, line: 46, size: 32, elements: !128)
!127 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!129 = !DIEnumerator(name: "_ISupper", value: 256)
!130 = !DIEnumerator(name: "_ISlower", value: 512)
!131 = !DIEnumerator(name: "_ISalpha", value: 1024)
!132 = !DIEnumerator(name: "_ISdigit", value: 2048)
!133 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!134 = !DIEnumerator(name: "_ISspace", value: 8192)
!135 = !DIEnumerator(name: "_ISprint", value: 16384)
!136 = !DIEnumerator(name: "_ISgraph", value: 32768)
!137 = !DIEnumerator(name: "_ISblank", value: 1)
!138 = !DIEnumerator(name: "_IScntrl", value: 2)
!139 = !DIEnumerator(name: "_ISpunct", value: 4)
!140 = !DIEnumerator(name: "_ISalnum", value: 8)
!141 = !{!22, !142, !143, !13}
!142 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 62, baseType: !145)
!144 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!145 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!146 = !{!102, !147, !154, !167, !169, !174, !181, !183}
!147 = !DIGlobalVariableExpression(var: !148)
!148 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !104, file: !149, line: 93, type: !150, isLocal: false, isDefinition: true)
!149 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 320, elements: !152)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!152 = !{!153}
!153 = !DISubrange(count: 10)
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !104, file: !149, line: 1043, type: !156, isLocal: false, isDefinition: true)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !149, line: 57, size: 448, elements: !157)
!157 = !{!158, !159, !160, !165, !166}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !156, file: !149, line: 60, baseType: !107, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !149, line: 63, baseType: !22, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !156, file: !149, line: 67, baseType: !161, size: 256, offset: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !163)
!162 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!163 = !{!164}
!164 = !DISubrange(count: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !156, file: !149, line: 70, baseType: !46, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !156, file: !149, line: 73, baseType: !46, size: 64, offset: 384)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !104, file: !149, line: 108, type: !156, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "slot0", scope: !104, file: !149, line: 834, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 256)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "slotvec", scope: !104, file: !149, line: 837, type: !176, isLocal: true, isDefinition: true)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !149, line: 826, size: 128, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !177, file: !149, line: 828, baseType: !143, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !177, file: !149, line: 829, baseType: !13, size: 64, offset: 64)
!181 = !DIGlobalVariableExpression(var: !182)
!182 = distinct !DIGlobalVariable(name: "nslots", scope: !104, file: !149, line: 835, type: !22, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "slotvec0", scope: !104, file: !149, line: 836, type: !177, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 704, elements: !187)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!187 = !{!188}
!188 = !DISubrange(count: 11)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !191, file: !194, line: 26, type: !195, isLocal: false, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, globals: !193)
!192 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!193 = !{!189}
!194 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 376, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 47)
!198 = !DIGlobalVariableExpression(var: !199)
!199 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !200, file: !545, line: 120, type: !546, isLocal: true, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !202, retainedTypes: !541, globals: !544)
!201 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!202 = !{!203}
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !204, line: 41, size: 32, elements: !205)
!204 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!206 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!207 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!208 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!209 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!210 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!211 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!212 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!213 = !DIEnumerator(name: "DAY_1", value: 131079)
!214 = !DIEnumerator(name: "DAY_2", value: 131080)
!215 = !DIEnumerator(name: "DAY_3", value: 131081)
!216 = !DIEnumerator(name: "DAY_4", value: 131082)
!217 = !DIEnumerator(name: "DAY_5", value: 131083)
!218 = !DIEnumerator(name: "DAY_6", value: 131084)
!219 = !DIEnumerator(name: "DAY_7", value: 131085)
!220 = !DIEnumerator(name: "ABMON_1", value: 131086)
!221 = !DIEnumerator(name: "ABMON_2", value: 131087)
!222 = !DIEnumerator(name: "ABMON_3", value: 131088)
!223 = !DIEnumerator(name: "ABMON_4", value: 131089)
!224 = !DIEnumerator(name: "ABMON_5", value: 131090)
!225 = !DIEnumerator(name: "ABMON_6", value: 131091)
!226 = !DIEnumerator(name: "ABMON_7", value: 131092)
!227 = !DIEnumerator(name: "ABMON_8", value: 131093)
!228 = !DIEnumerator(name: "ABMON_9", value: 131094)
!229 = !DIEnumerator(name: "ABMON_10", value: 131095)
!230 = !DIEnumerator(name: "ABMON_11", value: 131096)
!231 = !DIEnumerator(name: "ABMON_12", value: 131097)
!232 = !DIEnumerator(name: "MON_1", value: 131098)
!233 = !DIEnumerator(name: "MON_2", value: 131099)
!234 = !DIEnumerator(name: "MON_3", value: 131100)
!235 = !DIEnumerator(name: "MON_4", value: 131101)
!236 = !DIEnumerator(name: "MON_5", value: 131102)
!237 = !DIEnumerator(name: "MON_6", value: 131103)
!238 = !DIEnumerator(name: "MON_7", value: 131104)
!239 = !DIEnumerator(name: "MON_8", value: 131105)
!240 = !DIEnumerator(name: "MON_9", value: 131106)
!241 = !DIEnumerator(name: "MON_10", value: 131107)
!242 = !DIEnumerator(name: "MON_11", value: 131108)
!243 = !DIEnumerator(name: "MON_12", value: 131109)
!244 = !DIEnumerator(name: "AM_STR", value: 131110)
!245 = !DIEnumerator(name: "PM_STR", value: 131111)
!246 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!247 = !DIEnumerator(name: "D_FMT", value: 131113)
!248 = !DIEnumerator(name: "T_FMT", value: 131114)
!249 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!250 = !DIEnumerator(name: "ERA", value: 131116)
!251 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!252 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!253 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!254 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!255 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!256 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!257 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!258 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!259 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!260 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!261 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!262 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!263 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!264 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!265 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!266 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!267 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!268 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!269 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!270 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!271 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!272 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!273 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!274 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!275 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!276 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!277 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!278 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!279 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!280 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!281 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!282 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!283 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!284 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!285 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!286 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!287 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!288 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!289 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!290 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!291 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!292 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!293 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!294 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!295 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!296 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!297 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!298 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!299 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!300 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!301 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!302 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!303 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!304 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!305 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!306 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!307 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!308 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!309 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!310 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!311 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!312 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!313 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!314 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!315 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!316 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!317 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!318 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!319 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!320 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!321 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!322 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!323 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!324 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!325 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!326 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!327 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!328 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!329 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!330 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!331 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!332 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!333 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!334 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!335 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!336 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!337 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!338 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!339 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!340 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!341 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!342 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!343 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!344 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!345 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!346 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!347 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!348 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!349 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!350 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!351 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!352 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!353 = !DIEnumerator(name: "CODESET", value: 14)
!354 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!355 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!356 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!357 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!401 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!402 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!403 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!404 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!405 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!406 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!407 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!408 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!409 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!410 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!425 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!426 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!427 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!428 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!429 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!430 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!431 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!432 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!433 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!434 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!435 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!436 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!437 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!438 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!439 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!440 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!441 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!442 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!443 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!444 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!445 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!446 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!447 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!464 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!465 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!468 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!469 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!470 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!471 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!472 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!473 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!474 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!475 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!476 = !DIEnumerator(name: "THOUSEP", value: 65537)
!477 = !DIEnumerator(name: "__GROUPING", value: 65538)
!478 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!479 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!480 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!481 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!482 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!483 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!484 = !DIEnumerator(name: "__YESSTR", value: 327682)
!485 = !DIEnumerator(name: "__NOSTR", value: 327683)
!486 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!487 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!488 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!489 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!490 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!491 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!492 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!493 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!494 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!495 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!496 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!497 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!498 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!499 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!500 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!501 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!502 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!503 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!504 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!505 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!506 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!507 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!508 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!509 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!510 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!511 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!512 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!513 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!514 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!515 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!516 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!517 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!518 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!519 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!520 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!521 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!522 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!539 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!540 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!541 = !{!15, !13, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!544 = !{!198}
!545 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!546 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !549, retainedTypes: !554)
!548 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!549 = !{!550}
!550 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !551, line: 41, size: 32, elements: !552)
!551 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!552 = !{!553}
!553 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!554 = !{!15}
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !557, retainedTypes: !571)
!556 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = !{!558}
!558 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !560, file: !559, line: 192, size: 32, elements: !569)
!559 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = distinct !DISubprogram(name: "x2nrealloc", scope: !559, file: !559, line: 180, type: !561, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !564)
!561 = !DISubroutineType(types: !562)
!562 = !{!15, !15, !563, !143}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!564 = !{!565, !566, !567, !568}
!565 = !DILocalVariable(name: "p", arg: 1, scope: !560, file: !559, line: 180, type: !15)
!566 = !DILocalVariable(name: "pn", arg: 2, scope: !560, file: !559, line: 180, type: !563)
!567 = !DILocalVariable(name: "s", arg: 3, scope: !560, file: !559, line: 180, type: !143)
!568 = !DILocalVariable(name: "n", scope: !560, file: !559, line: 182, type: !143)
!569 = !{!570}
!570 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!571 = !{!143, !13, !15}
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78)
!573 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = distinct !DICompileUnit(language: DW_LANG_C99, file: !575, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !554)
!575 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !578)
!577 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = !{!143}
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78)
!580 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78)
!582 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78)
!584 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !554)
!586 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 5.0.1 (tags/RELEASE_501/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !554)
!588 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!589 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!590 = !{i32 2, !"Dwarf Version", i32 4}
!591 = !{i32 2, !"Debug Info Version", i32 3}
!592 = !{i32 1, !"wchar_size", i32 4}
!593 = !{i32 7, !"PIC Level", i32 2}
!594 = !{i32 7, !"PIE Level", i32 2}
!595 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 47, type: !596, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !22}
!598 = !{!599}
!599 = !DILocalVariable(name: "status", arg: 1, scope: !595, file: !3, line: 47, type: !22)
!600 = !DIExpression()
!601 = !DILocation(line: 47, column: 12, scope: !595)
!602 = !DILocation(line: 49, column: 14, scope: !603)
!603 = distinct !DILexicalBlock(scope: !595, file: !3, line: 49, column: 7)
!604 = !DILocation(line: 49, column: 7, scope: !595)
!605 = !DILocation(line: 50, column: 5, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !3, line: 50, column: 5)
!607 = !{!608, !608, i64 0}
!608 = !{!"any pointer", !609, i64 0}
!609 = !{!"omnipotent char", !610, i64 0}
!610 = !{!"Simple C/C++ TBAA"}
!611 = !DILocation(line: 53, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !603, file: !3, line: 52, column: 5)
!613 = !DILocation(line: 56, column: 7, scope: !612)
!614 = !DILocation(line: 587, column: 3, scope: !615, inlinedAt: !618)
!615 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !616, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !78)
!616 = !DISubroutineType(types: !617)
!617 = !{null}
!618 = distinct !DILocation(line: 60, column: 7, scope: !612)
!619 = !DILocation(line: 62, column: 7, scope: !612)
!620 = !DILocation(line: 67, column: 7, scope: !612)
!621 = !DILocation(line: 68, column: 7, scope: !612)
!622 = !DILocation(line: 69, column: 7, scope: !612)
!623 = !DILocation(line: 642, column: 15, scope: !43, inlinedAt: !624)
!624 = distinct !DILocation(line: 73, column: 7, scope: !612)
!625 = !DILocation(line: 651, column: 3, scope: !43, inlinedAt: !624)
!626 = !DILocation(line: 655, column: 29, scope: !43, inlinedAt: !624)
!627 = !DILocation(line: 655, column: 15, scope: !43, inlinedAt: !624)
!628 = !DILocation(line: 656, column: 7, scope: !629, inlinedAt: !624)
!629 = distinct !DILexicalBlock(scope: !43, file: !6, line: 656, column: 7)
!630 = !DILocation(line: 656, column: 19, scope: !629, inlinedAt: !624)
!631 = !DILocation(line: 656, column: 22, scope: !629, inlinedAt: !624)
!632 = !DILocation(line: 656, column: 7, scope: !43, inlinedAt: !624)
!633 = !DILocation(line: 662, column: 7, scope: !634, inlinedAt: !624)
!634 = distinct !DILexicalBlock(scope: !629, file: !6, line: 657, column: 5)
!635 = !DILocation(line: 664, column: 5, scope: !634, inlinedAt: !624)
!636 = !DILocation(line: 665, column: 3, scope: !43, inlinedAt: !624)
!637 = !DILocation(line: 667, column: 3, scope: !43, inlinedAt: !624)
!638 = !DILocation(line: 75, column: 3, scope: !595)
!639 = !DILocation(line: 79, column: 11, scope: !19)
!640 = !DILocation(line: 79, column: 24, scope: !19)
!641 = !DILocation(line: 82, column: 8, scope: !19)
!642 = !DILocation(line: 83, column: 8, scope: !19)
!643 = !DILocation(line: 86, column: 21, scope: !19)
!644 = !DILocation(line: 86, column: 3, scope: !19)
!645 = !DILocation(line: 87, column: 3, scope: !19)
!646 = !DILocation(line: 88, column: 3, scope: !19)
!647 = !DILocation(line: 89, column: 3, scope: !19)
!648 = !DILocalVariable(name: "status", arg: 1, scope: !649, file: !6, line: 99, type: !22)
!649 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !596, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !650)
!650 = !{!648}
!651 = !DILocation(line: 99, column: 30, scope: !649, inlinedAt: !652)
!652 = distinct !DILocation(line: 91, column: 3, scope: !19)
!653 = !DILocation(line: 102, column: 18, scope: !654, inlinedAt: !652)
!654 = distinct !DILexicalBlock(scope: !649, file: !6, line: 101, column: 7)
!655 = !{!656, !656, i64 0}
!656 = !{!"int", !609, i64 0}
!657 = !DILocation(line: 92, column: 3, scope: !19)
!658 = !DILocation(line: 94, column: 3, scope: !19)
!659 = !DILocation(line: 94, column: 18, scope: !19)
!660 = !DILocation(line: 81, column: 7, scope: !19)
!661 = distinct !{!661, !658, !662}
!662 = !DILocation(line: 111, column: 5, scope: !19)
!663 = !DILocation(line: 100, column: 11, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 97, column: 9)
!665 = distinct !DILexicalBlock(scope: !19, file: !3, line: 95, column: 5)
!666 = !DILocation(line: 105, column: 11, scope: !664)
!667 = !DILocation(line: 106, column: 9, scope: !664)
!668 = !DILocation(line: 107, column: 9, scope: !664)
!669 = !DILocation(line: 109, column: 11, scope: !664)
!670 = !DILocation(line: 113, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !19, file: !3, line: 113, column: 7)
!672 = !DILocation(line: 113, column: 14, scope: !671)
!673 = !DILocation(line: 113, column: 21, scope: !671)
!674 = !DILocation(line: 113, column: 24, scope: !671)
!675 = !DILocation(line: 113, column: 7, scope: !19)
!676 = !DILocation(line: 116, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !19, file: !3, line: 116, column: 7)
!678 = !DILocation(line: 116, column: 7, scope: !19)
!679 = !DILocation(line: 119, column: 15, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !3, line: 117, column: 5)
!681 = !DILocation(line: 120, column: 5, scope: !680)
!682 = !DILocation(line: 122, column: 10, scope: !19)
!683 = !DILocation(line: 123, column: 3, scope: !19)
!684 = !DILocation(line: 123, column: 18, scope: !19)
!685 = distinct !{!685, !683, !686}
!686 = !DILocation(line: 125, column: 7, scope: !19)
!687 = !DILocation(line: 124, column: 34, scope: !688)
!688 = distinct !DILexicalBlock(scope: !19, file: !3, line: 124, column: 9)
!689 = !DILocation(line: 124, column: 24, scope: !688)
!690 = !DILocation(line: 124, column: 9, scope: !19)
!691 = !DILocation(line: 125, column: 7, scope: !688)
!692 = !DILocation(line: 127, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !19, file: !3, line: 127, column: 7)
!694 = !DILocation(line: 127, column: 14, scope: !693)
!695 = !DILocation(line: 127, column: 21, scope: !693)
!696 = !DILocation(line: 127, column: 24, scope: !693)
!697 = !DILocation(line: 127, column: 7, scope: !19)
!698 = !DILocation(line: 128, column: 5, scope: !693)
!699 = !DILocation(line: 131, column: 10, scope: !19)
!700 = !DILocation(line: 131, column: 17, scope: !19)
!701 = !DILocation(line: 131, column: 24, scope: !19)
!702 = !DILocation(line: 131, column: 41, scope: !19)
!703 = !DILocation(line: 131, column: 33, scope: !19)
!704 = !DILocation(line: 130, column: 9, scope: !19)
!705 = !DILocation(line: 131, column: 3, scope: !19)
!706 = !DILocation(line: 133, column: 11, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 133, column: 11)
!708 = distinct !DILexicalBlock(scope: !19, file: !3, line: 132, column: 5)
!709 = !DILocation(line: 133, column: 11, scope: !708)
!710 = !DILocation(line: 135, column: 15, scope: !711)
!711 = distinct !DILexicalBlock(scope: !707, file: !3, line: 134, column: 9)
!712 = !{!609, !609, i64 0}
!713 = !DILocation(line: 136, column: 11, scope: !711)
!714 = !DILocation(line: 139, column: 13, scope: !708)
!715 = distinct !{!715, !705, !716}
!716 = !DILocation(line: 140, column: 5, scope: !19)
!717 = !DILocation(line: 145, column: 24, scope: !33)
!718 = !DILocation(line: 145, column: 20, scope: !33)
!719 = !DILocation(line: 146, column: 14, scope: !33)
!720 = !DILocation(line: 146, column: 7, scope: !33)
!721 = !DILocation(line: 147, column: 9, scope: !33)
!722 = distinct !{!722, !720, !721}
!723 = !DILocation(line: 151, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !19, file: !3, line: 151, column: 7)
!725 = !DILocation(line: 151, column: 7, scope: !19)
!726 = !DILocation(line: 153, column: 17, scope: !727)
!727 = distinct !DILexicalBlock(scope: !724, file: !3, line: 152, column: 5)
!728 = !DILocation(line: 153, column: 24, scope: !727)
!729 = !DILocation(line: 153, column: 7, scope: !727)
!730 = !DILocation(line: 154, column: 7, scope: !727)
!731 = !DILocation(line: 157, column: 3, scope: !19)
!732 = !DILocation(line: 159, column: 21, scope: !19)
!733 = !DILocation(line: 159, column: 27, scope: !19)
!734 = !DILocation(line: 159, column: 7, scope: !19)
!735 = !DILocation(line: 160, column: 38, scope: !19)
!736 = !DILocation(line: 160, column: 33, scope: !19)
!737 = !DILocation(line: 160, column: 26, scope: !19)
!738 = !DILocation(line: 160, column: 3, scope: !19)
!739 = !DILocation(line: 162, column: 1, scope: !19)
!740 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !87, file: !87, line: 41, type: !44, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !741)
!741 = !{!742}
!742 = !DILocalVariable(name: "file", arg: 1, scope: !740, file: !87, line: 41, type: !46)
!743 = !DILocation(line: 41, column: 41, scope: !740)
!744 = !DILocation(line: 43, column: 13, scope: !740)
!745 = !DILocation(line: 44, column: 1, scope: !740)
!746 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !87, file: !87, line: 78, type: !747, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !29}
!749 = !{!750}
!750 = !DILocalVariable(name: "ignore", arg: 1, scope: !746, file: !87, line: 78, type: !29)
!751 = !DILocation(line: 78, column: 37, scope: !746)
!752 = !DILocation(line: 80, column: 16, scope: !746)
!753 = !{!754, !754, i64 0}
!754 = !{!"_Bool", !609, i64 0}
!755 = !DILocation(line: 81, column: 1, scope: !746)
!756 = distinct !DISubprogram(name: "close_stdout", scope: !87, file: !87, line: 107, type: !616, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !82, variables: !757)
!757 = !{!758}
!758 = !DILocalVariable(name: "write_error", scope: !759, file: !87, line: 112, type: !46)
!759 = distinct !DILexicalBlock(scope: !760, file: !87, line: 111, column: 5)
!760 = distinct !DILexicalBlock(scope: !756, file: !87, line: 109, column: 7)
!761 = !DILocation(line: 109, column: 21, scope: !760)
!762 = !DILocation(line: 109, column: 7, scope: !760)
!763 = !DILocation(line: 109, column: 29, scope: !760)
!764 = !DILocation(line: 110, column: 7, scope: !760)
!765 = !DILocation(line: 110, column: 12, scope: !760)
!766 = !{i8 0, i8 2}
!767 = !DILocation(line: 114, column: 19, scope: !768)
!768 = distinct !DILexicalBlock(scope: !759, file: !87, line: 113, column: 11)
!769 = !DILocation(line: 110, column: 25, scope: !760)
!770 = !DILocation(line: 110, column: 28, scope: !760)
!771 = !DILocation(line: 110, column: 34, scope: !760)
!772 = !DILocation(line: 109, column: 7, scope: !756)
!773 = !DILocation(line: 112, column: 33, scope: !759)
!774 = !DILocation(line: 112, column: 19, scope: !759)
!775 = !DILocation(line: 113, column: 11, scope: !768)
!776 = !DILocation(line: 113, column: 11, scope: !759)
!777 = !DILocation(line: 114, column: 36, scope: !768)
!778 = !DILocation(line: 114, column: 9, scope: !768)
!779 = !DILocation(line: 117, column: 9, scope: !768)
!780 = !DILocation(line: 119, column: 14, scope: !759)
!781 = !DILocation(line: 119, column: 7, scope: !759)
!782 = !DILocation(line: 122, column: 22, scope: !783)
!783 = distinct !DILexicalBlock(scope: !756, file: !87, line: 122, column: 8)
!784 = !DILocation(line: 122, column: 8, scope: !783)
!785 = !DILocation(line: 122, column: 30, scope: !783)
!786 = !DILocation(line: 122, column: 8, scope: !756)
!787 = !DILocation(line: 123, column: 13, scope: !783)
!788 = !DILocation(line: 123, column: 6, scope: !783)
!789 = !DILocation(line: 124, column: 1, scope: !756)
!790 = distinct !DISubprogram(name: "set_program_name", scope: !101, file: !101, line: 39, type: !44, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !791)
!791 = !{!792, !793, !794}
!792 = !DILocalVariable(name: "argv0", arg: 1, scope: !790, file: !101, line: 39, type: !46)
!793 = !DILocalVariable(name: "slash", scope: !790, file: !101, line: 46, type: !46)
!794 = !DILocalVariable(name: "base", scope: !790, file: !101, line: 47, type: !46)
!795 = !DILocation(line: 39, column: 31, scope: !790)
!796 = !DILocation(line: 51, column: 13, scope: !797)
!797 = distinct !DILexicalBlock(scope: !790, file: !101, line: 51, column: 7)
!798 = !DILocation(line: 51, column: 7, scope: !790)
!799 = !DILocation(line: 55, column: 14, scope: !800)
!800 = distinct !DILexicalBlock(scope: !797, file: !101, line: 52, column: 5)
!801 = !DILocation(line: 54, column: 7, scope: !800)
!802 = !DILocation(line: 56, column: 7, scope: !800)
!803 = !DILocation(line: 59, column: 11, scope: !790)
!804 = !DILocation(line: 46, column: 15, scope: !790)
!805 = !DILocation(line: 60, column: 17, scope: !790)
!806 = !DILocation(line: 60, column: 33, scope: !790)
!807 = !DILocation(line: 60, column: 11, scope: !790)
!808 = !DILocation(line: 47, column: 15, scope: !790)
!809 = !DILocation(line: 61, column: 12, scope: !810)
!810 = distinct !DILexicalBlock(scope: !790, file: !101, line: 61, column: 7)
!811 = !DILocation(line: 61, column: 20, scope: !810)
!812 = !DILocation(line: 61, column: 25, scope: !810)
!813 = !DILocation(line: 61, column: 42, scope: !810)
!814 = !DILocation(line: 61, column: 28, scope: !810)
!815 = !DILocation(line: 61, column: 61, scope: !810)
!816 = !DILocation(line: 61, column: 7, scope: !790)
!817 = !DILocation(line: 64, column: 11, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !101, line: 64, column: 11)
!819 = distinct !DILexicalBlock(scope: !810, file: !101, line: 62, column: 5)
!820 = !DILocation(line: 64, column: 36, scope: !818)
!821 = !DILocation(line: 64, column: 11, scope: !819)
!822 = !DILocation(line: 66, column: 24, scope: !823)
!823 = distinct !DILexicalBlock(scope: !818, file: !101, line: 65, column: 9)
!824 = !DILocation(line: 70, column: 41, scope: !823)
!825 = !DILocation(line: 72, column: 9, scope: !823)
!826 = !DILocation(line: 84, column: 16, scope: !790)
!827 = !DILocation(line: 90, column: 27, scope: !790)
!828 = !DILocation(line: 92, column: 1, scope: !790)
!829 = distinct !DISubprogram(name: "clone_quoting_options", scope: !149, file: !149, line: 114, type: !830, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !833)
!830 = !DISubroutineType(types: !831)
!831 = !{!832, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!833 = !{!834, !835, !836}
!834 = !DILocalVariable(name: "o", arg: 1, scope: !829, file: !149, line: 114, type: !832)
!835 = !DILocalVariable(name: "e", scope: !829, file: !149, line: 116, type: !22)
!836 = !DILocalVariable(name: "p", scope: !829, file: !149, line: 117, type: !832)
!837 = !DILocation(line: 114, column: 48, scope: !829)
!838 = !DILocation(line: 116, column: 11, scope: !829)
!839 = !DILocation(line: 116, column: 7, scope: !829)
!840 = !DILocation(line: 117, column: 40, scope: !829)
!841 = !DILocation(line: 117, column: 31, scope: !829)
!842 = !DILocation(line: 117, column: 27, scope: !829)
!843 = !DILocation(line: 119, column: 9, scope: !829)
!844 = !DILocation(line: 120, column: 3, scope: !829)
!845 = distinct !DISubprogram(name: "get_quoting_style", scope: !149, file: !149, line: 125, type: !846, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !850)
!846 = !DISubroutineType(types: !847)
!847 = !{!107, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!850 = !{!851}
!851 = !DILocalVariable(name: "o", arg: 1, scope: !845, file: !149, line: 125, type: !848)
!852 = !DILocation(line: 125, column: 50, scope: !845)
!853 = !DILocation(line: 127, column: 11, scope: !845)
!854 = !DILocation(line: 127, column: 46, scope: !845)
!855 = !{!856, !609, i64 0}
!856 = !{!"quoting_options", !609, i64 0, !656, i64 4, !609, i64 8, !608, i64 40, !608, i64 48}
!857 = !DILocation(line: 127, column: 3, scope: !845)
!858 = distinct !DISubprogram(name: "set_quoting_style", scope: !149, file: !149, line: 133, type: !859, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !832, !107}
!861 = !{!862, !863}
!862 = !DILocalVariable(name: "o", arg: 1, scope: !858, file: !149, line: 133, type: !832)
!863 = !DILocalVariable(name: "s", arg: 2, scope: !858, file: !149, line: 133, type: !107)
!864 = !DILocation(line: 133, column: 44, scope: !858)
!865 = !DILocation(line: 133, column: 66, scope: !858)
!866 = !DILocation(line: 135, column: 4, scope: !858)
!867 = !DILocation(line: 135, column: 39, scope: !858)
!868 = !DILocation(line: 135, column: 45, scope: !858)
!869 = !DILocation(line: 136, column: 1, scope: !858)
!870 = distinct !DISubprogram(name: "set_char_quoting", scope: !149, file: !149, line: 144, type: !871, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!22, !832, !14, !22}
!873 = !{!874, !875, !876, !877, !878, !880, !881}
!874 = !DILocalVariable(name: "o", arg: 1, scope: !870, file: !149, line: 144, type: !832)
!875 = !DILocalVariable(name: "c", arg: 2, scope: !870, file: !149, line: 144, type: !14)
!876 = !DILocalVariable(name: "i", arg: 3, scope: !870, file: !149, line: 144, type: !22)
!877 = !DILocalVariable(name: "uc", scope: !870, file: !149, line: 146, type: !543)
!878 = !DILocalVariable(name: "p", scope: !870, file: !149, line: 147, type: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!880 = !DILocalVariable(name: "shift", scope: !870, file: !149, line: 149, type: !22)
!881 = !DILocalVariable(name: "r", scope: !870, file: !149, line: 150, type: !22)
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
!902 = distinct !DISubprogram(name: "set_quoting_flags", scope: !149, file: !149, line: 160, type: !903, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!22, !832, !22}
!905 = !{!906, !907, !908}
!906 = !DILocalVariable(name: "o", arg: 1, scope: !902, file: !149, line: 160, type: !832)
!907 = !DILocalVariable(name: "i", arg: 2, scope: !902, file: !149, line: 160, type: !22)
!908 = !DILocalVariable(name: "r", scope: !902, file: !149, line: 162, type: !22)
!909 = !DILocation(line: 160, column: 44, scope: !902)
!910 = !DILocation(line: 160, column: 51, scope: !902)
!911 = !DILocation(line: 163, column: 8, scope: !912)
!912 = distinct !DILexicalBlock(scope: !902, file: !149, line: 163, column: 7)
!913 = !DILocation(line: 163, column: 7, scope: !902)
!914 = !DILocation(line: 165, column: 10, scope: !902)
!915 = !{!856, !656, i64 4}
!916 = !DILocation(line: 162, column: 7, scope: !902)
!917 = !DILocation(line: 166, column: 12, scope: !902)
!918 = !DILocation(line: 167, column: 3, scope: !902)
!919 = distinct !DISubprogram(name: "set_custom_quoting", scope: !149, file: !149, line: 171, type: !920, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !922)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !832, !46, !46}
!922 = !{!923, !924, !925}
!923 = !DILocalVariable(name: "o", arg: 1, scope: !919, file: !149, line: 171, type: !832)
!924 = !DILocalVariable(name: "left_quote", arg: 2, scope: !919, file: !149, line: 172, type: !46)
!925 = !DILocalVariable(name: "right_quote", arg: 3, scope: !919, file: !149, line: 172, type: !46)
!926 = !DILocation(line: 171, column: 45, scope: !919)
!927 = !DILocation(line: 172, column: 33, scope: !919)
!928 = !DILocation(line: 172, column: 57, scope: !919)
!929 = !DILocation(line: 174, column: 8, scope: !930)
!930 = distinct !DILexicalBlock(scope: !919, file: !149, line: 174, column: 7)
!931 = !DILocation(line: 174, column: 7, scope: !919)
!932 = !DILocation(line: 176, column: 6, scope: !919)
!933 = !DILocation(line: 176, column: 12, scope: !919)
!934 = !DILocation(line: 177, column: 8, scope: !935)
!935 = distinct !DILexicalBlock(scope: !919, file: !149, line: 177, column: 7)
!936 = !DILocation(line: 177, column: 23, scope: !935)
!937 = !DILocation(line: 177, column: 19, scope: !935)
!938 = !DILocation(line: 178, column: 5, scope: !935)
!939 = !DILocation(line: 179, column: 6, scope: !919)
!940 = !DILocation(line: 179, column: 17, scope: !919)
!941 = !{!856, !608, i64 40}
!942 = !DILocation(line: 180, column: 6, scope: !919)
!943 = !DILocation(line: 180, column: 18, scope: !919)
!944 = !{!856, !608, i64 48}
!945 = !DILocation(line: 181, column: 1, scope: !919)
!946 = distinct !DISubprogram(name: "quotearg_buffer", scope: !149, file: !149, line: 776, type: !947, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{!143, !13, !143, !46, !143, !848}
!949 = !{!950, !951, !952, !953, !954, !955, !956, !957}
!950 = !DILocalVariable(name: "buffer", arg: 1, scope: !946, file: !149, line: 776, type: !13)
!951 = !DILocalVariable(name: "buffersize", arg: 2, scope: !946, file: !149, line: 776, type: !143)
!952 = !DILocalVariable(name: "arg", arg: 3, scope: !946, file: !149, line: 777, type: !46)
!953 = !DILocalVariable(name: "argsize", arg: 4, scope: !946, file: !149, line: 777, type: !143)
!954 = !DILocalVariable(name: "o", arg: 5, scope: !946, file: !149, line: 778, type: !848)
!955 = !DILocalVariable(name: "p", scope: !946, file: !149, line: 780, type: !848)
!956 = !DILocalVariable(name: "e", scope: !946, file: !149, line: 781, type: !22)
!957 = !DILocalVariable(name: "r", scope: !946, file: !149, line: 782, type: !143)
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
!976 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !149, file: !149, line: 248, type: !977, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !981)
!977 = !DISubroutineType(types: !978)
!978 = !{!143, !13, !143, !46, !143, !107, !22, !979, !46, !46}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1006, !1007, !1008, !1009, !1010, !1013, !1014, !1032, !1035, !1036, !1043}
!982 = !DILocalVariable(name: "buffer", arg: 1, scope: !976, file: !149, line: 248, type: !13)
!983 = !DILocalVariable(name: "buffersize", arg: 2, scope: !976, file: !149, line: 248, type: !143)
!984 = !DILocalVariable(name: "arg", arg: 3, scope: !976, file: !149, line: 249, type: !46)
!985 = !DILocalVariable(name: "argsize", arg: 4, scope: !976, file: !149, line: 249, type: !143)
!986 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !976, file: !149, line: 250, type: !107)
!987 = !DILocalVariable(name: "flags", arg: 6, scope: !976, file: !149, line: 250, type: !22)
!988 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !976, file: !149, line: 251, type: !979)
!989 = !DILocalVariable(name: "left_quote", arg: 8, scope: !976, file: !149, line: 252, type: !46)
!990 = !DILocalVariable(name: "right_quote", arg: 9, scope: !976, file: !149, line: 253, type: !46)
!991 = !DILocalVariable(name: "i", scope: !976, file: !149, line: 255, type: !143)
!992 = !DILocalVariable(name: "len", scope: !976, file: !149, line: 256, type: !143)
!993 = !DILocalVariable(name: "orig_buffersize", scope: !976, file: !149, line: 257, type: !143)
!994 = !DILocalVariable(name: "quote_string", scope: !976, file: !149, line: 258, type: !46)
!995 = !DILocalVariable(name: "quote_string_len", scope: !976, file: !149, line: 259, type: !143)
!996 = !DILocalVariable(name: "backslash_escapes", scope: !976, file: !149, line: 260, type: !29)
!997 = !DILocalVariable(name: "unibyte_locale", scope: !976, file: !149, line: 261, type: !29)
!998 = !DILocalVariable(name: "elide_outer_quotes", scope: !976, file: !149, line: 262, type: !29)
!999 = !DILocalVariable(name: "pending_shell_escape_end", scope: !976, file: !149, line: 263, type: !29)
!1000 = !DILocalVariable(name: "encountered_single_quote", scope: !976, file: !149, line: 264, type: !29)
!1001 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !976, file: !149, line: 265, type: !29)
!1002 = !DILocalVariable(name: "c", scope: !1003, file: !149, line: 394, type: !543)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !149, line: 393, column: 5)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !149, line: 392, column: 3)
!1005 = distinct !DILexicalBlock(scope: !976, file: !149, line: 392, column: 3)
!1006 = !DILocalVariable(name: "esc", scope: !1003, file: !149, line: 395, type: !543)
!1007 = !DILocalVariable(name: "is_right_quote", scope: !1003, file: !149, line: 396, type: !29)
!1008 = !DILocalVariable(name: "escaping", scope: !1003, file: !149, line: 397, type: !29)
!1009 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1003, file: !149, line: 398, type: !29)
!1010 = !DILocalVariable(name: "m", scope: !1011, file: !149, line: 602, type: !143)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !149, line: 600, column: 11)
!1012 = distinct !DILexicalBlock(scope: !1003, file: !149, line: 418, column: 9)
!1013 = !DILocalVariable(name: "printable", scope: !1011, file: !149, line: 604, type: !29)
!1014 = !DILocalVariable(name: "mbstate", scope: !1015, file: !149, line: 613, type: !1017)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !149, line: 612, column: 15)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !149, line: 606, column: 17)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1018, line: 6, baseType: !1019)
!1018 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1020, line: 21, baseType: !1021)
!1020 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 13, size: 64, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1021, file: !1020, line: 15, baseType: !22, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1021, file: !1020, line: 20, baseType: !1025, size: 32, offset: 32)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !1020, line: 16, size: 32, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1025, file: !1020, line: 18, baseType: !162, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1025, file: !1020, line: 19, baseType: !1029, size: 32)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 4)
!1032 = !DILocalVariable(name: "w", scope: !1033, file: !149, line: 623, type: !1034)
!1033 = distinct !DILexicalBlock(scope: !1015, file: !149, line: 622, column: 19)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !144, line: 90, baseType: !22)
!1035 = !DILocalVariable(name: "bytes", scope: !1033, file: !149, line: 624, type: !143)
!1036 = !DILocalVariable(name: "j", scope: !1037, file: !149, line: 649, type: !143)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !149, line: 648, column: 27)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !149, line: 646, column: 29)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !149, line: 641, column: 23)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !149, line: 633, column: 30)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !149, line: 628, column: 30)
!1042 = distinct !DILexicalBlock(scope: !1033, file: !149, line: 626, column: 25)
!1043 = !DILocalVariable(name: "ilim", scope: !1044, file: !149, line: 676, type: !143)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !149, line: 673, column: 15)
!1045 = distinct !DILexicalBlock(scope: !1011, file: !149, line: 672, column: 17)
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
!1069 = distinct !DILexicalBlock(scope: !976, file: !149, line: 309, column: 5)
!1070 = !DILocation(line: 315, column: 12, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1069, file: !149, line: 315, column: 11)
!1072 = !DILocation(line: 316, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !149, line: 316, column: 9)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !149, line: 316, column: 9)
!1075 = !DILocation(line: 316, column: 9, scope: !1074)
!1076 = !DILocation(line: 354, column: 26, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !149, line: 332, column: 11)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !149, line: 331, column: 13)
!1079 = distinct !DILexicalBlock(scope: !1069, file: !149, line: 330, column: 7)
!1080 = !DILocation(line: 355, column: 27, scope: !1077)
!1081 = !DILocation(line: 356, column: 11, scope: !1077)
!1082 = !DILocation(line: 357, column: 14, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !149, line: 357, column: 13)
!1084 = !DILocation(line: 357, column: 13, scope: !1079)
!1085 = !DILocation(line: 358, column: 43, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !149, line: 358, column: 11)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !149, line: 358, column: 11)
!1088 = !DILocation(line: 358, column: 11, scope: !1087)
!1089 = !DILocation(line: 359, column: 13, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !149, line: 359, column: 13)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !149, line: 359, column: 13)
!1092 = !DILocation(line: 359, column: 13, scope: !1091)
!1093 = !DILocation(line: 358, column: 70, scope: !1086)
!1094 = distinct !{!1094, !1088, !1095}
!1095 = !DILocation(line: 359, column: 13, scope: !1087)
!1096 = !DILocation(line: 362, column: 28, scope: !1079)
!1097 = !DILocation(line: 364, column: 7, scope: !1069)
!1098 = !DILocation(line: 367, column: 7, scope: !1069)
!1099 = !DILocation(line: 370, column: 7, scope: !1069)
!1100 = !DILocation(line: 373, column: 12, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1069, file: !149, line: 373, column: 11)
!1102 = !DILocation(line: 373, column: 11, scope: !1069)
!1103 = !DILocation(line: 378, column: 12, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1069, file: !149, line: 378, column: 11)
!1105 = !DILocation(line: 378, column: 11, scope: !1069)
!1106 = !DILocation(line: 379, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !149, line: 379, column: 9)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !149, line: 379, column: 9)
!1109 = !DILocation(line: 379, column: 9, scope: !1108)
!1110 = !DILocation(line: 386, column: 7, scope: !1069)
!1111 = !DILocation(line: 389, column: 7, scope: !1069)
!1112 = !DILocation(line: 255, column: 10, scope: !976)
!1113 = !DILocation(line: 392, column: 8, scope: !1005)
!1114 = !DILocation(line: 392, column: 27, scope: !1004)
!1115 = !DILocation(line: 392, column: 19, scope: !1004)
!1116 = !DILocation(line: 392, column: 60, scope: !1004)
!1117 = !DILocation(line: 392, column: 3, scope: !1005)
!1118 = !DILocation(line: 392, column: 41, scope: !1004)
!1119 = !DILocation(line: 392, column: 48, scope: !1004)
!1120 = !DILocation(line: 396, column: 12, scope: !1003)
!1121 = !DILocation(line: 397, column: 12, scope: !1003)
!1122 = !DILocation(line: 398, column: 12, scope: !1003)
!1123 = !DILocation(line: 401, column: 11, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1003, file: !149, line: 400, column: 11)
!1125 = !DILocation(line: 403, column: 17, scope: !1124)
!1126 = !DILocation(line: 404, column: 39, scope: !1124)
!1127 = !DILocation(line: 408, column: 32, scope: !1124)
!1128 = !DILocation(line: 404, column: 19, scope: !1124)
!1129 = !DILocation(line: 404, column: 15, scope: !1124)
!1130 = !DILocation(line: 409, column: 11, scope: !1124)
!1131 = !DILocation(line: 409, column: 26, scope: !1124)
!1132 = !DILocation(line: 409, column: 14, scope: !1124)
!1133 = !DILocation(line: 409, column: 63, scope: !1124)
!1134 = !DILocation(line: 400, column: 11, scope: !1003)
!1135 = !DILocation(line: 416, column: 11, scope: !1003)
!1136 = !DILocation(line: 394, column: 21, scope: !1003)
!1137 = !DILocation(line: 417, column: 7, scope: !1003)
!1138 = !DILocation(line: 420, column: 15, scope: !1012)
!1139 = !DILocation(line: 422, column: 15, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !149, line: 422, column: 15)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !149, line: 421, column: 13)
!1142 = distinct !DILexicalBlock(scope: !1012, file: !149, line: 420, column: 15)
!1143 = !DILocation(line: 422, column: 15, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !149, line: 422, column: 15)
!1145 = !DILocation(line: 422, column: 15, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !149, line: 422, column: 15)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !149, line: 422, column: 15)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !149, line: 422, column: 15)
!1149 = !DILocation(line: 422, column: 15, scope: !1147)
!1150 = !DILocation(line: 422, column: 15, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !149, line: 422, column: 15)
!1152 = distinct !DILexicalBlock(scope: !1148, file: !149, line: 422, column: 15)
!1153 = !DILocation(line: 422, column: 15, scope: !1152)
!1154 = !DILocation(line: 422, column: 15, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !149, line: 422, column: 15)
!1156 = distinct !DILexicalBlock(scope: !1148, file: !149, line: 422, column: 15)
!1157 = !DILocation(line: 422, column: 15, scope: !1156)
!1158 = !DILocation(line: 422, column: 15, scope: !1148)
!1159 = !DILocation(line: 422, column: 15, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !149, line: 422, column: 15)
!1161 = distinct !DILexicalBlock(scope: !1140, file: !149, line: 422, column: 15)
!1162 = !DILocation(line: 422, column: 15, scope: !1161)
!1163 = !DILocation(line: 430, column: 19, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1141, file: !149, line: 429, column: 19)
!1165 = !DILocation(line: 430, column: 24, scope: !1164)
!1166 = !DILocation(line: 430, column: 28, scope: !1164)
!1167 = !DILocation(line: 430, column: 38, scope: !1164)
!1168 = !DILocation(line: 430, column: 48, scope: !1164)
!1169 = !DILocation(line: 430, column: 59, scope: !1164)
!1170 = !DILocation(line: 432, column: 19, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !149, line: 432, column: 19)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !149, line: 432, column: 19)
!1173 = distinct !DILexicalBlock(scope: !1164, file: !149, line: 431, column: 17)
!1174 = !DILocation(line: 432, column: 19, scope: !1172)
!1175 = !DILocation(line: 433, column: 19, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !149, line: 433, column: 19)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !149, line: 433, column: 19)
!1178 = !DILocation(line: 433, column: 19, scope: !1177)
!1179 = !DILocation(line: 434, column: 17, scope: !1173)
!1180 = !DILocation(line: 441, column: 20, scope: !1142)
!1181 = !DILocation(line: 446, column: 11, scope: !1012)
!1182 = !DILocation(line: 449, column: 19, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1012, file: !149, line: 447, column: 13)
!1184 = !DILocation(line: 455, column: 19, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1183, file: !149, line: 454, column: 19)
!1186 = !DILocation(line: 455, column: 24, scope: !1185)
!1187 = !DILocation(line: 455, column: 28, scope: !1185)
!1188 = !DILocation(line: 455, column: 38, scope: !1185)
!1189 = !DILocation(line: 455, column: 47, scope: !1185)
!1190 = !DILocation(line: 455, column: 41, scope: !1185)
!1191 = !DILocation(line: 455, column: 52, scope: !1185)
!1192 = !DILocation(line: 454, column: 19, scope: !1183)
!1193 = !DILocation(line: 456, column: 25, scope: !1185)
!1194 = !DILocation(line: 456, column: 17, scope: !1185)
!1195 = !DILocation(line: 463, column: 25, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1185, file: !149, line: 457, column: 19)
!1197 = !DILocation(line: 467, column: 21, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !149, line: 467, column: 21)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !149, line: 467, column: 21)
!1200 = !DILocation(line: 467, column: 21, scope: !1199)
!1201 = !DILocation(line: 468, column: 21, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !149, line: 468, column: 21)
!1203 = distinct !DILexicalBlock(scope: !1196, file: !149, line: 468, column: 21)
!1204 = !DILocation(line: 468, column: 21, scope: !1203)
!1205 = !DILocation(line: 469, column: 21, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !149, line: 469, column: 21)
!1207 = distinct !DILexicalBlock(scope: !1196, file: !149, line: 469, column: 21)
!1208 = !DILocation(line: 469, column: 21, scope: !1207)
!1209 = !DILocation(line: 470, column: 21, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !149, line: 470, column: 21)
!1211 = distinct !DILexicalBlock(scope: !1196, file: !149, line: 470, column: 21)
!1212 = !DILocation(line: 470, column: 21, scope: !1211)
!1213 = !DILocation(line: 471, column: 21, scope: !1196)
!1214 = !DILocation(line: 395, column: 21, scope: !1003)
!1215 = !DILocation(line: 484, column: 31, scope: !1012)
!1216 = !DILocation(line: 485, column: 31, scope: !1012)
!1217 = !DILocation(line: 487, column: 31, scope: !1012)
!1218 = !DILocation(line: 488, column: 31, scope: !1012)
!1219 = !DILocation(line: 489, column: 31, scope: !1012)
!1220 = !DILocation(line: 492, column: 15, scope: !1012)
!1221 = !DILocation(line: 494, column: 19, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !149, line: 493, column: 13)
!1223 = distinct !DILexicalBlock(scope: !1012, file: !149, line: 492, column: 15)
!1224 = !DILocation(line: 501, column: 33, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1012, file: !149, line: 501, column: 15)
!1226 = !DILocation(line: 506, column: 15, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1012, file: !149, line: 505, column: 15)
!1228 = !DILocation(line: 510, column: 15, scope: !1012)
!1229 = !DILocation(line: 518, column: 26, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1012, file: !149, line: 518, column: 15)
!1231 = !DILocation(line: 518, column: 15, scope: !1012)
!1232 = !DILocation(line: 518, column: 40, scope: !1230)
!1233 = !DILocation(line: 518, column: 47, scope: !1230)
!1234 = !DILocation(line: 522, column: 17, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1012, file: !149, line: 522, column: 15)
!1236 = !DILocation(line: 518, column: 18, scope: !1230)
!1237 = !DILocation(line: 518, column: 65, scope: !1230)
!1238 = !DILocation(line: 522, column: 15, scope: !1012)
!1239 = !DILocation(line: 526, column: 11, scope: !1012)
!1240 = !DILocation(line: 541, column: 15, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1012, file: !149, line: 540, column: 15)
!1242 = !DILocation(line: 548, column: 15, scope: !1012)
!1243 = !DILocation(line: 550, column: 19, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !149, line: 549, column: 13)
!1245 = distinct !DILexicalBlock(scope: !1012, file: !149, line: 548, column: 15)
!1246 = !DILocation(line: 553, column: 19, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !149, line: 553, column: 19)
!1248 = !DILocation(line: 553, column: 35, scope: !1247)
!1249 = !DILocation(line: 553, column: 30, scope: !1247)
!1250 = !DILocation(line: 562, column: 15, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !149, line: 562, column: 15)
!1252 = distinct !DILexicalBlock(scope: !1244, file: !149, line: 562, column: 15)
!1253 = !DILocation(line: 562, column: 15, scope: !1252)
!1254 = !DILocation(line: 563, column: 15, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !149, line: 563, column: 15)
!1256 = distinct !DILexicalBlock(scope: !1244, file: !149, line: 563, column: 15)
!1257 = !DILocation(line: 563, column: 15, scope: !1256)
!1258 = !DILocation(line: 564, column: 15, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !149, line: 564, column: 15)
!1260 = distinct !DILexicalBlock(scope: !1244, file: !149, line: 564, column: 15)
!1261 = !DILocation(line: 564, column: 15, scope: !1260)
!1262 = !DILocation(line: 566, column: 13, scope: !1244)
!1263 = !DILocation(line: 606, column: 17, scope: !1011)
!1264 = !DILocation(line: 602, column: 20, scope: !1011)
!1265 = !DILocation(line: 609, column: 29, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1016, file: !149, line: 607, column: 15)
!1267 = !{!1268, !1268, i64 0}
!1268 = !{!"short", !609, i64 0}
!1269 = !DILocation(line: 609, column: 27, scope: !1266)
!1270 = !DILocation(line: 604, column: 18, scope: !1011)
!1271 = !DILocation(line: 610, column: 15, scope: !1266)
!1272 = !DILocation(line: 613, column: 17, scope: !1015)
!1273 = !DILocation(line: 614, column: 17, scope: !1015)
!1274 = !DILocation(line: 618, column: 29, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1015, file: !149, line: 618, column: 21)
!1276 = !DILocation(line: 618, column: 21, scope: !1015)
!1277 = !DILocation(line: 619, column: 29, scope: !1275)
!1278 = !DILocation(line: 619, column: 19, scope: !1275)
!1279 = !DILocation(line: 621, column: 17, scope: !1015)
!1280 = distinct !{!1280, !1279, !1281}
!1281 = !DILocation(line: 667, column: 44, scope: !1015)
!1282 = !DILocation(line: 623, column: 21, scope: !1033)
!1283 = !DILocation(line: 624, column: 56, scope: !1033)
!1284 = !DILocation(line: 624, column: 50, scope: !1033)
!1285 = !DILocation(line: 625, column: 53, scope: !1033)
!1286 = !DILocation(line: 613, column: 27, scope: !1015)
!1287 = !DILocation(line: 623, column: 29, scope: !1033)
!1288 = !DILocation(line: 624, column: 36, scope: !1033)
!1289 = !DILocation(line: 624, column: 28, scope: !1033)
!1290 = !DILocation(line: 626, column: 25, scope: !1033)
!1291 = !DILocation(line: 636, column: 38, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1040, file: !149, line: 634, column: 23)
!1293 = !DILocation(line: 636, column: 48, scope: !1292)
!1294 = !DILocation(line: 636, column: 51, scope: !1292)
!1295 = !DILocation(line: 636, column: 25, scope: !1292)
!1296 = !DILocation(line: 637, column: 28, scope: !1292)
!1297 = !DILocation(line: 636, column: 34, scope: !1292)
!1298 = distinct !{!1298, !1295, !1296}
!1299 = !DILocation(line: 650, column: 43, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !149, line: 650, column: 29)
!1301 = distinct !DILexicalBlock(scope: !1037, file: !149, line: 650, column: 29)
!1302 = !DILocation(line: 647, column: 29, scope: !1038)
!1303 = !DILocation(line: 649, column: 36, scope: !1037)
!1304 = !DILocation(line: 651, column: 49, scope: !1300)
!1305 = !DILocation(line: 651, column: 39, scope: !1300)
!1306 = !DILocation(line: 651, column: 31, scope: !1300)
!1307 = !DILocation(line: 650, column: 53, scope: !1300)
!1308 = !DILocation(line: 650, column: 29, scope: !1301)
!1309 = distinct !{!1309, !1308, !1310}
!1310 = !DILocation(line: 659, column: 33, scope: !1301)
!1311 = !DILocation(line: 666, column: 19, scope: !1015)
!1312 = !DILocation(line: 662, column: 41, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1039, file: !149, line: 662, column: 29)
!1314 = !DILocation(line: 662, column: 31, scope: !1313)
!1315 = !DILocation(line: 662, column: 29, scope: !1039)
!1316 = !DILocation(line: 664, column: 27, scope: !1039)
!1317 = !DILocation(line: 667, column: 26, scope: !1015)
!1318 = !DILocation(line: 667, column: 24, scope: !1015)
!1319 = !DILocation(line: 666, column: 19, scope: !1033)
!1320 = !DILocation(line: 668, column: 15, scope: !1016)
!1321 = !DILocation(line: 670, column: 40, scope: !1011)
!1322 = !DILocation(line: 672, column: 19, scope: !1045)
!1323 = !DILocation(line: 672, column: 45, scope: !1045)
!1324 = !DILocation(line: 672, column: 23, scope: !1045)
!1325 = !DILocation(line: 676, column: 33, scope: !1044)
!1326 = !DILocation(line: 676, column: 24, scope: !1044)
!1327 = !DILocation(line: 678, column: 17, scope: !1044)
!1328 = !DILocation(line: 680, column: 43, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !149, line: 680, column: 25)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !149, line: 679, column: 19)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !149, line: 678, column: 17)
!1332 = distinct !DILexicalBlock(scope: !1044, file: !149, line: 678, column: 17)
!1333 = !DILocation(line: 682, column: 25, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !149, line: 682, column: 25)
!1335 = distinct !DILexicalBlock(scope: !1329, file: !149, line: 681, column: 23)
!1336 = !DILocation(line: 682, column: 25, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !149, line: 682, column: 25)
!1338 = !DILocation(line: 682, column: 25, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !149, line: 682, column: 25)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !149, line: 682, column: 25)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !149, line: 682, column: 25)
!1342 = !DILocation(line: 682, column: 25, scope: !1340)
!1343 = !DILocation(line: 682, column: 25, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !149, line: 682, column: 25)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !149, line: 682, column: 25)
!1346 = !DILocation(line: 682, column: 25, scope: !1345)
!1347 = !DILocation(line: 682, column: 25, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !149, line: 682, column: 25)
!1349 = distinct !DILexicalBlock(scope: !1341, file: !149, line: 682, column: 25)
!1350 = !DILocation(line: 682, column: 25, scope: !1349)
!1351 = !DILocation(line: 682, column: 25, scope: !1341)
!1352 = !DILocation(line: 682, column: 25, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !149, line: 682, column: 25)
!1354 = distinct !DILexicalBlock(scope: !1334, file: !149, line: 682, column: 25)
!1355 = !DILocation(line: 682, column: 25, scope: !1354)
!1356 = !DILocation(line: 683, column: 25, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !149, line: 683, column: 25)
!1358 = distinct !DILexicalBlock(scope: !1335, file: !149, line: 683, column: 25)
!1359 = !DILocation(line: 683, column: 25, scope: !1358)
!1360 = !DILocation(line: 684, column: 25, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !149, line: 684, column: 25)
!1362 = distinct !DILexicalBlock(scope: !1335, file: !149, line: 684, column: 25)
!1363 = !DILocation(line: 684, column: 25, scope: !1362)
!1364 = !DILocation(line: 685, column: 38, scope: !1335)
!1365 = !DILocation(line: 685, column: 33, scope: !1335)
!1366 = !DILocation(line: 686, column: 23, scope: !1335)
!1367 = !DILocation(line: 687, column: 30, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1329, file: !149, line: 687, column: 30)
!1369 = !DILocation(line: 687, column: 30, scope: !1329)
!1370 = !DILocation(line: 689, column: 25, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !149, line: 689, column: 25)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !149, line: 689, column: 25)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !149, line: 688, column: 23)
!1374 = !DILocation(line: 689, column: 25, scope: !1372)
!1375 = !DILocation(line: 691, column: 23, scope: !1373)
!1376 = !DILocation(line: 692, column: 35, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1330, file: !149, line: 692, column: 25)
!1378 = !DILocation(line: 692, column: 30, scope: !1377)
!1379 = !DILocation(line: 692, column: 25, scope: !1330)
!1380 = !DILocation(line: 694, column: 21, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !149, line: 694, column: 21)
!1382 = distinct !DILexicalBlock(scope: !1330, file: !149, line: 694, column: 21)
!1383 = !DILocation(line: 694, column: 21, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !149, line: 694, column: 21)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !149, line: 694, column: 21)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !149, line: 694, column: 21)
!1387 = !DILocation(line: 694, column: 21, scope: !1385)
!1388 = !DILocation(line: 694, column: 21, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !149, line: 694, column: 21)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !149, line: 694, column: 21)
!1391 = !DILocation(line: 694, column: 21, scope: !1390)
!1392 = !DILocation(line: 694, column: 21, scope: !1386)
!1393 = !DILocation(line: 695, column: 21, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !149, line: 695, column: 21)
!1395 = distinct !DILexicalBlock(scope: !1330, file: !149, line: 695, column: 21)
!1396 = !DILocation(line: 695, column: 21, scope: !1395)
!1397 = !DILocation(line: 696, column: 25, scope: !1330)
!1398 = !DILocation(line: 678, column: 17, scope: !1331)
!1399 = distinct !{!1399, !1400, !1401}
!1400 = !DILocation(line: 678, column: 17, scope: !1332)
!1401 = !DILocation(line: 697, column: 19, scope: !1332)
!1402 = !DILocation(line: 704, column: 34, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1003, file: !149, line: 704, column: 11)
!1404 = !DILocation(line: 706, column: 14, scope: !1403)
!1405 = !DILocation(line: 707, column: 14, scope: !1403)
!1406 = !DILocation(line: 707, column: 35, scope: !1403)
!1407 = !DILocation(line: 707, column: 17, scope: !1403)
!1408 = !DILocation(line: 707, column: 53, scope: !1403)
!1409 = !DILocation(line: 707, column: 47, scope: !1403)
!1410 = !DILocation(line: 707, column: 65, scope: !1403)
!1411 = !DILocation(line: 708, column: 15, scope: !1403)
!1412 = !DILocation(line: 708, column: 11, scope: !1403)
!1413 = !DILocation(line: 704, column: 11, scope: !1003)
!1414 = !DILocation(line: 712, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1003, file: !149, line: 712, column: 7)
!1416 = !DILocation(line: 712, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1415, file: !149, line: 712, column: 7)
!1418 = !DILocation(line: 712, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !149, line: 712, column: 7)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !149, line: 712, column: 7)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !149, line: 712, column: 7)
!1422 = !DILocation(line: 712, column: 7, scope: !1420)
!1423 = !DILocation(line: 712, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !149, line: 712, column: 7)
!1425 = distinct !DILexicalBlock(scope: !1421, file: !149, line: 712, column: 7)
!1426 = !DILocation(line: 712, column: 7, scope: !1425)
!1427 = !DILocation(line: 712, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !149, line: 712, column: 7)
!1429 = distinct !DILexicalBlock(scope: !1421, file: !149, line: 712, column: 7)
!1430 = !DILocation(line: 712, column: 7, scope: !1429)
!1431 = !DILocation(line: 712, column: 7, scope: !1421)
!1432 = !DILocation(line: 712, column: 7, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !149, line: 712, column: 7)
!1434 = distinct !DILexicalBlock(scope: !1415, file: !149, line: 712, column: 7)
!1435 = !DILocation(line: 712, column: 7, scope: !1434)
!1436 = !DILocation(line: 715, column: 7, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !149, line: 715, column: 7)
!1438 = distinct !DILexicalBlock(scope: !1003, file: !149, line: 715, column: 7)
!1439 = !DILocation(line: 715, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !149, line: 715, column: 7)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !149, line: 715, column: 7)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !149, line: 715, column: 7)
!1443 = !DILocation(line: 715, column: 7, scope: !1441)
!1444 = !DILocation(line: 715, column: 7, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !149, line: 715, column: 7)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !149, line: 715, column: 7)
!1447 = !DILocation(line: 715, column: 7, scope: !1446)
!1448 = !DILocation(line: 715, column: 7, scope: !1442)
!1449 = !DILocation(line: 716, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !149, line: 716, column: 7)
!1451 = distinct !DILexicalBlock(scope: !1003, file: !149, line: 716, column: 7)
!1452 = !DILocation(line: 716, column: 7, scope: !1451)
!1453 = !DILocation(line: 718, column: 13, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1003, file: !149, line: 718, column: 11)
!1455 = !DILocation(line: 718, column: 11, scope: !1003)
!1456 = !DILocation(line: 720, column: 5, scope: !1004)
!1457 = !DILocation(line: 392, column: 75, scope: !1004)
!1458 = !DILocation(line: 392, column: 3, scope: !1004)
!1459 = distinct !{!1459, !1117, !1460}
!1460 = !DILocation(line: 720, column: 5, scope: !1005)
!1461 = !DILocation(line: 722, column: 11, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !976, file: !149, line: 722, column: 7)
!1463 = !DILocation(line: 722, column: 16, scope: !1462)
!1464 = !DILocation(line: 730, column: 51, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !976, file: !149, line: 730, column: 7)
!1466 = !DILocation(line: 731, column: 10, scope: !1465)
!1467 = !DILocation(line: 733, column: 11, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !149, line: 733, column: 11)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !149, line: 732, column: 5)
!1470 = !DILocation(line: 733, column: 11, scope: !1469)
!1471 = !DILocation(line: 734, column: 16, scope: !1468)
!1472 = !DILocation(line: 734, column: 9, scope: !1468)
!1473 = !DILocation(line: 738, column: 18, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1468, file: !149, line: 738, column: 16)
!1475 = !DILocation(line: 738, column: 32, scope: !1474)
!1476 = !DILocation(line: 738, column: 29, scope: !1474)
!1477 = !DILocation(line: 747, column: 7, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !976, file: !149, line: 747, column: 7)
!1479 = !DILocation(line: 747, column: 20, scope: !1478)
!1480 = !DILocation(line: 748, column: 12, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !149, line: 748, column: 5)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !149, line: 748, column: 5)
!1483 = !DILocation(line: 748, column: 5, scope: !1482)
!1484 = !DILocation(line: 749, column: 7, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !149, line: 749, column: 7)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !149, line: 749, column: 7)
!1487 = !DILocation(line: 749, column: 7, scope: !1486)
!1488 = !DILocation(line: 748, column: 39, scope: !1481)
!1489 = distinct !{!1489, !1483, !1490}
!1490 = !DILocation(line: 749, column: 7, scope: !1482)
!1491 = !DILocation(line: 751, column: 11, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !976, file: !149, line: 751, column: 7)
!1493 = !DILocation(line: 751, column: 7, scope: !976)
!1494 = !DILocation(line: 752, column: 5, scope: !1492)
!1495 = !DILocation(line: 752, column: 17, scope: !1492)
!1496 = !DILocation(line: 758, column: 21, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !976, file: !149, line: 758, column: 7)
!1498 = !DILocation(line: 758, column: 54, scope: !1497)
!1499 = !DILocation(line: 758, column: 51, scope: !1497)
!1500 = !DILocation(line: 762, column: 42, scope: !976)
!1501 = !DILocation(line: 760, column: 10, scope: !976)
!1502 = !DILocation(line: 760, column: 3, scope: !976)
!1503 = !DILocation(line: 764, column: 1, scope: !976)
!1504 = distinct !DISubprogram(name: "gettext_quote", scope: !149, file: !149, line: 199, type: !1505, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!46, !46, !107}
!1507 = !{!1508, !1509, !1510, !1511}
!1508 = !DILocalVariable(name: "msgid", arg: 1, scope: !1504, file: !149, line: 199, type: !46)
!1509 = !DILocalVariable(name: "s", arg: 2, scope: !1504, file: !149, line: 199, type: !107)
!1510 = !DILocalVariable(name: "translation", scope: !1504, file: !149, line: 201, type: !46)
!1511 = !DILocalVariable(name: "locale_code", scope: !1504, file: !149, line: 202, type: !46)
!1512 = !DILocation(line: 199, column: 28, scope: !1504)
!1513 = !DILocation(line: 199, column: 54, scope: !1504)
!1514 = !DILocation(line: 201, column: 29, scope: !1504)
!1515 = !DILocation(line: 201, column: 15, scope: !1504)
!1516 = !DILocation(line: 204, column: 19, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1504, file: !149, line: 204, column: 7)
!1518 = !DILocation(line: 204, column: 7, scope: !1504)
!1519 = !DILocation(line: 225, column: 17, scope: !1504)
!1520 = !DILocation(line: 202, column: 15, scope: !1504)
!1521 = !DILocalVariable(name: "s2", arg: 2, scope: !1522, file: !1523, line: 160, type: !46)
!1522 = distinct !DISubprogram(name: "strcaseeq0", scope: !1523, file: !1523, line: 160, type: !1524, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1526)
!1523 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!22, !46, !46, !14, !14, !14, !14, !14, !14, !14, !14, !14}
!1526 = !{!1527, !1521, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1527 = !DILocalVariable(name: "s1", arg: 1, scope: !1522, file: !1523, line: 160, type: !46)
!1528 = !DILocalVariable(name: "s20", arg: 3, scope: !1522, file: !1523, line: 160, type: !14)
!1529 = !DILocalVariable(name: "s21", arg: 4, scope: !1522, file: !1523, line: 160, type: !14)
!1530 = !DILocalVariable(name: "s22", arg: 5, scope: !1522, file: !1523, line: 160, type: !14)
!1531 = !DILocalVariable(name: "s23", arg: 6, scope: !1522, file: !1523, line: 160, type: !14)
!1532 = !DILocalVariable(name: "s24", arg: 7, scope: !1522, file: !1523, line: 160, type: !14)
!1533 = !DILocalVariable(name: "s25", arg: 8, scope: !1522, file: !1523, line: 160, type: !14)
!1534 = !DILocalVariable(name: "s26", arg: 9, scope: !1522, file: !1523, line: 160, type: !14)
!1535 = !DILocalVariable(name: "s27", arg: 10, scope: !1522, file: !1523, line: 160, type: !14)
!1536 = !DILocalVariable(name: "s28", arg: 11, scope: !1522, file: !1523, line: 160, type: !14)
!1537 = !DILocation(line: 160, column: 41, scope: !1522, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 226, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1504, file: !149, line: 226, column: 7)
!1540 = !DILocation(line: 160, column: 120, scope: !1522, inlinedAt: !1538)
!1541 = !DILocation(line: 160, column: 130, scope: !1522, inlinedAt: !1538)
!1542 = !DILocation(line: 162, column: 7, scope: !1543, inlinedAt: !1538)
!1543 = distinct !DILexicalBlock(scope: !1522, file: !1523, line: 162, column: 7)
!1544 = !DILocalVariable(name: "s2", arg: 2, scope: !1545, file: !1523, line: 146, type: !46)
!1545 = distinct !DISubprogram(name: "strcaseeq1", scope: !1523, file: !1523, line: 146, type: !1546, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!22, !46, !46, !14, !14, !14, !14, !14, !14, !14, !14}
!1548 = !{!1549, !1544, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1549 = !DILocalVariable(name: "s1", arg: 1, scope: !1545, file: !1523, line: 146, type: !46)
!1550 = !DILocalVariable(name: "s21", arg: 3, scope: !1545, file: !1523, line: 146, type: !14)
!1551 = !DILocalVariable(name: "s22", arg: 4, scope: !1545, file: !1523, line: 146, type: !14)
!1552 = !DILocalVariable(name: "s23", arg: 5, scope: !1545, file: !1523, line: 146, type: !14)
!1553 = !DILocalVariable(name: "s24", arg: 6, scope: !1545, file: !1523, line: 146, type: !14)
!1554 = !DILocalVariable(name: "s25", arg: 7, scope: !1545, file: !1523, line: 146, type: !14)
!1555 = !DILocalVariable(name: "s26", arg: 8, scope: !1545, file: !1523, line: 146, type: !14)
!1556 = !DILocalVariable(name: "s27", arg: 9, scope: !1545, file: !1523, line: 146, type: !14)
!1557 = !DILocalVariable(name: "s28", arg: 10, scope: !1545, file: !1523, line: 146, type: !14)
!1558 = !DILocation(line: 146, column: 41, scope: !1545, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 167, column: 16, scope: !1560, inlinedAt: !1538)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !1523, line: 164, column: 11)
!1561 = distinct !DILexicalBlock(scope: !1543, file: !1523, line: 163, column: 5)
!1562 = !DILocation(line: 146, column: 110, scope: !1545, inlinedAt: !1559)
!1563 = !DILocation(line: 146, column: 120, scope: !1545, inlinedAt: !1559)
!1564 = !DILocation(line: 148, column: 7, scope: !1565, inlinedAt: !1559)
!1565 = distinct !DILexicalBlock(scope: !1545, file: !1523, line: 148, column: 7)
!1566 = !DILocalVariable(name: "s2", arg: 2, scope: !1567, file: !1523, line: 132, type: !46)
!1567 = distinct !DISubprogram(name: "strcaseeq2", scope: !1523, file: !1523, line: 132, type: !1568, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!22, !46, !46, !14, !14, !14, !14, !14, !14, !14}
!1570 = !{!1571, !1566, !1572, !1573, !1574, !1575, !1576, !1577, !1578}
!1571 = !DILocalVariable(name: "s1", arg: 1, scope: !1567, file: !1523, line: 132, type: !46)
!1572 = !DILocalVariable(name: "s22", arg: 3, scope: !1567, file: !1523, line: 132, type: !14)
!1573 = !DILocalVariable(name: "s23", arg: 4, scope: !1567, file: !1523, line: 132, type: !14)
!1574 = !DILocalVariable(name: "s24", arg: 5, scope: !1567, file: !1523, line: 132, type: !14)
!1575 = !DILocalVariable(name: "s25", arg: 6, scope: !1567, file: !1523, line: 132, type: !14)
!1576 = !DILocalVariable(name: "s26", arg: 7, scope: !1567, file: !1523, line: 132, type: !14)
!1577 = !DILocalVariable(name: "s27", arg: 8, scope: !1567, file: !1523, line: 132, type: !14)
!1578 = !DILocalVariable(name: "s28", arg: 9, scope: !1567, file: !1523, line: 132, type: !14)
!1579 = !DILocation(line: 132, column: 41, scope: !1567, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 153, column: 16, scope: !1581, inlinedAt: !1559)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !1523, line: 150, column: 11)
!1582 = distinct !DILexicalBlock(scope: !1565, file: !1523, line: 149, column: 5)
!1583 = !DILocation(line: 132, column: 100, scope: !1567, inlinedAt: !1580)
!1584 = !DILocation(line: 132, column: 110, scope: !1567, inlinedAt: !1580)
!1585 = !DILocation(line: 134, column: 7, scope: !1586, inlinedAt: !1580)
!1586 = distinct !DILexicalBlock(scope: !1567, file: !1523, line: 134, column: 7)
!1587 = !DILocalVariable(name: "s2", arg: 2, scope: !1588, file: !1523, line: 118, type: !46)
!1588 = distinct !DISubprogram(name: "strcaseeq3", scope: !1523, file: !1523, line: 118, type: !1589, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1591)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!22, !46, !46, !14, !14, !14, !14, !14, !14}
!1591 = !{!1592, !1587, !1593, !1594, !1595, !1596, !1597, !1598}
!1592 = !DILocalVariable(name: "s1", arg: 1, scope: !1588, file: !1523, line: 118, type: !46)
!1593 = !DILocalVariable(name: "s23", arg: 3, scope: !1588, file: !1523, line: 118, type: !14)
!1594 = !DILocalVariable(name: "s24", arg: 4, scope: !1588, file: !1523, line: 118, type: !14)
!1595 = !DILocalVariable(name: "s25", arg: 5, scope: !1588, file: !1523, line: 118, type: !14)
!1596 = !DILocalVariable(name: "s26", arg: 6, scope: !1588, file: !1523, line: 118, type: !14)
!1597 = !DILocalVariable(name: "s27", arg: 7, scope: !1588, file: !1523, line: 118, type: !14)
!1598 = !DILocalVariable(name: "s28", arg: 8, scope: !1588, file: !1523, line: 118, type: !14)
!1599 = !DILocation(line: 118, column: 41, scope: !1588, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 139, column: 16, scope: !1601, inlinedAt: !1580)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !1523, line: 136, column: 11)
!1602 = distinct !DILexicalBlock(scope: !1586, file: !1523, line: 135, column: 5)
!1603 = !DILocation(line: 118, column: 90, scope: !1588, inlinedAt: !1600)
!1604 = !DILocation(line: 118, column: 100, scope: !1588, inlinedAt: !1600)
!1605 = !DILocation(line: 120, column: 7, scope: !1606, inlinedAt: !1600)
!1606 = distinct !DILexicalBlock(scope: !1588, file: !1523, line: 120, column: 7)
!1607 = !DILocation(line: 120, column: 7, scope: !1588, inlinedAt: !1600)
!1608 = !DILocalVariable(name: "s2", arg: 2, scope: !1609, file: !1523, line: 104, type: !46)
!1609 = distinct !DISubprogram(name: "strcaseeq4", scope: !1523, file: !1523, line: 104, type: !1610, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1612)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!22, !46, !46, !14, !14, !14, !14, !14}
!1612 = !{!1613, !1608, !1614, !1615, !1616, !1617, !1618}
!1613 = !DILocalVariable(name: "s1", arg: 1, scope: !1609, file: !1523, line: 104, type: !46)
!1614 = !DILocalVariable(name: "s24", arg: 3, scope: !1609, file: !1523, line: 104, type: !14)
!1615 = !DILocalVariable(name: "s25", arg: 4, scope: !1609, file: !1523, line: 104, type: !14)
!1616 = !DILocalVariable(name: "s26", arg: 5, scope: !1609, file: !1523, line: 104, type: !14)
!1617 = !DILocalVariable(name: "s27", arg: 6, scope: !1609, file: !1523, line: 104, type: !14)
!1618 = !DILocalVariable(name: "s28", arg: 7, scope: !1609, file: !1523, line: 104, type: !14)
!1619 = !DILocation(line: 104, column: 41, scope: !1609, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 125, column: 16, scope: !1621, inlinedAt: !1600)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !1523, line: 122, column: 11)
!1622 = distinct !DILexicalBlock(scope: !1606, file: !1523, line: 121, column: 5)
!1623 = !DILocation(line: 104, column: 80, scope: !1609, inlinedAt: !1620)
!1624 = !DILocation(line: 104, column: 90, scope: !1609, inlinedAt: !1620)
!1625 = !DILocation(line: 106, column: 7, scope: !1626, inlinedAt: !1620)
!1626 = distinct !DILexicalBlock(scope: !1609, file: !1523, line: 106, column: 7)
!1627 = !DILocation(line: 106, column: 7, scope: !1609, inlinedAt: !1620)
!1628 = !DILocalVariable(name: "s2", arg: 2, scope: !1629, file: !1523, line: 90, type: !46)
!1629 = distinct !DISubprogram(name: "strcaseeq5", scope: !1523, file: !1523, line: 90, type: !1630, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1632)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!22, !46, !46, !14, !14, !14, !14}
!1632 = !{!1633, !1628, !1634, !1635, !1636, !1637}
!1633 = !DILocalVariable(name: "s1", arg: 1, scope: !1629, file: !1523, line: 90, type: !46)
!1634 = !DILocalVariable(name: "s25", arg: 3, scope: !1629, file: !1523, line: 90, type: !14)
!1635 = !DILocalVariable(name: "s26", arg: 4, scope: !1629, file: !1523, line: 90, type: !14)
!1636 = !DILocalVariable(name: "s27", arg: 5, scope: !1629, file: !1523, line: 90, type: !14)
!1637 = !DILocalVariable(name: "s28", arg: 6, scope: !1629, file: !1523, line: 90, type: !14)
!1638 = !DILocation(line: 90, column: 41, scope: !1629, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 111, column: 16, scope: !1640, inlinedAt: !1620)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !1523, line: 108, column: 11)
!1641 = distinct !DILexicalBlock(scope: !1626, file: !1523, line: 107, column: 5)
!1642 = !DILocation(line: 90, column: 70, scope: !1629, inlinedAt: !1639)
!1643 = !DILocation(line: 90, column: 80, scope: !1629, inlinedAt: !1639)
!1644 = !DILocation(line: 92, column: 7, scope: !1645, inlinedAt: !1639)
!1645 = distinct !DILexicalBlock(scope: !1629, file: !1523, line: 92, column: 7)
!1646 = !DILocation(line: 92, column: 7, scope: !1629, inlinedAt: !1639)
!1647 = !DILocation(line: 227, column: 12, scope: !1539)
!1648 = !DILocation(line: 227, column: 21, scope: !1539)
!1649 = !DILocation(line: 227, column: 5, scope: !1539)
!1650 = !DILocation(line: 146, column: 41, scope: !1545, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 167, column: 16, scope: !1560, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 228, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1504, file: !149, line: 228, column: 7)
!1654 = !DILocation(line: 146, column: 110, scope: !1545, inlinedAt: !1651)
!1655 = !DILocation(line: 146, column: 120, scope: !1545, inlinedAt: !1651)
!1656 = !DILocation(line: 148, column: 7, scope: !1565, inlinedAt: !1651)
!1657 = !DILocation(line: 132, column: 41, scope: !1567, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 153, column: 16, scope: !1581, inlinedAt: !1651)
!1659 = !DILocation(line: 132, column: 100, scope: !1567, inlinedAt: !1658)
!1660 = !DILocation(line: 132, column: 110, scope: !1567, inlinedAt: !1658)
!1661 = !DILocation(line: 134, column: 7, scope: !1586, inlinedAt: !1658)
!1662 = !DILocation(line: 134, column: 7, scope: !1567, inlinedAt: !1658)
!1663 = !DILocation(line: 118, column: 41, scope: !1588, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 139, column: 16, scope: !1601, inlinedAt: !1658)
!1665 = !DILocation(line: 118, column: 90, scope: !1588, inlinedAt: !1664)
!1666 = !DILocation(line: 118, column: 100, scope: !1588, inlinedAt: !1664)
!1667 = !DILocation(line: 120, column: 7, scope: !1606, inlinedAt: !1664)
!1668 = !DILocation(line: 120, column: 7, scope: !1588, inlinedAt: !1664)
!1669 = !DILocation(line: 104, column: 41, scope: !1609, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 125, column: 16, scope: !1621, inlinedAt: !1664)
!1671 = !DILocation(line: 104, column: 80, scope: !1609, inlinedAt: !1670)
!1672 = !DILocation(line: 104, column: 90, scope: !1609, inlinedAt: !1670)
!1673 = !DILocation(line: 106, column: 7, scope: !1626, inlinedAt: !1670)
!1674 = !DILocation(line: 106, column: 7, scope: !1609, inlinedAt: !1670)
!1675 = !DILocation(line: 90, column: 41, scope: !1629, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 111, column: 16, scope: !1640, inlinedAt: !1670)
!1677 = !DILocation(line: 90, column: 70, scope: !1629, inlinedAt: !1676)
!1678 = !DILocation(line: 90, column: 80, scope: !1629, inlinedAt: !1676)
!1679 = !DILocation(line: 92, column: 7, scope: !1645, inlinedAt: !1676)
!1680 = !DILocation(line: 92, column: 7, scope: !1629, inlinedAt: !1676)
!1681 = !DILocalVariable(name: "s2", arg: 2, scope: !1682, file: !1523, line: 76, type: !46)
!1682 = distinct !DISubprogram(name: "strcaseeq6", scope: !1523, file: !1523, line: 76, type: !1683, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!22, !46, !46, !14, !14, !14}
!1685 = !{!1686, !1681, !1687, !1688, !1689}
!1686 = !DILocalVariable(name: "s1", arg: 1, scope: !1682, file: !1523, line: 76, type: !46)
!1687 = !DILocalVariable(name: "s26", arg: 3, scope: !1682, file: !1523, line: 76, type: !14)
!1688 = !DILocalVariable(name: "s27", arg: 4, scope: !1682, file: !1523, line: 76, type: !14)
!1689 = !DILocalVariable(name: "s28", arg: 5, scope: !1682, file: !1523, line: 76, type: !14)
!1690 = !DILocation(line: 76, column: 41, scope: !1682, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 97, column: 16, scope: !1692, inlinedAt: !1676)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !1523, line: 94, column: 11)
!1693 = distinct !DILexicalBlock(scope: !1645, file: !1523, line: 93, column: 5)
!1694 = !DILocation(line: 76, column: 60, scope: !1682, inlinedAt: !1691)
!1695 = !DILocation(line: 76, column: 70, scope: !1682, inlinedAt: !1691)
!1696 = !DILocation(line: 78, column: 7, scope: !1697, inlinedAt: !1691)
!1697 = distinct !DILexicalBlock(scope: !1682, file: !1523, line: 78, column: 7)
!1698 = !DILocation(line: 78, column: 7, scope: !1682, inlinedAt: !1691)
!1699 = !DILocalVariable(name: "s2", arg: 2, scope: !1700, file: !1523, line: 62, type: !46)
!1700 = distinct !DISubprogram(name: "strcaseeq7", scope: !1523, file: !1523, line: 62, type: !1701, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!22, !46, !46, !14, !14}
!1703 = !{!1704, !1699, !1705, !1706}
!1704 = !DILocalVariable(name: "s1", arg: 1, scope: !1700, file: !1523, line: 62, type: !46)
!1705 = !DILocalVariable(name: "s27", arg: 3, scope: !1700, file: !1523, line: 62, type: !14)
!1706 = !DILocalVariable(name: "s28", arg: 4, scope: !1700, file: !1523, line: 62, type: !14)
!1707 = !DILocation(line: 62, column: 41, scope: !1700, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 83, column: 16, scope: !1709, inlinedAt: !1691)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !1523, line: 80, column: 11)
!1710 = distinct !DILexicalBlock(scope: !1697, file: !1523, line: 79, column: 5)
!1711 = !DILocation(line: 62, column: 50, scope: !1700, inlinedAt: !1708)
!1712 = !DILocation(line: 62, column: 60, scope: !1700, inlinedAt: !1708)
!1713 = !DILocation(line: 64, column: 7, scope: !1714, inlinedAt: !1708)
!1714 = distinct !DILexicalBlock(scope: !1700, file: !1523, line: 64, column: 7)
!1715 = !DILocation(line: 228, column: 7, scope: !1504)
!1716 = !DILocation(line: 229, column: 12, scope: !1653)
!1717 = !DILocation(line: 229, column: 21, scope: !1653)
!1718 = !DILocation(line: 229, column: 5, scope: !1653)
!1719 = !DILocation(line: 231, column: 13, scope: !1504)
!1720 = !DILocation(line: 231, column: 11, scope: !1504)
!1721 = !DILocation(line: 231, column: 3, scope: !1504)
!1722 = !DILocation(line: 232, column: 1, scope: !1504)
!1723 = distinct !DISubprogram(name: "quotearg_alloc", scope: !149, file: !149, line: 791, type: !1724, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!13, !46, !143, !848}
!1726 = !{!1727, !1728, !1729}
!1727 = !DILocalVariable(name: "arg", arg: 1, scope: !1723, file: !149, line: 791, type: !46)
!1728 = !DILocalVariable(name: "argsize", arg: 2, scope: !1723, file: !149, line: 791, type: !143)
!1729 = !DILocalVariable(name: "o", arg: 3, scope: !1723, file: !149, line: 792, type: !848)
!1730 = !DILocation(line: 791, column: 29, scope: !1723)
!1731 = !DILocation(line: 791, column: 41, scope: !1723)
!1732 = !DILocation(line: 792, column: 47, scope: !1723)
!1733 = !DILocalVariable(name: "arg", arg: 1, scope: !1734, file: !149, line: 804, type: !46)
!1734 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !149, file: !149, line: 804, type: !1735, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1737)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!13, !46, !143, !563, !848}
!1737 = !{!1733, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745}
!1738 = !DILocalVariable(name: "argsize", arg: 2, scope: !1734, file: !149, line: 804, type: !143)
!1739 = !DILocalVariable(name: "size", arg: 3, scope: !1734, file: !149, line: 804, type: !563)
!1740 = !DILocalVariable(name: "o", arg: 4, scope: !1734, file: !149, line: 805, type: !848)
!1741 = !DILocalVariable(name: "p", scope: !1734, file: !149, line: 807, type: !848)
!1742 = !DILocalVariable(name: "e", scope: !1734, file: !149, line: 808, type: !22)
!1743 = !DILocalVariable(name: "flags", scope: !1734, file: !149, line: 810, type: !22)
!1744 = !DILocalVariable(name: "bufsize", scope: !1734, file: !149, line: 811, type: !143)
!1745 = !DILocalVariable(name: "buf", scope: !1734, file: !149, line: 815, type: !13)
!1746 = !DILocation(line: 804, column: 33, scope: !1734, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 794, column: 10, scope: !1723)
!1748 = !DILocation(line: 804, column: 45, scope: !1734, inlinedAt: !1747)
!1749 = !DILocation(line: 804, column: 62, scope: !1734, inlinedAt: !1747)
!1750 = !DILocation(line: 805, column: 51, scope: !1734, inlinedAt: !1747)
!1751 = !DILocation(line: 807, column: 37, scope: !1734, inlinedAt: !1747)
!1752 = !DILocation(line: 807, column: 33, scope: !1734, inlinedAt: !1747)
!1753 = !DILocation(line: 808, column: 11, scope: !1734, inlinedAt: !1747)
!1754 = !DILocation(line: 808, column: 7, scope: !1734, inlinedAt: !1747)
!1755 = !DILocation(line: 810, column: 18, scope: !1734, inlinedAt: !1747)
!1756 = !DILocation(line: 810, column: 24, scope: !1734, inlinedAt: !1747)
!1757 = !DILocation(line: 810, column: 7, scope: !1734, inlinedAt: !1747)
!1758 = !DILocation(line: 811, column: 69, scope: !1734, inlinedAt: !1747)
!1759 = !DILocation(line: 812, column: 53, scope: !1734, inlinedAt: !1747)
!1760 = !DILocation(line: 813, column: 49, scope: !1734, inlinedAt: !1747)
!1761 = !DILocation(line: 814, column: 49, scope: !1734, inlinedAt: !1747)
!1762 = !DILocation(line: 811, column: 20, scope: !1734, inlinedAt: !1747)
!1763 = !DILocation(line: 814, column: 62, scope: !1734, inlinedAt: !1747)
!1764 = !DILocation(line: 811, column: 10, scope: !1734, inlinedAt: !1747)
!1765 = !DILocalVariable(name: "n", arg: 1, scope: !1766, file: !559, line: 220, type: !143)
!1766 = distinct !DISubprogram(name: "xcharalloc", scope: !559, file: !559, line: 220, type: !1767, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!13, !143}
!1769 = !{!1765}
!1770 = !DILocation(line: 220, column: 20, scope: !1766, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 815, column: 15, scope: !1734, inlinedAt: !1747)
!1772 = !DILocation(line: 222, column: 10, scope: !1766, inlinedAt: !1771)
!1773 = !DILocation(line: 815, column: 9, scope: !1734, inlinedAt: !1747)
!1774 = !DILocation(line: 816, column: 60, scope: !1734, inlinedAt: !1747)
!1775 = !DILocation(line: 818, column: 32, scope: !1734, inlinedAt: !1747)
!1776 = !DILocation(line: 818, column: 47, scope: !1734, inlinedAt: !1747)
!1777 = !DILocation(line: 816, column: 3, scope: !1734, inlinedAt: !1747)
!1778 = !DILocation(line: 819, column: 9, scope: !1734, inlinedAt: !1747)
!1779 = !DILocation(line: 794, column: 3, scope: !1723)
!1780 = !DILocation(line: 804, column: 33, scope: !1734)
!1781 = !DILocation(line: 804, column: 45, scope: !1734)
!1782 = !DILocation(line: 804, column: 62, scope: !1734)
!1783 = !DILocation(line: 805, column: 51, scope: !1734)
!1784 = !DILocation(line: 807, column: 37, scope: !1734)
!1785 = !DILocation(line: 807, column: 33, scope: !1734)
!1786 = !DILocation(line: 808, column: 11, scope: !1734)
!1787 = !DILocation(line: 808, column: 7, scope: !1734)
!1788 = !DILocation(line: 810, column: 18, scope: !1734)
!1789 = !DILocation(line: 810, column: 27, scope: !1734)
!1790 = !DILocation(line: 810, column: 24, scope: !1734)
!1791 = !DILocation(line: 810, column: 7, scope: !1734)
!1792 = !DILocation(line: 811, column: 69, scope: !1734)
!1793 = !DILocation(line: 812, column: 53, scope: !1734)
!1794 = !DILocation(line: 813, column: 49, scope: !1734)
!1795 = !DILocation(line: 814, column: 49, scope: !1734)
!1796 = !DILocation(line: 811, column: 20, scope: !1734)
!1797 = !DILocation(line: 814, column: 62, scope: !1734)
!1798 = !DILocation(line: 811, column: 10, scope: !1734)
!1799 = !DILocation(line: 220, column: 20, scope: !1766, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 815, column: 15, scope: !1734)
!1801 = !DILocation(line: 222, column: 10, scope: !1766, inlinedAt: !1800)
!1802 = !DILocation(line: 815, column: 9, scope: !1734)
!1803 = !DILocation(line: 816, column: 60, scope: !1734)
!1804 = !DILocation(line: 818, column: 32, scope: !1734)
!1805 = !DILocation(line: 818, column: 47, scope: !1734)
!1806 = !DILocation(line: 816, column: 3, scope: !1734)
!1807 = !DILocation(line: 819, column: 9, scope: !1734)
!1808 = !DILocation(line: 820, column: 7, scope: !1734)
!1809 = !DILocation(line: 821, column: 11, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1734, file: !149, line: 820, column: 7)
!1811 = !{!1812, !1812, i64 0}
!1812 = !{!"long", !609, i64 0}
!1813 = !DILocation(line: 821, column: 5, scope: !1810)
!1814 = !DILocation(line: 822, column: 3, scope: !1734)
!1815 = distinct !DISubprogram(name: "quotearg_free", scope: !149, file: !149, line: 840, type: !616, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1816)
!1816 = !{!1817, !1818}
!1817 = !DILocalVariable(name: "sv", scope: !1815, file: !149, line: 842, type: !176)
!1818 = !DILocalVariable(name: "i", scope: !1815, file: !149, line: 843, type: !22)
!1819 = !DILocation(line: 842, column: 24, scope: !1815)
!1820 = !DILocation(line: 842, column: 19, scope: !1815)
!1821 = !DILocation(line: 843, column: 7, scope: !1815)
!1822 = !DILocation(line: 844, column: 19, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !149, line: 844, column: 3)
!1824 = distinct !DILexicalBlock(scope: !1815, file: !149, line: 844, column: 3)
!1825 = !DILocation(line: 844, column: 17, scope: !1823)
!1826 = !DILocation(line: 844, column: 3, scope: !1824)
!1827 = !DILocation(line: 845, column: 17, scope: !1823)
!1828 = !{!1829, !608, i64 8}
!1829 = !{!"slotvec", !1812, i64 0, !608, i64 8}
!1830 = !DILocation(line: 845, column: 5, scope: !1823)
!1831 = !DILocation(line: 844, column: 28, scope: !1823)
!1832 = distinct !{!1832, !1826, !1833}
!1833 = !DILocation(line: 845, column: 20, scope: !1824)
!1834 = !DILocation(line: 846, column: 13, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1815, file: !149, line: 846, column: 7)
!1836 = !DILocation(line: 846, column: 17, scope: !1835)
!1837 = !DILocation(line: 846, column: 7, scope: !1815)
!1838 = !DILocation(line: 848, column: 7, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !149, line: 847, column: 5)
!1840 = !DILocation(line: 849, column: 21, scope: !1839)
!1841 = !{!1829, !1812, i64 0}
!1842 = !DILocation(line: 850, column: 20, scope: !1839)
!1843 = !DILocation(line: 851, column: 5, scope: !1839)
!1844 = !DILocation(line: 852, column: 10, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1815, file: !149, line: 852, column: 7)
!1846 = !DILocation(line: 852, column: 7, scope: !1815)
!1847 = !DILocation(line: 854, column: 13, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !149, line: 853, column: 5)
!1849 = !DILocation(line: 854, column: 7, scope: !1848)
!1850 = !DILocation(line: 855, column: 15, scope: !1848)
!1851 = !DILocation(line: 856, column: 5, scope: !1848)
!1852 = !DILocation(line: 857, column: 10, scope: !1815)
!1853 = !DILocation(line: 858, column: 1, scope: !1815)
!1854 = distinct !DISubprogram(name: "quotearg_n", scope: !149, file: !149, line: 922, type: !1855, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1857)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!13, !22, !46}
!1857 = !{!1858, !1859}
!1858 = !DILocalVariable(name: "n", arg: 1, scope: !1854, file: !149, line: 922, type: !22)
!1859 = !DILocalVariable(name: "arg", arg: 2, scope: !1854, file: !149, line: 922, type: !46)
!1860 = !DILocation(line: 922, column: 17, scope: !1854)
!1861 = !DILocation(line: 922, column: 32, scope: !1854)
!1862 = !DILocation(line: 924, column: 10, scope: !1854)
!1863 = !DILocation(line: 924, column: 3, scope: !1854)
!1864 = distinct !DISubprogram(name: "quotearg_n_options", scope: !149, file: !149, line: 869, type: !1865, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1867)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!13, !22, !46, !143, !848}
!1867 = !{!1868, !1869, !1870, !1871, !1872, !1873, !1874, !1877, !1879, !1880, !1881}
!1868 = !DILocalVariable(name: "n", arg: 1, scope: !1864, file: !149, line: 869, type: !22)
!1869 = !DILocalVariable(name: "arg", arg: 2, scope: !1864, file: !149, line: 869, type: !46)
!1870 = !DILocalVariable(name: "argsize", arg: 3, scope: !1864, file: !149, line: 869, type: !143)
!1871 = !DILocalVariable(name: "options", arg: 4, scope: !1864, file: !149, line: 870, type: !848)
!1872 = !DILocalVariable(name: "e", scope: !1864, file: !149, line: 872, type: !22)
!1873 = !DILocalVariable(name: "sv", scope: !1864, file: !149, line: 874, type: !176)
!1874 = !DILocalVariable(name: "preallocated", scope: !1875, file: !149, line: 881, type: !29)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !149, line: 880, column: 5)
!1876 = distinct !DILexicalBlock(scope: !1864, file: !149, line: 879, column: 7)
!1877 = !DILocalVariable(name: "size", scope: !1878, file: !149, line: 894, type: !143)
!1878 = distinct !DILexicalBlock(scope: !1864, file: !149, line: 893, column: 3)
!1879 = !DILocalVariable(name: "val", scope: !1878, file: !149, line: 895, type: !13)
!1880 = !DILocalVariable(name: "flags", scope: !1878, file: !149, line: 897, type: !22)
!1881 = !DILocalVariable(name: "qsize", scope: !1878, file: !149, line: 898, type: !143)
!1882 = !DILocation(line: 869, column: 25, scope: !1864)
!1883 = !DILocation(line: 869, column: 40, scope: !1864)
!1884 = !DILocation(line: 869, column: 52, scope: !1864)
!1885 = !DILocation(line: 870, column: 51, scope: !1864)
!1886 = !DILocation(line: 872, column: 11, scope: !1864)
!1887 = !DILocation(line: 872, column: 7, scope: !1864)
!1888 = !DILocation(line: 874, column: 24, scope: !1864)
!1889 = !DILocation(line: 874, column: 19, scope: !1864)
!1890 = !DILocation(line: 876, column: 9, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1864, file: !149, line: 876, column: 7)
!1892 = !DILocation(line: 876, column: 7, scope: !1864)
!1893 = !DILocation(line: 877, column: 5, scope: !1891)
!1894 = !DILocation(line: 879, column: 7, scope: !1876)
!1895 = !DILocation(line: 879, column: 14, scope: !1876)
!1896 = !DILocation(line: 879, column: 7, scope: !1864)
!1897 = !DILocation(line: 881, column: 31, scope: !1875)
!1898 = !DILocation(line: 883, column: 67, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1875, file: !149, line: 883, column: 11)
!1900 = !DILocation(line: 883, column: 11, scope: !1875)
!1901 = !DILocation(line: 884, column: 9, scope: !1899)
!1902 = !DILocation(line: 886, column: 32, scope: !1875)
!1903 = !DILocation(line: 886, column: 61, scope: !1875)
!1904 = !DILocation(line: 886, column: 58, scope: !1875)
!1905 = !DILocation(line: 886, column: 66, scope: !1875)
!1906 = !DILocation(line: 886, column: 22, scope: !1875)
!1907 = !DILocation(line: 886, column: 15, scope: !1875)
!1908 = !DILocation(line: 887, column: 11, scope: !1875)
!1909 = !DILocation(line: 888, column: 15, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1875, file: !149, line: 887, column: 11)
!1911 = !{i64 0, i64 8, !1811, i64 8, i64 8, !607}
!1912 = !DILocation(line: 888, column: 9, scope: !1910)
!1913 = !DILocation(line: 889, column: 20, scope: !1875)
!1914 = !DILocation(line: 889, column: 18, scope: !1875)
!1915 = !DILocation(line: 889, column: 7, scope: !1875)
!1916 = !DILocation(line: 889, column: 38, scope: !1875)
!1917 = !DILocation(line: 889, column: 31, scope: !1875)
!1918 = !DILocation(line: 889, column: 48, scope: !1875)
!1919 = !DILocation(line: 890, column: 14, scope: !1875)
!1920 = !DILocation(line: 891, column: 5, scope: !1875)
!1921 = !DILocation(line: 894, column: 19, scope: !1878)
!1922 = !DILocation(line: 894, column: 25, scope: !1878)
!1923 = !DILocation(line: 894, column: 12, scope: !1878)
!1924 = !DILocation(line: 895, column: 23, scope: !1878)
!1925 = !DILocation(line: 895, column: 11, scope: !1878)
!1926 = !DILocation(line: 897, column: 26, scope: !1878)
!1927 = !DILocation(line: 897, column: 32, scope: !1878)
!1928 = !DILocation(line: 897, column: 9, scope: !1878)
!1929 = !DILocation(line: 899, column: 55, scope: !1878)
!1930 = !DILocation(line: 900, column: 46, scope: !1878)
!1931 = !DILocation(line: 901, column: 55, scope: !1878)
!1932 = !DILocation(line: 902, column: 55, scope: !1878)
!1933 = !DILocation(line: 898, column: 20, scope: !1878)
!1934 = !DILocation(line: 898, column: 12, scope: !1878)
!1935 = !DILocation(line: 904, column: 14, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1878, file: !149, line: 904, column: 9)
!1937 = !DILocation(line: 904, column: 9, scope: !1878)
!1938 = !DILocation(line: 906, column: 35, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !149, line: 905, column: 7)
!1940 = !DILocation(line: 906, column: 20, scope: !1939)
!1941 = !DILocation(line: 907, column: 17, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1939, file: !149, line: 907, column: 13)
!1943 = !DILocation(line: 907, column: 13, scope: !1939)
!1944 = !DILocation(line: 908, column: 11, scope: !1942)
!1945 = !DILocation(line: 220, column: 20, scope: !1766, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 909, column: 27, scope: !1939)
!1947 = !DILocation(line: 222, column: 10, scope: !1766, inlinedAt: !1946)
!1948 = !DILocation(line: 909, column: 19, scope: !1939)
!1949 = !DILocation(line: 910, column: 69, scope: !1939)
!1950 = !DILocation(line: 912, column: 44, scope: !1939)
!1951 = !DILocation(line: 913, column: 44, scope: !1939)
!1952 = !DILocation(line: 910, column: 9, scope: !1939)
!1953 = !DILocation(line: 914, column: 7, scope: !1939)
!1954 = !DILocation(line: 916, column: 11, scope: !1878)
!1955 = !DILocation(line: 917, column: 5, scope: !1878)
!1956 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !149, file: !149, line: 928, type: !1957, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!13, !22, !46, !143}
!1959 = !{!1960, !1961, !1962}
!1960 = !DILocalVariable(name: "n", arg: 1, scope: !1956, file: !149, line: 928, type: !22)
!1961 = !DILocalVariable(name: "arg", arg: 2, scope: !1956, file: !149, line: 928, type: !46)
!1962 = !DILocalVariable(name: "argsize", arg: 3, scope: !1956, file: !149, line: 928, type: !143)
!1963 = !DILocation(line: 928, column: 21, scope: !1956)
!1964 = !DILocation(line: 928, column: 36, scope: !1956)
!1965 = !DILocation(line: 928, column: 48, scope: !1956)
!1966 = !DILocation(line: 930, column: 10, scope: !1956)
!1967 = !DILocation(line: 930, column: 3, scope: !1956)
!1968 = distinct !DISubprogram(name: "quotearg", scope: !149, file: !149, line: 934, type: !1969, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!13, !46}
!1971 = !{!1972}
!1972 = !DILocalVariable(name: "arg", arg: 1, scope: !1968, file: !149, line: 934, type: !46)
!1973 = !DILocation(line: 934, column: 23, scope: !1968)
!1974 = !DILocation(line: 922, column: 17, scope: !1854, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 936, column: 10, scope: !1968)
!1976 = !DILocation(line: 922, column: 32, scope: !1854, inlinedAt: !1975)
!1977 = !DILocation(line: 924, column: 10, scope: !1854, inlinedAt: !1975)
!1978 = !DILocation(line: 936, column: 3, scope: !1968)
!1979 = distinct !DISubprogram(name: "quotearg_mem", scope: !149, file: !149, line: 940, type: !1980, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1982)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!13, !46, !143}
!1982 = !{!1983, !1984}
!1983 = !DILocalVariable(name: "arg", arg: 1, scope: !1979, file: !149, line: 940, type: !46)
!1984 = !DILocalVariable(name: "argsize", arg: 2, scope: !1979, file: !149, line: 940, type: !143)
!1985 = !DILocation(line: 940, column: 27, scope: !1979)
!1986 = !DILocation(line: 940, column: 39, scope: !1979)
!1987 = !DILocation(line: 928, column: 21, scope: !1956, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 942, column: 10, scope: !1979)
!1989 = !DILocation(line: 928, column: 36, scope: !1956, inlinedAt: !1988)
!1990 = !DILocation(line: 928, column: 48, scope: !1956, inlinedAt: !1988)
!1991 = !DILocation(line: 930, column: 10, scope: !1956, inlinedAt: !1988)
!1992 = !DILocation(line: 942, column: 3, scope: !1979)
!1993 = distinct !DISubprogram(name: "quotearg_n_style", scope: !149, file: !149, line: 946, type: !1994, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !1996)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!13, !22, !107, !46}
!1996 = !{!1997, !1998, !1999, !2000}
!1997 = !DILocalVariable(name: "n", arg: 1, scope: !1993, file: !149, line: 946, type: !22)
!1998 = !DILocalVariable(name: "s", arg: 2, scope: !1993, file: !149, line: 946, type: !107)
!1999 = !DILocalVariable(name: "arg", arg: 3, scope: !1993, file: !149, line: 946, type: !46)
!2000 = !DILocalVariable(name: "o", scope: !1993, file: !149, line: 948, type: !849)
!2001 = !DILocalVariable(name: "o", scope: !2002, file: !149, line: 187, type: !156)
!2002 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !149, file: !149, line: 185, type: !2003, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!156, !107}
!2005 = !{!2006, !2001}
!2006 = !DILocalVariable(name: "style", arg: 1, scope: !2002, file: !149, line: 185, type: !107)
!2007 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2008 = !DILocation(line: 187, column: 26, scope: !2002, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 948, column: 36, scope: !1993)
!2010 = !DILocation(line: 946, column: 23, scope: !1993)
!2011 = !DILocation(line: 946, column: 45, scope: !1993)
!2012 = !DILocation(line: 946, column: 60, scope: !1993)
!2013 = !DILocation(line: 948, column: 3, scope: !1993)
!2014 = !DILocation(line: 948, column: 32, scope: !1993)
!2015 = !DILocation(line: 185, column: 48, scope: !2002, inlinedAt: !2009)
!2016 = !DILocation(line: 187, column: 3, scope: !2002, inlinedAt: !2009)
!2017 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2018 = !DILocation(line: 188, column: 13, scope: !2019, inlinedAt: !2009)
!2019 = distinct !DILexicalBlock(scope: !2002, file: !149, line: 188, column: 7)
!2020 = !DILocation(line: 188, column: 7, scope: !2002, inlinedAt: !2009)
!2021 = !DILocation(line: 189, column: 5, scope: !2019, inlinedAt: !2009)
!2022 = !{!2023}
!2023 = distinct !{!2023, !2024, !"quoting_options_from_style: argument 0"}
!2024 = distinct !{!2024, !"quoting_options_from_style"}
!2025 = !DILocation(line: 191, column: 10, scope: !2002, inlinedAt: !2009)
!2026 = !DILocation(line: 192, column: 1, scope: !2002, inlinedAt: !2009)
!2027 = !DILocation(line: 949, column: 10, scope: !1993)
!2028 = !DILocation(line: 950, column: 1, scope: !1993)
!2029 = !DILocation(line: 949, column: 3, scope: !1993)
!2030 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !149, file: !149, line: 953, type: !2031, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2033)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!13, !22, !107, !46, !143}
!2033 = !{!2034, !2035, !2036, !2037, !2038}
!2034 = !DILocalVariable(name: "n", arg: 1, scope: !2030, file: !149, line: 953, type: !22)
!2035 = !DILocalVariable(name: "s", arg: 2, scope: !2030, file: !149, line: 953, type: !107)
!2036 = !DILocalVariable(name: "arg", arg: 3, scope: !2030, file: !149, line: 954, type: !46)
!2037 = !DILocalVariable(name: "argsize", arg: 4, scope: !2030, file: !149, line: 954, type: !143)
!2038 = !DILocalVariable(name: "o", scope: !2030, file: !149, line: 956, type: !849)
!2039 = !DILocation(line: 187, column: 26, scope: !2002, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 956, column: 36, scope: !2030)
!2041 = !DILocation(line: 953, column: 27, scope: !2030)
!2042 = !DILocation(line: 953, column: 49, scope: !2030)
!2043 = !DILocation(line: 954, column: 35, scope: !2030)
!2044 = !DILocation(line: 954, column: 47, scope: !2030)
!2045 = !DILocation(line: 956, column: 3, scope: !2030)
!2046 = !DILocation(line: 956, column: 32, scope: !2030)
!2047 = !DILocation(line: 185, column: 48, scope: !2002, inlinedAt: !2040)
!2048 = !DILocation(line: 187, column: 3, scope: !2002, inlinedAt: !2040)
!2049 = !DILocation(line: 188, column: 13, scope: !2019, inlinedAt: !2040)
!2050 = !DILocation(line: 188, column: 7, scope: !2002, inlinedAt: !2040)
!2051 = !DILocation(line: 189, column: 5, scope: !2019, inlinedAt: !2040)
!2052 = !{!2053}
!2053 = distinct !{!2053, !2054, !"quoting_options_from_style: argument 0"}
!2054 = distinct !{!2054, !"quoting_options_from_style"}
!2055 = !DILocation(line: 191, column: 10, scope: !2002, inlinedAt: !2040)
!2056 = !DILocation(line: 192, column: 1, scope: !2002, inlinedAt: !2040)
!2057 = !DILocation(line: 957, column: 10, scope: !2030)
!2058 = !DILocation(line: 958, column: 1, scope: !2030)
!2059 = !DILocation(line: 957, column: 3, scope: !2030)
!2060 = distinct !DISubprogram(name: "quotearg_style", scope: !149, file: !149, line: 961, type: !2061, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!13, !107, !46}
!2063 = !{!2064, !2065}
!2064 = !DILocalVariable(name: "s", arg: 1, scope: !2060, file: !149, line: 961, type: !107)
!2065 = !DILocalVariable(name: "arg", arg: 2, scope: !2060, file: !149, line: 961, type: !46)
!2066 = !DILocation(line: 187, column: 26, scope: !2002, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 948, column: 36, scope: !1993, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 963, column: 10, scope: !2060)
!2069 = !DILocation(line: 961, column: 36, scope: !2060)
!2070 = !DILocation(line: 961, column: 51, scope: !2060)
!2071 = !DILocation(line: 946, column: 23, scope: !1993, inlinedAt: !2068)
!2072 = !DILocation(line: 946, column: 45, scope: !1993, inlinedAt: !2068)
!2073 = !DILocation(line: 946, column: 60, scope: !1993, inlinedAt: !2068)
!2074 = !DILocation(line: 948, column: 3, scope: !1993, inlinedAt: !2068)
!2075 = !DILocation(line: 948, column: 32, scope: !1993, inlinedAt: !2068)
!2076 = !DILocation(line: 185, column: 48, scope: !2002, inlinedAt: !2067)
!2077 = !DILocation(line: 187, column: 3, scope: !2002, inlinedAt: !2067)
!2078 = !DILocation(line: 188, column: 13, scope: !2019, inlinedAt: !2067)
!2079 = !DILocation(line: 188, column: 7, scope: !2002, inlinedAt: !2067)
!2080 = !DILocation(line: 189, column: 5, scope: !2019, inlinedAt: !2067)
!2081 = !{!2082}
!2082 = distinct !{!2082, !2083, !"quoting_options_from_style: argument 0"}
!2083 = distinct !{!2083, !"quoting_options_from_style"}
!2084 = !DILocation(line: 191, column: 10, scope: !2002, inlinedAt: !2067)
!2085 = !DILocation(line: 192, column: 1, scope: !2002, inlinedAt: !2067)
!2086 = !DILocation(line: 949, column: 10, scope: !1993, inlinedAt: !2068)
!2087 = !DILocation(line: 950, column: 1, scope: !1993, inlinedAt: !2068)
!2088 = !DILocation(line: 963, column: 3, scope: !2060)
!2089 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !149, file: !149, line: 967, type: !2090, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!13, !107, !46, !143}
!2092 = !{!2093, !2094, !2095}
!2093 = !DILocalVariable(name: "s", arg: 1, scope: !2089, file: !149, line: 967, type: !107)
!2094 = !DILocalVariable(name: "arg", arg: 2, scope: !2089, file: !149, line: 967, type: !46)
!2095 = !DILocalVariable(name: "argsize", arg: 3, scope: !2089, file: !149, line: 967, type: !143)
!2096 = !DILocation(line: 187, column: 26, scope: !2002, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 956, column: 36, scope: !2030, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 969, column: 10, scope: !2089)
!2099 = !DILocation(line: 967, column: 40, scope: !2089)
!2100 = !DILocation(line: 967, column: 55, scope: !2089)
!2101 = !DILocation(line: 967, column: 67, scope: !2089)
!2102 = !DILocation(line: 953, column: 27, scope: !2030, inlinedAt: !2098)
!2103 = !DILocation(line: 953, column: 49, scope: !2030, inlinedAt: !2098)
!2104 = !DILocation(line: 954, column: 35, scope: !2030, inlinedAt: !2098)
!2105 = !DILocation(line: 954, column: 47, scope: !2030, inlinedAt: !2098)
!2106 = !DILocation(line: 956, column: 3, scope: !2030, inlinedAt: !2098)
!2107 = !DILocation(line: 956, column: 32, scope: !2030, inlinedAt: !2098)
!2108 = !DILocation(line: 185, column: 48, scope: !2002, inlinedAt: !2097)
!2109 = !DILocation(line: 187, column: 3, scope: !2002, inlinedAt: !2097)
!2110 = !DILocation(line: 188, column: 13, scope: !2019, inlinedAt: !2097)
!2111 = !DILocation(line: 188, column: 7, scope: !2002, inlinedAt: !2097)
!2112 = !DILocation(line: 189, column: 5, scope: !2019, inlinedAt: !2097)
!2113 = !{!2114}
!2114 = distinct !{!2114, !2115, !"quoting_options_from_style: argument 0"}
!2115 = distinct !{!2115, !"quoting_options_from_style"}
!2116 = !DILocation(line: 191, column: 10, scope: !2002, inlinedAt: !2097)
!2117 = !DILocation(line: 192, column: 1, scope: !2002, inlinedAt: !2097)
!2118 = !DILocation(line: 957, column: 10, scope: !2030, inlinedAt: !2098)
!2119 = !DILocation(line: 958, column: 1, scope: !2030, inlinedAt: !2098)
!2120 = !DILocation(line: 969, column: 3, scope: !2089)
!2121 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !149, file: !149, line: 973, type: !2122, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!13, !46, !143, !14}
!2124 = !{!2125, !2126, !2127, !2128}
!2125 = !DILocalVariable(name: "arg", arg: 1, scope: !2121, file: !149, line: 973, type: !46)
!2126 = !DILocalVariable(name: "argsize", arg: 2, scope: !2121, file: !149, line: 973, type: !143)
!2127 = !DILocalVariable(name: "ch", arg: 3, scope: !2121, file: !149, line: 973, type: !14)
!2128 = !DILocalVariable(name: "options", scope: !2121, file: !149, line: 975, type: !156)
!2129 = !DILocation(line: 973, column: 32, scope: !2121)
!2130 = !DILocation(line: 973, column: 44, scope: !2121)
!2131 = !DILocation(line: 973, column: 58, scope: !2121)
!2132 = !DILocation(line: 975, column: 3, scope: !2121)
!2133 = !DILocation(line: 976, column: 13, scope: !2121)
!2134 = !{i64 0, i64 4, !712, i64 4, i64 4, !655, i64 8, i64 32, !712, i64 40, i64 8, !607, i64 48, i64 8, !607}
!2135 = !DILocation(line: 975, column: 26, scope: !2121)
!2136 = !DILocation(line: 144, column: 43, scope: !870, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 977, column: 3, scope: !2121)
!2138 = !DILocation(line: 144, column: 51, scope: !870, inlinedAt: !2137)
!2139 = !DILocation(line: 144, column: 58, scope: !870, inlinedAt: !2137)
!2140 = !DILocation(line: 146, column: 17, scope: !870, inlinedAt: !2137)
!2141 = !DILocation(line: 148, column: 62, scope: !870, inlinedAt: !2137)
!2142 = !DILocation(line: 148, column: 57, scope: !870, inlinedAt: !2137)
!2143 = !DILocation(line: 147, column: 17, scope: !870, inlinedAt: !2137)
!2144 = !DILocation(line: 149, column: 18, scope: !870, inlinedAt: !2137)
!2145 = !DILocation(line: 149, column: 15, scope: !870, inlinedAt: !2137)
!2146 = !DILocation(line: 149, column: 7, scope: !870, inlinedAt: !2137)
!2147 = !DILocation(line: 150, column: 12, scope: !870, inlinedAt: !2137)
!2148 = !DILocation(line: 150, column: 15, scope: !870, inlinedAt: !2137)
!2149 = !DILocation(line: 150, column: 25, scope: !870, inlinedAt: !2137)
!2150 = !DILocation(line: 150, column: 7, scope: !870, inlinedAt: !2137)
!2151 = !DILocation(line: 151, column: 18, scope: !870, inlinedAt: !2137)
!2152 = !DILocation(line: 151, column: 23, scope: !870, inlinedAt: !2137)
!2153 = !DILocation(line: 151, column: 6, scope: !870, inlinedAt: !2137)
!2154 = !DILocation(line: 978, column: 10, scope: !2121)
!2155 = !DILocation(line: 979, column: 1, scope: !2121)
!2156 = !DILocation(line: 978, column: 3, scope: !2121)
!2157 = distinct !DISubprogram(name: "quotearg_char", scope: !149, file: !149, line: 982, type: !2158, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!13, !46, !14}
!2160 = !{!2161, !2162}
!2161 = !DILocalVariable(name: "arg", arg: 1, scope: !2157, file: !149, line: 982, type: !46)
!2162 = !DILocalVariable(name: "ch", arg: 2, scope: !2157, file: !149, line: 982, type: !14)
!2163 = !DILocation(line: 982, column: 28, scope: !2157)
!2164 = !DILocation(line: 982, column: 38, scope: !2157)
!2165 = !DILocation(line: 973, column: 32, scope: !2121, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 984, column: 10, scope: !2157)
!2167 = !DILocation(line: 973, column: 44, scope: !2121, inlinedAt: !2166)
!2168 = !DILocation(line: 973, column: 58, scope: !2121, inlinedAt: !2166)
!2169 = !DILocation(line: 975, column: 3, scope: !2121, inlinedAt: !2166)
!2170 = !DILocation(line: 976, column: 13, scope: !2121, inlinedAt: !2166)
!2171 = !DILocation(line: 975, column: 26, scope: !2121, inlinedAt: !2166)
!2172 = !DILocation(line: 144, column: 43, scope: !870, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 977, column: 3, scope: !2121, inlinedAt: !2166)
!2174 = !DILocation(line: 144, column: 51, scope: !870, inlinedAt: !2173)
!2175 = !DILocation(line: 144, column: 58, scope: !870, inlinedAt: !2173)
!2176 = !DILocation(line: 146, column: 17, scope: !870, inlinedAt: !2173)
!2177 = !DILocation(line: 148, column: 62, scope: !870, inlinedAt: !2173)
!2178 = !DILocation(line: 148, column: 57, scope: !870, inlinedAt: !2173)
!2179 = !DILocation(line: 147, column: 17, scope: !870, inlinedAt: !2173)
!2180 = !DILocation(line: 149, column: 18, scope: !870, inlinedAt: !2173)
!2181 = !DILocation(line: 149, column: 15, scope: !870, inlinedAt: !2173)
!2182 = !DILocation(line: 149, column: 7, scope: !870, inlinedAt: !2173)
!2183 = !DILocation(line: 150, column: 12, scope: !870, inlinedAt: !2173)
!2184 = !DILocation(line: 150, column: 15, scope: !870, inlinedAt: !2173)
!2185 = !DILocation(line: 150, column: 25, scope: !870, inlinedAt: !2173)
!2186 = !DILocation(line: 150, column: 7, scope: !870, inlinedAt: !2173)
!2187 = !DILocation(line: 151, column: 18, scope: !870, inlinedAt: !2173)
!2188 = !DILocation(line: 151, column: 23, scope: !870, inlinedAt: !2173)
!2189 = !DILocation(line: 151, column: 6, scope: !870, inlinedAt: !2173)
!2190 = !DILocation(line: 978, column: 10, scope: !2121, inlinedAt: !2166)
!2191 = !DILocation(line: 979, column: 1, scope: !2121, inlinedAt: !2166)
!2192 = !DILocation(line: 984, column: 3, scope: !2157)
!2193 = distinct !DISubprogram(name: "quotearg_colon", scope: !149, file: !149, line: 988, type: !1969, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2194)
!2194 = !{!2195}
!2195 = !DILocalVariable(name: "arg", arg: 1, scope: !2193, file: !149, line: 988, type: !46)
!2196 = !DILocation(line: 988, column: 29, scope: !2193)
!2197 = !DILocation(line: 982, column: 28, scope: !2157, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 990, column: 10, scope: !2193)
!2199 = !DILocation(line: 982, column: 38, scope: !2157, inlinedAt: !2198)
!2200 = !DILocation(line: 973, column: 32, scope: !2121, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 984, column: 10, scope: !2157, inlinedAt: !2198)
!2202 = !DILocation(line: 973, column: 44, scope: !2121, inlinedAt: !2201)
!2203 = !DILocation(line: 973, column: 58, scope: !2121, inlinedAt: !2201)
!2204 = !DILocation(line: 975, column: 3, scope: !2121, inlinedAt: !2201)
!2205 = !DILocation(line: 976, column: 13, scope: !2121, inlinedAt: !2201)
!2206 = !DILocation(line: 975, column: 26, scope: !2121, inlinedAt: !2201)
!2207 = !DILocation(line: 144, column: 43, scope: !870, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 977, column: 3, scope: !2121, inlinedAt: !2201)
!2209 = !DILocation(line: 144, column: 51, scope: !870, inlinedAt: !2208)
!2210 = !DILocation(line: 144, column: 58, scope: !870, inlinedAt: !2208)
!2211 = !DILocation(line: 146, column: 17, scope: !870, inlinedAt: !2208)
!2212 = !DILocation(line: 148, column: 57, scope: !870, inlinedAt: !2208)
!2213 = !DILocation(line: 147, column: 17, scope: !870, inlinedAt: !2208)
!2214 = !DILocation(line: 149, column: 7, scope: !870, inlinedAt: !2208)
!2215 = !DILocation(line: 150, column: 12, scope: !870, inlinedAt: !2208)
!2216 = !DILocation(line: 151, column: 6, scope: !870, inlinedAt: !2208)
!2217 = !DILocation(line: 978, column: 10, scope: !2121, inlinedAt: !2201)
!2218 = !DILocation(line: 979, column: 1, scope: !2121, inlinedAt: !2201)
!2219 = !DILocation(line: 990, column: 3, scope: !2193)
!2220 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !149, file: !149, line: 994, type: !1980, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2221)
!2221 = !{!2222, !2223}
!2222 = !DILocalVariable(name: "arg", arg: 1, scope: !2220, file: !149, line: 994, type: !46)
!2223 = !DILocalVariable(name: "argsize", arg: 2, scope: !2220, file: !149, line: 994, type: !143)
!2224 = !DILocation(line: 994, column: 33, scope: !2220)
!2225 = !DILocation(line: 994, column: 45, scope: !2220)
!2226 = !DILocation(line: 973, column: 32, scope: !2121, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 996, column: 10, scope: !2220)
!2228 = !DILocation(line: 973, column: 44, scope: !2121, inlinedAt: !2227)
!2229 = !DILocation(line: 973, column: 58, scope: !2121, inlinedAt: !2227)
!2230 = !DILocation(line: 975, column: 3, scope: !2121, inlinedAt: !2227)
!2231 = !DILocation(line: 976, column: 13, scope: !2121, inlinedAt: !2227)
!2232 = !DILocation(line: 975, column: 26, scope: !2121, inlinedAt: !2227)
!2233 = !DILocation(line: 144, column: 43, scope: !870, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 977, column: 3, scope: !2121, inlinedAt: !2227)
!2235 = !DILocation(line: 144, column: 51, scope: !870, inlinedAt: !2234)
!2236 = !DILocation(line: 144, column: 58, scope: !870, inlinedAt: !2234)
!2237 = !DILocation(line: 146, column: 17, scope: !870, inlinedAt: !2234)
!2238 = !DILocation(line: 148, column: 57, scope: !870, inlinedAt: !2234)
!2239 = !DILocation(line: 147, column: 17, scope: !870, inlinedAt: !2234)
!2240 = !DILocation(line: 149, column: 7, scope: !870, inlinedAt: !2234)
!2241 = !DILocation(line: 150, column: 12, scope: !870, inlinedAt: !2234)
!2242 = !DILocation(line: 151, column: 6, scope: !870, inlinedAt: !2234)
!2243 = !DILocation(line: 978, column: 10, scope: !2121, inlinedAt: !2227)
!2244 = !DILocation(line: 979, column: 1, scope: !2121, inlinedAt: !2227)
!2245 = !DILocation(line: 996, column: 3, scope: !2220)
!2246 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !149, file: !149, line: 1000, type: !1994, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2247)
!2247 = !{!2248, !2249, !2250, !2251}
!2248 = !DILocalVariable(name: "n", arg: 1, scope: !2246, file: !149, line: 1000, type: !22)
!2249 = !DILocalVariable(name: "s", arg: 2, scope: !2246, file: !149, line: 1000, type: !107)
!2250 = !DILocalVariable(name: "arg", arg: 3, scope: !2246, file: !149, line: 1000, type: !46)
!2251 = !DILocalVariable(name: "options", scope: !2246, file: !149, line: 1002, type: !156)
!2252 = !DILocation(line: 187, column: 26, scope: !2002, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 1003, column: 13, scope: !2246)
!2254 = !DILocation(line: 1000, column: 29, scope: !2246)
!2255 = !DILocation(line: 1000, column: 51, scope: !2246)
!2256 = !DILocation(line: 1000, column: 66, scope: !2246)
!2257 = !DILocation(line: 1002, column: 3, scope: !2246)
!2258 = !DILocation(line: 185, column: 48, scope: !2002, inlinedAt: !2253)
!2259 = !DILocation(line: 187, column: 3, scope: !2002, inlinedAt: !2253)
!2260 = !DILocation(line: 188, column: 13, scope: !2019, inlinedAt: !2253)
!2261 = !DILocation(line: 188, column: 7, scope: !2002, inlinedAt: !2253)
!2262 = !DILocation(line: 189, column: 5, scope: !2019, inlinedAt: !2253)
!2263 = !{!2264}
!2264 = distinct !{!2264, !2265, !"quoting_options_from_style: argument 0"}
!2265 = distinct !{!2265, !"quoting_options_from_style"}
!2266 = !DILocation(line: 191, column: 10, scope: !2002, inlinedAt: !2253)
!2267 = !DILocation(line: 192, column: 1, scope: !2002, inlinedAt: !2253)
!2268 = !DILocation(line: 1003, column: 13, scope: !2246)
!2269 = !DILocation(line: 1002, column: 26, scope: !2246)
!2270 = !DILocation(line: 144, column: 43, scope: !870, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 1004, column: 3, scope: !2246)
!2272 = !DILocation(line: 144, column: 51, scope: !870, inlinedAt: !2271)
!2273 = !DILocation(line: 144, column: 58, scope: !870, inlinedAt: !2271)
!2274 = !DILocation(line: 146, column: 17, scope: !870, inlinedAt: !2271)
!2275 = !DILocation(line: 148, column: 57, scope: !870, inlinedAt: !2271)
!2276 = !DILocation(line: 147, column: 17, scope: !870, inlinedAt: !2271)
!2277 = !DILocation(line: 149, column: 7, scope: !870, inlinedAt: !2271)
!2278 = !DILocation(line: 150, column: 12, scope: !870, inlinedAt: !2271)
!2279 = !DILocation(line: 151, column: 6, scope: !870, inlinedAt: !2271)
!2280 = !DILocation(line: 1005, column: 10, scope: !2246)
!2281 = !DILocation(line: 1006, column: 1, scope: !2246)
!2282 = !DILocation(line: 1005, column: 3, scope: !2246)
!2283 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !149, file: !149, line: 1009, type: !2284, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!13, !22, !46, !46, !46}
!2286 = !{!2287, !2288, !2289, !2290}
!2287 = !DILocalVariable(name: "n", arg: 1, scope: !2283, file: !149, line: 1009, type: !22)
!2288 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2283, file: !149, line: 1009, type: !46)
!2289 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2283, file: !149, line: 1010, type: !46)
!2290 = !DILocalVariable(name: "arg", arg: 4, scope: !2283, file: !149, line: 1010, type: !46)
!2291 = !DILocation(line: 1009, column: 24, scope: !2283)
!2292 = !DILocation(line: 1009, column: 39, scope: !2283)
!2293 = !DILocation(line: 1010, column: 32, scope: !2283)
!2294 = !DILocation(line: 1010, column: 57, scope: !2283)
!2295 = !DILocalVariable(name: "n", arg: 1, scope: !2296, file: !149, line: 1017, type: !22)
!2296 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !149, file: !149, line: 1017, type: !2297, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!13, !22, !46, !46, !46, !143}
!2299 = !{!2295, !2300, !2301, !2302, !2303, !2304}
!2300 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2296, file: !149, line: 1017, type: !46)
!2301 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2296, file: !149, line: 1018, type: !46)
!2302 = !DILocalVariable(name: "arg", arg: 4, scope: !2296, file: !149, line: 1019, type: !46)
!2303 = !DILocalVariable(name: "argsize", arg: 5, scope: !2296, file: !149, line: 1019, type: !143)
!2304 = !DILocalVariable(name: "o", scope: !2296, file: !149, line: 1021, type: !156)
!2305 = !DILocation(line: 1017, column: 28, scope: !2296, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 1012, column: 10, scope: !2283)
!2307 = !DILocation(line: 1017, column: 43, scope: !2296, inlinedAt: !2306)
!2308 = !DILocation(line: 1018, column: 36, scope: !2296, inlinedAt: !2306)
!2309 = !DILocation(line: 1019, column: 36, scope: !2296, inlinedAt: !2306)
!2310 = !DILocation(line: 1019, column: 48, scope: !2296, inlinedAt: !2306)
!2311 = !DILocation(line: 1021, column: 3, scope: !2296, inlinedAt: !2306)
!2312 = !DILocation(line: 1021, column: 30, scope: !2296, inlinedAt: !2306)
!2313 = !DILocation(line: 1021, column: 26, scope: !2296, inlinedAt: !2306)
!2314 = !DILocation(line: 171, column: 45, scope: !919, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 1022, column: 3, scope: !2296, inlinedAt: !2306)
!2316 = !DILocation(line: 172, column: 33, scope: !919, inlinedAt: !2315)
!2317 = !DILocation(line: 172, column: 57, scope: !919, inlinedAt: !2315)
!2318 = !DILocation(line: 176, column: 6, scope: !919, inlinedAt: !2315)
!2319 = !DILocation(line: 176, column: 12, scope: !919, inlinedAt: !2315)
!2320 = !DILocation(line: 177, column: 8, scope: !935, inlinedAt: !2315)
!2321 = !DILocation(line: 177, column: 23, scope: !935, inlinedAt: !2315)
!2322 = !DILocation(line: 177, column: 19, scope: !935, inlinedAt: !2315)
!2323 = !DILocation(line: 178, column: 5, scope: !935, inlinedAt: !2315)
!2324 = !DILocation(line: 179, column: 6, scope: !919, inlinedAt: !2315)
!2325 = !DILocation(line: 179, column: 17, scope: !919, inlinedAt: !2315)
!2326 = !DILocation(line: 180, column: 6, scope: !919, inlinedAt: !2315)
!2327 = !DILocation(line: 180, column: 18, scope: !919, inlinedAt: !2315)
!2328 = !DILocation(line: 1023, column: 10, scope: !2296, inlinedAt: !2306)
!2329 = !DILocation(line: 1024, column: 1, scope: !2296, inlinedAt: !2306)
!2330 = !DILocation(line: 1012, column: 3, scope: !2283)
!2331 = !DILocation(line: 1017, column: 28, scope: !2296)
!2332 = !DILocation(line: 1017, column: 43, scope: !2296)
!2333 = !DILocation(line: 1018, column: 36, scope: !2296)
!2334 = !DILocation(line: 1019, column: 36, scope: !2296)
!2335 = !DILocation(line: 1019, column: 48, scope: !2296)
!2336 = !DILocation(line: 1021, column: 3, scope: !2296)
!2337 = !DILocation(line: 1021, column: 30, scope: !2296)
!2338 = !DILocation(line: 1021, column: 26, scope: !2296)
!2339 = !DILocation(line: 171, column: 45, scope: !919, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 1022, column: 3, scope: !2296)
!2341 = !DILocation(line: 172, column: 33, scope: !919, inlinedAt: !2340)
!2342 = !DILocation(line: 172, column: 57, scope: !919, inlinedAt: !2340)
!2343 = !DILocation(line: 176, column: 6, scope: !919, inlinedAt: !2340)
!2344 = !DILocation(line: 176, column: 12, scope: !919, inlinedAt: !2340)
!2345 = !DILocation(line: 177, column: 8, scope: !935, inlinedAt: !2340)
!2346 = !DILocation(line: 177, column: 23, scope: !935, inlinedAt: !2340)
!2347 = !DILocation(line: 177, column: 19, scope: !935, inlinedAt: !2340)
!2348 = !DILocation(line: 178, column: 5, scope: !935, inlinedAt: !2340)
!2349 = !DILocation(line: 179, column: 6, scope: !919, inlinedAt: !2340)
!2350 = !DILocation(line: 179, column: 17, scope: !919, inlinedAt: !2340)
!2351 = !DILocation(line: 180, column: 6, scope: !919, inlinedAt: !2340)
!2352 = !DILocation(line: 180, column: 18, scope: !919, inlinedAt: !2340)
!2353 = !DILocation(line: 1023, column: 10, scope: !2296)
!2354 = !DILocation(line: 1024, column: 1, scope: !2296)
!2355 = !DILocation(line: 1023, column: 3, scope: !2296)
!2356 = distinct !DISubprogram(name: "quotearg_custom", scope: !149, file: !149, line: 1027, type: !2357, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!13, !46, !46, !46}
!2359 = !{!2360, !2361, !2362}
!2360 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2356, file: !149, line: 1027, type: !46)
!2361 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2356, file: !149, line: 1027, type: !46)
!2362 = !DILocalVariable(name: "arg", arg: 3, scope: !2356, file: !149, line: 1028, type: !46)
!2363 = !DILocation(line: 1027, column: 30, scope: !2356)
!2364 = !DILocation(line: 1027, column: 54, scope: !2356)
!2365 = !DILocation(line: 1028, column: 30, scope: !2356)
!2366 = !DILocation(line: 1009, column: 24, scope: !2283, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 1030, column: 10, scope: !2356)
!2368 = !DILocation(line: 1009, column: 39, scope: !2283, inlinedAt: !2367)
!2369 = !DILocation(line: 1010, column: 32, scope: !2283, inlinedAt: !2367)
!2370 = !DILocation(line: 1010, column: 57, scope: !2283, inlinedAt: !2367)
!2371 = !DILocation(line: 1017, column: 28, scope: !2296, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 1012, column: 10, scope: !2283, inlinedAt: !2367)
!2373 = !DILocation(line: 1017, column: 43, scope: !2296, inlinedAt: !2372)
!2374 = !DILocation(line: 1018, column: 36, scope: !2296, inlinedAt: !2372)
!2375 = !DILocation(line: 1019, column: 36, scope: !2296, inlinedAt: !2372)
!2376 = !DILocation(line: 1019, column: 48, scope: !2296, inlinedAt: !2372)
!2377 = !DILocation(line: 1021, column: 3, scope: !2296, inlinedAt: !2372)
!2378 = !DILocation(line: 1021, column: 30, scope: !2296, inlinedAt: !2372)
!2379 = !DILocation(line: 1021, column: 26, scope: !2296, inlinedAt: !2372)
!2380 = !DILocation(line: 171, column: 45, scope: !919, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 1022, column: 3, scope: !2296, inlinedAt: !2372)
!2382 = !DILocation(line: 172, column: 33, scope: !919, inlinedAt: !2381)
!2383 = !DILocation(line: 172, column: 57, scope: !919, inlinedAt: !2381)
!2384 = !DILocation(line: 176, column: 6, scope: !919, inlinedAt: !2381)
!2385 = !DILocation(line: 176, column: 12, scope: !919, inlinedAt: !2381)
!2386 = !DILocation(line: 177, column: 8, scope: !935, inlinedAt: !2381)
!2387 = !DILocation(line: 177, column: 23, scope: !935, inlinedAt: !2381)
!2388 = !DILocation(line: 177, column: 19, scope: !935, inlinedAt: !2381)
!2389 = !DILocation(line: 178, column: 5, scope: !935, inlinedAt: !2381)
!2390 = !DILocation(line: 179, column: 6, scope: !919, inlinedAt: !2381)
!2391 = !DILocation(line: 179, column: 17, scope: !919, inlinedAt: !2381)
!2392 = !DILocation(line: 180, column: 6, scope: !919, inlinedAt: !2381)
!2393 = !DILocation(line: 180, column: 18, scope: !919, inlinedAt: !2381)
!2394 = !DILocation(line: 1023, column: 10, scope: !2296, inlinedAt: !2372)
!2395 = !DILocation(line: 1024, column: 1, scope: !2296, inlinedAt: !2372)
!2396 = !DILocation(line: 1030, column: 3, scope: !2356)
!2397 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !149, file: !149, line: 1034, type: !2398, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!13, !46, !46, !46, !143}
!2400 = !{!2401, !2402, !2403, !2404}
!2401 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2397, file: !149, line: 1034, type: !46)
!2402 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2397, file: !149, line: 1034, type: !46)
!2403 = !DILocalVariable(name: "arg", arg: 3, scope: !2397, file: !149, line: 1035, type: !46)
!2404 = !DILocalVariable(name: "argsize", arg: 4, scope: !2397, file: !149, line: 1035, type: !143)
!2405 = !DILocation(line: 1034, column: 34, scope: !2397)
!2406 = !DILocation(line: 1034, column: 58, scope: !2397)
!2407 = !DILocation(line: 1035, column: 34, scope: !2397)
!2408 = !DILocation(line: 1035, column: 46, scope: !2397)
!2409 = !DILocation(line: 1017, column: 28, scope: !2296, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 1037, column: 10, scope: !2397)
!2411 = !DILocation(line: 1017, column: 43, scope: !2296, inlinedAt: !2410)
!2412 = !DILocation(line: 1018, column: 36, scope: !2296, inlinedAt: !2410)
!2413 = !DILocation(line: 1019, column: 36, scope: !2296, inlinedAt: !2410)
!2414 = !DILocation(line: 1019, column: 48, scope: !2296, inlinedAt: !2410)
!2415 = !DILocation(line: 1021, column: 3, scope: !2296, inlinedAt: !2410)
!2416 = !DILocation(line: 1021, column: 30, scope: !2296, inlinedAt: !2410)
!2417 = !DILocation(line: 1021, column: 26, scope: !2296, inlinedAt: !2410)
!2418 = !DILocation(line: 171, column: 45, scope: !919, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 1022, column: 3, scope: !2296, inlinedAt: !2410)
!2420 = !DILocation(line: 172, column: 33, scope: !919, inlinedAt: !2419)
!2421 = !DILocation(line: 172, column: 57, scope: !919, inlinedAt: !2419)
!2422 = !DILocation(line: 176, column: 6, scope: !919, inlinedAt: !2419)
!2423 = !DILocation(line: 176, column: 12, scope: !919, inlinedAt: !2419)
!2424 = !DILocation(line: 177, column: 8, scope: !935, inlinedAt: !2419)
!2425 = !DILocation(line: 177, column: 23, scope: !935, inlinedAt: !2419)
!2426 = !DILocation(line: 177, column: 19, scope: !935, inlinedAt: !2419)
!2427 = !DILocation(line: 178, column: 5, scope: !935, inlinedAt: !2419)
!2428 = !DILocation(line: 179, column: 6, scope: !919, inlinedAt: !2419)
!2429 = !DILocation(line: 179, column: 17, scope: !919, inlinedAt: !2419)
!2430 = !DILocation(line: 180, column: 6, scope: !919, inlinedAt: !2419)
!2431 = !DILocation(line: 180, column: 18, scope: !919, inlinedAt: !2419)
!2432 = !DILocation(line: 1023, column: 10, scope: !2296, inlinedAt: !2410)
!2433 = !DILocation(line: 1024, column: 1, scope: !2296, inlinedAt: !2410)
!2434 = !DILocation(line: 1037, column: 3, scope: !2397)
!2435 = distinct !DISubprogram(name: "quote_n_mem", scope: !149, file: !149, line: 1052, type: !2436, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!46, !22, !46, !143}
!2438 = !{!2439, !2440, !2441}
!2439 = !DILocalVariable(name: "n", arg: 1, scope: !2435, file: !149, line: 1052, type: !22)
!2440 = !DILocalVariable(name: "arg", arg: 2, scope: !2435, file: !149, line: 1052, type: !46)
!2441 = !DILocalVariable(name: "argsize", arg: 3, scope: !2435, file: !149, line: 1052, type: !143)
!2442 = !DILocation(line: 1052, column: 18, scope: !2435)
!2443 = !DILocation(line: 1052, column: 33, scope: !2435)
!2444 = !DILocation(line: 1052, column: 45, scope: !2435)
!2445 = !DILocation(line: 1054, column: 10, scope: !2435)
!2446 = !DILocation(line: 1054, column: 3, scope: !2435)
!2447 = distinct !DISubprogram(name: "quote_mem", scope: !149, file: !149, line: 1058, type: !2448, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!46, !46, !143}
!2450 = !{!2451, !2452}
!2451 = !DILocalVariable(name: "arg", arg: 1, scope: !2447, file: !149, line: 1058, type: !46)
!2452 = !DILocalVariable(name: "argsize", arg: 2, scope: !2447, file: !149, line: 1058, type: !143)
!2453 = !DILocation(line: 1058, column: 24, scope: !2447)
!2454 = !DILocation(line: 1058, column: 36, scope: !2447)
!2455 = !DILocation(line: 1052, column: 18, scope: !2435, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 1060, column: 10, scope: !2447)
!2457 = !DILocation(line: 1052, column: 33, scope: !2435, inlinedAt: !2456)
!2458 = !DILocation(line: 1052, column: 45, scope: !2435, inlinedAt: !2456)
!2459 = !DILocation(line: 1054, column: 10, scope: !2435, inlinedAt: !2456)
!2460 = !DILocation(line: 1060, column: 3, scope: !2447)
!2461 = distinct !DISubprogram(name: "quote_n", scope: !149, file: !149, line: 1064, type: !2462, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!46, !22, !46}
!2464 = !{!2465, !2466}
!2465 = !DILocalVariable(name: "n", arg: 1, scope: !2461, file: !149, line: 1064, type: !22)
!2466 = !DILocalVariable(name: "arg", arg: 2, scope: !2461, file: !149, line: 1064, type: !46)
!2467 = !DILocation(line: 1064, column: 14, scope: !2461)
!2468 = !DILocation(line: 1064, column: 29, scope: !2461)
!2469 = !DILocation(line: 1052, column: 18, scope: !2435, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 1066, column: 10, scope: !2461)
!2471 = !DILocation(line: 1052, column: 33, scope: !2435, inlinedAt: !2470)
!2472 = !DILocation(line: 1052, column: 45, scope: !2435, inlinedAt: !2470)
!2473 = !DILocation(line: 1054, column: 10, scope: !2435, inlinedAt: !2470)
!2474 = !DILocation(line: 1066, column: 3, scope: !2461)
!2475 = distinct !DISubprogram(name: "quote", scope: !149, file: !149, line: 1070, type: !2476, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !104, variables: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!46, !46}
!2478 = !{!2479}
!2479 = !DILocalVariable(name: "arg", arg: 1, scope: !2475, file: !149, line: 1070, type: !46)
!2480 = !DILocation(line: 1070, column: 20, scope: !2475)
!2481 = !DILocation(line: 1064, column: 14, scope: !2461, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 1072, column: 10, scope: !2475)
!2483 = !DILocation(line: 1064, column: 29, scope: !2461, inlinedAt: !2482)
!2484 = !DILocation(line: 1052, column: 18, scope: !2435, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 1066, column: 10, scope: !2461, inlinedAt: !2482)
!2486 = !DILocation(line: 1052, column: 33, scope: !2435, inlinedAt: !2485)
!2487 = !DILocation(line: 1052, column: 45, scope: !2435, inlinedAt: !2485)
!2488 = !DILocation(line: 1054, column: 10, scope: !2435, inlinedAt: !2485)
!2489 = !DILocation(line: 1072, column: 3, scope: !2475)
!2490 = distinct !DISubprogram(name: "version_etc_arn", scope: !551, file: !551, line: 62, type: !2491, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !2547)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2493, !46, !46, !46, !2546, !143}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2495, line: 7, baseType: !2496)
!2495 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2497, line: 241, size: 1728, elements: !2498)
!2497 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2519, !2520, !2521, !2522, !2526, !2527, !2529, !2531, !2534, !2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2496, file: !2497, line: 242, baseType: !22, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2496, file: !2497, line: 247, baseType: !13, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2496, file: !2497, line: 248, baseType: !13, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2496, file: !2497, line: 249, baseType: !13, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2496, file: !2497, line: 250, baseType: !13, size: 64, offset: 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2496, file: !2497, line: 251, baseType: !13, size: 64, offset: 320)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2496, file: !2497, line: 252, baseType: !13, size: 64, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2496, file: !2497, line: 253, baseType: !13, size: 64, offset: 448)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2496, file: !2497, line: 254, baseType: !13, size: 64, offset: 512)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2496, file: !2497, line: 256, baseType: !13, size: 64, offset: 576)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2496, file: !2497, line: 257, baseType: !13, size: 64, offset: 640)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2496, file: !2497, line: 258, baseType: !13, size: 64, offset: 704)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2496, file: !2497, line: 260, baseType: !2512, size: 64, offset: 768)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2497, line: 156, size: 192, elements: !2514)
!2514 = !{!2515, !2516, !2518}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2513, file: !2497, line: 157, baseType: !2512, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2513, file: !2497, line: 158, baseType: !2517, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2513, file: !2497, line: 162, baseType: !22, size: 32, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2496, file: !2497, line: 262, baseType: !2517, size: 64, offset: 832)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2496, file: !2497, line: 264, baseType: !22, size: 32, offset: 896)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2496, file: !2497, line: 268, baseType: !22, size: 32, offset: 928)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2496, file: !2497, line: 270, baseType: !2523, size: 64, offset: 960)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2524, line: 140, baseType: !2525)
!2524 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2525 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2496, file: !2497, line: 274, baseType: !142, size: 16, offset: 1024)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2496, file: !2497, line: 275, baseType: !2528, size: 8, offset: 1040)
!2528 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2496, file: !2497, line: 276, baseType: !2530, size: 8, offset: 1048)
!2530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !39)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2496, file: !2497, line: 280, baseType: !2532, size: 64, offset: 1088)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2497, line: 150, baseType: null)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2496, file: !2497, line: 289, baseType: !2535, size: 64, offset: 1152)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2524, line: 141, baseType: !2525)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2496, file: !2497, line: 297, baseType: !15, size: 64, offset: 1216)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2496, file: !2497, line: 298, baseType: !15, size: 64, offset: 1280)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2496, file: !2497, line: 299, baseType: !15, size: 64, offset: 1344)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2496, file: !2497, line: 300, baseType: !15, size: 64, offset: 1408)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2496, file: !2497, line: 302, baseType: !143, size: 64, offset: 1472)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2496, file: !2497, line: 303, baseType: !22, size: 32, offset: 1536)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2496, file: !2497, line: 305, baseType: !2543, size: 160, offset: 1568)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !2544)
!2544 = !{!2545}
!2545 = !DISubrange(count: 20)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553}
!2548 = !DILocalVariable(name: "stream", arg: 1, scope: !2490, file: !551, line: 62, type: !2493)
!2549 = !DILocalVariable(name: "command_name", arg: 2, scope: !2490, file: !551, line: 63, type: !46)
!2550 = !DILocalVariable(name: "package", arg: 3, scope: !2490, file: !551, line: 63, type: !46)
!2551 = !DILocalVariable(name: "version", arg: 4, scope: !2490, file: !551, line: 64, type: !46)
!2552 = !DILocalVariable(name: "authors", arg: 5, scope: !2490, file: !551, line: 65, type: !2546)
!2553 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2490, file: !551, line: 65, type: !143)
!2554 = !DILocation(line: 62, column: 24, scope: !2490)
!2555 = !DILocation(line: 63, column: 30, scope: !2490)
!2556 = !DILocation(line: 63, column: 56, scope: !2490)
!2557 = !DILocation(line: 64, column: 30, scope: !2490)
!2558 = !DILocation(line: 65, column: 39, scope: !2490)
!2559 = !DILocation(line: 65, column: 55, scope: !2490)
!2560 = !DILocation(line: 67, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2490, file: !551, line: 67, column: 7)
!2562 = !DILocation(line: 67, column: 7, scope: !2490)
!2563 = !DILocation(line: 68, column: 5, scope: !2561)
!2564 = !DILocation(line: 70, column: 5, scope: !2561)
!2565 = !DILocation(line: 84, column: 3, scope: !2490)
!2566 = !DILocation(line: 86, column: 3, scope: !2490)
!2567 = !DILocation(line: 95, column: 3, scope: !2490)
!2568 = !DILocation(line: 99, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2490, file: !551, line: 96, column: 5)
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
!2590 = !DILocation(line: 173, column: 1, scope: !2490)
!2591 = distinct !DISubprogram(name: "version_etc_ar", scope: !551, file: !551, line: 180, type: !2592, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !2493, !46, !46, !46, !2546}
!2594 = !{!2595, !2596, !2597, !2598, !2599, !2600}
!2595 = !DILocalVariable(name: "stream", arg: 1, scope: !2591, file: !551, line: 180, type: !2493)
!2596 = !DILocalVariable(name: "command_name", arg: 2, scope: !2591, file: !551, line: 181, type: !46)
!2597 = !DILocalVariable(name: "package", arg: 3, scope: !2591, file: !551, line: 181, type: !46)
!2598 = !DILocalVariable(name: "version", arg: 4, scope: !2591, file: !551, line: 182, type: !46)
!2599 = !DILocalVariable(name: "authors", arg: 5, scope: !2591, file: !551, line: 182, type: !2546)
!2600 = !DILocalVariable(name: "n_authors", scope: !2591, file: !551, line: 184, type: !143)
!2601 = !DILocation(line: 180, column: 23, scope: !2591)
!2602 = !DILocation(line: 181, column: 29, scope: !2591)
!2603 = !DILocation(line: 181, column: 55, scope: !2591)
!2604 = !DILocation(line: 182, column: 29, scope: !2591)
!2605 = !DILocation(line: 182, column: 59, scope: !2591)
!2606 = !DILocation(line: 184, column: 10, scope: !2591)
!2607 = !DILocation(line: 186, column: 8, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2591, file: !551, line: 186, column: 3)
!2609 = !DILocation(line: 186, column: 23, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2608, file: !551, line: 186, column: 3)
!2611 = !DILocation(line: 186, column: 3, scope: !2608)
!2612 = !DILocation(line: 186, column: 52, scope: !2610)
!2613 = distinct !{!2613, !2611, !2614}
!2614 = !DILocation(line: 187, column: 5, scope: !2608)
!2615 = !DILocation(line: 188, column: 3, scope: !2591)
!2616 = !DILocation(line: 189, column: 1, scope: !2591)
!2617 = distinct !DISubprogram(name: "version_etc_va", scope: !551, file: !551, line: 196, type: !2618, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !2627)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null, !2493, !46, !46, !46, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !548, line: 189, size: 192, elements: !2622)
!2622 = !{!2623, !2624, !2625, !2626}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2621, file: !548, line: 189, baseType: !162, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2621, file: !548, line: 189, baseType: !162, size: 32, offset: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2621, file: !548, line: 189, baseType: !15, size: 64, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2621, file: !548, line: 189, baseType: !15, size: 64, offset: 128)
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2628 = !DILocalVariable(name: "stream", arg: 1, scope: !2617, file: !551, line: 196, type: !2493)
!2629 = !DILocalVariable(name: "command_name", arg: 2, scope: !2617, file: !551, line: 197, type: !46)
!2630 = !DILocalVariable(name: "package", arg: 3, scope: !2617, file: !551, line: 197, type: !46)
!2631 = !DILocalVariable(name: "version", arg: 4, scope: !2617, file: !551, line: 198, type: !46)
!2632 = !DILocalVariable(name: "authors", arg: 5, scope: !2617, file: !551, line: 198, type: !2620)
!2633 = !DILocalVariable(name: "n_authors", scope: !2617, file: !551, line: 200, type: !143)
!2634 = !DILocalVariable(name: "authtab", scope: !2617, file: !551, line: 201, type: !2635)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 640, elements: !152)
!2636 = !DILocation(line: 196, column: 23, scope: !2617)
!2637 = !DILocation(line: 197, column: 29, scope: !2617)
!2638 = !DILocation(line: 197, column: 55, scope: !2617)
!2639 = !DILocation(line: 198, column: 29, scope: !2617)
!2640 = !DILocation(line: 198, column: 46, scope: !2617)
!2641 = !DILocation(line: 201, column: 3, scope: !2617)
!2642 = !DILocation(line: 201, column: 15, scope: !2617)
!2643 = !DILocation(line: 200, column: 10, scope: !2617)
!2644 = !DILocation(line: 205, column: 35, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !551, line: 203, column: 3)
!2646 = distinct !DILexicalBlock(scope: !2617, file: !551, line: 203, column: 3)
!2647 = !DILocation(line: 205, column: 14, scope: !2645)
!2648 = !DILocation(line: 205, column: 33, scope: !2645)
!2649 = !DILocation(line: 205, column: 67, scope: !2645)
!2650 = !DILocation(line: 203, column: 3, scope: !2646)
!2651 = !DILocation(line: 208, column: 3, scope: !2617)
!2652 = !DILocation(line: 210, column: 1, scope: !2617)
!2653 = distinct !DISubprogram(name: "version_etc", scope: !551, file: !551, line: 227, type: !2654, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !2493, !46, !46, !46, null}
!2656 = !{!2657, !2658, !2659, !2660, !2661}
!2657 = !DILocalVariable(name: "stream", arg: 1, scope: !2653, file: !551, line: 227, type: !2493)
!2658 = !DILocalVariable(name: "command_name", arg: 2, scope: !2653, file: !551, line: 228, type: !46)
!2659 = !DILocalVariable(name: "package", arg: 3, scope: !2653, file: !551, line: 228, type: !46)
!2660 = !DILocalVariable(name: "version", arg: 4, scope: !2653, file: !551, line: 229, type: !46)
!2661 = !DILocalVariable(name: "authors", scope: !2653, file: !551, line: 231, type: !2662)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2663, line: 46, baseType: !2664)
!2663 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2665, line: 48, baseType: !2666)
!2665 = !DIFile(filename: "/usr/lib/clang/5.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !548, line: 231, baseType: !2667)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2621, size: 192, elements: !39)
!2668 = !DILocation(line: 227, column: 20, scope: !2653)
!2669 = !DILocation(line: 228, column: 26, scope: !2653)
!2670 = !DILocation(line: 228, column: 52, scope: !2653)
!2671 = !DILocation(line: 229, column: 26, scope: !2653)
!2672 = !DILocation(line: 231, column: 3, scope: !2653)
!2673 = !DILocation(line: 231, column: 11, scope: !2653)
!2674 = !DILocation(line: 233, column: 3, scope: !2653)
!2675 = !DILocation(line: 234, column: 3, scope: !2653)
!2676 = !DILocation(line: 235, column: 3, scope: !2653)
!2677 = !DILocation(line: 236, column: 1, scope: !2653)
!2678 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !551, file: !551, line: 239, type: !616, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !547, variables: !78)
!2679 = !DILocation(line: 245, column: 3, scope: !2678)
!2680 = !DILocation(line: 251, column: 3, scope: !2678)
!2681 = !DILocation(line: 256, column: 3, scope: !2678)
!2682 = !DILocation(line: 258, column: 1, scope: !2678)
!2683 = distinct !DISubprogram(name: "xnmalloc", scope: !559, file: !559, line: 105, type: !2684, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!15, !143, !143}
!2686 = !{!2687, !2688}
!2687 = !DILocalVariable(name: "n", arg: 1, scope: !2683, file: !559, line: 105, type: !143)
!2688 = !DILocalVariable(name: "s", arg: 2, scope: !2683, file: !559, line: 105, type: !143)
!2689 = !DILocation(line: 105, column: 18, scope: !2683)
!2690 = !DILocation(line: 105, column: 28, scope: !2683)
!2691 = !DILocation(line: 107, column: 7, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2683, file: !559, line: 107, column: 7)
!2693 = !DILocation(line: 107, column: 7, scope: !2683)
!2694 = !DILocation(line: 108, column: 5, scope: !2692)
!2695 = !DILocation(line: 109, column: 21, scope: !2683)
!2696 = !DILocalVariable(name: "n", arg: 1, scope: !2697, file: !2698, line: 39, type: !143)
!2697 = distinct !DISubprogram(name: "xmalloc", scope: !2698, file: !2698, line: 39, type: !2699, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !2701)
!2698 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!15, !143}
!2701 = !{!2696, !2702}
!2702 = !DILocalVariable(name: "p", scope: !2697, file: !2698, line: 41, type: !15)
!2703 = !DILocation(line: 39, column: 17, scope: !2697, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 109, column: 10, scope: !2683)
!2705 = !DILocation(line: 41, column: 13, scope: !2697, inlinedAt: !2704)
!2706 = !DILocation(line: 41, column: 9, scope: !2697, inlinedAt: !2704)
!2707 = !DILocation(line: 42, column: 8, scope: !2708, inlinedAt: !2704)
!2708 = distinct !DILexicalBlock(scope: !2697, file: !2698, line: 42, column: 7)
!2709 = !DILocation(line: 42, column: 15, scope: !2708, inlinedAt: !2704)
!2710 = !DILocation(line: 42, column: 10, scope: !2708, inlinedAt: !2704)
!2711 = !DILocation(line: 43, column: 5, scope: !2708, inlinedAt: !2704)
!2712 = !DILocation(line: 109, column: 3, scope: !2683)
!2713 = !DILocation(line: 39, column: 17, scope: !2697)
!2714 = !DILocation(line: 41, column: 13, scope: !2697)
!2715 = !DILocation(line: 41, column: 9, scope: !2697)
!2716 = !DILocation(line: 42, column: 8, scope: !2708)
!2717 = !DILocation(line: 42, column: 15, scope: !2708)
!2718 = !DILocation(line: 42, column: 10, scope: !2708)
!2719 = !DILocation(line: 43, column: 5, scope: !2708)
!2720 = !DILocation(line: 44, column: 3, scope: !2697)
!2721 = distinct !DISubprogram(name: "xnrealloc", scope: !559, file: !559, line: 118, type: !2722, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!15, !15, !143, !143}
!2724 = !{!2725, !2726, !2727}
!2725 = !DILocalVariable(name: "p", arg: 1, scope: !2721, file: !559, line: 118, type: !15)
!2726 = !DILocalVariable(name: "n", arg: 2, scope: !2721, file: !559, line: 118, type: !143)
!2727 = !DILocalVariable(name: "s", arg: 3, scope: !2721, file: !559, line: 118, type: !143)
!2728 = !DILocation(line: 118, column: 18, scope: !2721)
!2729 = !DILocation(line: 118, column: 28, scope: !2721)
!2730 = !DILocation(line: 118, column: 38, scope: !2721)
!2731 = !DILocation(line: 120, column: 7, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2721, file: !559, line: 120, column: 7)
!2733 = !DILocation(line: 120, column: 7, scope: !2721)
!2734 = !DILocation(line: 121, column: 5, scope: !2732)
!2735 = !DILocation(line: 122, column: 25, scope: !2721)
!2736 = !DILocalVariable(name: "p", arg: 1, scope: !2737, file: !2698, line: 51, type: !15)
!2737 = distinct !DISubprogram(name: "xrealloc", scope: !2698, file: !2698, line: 51, type: !2738, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!15, !15, !143}
!2740 = !{!2736, !2741}
!2741 = !DILocalVariable(name: "n", arg: 2, scope: !2737, file: !2698, line: 51, type: !143)
!2742 = !DILocation(line: 51, column: 17, scope: !2737, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 122, column: 10, scope: !2721)
!2744 = !DILocation(line: 51, column: 27, scope: !2737, inlinedAt: !2743)
!2745 = !DILocation(line: 53, column: 8, scope: !2746, inlinedAt: !2743)
!2746 = distinct !DILexicalBlock(scope: !2737, file: !2698, line: 53, column: 7)
!2747 = !DILocation(line: 53, column: 13, scope: !2746, inlinedAt: !2743)
!2748 = !DILocation(line: 53, column: 10, scope: !2746, inlinedAt: !2743)
!2749 = !DILocation(line: 57, column: 7, scope: !2750, inlinedAt: !2743)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !2698, line: 54, column: 5)
!2751 = !DILocation(line: 58, column: 7, scope: !2750, inlinedAt: !2743)
!2752 = !DILocation(line: 61, column: 7, scope: !2737, inlinedAt: !2743)
!2753 = !DILocation(line: 62, column: 8, scope: !2754, inlinedAt: !2743)
!2754 = distinct !DILexicalBlock(scope: !2737, file: !2698, line: 62, column: 7)
!2755 = !DILocation(line: 62, column: 13, scope: !2754, inlinedAt: !2743)
!2756 = !DILocation(line: 62, column: 10, scope: !2754, inlinedAt: !2743)
!2757 = !DILocation(line: 63, column: 5, scope: !2754, inlinedAt: !2743)
!2758 = !DILocation(line: 122, column: 3, scope: !2721)
!2759 = !DILocation(line: 51, column: 17, scope: !2737)
!2760 = !DILocation(line: 51, column: 27, scope: !2737)
!2761 = !DILocation(line: 53, column: 8, scope: !2746)
!2762 = !DILocation(line: 53, column: 13, scope: !2746)
!2763 = !DILocation(line: 53, column: 10, scope: !2746)
!2764 = !DILocation(line: 57, column: 7, scope: !2750)
!2765 = !DILocation(line: 58, column: 7, scope: !2750)
!2766 = !DILocation(line: 61, column: 7, scope: !2737)
!2767 = !DILocation(line: 62, column: 8, scope: !2754)
!2768 = !DILocation(line: 62, column: 13, scope: !2754)
!2769 = !DILocation(line: 62, column: 10, scope: !2754)
!2770 = !DILocation(line: 63, column: 5, scope: !2754)
!2771 = !DILocation(line: 65, column: 1, scope: !2737)
!2772 = !DILocation(line: 180, column: 19, scope: !560)
!2773 = !DILocation(line: 180, column: 30, scope: !560)
!2774 = !DILocation(line: 180, column: 41, scope: !560)
!2775 = !DILocation(line: 182, column: 14, scope: !560)
!2776 = !DILocation(line: 182, column: 10, scope: !560)
!2777 = !DILocation(line: 184, column: 9, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !560, file: !559, line: 184, column: 7)
!2779 = !DILocation(line: 184, column: 7, scope: !560)
!2780 = !DILocation(line: 186, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !559, line: 186, column: 11)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !559, line: 185, column: 5)
!2783 = !DILocation(line: 186, column: 11, scope: !2782)
!2784 = !DILocation(line: 194, column: 30, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !559, line: 187, column: 9)
!2786 = !DILocation(line: 195, column: 16, scope: !2785)
!2787 = !DILocation(line: 195, column: 13, scope: !2785)
!2788 = !DILocation(line: 196, column: 9, scope: !2785)
!2789 = !DILocation(line: 204, column: 69, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !559, line: 204, column: 11)
!2791 = distinct !DILexicalBlock(scope: !2778, file: !559, line: 199, column: 5)
!2792 = !DILocation(line: 205, column: 11, scope: !2790)
!2793 = !DILocation(line: 204, column: 11, scope: !2791)
!2794 = !DILocation(line: 206, column: 9, scope: !2790)
!2795 = !DILocation(line: 210, column: 7, scope: !560)
!2796 = !DILocation(line: 211, column: 25, scope: !560)
!2797 = !DILocation(line: 51, column: 17, scope: !2737, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 211, column: 10, scope: !560)
!2799 = !DILocation(line: 51, column: 27, scope: !2737, inlinedAt: !2798)
!2800 = !DILocation(line: 53, column: 10, scope: !2746, inlinedAt: !2798)
!2801 = !DILocation(line: 207, column: 14, scope: !2791)
!2802 = !DILocation(line: 207, column: 18, scope: !2791)
!2803 = !DILocation(line: 207, column: 9, scope: !2791)
!2804 = !DILocation(line: 53, column: 8, scope: !2746, inlinedAt: !2798)
!2805 = !DILocation(line: 57, column: 7, scope: !2750, inlinedAt: !2798)
!2806 = !DILocation(line: 58, column: 7, scope: !2750, inlinedAt: !2798)
!2807 = !DILocation(line: 61, column: 7, scope: !2737, inlinedAt: !2798)
!2808 = !DILocation(line: 62, column: 8, scope: !2754, inlinedAt: !2798)
!2809 = !DILocation(line: 62, column: 13, scope: !2754, inlinedAt: !2798)
!2810 = !DILocation(line: 62, column: 10, scope: !2754, inlinedAt: !2798)
!2811 = !DILocation(line: 63, column: 5, scope: !2754, inlinedAt: !2798)
!2812 = !DILocation(line: 211, column: 3, scope: !560)
!2813 = distinct !DISubprogram(name: "xcharalloc", scope: !559, file: !559, line: 220, type: !1767, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !2814)
!2814 = !{!2815}
!2815 = !DILocalVariable(name: "n", arg: 1, scope: !2813, file: !559, line: 220, type: !143)
!2816 = !DILocation(line: 220, column: 20, scope: !2813)
!2817 = !DILocation(line: 39, column: 17, scope: !2697, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 222, column: 10, scope: !2813)
!2819 = !DILocation(line: 41, column: 13, scope: !2697, inlinedAt: !2818)
!2820 = !DILocation(line: 41, column: 9, scope: !2697, inlinedAt: !2818)
!2821 = !DILocation(line: 42, column: 8, scope: !2708, inlinedAt: !2818)
!2822 = !DILocation(line: 42, column: 15, scope: !2708, inlinedAt: !2818)
!2823 = !DILocation(line: 42, column: 10, scope: !2708, inlinedAt: !2818)
!2824 = !DILocation(line: 43, column: 5, scope: !2708, inlinedAt: !2818)
!2825 = !DILocation(line: 222, column: 3, scope: !2813)
!2826 = distinct !DISubprogram(name: "x2realloc", scope: !2698, file: !2698, line: 74, type: !2827, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!15, !15, !563}
!2829 = !{!2830, !2831}
!2830 = !DILocalVariable(name: "p", arg: 1, scope: !2826, file: !2698, line: 74, type: !15)
!2831 = !DILocalVariable(name: "pn", arg: 2, scope: !2826, file: !2698, line: 74, type: !563)
!2832 = !DILocation(line: 74, column: 18, scope: !2826)
!2833 = !DILocation(line: 74, column: 29, scope: !2826)
!2834 = !DILocation(line: 180, column: 19, scope: !560, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 76, column: 10, scope: !2826)
!2836 = !DILocation(line: 180, column: 30, scope: !560, inlinedAt: !2835)
!2837 = !DILocation(line: 180, column: 41, scope: !560, inlinedAt: !2835)
!2838 = !DILocation(line: 182, column: 14, scope: !560, inlinedAt: !2835)
!2839 = !DILocation(line: 182, column: 10, scope: !560, inlinedAt: !2835)
!2840 = !DILocation(line: 184, column: 9, scope: !2778, inlinedAt: !2835)
!2841 = !DILocation(line: 184, column: 7, scope: !560, inlinedAt: !2835)
!2842 = !DILocation(line: 186, column: 13, scope: !2781, inlinedAt: !2835)
!2843 = !DILocation(line: 186, column: 11, scope: !2782, inlinedAt: !2835)
!2844 = !DILocation(line: 210, column: 7, scope: !560, inlinedAt: !2835)
!2845 = !DILocation(line: 51, column: 17, scope: !2737, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 211, column: 10, scope: !560, inlinedAt: !2835)
!2847 = !DILocation(line: 51, column: 27, scope: !2737, inlinedAt: !2846)
!2848 = !DILocation(line: 53, column: 10, scope: !2746, inlinedAt: !2846)
!2849 = !DILocation(line: 205, column: 11, scope: !2790, inlinedAt: !2835)
!2850 = !DILocation(line: 204, column: 11, scope: !2791, inlinedAt: !2835)
!2851 = !DILocation(line: 206, column: 9, scope: !2790, inlinedAt: !2835)
!2852 = !DILocation(line: 207, column: 14, scope: !2791, inlinedAt: !2835)
!2853 = !DILocation(line: 207, column: 18, scope: !2791, inlinedAt: !2835)
!2854 = !DILocation(line: 207, column: 9, scope: !2791, inlinedAt: !2835)
!2855 = !DILocation(line: 53, column: 8, scope: !2746, inlinedAt: !2846)
!2856 = !DILocation(line: 57, column: 7, scope: !2750, inlinedAt: !2846)
!2857 = !DILocation(line: 58, column: 7, scope: !2750, inlinedAt: !2846)
!2858 = !DILocation(line: 61, column: 7, scope: !2737, inlinedAt: !2846)
!2859 = !DILocation(line: 62, column: 8, scope: !2754, inlinedAt: !2846)
!2860 = !DILocation(line: 62, column: 13, scope: !2754, inlinedAt: !2846)
!2861 = !DILocation(line: 62, column: 10, scope: !2754, inlinedAt: !2846)
!2862 = !DILocation(line: 63, column: 5, scope: !2754, inlinedAt: !2846)
!2863 = !DILocation(line: 76, column: 3, scope: !2826)
!2864 = distinct !DISubprogram(name: "xzalloc", scope: !2698, file: !2698, line: 84, type: !2699, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !2865)
!2865 = !{!2866}
!2866 = !DILocalVariable(name: "s", arg: 1, scope: !2864, file: !2698, line: 84, type: !143)
!2867 = !DILocation(line: 84, column: 17, scope: !2864)
!2868 = !DILocation(line: 39, column: 17, scope: !2697, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 86, column: 18, scope: !2864)
!2870 = !DILocation(line: 41, column: 13, scope: !2697, inlinedAt: !2869)
!2871 = !DILocation(line: 41, column: 9, scope: !2697, inlinedAt: !2869)
!2872 = !DILocation(line: 42, column: 8, scope: !2708, inlinedAt: !2869)
!2873 = !DILocation(line: 42, column: 15, scope: !2708, inlinedAt: !2869)
!2874 = !DILocation(line: 42, column: 10, scope: !2708, inlinedAt: !2869)
!2875 = !DILocation(line: 43, column: 5, scope: !2708, inlinedAt: !2869)
!2876 = !DILocation(line: 86, column: 10, scope: !2864)
!2877 = !DILocation(line: 86, column: 3, scope: !2864)
!2878 = distinct !DISubprogram(name: "xcalloc", scope: !2698, file: !2698, line: 93, type: !2684, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !2879)
!2879 = !{!2880, !2881, !2882}
!2880 = !DILocalVariable(name: "n", arg: 1, scope: !2878, file: !2698, line: 93, type: !143)
!2881 = !DILocalVariable(name: "s", arg: 2, scope: !2878, file: !2698, line: 93, type: !143)
!2882 = !DILocalVariable(name: "p", scope: !2878, file: !2698, line: 95, type: !15)
!2883 = !DILocation(line: 93, column: 17, scope: !2878)
!2884 = !DILocation(line: 93, column: 27, scope: !2878)
!2885 = !DILocation(line: 100, column: 7, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2878, file: !2698, line: 100, column: 7)
!2887 = !DILocation(line: 101, column: 7, scope: !2886)
!2888 = !DILocation(line: 101, column: 18, scope: !2886)
!2889 = !DILocation(line: 95, column: 9, scope: !2878)
!2890 = !DILocation(line: 101, column: 16, scope: !2886)
!2891 = !DILocation(line: 100, column: 7, scope: !2878)
!2892 = !DILocation(line: 102, column: 5, scope: !2886)
!2893 = !DILocation(line: 103, column: 3, scope: !2878)
!2894 = distinct !DISubprogram(name: "xmemdup", scope: !2698, file: !2698, line: 111, type: !2895, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !2899)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!15, !2897, !143}
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2899 = !{!2900, !2901}
!2900 = !DILocalVariable(name: "p", arg: 1, scope: !2894, file: !2698, line: 111, type: !2897)
!2901 = !DILocalVariable(name: "s", arg: 2, scope: !2894, file: !2698, line: 111, type: !143)
!2902 = !DILocation(line: 111, column: 22, scope: !2894)
!2903 = !DILocation(line: 111, column: 32, scope: !2894)
!2904 = !DILocation(line: 39, column: 17, scope: !2697, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 113, column: 18, scope: !2894)
!2906 = !DILocation(line: 41, column: 13, scope: !2697, inlinedAt: !2905)
!2907 = !DILocation(line: 41, column: 9, scope: !2697, inlinedAt: !2905)
!2908 = !DILocation(line: 42, column: 8, scope: !2708, inlinedAt: !2905)
!2909 = !DILocation(line: 42, column: 15, scope: !2708, inlinedAt: !2905)
!2910 = !DILocation(line: 42, column: 10, scope: !2708, inlinedAt: !2905)
!2911 = !DILocation(line: 43, column: 5, scope: !2708, inlinedAt: !2905)
!2912 = !DILocation(line: 113, column: 10, scope: !2894)
!2913 = !DILocation(line: 113, column: 3, scope: !2894)
!2914 = distinct !DISubprogram(name: "xstrdup", scope: !2698, file: !2698, line: 119, type: !1969, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !2915)
!2915 = !{!2916}
!2916 = !DILocalVariable(name: "string", arg: 1, scope: !2914, file: !2698, line: 119, type: !46)
!2917 = !DILocation(line: 119, column: 22, scope: !2914)
!2918 = !DILocation(line: 121, column: 27, scope: !2914)
!2919 = !DILocation(line: 121, column: 43, scope: !2914)
!2920 = !DILocation(line: 111, column: 22, scope: !2894, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 121, column: 10, scope: !2914)
!2922 = !DILocation(line: 111, column: 32, scope: !2894, inlinedAt: !2921)
!2923 = !DILocation(line: 39, column: 17, scope: !2697, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 113, column: 18, scope: !2894, inlinedAt: !2921)
!2925 = !DILocation(line: 41, column: 13, scope: !2697, inlinedAt: !2924)
!2926 = !DILocation(line: 41, column: 9, scope: !2697, inlinedAt: !2924)
!2927 = !DILocation(line: 42, column: 8, scope: !2708, inlinedAt: !2924)
!2928 = !DILocation(line: 42, column: 15, scope: !2708, inlinedAt: !2924)
!2929 = !DILocation(line: 42, column: 10, scope: !2708, inlinedAt: !2924)
!2930 = !DILocation(line: 43, column: 5, scope: !2708, inlinedAt: !2924)
!2931 = !DILocation(line: 113, column: 10, scope: !2894, inlinedAt: !2921)
!2932 = !DILocation(line: 121, column: 3, scope: !2914)
!2933 = distinct !DISubprogram(name: "xalloc_die", scope: !2934, file: !2934, line: 32, type: !616, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !572, variables: !78)
!2934 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2935 = !DILocation(line: 34, column: 10, scope: !2933)
!2936 = !DILocation(line: 34, column: 33, scope: !2933)
!2937 = !DILocation(line: 34, column: 3, scope: !2933)
!2938 = !DILocation(line: 40, column: 3, scope: !2933)
!2939 = distinct !DISubprogram(name: "rpl_calloc", scope: !2940, file: !2940, line: 42, type: !2684, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !574, variables: !2941)
!2940 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2941 = !{!2942, !2943, !2944, !2945}
!2942 = !DILocalVariable(name: "n", arg: 1, scope: !2939, file: !2940, line: 42, type: !143)
!2943 = !DILocalVariable(name: "s", arg: 2, scope: !2939, file: !2940, line: 42, type: !143)
!2944 = !DILocalVariable(name: "result", scope: !2939, file: !2940, line: 44, type: !15)
!2945 = !DILocalVariable(name: "bytes", scope: !2946, file: !2940, line: 56, type: !143)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !2940, line: 53, column: 5)
!2947 = distinct !DILexicalBlock(scope: !2939, file: !2940, line: 47, column: 7)
!2948 = !DILocation(line: 42, column: 20, scope: !2939)
!2949 = !DILocation(line: 42, column: 30, scope: !2939)
!2950 = !DILocation(line: 47, column: 9, scope: !2947)
!2951 = !DILocation(line: 47, column: 19, scope: !2947)
!2952 = !DILocation(line: 47, column: 14, scope: !2947)
!2953 = !DILocation(line: 56, column: 24, scope: !2946)
!2954 = !DILocation(line: 56, column: 14, scope: !2946)
!2955 = !DILocation(line: 57, column: 17, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2946, file: !2940, line: 57, column: 11)
!2957 = !DILocation(line: 57, column: 21, scope: !2956)
!2958 = !DILocation(line: 57, column: 11, scope: !2946)
!2959 = !DILocation(line: 59, column: 11, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2956, file: !2940, line: 58, column: 9)
!2961 = !DILocation(line: 59, column: 17, scope: !2960)
!2962 = !DILocation(line: 65, column: 12, scope: !2939)
!2963 = !DILocation(line: 44, column: 9, scope: !2939)
!2964 = !DILocation(line: 72, column: 3, scope: !2939)
!2965 = !DILocation(line: 73, column: 1, scope: !2939)
!2966 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !2967, file: !2967, line: 334, type: !2968, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !576, variables: !2982)
!2967 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!143, !2970, !46, !143, !2971}
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1018, line: 6, baseType: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1020, line: 21, baseType: !2974)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 13, size: 64, elements: !2975)
!2975 = !{!2976, !2977}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2974, file: !1020, line: 15, baseType: !22, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2974, file: !1020, line: 20, baseType: !2978, size: 32, offset: 32)
!2978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2974, file: !1020, line: 16, size: 32, elements: !2979)
!2979 = !{!2980, !2981}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2978, file: !1020, line: 18, baseType: !162, size: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2978, file: !1020, line: 19, baseType: !1029, size: 32)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988, !2989}
!2983 = !DILocalVariable(name: "pwc", arg: 1, scope: !2966, file: !2967, line: 334, type: !2970)
!2984 = !DILocalVariable(name: "s", arg: 2, scope: !2966, file: !2967, line: 334, type: !46)
!2985 = !DILocalVariable(name: "n", arg: 3, scope: !2966, file: !2967, line: 334, type: !143)
!2986 = !DILocalVariable(name: "ps", arg: 4, scope: !2966, file: !2967, line: 334, type: !2971)
!2987 = !DILocalVariable(name: "ret", scope: !2966, file: !2967, line: 336, type: !143)
!2988 = !DILocalVariable(name: "wc", scope: !2966, file: !2967, line: 337, type: !1034)
!2989 = !DILocalVariable(name: "uc", scope: !2990, file: !2967, line: 398, type: !543)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !2967, line: 397, column: 5)
!2991 = distinct !DILexicalBlock(scope: !2966, file: !2967, line: 396, column: 7)
!2992 = !DILocation(line: 334, column: 23, scope: !2966)
!2993 = !DILocation(line: 334, column: 40, scope: !2966)
!2994 = !DILocation(line: 334, column: 50, scope: !2966)
!2995 = !DILocation(line: 334, column: 64, scope: !2966)
!2996 = !DILocation(line: 337, column: 3, scope: !2966)
!2997 = !DILocation(line: 353, column: 9, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2966, file: !2967, line: 353, column: 7)
!2999 = !DILocation(line: 353, column: 7, scope: !2966)
!3000 = !DILocation(line: 388, column: 9, scope: !2966)
!3001 = !DILocation(line: 336, column: 10, scope: !2966)
!3002 = !DILocation(line: 396, column: 19, scope: !2991)
!3003 = !DILocation(line: 396, column: 31, scope: !2991)
!3004 = !DILocation(line: 396, column: 26, scope: !2991)
!3005 = !DILocation(line: 396, column: 41, scope: !2991)
!3006 = !DILocation(line: 396, column: 7, scope: !2966)
!3007 = !DILocation(line: 398, column: 26, scope: !2990)
!3008 = !DILocation(line: 398, column: 21, scope: !2990)
!3009 = !DILocation(line: 399, column: 14, scope: !2990)
!3010 = !DILocation(line: 399, column: 12, scope: !2990)
!3011 = !DILocation(line: 405, column: 1, scope: !2966)
!3012 = distinct !DISubprogram(name: "close_stream", scope: !3013, file: !3013, line: 56, type: !3014, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3056)
!3013 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!22, !3016}
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2495, line: 7, baseType: !3018)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2497, line: 241, size: 1728, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3018, file: !2497, line: 242, baseType: !22, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3018, file: !2497, line: 247, baseType: !13, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3018, file: !2497, line: 248, baseType: !13, size: 64, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3018, file: !2497, line: 249, baseType: !13, size: 64, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3018, file: !2497, line: 250, baseType: !13, size: 64, offset: 256)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3018, file: !2497, line: 251, baseType: !13, size: 64, offset: 320)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3018, file: !2497, line: 252, baseType: !13, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3018, file: !2497, line: 253, baseType: !13, size: 64, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3018, file: !2497, line: 254, baseType: !13, size: 64, offset: 512)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3018, file: !2497, line: 256, baseType: !13, size: 64, offset: 576)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3018, file: !2497, line: 257, baseType: !13, size: 64, offset: 640)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3018, file: !2497, line: 258, baseType: !13, size: 64, offset: 704)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3018, file: !2497, line: 260, baseType: !3033, size: 64, offset: 768)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2497, line: 156, size: 192, elements: !3035)
!3035 = !{!3036, !3037, !3039}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3034, file: !2497, line: 157, baseType: !3033, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3034, file: !2497, line: 158, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3034, file: !2497, line: 162, baseType: !22, size: 32, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3018, file: !2497, line: 262, baseType: !3038, size: 64, offset: 832)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3018, file: !2497, line: 264, baseType: !22, size: 32, offset: 896)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3018, file: !2497, line: 268, baseType: !22, size: 32, offset: 928)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3018, file: !2497, line: 270, baseType: !2523, size: 64, offset: 960)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3018, file: !2497, line: 274, baseType: !142, size: 16, offset: 1024)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3018, file: !2497, line: 275, baseType: !2528, size: 8, offset: 1040)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3018, file: !2497, line: 276, baseType: !2530, size: 8, offset: 1048)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3018, file: !2497, line: 280, baseType: !2532, size: 64, offset: 1088)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3018, file: !2497, line: 289, baseType: !2535, size: 64, offset: 1152)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3018, file: !2497, line: 297, baseType: !15, size: 64, offset: 1216)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3018, file: !2497, line: 298, baseType: !15, size: 64, offset: 1280)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3018, file: !2497, line: 299, baseType: !15, size: 64, offset: 1344)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3018, file: !2497, line: 300, baseType: !15, size: 64, offset: 1408)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3018, file: !2497, line: 302, baseType: !143, size: 64, offset: 1472)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3018, file: !2497, line: 303, baseType: !22, size: 32, offset: 1536)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3018, file: !2497, line: 305, baseType: !2543, size: 160, offset: 1568)
!3056 = !{!3057, !3058, !3060, !3061}
!3057 = !DILocalVariable(name: "stream", arg: 1, scope: !3012, file: !3013, line: 56, type: !3016)
!3058 = !DILocalVariable(name: "some_pending", scope: !3012, file: !3013, line: 58, type: !3059)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!3060 = !DILocalVariable(name: "prev_fail", scope: !3012, file: !3013, line: 59, type: !3059)
!3061 = !DILocalVariable(name: "fclose_fail", scope: !3012, file: !3013, line: 60, type: !3059)
!3062 = !DILocation(line: 56, column: 21, scope: !3012)
!3063 = !DILocation(line: 58, column: 30, scope: !3012)
!3064 = !DILocalVariable(name: "__stream", arg: 1, scope: !3065, file: !3066, line: 132, type: !3016)
!3065 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3066, file: !3066, line: 132, type: !3014, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3067)
!3066 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3067 = !{!3064}
!3068 = !DILocation(line: 132, column: 1, scope: !3065, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 59, column: 27, scope: !3012)
!3070 = !DILocation(line: 134, column: 10, scope: !3065, inlinedAt: !3069)
!3071 = !{!3072, !656, i64 0}
!3072 = !{!"_IO_FILE", !656, i64 0, !608, i64 8, !608, i64 16, !608, i64 24, !608, i64 32, !608, i64 40, !608, i64 48, !608, i64 56, !608, i64 64, !608, i64 72, !608, i64 80, !608, i64 88, !608, i64 96, !608, i64 104, !656, i64 112, !656, i64 116, !1812, i64 120, !1268, i64 128, !609, i64 130, !609, i64 131, !608, i64 136, !1812, i64 144, !608, i64 152, !608, i64 160, !608, i64 168, !608, i64 176, !1812, i64 184, !656, i64 192, !609, i64 196}
!3073 = !DILocation(line: 59, column: 43, scope: !3012)
!3074 = !DILocation(line: 60, column: 29, scope: !3012)
!3075 = !DILocation(line: 60, column: 45, scope: !3012)
!3076 = !DILocation(line: 70, column: 17, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3012, file: !3013, line: 70, column: 7)
!3078 = !DILocation(line: 58, column: 50, scope: !3012)
!3079 = !DILocation(line: 70, column: 33, scope: !3077)
!3080 = !DILocation(line: 70, column: 53, scope: !3077)
!3081 = !DILocation(line: 70, column: 59, scope: !3077)
!3082 = !DILocation(line: 70, column: 7, scope: !3012)
!3083 = !DILocation(line: 72, column: 11, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3077, file: !3013, line: 71, column: 5)
!3085 = !DILocation(line: 73, column: 9, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3084, file: !3013, line: 72, column: 11)
!3087 = !DILocation(line: 73, column: 15, scope: !3086)
!3088 = !DILocation(line: 78, column: 1, scope: !3012)
!3089 = distinct !DISubprogram(name: "hard_locale", scope: !3090, file: !3090, line: 38, type: !3091, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !581, variables: !3093)
!3090 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!29, !22}
!3093 = !{!3094, !3095, !3096}
!3094 = !DILocalVariable(name: "category", arg: 1, scope: !3089, file: !3090, line: 38, type: !22)
!3095 = !DILocalVariable(name: "hard", scope: !3089, file: !3090, line: 40, type: !29)
!3096 = !DILocalVariable(name: "p", scope: !3089, file: !3090, line: 41, type: !46)
!3097 = !DILocation(line: 38, column: 18, scope: !3089)
!3098 = !DILocation(line: 40, column: 8, scope: !3089)
!3099 = !DILocation(line: 41, column: 19, scope: !3089)
!3100 = !DILocation(line: 41, column: 15, scope: !3089)
!3101 = !DILocation(line: 43, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3089, file: !3090, line: 43, column: 7)
!3103 = !DILocation(line: 43, column: 7, scope: !3089)
!3104 = !DILocation(line: 47, column: 15, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !3090, line: 47, column: 15)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !3090, line: 46, column: 9)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !3090, line: 45, column: 11)
!3108 = distinct !DILexicalBlock(scope: !3102, file: !3090, line: 44, column: 5)
!3109 = !DILocation(line: 47, column: 31, scope: !3105)
!3110 = !DILocation(line: 47, column: 36, scope: !3105)
!3111 = !DILocation(line: 47, column: 39, scope: !3105)
!3112 = !DILocation(line: 47, column: 59, scope: !3105)
!3113 = !DILocation(line: 47, column: 15, scope: !3106)
!3114 = !DILocation(line: 48, column: 13, scope: !3105)
!3115 = !DILocation(line: 71, column: 3, scope: !3089)
!3116 = distinct !DISubprogram(name: "locale_charset", scope: !545, file: !545, line: 393, type: !3117, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!46}
!3119 = !{!3120, !3121}
!3120 = !DILocalVariable(name: "codeset", scope: !3116, file: !545, line: 395, type: !46)
!3121 = !DILocalVariable(name: "aliases", scope: !3116, file: !545, line: 396, type: !46)
!3122 = !DILocalVariable(name: "buf1", scope: !3123, file: !545, line: 196, type: !3190)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !545, line: 194, column: 21)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !545, line: 193, column: 19)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !545, line: 193, column: 19)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !545, line: 188, column: 17)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !545, line: 181, column: 19)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !545, line: 177, column: 13)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !545, line: 173, column: 15)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !545, line: 161, column: 9)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !545, line: 157, column: 11)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !545, line: 130, column: 5)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !545, line: 129, column: 7)
!3134 = distinct !DISubprogram(name: "get_charset_aliases", scope: !545, file: !545, line: 124, type: !3117, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !3135)
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3142, !3143, !3144, !3145, !3186, !3187, !3188, !3122, !3189, !3193, !3194, !3195}
!3136 = !DILocalVariable(name: "cp", scope: !3134, file: !545, line: 126, type: !46)
!3137 = !DILocalVariable(name: "dir", scope: !3132, file: !545, line: 132, type: !46)
!3138 = !DILocalVariable(name: "base", scope: !3132, file: !545, line: 133, type: !46)
!3139 = !DILocalVariable(name: "file_name", scope: !3132, file: !545, line: 134, type: !13)
!3140 = !DILocalVariable(name: "dir_len", scope: !3141, file: !545, line: 144, type: !143)
!3141 = distinct !DILexicalBlock(scope: !3132, file: !545, line: 143, column: 7)
!3142 = !DILocalVariable(name: "base_len", scope: !3141, file: !545, line: 145, type: !143)
!3143 = !DILocalVariable(name: "add_slash", scope: !3141, file: !545, line: 146, type: !22)
!3144 = !DILocalVariable(name: "fd", scope: !3130, file: !545, line: 162, type: !22)
!3145 = !DILocalVariable(name: "fp", scope: !3128, file: !545, line: 178, type: !3146)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2495, line: 7, baseType: !3148)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2497, line: 241, size: 1728, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3148, file: !2497, line: 242, baseType: !22, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3148, file: !2497, line: 247, baseType: !13, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3148, file: !2497, line: 248, baseType: !13, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3148, file: !2497, line: 249, baseType: !13, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3148, file: !2497, line: 250, baseType: !13, size: 64, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3148, file: !2497, line: 251, baseType: !13, size: 64, offset: 320)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3148, file: !2497, line: 252, baseType: !13, size: 64, offset: 384)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3148, file: !2497, line: 253, baseType: !13, size: 64, offset: 448)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3148, file: !2497, line: 254, baseType: !13, size: 64, offset: 512)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3148, file: !2497, line: 256, baseType: !13, size: 64, offset: 576)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3148, file: !2497, line: 257, baseType: !13, size: 64, offset: 640)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3148, file: !2497, line: 258, baseType: !13, size: 64, offset: 704)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3148, file: !2497, line: 260, baseType: !3163, size: 64, offset: 768)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2497, line: 156, size: 192, elements: !3165)
!3165 = !{!3166, !3167, !3169}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3164, file: !2497, line: 157, baseType: !3163, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3164, file: !2497, line: 158, baseType: !3168, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3164, file: !2497, line: 162, baseType: !22, size: 32, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3148, file: !2497, line: 262, baseType: !3168, size: 64, offset: 832)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3148, file: !2497, line: 264, baseType: !22, size: 32, offset: 896)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3148, file: !2497, line: 268, baseType: !22, size: 32, offset: 928)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3148, file: !2497, line: 270, baseType: !2523, size: 64, offset: 960)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3148, file: !2497, line: 274, baseType: !142, size: 16, offset: 1024)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3148, file: !2497, line: 275, baseType: !2528, size: 8, offset: 1040)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3148, file: !2497, line: 276, baseType: !2530, size: 8, offset: 1048)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3148, file: !2497, line: 280, baseType: !2532, size: 64, offset: 1088)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3148, file: !2497, line: 289, baseType: !2535, size: 64, offset: 1152)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3148, file: !2497, line: 297, baseType: !15, size: 64, offset: 1216)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3148, file: !2497, line: 298, baseType: !15, size: 64, offset: 1280)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3148, file: !2497, line: 299, baseType: !15, size: 64, offset: 1344)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3148, file: !2497, line: 300, baseType: !15, size: 64, offset: 1408)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3148, file: !2497, line: 302, baseType: !143, size: 64, offset: 1472)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3148, file: !2497, line: 303, baseType: !22, size: 32, offset: 1536)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3148, file: !2497, line: 305, baseType: !2543, size: 160, offset: 1568)
!3186 = !DILocalVariable(name: "res_ptr", scope: !3126, file: !545, line: 190, type: !13)
!3187 = !DILocalVariable(name: "res_size", scope: !3126, file: !545, line: 191, type: !143)
!3188 = !DILocalVariable(name: "c", scope: !3123, file: !545, line: 195, type: !22)
!3189 = !DILocalVariable(name: "buf2", scope: !3123, file: !545, line: 197, type: !3190)
!3190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 408, elements: !3191)
!3191 = !{!3192}
!3192 = !DISubrange(count: 51)
!3193 = !DILocalVariable(name: "l1", scope: !3123, file: !545, line: 198, type: !143)
!3194 = !DILocalVariable(name: "l2", scope: !3123, file: !545, line: 198, type: !143)
!3195 = !DILocalVariable(name: "old_res_ptr", scope: !3123, file: !545, line: 199, type: !13)
!3196 = !DILocation(line: 196, column: 28, scope: !3123, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 589, column: 18, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3116, file: !545, line: 589, column: 3)
!3199 = !DILocation(line: 197, column: 28, scope: !3123, inlinedAt: !3197)
!3200 = !DILocation(line: 403, column: 13, scope: !3116)
!3201 = !DILocation(line: 395, column: 15, scope: !3116)
!3202 = !DILocation(line: 584, column: 15, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3116, file: !545, line: 584, column: 7)
!3204 = !DILocation(line: 584, column: 7, scope: !3116)
!3205 = !DILocation(line: 128, column: 8, scope: !3134, inlinedAt: !3197)
!3206 = !DILocation(line: 126, column: 15, scope: !3134, inlinedAt: !3197)
!3207 = !DILocation(line: 129, column: 10, scope: !3133, inlinedAt: !3197)
!3208 = !DILocation(line: 129, column: 7, scope: !3134, inlinedAt: !3197)
!3209 = !DILocation(line: 138, column: 13, scope: !3132, inlinedAt: !3197)
!3210 = !DILocation(line: 132, column: 19, scope: !3132, inlinedAt: !3197)
!3211 = !DILocation(line: 139, column: 15, scope: !3212, inlinedAt: !3197)
!3212 = distinct !DILexicalBlock(scope: !3132, file: !545, line: 139, column: 11)
!3213 = !DILocation(line: 139, column: 23, scope: !3212, inlinedAt: !3197)
!3214 = !DILocation(line: 139, column: 26, scope: !3212, inlinedAt: !3197)
!3215 = !DILocation(line: 139, column: 33, scope: !3212, inlinedAt: !3197)
!3216 = !DILocation(line: 139, column: 11, scope: !3132, inlinedAt: !3197)
!3217 = !DILocation(line: 140, column: 9, scope: !3212, inlinedAt: !3197)
!3218 = !DILocation(line: 144, column: 26, scope: !3141, inlinedAt: !3197)
!3219 = !DILocation(line: 144, column: 16, scope: !3141, inlinedAt: !3197)
!3220 = !DILocation(line: 145, column: 16, scope: !3141, inlinedAt: !3197)
!3221 = !DILocation(line: 146, column: 34, scope: !3141, inlinedAt: !3197)
!3222 = !DILocation(line: 146, column: 38, scope: !3141, inlinedAt: !3197)
!3223 = !DILocation(line: 146, column: 42, scope: !3141, inlinedAt: !3197)
!3224 = !DILocation(line: 147, column: 48, scope: !3141, inlinedAt: !3197)
!3225 = !DILocation(line: 147, column: 46, scope: !3141, inlinedAt: !3197)
!3226 = !DILocation(line: 147, column: 69, scope: !3141, inlinedAt: !3197)
!3227 = !DILocation(line: 147, column: 30, scope: !3141, inlinedAt: !3197)
!3228 = !DILocation(line: 134, column: 13, scope: !3132, inlinedAt: !3197)
!3229 = !DILocation(line: 148, column: 13, scope: !3141, inlinedAt: !3197)
!3230 = !DILocation(line: 150, column: 13, scope: !3231, inlinedAt: !3197)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !545, line: 149, column: 11)
!3232 = distinct !DILexicalBlock(scope: !3141, file: !545, line: 148, column: 13)
!3233 = !DILocation(line: 151, column: 17, scope: !3231, inlinedAt: !3197)
!3234 = !DILocation(line: 152, column: 34, scope: !3235, inlinedAt: !3197)
!3235 = distinct !DILexicalBlock(scope: !3231, file: !545, line: 151, column: 17)
!3236 = !DILocation(line: 153, column: 41, scope: !3231, inlinedAt: !3197)
!3237 = !DILocation(line: 153, column: 13, scope: !3231, inlinedAt: !3197)
!3238 = !DILocation(line: 157, column: 11, scope: !3132, inlinedAt: !3197)
!3239 = !DILocation(line: 171, column: 16, scope: !3130, inlinedAt: !3197)
!3240 = !DILocation(line: 162, column: 15, scope: !3130, inlinedAt: !3197)
!3241 = !DILocation(line: 173, column: 18, scope: !3129, inlinedAt: !3197)
!3242 = !DILocation(line: 173, column: 15, scope: !3130, inlinedAt: !3197)
!3243 = !DILocation(line: 180, column: 20, scope: !3128, inlinedAt: !3197)
!3244 = !DILocation(line: 178, column: 21, scope: !3128, inlinedAt: !3197)
!3245 = !DILocation(line: 181, column: 22, scope: !3127, inlinedAt: !3197)
!3246 = !DILocation(line: 181, column: 19, scope: !3128, inlinedAt: !3197)
!3247 = !DILocation(line: 184, column: 19, scope: !3248, inlinedAt: !3197)
!3248 = distinct !DILexicalBlock(scope: !3127, file: !545, line: 182, column: 17)
!3249 = !DILocation(line: 186, column: 17, scope: !3248, inlinedAt: !3197)
!3250 = !DILocation(line: 190, column: 25, scope: !3126, inlinedAt: !3197)
!3251 = !DILocation(line: 191, column: 26, scope: !3126, inlinedAt: !3197)
!3252 = !DILocation(line: 193, column: 19, scope: !3126, inlinedAt: !3197)
!3253 = !DILocation(line: 196, column: 23, scope: !3123, inlinedAt: !3197)
!3254 = !DILocation(line: 197, column: 23, scope: !3123, inlinedAt: !3197)
!3255 = !DILocalVariable(name: "__fp", arg: 1, scope: !3256, file: !3066, line: 63, type: !3146)
!3256 = distinct !DISubprogram(name: "getc_unlocked", scope: !3066, file: !3066, line: 63, type: !3257, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!22, !3146}
!3259 = !{!3255}
!3260 = !DILocation(line: 63, column: 22, scope: !3256, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 201, column: 27, scope: !3123, inlinedAt: !3197)
!3262 = !DILocation(line: 65, column: 10, scope: !3256, inlinedAt: !3261)
!3263 = !{!3072, !608, i64 8}
!3264 = !{!3072, !608, i64 16}
!3265 = !{!"branch_weights", i32 2000, i32 1}
!3266 = !DILocation(line: 195, column: 27, scope: !3123, inlinedAt: !3197)
!3267 = !DILocation(line: 202, column: 27, scope: !3123, inlinedAt: !3197)
!3268 = distinct !{!3268, !3269, !3272}
!3269 = !DILocation(line: 209, column: 27, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !545, line: 207, column: 25)
!3271 = distinct !DILexicalBlock(scope: !3123, file: !545, line: 206, column: 27)
!3272 = !DILocation(line: 211, column: 58, scope: !3270)
!3273 = !DILocation(line: 65, column: 10, scope: !3256, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 210, column: 33, scope: !3270, inlinedAt: !3197)
!3275 = !DILocation(line: 63, column: 22, scope: !3256, inlinedAt: !3274)
!3276 = !DILocation(line: 210, column: 29, scope: !3270, inlinedAt: !3197)
!3277 = distinct !{!3277, !3278, !3279}
!3278 = !DILocation(line: 193, column: 19, scope: !3125)
!3279 = !DILocation(line: 241, column: 21, scope: !3125)
!3280 = !DILocation(line: 216, column: 23, scope: !3123, inlinedAt: !3197)
!3281 = !DILocation(line: 217, column: 27, scope: !3282, inlinedAt: !3197)
!3282 = distinct !DILexicalBlock(scope: !3123, file: !545, line: 217, column: 27)
!3283 = !DILocation(line: 217, column: 64, scope: !3282, inlinedAt: !3197)
!3284 = !DILocation(line: 217, column: 27, scope: !3123, inlinedAt: !3197)
!3285 = !DILocation(line: 219, column: 28, scope: !3123, inlinedAt: !3197)
!3286 = !DILocation(line: 198, column: 30, scope: !3123, inlinedAt: !3197)
!3287 = !DILocation(line: 220, column: 28, scope: !3123, inlinedAt: !3197)
!3288 = !DILocation(line: 198, column: 34, scope: !3123, inlinedAt: !3197)
!3289 = !DILocation(line: 199, column: 29, scope: !3123, inlinedAt: !3197)
!3290 = !DILocation(line: 222, column: 36, scope: !3291, inlinedAt: !3197)
!3291 = distinct !DILexicalBlock(scope: !3123, file: !545, line: 222, column: 27)
!3292 = !DILocation(line: 222, column: 27, scope: !3123, inlinedAt: !3197)
!3293 = !DILocation(line: 225, column: 63, scope: !3294, inlinedAt: !3197)
!3294 = distinct !DILexicalBlock(scope: !3291, file: !545, line: 223, column: 25)
!3295 = !DILocation(line: 225, column: 46, scope: !3294, inlinedAt: !3197)
!3296 = !DILocation(line: 226, column: 25, scope: !3294, inlinedAt: !3197)
!3297 = !DILocation(line: 229, column: 36, scope: !3298, inlinedAt: !3197)
!3298 = distinct !DILexicalBlock(scope: !3291, file: !545, line: 228, column: 25)
!3299 = !DILocation(line: 230, column: 73, scope: !3298, inlinedAt: !3197)
!3300 = !DILocation(line: 230, column: 46, scope: !3298, inlinedAt: !3197)
!3301 = !DILocation(line: 232, column: 35, scope: !3302, inlinedAt: !3197)
!3302 = distinct !DILexicalBlock(scope: !3123, file: !545, line: 232, column: 27)
!3303 = !DILocation(line: 232, column: 27, scope: !3123, inlinedAt: !3197)
!3304 = !DILocation(line: 236, column: 27, scope: !3305, inlinedAt: !3197)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !545, line: 233, column: 25)
!3306 = !DILocation(line: 237, column: 27, scope: !3305, inlinedAt: !3197)
!3307 = !DILocation(line: 241, column: 21, scope: !3124, inlinedAt: !3197)
!3308 = !DILocation(line: 239, column: 39, scope: !3123, inlinedAt: !3197)
!3309 = !DILocation(line: 239, column: 50, scope: !3123, inlinedAt: !3197)
!3310 = !DILocation(line: 239, column: 61, scope: !3123, inlinedAt: !3197)
!3311 = !DILocalVariable(name: "__dest", arg: 1, scope: !3312, file: !3313, line: 88, type: !3316)
!3312 = distinct !DISubprogram(name: "strcpy", scope: !3313, file: !3313, line: 88, type: !3314, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !200, variables: !3318)
!3313 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!13, !3316, !3317}
!3316 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!3317 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!3318 = !{!3311, !3319}
!3319 = !DILocalVariable(name: "__src", arg: 2, scope: !3312, file: !3313, line: 88, type: !3317)
!3320 = !DILocation(line: 88, column: 1, scope: !3312, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 239, column: 23, scope: !3123, inlinedAt: !3197)
!3322 = !DILocation(line: 90, column: 49, scope: !3312, inlinedAt: !3321)
!3323 = !DILocation(line: 90, column: 10, scope: !3312, inlinedAt: !3321)
!3324 = !DILocation(line: 88, column: 1, scope: !3312, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 240, column: 23, scope: !3123, inlinedAt: !3197)
!3326 = !DILocation(line: 90, column: 49, scope: !3312, inlinedAt: !3325)
!3327 = !DILocation(line: 90, column: 10, scope: !3312, inlinedAt: !3325)
!3328 = !DILocation(line: 193, column: 19, scope: !3124, inlinedAt: !3197)
!3329 = !DILocation(line: 242, column: 19, scope: !3126, inlinedAt: !3197)
!3330 = !DILocation(line: 243, column: 32, scope: !3331, inlinedAt: !3197)
!3331 = distinct !DILexicalBlock(scope: !3126, file: !545, line: 243, column: 23)
!3332 = !DILocation(line: 243, column: 23, scope: !3126, inlinedAt: !3197)
!3333 = !DILocation(line: 247, column: 33, scope: !3334, inlinedAt: !3197)
!3334 = distinct !DILexicalBlock(scope: !3331, file: !545, line: 246, column: 21)
!3335 = !DILocation(line: 247, column: 45, scope: !3334, inlinedAt: !3197)
!3336 = !DILocation(line: 253, column: 11, scope: !3130, inlinedAt: !3197)
!3337 = !DILocation(line: 377, column: 23, scope: !3132, inlinedAt: !3197)
!3338 = !DILocation(line: 378, column: 5, scope: !3132, inlinedAt: !3197)
!3339 = !DILocation(line: 396, column: 15, scope: !3116)
!3340 = !DILocation(line: 590, column: 8, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3198, file: !545, line: 589, column: 3)
!3342 = !DILocation(line: 590, column: 17, scope: !3341)
!3343 = !DILocation(line: 589, column: 3, scope: !3198)
!3344 = !DILocation(line: 592, column: 9, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3341, file: !545, line: 592, column: 9)
!3346 = !DILocation(line: 592, column: 35, scope: !3345)
!3347 = !DILocation(line: 593, column: 9, scope: !3345)
!3348 = !DILocation(line: 593, column: 24, scope: !3345)
!3349 = !DILocation(line: 593, column: 31, scope: !3345)
!3350 = !DILocation(line: 593, column: 34, scope: !3345)
!3351 = !DILocation(line: 593, column: 45, scope: !3345)
!3352 = !DILocation(line: 592, column: 9, scope: !3341)
!3353 = !DILocation(line: 595, column: 29, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3345, file: !545, line: 594, column: 7)
!3355 = !DILocation(line: 595, column: 27, scope: !3354)
!3356 = !DILocation(line: 595, column: 46, scope: !3354)
!3357 = !DILocation(line: 596, column: 9, scope: !3354)
!3358 = !DILocation(line: 591, column: 19, scope: !3341)
!3359 = !DILocation(line: 591, column: 36, scope: !3341)
!3360 = !DILocation(line: 591, column: 16, scope: !3341)
!3361 = !DILocation(line: 591, column: 52, scope: !3341)
!3362 = !DILocation(line: 591, column: 69, scope: !3341)
!3363 = !DILocation(line: 591, column: 49, scope: !3341)
!3364 = distinct !{!3364, !3343, !3365}
!3365 = !DILocation(line: 597, column: 7, scope: !3198)
!3366 = !DILocation(line: 602, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3116, file: !545, line: 602, column: 7)
!3368 = !DILocation(line: 602, column: 18, scope: !3367)
!3369 = !DILocation(line: 602, column: 7, scope: !3116)
!3370 = !DILocation(line: 612, column: 3, scope: !3116)
!3371 = distinct !DISubprogram(name: "rpl_fclose", scope: !3372, file: !3372, line: 56, type: !3373, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !583, variables: !3415)
!3372 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!22, !3375}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2495, line: 7, baseType: !3377)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2497, line: 241, size: 1728, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3377, file: !2497, line: 242, baseType: !22, size: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3377, file: !2497, line: 247, baseType: !13, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3377, file: !2497, line: 248, baseType: !13, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3377, file: !2497, line: 249, baseType: !13, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3377, file: !2497, line: 250, baseType: !13, size: 64, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3377, file: !2497, line: 251, baseType: !13, size: 64, offset: 320)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3377, file: !2497, line: 252, baseType: !13, size: 64, offset: 384)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3377, file: !2497, line: 253, baseType: !13, size: 64, offset: 448)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3377, file: !2497, line: 254, baseType: !13, size: 64, offset: 512)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3377, file: !2497, line: 256, baseType: !13, size: 64, offset: 576)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3377, file: !2497, line: 257, baseType: !13, size: 64, offset: 640)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3377, file: !2497, line: 258, baseType: !13, size: 64, offset: 704)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3377, file: !2497, line: 260, baseType: !3392, size: 64, offset: 768)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2497, line: 156, size: 192, elements: !3394)
!3394 = !{!3395, !3396, !3398}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3393, file: !2497, line: 157, baseType: !3392, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3393, file: !2497, line: 158, baseType: !3397, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3393, file: !2497, line: 162, baseType: !22, size: 32, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3377, file: !2497, line: 262, baseType: !3397, size: 64, offset: 832)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3377, file: !2497, line: 264, baseType: !22, size: 32, offset: 896)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3377, file: !2497, line: 268, baseType: !22, size: 32, offset: 928)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3377, file: !2497, line: 270, baseType: !2523, size: 64, offset: 960)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3377, file: !2497, line: 274, baseType: !142, size: 16, offset: 1024)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3377, file: !2497, line: 275, baseType: !2528, size: 8, offset: 1040)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3377, file: !2497, line: 276, baseType: !2530, size: 8, offset: 1048)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3377, file: !2497, line: 280, baseType: !2532, size: 64, offset: 1088)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3377, file: !2497, line: 289, baseType: !2535, size: 64, offset: 1152)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3377, file: !2497, line: 297, baseType: !15, size: 64, offset: 1216)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3377, file: !2497, line: 298, baseType: !15, size: 64, offset: 1280)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3377, file: !2497, line: 299, baseType: !15, size: 64, offset: 1344)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3377, file: !2497, line: 300, baseType: !15, size: 64, offset: 1408)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3377, file: !2497, line: 302, baseType: !143, size: 64, offset: 1472)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3377, file: !2497, line: 303, baseType: !22, size: 32, offset: 1536)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3377, file: !2497, line: 305, baseType: !2543, size: 160, offset: 1568)
!3415 = !{!3416, !3417, !3418, !3419}
!3416 = !DILocalVariable(name: "fp", arg: 1, scope: !3371, file: !3372, line: 56, type: !3375)
!3417 = !DILocalVariable(name: "saved_errno", scope: !3371, file: !3372, line: 58, type: !22)
!3418 = !DILocalVariable(name: "fd", scope: !3371, file: !3372, line: 59, type: !22)
!3419 = !DILocalVariable(name: "result", scope: !3371, file: !3372, line: 60, type: !22)
!3420 = !DILocation(line: 56, column: 19, scope: !3371)
!3421 = !DILocation(line: 58, column: 7, scope: !3371)
!3422 = !DILocation(line: 60, column: 7, scope: !3371)
!3423 = !DILocation(line: 63, column: 8, scope: !3371)
!3424 = !DILocation(line: 59, column: 7, scope: !3371)
!3425 = !DILocation(line: 64, column: 10, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3371, file: !3372, line: 64, column: 7)
!3427 = !DILocation(line: 64, column: 7, scope: !3371)
!3428 = !DILocation(line: 65, column: 12, scope: !3426)
!3429 = !DILocation(line: 65, column: 5, scope: !3426)
!3430 = !DILocation(line: 70, column: 9, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3371, file: !3372, line: 70, column: 7)
!3432 = !DILocation(line: 70, column: 23, scope: !3431)
!3433 = !DILocation(line: 70, column: 33, scope: !3431)
!3434 = !DILocation(line: 70, column: 26, scope: !3431)
!3435 = !DILocation(line: 70, column: 59, scope: !3431)
!3436 = !DILocation(line: 71, column: 7, scope: !3431)
!3437 = !DILocation(line: 71, column: 10, scope: !3431)
!3438 = !DILocation(line: 70, column: 7, scope: !3371)
!3439 = !DILocation(line: 98, column: 12, scope: !3371)
!3440 = !DILocation(line: 103, column: 7, scope: !3371)
!3441 = !DILocation(line: 72, column: 19, scope: !3431)
!3442 = !DILocation(line: 103, column: 19, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3371, file: !3372, line: 103, column: 7)
!3444 = !DILocation(line: 105, column: 13, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3443, file: !3372, line: 104, column: 5)
!3446 = !DILocation(line: 107, column: 5, scope: !3445)
!3447 = !DILocation(line: 110, column: 1, scope: !3371)
!3448 = distinct !DISubprogram(name: "rpl_fflush", scope: !3449, file: !3449, line: 127, type: !3450, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !3492)
!3449 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!22, !3452}
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2495, line: 7, baseType: !3454)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2497, line: 241, size: 1728, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3454, file: !2497, line: 242, baseType: !22, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3454, file: !2497, line: 247, baseType: !13, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3454, file: !2497, line: 248, baseType: !13, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3454, file: !2497, line: 249, baseType: !13, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3454, file: !2497, line: 250, baseType: !13, size: 64, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3454, file: !2497, line: 251, baseType: !13, size: 64, offset: 320)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3454, file: !2497, line: 252, baseType: !13, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3454, file: !2497, line: 253, baseType: !13, size: 64, offset: 448)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3454, file: !2497, line: 254, baseType: !13, size: 64, offset: 512)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3454, file: !2497, line: 256, baseType: !13, size: 64, offset: 576)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3454, file: !2497, line: 257, baseType: !13, size: 64, offset: 640)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3454, file: !2497, line: 258, baseType: !13, size: 64, offset: 704)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3454, file: !2497, line: 260, baseType: !3469, size: 64, offset: 768)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2497, line: 156, size: 192, elements: !3471)
!3471 = !{!3472, !3473, !3475}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3470, file: !2497, line: 157, baseType: !3469, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3470, file: !2497, line: 158, baseType: !3474, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3470, file: !2497, line: 162, baseType: !22, size: 32, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3454, file: !2497, line: 262, baseType: !3474, size: 64, offset: 832)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3454, file: !2497, line: 264, baseType: !22, size: 32, offset: 896)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3454, file: !2497, line: 268, baseType: !22, size: 32, offset: 928)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3454, file: !2497, line: 270, baseType: !2523, size: 64, offset: 960)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3454, file: !2497, line: 274, baseType: !142, size: 16, offset: 1024)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3454, file: !2497, line: 275, baseType: !2528, size: 8, offset: 1040)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3454, file: !2497, line: 276, baseType: !2530, size: 8, offset: 1048)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3454, file: !2497, line: 280, baseType: !2532, size: 64, offset: 1088)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3454, file: !2497, line: 289, baseType: !2535, size: 64, offset: 1152)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3454, file: !2497, line: 297, baseType: !15, size: 64, offset: 1216)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3454, file: !2497, line: 298, baseType: !15, size: 64, offset: 1280)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3454, file: !2497, line: 299, baseType: !15, size: 64, offset: 1344)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3454, file: !2497, line: 300, baseType: !15, size: 64, offset: 1408)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3454, file: !2497, line: 302, baseType: !143, size: 64, offset: 1472)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3454, file: !2497, line: 303, baseType: !22, size: 32, offset: 1536)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3454, file: !2497, line: 305, baseType: !2543, size: 160, offset: 1568)
!3492 = !{!3493}
!3493 = !DILocalVariable(name: "stream", arg: 1, scope: !3448, file: !3449, line: 127, type: !3452)
!3494 = !DILocation(line: 127, column: 19, scope: !3448)
!3495 = !DILocation(line: 148, column: 14, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3448, file: !3449, line: 148, column: 7)
!3497 = !DILocation(line: 148, column: 22, scope: !3496)
!3498 = !DILocation(line: 148, column: 27, scope: !3496)
!3499 = !DILocation(line: 148, column: 7, scope: !3448)
!3500 = !DILocation(line: 149, column: 12, scope: !3496)
!3501 = !DILocation(line: 149, column: 5, scope: !3496)
!3502 = !DILocalVariable(name: "fp", arg: 1, scope: !3503, file: !3449, line: 40, type: !3452)
!3503 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3449, file: !3449, line: 40, type: !3504, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{null, !3452}
!3506 = !{!3502}
!3507 = !DILocation(line: 40, column: 48, scope: !3503, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 153, column: 3, scope: !3448)
!3509 = !DILocation(line: 42, column: 11, scope: !3510, inlinedAt: !3508)
!3510 = distinct !DILexicalBlock(scope: !3503, file: !3449, line: 42, column: 7)
!3511 = !DILocation(line: 42, column: 18, scope: !3510, inlinedAt: !3508)
!3512 = !DILocation(line: 42, column: 7, scope: !3503, inlinedAt: !3508)
!3513 = !DILocation(line: 44, column: 5, scope: !3510, inlinedAt: !3508)
!3514 = !DILocation(line: 155, column: 10, scope: !3448)
!3515 = !DILocation(line: 155, column: 3, scope: !3448)
!3516 = !DILocation(line: 229, column: 1, scope: !3448)
!3517 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3518, file: !3518, line: 28, type: !3519, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !587, variables: !3562)
!3518 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!22, !3521, !3561, !22}
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2495, line: 7, baseType: !3523)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2497, line: 241, size: 1728, elements: !3524)
!3524 = !{!3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3523, file: !2497, line: 242, baseType: !22, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3523, file: !2497, line: 247, baseType: !13, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3523, file: !2497, line: 248, baseType: !13, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3523, file: !2497, line: 249, baseType: !13, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3523, file: !2497, line: 250, baseType: !13, size: 64, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3523, file: !2497, line: 251, baseType: !13, size: 64, offset: 320)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3523, file: !2497, line: 252, baseType: !13, size: 64, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3523, file: !2497, line: 253, baseType: !13, size: 64, offset: 448)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3523, file: !2497, line: 254, baseType: !13, size: 64, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3523, file: !2497, line: 256, baseType: !13, size: 64, offset: 576)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3523, file: !2497, line: 257, baseType: !13, size: 64, offset: 640)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3523, file: !2497, line: 258, baseType: !13, size: 64, offset: 704)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3523, file: !2497, line: 260, baseType: !3538, size: 64, offset: 768)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2497, line: 156, size: 192, elements: !3540)
!3540 = !{!3541, !3542, !3544}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3539, file: !2497, line: 157, baseType: !3538, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3539, file: !2497, line: 158, baseType: !3543, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3539, file: !2497, line: 162, baseType: !22, size: 32, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3523, file: !2497, line: 262, baseType: !3543, size: 64, offset: 832)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3523, file: !2497, line: 264, baseType: !22, size: 32, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3523, file: !2497, line: 268, baseType: !22, size: 32, offset: 928)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3523, file: !2497, line: 270, baseType: !2523, size: 64, offset: 960)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3523, file: !2497, line: 274, baseType: !142, size: 16, offset: 1024)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3523, file: !2497, line: 275, baseType: !2528, size: 8, offset: 1040)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3523, file: !2497, line: 276, baseType: !2530, size: 8, offset: 1048)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3523, file: !2497, line: 280, baseType: !2532, size: 64, offset: 1088)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3523, file: !2497, line: 289, baseType: !2535, size: 64, offset: 1152)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3523, file: !2497, line: 297, baseType: !15, size: 64, offset: 1216)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3523, file: !2497, line: 298, baseType: !15, size: 64, offset: 1280)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3523, file: !2497, line: 299, baseType: !15, size: 64, offset: 1344)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3523, file: !2497, line: 300, baseType: !15, size: 64, offset: 1408)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3523, file: !2497, line: 302, baseType: !143, size: 64, offset: 1472)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3523, file: !2497, line: 303, baseType: !22, size: 32, offset: 1536)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3523, file: !2497, line: 305, baseType: !2543, size: 160, offset: 1568)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2663, line: 57, baseType: !2523)
!3562 = !{!3563, !3564, !3565, !3566}
!3563 = !DILocalVariable(name: "fp", arg: 1, scope: !3517, file: !3518, line: 28, type: !3521)
!3564 = !DILocalVariable(name: "offset", arg: 2, scope: !3517, file: !3518, line: 28, type: !3561)
!3565 = !DILocalVariable(name: "whence", arg: 3, scope: !3517, file: !3518, line: 28, type: !22)
!3566 = !DILocalVariable(name: "pos", scope: !3567, file: !3518, line: 116, type: !3561)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !3518, line: 112, column: 5)
!3568 = distinct !DILexicalBlock(scope: !3517, file: !3518, line: 51, column: 7)
!3569 = !DILocation(line: 28, column: 15, scope: !3517)
!3570 = !DILocation(line: 28, column: 25, scope: !3517)
!3571 = !DILocation(line: 28, column: 37, scope: !3517)
!3572 = !DILocation(line: 51, column: 11, scope: !3568)
!3573 = !DILocation(line: 51, column: 31, scope: !3568)
!3574 = !DILocation(line: 51, column: 24, scope: !3568)
!3575 = !DILocation(line: 52, column: 7, scope: !3568)
!3576 = !DILocation(line: 52, column: 14, scope: !3568)
!3577 = !{!3072, !608, i64 40}
!3578 = !DILocation(line: 52, column: 35, scope: !3568)
!3579 = !{!3072, !608, i64 32}
!3580 = !DILocation(line: 52, column: 28, scope: !3568)
!3581 = !DILocation(line: 53, column: 7, scope: !3568)
!3582 = !DILocation(line: 53, column: 14, scope: !3568)
!3583 = !{!3072, !608, i64 72}
!3584 = !DILocation(line: 53, column: 28, scope: !3568)
!3585 = !DILocation(line: 51, column: 7, scope: !3517)
!3586 = !DILocation(line: 116, column: 26, scope: !3567)
!3587 = !DILocation(line: 116, column: 19, scope: !3567)
!3588 = !DILocation(line: 116, column: 13, scope: !3567)
!3589 = !DILocation(line: 117, column: 15, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3567, file: !3518, line: 117, column: 11)
!3591 = !DILocation(line: 117, column: 11, scope: !3567)
!3592 = !DILocation(line: 127, column: 11, scope: !3567)
!3593 = !DILocation(line: 127, column: 18, scope: !3567)
!3594 = !DILocation(line: 128, column: 11, scope: !3567)
!3595 = !DILocation(line: 128, column: 19, scope: !3567)
!3596 = !{!3072, !1812, i64 144}
!3597 = !DILocation(line: 159, column: 7, scope: !3567)
!3598 = !DILocation(line: 161, column: 10, scope: !3517)
!3599 = !DILocation(line: 161, column: 3, scope: !3517)
!3600 = !DILocation(line: 162, column: 1, scope: !3517)
